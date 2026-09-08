#!/usr/bin/env bash
# Creates the four cumulative checkpoint branches from the solution files.
set -euo pipefail

git checkout main

git checkout -b checkpoint/lab-1-complete
git push -u origin checkpoint/lab-1-complete

git checkout -b checkpoint/lab-2-complete
mkdir -p .github/workflows
cp .instructor/solutions/workflows/ci.yml .github/workflows/ci.yml
git add .github/workflows/ci.yml
git commit -m "checkpoint: lab 2 complete (CI pipeline)"
git push -u origin checkpoint/lab-2-complete

git checkout -b checkpoint/lab-3-complete
mkdir -p infra
cp .instructor/solutions/infra/*.tf infra/
cp .instructor/solutions/workflows/infra.yml .github/workflows/infra.yml
git add infra .github/workflows/infra.yml
git commit -m "checkpoint: lab 3 complete (Terraform + infra pipeline)"
git push -u origin checkpoint/lab-3-complete

git checkout -b checkpoint/lab-4-complete
cp .instructor/solutions/workflows/deploy.yml .github/workflows/deploy.yml
git add .github/workflows/deploy.yml
git commit -m "checkpoint: lab 4 complete (CD pipeline)"
git push -u origin checkpoint/lab-4-complete

git checkout main
echo "All checkpoint branches created and pushed."
