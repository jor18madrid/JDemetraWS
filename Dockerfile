FROM openjdk:8-jdk-alpine
VOLUME /tmp
ADD /target/webapp-standalone-2.2.3-RC1.jar app.jar
EXPOSE 9998
RUN sh -c 'touch /app.jar'
CMD ["java", "-jar", "/app.jar"]