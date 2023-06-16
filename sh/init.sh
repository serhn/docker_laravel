#!/bin/sh
ln -s ../.env ./
chmod -R 777 ../storage
if [ $(grep DB_PASSROOT ../.env | wc -l) = "0" ]
then
  gsed -i -r '/DB_PASSWORD/a DB_PASSROOT=' ./../.env
fi

if [ $(grep REDIS_PREFIX ../.env | wc -l) = "0" ]
then
  gsed -i -r '/REDIS_PORT/a REDIS_PREFIX=' ./../.env
fi

DB_HOST="mysql"
gsed -i -r "s/^(DB_HOST ?=).*/\1$DB_HOST/" ./../.env
DB_USERNAME="laravel"
gsed -i -r "s/^(DB_USERNAME ?=).*/\1$DB_USERNAME/" ./../.env
DB_PASSWORD=$(pwgen 32 1)
gsed -i -r "s/^(DB_PASSWORD ?=).*/\1$DB_PASSWORD/" ./../.env
DB_PASSROOT=$(pwgen 32 1)
gsed -i -r "s/^(DB_PASSROOT ?=).*/\1$DB_PASSROOT/" ./../.env
REDIS_HOST="redis-cache"
gsed -i -r "s/^(REDIS_HOST ?=).*/\1$REDIS_HOST/" ./../.env
BROADCAST_DRIVER="redis"
gsed -i -r "s/^(BROADCAST_DRIVER ?=).*/\1$BROADCAST_DRIVER/" ./../.env
REDIS_PREFIX="laravel_database_"
gsed -i -r "s/^(REDIS_PREFIX ?=).*/\1$REDIS_PREFIX/" ./../.env
QUEUE_CONNECTION="database"
gsed -i -r "s/^(QUEUE_CONNECTION ?=).*/\1$QUEUE_CONNECTION/" ./../.env


