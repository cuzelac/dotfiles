#!/bin/bash

HOSTNAME=$1

perl -p -i -e "s/HOSTNAME=.*/HOSTNAME=$1/" /etc/sysconfig/network

ETH=$(ip addr | perl -n -e 'print if s/.*(eth\d+):.*/$1/')

perl -p -i -e "s/DEVICE=.*/DEVICE=$ETH/" /etc/sysconfig/network-scripts/ifcfg-eth0

shutdown -r now
