# T-NSA-800

le but de ce projet est de monitorer une application web et ses différents services à l’aide de Prometheus et Grafana. <br />
Prometheus est un système de surveillance et d'alerte open-source. <br />
Grafana est une plateforme d'analyse et de visualisation de données. <br />
L'intégration de ces deux outils permet une surveillance efficace des systèmes et une visualisation claire des données collectées. <br />


# Environnement de travail

## Trois VM Azure

### Une VM Database
- **MySQL**

### Une VM App
- **PHP Laravel**
- **Traefik**

### Une VM Docker
- **Container 1:** Grafana
- **Container 2:** Prometheus
- **Container 3:** Alert Manager
- **Container 4:** Kuma
