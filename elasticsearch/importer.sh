#!/usr/bin/env bash

set -o pipefail
set -u

echo "[SEED] Indexing data into Elasticsearch.."

wait () {
  echo "Waiting for Elasticsearch to start.."
  while true; do
    curl -s -XGET "http://$ES_HOST:$ES_PORT" > /dev/null
    if [ $? -eq 0 ]; then
      break
    fi
    sleep 1
  done
}

wait

for file in data/*.json; do
  echo "Indexing $file..."
  curl -s -XPOST -H "Content-Type: application/json" "http://$ES_HOST:$ES_PORT/_bulk" --data-binary "@$file" | jq .

  echo "Done."
done