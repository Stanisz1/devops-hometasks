# Курсовой проект

- Установите Argo CD в свой кластер миникуба.
- Создайте github pages для своего репозитория с домашними заданиями.
- В workflow (Дз 10) добавьте шаги: 
  - для создания тега (новой версии) в ветке main(master)
  - для проверки helm чарта (helm lint)
  - упаковки чарта из Дз 12 (helm package)
  - обновления индекса репозитория (helm repo index)
- Тег для wcg docker image должен быть равен тегу, созданному выше
- В helm чарте тег докер образа должен быть равен версии чарта.
- Настройте Argo CD на деплоймент упакованного выше helm чарта.


# Полезные ссылки

- [Документация Argo CD](https://argo-cd.readthedocs.io/en/stable/)
- [Что такое GitOps](https://habr.com/ru/companies/oleg-bunin/articles/690544/)
- [GitHub Tag](https://github.com/marketplace/actions/github-tag)
- [github-tag-action](https://github.com/anothrNick/github-tag-action)
- [Helm repository](https://helm.sh/docs/topics/chart_repository/)
- [kubectx Linux](https://github.com/ahmetb/kubectx)
- [kubenswin Windows](https://github.com/thomasliddledba/kubenswin)


# Notes

Check if "Read and write permissions" are enabled in Settings -> Actions -> General -> Workflow permissions.

