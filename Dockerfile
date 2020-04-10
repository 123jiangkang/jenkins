FROM java
MAINTAINER jiangkang
WORKDIR /ROOT
CMD ["java","-version"]
ENTRYPOINT ["java","-jar","${project.build.finalName}.jar"]