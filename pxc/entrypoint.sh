#!/bin/bash
set -e

echo 123456 $CLUSTER_NAME $CLUSTER_ADDRESS $XTRABACKUP_PASSWORD $NODE_NAME $NODE_ADDRESS

exec mysqld --user=mysql \
     --wsrep_cluster_name=$CLUSTER_NAME \
     --wsrep_cluster_address="gcomm://$CLUSTER_ADDRESS" \
     --wsrep_sst_method=xtrabackup-v2 \
     --wsrep_sst_auth="xtrabackup:$XTRABACKUP_PASSWORD" \
     --wsrep_node_name=$NODE_NAME \
     --wsrep_node_address="$NODE_ADDRESS"
