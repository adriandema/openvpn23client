from debian:jessie-slim
LABEL description="Openvpn client" \
      maintainer="adrian@.ar" \
      vendor="Adrian"


RUN apt-get update && apt-get install -y --force-yes ca-certificates wget apt-transport-https
RUN wget -O - https://swupdate.openvpn.net/repos/repo-public.gpg|apt-key add -
RUN echo "deb http://build.openvpn.net/debian/openvpn/release/2.3 jessie main" > /etc/apt/sources.list.d/openvpn-aptrepo.list
RUN apt-get update && apt-get install -y --force-yes openvpn
