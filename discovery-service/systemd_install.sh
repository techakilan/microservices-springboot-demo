sudo cp linux_systemd.sh /usr/local/bin/discovery-service.sh
sudo cp discovery-service.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable discovery-service
sudo systemctl start  discovery-service
sudo systemctl stop   discovery-service
