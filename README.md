# shiny-engine

#### Generate certificates

- create CA files
  - run: `command /usr/lib/generate.sh`
- create certs for a domain
  - run: `command /user/lib/generate-cert.sh {domain}`

#### Install certs on haproxy
- mount the share certificates volume
- copy the files over to the haproxy certs directory


#### PEM file
- example: `cat private/garuda.lan.key issued/garuda.lan.crt ca.crt >> garuda.pem`