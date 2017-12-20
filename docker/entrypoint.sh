#!/bin/bash

sed -i -e "s/KUBERNETESSERVICEACCOUNTTOKEN/$(cat /var/run/secrets/kubernetes.io/serviceaccount/token)/g" -e "s/DASHBOARD_URL/${DASHBOARD_URL}/g" -e "s/DASHBOARD_PORT/${DASHBOARD_PORT}/g" /etc/nginx/conf.d/default.conf

sed -i "s/KUBE_DNS_PORT_53_TCP_ADDR/${KUBE_DNS_PORT_53_TCP_ADDR}/g" /etc/nginx/nginx.conf

nginx -g 'daemon off;'
