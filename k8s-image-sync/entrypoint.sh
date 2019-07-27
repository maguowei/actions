#!/bin/bash

KUBERNETES_RELEASE_VERSION="$(curl -sSL https://dl.k8s.io/release/stable.txt)"

KUBERNETES_VERSION=${KUBERNETES_VERSION:=${KUBERNETES_RELEASE_VERSION}}
echo "currect version ${KUBERNETES_VERSION}"

curl -O -L https://storage.googleapis.com/kubernetes-release/release/${KUBERNETES_VERSION}/bin/linux/amd64/kubeadm
chmod +x kubeadm
images=$(./kubeadm config images list --kubernetes-version=${KUBERNETES_VERSION})

echo "image list: ${images}"

while IFS='/' read key value; do
    image=${key}/${value}
    docker pull ${image}
    docker tag ${image} ${REGISTRY}/${value}
    docker push ${REGISTRY}/${value}
done <<< ${images}
