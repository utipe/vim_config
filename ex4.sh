#!/bin/bash
grep -E ".*(a|A).*(a|A).*(a|A)[^'s]$" /usr/share/dict/words | sed -E 's/.*(\w\w)$/\1/' | sort | uniq -c | sort -nk1,1 -r | head -3
grep -E ".*(a|A).*(a|A).*(a|A)[^'s]$" /usr/share/dict/words | sed -E 's/.*(\w\w)$/\1/' | sort | uniq -c | sort -nk1,1 -r | wc -l

sed -i 's/foo/whats/' hello.txt