#! /bin/bash
set -ex

VERSION=1.16
SHASUM=013a489ebb3e24ef3d915abe5b94c3286c070dfe0818d5bca8108f1d6e8440d2

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
