#! /bin/bash
set -ex

VERSION=1.15.7
SHASUM=0d142143794721bb63ce6c8a6180c4062bcf8ef4715e7d6d6609f3a8282629b3

FILENAME=go${VERSION}.linux-amd64.tar.gz
GOURL=https://golang.org/dl/${FILENAME}

wget --quiet "$GOURL"

# Check sum
echo "$SHASUM  ./$FILENAME" > "${FILENAME}.sum"
shasum -c "./${FILENAME}.sum"

# Install
tar -C /usr/local -xzf "./$FILENAME"

# Clean up
rm "$FILENAME" "${FILENAME}.sum"
