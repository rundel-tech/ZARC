#!/bin/bash

# Finding how many times each routine is called. I did this before, but much
# has changed since then.
# Merlin Skinner, 21/11/2021 (Sunday)

tmp=/tmp

# Find all non-comment lines.
grep -v '^;'  ../*.z80 >$tmp/count_t1.txt

# Find all lines with call in them.
grep " call " $tmp/count_t1.txt >$tmp/count_t2.txt

# Remove first word (label).
sed 's/[^ ]* //' $tmp/count_t2.txt >$tmp/count_t3.txt

# Remove leading spaces
sed -e 's/^[ \t]*//' $tmp/count_t3.txt >$tmp/count_t4.txt

# Remove leading "call" and the more common conditions.
sed 's/call //;s/nc, //;s/c, //;s/nz, //;s/z, //;s/m, //;s/p, //' $tmp/count_t4.txt >$tmp/count_t5.txt

# Remove trailing comments
sed "s/\;.*//" $tmp/count_t5.txt >$tmp/count_t6.txt

# Remove trailing whitespace (actually trim leading and trailing space or tab
# characters and also squeeze sequences of tabs and spaces into a single space).
awk '{$1=$1;print}' $tmp/count_t6.txt >$tmp/count_t7.txt

# Sort file (required for the next step).
sort $tmp/count_t7.txt >$tmp/count_t8.txt

# Count adjacent matching lines.
uniq -c $tmp/count_t8.txt >$tmp/count_t9.txt

# Sort the output by frequency.
sort -nr $tmp/count_t9.txt >counts.txt

