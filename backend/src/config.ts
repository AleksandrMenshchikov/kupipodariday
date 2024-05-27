import { DEVELOPMENT, POSTGRES } from './shared/constants';
import { DataSourceOptions } from 'typeorm';
import * as path from 'node:path';

export const config = {
  type: POSTGRES,
  host: process.env.POSTGRES_HOST,
  port: Number(process.env.POSTGRES_PORT),
  username: process.env.POSTGRES_USER,
  password: process.env.POSTGRES_PASSWORD,
  database: process.env.POSTGRES_DB,
  entities: [path.join(__dirname, '/**/*.entity{.ts,.js}')],
  migrations: [path.join(__dirname, '/migrations/*.ts')],
  migrationsRun: true,
  synchronize: process.env.NODE_ENV === DEVELOPMENT,
} as DataSourceOptions;
