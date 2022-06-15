dev:
	docker build -t dev-env .
	docker run -it --rm -v `pwd`:/mount dev-env

serve:
	docker-compose up --build --detach

down:
	docker-compose down