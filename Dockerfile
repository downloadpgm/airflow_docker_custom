FROM apache/airflow:slim-latest

WORKDIR /opt/airflow
COPY airflow_entrypoint.sh .

USER root
RUN chmod 755 airflow_entrypoint.sh

USER airflow
ENTRYPOINT ["/usr/bin/dumb-init", "--", "./airflow_entrypoint.sh"]

