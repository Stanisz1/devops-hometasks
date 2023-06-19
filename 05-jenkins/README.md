

# Домашнее задание 5

- В репозитории `devops-hometasks` создайте директорию `05-jenkins`
- C помощью Vagrant создайте виртуальную машину `jenkins.vm` основанную на Debian
- Напишите свою роль для установки Jenkins. Роль должна содержать:
  - Конфигурацию системы
  - Установку и настройку необходимых плагинов
  - Создание задачи
  - Создание необходимых credentials
- Для примера можно использовать роли [ansible-jenkins](https://github.com/emmetog/ansible-jenkins), [ansible-role-jenkins](https://github.com/geerlingguy/ansible-role-jenkins)
- На машине jenkins.vm установите Jenkins с помощью вашей ansible роли. 

# Полезные ссылки

- [Установка Jenkins](https://jenkins.io/doc/book/installing/)

- [Configuration as code](https://plugins.jenkins.io/configuration-as-code/)
- [Configuration as code примеры](https://github.com/jenkinsci/configuration-as-code-plugin/blob/master/demos/README.adoc)
- [Init scripts](https://github.com/roboshop-jenkins/jenkins/tree/master/init-scripts)

- [Настройка агентов Jenkins](https://kamaok.org.ua/?p=2929)
- [Репозиторий приложения](https://github.com/wickett/word-cloud-generator)
- [Библиотека ролей для ansible](https://galaxy.ansible.com)
- [Роль для настройки jenkins](https://github.com/emmetog/ansible-jenkins)
  
- [Описание Core API](https://wiki.jenkins.io/display/JENKINS/Remote+access+API)
- [REST-API для плагина Credentials](https://support.cloudbees.com/hc/en-us/articles/360030526992-How-to-manage-Credentials-via-the-REST-API)
- [Красивый вывод Jenkins REST-API](http://automation-remarks.com/kak-prruchit-jenkins-api/)
- [Python API](https://jenkinsapi.readthedocs.io/en/latest/using_jenkinsapi.html)
- [Установка плагинов через API](https://www.anycodings.com/1questions/1072214/how-to-install-plugins-in-jenkins-with-the-help-of-jenkins-remote-access-api)
