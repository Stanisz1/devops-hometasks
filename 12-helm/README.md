# Домашнее задание 12

- В репозитории с домашними заданиями создайте каталог `12-helm`
- Создайте свой чарт для установки word-cloud-generator (Дз 11)
- Порты, версия докер образа, имя хоста в ingress должны задаваться через values.

# Полезные ссылки

- [Документация Helm](https://helm.sh/)

# Команды helm

- `helm repo add jenkins https://charts.jenkins.io`
- `helm search repo jenkins`
- `helm show --help`
- `helm show values jenkins/jenkins`
- `helm pull jenkins/jenkins --untar --version 3.12.2`
- `helm install jenkins jenkins -n jenkins`
- `helm ls -n jenkins`
- `helm upgrade jenkins jenkins/jenkins --version 4.2.8 -n jenkins`
- `helm history jenkins -n jenkins`
- `helm rollback billing`
- `helm rollback billing 3`
- `helm template billing .`