#!/bin/bash
# put this script in root's homedir on your clone'able template

HOSTNAME=$1

perl -p -i -e "s/HOSTNAME=.*/HOSTNAME=$1/" /etc/sysconfig/network

ETH=$(ip addr | perl -n -e 'print if s/.*(eth\d+):.*/$1/')

perl -p -i -e "s/DEVICE=.*/DEVICE=$ETH/" /etc/sysconfig/network-scripts/ifcfg-eth0

shutdown -r now
