compose := "superset.yml"

up: 
	docker-compose -f ${compose} up --build -d
	chmod +x ./script/init.sh
	./script/init.sh

clean:
	docker-compose -f ${compose} kill
	docker-compose -f ${compose} stop
	docker-compose -f ${compose} down --rmi local --volumes
	docker-compose -f ${compose} rm 

restore-example:
	docker exec  superset_db pg_restore -U superset -d superset pgbackup.tar
	clear
	@echo "successful loading"!

restore:
	python3 ./migrate/migrate.py $(file_path) $(nrows)
	
restore-help:
	python3 ./migrate/migrate.py -h



