#!/bin/sh

echo 'disable iptables'
chkconfig iptables off
service iptables stop
