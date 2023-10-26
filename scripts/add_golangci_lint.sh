#! /bin/bash
set -ex

VERSION=v1.55.1

curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s -- -b "/usr/bin" "${VERSION}"
