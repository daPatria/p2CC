sudo apt-get update
sudo apt-get install default-jdk
sudo groupadd tomcat
sudo useradd -s /bin/false -g tomcat -d /opt/tomcat tomcat
cd /tmp 
curl -O http://apache.mirrors.ionfish.org/tomcat/tomcat-8/v8.5.5/bin/apache-tomcat-8.5.5.tar.gz
sudo mkdir /opt/tomcat
sudo tar xzvf apache-tomcat-8.5.30.tar.gz -C /opt/tomcat --strip-components=1
cd /opt/tomcat
sudo chown -R tomcat webapps/ work/ temp/ logs/
sudo update-java-alternatives -l
