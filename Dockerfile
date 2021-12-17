FROM openjdk:17.0.1-slim-buster
# Update aptitude with new repo
RUN apt-get update

# Install software 
RUN apt-get install -y git

RUN apt-get install -y vim wget
RUN git clone https://github.com/sheldonhh/p4p.git
RUN git clone https://github.com/fedproject/grpc-go.git
RUN git clone https://github.com/fedproject/grpc-java.git
