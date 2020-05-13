FROM centos

RUN yum install wget -y

RUN wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo

RUN rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key

RUN yum upgrade -y

RUN yum install jenkins java-1.8.0-openjdk-devel -y

RUN yum install java-11-openjdk.x86_64 -y

RUN yum install httpd -y

RUN yum install python36

RUN yum install git -y

RUN yum install -y yum-utils

RUN yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo

RUN yum install docker-ce docker-ce-cli containerd.io -y --nobest


CMD /etc/alternatives/java -Dcom.sun.akuma.Daemon=daemonized -Djava.awt.headless=true -DJENKINS_HOME=/var/lib/jenkins -jar /usr/lib/jenkins/jenkins.war --logfile=/var/log/jenkins/jenkins.log --webroot=/var/cache/jenkins/war --daemon --httpPort=8080 --debug=5 --handlerCountMax=100 --handlerCountMaxIdle=20




