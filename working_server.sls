{% from "mysql/map.jinja" import robin with context %}

{% if grains['os_family'] == 'Debian' %}

mysql_debconf_install:
  pkg.installed:
    - name: debconf

mysql_debconf_settings:
  debconf.set:
    - name: mysql-server
    - data:
        'mysql-server/root_password': {'type': 'password', 'value': 'r007007R'}
        'mysql-server/root_password_again': {'type': 'password', 'value': 'r007007R'}
    - require:
      - pkg: debconf
    - require_in:
      - mysql_server_install

{% endif %}

mysql_server_install:
  pkg.installed:
    - name: {{ robin.server }}
