#!/usr/bin/env bash
set -euo pipefail

chmod +x scripts/*.sh

./scripts/kind-create.sh
./scripts/install-ingress.sh
./scripts/install-argocd.sh

echo ""
echo "Next:"
echo "1) Add to /etc/hosts: 127.0.0.1 miniflix.local"
echo "2) Apply the Argo Application: kubectl apply -f argocd/applications/miniflix-dev.yaml"
echo "3) Visit ArgoCD UI: https://localhost:8080 (after port-forward)"
