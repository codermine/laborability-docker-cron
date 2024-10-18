#!/bin/sh

env >> /etc/environment

echo "Printing all environment variables as test:"
env

# execute CMD
echo "$@"
exec "$@"
