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
     cd $app
     PROJECT_HOME=/home/akilan/devops_training/microservices-springboot-demo
     ./linux_systemd.sh start $PROJECT_HOME
     cd ..

done


exit 0