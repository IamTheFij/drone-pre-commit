#! /bin/bash
set -ex

VERSION=1.21.3
ARCH=amd64
SHASUM=979694c2c25c735755bf26f4f45e19e64e4811d661dd07b8c010f7a8e18adfca

FILENAME="go${VERSION}.linux-${ARCH}.tar.gz"
GOURL="https://go.dev/dl/${FILENAME}"

wget --quiet "$GOURL"

# Check sum
echo "$SHASUM  ./$FILENAME" > "${FILENAME}.sum"
shasum -c "./${FILENAME}.sum"

# Install
tar -C /usr/local -xzf "./$FILENAME"

# Clean up
rm "$FILENAME" "${FILENAME}.sum"
