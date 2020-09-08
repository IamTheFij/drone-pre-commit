#! /bin/bash
set -ex

# These simulate commands added to a pipeline step

wget -L -O /usr/bin/hadolint https://github.com/hadolint/hadolint/releases/download/v1.18.0/hadolint-Linux-x86_64
chmod +x /usr/bin/hadolint

pre-commit run --all-files
