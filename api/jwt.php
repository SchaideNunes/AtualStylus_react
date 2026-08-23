<?php
require_once __DIR__ . '/config.php';

function base64UrlEncode($data) {
    return str_replace(['+', '/', '='], ['-', '_', ''], base64_encode($data));
}

function base64UrlDecode($data) {
    $remainder = strlen($data) % 4;
    if ($remainder) {
        $padlen = 4 - $remainder;
        $data .= str_repeat('=', $padlen);
    }
    return base64_decode(str_replace(['-', '_'], ['+', '/'], $data));
}

function gerarJwt($payload, $secret = JWT_SECRET, $expSeconds = JWT_EXPIRES_IN_SECONDS) {
    $header = json_encode(['typ' => 'JWT', 'alg' => 'HS256']);
    $payload['iat'] = time();
    $payload['exp'] = time() + $expSeconds;
    $payloadJson = json_encode($payload);

    $base64UrlHeader = base64UrlEncode($header);
    $base64UrlPayload = base64UrlEncode($payloadJson);

    $signature = hash_hmac('sha256', $base64UrlHeader . "." . $base64UrlPayload, $secret, true);
    $base64UrlSignature = base64UrlEncode($signature);

    return $base64UrlHeader . "." . $base64UrlPayload . "." . $base64UrlSignature;
}

function verificarJwt($token, $secret = JWT_SECRET) {
    if (!$token) return null;
    $partes = explode('.', $token);
    if (count($partes) !== 3) return null;

    list($base64UrlHeader, $base64UrlPayload, $base64UrlSignature) = $partes;

    $signature = hash_hmac('sha256', $base64UrlHeader . "." . $base64UrlPayload, $secret, true);
    $validSignature = base64UrlEncode($signature);

    if (!hash_equals($validSignature, $base64UrlSignature)) {
        return null;
    }

    $payload = json_decode(base64UrlDecode($base64UrlPayload), true);
    if (!$payload) return null;

    if (isset($payload['exp']) && $payload['exp'] < time()) {
        return null; // Token expirado
    }

    return $payload;
}

function exigirAuthAdmin() {
    $headers = getallheaders();
    $authHeader = isset($headers['Authorization']) ? $headers['Authorization'] : (isset($headers['authorization']) ? $headers['authorization'] : '');

    if (!$authHeader || !preg_match('/Bearer\s(\S+)/i', $authHeader, $matches)) {
        http_response_code(401);
        echo json_encode(['error' => 'Não autenticado. Token não fornecido.'], JSON_UNESCAPED_UNICODE);
        exit;
    }

    $token = $matches[1];
    $user = verificarJwt($token);

    if (!$user) {
        http_response_code(403);
        echo json_encode(['error' => 'Token inválido ou expirado. Faça login novamente.'], JSON_UNESCAPED_UNICODE);
        exit;
    }

    return $user;
}
