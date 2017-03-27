 #! /bin/bash
 # Script per crear el admin principal en local 
 KERB_ADMIN_PASS=admin
 KERB_ADMIN_USER=admin
 kadmin.local -q "addprinc -pw $KERB_ADMIN_PASS $KERB_ADMIN_USER/admin"
