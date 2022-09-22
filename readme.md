# kzen service and db for local development

- first of all, install docker and hasura
- setup config.yaml
- launch docker compose (db variable - DATABASE_URL)
- go inside postgress container
    ```
    docker exec -it e203280c3681 bash

    psql -U postgres
    show users: \du
    show tables: \l

    CREATE USER cmfedroyqtfnkp SUPERUSER;
    ALTER ROLE cmfedroyqtfnkp PASSWORD 'grini';
    ALTER ROLE cmfedroyqtfnkp WITH SUPERUSER CREATEDB CREATEROLE REPLICATION BYPASSRLS;
    CREATE DATABASE "public";
    ```

- copy dev.db inside docker root

- run 
    ```
    psql -U postgres public < dev.sql
    ```

P.S.

- To restart my docker compose, removing all info, must be deleted ./pgdata
    ```
    sudo rm -rf ./pgdata
    ```
