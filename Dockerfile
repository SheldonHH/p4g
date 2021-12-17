FROM ubuntu:20.04
RUN DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt-get -y install tzdata
RUN apt-get update 
RUN apt-get install git-all -y
RUN apt-get install default-jre 
RUN install default-jdk
RUN git clone https://github.com/sheldonhh/p4p.git
RUN git clone https://github.com/fedproject/grpc-go.git
RUN git clone https://github.com/fedproject/grpc-java.git
