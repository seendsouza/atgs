# Builds the docker container
docker build -t atgs .

# Variables
docker_id = docker ps -q --last -1
container_ip = docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $docker_id

echo $docker_id $container_ip
#xdg-open "http://"container_ip"
