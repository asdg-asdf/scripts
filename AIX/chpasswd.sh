/usr/bin/chuser maxage=0 maxexpired=-1 histexpire=0 histsize=0 histsize=0 mindiff=0 maxrepeats=8 root
echo "root:root1234" |chpasswd
pwdadm -c root
