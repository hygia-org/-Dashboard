#! /bin/bash


docker exec -it superset_app superset fab create-admin \
              --username admin \
              --firstname Superset \
              --lastname Admin \
              --email admin@superset.com \
              --password admin

docker exec -it superset_app superset db upgrade

docker exec -it superset_app superset init


docker cp data/pgbackup.tar superset_db:/ 

docker exec  superset_db pg_restore -U superset -d superset pgbackup.tar 