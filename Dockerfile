FROM eclipse-temurin:17.0.17_10-jre-alpine-3.23
RUN mkdir /opt/app 
COPY target/*.jar /opt/app/petclinic.jar
CMD ["java", "-jar", "/opt/app/petclinic.jar"]