#!/bin/dumb-init /bin/sh
set -e

chown -R builder /build
su-exec builder abuild checksum
su-exec builder abuild -r
