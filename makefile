
POSTGRES_SERVER_NAME=db
POSTGRES_IMAGE_NAME=postgres
JAVA_APP_NAME=app

pg_build:
	docker build -t $(POSTGRES_IMAGE_NAME) -f pg.Dockerfile .

app_build:
	docker build -t $(JAVA_APP_NAME) -f Dockerfile .

k8s_deploy:
	kubectl apply -f k8s/ 