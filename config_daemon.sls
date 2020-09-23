{% from "mysql/map.jinja" import robin with context %}

include:
  - mysql.restart

{% if grains['os_family'] == 'Debian' %}

mysqld_server_config:
  file.managed:
    - name: {{ robin.d_name }}
    - source: {{ robin.d_source }}
    - require:
      - pkg: {{ robin.server }}

{% endif %}
