# Build

Follow instructions from [Build a custom collector]


First install the OCB tool 

    ./download_ocb.sh

The `download_ocb.sh` will 
* download the OCB (OpenTelemetry Collector Builder) version corresponding to the `$VERSION` variable
* generate `builder-config.yaml` from `builder-config.yaml.tpl`. It will fill the `$VERSION` for each component


Then execute

    ./build.sh


This script just compiles and run the resulting executable to show components and version

    ./ocb --config=builder-config.yaml
    ./otelcol-dev/otelcol-dev components
    ./otelcol-dev/otelcol-dev --version


[Build a custom collector]: https://opentelemetry.io/docs/collector/custom-collector/
