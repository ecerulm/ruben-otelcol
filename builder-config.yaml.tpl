
dist:
  name: otelcol-dev
  description: Basic OTel Collector distribution for Developers
  output_path: ./otelcol-dev
  otelcol_version: ${VERSION}
  version: ${VERSION}

receivers:
  - gomod: go.opentelemetry.io/collector/receiver/otlpreceiver v${VERSION}
  - gomod: github.com/open-telemetry/opentelemetry-collector-contrib/receiver/hostmetricsreceiver v${VERSION}
  - gomod: github.com/open-telemetry/opentelemetry-collector-contrib/receiver/jaegerreceiver v${VERSION}
  - gomod: github.com/open-telemetry/opentelemetry-collector-contrib/receiver/prometheusreceiver v${VERSION}
  - gomod: github.com/open-telemetry/opentelemetry-collector-contrib/receiver/kafkareceiver v${VERSION}
  - gomod: github.com/open-telemetry/opentelemetry-collector-contrib/receiver/opencensusreceiver v${VERSION}
  - gomod: github.com/open-telemetry/opentelemetry-collector-contrib/receiver/zipkinreceiver v${VERSION}


exporters:
  - gomod: go.opentelemetry.io/collector/exporter/loggingexporter v${VERSION}
  - gomod: go.opentelemetry.io/collector/exporter/otlphttpexporter v${VERSION}
  - gomod: github.com/open-telemetry/opentelemetry-collector-contrib/exporter/opencensusexporter v${VERSION}
  - gomod: github.com/open-telemetry/opentelemetry-collector-contrib/exporter/prometheusremotewriteexporter v${VERSION}
  - gomod: go.opentelemetry.io/collector/exporter/debugexporter v${VERSION}
  - gomod: github.com/open-telemetry/opentelemetry-collector-contrib/exporter/fileexporter v${VERSION}
  - gomod: github.com/open-telemetry/opentelemetry-collector-contrib/exporter/kafkaexporter v${VERSION}
  - gomod: github.com/open-telemetry/opentelemetry-collector-contrib/exporter/prometheusexporter v${VERSION}
  - gomod: github.com/open-telemetry/opentelemetry-collector-contrib/exporter/zipkinexporter v${VERSION}
  - gomod: go.opentelemetry.io/collector/exporter/otlpexporter v${VERSION}
  - gomod: github.com/open-telemetry/opentelemetry-collector-contrib/exporter/awsxrayexporter v${VERSION}

connectors:
  - gomod: go.opentelemetry.io/collector/connector/forwardconnector v${VERSION}

extensions:
  - gomod: go.opentelemetry.io/collector/extension/zpagesextension v${VERSION}
  - gomod: go.opentelemetry.io/collector/extension/ballastextension v${VERSION}
  - gomod: github.com/open-telemetry/opentelemetry-collector-contrib/extension/pprofextension v${VERSION}
  - gomod: go.opentelemetry.io/collector/extension/memorylimiterextension v${VERSION}

processors:
  - gomod: go.opentelemetry.io/collector/processor/batchprocessor v${VERSION}
  - gomod: go.opentelemetry.io/collector/processor/memorylimiterprocessor v${VERSION}
  - gomod: github.com/open-telemetry/opentelemetry-collector-contrib/processor/attributesprocessor v${VERSION}
  - gomod: github.com/open-telemetry/opentelemetry-collector-contrib/processor/resourceprocessor v${VERSION}
  - gomod: github.com/open-telemetry/opentelemetry-collector-contrib/processor/spanprocessor v${VERSION}
