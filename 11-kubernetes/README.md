# Домашнее задание 11

- В репозитории с домашними заданиями создайте каталог `11-kubernetes`
- Создайте манифесты для следующих объектов:
  - Deployment для запуска в k8s кластере приложения word-cloud-generator из вашего образа wcg, хранящегося в GitHub registry (ghcr.io)(Дз 10). Сделайте image публичным.
  - Service для доступа к приложению
  - Ingress для доступа к приложению снаружи кластера

# Полезные ссылки

- [Документация K8s](https://kubernetes.io/docs/tutorials/)
- [Установка Minikube](https://kubernetes.io/docs/tasks/tools/install-minikube/)
- [Установка kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/)
- [Старые версии Minikube](https://github.com/kubernetes/minikube/tags)
- [CSI drivers](https://kubernetes-csi.github.io/docs/drivers.html)
- [kubectx Linux](https://github.com/ahmetb/kubectx)
- [kubenswin Windows](https://github.com/thomasliddledba/kubenswin)

# Команды minikube & kubectl
- `minikube start`
- `kubectl cluster-info`
- `minikube image load server:1.0`
- `minikube image ls`
- `kubectl get all`
- `kubectl get pods`
- `kubectl logs app -c server`
- `kubectl edit pod <pod_name>`
- `kubectl get pods -o=custom-columns=NAME:.metadata.name,DATA:.metadata.ownerReferences`
- `kubectl scale replicaset nginx --replicas=5`
- `kubectl delete replicaset nginx --cascade=false`
- `minikube image build -t app:v1.0 -f Dockerfile1 .`
- `kubectl apply -f deployment.yml --record`
- `kubectl rollout status deployment app-deployment`
- `kubectl set image deployment app-deployment app=app:v2.0 --record`
- `kubectl rollout undo deployment app-deployment`
- `kubectl rollout history deployment app-deploymetn`
- `kubectl rollout undo  deployment app-deployment --to-revision=2`
- `kubectl get pods -o wide`
- `kubectl expose deployment nginx-deployment --port 80 --target-port 80`
- `kubectl describe service nginx-deployment`
- `kubectl run tmp-pod --rm -i --tty --image feniks/ubuntu-netbox -- /bin/bash`
- `kubectl proxy --port 8080`
- `kubectl port-forward service/my-service 10000:80`
- `minikube ssh -n minikube-m02`
- `minikube tunnel`
- `minikube addons enable ingress`
