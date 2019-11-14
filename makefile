
POSTGRES_SERVER_NAME=db
POSTGRES_IMAGE_NAME=postgres
JAVA_APP_NAME=app

pg_build:
	docker build -t $(POSTGRES_IMAGE_NAME) -f pg.Dockerfile .

pg_up:
	docker run -d --name $(POSTGRES_IMAGE_NAME) $(POSTGRES_SERVER_NAME)

pg_push:
	docker push $(POSTGRES_IMAGE_NAME)

pg_down:
	docker stop $(POSTGRES_SERVER_NAME)
	docker rm $(POSTGRES_SERVER_NAME)

app_build:
	docker build -t $(JAVA_APP_NAME) -f Dockerfile .

app_run:
	docker run $(JAVA_APP_NAME)
