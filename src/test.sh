#!/bin/bash

[[ ! -f "$1" ]] && echo "file not found:$1" && exit 1;

TEMP_FILE=./ttt.log

cp "$1" $TEMP_FILE


for x in "" {2..6} ; do
	SECTION="itc_work${x}"
	echo $SECTION

	grep systemd $TEMP_FILE > "$SECTION.log"
	
done


