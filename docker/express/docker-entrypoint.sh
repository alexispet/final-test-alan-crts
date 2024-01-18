#!/bin/sh

echo "Executing docker-entrypoint.sh"

if [ $NODE_ENV = "development" ]
then
    echo "Installing dependencies"
    npm install
fi

echo "Initializing database"
npm run db:import

exec "$@"