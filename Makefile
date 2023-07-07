.PHONY: up up_local

up: frontend backend
up_local: frontend_local backend_local

frontend:
        sudo rm -rf webapp && \
        sudo mkdir webapp && \
        cd webapp && \
        sudo touch .env && \
        sudo chmod 666 .env && \
        TEMP_DIR=$$(mktemp -d) && \
        sudo git clone https://github.com/open-competition/open-competition-webapp.git $$TEMP_DIR && \
        sudo mv $$TEMP_DIR/* . && \
        sudo rm -rf $$TEMP_DIR && \
        cd ../../scripts && \
        ls && \
        sudo ./scripts.sh && \
        cd ../ec2-docker-deploy/webapp/ && \
        sudo $(MAKE) run-dev

backend:
        sudo rm -rf api && \
        sudo mkdir api && \
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
