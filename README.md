# SAML Service Provider Metadata Generator

A simple Docker container that uses the keygen.sh and metadata.sh scripts directly from the Shibboleth SP distribution. It then puts the keys and metadata file in /working.

## To Use
docker run -v $(pwd)/test:/working -e FQDN=test.domain.tld jhulibraries/saml-sp-metadata-gen:latest 

This follows the standard format that the JHU Libraries use, published here: https://wiki.library.jhu.edu/display/SYST/Deploying+Shib+auth+on+a+library+server