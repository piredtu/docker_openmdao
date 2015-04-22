ROOT_DIR := $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))
build:
	docker build -t webmodel .

run:
	docker run -d -P --name webmodel webmodel python /install/paraboloid.py
	docker ps|grep webmodel|grep -v "grep"

test: 
	docker run --rm webmodel python /install/tests.py

stop:
	docker stop webmodel
	docker rm webmodel