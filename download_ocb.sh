#!/bin/bash

arch=$(arch)

case $arch in
  'x86_64'|'i386')
    arch=amd64
  ;;
  'arm64')
    arch=arm64
  ;;
  *)
    echo 'Unknown architecture';
    exit 1
    ;;
esac

case $(uname -o) in 
  'GNU/Linux')
    platform=linux
    ;;
  'Darwin')
    platform=darwin
    ;;
  *)
    echo 'Unknown platform';
    exit 1
    ;;
esac

curl --proto '=https' --tlsv1.2 -fL -o ocb \
https://github.com/open-telemetry/opentelemetry-collector/releases/download/cmd%2Fbuilder%2Fv0.96.0/ocb_0.96.0_${platform}_${arch}
chmod +x ocb

./ocb help


