docker stop jenkins
docker rm jenkins
docker run -itd --name jenkins -p 31002:31002 118.190.2.114:5000/jenkins:1.0.0.RELEASE
