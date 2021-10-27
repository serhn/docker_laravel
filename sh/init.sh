#!/bin/sh

DB_HOST="mysql"
sed -i -r "s/^(DB_HOST ?=).*/\1$DB_HOST/" ./../.env
DB_PASSWORD=$(pwgen 32 1)
sed -i -r "s/^(DB_PASSWORD ?=).*/\1$DB_PASSWORD/" ./../.env
DB_PASSROOT=$(pwgen 32 1)
sed -i -r "s/^(DB_PASSROOT ?=).*/\1$DB_PASSROOT/" ./../.env
REDIS_HOST="redis-cache"
sed -i -r "s/^(REDIS_HOST ?=).*/\1$REDIS_HOST/" ./../.env



