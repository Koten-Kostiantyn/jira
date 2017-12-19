#!/bin/bash
echo "Starting ansible installation"
yum -y install ansible
echo "Finish ansible installation"
echo "Starting mySQL installation"
./mysql_and_others.sh
./finish_mysql.sh
echo "Finish mySQL installation"
echo "Starting JIRA installation"
ansible-playbook jira.yml
echo "Finish JIRA installation"
