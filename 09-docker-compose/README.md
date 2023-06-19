# Домашнее задание 9

- Создайте Dockerfile, который создает docker-образ Jenkin.
- Создайте Dockerfile, который создает docker-образ Nexus. Для установки и настройки Nexus можно использовать ansible роль.

&nbsp;
- Создайте файл `docker-compose.yaml`, который:
  - Собирает образ Jenkins и поднимет контейнер из собранного образа. В контейнере должена присутствовать:
    - pipeline-задача для сборки word-cloud-generator и загрузки артефактов в Nexus (домашнее задание 8)
    - Учетные данные для подключения к Nexus (через переменные)
  - Пробрасывает порт Jenkins на порт 80 host-системы
  - Собирает образ Nexus 3 и поднимет контейнер из собранного образа. В контейнере должен присутствовать:
    - настроенный репозиторий для хранения артефактов сборки 
    - пользователь, которого можно будет использовать для загрузки или скачивания файлов из репозитория
  - пробрасывает порт Nexus на порт 81 host-системы

- Создайте директорию `09-docker-compose` и поместите в нее `docker-compose.yaml` и все файлы, необходимые для его запуска.

# Полезные ссылки
- [Docker compose file specification](https://docs.docker.com/compose/compose-file/compose-versioning/)

# Команды docker-compose
- `docker-compose up`
- `docker-compose top`
- `docker-compose images`
- `docker-compose up --no-start`
- `docker-compose help`
- `docker-compose create`
- `docker-compose up --help`
- `docker-compose ps`
- `docker-compose down`
- `docker-compose up -d`
