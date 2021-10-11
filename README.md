# test_mts
MTS homework project. 
Homework from MTS for the position of DevOps Intern.
In solving this task, two docker-compose files were created, which launched the application itself and Prometheus+Grafana. 
Metrics were passed using starlette_exporter.
I connected grafana and created dashboards.

docker-compose -f docker-compose.yml docker-compose-infra.yml run
