#!/usr/bin/env bash
# Barcode API – cURL example
# Usage: CHARTQUERY_API_KEY=your-key bash barcode.sh
set -euo pipefail

curl -sS -G "https://api.chartquery.com/v1/barcode" \
  -H "x-api-key: ${CHARTQUERY_API_KEY}" \
  --data-urlencode data=HELLO-WORLD-2026 \
  -o barcode.svg

echo "Saved barcode.svg"
