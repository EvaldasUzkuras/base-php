#!/bin/bash

set -ex

versions=('7.3' '7.4' '8.0' '8.1')
for ver in "${versions[@]}"; do
  cp ${ver}/alpine3.15/fpm/Dockerfile ${ver}/alpine3.15/fpm/Dockerfile.wodby

  # Change basic image.
  sed -i '/FROM alpine/i\ARG BASE_IMAGE_TAG\n' ${ver}/alpine3.15/fpm/Dockerfile.wodby
  sed -i 's/FROM alpine.*/FROM wodby\/alpine:${BASE_IMAGE_TAG}/' ${ver}/alpine3.15/fpm/Dockerfile.wodby

  fullVersion=$(grep -oP '(?<=^ENV PHP_VERSION )([0-9\.]+)' ${ver}/alpine3.15/fpm/Dockerfile.wodby)
  minorVersion=$(echo "${fullVersion}" | grep -oE '^[0-9]+\.[0-9]+')

  # Update gh workflow
  sed -i -E "s/(version): '${minorVersion//\./\\.}\.[0-9]+'/\1: '${fullVersion}'/" .github/workflows/workflow.yml
  sed -i -E "s/(tags): ${minorVersion//\./\\.}\.[0-9]+/\1: ${fullVersion}/" .github/workflows/workflow.yml
  # Update README.
  sed -i -E "s/\`${minorVersion//\./\\.}\.[0-9]+\`/\`${fullVersion}\`/" README.md
done
