#!/bin/bash

cd "$(dirname "$0")"

echo "Oprire proiect ceramica..."
docker compose down

echo "Proiectul a fost oprit."
