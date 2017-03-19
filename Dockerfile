FROM jwilder/nginx-proxy

MAINTAINER Rob Wittman <rwittman@dominiondiagnostics.com>

COPY nginx.tmpl /app/nginx.tmpl
