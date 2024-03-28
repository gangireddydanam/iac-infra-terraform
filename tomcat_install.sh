#!/bin/bash 
#install java 
sudo yum install java -y 
#we will install with zip/binary
cd /opt
wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.87/bin/apache-tomcat-9.0.87-windows-x64.zip
unzip apache-tomcat-9.0.87-windows-x64.zip
rm -f apache-tomcat-9.0.87-windows-x64.zip
mv apache-tomcat-9.0.87 tomcat9
chown -R ec2-user:ec2-user tomcat9
cd tomcat9/
cd bin
chmod 755 *.sh
su - ec2-user "sh startup.sh"
ps -ef | grep -i tomcat
sudo netstat -anlp | grep ":8080"