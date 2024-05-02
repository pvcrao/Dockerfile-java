FROM ubuntu:20.04
WORKDIR /root
ENV DEBIAN_FRONTEND noninteractive
RUN apt update && \
    apt install openjdk-17-jdk maven git -y 
RUN git clone https://github.com/spring-projects/spring-petclinic.git
WORKDIR /root/spring-petclinic    
RUN mvn package
EXPOSE 8080
CMD [ "java", "-jar", "/root/spring-petclinic/target/spring-petclinic-3.2.0-SNAPSHOT.jar" ]