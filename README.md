# HelloWorldMaven

Prerequisites:
1) Need to install docker.

All steps:
 
1) mkdir /home/x0102139/Documents/shai/JenkinsMaven
2) mkdir /home/x0102139/Documents/shai/devOpsLeftTraining
3) cd /home/x0102139/Documents/shai/devOpsLeftTraining 
4) git clone https://github.com/shikam/HelloWorldMaven.git
5) cd HelloWorldMaven 
6) docker build .
7) Run docker run -u root -d -p 11000:8080 -v /home/x0102139/Documents/shai/JenkinsMaven:/var/jenkins_home -v /var/run/docker.sock:/var/run/docker.sock 940b2547aa19

** Need to change 940b2547aa19 to another number that you got after ran 
docker build .

8)Install Maven Plugin - "Maven Integration plugin" 
9) Need to define the part related to maven in "Global Tool Configuration".
10) Need to define the job.
11) Run the job.


