#!/bin/bash

set -e

echo "========================================="
echo "Creating Banking Payment Platform Layout"
echo "========================================="

# Root files
touch README.md
touch LICENSE
touch .gitignore
touch Makefile

# ----------------------------
# Application
# ----------------------------

mkdir -p application/payment-service

touch application/payment-service/01-namespace.yaml
touch application/payment-service/02-priorityclass.yaml
touch application/payment-service/03-serviceaccount.yaml
touch application/payment-service/04-role.yaml
touch application/payment-service/05-rolebinding.yaml
touch application/payment-service/06-configmap.yaml
touch application/payment-service/07-secret.yaml
touch application/payment-service/08-deployment.yaml
touch application/payment-service/09-service.yaml
touch application/payment-service/10-ingress.yaml
touch application/payment-service/11-hpa.yaml
touch application/payment-service/12-pdb.yaml
touch application/payment-service/13-networkpolicy.yaml
touch application/payment-service/14-servicemonitor.yaml
touch application/payment-service/15-prometheusrule.yaml

# ----------------------------
# Platform
# ----------------------------

mkdir -p platform/ingress-nginx

mkdir -p platform/metrics-server

mkdir -p platform/monitoring/prometheus
mkdir -p platform/monitoring/grafana
mkdir -p platform/monitoring/alertmanager

mkdir -p platform/logging/fluent-bit
mkdir -p platform/logging/opensearch
mkdir -p platform/logging/kibana

mkdir -p platform/tracing/aws-xray

mkdir -p platform/autoscaling/cluster-autoscaler

# ----------------------------
# Scripts
# ----------------------------

mkdir -p scripts

touch scripts/deploy.sh
touch scripts/destroy.sh
touch scripts/validate.sh
touch scripts/health-check.sh
touch scripts/port-forward.sh

chmod +x scripts/*.sh

# ----------------------------
# Documentation
# ----------------------------

mkdir -p docs

touch docs/architecture.md
touch docs/traffic-flow.md
touch docs/monitoring.md
touch docs/logging.md
touch docs/tracing.md
touch docs/hpa.md
touch docs/troubleshooting.md

# ----------------------------
# Helm
# ----------------------------

mkdir -p helm/payment-service

# ----------------------------
# GitHub Actions
# ----------------------------

mkdir -p .github/workflows

touch .github/workflows/kubernetes-validation.yml

echo ""
echo "Repository structure created successfully!"
echo ""

if command -v tree >/dev/null 2>&1; then
    tree
else
    find .
fi
