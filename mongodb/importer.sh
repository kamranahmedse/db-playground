#!/usr/bin/env bash

echo "[SEED] Importing data into MongoDB"
mongorestore --host mongo --drop --db "${DB_NAME:-northwind}" ./data

