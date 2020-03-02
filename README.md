# SAML Service Provider Metadata Generator

A simple Docker container that uses the keygen.sh and metadata.sh scripts directly from the Shibboleth SP distribution. It then puts the keys and metadata file in /working.

## To Use
docker run -v $(pwd)/test:/working -e CERT_YEARS=1 -e FQDN=test.domain.tld jhulibraries/saml-sp-metadata-gen:latest

CERT_YEARS (optional): The number of years before certificate expires.  Default is 10.
FQDN: The fully qualified domain name for the idP to redirect back to.  Not a url.

This follows the standard format that the JHU Libraries use, published here: https://wiki.library.jhu.edu/display/SYST/Deploying+Shib+auth+on+a+library+server
