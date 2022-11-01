#!/bin/bash
# Prepare specified and current netlists for comparison
# Removes index numbers from unnamed nets, which otherwise make comparisons
# difficult as they are liable to change when the design is modified.
# Merlin, 28/4/2020

# Operand is the netlist to compare against. Both netlists are assumed to be
# in the Output folder.

# Create temporary folder
tmp=./tmp
mkdir -p $tmp

# Current netlist name
cn="netlist.txt"

# Temporary files
n1a=n1a_temp.txt
n2a=n2a_temp.txt
n1b=n1b_temp.txt
n2b=n2b_temp.txt
n1c=n1c_temp.txt
n2c=n2c_temp.txt
n1d=n1c_temp.txt
n2d=n2c_temp.txt
n1e=n1c_temp.txt
n2e=n2c_temp.txt

if [ $# -ne 1 ]
then
    echo "Netlist name to compare against required"
    exit 1
fi

# Remove index numbers from nets
sed 's/unnamed_net[0-9]*/unnamed_net/' Output/$1 >$tmp/n1a
sed 's/unnamed_net[0-9]*/unnamed_net/' Output/$cn >$tmp/n2a

# Remove all but nets section
sed -n '/^START nets/,/^END nets/p;/^END nets/q' $tmp/n1a >$tmp/n1b
sed -n '/^START nets/,/^END nets/p;/^END nets/q' $tmp/n2a >$tmp/n2b

# Remove start lines
sed -n '/START nets/!p' $tmp/n1b >$tmp/n1c
sed -n '/START nets/!p' $tmp/n2b >$tmp/n2c

# Remove end lines
sed -n '/END nets/!p' $tmp/n1c >$tmp/n1d
sed -n '/END nets/!p' $tmp/n2c >$tmp/n2d

# Remove blank lines
sed '/^[[:space:]]*$/d' $tmp/n1d >$tmp/n1e
sed '/^[[:space:]]*$/d' $tmp/n2d >$tmp/n2e

# Sort to ensure consistent order
sort $tmp/n1e >$tmp/$1
sort $tmp/n2e >$tmp/$cn

# Clean up a bit
rm $tmp/n1?
rm $tmp/n2?

# Invoke comparison tool
kdiff3 $tmp/$1 $tmp/$cn
