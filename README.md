# appcon Intro
Example java app container to run in local k8s

There are 2 docker images
1. Dockerfile for java sample app
2. pg.Dockerfile for postgres app

Above docker images are deployed in local k8s.
K8s deployment expects images to be present locally.


# How to use

## Prerequiste
1. make command.
2. Docker
3. Kubernetes

Above utilities needs to be present locally to play with example.

## Commands
Step by step instructions
create docker build by using following commands from root of directory

1. Create postgres docker image `make pg_build`
2. Create java app docker image `make app_build`
3. Deploy k8s manfiest using `make k8s_deploy`

## How to confirm records are inserted?
1. Execute command to see log ` kubectl logs -f <app-pod-name>`
It shows message "INFO: Successfully inserted"