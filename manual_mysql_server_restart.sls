manual_restart_mysql_server:
  module.wait:
    - name: service.restart
    - m_name: mariadb 
