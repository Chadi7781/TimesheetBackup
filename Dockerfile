FROM openjdk:8-jdk-alpine
EXPOSE 8086
<<<<<<< HEAD
ADD /target/Timesheet-spring-boot-core-data-jpa-mvc-REST-1-5.0.war Timesheet-spring-boot-core-data-jpa-mvc-REST-1-5.0
ENTRYPOINT ["java", "-jar", "Timesheet-spring-boot-core-data-jpa-mvc-REST-1-5.0","--spring.config.name=prod"]
=======
ADD target/*.jar /
ENTRYPOINT ["java", "-jar", "Timesheet-spring-boot-core-data-jpa-mvc-REST-1-5.0.war"]
>>>>>>> 887bb9f2319a44580138f1d3e6774b02ade7ebb7
