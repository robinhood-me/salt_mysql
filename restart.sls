{% from "mysql/map.jinja" import robin with context %}

restart_mysql_server:
  module.wait:
    - name: service.restart
    - m_name: {{ robin.m_name }}
    - onchanges:
      - mysql_server_config
