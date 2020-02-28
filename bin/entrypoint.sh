#!/bin/sh

# ENV VARS:
#   - $FQDN

/keygen.sh -h $FQDN -y 10 -e https://$FQDN/shibboleth -f -o /working
/metagen.sh -c sp-cert.pem -h $FQDN -e https://$FQDN/shibboleth > $FQDN.xml