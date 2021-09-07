{{/* boilerplate labels */}}
{{- define "flaskdb.labelBoilerplate" -}}
heritage: {{ .Release.Service | quote }}
release: {{ .Release.Name | quote }}
chart: {{ .Chart.Name }}-{{ .Chart.Version }}
app: {{ template "flaskdb.fullname" . }}
{{- end -}}

###############  VOLUMES 

{{/* volumeMounts for flaskdb container */}}
{{- define "common.volumeMounts" -}}
- name: properties-path
  mountPath: /usr/app/properties
{{- end -}}

###############  SECRETS 

{{/* env variables required for secrets */}}
{{- define "common.secrets" -}}
- name: authorization
  valueFrom:
    secretKeyRef:
      name: {{ .Release.Name }}.auth
      key: authorization


###############  AFFINITY

{{- define "ingress.cache" -}}
hashPolicy:
    - cookie:
        name: affinity
        path: /
        ttl: 60s
{{- end -}}
