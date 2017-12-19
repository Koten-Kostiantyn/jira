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
echo "Starting JIRA"
systemctl start jira 
sleep 5
systemctl status jira
echo "Open 8080 port in firewalld"
firewall-cmd --zone=public --add-port=8080/tcp --permanent
firewall-cmd --reload
echo "Done"
