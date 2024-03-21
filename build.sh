#!/bin/bash

rm ./otelcol-dev/otelcol-dev
set -e
./ocb --config=builder-config.yaml
./otelcol-dev/otelcol-dev components
