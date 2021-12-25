#!/bin/bash
echo "Start running program on $(date)"
echo "Running program $0 with $# arguments and $$ process id"
for file in "$@"; do
    echo "Processing file $file"
    grep check "$file" > "$file.out" 2> "$file.err"
    if [[ $? -eq 0 ]]; then
        echo "Successfully processed file $file"
    else
        echo "Failed to process file $file"
        echo "foobar 1" >> "$file"
    fi
done