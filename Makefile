.PHONY: up clean

up: clean frontend backend

frontend:
	cd webapp && \
	sudo git clone https://github.com/open-competition/open-competition-webapp.git . && \
	sudo $(MAKE) run-dev

backend:
	cd api && \
	sudo git clone https://github.com/open-competition/open-competition-service-api.git . && \
	sudo $(MAKE) run-dev

clean:
	sudo docker stop open-competition-service-webapp || true
	sudo docker stop open-competition-service-api || true
	sudo rm -rf webapp
	sudo rm -rf api 
	sudo mkdir webapp
	sudo mkdir api