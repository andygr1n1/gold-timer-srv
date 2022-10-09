<https://brianchildress.co/copy-data-docker-to-file/>

su postgres
psql
docker exec -u postgres 3ce18e38a068 -d postgres -c goal_difficulty_enum > goal_difficulty_enum.csv

local db from PC
psql postgresql://postgres:grini@127.0.0.2:6081/postgres
\COPY goals TO 'goals.csv' WITH (FORMAT CSV, HEADER);

->>
heroku pg:psql

pg_dump
curl --location --request POST 'http://localhost:6080/v1alpha1/pg_dump' --header 'x-hasura-admin-secret: grini' --header 'Content-Type: application/json' --data-raw '{ "opts": ["-O", "-x", "--schema", "public"], "clean_output": true}' -o backup.sql

PGUSER=xxx PGPASSWORD=xxx heroku pg:push postgresql://postgres:grini@127.0.0.2:6081/postgres DATABASE_URL
heroku pg:psql DATABASE_URL -f ./backup.sql
