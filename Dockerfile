FROM debian:bookworm-20230904-slim

RUN apt -y update \
  && apt -y install git

WORKDIR /usr/lib

RUN git clone https://github.com/OpenVPN/easy-rsa.git

WORKDIR /usr/lib/easy-rsa

RUN git checkout tags/v3.1.6

COPY scripts/ /usr/lib/

RUN chmod +x /usr/lib/*.sh