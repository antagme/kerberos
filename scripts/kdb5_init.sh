#! /bin/bash
KERB_MASTER_KEY="admin"
REALM="EDT.ORG"
/usr/sbin/kdb5_util -P $KERB_MASTER_KEY -r $REALM create -s
