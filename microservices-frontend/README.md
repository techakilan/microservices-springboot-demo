./mvnw clean package

aws s3api put-object --bucket microservices-springboot-demo --key microservices-frontend.jar  --body target/microservices-frontend.jar

aws s3api get-object --bucket microservices-springboot-demo --key microservices-frontend.jar  microservices-frontend.jar

http://ip-address:9096/