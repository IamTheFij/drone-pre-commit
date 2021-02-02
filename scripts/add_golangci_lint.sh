#! /bin/bash

VERSION=v1.35.2

curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s -- -b "/usr/bin" "${VERSION}"
