#!/bin/bash
# Declare a string array
applications=()

# Add new element at the end of the array
applications+=("discovery-service")
applications+=("microservices-api-gateway")
applications+=("microservices-config-server")
applications+=("microservices-frontend")
applications+=("movie-catalog-service")
applications+=("movie-info-service")
applications+=("ratings-data-service")

# Iterate the loop to read and print each array element
for app in "${applications[@]}"
do
     echo "downloading $app.jar from s3"
     aws s3api put-object --bucket microservices-springboot-demo \
     --key "$app.jar"  \
     --body "$app/target/$app.jar"

done