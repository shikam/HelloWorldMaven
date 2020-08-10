#pull jenkins image
FROM jenkins/jenkins:lts

USER root

#instll wget
RUN apt-get install -y wget

#get maven 3.6.3
#RUN wget --no-verbose -o /tmp/appache-maven-3.6.3  https://apache.mivzakim.net/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.tar.gz

RUN wget --no-verbose -o /tmp/appache-maven-3.6.3 https://apache.mivzakim.net/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.zip

#install maven 
RUN unzip apache-maven-3.6.3-bin.zip
RUN mv apache-maven-3.6.3 /opt
RUN ln -s /opt/apache-maven-3.6.3 /opt/maven
RUN ln -s /opt/maven/bin/mvn /usr/local/bin
RUN rm -f /tmp/appache-maven-3.6.3
ENV MAVEN_HOME /opt/maven

RUN chown -R jenkins:jenkins /opt/maven

#remove download archive files
RUN apt-get clean

USER jenkins 
