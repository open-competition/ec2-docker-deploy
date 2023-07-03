.PHONY: up clean

up: clean frontend backend


frontend:
<<<<<<< HEAD
	cd webapp && \
	sudo git clone git@github.com:open-competition/open-competition-webapp.git . && \
	sudo $(MAKE) run-dev

backend:
	cd api && \
	sudo git clone git@github.com:open-competition/open-competition-service-api.git . && \
	sudo $(MAKE) run-dev

clean:
	sudo rm -rf open-competition-webapp
	sudo rm -rf open-competition-service-api
