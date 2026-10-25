#!/bin/bash

cd "$(dirname "$0")"

echo "Pornire proiect ceramica..."
docker compose up -d --build

echo ""
echo "Verificare site..."
for i in {1..20}; do
  if curl -fsS http://localhost:8000 >/dev/null 2>&1; then
    echo "Site-ul este pornit pe: http://localhost:8000"
    exit 0
  fi
  sleep 2
done

echo "Site-ul nu a raspuns la http://localhost:8000"
exit 1
