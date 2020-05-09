#!/usr/bin/env bash

mkdir -p ~/.aws

cat > ~/.aws/udagram-kubeconfig << EOL
apiVersion: v1
clusters:
- cluster:
    certificate-authority-data: ${TERRA_SERVER_AUTH}
    server: ${SERVER_URL}
  name: udagram
contexts:
- context:
    cluster: udagram
    user: kubernetes-admin
  name: kubernetes-admin@udagram
current-context: kubernetes-admin@udagram
kind: Config
preferences: {}
users:
- name: kubernetes-admin
  user:
    client-certificate-data: ${CLIENT_CERTIFICATE}
    client-key-data: ${CLIENT_KEY}
EOL