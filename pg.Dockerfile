FROM postgres:11.2
COPY db-script.sql /docker-entrypoint-initdb.d/db-script.sql
COPY pg_hba.sh /docker-entrypoint-initdb.d/pg_hba.sh
VOLUME /docker-entrypoint-initdb.d/