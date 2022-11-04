#! /bin/bash
set -ex

VERSION=1.19.3
SHASUM=74b9640724fd4e6bb0ed2a1bc44ae813a03f1e72a4c76253e2d5c015494430ba

FILENAME=go${VERSION}.linux-amd64.tar.gz
GOURL=https://go.dev/dl/${FILENAME}

wget --quiet "$GOURL"

# Check sum
echo "$SHASUM  ./$FILENAME" > "${FILENAME}.sum"
shasum -c "./${FILENAME}.sum"

# Install
tar -C /usr/local -xzf "./$FILENAME"

# Clean up
rm "$FILENAME" "${FILENAME}.sum"
