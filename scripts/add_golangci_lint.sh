#! /bin/bash
set -ex

VERSION=v1.52.2

curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s -- -b "/usr/bin" "${VERSION}"
