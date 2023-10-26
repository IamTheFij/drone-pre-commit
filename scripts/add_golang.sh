#! /bin/bash
set -ex

VERSION=1.21.3
ARCH=amd64
SHASUM=1241381b2843fae5a9707eec1f8fb2ef94d827990582c7c7c32f5bdfbfd420c8

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
