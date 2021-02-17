#! /bin/bash
set -ex

VERSION=v1.22.1
wget -q -L -O /usr/bin/hadolint "https://github.com/hadolint/hadolint/releases/download/${VERSION}/hadolint-Linux-x86_64"
chmod +x /usr/bin/hadolint
