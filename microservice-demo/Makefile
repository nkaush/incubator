database: ./attendance/setup.py 
	python3 attendance/setup.py > attendance/data/0001.sql

serve: database
	docker-compose up --build --detach

down:
	docker-compose down