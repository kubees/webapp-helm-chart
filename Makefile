install:
	helm dependency update ./webapp-helm-chart
	helm install webapp ./webapp-helm-chart -f webapp-helm-chart/values.yaml -n frontend --create-namespace
uninstall:
	helm uninstall webapp -n frontend
template:
	helm template webapp ./playlist-helm-chart
dependencies:
	helm dependency update ./webapp-helm-chart