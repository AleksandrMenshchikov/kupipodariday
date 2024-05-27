# kupipodariday

Установка зависимостей
```bash
npm ci
```
```bash
npm run install:app
```

Инициализация приложения в режиме development
```bash
docker-compose -f docker-compose-dev.yml up -d
```

Остановка приложения в режиме development
```bash
docker-compose -f docker-compose-dev.yml stop
```

Запуск приложения в режиме development
```bash
docker-compose -f docker-compose-dev.yml start
```

Инициализация приложения в режиме production
```bash
docker-compose -f docker-compose-prod.yml up -d
```

Остановка приложения в режиме production
```bash
docker-compose -f docker-compose-prod.yml stop
```

Запуск приложения в режиме production
```bash
docker-compose -f docker-compose-prod.yml start
```
