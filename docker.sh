apt update
apt install apt-transport-https
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
apt update
apt install docker-ce docker-compose
usermod -aG docker user
mv ./micro.service /etc/systemd/system/
systemctl daemon-reload
systemctl enable micro.service
systemctl start micro.service
