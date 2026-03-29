#!/bin/sh
set -e

# Pokud NENÍ nastavena ACKEE_MONGODB, zkusíme ji poskládat z dílčích proměnných
if [ -z "$ACKEE_MONGODB" ]; then
  export ACKEE_MONGODB="mongodb+srv://${MONGODB_USER}:${MONGODB_PASSWORD}@${MONGODB_HOSTPORT}/${MONGODB_DATABASE}?retryWrites=true&w=majority"
fi

exec "$@"
