#!/bin/bash
if [ "$1" != "" ]; then
	if [ -f "$1.s" ]; then
		as $1.s -o $1.o && ld -N $1.o -o $1
	if [ "$2" == "-s" ]; then
		objcopy -O binary $1 tmp.bin
		hexdump -v -e '"\\""x" 1/1 "%02x"""' tmp.bin
		rm -fr tmp.bin
		echo ""
	fi

	else
		echo "$1.s doesn't exist"
	fi
else
	echo "Please add a filename"
fi
