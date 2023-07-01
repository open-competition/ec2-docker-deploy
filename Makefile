.PHONY: up clean

up: clean create_directories frontend backend

create_directories:
	sudo mkdir -p webapp
	sudo mkdir -p api


frontend:
	cd webapp && \
	sudo git clone git@github.com:open-competition/ec2-docker-deploy.git . && \
	$(MAKE) run-dev

backend:
	cd api && \
	sudo git clone git@github.com:open-competition/ec2-docker-deploy.git . && \
	sudo $(MAKE) run-dev

clean:
	sudo rm -rf webapp
	sudo rm -rf api
