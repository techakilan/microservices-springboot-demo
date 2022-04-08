# microservices-springboot-demo
microservices-springboot-demo

endpoints
frontend - http://localhost:9096
discovery service - http://localhost:8761
api-gateway - http://localhost:9095
config-server - http://localhost:8888/application/default
catalog-service - http://localhost:9090
info-service - http://localhost:9091
ratings-data-service - http://localhost:9092


curl localhost:8888/actuator/refresh -d {} -H "Content-Type: application/json"
https://www.devstringx.com/run-jar-file-in-background-on-aws-ec2