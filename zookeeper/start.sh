#!/bin/bash
CURRENT_DIR=$(cd `dirname $0`; pwd)
sed -i "s#\${basedir}#$CURRENT_DIR#g" $CURRENT_DIR/docker-compose.yml

docker-compose -f $CURRENT_DIR/docker-compose.yml up
