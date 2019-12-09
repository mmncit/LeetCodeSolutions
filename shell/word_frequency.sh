#!/bin/bash
grep -oE '[a-z]+' words.txt | sort | uniq -c | sort -r | awk '{print $2" "$1}' # Read from the file words.txt and output the word frequency list to stdout.

# grep -o --only-matching print only the matched (non-empty) parts of a matching line, with each such part on a separate output line.
# grep E --extended-regexp  
# sort -r, --reverse reverse the result of comparisons