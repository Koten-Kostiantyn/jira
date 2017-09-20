#!/bin/bash
yum -y install yum-utils
yum -y install ansible
yum -y install wget
yum -y install nano

yum -y install https://dev.mysql.com/get/mysql57-community-release-el7-11.noarch.rpm
yum-config-manager --disable mysql57-community
yum-config-manager --enable mysql56-community
yum repolist all | grep mysql
yum repolist enabled | grep "mysql.*-community.*"
yum repolist enabled | grep mysql
