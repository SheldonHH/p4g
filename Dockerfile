FROM openjdk:17.0.1-slim-buster
# Update aptitude with new repo
RUN apt-get update

# Install software 
RUN apt-get install -y git

RUN apt-get install -y vim wget

RUN wget https://go.dev/dl/go1.17.5.linux-amd64.tar.gz
RUN rm -rf /usr/local/go && tar -C /usr/local -xzf go1.17.5.linux-amd64.tar.gz
RUN export PATH=$PATH:/usr/local/go/bin

RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/g' /etc/ssh/sshd_config
RUN service ssh restart

RUN git clone https://github.com/sheldonhh/p4p.git
RUN git clone https://github.com/fedproject/grpc-go.git
RUN git clone https://github.com/fedproject/grpc-java.git
