#! /bin/bash


docker exec -it superset_app superset fab create-admin \
              --username admin \
              --firstname Superset \
              --lastname Admin \
              --email admin@superset.com \
              --password admin

docker exec -it superset_app superset db upgrade

docker exec -it superset_app superset init

pip install -r ./migrate/requirement.txt

docker cp data/pgbackup.tar superset_db:/ 

docker cp data/dashboard_export.zip superset_app:/app/
            
docker exec superset_app superset import-dashboards -p dashboard_export.zip -u superset

clear 

echo "Acess localhost:8088"