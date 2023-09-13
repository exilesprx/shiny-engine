#!/bin/bash

domain=$1

command /usr/lib/easy-rsa/easyrsa3/easyrsa gen-req $domain
command /usr/lib/easy-rsa/easyrsa3/easyrsa sign-req server $domain