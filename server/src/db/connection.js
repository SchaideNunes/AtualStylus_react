import { MysqlDatabase } from './mysqlDb.js';
import { InMemoryDatabase } from './inMemoryDb.js';

let dbInstance = null;

export function getDatabase() {
  if (!dbInstance) {
    const isTest = process.env.NODE_ENV === 'test';
    const isForceInMemory = process.env.USE_IN_MEMORY_DB === 'true';
    const hasDbHost = Boolean(process.env.DB_HOST && (process.env.DB_HOST !== 'localhost' || !process.env.VERCEL));

    if (isTest || isForceInMemory || !hasDbHost) {
      if (!isTest && !isForceInMemory) {
        console.warn('⚠️ DB_HOST não configurado ou em ambiente serverless. Inicializando com InMemoryDatabase.');
      }
      dbInstance = new InMemoryDatabase();
    } else {
      try {
        dbInstance = new MysqlDatabase({
          host: process.env.DB_HOST,
          port: process.env.DB_PORT,
          user: process.env.DB_USER,
          password: process.env.DB_PASSWORD,
          database: process.env.DB_NAME
        });
      } catch (err) {
        console.warn('⚠️ Falha ao instanciar MySQL, usando fallback InMemory:', err.message);
        dbInstance = new InMemoryDatabase();
      }
    }
  }
  return dbInstance;
}
