#!/bin/bash

echo "================================"
echo "     FILE INTEGRITY CHECK"
echo "================================"

if [ ! -f baseline/baseline.sha256 ]; then
    echo "Error: Baseline file not found!"
    exit 1
fi

sha256sum -c baseline/baseline.sha256

status=$?

if [ "$status" -eq 0 ]; then
    echo ""
    echo "All files match the baseline."
else
    echo ""
    echo "WARNING: One or more files are modified or missing."
fi

exit "$status"
