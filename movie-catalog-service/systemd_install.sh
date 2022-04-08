sudo cp linux_systemd.sh /usr/local/bin/microservices-catalog-service.sh
sudo cp microservices-catalog-service.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable microservices-catalog-service
sudo systemctl start  microservices-catalog-service
sudo systemctl stop   microservices-catalog-service