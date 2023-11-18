up:
	sudo mkdir b t
	sudo docker-compose up

down:
	sudo docker-compose down
	sudo docker system prune --all -a -f
	sudo rm -rf b t
	sudo docker volume rm -f $(docker volume ls -q)

re : down up