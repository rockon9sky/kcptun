#!/bin/bash
export GOPATH=`pwd`
go get -u github.com/lu-ping/kcptun
cd $GOPATH
# get go and dependencies
go get -u ./...
# replace upstream name for local build - use only during pull upstream
# find ./src/github.com -path ".*\.git" -prune -o -iname "*" -a -type f -exec sed -i -e "s/xtaci\/kcptun/lu-ping\/kcptun/g" "{}" \;
./src/github.com/lu-ping/kcptun/build-release.sh
