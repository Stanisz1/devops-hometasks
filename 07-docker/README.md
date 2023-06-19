# Домашнее задание 7

- В репозитории создайте директорию `07-docker`
- В созданной директории создайте Dockerfile, создающий docker-образ, удовлетворяющий следующим требованиям:
  - Основан на debian
  - При запуске выполняет Apache httpd, отображающий **[динамический сайт](files/index.php)** из прошлых домашних заданий
- В той же директории создайте скрипт **`dynamic.sh`**
  - создающий образ из докерфайла, имя образа - **`hometask-image`**
  - запускающий докер-контейнер из вашего образа
  - пробрасывающий порт 80 контейнера на порт 8080 хост-системы
- В той же директории создайте скрипт **`static.sh`**
  - запускающий докер-контейнер из вашего образа
  - пробрасывающий порт 80 контейнера на порт 8081 хост-системы
  - размещает файл **[index.html](files/index.html)** из вашей текущей директории в директории c кодом сайта.

&nbsp;
- Создайте файл Dockerfile.multi
- Созданный Dockerfile должен создавать один промежуточный образ:
  - Образ основан на golang:1.16
  - Получает исходный код проекта word-cloud-generator из https://github.com/Fenikks/word-cloud-generator.git
  - Выполняет сборку приложения с помощью команды `make`
- Созданный Dockerfile должен создавать итоговый образ 
  - Основаный на alpine:latest
  - Получающий исполняемый файл проекта word-cloud-generator из промежуточного образа
  - При запуске по умолчанию выполняюший приложение word-cloud-generator
# Полезные ссылки

- [Docker для начинающих](https://docker-curriculum.com/)
- [Создание образов](https://docs.docker.com/engine/reference/builder)
- [Серия статей про docker](https://habr.com/ru/company/ruvds/blog/438796/)
- [Dockerhub](https://hub.docker.com/)
- [CMD \& ENRTYPOINT](https://habr.com/ru/company/southbridge/blog/329138/)

# Команды docker
- `docker images`
- `docker image ls`
- `docker pull`
- `docker pull ubuntu:bionic`
- `docker pull alpine`
- `docker container ls`
- `docker container ls -a`
- `docker ps`
- `docker ps -a`
- `docker ps -l`
- `docker run hello-world`
- `docker run -it ubuntu bash`
- `docker start <container_name>`
- `docker stop <container_name>`
- `docker attach <container_id>`
- `docker exec -ti <container_name> bash`
- `docker exec <container_name> ls -l`
- `docker run --rm ubuntu sleep 15`
- `docker run -d -ti --name container ubuntu`
- `docker run –-help`
- `docker rm <container-id>`
- `docker system prune`
- `docker run --rm -it -p 45678:45678 -p 45679:45679 --name echo-server feniks/ubuntu-netbox bash`
- `docker run --rm -it --name echo-server feniks/ubuntu-netbox bash`
- `docker network`
- `docker network create itacademy`
- `docker network ls`
- `docker run --rm -ti --net itacademy --name catserver feniks/ubuntu-netbox bash`
- `docker network inspect itacademy`
- `docker volume ls`
- `docker run --rm -ti -v /tmp/shared-folder:/share ubuntu bash`
- `docker run --rm -ti -v /shared-ephemeral --name first ubuntu bash`
- `docker run --rm -it --volumes-from first --name second ubuntu bash`
- `docker run -ti --name basebox ubuntu bash`
- `docker commit basebox`
- `docker tag <id> my-image`
- `docker commit basebox my-image:01`
- `docker build -t test .`
- `docker history test`
- `docker build -t app-py:v1 -f /vagrant/app/Dockerfile-py /vagrant/`
- `docker build -t google-big -f Dockerfile.simple .`
