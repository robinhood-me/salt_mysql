{% if grains['os_family'] == "RedHat" %}

mysql_root_password_set:
  mysql_user.present:
    - name: root
    - password: r007007R
    - host: localhost

{% endif %}
