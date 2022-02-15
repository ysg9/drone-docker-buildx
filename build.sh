#!/bin/sh
set -x

# update deps
go mod tidy
#go get golang.org/x/crypto

mkdir -p release/amd64/
go build -v -a -tags netgo -o release/amd64/drone-docker-buildx ./cmd/drone-docker-buildx/
ls -l release/linux/amd64/drone-docker-buildx

# for deps scanning
go list -m all > go.list
ls -l go.list

