#!/usr/bin/env bash
set -euo pipefail

kind create cluster --config scripts/kind-config.yaml
kubectl cluster-info
kubectl get nodes -o wide
