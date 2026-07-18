#!/bin/bash
# Script: import_kyverno.sh
# Utilise les variables d'environnement passées par le workflow

curl -v -X POST "${DD_URL}/api/v2/import-scan/" \
     -H "Authorization: Token ${DD_API_TOKEN}" \
     -F "scan_type=Generic Findings Import" \
     -F "file=@kyverno_dojo.json" \
     -F "product_name=DevSecOps-Pipeline" \
     -F "engagement_name=CI-CD-Pipeline" \
     -F "auto_create_context=true"
