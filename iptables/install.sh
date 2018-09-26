#!/bin/sh
IPTABLESDIR="/etc/iptables"
cp ./stateful.rules $IPTABLESDIR/iptables.rules
cp ./stateful6.rules $IPTABLESDIR/ip6tables.rules
