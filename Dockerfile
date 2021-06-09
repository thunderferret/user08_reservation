FROM lpicanco/java11-alpine
VOLUME /tmp
COPY /build/libs/*.jar app.jar/
ENTRYPOINT ["java","-jar","/app.jar","--spring.profiles.active=docker"]