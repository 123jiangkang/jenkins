docker stop ${project.artifactId}
docker rm ${project.artifactId}
docker run -itd --name ${project.artifactId} -p 31002:31002 118.190.2.114:5000/${project.artifactId}:${project.version}
