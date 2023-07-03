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
	sudo rm -rf open-competition-webapp open-competition-service-api webapp api
	sudo mkdir webapp api
