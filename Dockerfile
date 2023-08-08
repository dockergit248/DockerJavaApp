From openjdk:8-jre-alpine

 COPY ./src/com/test/Sample.java ./

EXPOSE 8080

CMD ["javac", "com.test.Sample.java"]

CMD ["java", "com.test.Sample"]
