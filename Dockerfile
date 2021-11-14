FROM openjdk:8-jdk-alpine
EXPOSE 8087
ADD /target/Timesheet-spring-boot-core-data-jpa-mvc-REST-1-4.0.war Timesheet-spring-boot-core-data-jpa-mvc-REST-1-7.0
ENTRYPOINT ["java", "-jar", "Timesheet-spring-boot-core-data-jpa-mvc-REST-1-7.0","--spring.config.name=prod"]
