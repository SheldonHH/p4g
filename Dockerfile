FROM ubuntu:20.04
RUN apt-get update 
RUN apt-get install git-all 
RUN apt-get install default-jre 
RUN install default-jdk
RUN git clone https://github.com/sheldonhh/p4p.git
RUN git clone https://github.com/fedproject/grpc-go.git
RUN git clone https://github.com/fedproject/grpc-java.git
