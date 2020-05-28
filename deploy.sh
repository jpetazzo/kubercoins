#!/bin/sh
# Exit if any error happens
set -e
for SERVICE in hasher redis rng webui worker; do
  helm upgrade $SERVICE generic-service --install --values=values/$SERVICE.yaml
done
