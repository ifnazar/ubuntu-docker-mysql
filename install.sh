if hash docker 2>/dev/null; then
        echo ">> DOCKER OK "
else
      sudo wget -qO- https://get.docker.com/ | sh
      sudo usermod -aG docker ubuntu
      sudo -i curl -L https://github.com/docker/compose/releases/download/1.4.2/docker-compose-Linux-x86_64 > /usr/local/bin/docker-compose 
      chmod +x /usr/local/bin/docker-compose
fi

docker pull mysql/mysql-server:5.6
mkdir data
