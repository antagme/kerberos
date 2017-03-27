 #! /bin/bash
 # Script per crear el admin principal en local i mes princs per ldap
 KERB_ADMIN_PASS=admin
 KERB_ADMIN_USER=admin
 kadmin.local -q "addprinc -pw $KERB_ADMIN_PASS $KERB_ADMIN_USER/admin"
 kadmin.local -q "addprinc -pw kldap ldap/ldap.edt.org"
 kadmin.local -q "addprinc -pw khost host/ldap.edt.org"
 
