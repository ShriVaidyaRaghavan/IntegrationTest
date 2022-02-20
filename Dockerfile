FROM openjdk:11-jre
VOLUME /tmp
ARG JAVA_OPTS
ENV JAVA_OPTS=$JAVA_OPTS
COPY target/hello_world-0.0.1-SNAPSHOT.jar helloworld.jar
EXPOSE 3000
ENTRYPOINT exec java $JAVA_OPTS -jar helloworld.jar
# For Spring-Boot project, use the entrypoint below to reduce Tomcat startup time.
#ENTRYPOINT exec java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar helloworld.jar
