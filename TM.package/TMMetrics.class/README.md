tmAnalyser := TMMetrics new.
model := MooseModel root allModels at: 1.
metrics := tmAnalyser computeMetricsFor: model.
