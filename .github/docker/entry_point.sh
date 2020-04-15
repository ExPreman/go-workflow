#!/bin/sh

set -e

APP_DIR="$GOPATH/src/github.com/${GITHUB_REPOSITORY}"

mkdir -p ${APP_DIR}
cp -r ./ ${APP_DIR} && cd ${APP_DIR}

echo "Installing Dep"
go get -u -v github.com/golang/dep/cmd/dep

echo "Get All Depedencies"
git config --global url."https://$3:$2@github.com".insteadOf "https://github.com"
dep ensure -v --vendor-only

echo "Trying to build the service"
go build ./cmd/booking/app-http/

echo "Trying to run unit and integration test"
GITHUB_ACTION=yes go test -race -cover ./...
