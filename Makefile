all: help

help:
	@echo ""
	@echo "-- Help Menu"
	@echo ""
	@echo "   1. make build            - build all images"
	@echo "   2. make build-no-cache   - build all images whitout cache"
	@echo "   3. make clean            - remove all images"
	@echo ""

build:
	@docker build --build-arg GIT_USERNAME=${GIT_USERNAME} --build-arg GIT_PASSWORD=${GIT_PASSWORD} --tag=amr-robot-app:500-001    ./.

build-no-cache:
	@docker build --no-cache --build-arg GIT_USERNAME=${GIT_USERNAME} --build-arg GIT_PASSWORD=${GIT_PASSWORD} --tag=amr-robot-app:500-001    ./.

clean:
	@docker rmi -f amr-robot-app:500-001