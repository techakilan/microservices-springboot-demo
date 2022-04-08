sudo cp linux_systemd.sh /usr/local/bin/microservices-frontend.sh
sudo cp microservices-frontend.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable microservices-frontend
sudo systemctl start  microservices-frontend
sudo systemctl stop   microservices-frontend