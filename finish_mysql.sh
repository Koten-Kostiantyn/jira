#!/bin/bash
yum -y install mysql-community-server
service mysqld start
service mysqld status

grep 'temporary password' /var/log/mysqld.log
mysql_secure_installation
