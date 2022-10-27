# Hasura install

<https://hasura.io/docs/latest/deployment/deployment-guides/heroku/>

Creating ⬢ gold-timer-srv... done, stack is container

heroku create --region eu gold-timer-srv --stack=container

HEROKU_GIT_REMOTE: <https://git.heroku.com/todo-hasura1.git>
HEROKU_APP_URL: <https://todo-hasura1.herokuapp.com/>

DATABASE_URL

Database has been created and is available
! This database is empty. If upgrading, you can transfer
! data from another database with pg:copy
DEPRECATION NOTICE:
Starting November 28th, 2022, ‘hobby-dev’ databases will no longer be available. To retain your data after this date, upgrade to ‘mini’ or another paid plan.
Learn more in our blog (<https://blog.heroku.com/new-low-cost-plans>)
Created postgresql-clear-47266 as DATABASE_URL
Use heroku addons:docs heroku-postgresql to view documentation

<!-- hint for making csv from tables -->

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

PGUSER=rnrjgzuolzgbqe PGPASSWORD=0d2f84f328ea04e40ba39ce3f85b17559e84cf9d974f2bbf980496f4ac3d62c8 heroku pg:push postgresql://postgres:grini@127.0.0.2:6081/postgres DATABASE_URL

heroku pg:psql DATABASE_URL -f ./backup.sql
