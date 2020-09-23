{% from "mysql/map.jinja" import robin with context %}

mysql_client_install:
  pkg.installed:
    - name: {{ robin.client }}
