#! /bin/bash

. /opt/mylogin/stocks


blk=""
tmp=$(mktemp)
while test 1
do 
	{
	echo -n $'\e[H\e[J'
	echo $'                        \e[1;4m'"$(date)"$'\e[0m'
	echo "${blk}"
	/root/github/diamond-hands/day_movement_by_ticker
	echo "${blk}"
	/root/github/diamond-hands/day_movement_by_account
	echo -n $'\e[H'
	} > ${tmp}

	cat ${tmp}
	rm -f ${tmp}
	sleep 60
done
