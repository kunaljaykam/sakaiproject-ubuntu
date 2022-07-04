# if there is a tomcat folder then delete it
if [ -d /home/kunaljaykam/sakaiproject/apache-tomcat-9.0.64 ]; then
    rm -rf /home/kunaljaykam/sakaiproject/apache-tomcat-9.0.64
fi

# if there's ignite folder in sakai-home directory then delete it
if [ -d /home/kunaljaykam/sakaiproject/sakai-home/ignite ]; then
    rm -rf /home/kunaljaykam/sakaiproject/sakai-home/ignite
fi

if [ -d /home/kunaljaykam/sakaiproject/sakai-home/samigo ]; then
    rm -rf /home/kunaljaykam/sakaiproject/sakai-home/samigo
fi

# download tomcat modified version in /home/kunaljaykam/sakaiproject directory and uzip it
cd ~/home/kunaljaykam/sakaiproject 
wget https://github.com/kunaljaykam/tomcat/raw/main/apache-tomcat-9.0.64.zip
unzip apache-tomcat-9.0.64.zip
rm apache-tomcat-9.0.64.zip

# make tomcat bin folder executable
chmod -R +x /home/kunaljaykam/sakaiproject/apache-tomcat-9.0.64/bin

# Build Sakai
cd /home/kunaljaykam/sakaiproject/sakai

mvn clean install -Dmaven.test.skip=true -T 4C -Dmaven.tomcat.home=/home/kunaljaykam/sakaiproject/apache-tomcat-9.0.64 -Dsakai.home=/home/kunaljaykam/sakaiproject/sakai-home sakai:deploy && sh ../start.sh