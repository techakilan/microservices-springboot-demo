sudo cp linux_systemd.sh /usr/local/bin/microservices-config-server.sh
sudo cp microservices-config-server.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable microservices-config-server
sudo systemctl start  microservices-config-server
sudo systemctl stop   microservices-config-server