#!/bin/bash

\rm -f ./otelcol-dev/otelcol-dev
set -e
./ocb --config=builder-config.yaml
./otelcol-dev/otelcol-dev components
ls -lh otelcol-dev/otelcol-dev
