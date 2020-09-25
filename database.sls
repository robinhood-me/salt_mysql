{% from "mysql/map.jinja" import robin with context %}
 

mysql_db_create:
  mysql_database.present:
    - name: eski
    - host: localhost
    - connection_user: {{ pillar['mysql']['root']['name'] }}
    - connection_pass: {{ pillar['mysql']['root']['password'] }}
    - connection_charset: utf-8
