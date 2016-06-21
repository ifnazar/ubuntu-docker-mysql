CURRENT_DIR="$(pwd)"
docker run --name mysql-container -v ${CURRENT_DIR}data:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=password -p 3306:3306 -d mysql/mysql-server:5.6
