K8S_DEPLOYMENT_FOLDER=./udacity-c3-deployment/k8s

kubectl apply -f $K8S_DEPLOYMENT_FOLDER/aws-secret.yaml
kubectl apply -f $K8S_DEPLOYMENT_FOLDER/env-configmap.yaml
kubectl apply -f $K8S_DEPLOYMENT_FOLDER/env-secret.yaml
kubectl apply -f $K8S_DEPLOYMENT_FOLDER/backend-feed-deployment.yaml
kubectl apply -f $K8S_DEPLOYMENT_FOLDER/backend-user-deployment.yaml
kubectl apply -f $K8S_DEPLOYMENT_FOLDER/backend-image-filter-deployment
kubectl apply -f $K8S_DEPLOYMENT_FOLDER/reverseproxy-deployment.yaml
kubectl apply -f $K8S_DEPLOYMENT_FOLDER/frontend-deployment.yaml
kubectl apply -f $K8S_DEPLOYMENT_FOLDER/backend-feed-service.yaml
kubectl apply -f $K8S_DEPLOYMENT_FOLDER/backend-user-service.yaml
kubectl apply -f $K8S_DEPLOYMENT_FOLDER/backend-image-filter-service
kubectl apply -f $K8S_DEPLOYMENT_FOLDER/reverseproxy-service.yaml
kubectl apply -f $K8S_DEPLOYMENT_FOLDER/frontend-service.yaml