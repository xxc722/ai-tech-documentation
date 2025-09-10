#!/bin/bash

# Script to help find the target commit SHA
# Usage: ./scripts/find_commit.sh

echo "Searching for commits modifying model_optimization.md..."
echo "----------------------------------------"

# Search commits that modified the target file with relevant keywords
git log --pretty=format:"%H - %an, %ad : %s" --grep="LLM" --grep="optimization" docs/model_optimization.md

echo "----------------------------------------"
echo "To verify a commit: git show [SHA]"
echo "To check line history: git blame docs/model_optimization.md | grep 'LLM Optimization'"
