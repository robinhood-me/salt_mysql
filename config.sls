{% from "mysql/map.jinja" import robin with context %}

include:
  - mysql.restart

mysql_server_config:
  file.managed:
    - name: {{ robin.name }}
    - source: {{ robin.source }}
    - require:
      - pkg: {{ robin.server }}
  
