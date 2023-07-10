.PHONY: up clean

up: clean frontend backend
up_local: clean frontend_local backend_local

frontend:
	cd webapp && \
	sudo git clone https://github.com/open-competition/open-competition-webapp.git . && \
	sudo $(MAKE) run-dev

backend:
	cd api && \
	sudo git clone https://github.com/open-competition/open-competition-service-api.git . && \
	sudo $(MAKE) run-dev

frontend_local:
	cd webapp && \
	sudo git clone https://github.com/open-competition/open-competition-webapp.git . && \
	sudo $(MAKE) run

backend_local:
	cd api && \
	sudo git clone https://github.com/open-competition/open-competition-service-api.git . && \
	sudo $(MAKE) run

clean:
	sudo rm -rf webapp api
	sudo mkdir webapp api