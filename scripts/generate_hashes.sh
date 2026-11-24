#!/bin/bash

echo "================================"
echo "   FILE INTEGRITY VERIFICATION"
echo "================================"

mkdir -p baseline

sha256sum sample_files/*.txt > baseline/baseline.sha256

echo ""
echo "Baseline generated successfully!"
echo "Saved at: baseline/baseline.sha256"
