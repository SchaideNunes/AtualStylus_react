<?php
/**
 * ATUALESTILO BARBEARIA - CONFIGURAÇÃO DO BANCO E AMBIENTE
 */
header('Content-Type: application/json; charset=UTF-8');

// Função para ler o arquivo .env se existir
function carregarEnv($caminho) {
    if (!file_exists($caminho)) return;
    $linhas = file($caminho, FILE_IGNORE_NEW_LINES | FILE_SKIP_EMPTY_LINES);
    foreach ($linhas as $linha) {
        $linha = trim($linha);
        if (empty($linha) || strpos($linha, '#') === 0) continue;
        if (strpos($linha, '=') !== false) {
            list($chave, $valor) = explode('=', $linha, 2);
            $chave = trim($chave);
            $valor = trim($valor);
            $valor = trim($valor, '"\'');
            if (!array_key_exists($chave, $_SERVER) && !array_key_exists($chave, $_ENV)) {
                putenv("$chave=$valor");
                $_ENV[$chave] = $valor;
                $_SERVER[$chave] = $valor;
            }
        }
    }
}

// Carrega o .env da raiz do site
carregarEnv(__DIR__ . '/../.env');
carregarEnv(__DIR__ . '/.env');

define('DB_HOST', getenv('DB_HOST') ?: 'localhost');
define('DB_PORT', getenv('DB_PORT') ?: '3306');
define('DB_USER', getenv('DB_USER') ?: 'root');
define('DB_PASSWORD', getenv('DB_PASSWORD') ?: '');
define('DB_NAME', getenv('DB_NAME') ?: 'atualestilo_db');
define('JWT_SECRET', getenv('JWT_SECRET') ?: 'atualestilo_hostinger_seguranca_2026');
define('JWT_EXPIRES_IN_SECONDS', 7 * 24 * 60 * 60); // 7 dias
