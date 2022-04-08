sudo cp linux_systemd.sh /usr/local/bin/movie-info-service.sh
sudo cp movie-info-service.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable movie-info-service
sudo systemctl start  movie-info-service
sudo systemctl stop   movie-info-service