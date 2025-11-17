#!/bin/bash
# Script pour télécharger le plugin Pulumi Kubernetes

set -e

PLUGIN_VERSION="v4.5.0"
PLUGIN_URL="https://github.com/pulumi/pulumi-kubernetes/releases/download/${PLUGIN_VERSION}/pulumi-resource-kubernetes-${PLUGIN_VERSION}-linux-amd64.tar.gz"

echo "📦 Downloading Pulumi Kubernetes plugin ${PLUGIN_VERSION}..."

# Créer le répertoire pour les plugins
mkdir -p pulumi-plugins

# Télécharger avec curl (alternative si le site principal est bloqué)
curl -L -o pulumi-plugins/pulumi-resource-kubernetes-${PLUGIN_VERSION}-linux-amd64.tar.gz "${PLUGIN_URL}"

echo "✅ Plugin downloaded successfully!"
echo "Size: $(du -h pulumi-plugins/pulumi-resource-kubernetes-${PLUGIN_VERSION}-linux-amd64.tar.gz | cut -f1)"
