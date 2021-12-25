#!/bin/sh
COUNT=0
CHECK="success"
while [ "$CHECK" = "success" ]; do
    CHECK=$(./note2_3q.sh >> note2_3.out 2>> note2_3.err && echo success)
    COUNT=$((COUNT+1))
done
echo "Script fails after $COUNT times"