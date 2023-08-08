From openjdk:8-jre-alpine

 COPY ./DockerJavaApp/src/com/test/Sample.java ./

EXPOSE 8080

CMD ["javac", "Sample.java"]

CMD ["java", "Sample"]
