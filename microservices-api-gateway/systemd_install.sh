sudo cp linux_systemd.sh /usr/local/bin/microservices-api-gateway.sh
sudo cp microservices-api-gateway.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable microservices-api-gateway
sudo systemctl start  microservices-api-gateway
sudo systemctl stop   microservices-api-gateway