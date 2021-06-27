set -x
vid=`docker ps -a | grep jenkins | awk '{print $1}'`
docker exec -it $vid /bin/bash
#curl -fsSLO http://download.docker.com/linux/static/edge/x86_64/docker-17.04.0-ce.tgz
#tar xzvf docker-17.04.0-ce.tgz



