{% from "mysql/map.jinja" import robin with context %}

mysql_python_install:
  pkg.installed:
    - name: {{ robin.python }}
    - require:
      - pkg: {{ robin.server  }}
