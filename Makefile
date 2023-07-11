.PHONY: up clean up_local

up: clean frontend backend
up_local: clean frontend_local backend_local

frontend:
	cd webapp && \
	git clone -c core.sshCommand='ssh -i ~/.ssh/ec2_webapp_key' git@github.com:open-competition/open-competition-webapp.git . && \
	cd ../../scripts/ && \
	sh scripts.sh && \
	cd ../ec2-docker-deploy/webapp/ && \
	sudo $(MAKE) run-dev

backend:
	cd api && \
	git clone git@github.com:open-competition/open-competition-service-api.git . && \
	sudo $(MAKE) run-dev

frontend_local:
	cd webapp && \
	git clone -c core.sshCommand='ssh -i ~/.ssh/local_webapp_key' git@github.com:open-competition/open-competition-webapp.git . && \
	cd ../../scripts/ && \
	sh scripts.sh && \
	cd ../ec2-docker-deploy/webapp/ && \
	sudo $(MAKE) run

backend_local:
	cd api && \
	git clone git@github.com:open-competition/open-competition-service-api.git . && \
	sudo $(MAKE) run

clean:
	rm -rf webapp api
	mkdir webapp api