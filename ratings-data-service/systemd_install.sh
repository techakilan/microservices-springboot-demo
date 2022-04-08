sudo cp linux_systemd.sh /usr/local/bin/ratings-data-service.sh
sudo cp ratings-data-service.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable ratings-data-service
sudo systemctl start  ratings-data-service
sudo systemctl stop   ratings-data-service