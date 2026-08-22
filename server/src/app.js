import express from 'express';
import cors from 'cors';
import helmet from 'helmet';
import path from 'path';
import { fileURLToPath } from 'url';
import { apiRouter } from './routes/api.js';

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

export const app = express();

// Security Headers
app.use(helmet({
  contentSecurityPolicy: false, // permite servir assets locais sem restrições em dev/docker
}));

// CORS
const allowedOrigins = [
  'http://localhost:5173',
  'http://localhost:3000',
  'http://localhost:3001',
  process.env.CLIENT_URL
].filter(Boolean);

app.use(cors({
  origin: (origin, callback) => {
    if (!origin || allowedOrigins.includes(origin) || process.env.NODE_ENV === 'production') {
      callback(null, true);
    } else {
      callback(null, true);
    }
  },
  credentials: true
}));

app.use(express.json());
app.use(express.urlencoded({ extended: true }));

// Rotas da API (suporta /api/... e rewrites do Vercel)
app.use('/api', apiRouter);
app.use(apiRouter);

// Servir frontend React em produção
const distPath = path.resolve(__dirname, '../../dist');
app.use(express.static(distPath));

// Static public assets
const publicPath = path.resolve(__dirname, '../../public');
app.use(express.static(publicPath));

// Fallback SPA
app.get('*', (req, res, next) => {
  if (req.path.startsWith('/api')) {
    return next();
  }
  res.sendFile(path.join(distPath, 'index.html'), err => {
    if (err) {
      res.status(200).send('AtualEstilo Barbearia API em execução.');
    }
  });
});
