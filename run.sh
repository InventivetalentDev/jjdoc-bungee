#!/bin/sh

git pull --recurse-submodules
git submodule update --init --recursive --remote
cd scripts/
chmod +x generate.sh
./generate.sh
## Generation
cd ..
git add .
git commit -m "Update"
git push