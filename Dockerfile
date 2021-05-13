FROM openjdk:latest

ADD target/springbootDockerapplication-0.0.1-SNAPSHOT.jar springbootDockerapplication 

ENTRYPOINT ["java","-jar","springbootDockerapplication"]

EXPOSE 8080