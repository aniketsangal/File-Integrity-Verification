#!/bin/bash

while true
do
    echo "================================"
    echo "      FILE INTEGRITY TOOL"
    echo "================================"
    echo "1. Generate Baseline"
    echo "2. Verify File Integrity"
    echo "3. Exit"
    echo ""

    read -p "Enter your choice: " choice

    case $choice in
        1)
            ./scripts/generate_hashes.sh
            ;;
        2)
            ./scripts/verify_integrity.sh
            ;;
        3)
            echo "Exiting program..."
            exit 0
            ;;
        *)
            echo "Invalid choice! Try again."
            ;;
    esac

    echo ""
done
