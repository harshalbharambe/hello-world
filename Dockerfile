# Start with a base image containing Java runtime
FROM openjdk:8-jre-alpine

ENV JAVA_OPTS=""

# Add Maintainer Info
MAINTAINER CRST


# Add a volume pointing to /tmp
VOLUME /tmp

# Make port 8081 available to the world outside this container
EXPOSE 8080

# The application's jar file
ARG JAR_FILE=target/hello-world-0.0.1-SNAPSHOT.jar

# Add the application's jar to the container
ADD ${JAR_FILE} hello-world-0.0.1-SNAPSHOT.jar

# Run the jar file
ENTRYPOINT ["sh", "-c","java $JAVA_OPTS -Dserver.port=8080 -jar hello-world-0.0.1-SNAPSHOT.jar"]
