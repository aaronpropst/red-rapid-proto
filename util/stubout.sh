#!/bin/bash -e


cp -r /data/custom_modules/template /data/custom_modules/$1
find /data/custom_modules/$1 -type f -print0 | xargs -0 sed -i "s/{{modName}}/$1/g"

(cd /data/ && \
    npm install ./custom_modules/$1 )

#docker-compose -f ../docker-compose.yml restart red

echo "good to go.  you should see a node with $1 on it in the node-red interface."
echo "Check out this page for getting started info:  https://nodered.org/docs/creating-nodes/"
echo ""

echo "You should restart the node-red container with:   docker-compose restart red"