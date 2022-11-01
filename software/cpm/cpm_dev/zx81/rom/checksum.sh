#!/bin/bash
# Sum all of the bytes in the supplied file to generate a checksum. Example:
# ./checksum.sh ZX81ROM.BIN
# Note 855106 is the "new" ZX81 ROM and 854885 is the "old" one. The difference
# affects mathematical results including sqr.

declare -a bytes
bytes=(`xxd -p -c 1 $1 | tr '\n' ' '`)

length=0
total=0;
for(( i=0; i<${#bytes[@]}; i++));
do
    length=$(($length + 1))
    total=$(($total + 0x${bytes[i]}))
#    if [ $total -gt 65535 ]; then
#            total=$(($total & 65535))
#    fi
done

echo "Length: " $length ", checksum: " $total

