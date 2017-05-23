#!/bin/sh

for vfchost in `lsdev |grep vfchost|awk '{print $1}'`
	do
		if [ X`/usr/ios/cli/ioscli lsmap -vadapter ${vfchost} -npiv|head -3|awk 'NR>2 {print $4}'` != X ]
			then
				if [ `/usr/ios/cli/ioscli lsmap -vadapter ${vfchost} -npiv|grep Status|awk -F ":" '{print $2}'` = LOGGED_IN ]
					then
						:
					else
						echo "${vfchost}   ERROR!!!"
						echo "${vfchost} status is \n`/usr/ios/cli/ioscli lsmap -vadapter ${vfchost} -npiv|grep Status|awk -F ":" '{print $2}'`"
			fi
		fi
done
