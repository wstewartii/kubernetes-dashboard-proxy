#!/bin/bash
. buildinfo.sh
docker build -t ${CONTAINER_REGISTRY}/kubernetes-dashboard-proxy:${CONTAINER_TAG} .
docker push ${CONTAINER_REGISTRY}/kubernetes-dashboard-proxy:${CONTAINER_TAG}
