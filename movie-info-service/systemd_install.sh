sudo cp linux_systemd.sh /usr/local/bin/microservices-info-service.sh
sudo cp microservices-info-service.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable microservices-info-service
sudo systemctl start  microservices-info-service
sudo systemctl stop   microservices-info-service