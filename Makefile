.PHONY: up clean

up: clean create_directories frontend backend

create_directories:
	sudo mkdir -p webapp
	sudo mkdir -p api


frontend:
	cd webapp
	sudo git clone https://github.com/open-competition/open-competition-webapp.git
						
	sudo $(MAKE) run-dev

backend:
	cd api
	sudo git clone https://github.com/open-competition/open-competition-service-api.git
	sudo $(MAKE) run-dev

clean:
	sudo rm -rf webapp
	sudo rm -rf api
