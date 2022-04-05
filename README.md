# p4g
https://github.com/fedproject/grpc-java   
https://github.com/fedproject/grpc-go
`docker build -t sheldonhh/p4p:v1  .`
docker run -it -p 5920:22 p4p:v1



docker run --name p4p -itd sheldonhh/p4p:v3 /bin/bash 
docker exec -w /root -it $(docker ps | grep -E 'p4p' | awk '{print $1}' | awk 'NR==1') /bin/bash
