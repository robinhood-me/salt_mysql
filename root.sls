{% if grains['os_family'] == "RedHat" %}

mysql_root_password_set:
  cmd.run:
    - name: mysqladmin --host localhost --user root password 'r007'
    - unless: mysql --host localhost --user root --password="r007" --execute="SELECT 1;"

{% endif %}

mysql_root_user:
  mysql_user.present:
    - name: {{ pillar['mysql']['root']['name'] }} 
    - password: {{ pillar['mysql']['root']['password'] }}
    - host: localhost

