FROM mariadb

ENV MARIADB_ROOT_PASSWORD=password

COPY create_structure.sql /docker-entrypoint-initdb.d/
COPY users.sql /docker-entrypoint-initdb.d/
COPY data.sql /docker-entrypoint-initdb.d/

EXPOSE 3306

#VOLUME [ "data", "/var/lib/mysql" ]

