{% from "mysql/map.jinja" import robin with context %}

mysql_service_enable:
  service.running:
    - name: {{ robin.m_name }}
