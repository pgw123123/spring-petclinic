FROM openjdk:17-oracle
#CMD ["./mvn", "clean", "package"]
ARG JAR_FILE_PATH=**/target/*.jar
COPY ${JAR_FILE_PATH} spring-petclinic.jar
ENTRYPOINT ["java", "-jar", "spring-petclinic.jar"]
