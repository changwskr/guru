docker stop sp_php01 || true
docker ps -a | grep sp_php01 | awk '{print "docker rm "$1}' | sh
docker image ls | grep sp_php01 | grep -v changwskr | awk '{print "docker rmi -f "$1}' | sh

docker build -t sp_php01 .
docker tag sp_php01 changwskr/sp_php01:1.0

docker create --name sp_php01 changwskr/sp_php01:1.0
docker start sp_php01

#docker run -p 9090:9090 -v /home/guru/html:/var/www/html sp_php01
