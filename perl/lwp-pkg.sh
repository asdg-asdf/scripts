#!/bin/sh
# usage  $1 = http://10.210.33.99/openssh6.tar
#        $2 = /tmp/openssh6.tar
# command = /tmp/lwp-pkg.sh http://10.210.33.99/openssh6.tar /tmp/openssh6.tar
# download tools
if [ -s /opt/perl/bin/lwp-download ];then
     /opt/perl/bin/lwp-download  $1   $2
fi

if [ -s /usr/opt/perl5/bin/lwp-download ] ;then
    /usr/opt/perl5/bin/lwp-download $1   $2
fi

if [ -s $2 ];then
    echo "download success"
    exit 0
else
    echo "download fail"
    exit 1
fi
