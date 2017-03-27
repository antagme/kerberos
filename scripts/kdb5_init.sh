#! /bin/bash
KERB_MASTER_KEY="masterkey"
REALM="kerb.edt.org"
/usr/sbin/kdb5_util -P $KERB_MASTER_KEY -r $REALM create -s
