wget https://github.com/keycloak/keycloak/releases/download/17.0.1/keycloak-17.0.1.tar.gz
tar xvf keycloak-17.0.1.tar.gz
mv keycloak-17.0.1 keycloak
cd keycloak
/usr/bin/keytool -genkeypair -storepass password -storetype PKCS12 -keyalg RSA -keysize 2048 -dname "CN=server" -alias server -ext "SAN:c=DNS:localhost,IP:127.0.0.1" -keystore conf/server.keystore
cd bin
./kc.sh start-dev --http-port 8180