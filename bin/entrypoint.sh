#!/bin/sh

# ENV VARS:
#   - $FQDN
#   - $CERT_YEARS

YEARS=${CERT_YEARS:-10}

/keygen.sh -h $FQDN -y $YEARS -e https://$FQDN/shibboleth -f -o /working
/metagen.sh -c sp-cert.pem -h $FQDN -e https://$FQDN/shibboleth > /working/$FQDN.xml
