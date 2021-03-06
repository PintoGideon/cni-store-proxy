#!/bin/bash



#docker-compose -f docker-compose_dev.yml             \
#  exec chris_dev python plugins/services/manager.py  \
#  register host --pluginname $1

# docker-compose might not be able to find the container by name
# because of how chris_dev_1 is restarted

CONTAINER=9ee0e1587c0e

ssh localhost << EOF
set -e
cd ~/fnndsc/ChRIS_ultron_backEnd
docker exec $CONTAINER python plugins/services/manager.py \
  register host --pluginname $1
EOF
