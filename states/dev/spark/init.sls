dev-spark-install-pip:
  pkg.installed:
    - pkgs:
      - scala

dev-spark-download-spark:
  file.managed:
    - name: /tmp/spark.tgz
    - source: {{ pillar.get('spark_url') }}
    - skip_verify: True

dev-spark-extract-spark:
  archive.extracted:
    - name: /opt/
    - source: /tmp/spark.tgz
    - require:
      - file: dev-spark-download-spark

dev-spark-remove-tmp-files:
  file.absent:
    - name: /tmp/spark.tgz
    - require:
      - archive: /opt/
