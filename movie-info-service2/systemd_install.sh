sudo cp linux_systemd.sh /usr/local/bin/movie-info-service2.sh
sudo cp movie-info-service2.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable movie-info-service2
sudo systemctl start  movie-info-service2
sudo systemctl stop   movie-info-service2