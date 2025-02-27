/*
 * Copyright The OpenTelemetry Authors
 * SPDX-License-Identifier: Apache-2.0
 */
import Foundation

import OpenTelemetryApi

@available(*, deprecated, renamed: "StableMeterProviderBuilder")
public class MeterProviderBuilder {
  public private(set) var resource: Resource = .init()
  public private(set) var metricExporter: MetricExporter = NoopMetricExporter()
  public private(set) var metricPushInterval: TimeInterval = MeterProviderSdk.defaultPushInterval
  public private(set) var metricProcessor: MetricProcessor = NoopMetricProcessor()

  public init() {}

  public func with(processor: MetricProcessor) -> Self {
    metricProcessor = processor
    return self
  }

  public func with(exporter: MetricExporter) -> Self {
    metricExporter = exporter
    return self
  }

  public func with(pushInterval: TimeInterval) -> Self {
    metricPushInterval = pushInterval
    return self
  }

  public func with(resource: Resource) -> Self {
    self.resource = resource
    return self
  }

  public func build() -> MeterProvider {
    return MeterProviderSdk(metricProcessor: metricProcessor, metricExporter: metricExporter, metricPushInterval: metricPushInterval, resource: resource)
  }
}
