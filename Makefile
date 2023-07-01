.PHONY: up clean

up: clean create_directories frontend backend

create_directories:
	mkdir -p webapp
	mkdir -p api


frontend:
	cd webapp && \
	sudo git clone https://github.com/open-competition/open-competition-webapp.git . && \
	$(MAKE) run-dev

backend:
	cd api && \
	sudo git clone https://github.com/open-competition/open-competition-service-api.git . && \
	sudo $(MAKE) run-dev

clean:
	rm -rf webapp
	rm -rf api
