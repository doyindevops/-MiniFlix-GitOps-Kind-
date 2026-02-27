#!/usr/bin/env bash
set -euo pipefail

kubectl create namespace argocd --dry-run=client -o yaml | kubectl apply -f -
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml

echo "Waiting for Argo CD server..."
kubectl wait -n argocd --for=condition=available deploy/argocd-server --timeout=240s

echo "Argo CD initial admin password (run this):"
echo "kubectl get secret -n argocd argocd-initial-admin-secret -o jsonpath='{.data.password}' | base64 -d; echo"
echo ""
echo "To open Argo CD UI locally (run this in another terminal):"
echo "kubectl port-forward -n argocd svc/argocd-server 8080:443"
