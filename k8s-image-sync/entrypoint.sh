#!/bin/bash

RELEASE="$(curl -sSL https://dl.k8s.io/release/stable.txt)"
echo "currect version ${RELEASE}"

curl -O -L https://storage.googleapis.com/kubernetes-release/release/${RELEASE}/bin/linux/amd64/kubeadm
chmod +x kubeadm
images=$(./kubeadm config images list --kubernetes-version=${RELEASE})

echo "image list: ${images}"

while IFS='/' read key value; do
    image=${key}/${value}
    docker pull ${image}
    docker tag ${image} gotok8s/${value}
    docker push gotok8s/${value}
done <<< ${images}
