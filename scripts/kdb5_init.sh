#! /bin/bash
KERB_MASTER_KEY="admin"
REALM="EDT.ORG"
/usr/sbin/kdb5_util -P $KERB_MASTER_KEY -r $REALM create -s
cp -f /opt/docker/kdc.conf /var/kerberos/krb5kdc/
cp -f /opt/docker/kadm5.acl /var/kerberos/krb5kdc/
