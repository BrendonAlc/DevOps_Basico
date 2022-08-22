#!/bin/bash
start=`date +%s`
rm -rf apache-tomcat-8.5.82*
wget https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.82/bin/apache-tomcat-8.5.82.tar.gz
tar -xvf apache-tomcat-8.5.82.tar.gz
rm apache-tomcat-8.5.82.tar.gz

cd ~/apache-tomcat-8.5.82/webapps/
mkdir ~/apache-tomcat-8.5.82/webapps/MyApp

cp -r ~/aula0/* ~/apache-tomcat-8.5.82/webapps/MyApp/

~/apache-tomcat-8.5.82/bin/startup.sh

#caso nÃo rode por causa do java, utilizar o comando abaixo para ubunto
#sudo apt-get update
#sudo apt-get install default-jdk

#Adicionando log de horario e dia que foi o ultimo deploy
echo "$(date)" >> log.txt

#tempo que foi gasto pelo script de deploy
end=`date +%s` , echo "$((end-start)) segundos"
 
