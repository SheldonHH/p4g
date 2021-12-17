FROM ubuntu:20.04
# Update aptitude with new repo
RUN apt-get update

# Install software 
RUN apt-get install -y git
RUN apt-get install -y default-jre 
RUN apt-get install -y default-jdk

RUN apt-get install -y vim wget openssl openssl-devel iproute net-tools iotop
RUN git clone https://github.com/sheldonhh/p4p.git
RUN git clone https://github.com/fedproject/grpc-go.git
RUN git clone https://github.com/fedproject/grpc-java.git
