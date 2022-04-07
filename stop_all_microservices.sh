ports=()

# Add new element at the end of the array
ports+=("8761")
ports+=("8888")
ports+=("9090")
ports+=("9091")
ports+=("9092")
ports+=("9095")
ports+=("9096")

# Iterate the loop to read and print each array element
for port in "${ports[@]}"
do
     kill $(lsof -t -i:$port)     

done