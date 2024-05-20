FROM prom/prometheus:v2.30.3

COPY prometheus.yml /etc/prometheus/prometheus.yml
COPY alert.rules.yml /etc/prometheus/rules.yml

EXPOSE 9090

CMD ["--config.file=/etc/prometheus/prometheus.yml"]
