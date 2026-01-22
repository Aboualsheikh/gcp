#!/bin/bash

# Simple test script to validate GCP repository structure
echo "Running GCP repository tests..."

# Test 1: Check if README.md exists
if [ -f "README.md" ]; then
    echo "✓ README.md exists"
else
    echo "✗ README.md not found"
    exit 1
fi

# Test 2: Check if gcp.txt exists
if [ -f "gcp.txt" ]; then
    echo "✓ gcp.txt exists"
else
    echo "✗ gcp.txt not found"
    exit 1
fi

# Test 3: Check if gcp.txt is not empty
if [ -s "gcp.txt" ]; then
    echo "✓ gcp.txt is not empty"
else
    echo "✗ gcp.txt is empty"
    exit 1
fi

# Test 4: Check if gcp.txt contains GCP commands
if grep -q "\bgcloud\b" gcp.txt; then
    echo "✓ gcp.txt contains gcloud commands"
else
    echo "✗ gcp.txt does not contain gcloud commands"
    exit 1
fi

echo ""
echo "All tests passed! ✓"
