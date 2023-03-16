if I want to restart my docker compose, removing all info, I also have to delete ./pgdata
sudo rm -rf ./pgdata

--
to apply remote db
pg_dump -h 54.194.180.51 -p 5432 -U cmfedroyqtfnkp da7coqdjb1inpu > dev.sql

create db -> public

psql -U postgres public < dev.sql
