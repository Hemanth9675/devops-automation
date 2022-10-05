FROM openjdk:8
RUN sudo usermod -a -G docker jenkins
RUN mvn install 
EXPOSE 8080
ADD target/devops-integration.jar devops-integration.jar
ENTRYPOINT ["java","-jar","/devops-integration.jar"]
