up:
	@if [ -d "/home/abdamoha/data" ]; then \
		sudo rm -rf /home/abdamoha/data/mariadb \
		sudo rm -rf /home/abdamoha/data/wordpress \
	else \
		echo "jala"; \
	fi
	sudo mkdir -p /home/abdamoha/data/mariadb
	sudo mkdir -p /home/abdamoha/data/wordpress
	sudo docker-compose up
down:
	sudo docker-compose down
	sudo docker system prune --all -a -f
	sudo rm -rf /home/abdamoha/data/mariadb /home/abdamoha/data/wordpress
ifeq (0, $(shell docker volume ls -q | wc -l))
	@echo "No Docker volumes to remove."
else
		@sudo docker volume rm -f $$(docker volume ls -q)
endif

check_volumes:
ifeq (0, $(shell docker volume ls -q | wc -l))
		@echo "No Docker volumes to remove."
else
		@sudo docker volume rm -f $$(docker volume ls -q)
endif

re: down up