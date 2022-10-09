if I want to restart my docker compose, removing all info, I also have to delete ./pgdata
sudo rm -rf ./pgdata

***
psql -U postgres
show users: \du
show tables: \l

***

- create user cmfedroyqtfnkp
- create password for user cmfedroyqtfnkp: grini
- create table public

***
CREATE USER cmfedroyqtfnkp SUPERUSER;


CREATE DATABASE postgres WITH OWNER postgres;
ALTER ROLE postgres WITH PASSWORD 'your_password';
***

--
--
--
to apply remote db
pg_dump -h 54.194.180.51 -p 5432 -U cmfedroyqtfnkp da7coqdjb1inpu > dev.sql

password:52fe3b0b5c804a384cd734ebe8261679f178ee498d10130e9b589d8f72be4546

create db -> public

psql -U postgres public < dev.sql
