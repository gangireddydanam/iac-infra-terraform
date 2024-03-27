#!/bin/bash
#pre-req java 
#!/bin/bash 
#install java 
sudo yum install java -y 
#we will install with zip/binary
cd /opt
wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.84/bin/apache-tomcat-9.0.84-windows-x64.zip
unzip apache-tomcat-9.0.84-windows-x64.zip
rm -f apache-tomcat-9.0.84-windows-x64.zip
mv apache-tomcat-9.0.84 tomcat9
cd tomcat9/
cd bin
chmod 755 *.sh
sh startup.sh
ps -ef | grep -i tomcat
sudo netstat -anlp | grep ":8080"