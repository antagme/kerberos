FROM fedora
MAINTAINER "Pedro Romero Aguado" <pedroromeroaguado@gmail.com> 

#installs
RUN dnf install -y krb5-server krb5-libs krb5-workstation nss-pam-ldapd ; exit 0
# directoris
RUN mkdir /opt/docker
#Copy github to dockerhub build
COPY scripts /scripts/
COPY files /opt/docker
#FOR TAKE hosts from ldap
RUN cp -r /opt/docker/ns* /etc
RUN /usr/sbin/nslcd
#CPING FILES TO DESTINY DIRECTORIS
RUN cp -f /opt/docker/krb5.conf /etc/
#FIRSTLY DO KDB5_UTIL!!!
RUN bash /scripts/kdb5_init.sh
#CONTINUE COPYING
RUN cp -f /opt/docker/kdc.conf /var/kerberos/krb5kdc/
RUN cp -f /opt/docker/kadm5.acl /var/kerberos/krb5kdc/
#START DEMONS
#RUN /usr/sbin/krb5kdc && /usr/sbin/kadmind

#COPY configs /etc/
#make executable and execute
#VOLUME ["/data"] 
ENTRYPOINT /usr/sbin/krb5kdc & /usr/sbin/kadmind & /bin/bash 
EXPOSE 25 143 587 993 4190 8001 8002 9001 389
