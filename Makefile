.PHONY: up clean

up: frontend backend

frontend:
	cd webapp && \
	sudo git clone https://github.com/open-competition/open-competition-webapp.git . && \
	$(MAKE) run-dev

backend:
	cd api && \
	sudo git clone https://github.com/open-competition/open-competition-service-api.git . && \
	sudo $(MAKE) run-dev

clean:
	cd webapp && $(MAKE) clean
	cd api && $(MAKE) clean
