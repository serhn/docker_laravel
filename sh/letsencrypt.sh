#!/bin/sh
#stop server 80 port
docker run --rm -it -v ${PWD}/../etc/letsencrypt:/etc/letsencrypt -p 80:80 certbot/certbot certonly --authenticator standalone


## renewal
#docker run --rm -it -v ~/certs:/etc/letsencrypt certbot/certbot renew
