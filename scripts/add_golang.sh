#! /bin/bash
set -ex

VERSION=1.18
SHASUM=e85278e98f57cdb150fe8409e6e5df5343ecb13cebf03a5d5ff12bd55a80264f

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
