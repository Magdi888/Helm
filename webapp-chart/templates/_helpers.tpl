{{- define "webapp-chart.labels" }}
{{- range $key, $value := .Values.labels}}
{{ $key }}: {{ $value }}
{{- end }}
{{- end }}

