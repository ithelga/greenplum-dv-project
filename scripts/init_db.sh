#!/bin/bash

echo "Загружаем HUB таблицы..."
psql -d postgres -f /docker-entrypoint-initdb.d/create_hubs.sql

echo "Загружаем LINK таблицы..."
psql -d postgres -f /docker-entrypoint-initdb.d/create_links.sql

echo "Загружаем SAT таблицы..."
psql -d postgres -f /docker-entrypoint-initdb.d/create_sats.sql

echo "Все таблицы успешно созданы!"
