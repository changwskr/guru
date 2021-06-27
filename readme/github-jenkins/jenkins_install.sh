docker rm -f `docker ps -a -q`
docker login
docker pull jenkins/jenkins
docker run -d -p 8080:8080 -v /home/jenkins:/var/jenkins_home -v /var/run/docker.sock:/var/run/docker.sock -u root jenkins/jenkins
docker ps -a | grep jenkins

# jenkins - install docker
guru@docker-guru:~/readme/github-jenkins$ docker exec -it 7b8fe81c7649 /bin/bash
  root@7b8fe81c7649:/# curl -fsSLO http://download.docker.com/linux/static/edge/x86_64/docker-17.04.0-ce.tgz
  root@7b8fe81c7649:/# tar xzvf docker-17.04.0-ce.tgz
  root@7b8fe81c7649:/# mv docker/docker /usr/local/bin
  docker login
  cd /home
  root@7b8fe81c7649:/home# git clone https://github.com/changwskr/guru
  exit
