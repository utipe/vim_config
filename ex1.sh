#!/bin/sh
curl --head --silent https://missing.csail.mit.edu
echo "$0"
echo "$@"
echo $#
echo $?
echo $$
echo 1 2