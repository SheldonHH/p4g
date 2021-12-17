FROM ubuntu:20.04
RUN apt-get update && apt-get install git-all && apt-get install default-jre && install default-jdk
git clone https://github.com/sheldonhh/p4p.git
git clone https://github.com/fedproject/grpc-go.git
git clone https://github.com/fedproject/grpc-java.git
