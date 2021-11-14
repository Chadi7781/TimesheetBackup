FROM openjdk:8-jdk-alpine
EXPOSE 8086
ADD /target/Timesheet-spring-boot-core-data-jpa-mvc-REST-1-5.0.war Timesheet-spring-boot-core-data-jpa-mvc-REST-1-5.0
ENTRYPOINT ["java", "-jar", "Timesheet-spring-boot-core-data-jpa-mvc-REST-1-5.0","--spring.config.name=prod"]
