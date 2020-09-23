{% if grains['os_family'] == "RedHat" %}

mysql_root_password_set:
  cmd.run:
    - name: mysqladmin --host localhost --user root password '007'
    - unless: mysql --host localhost --user root --password="007" --execute="SELECT 1;"

{% endif %}

mysql_root_user:
  mysql_user.present:
    - name: root
    - password: 007
    - host: localhost