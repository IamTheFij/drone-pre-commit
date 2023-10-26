#! /bin/bash
set -ex

VERSION=v2.23.0
ARCH=x86_64
FILENAME="docker-compose-linux-${ARCH}"

URL="https://github.com/docker/compose/releases/download/${VERSION}/${FILENAME}"
SHAURL="https://github.com/docker/compose/releases/download/${VERSION}/${FILENAME}.sha256"

wget --quiet "$URL"
wget --quiet "$SHAURL"

# Check sum
shasum -c "./${FILENAME}.sha256"

# Install
chmod +x "./${FILENAME}"
mv "./${FILENAME}" /usr/local/bin/docker-compose

# Clean up
rm "${FILENAME}.sha256"
