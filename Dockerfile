FROM lyasper/greenplum:6.11.2

COPY scripts/init_db.sh /docker-entrypoint-initdb.d/init_db.sh
COPY scripts/create_hubs.sql /docker-entrypoint-initdb.d/create_hubs.sql
COPY scripts/create_links.sql /docker-entrypoint-initdb.d/create_links.sql
COPY scripts/create_sats.sql /docker-entrypoint-initdb.d/create_sats.sql

RUN chmod +x /docker-entrypoint-initdb.d/init_db.sh
