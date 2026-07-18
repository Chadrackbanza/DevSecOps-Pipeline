#!/bin/bash
if [ "$1" == "vuln" ]; then
    echo "nginx:1.16" > demo-config
    echo "Passage en mode VULNÉRABLE..."
elif [ "$1" == "safe" ]; then
    echo "alpine:latest" > demo-config
    echo "Passage en mode SÉCURISÉ..."
else
    echo "Usage: ./switch_demo.sh [vuln|safe]"
    exit 1
fi

git add demo-config
git commit -m "Demo mode: $1"
git push
echo "Poussé sur GitHub, le pipeline va démarrer."
