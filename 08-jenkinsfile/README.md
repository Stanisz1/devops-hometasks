# Домашнее задание  8

- В репозитории создайте директорию `08-jenkinsfile`
- В директории `08-jenkinsfile` создайте `Jenkinsfile`, который содержит Pipeline из 5 этапов:
  - Скачивание исходных кодов из вашего форка репозитория репозитория https://github.com/wickett/word-cloud-generator.
  - Проверка исходных кодов и тесты (`make lint` и `make test`)
  - Сборка и загрузка артефактов в репозиторий Nexus (192.168.33.90, Credentials-ID: nexus-creds)
  - Установка приложения на staging сервер, запуск integration-тестов (два параллельных потока с одинаковыми integration-тестами) (Staging: 192.168.33.80)
  - Установка приложения на production сервер, только если успешно закончились тесты (Production: 192.168.33.85)
  - IP адреса серверов (Nexus, staging, production) пропишите через переменные
- Имя пользователя и пароль так же должны быть прописаны через переменные.

# Полезные ссылки

### Groovy
- [Официальный сайт](http://www.groovy-lang.org/)
- [Groovy за 15 минут](https://habr.com/ru/post/122127/)
- [Примеры кода на Groovy](https://mrhaki.blogspot.com/search/label/Groovy)
- [Учебник Groovy](https://ru.wikibooks.org/wiki/Groovy)

### Pipeline

- [Официальная документация](https://jenkins.io/doc/book/pipeline/)
- [Примеры](https://github.com/jenkinsci/pipeline-examples)
