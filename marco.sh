#!/bin/sh

marco() {
    CWD="$(pwd)"
    echo "CWD: $CWD and is saved under CWD variable"
}

polo(){
    cd "$CWD" || exit
}