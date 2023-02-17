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


