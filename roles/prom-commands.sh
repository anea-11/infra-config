helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo add grafana https://grafana.github.io/helm-charts
helm repo update
kubectl create namespace monitoring
helm install prometheus --namespace monitoring prometheus-community/prometheus
helm install grafana --namespace monitoring grafana/grafana


# To access Prometheus server with minikube - for real Cluster create NodePort? But for Grafana...
minikube service prometheus-server-ext
kubectl expose service prometheus-server --type=NodePort --target-port=9090 --name=prometheus-server-ext --namespace monitoring