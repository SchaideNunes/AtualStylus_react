import { MysqlDatabase } from './mysqlDb.js';
import { InMemoryDatabase } from './inMemoryDb.js';

let dbInstance = null;

export function getDatabase() {
  if (!dbInstance) {
    if (process.env.NODE_ENV === 'test' || process.env.USE_IN_MEMORY_DB === 'true') {
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
        console.warn('⚠️ Falha ao conectar ao MySQL, usando fallback InMemory:', err.message);
        dbInstance = new InMemoryDatabase();
      }
    }
  }
  return dbInstance;
}
