docker rm mysql
docker run -p 3306:3306 --name mysql -e MYSQL_ROOT_PASSWORD=PWORD -e MYSQL_DATABASE=Drupal -d mysql:latest