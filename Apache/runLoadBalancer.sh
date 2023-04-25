sudo docker rm Apache
sudo docker build -t apache .
sudo docker run --name Apache -p 80:80 -p 443:443 apache
