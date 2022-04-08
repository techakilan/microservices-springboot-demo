sudo cp linux_systemd.sh /usr/local/bin/movie-catalog-service.sh
sudo cp movie-catalog-service.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable movie-catalog-service
sudo systemctl start  movie-catalog-service
sudo systemctl stop   movie-catalog-service