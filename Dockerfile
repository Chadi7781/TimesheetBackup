FROM openjdk:8-jdk-alpine
EXPOSE 8086
<<<<<<< HEAD
ADD /target/Timesheet-spring-boot-core-data-jpa-mvc-REST-1-5.0.war Timesheet-spring-boot-core-data-jpa-mvc-REST-1-5.0
ENTRYPOINT ["java", "-jar", "Timesheet-spring-boot-core-data-jpa-mvc-REST-1-5.0","--spring.config.name=prod"]
=======

ADD target/*.jar /
ENTRYPOINT ["java", "-jar", "Timesheet-spring-boot-core-data-jpa-mvc-REST-1-5.0.war","--spring.config.name=prod"]

>>>>>>> 8456a69a80b69ba27a9e9fbfb3834c8619a4397b
