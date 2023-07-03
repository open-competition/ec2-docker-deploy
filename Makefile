.PHONY: up clean

up: clean frontend backend


frontend:
	sudo git clone https://github.com/open-competition/open-competition-webapp.git
	cd open-competition-webapp/
						
	sudo $(MAKE) run-dev

backend:
	sudo git clone https://github.com/open-competition/open-competition-service-api.git
	cd open-competition-service-api
	sudo $(MAKE) run-dev

clean:
	sudo rm -rf webapp
	sudo rm -rf api
