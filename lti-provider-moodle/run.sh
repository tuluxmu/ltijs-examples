#!/bin/bash

# Start mongodb
mongod --fork --logpath /var/log/mongod.log

# Start app
node index.js