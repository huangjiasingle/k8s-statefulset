#!/bin/bash

hostname=$HOSTNAME
name=${hostname%-*}
ordinal=${hostname##*-}

if [ "$ordinal" = "0" ]; then
    mongod --bind_ip 0.0.0.0 --master --config /etc/mongo.conf --dbpath /data/db
else
    mongod --bind_ip 0.0.0.0 --slave --source ${name}-0.${name}:27017 --config /etc/mongo.conf --dbpath /data/db
fi