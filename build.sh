#!/bin/bash

CONTAINER_REGISTRY=$(grep -Po '(?<=^registry: ).*' buildinfo.yaml)
CONTAINER_TAG=$(grep -Po '(?<=^tag: ).*' buildinfo.yaml)

pushd docker
docker build -t ${CONTAINER_REGISTRY}/kubernetes-dashboard-proxy:${CONTAINER_TAG} .
docker push ${CONTAINER_REGISTRY}/kubernetes-dashboard-proxy:${CONTAINER_TAG}
popd

cp buildinfo.yaml helm/kubernetes-dashboard-proxy/values.yaml
