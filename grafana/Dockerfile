FROM grafana/grafana:8.1.5

COPY provisioning/ /etc/grafana/provisioning/

EXPOSE 3000

CMD ["grafana-server", "--homepath=/usr/share/grafana", "--config=/etc/grafana/grafana.ini", "cfg:default.paths.provisioning=/etc/grafana/provisioning"]