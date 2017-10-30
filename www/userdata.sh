#!/bin/bash

# Selecting working directory
cd /tmp

## initialising log file
### output redirect - https://stackoverflow.com/questions/876239/how-can-i-redirect-and-append-both-stdout-and-stderr-to-a-file-with-bash
echo $(date) > logs-install.logs 2>&1

# **REMOVE** any version of apache and php
yum remove -y httpd* php* >> logs-install.logs 2>&1

# updating OS
yum update -y >> logs-install.logs 2>&1


# **INSTALL** specific version of apache and php
## 2017-10-27 - added 'sysstat' and 'stress' as is required for cpu test and reports
yum install -y httpd24 php56 sysstat stress >> logs-install.logs 2>&1


# Download Lab website files
cd /var/www/html
wget https://raw.githubusercontent.com/feijaouk/demos123.net/master/autoscalling/index.php
wget https://raw.githubusercontent.com/feijaouk/demos123.net/master/autoscalling/stress-on.php
wget https://raw.githubusercontent.com/feijaouk/demos123.net/master/autoscalling/stress-off.php

echo -e "This machine was built on $(date) /n script version control 2017-10-20-1709" > version.txt

# Turn website on on start and start web server now
chkconfig httpd on >> logs-install.logs 2>&1
service httpd start >> logs-install.logs 2>&1
