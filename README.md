## Карточка проекта 

Проект представляет собой автоматизированное развертывание Greenplum Database в Docker-контейнере (образ `lyasper/greenplum`)
с предустановленной структурой Data Vault.

### Организация проекта 

- `greenplum-dv-project/`:
  - `scripts/`:
      - `init_db.sh`:  Скрипт инициализации базы данных
      - `create_hubs`:  Создание хабов (Hub)
      - `create_links`: Создание линков (Link) 
      - `create_sats`:  Создание сателлитов (Satellite)
  - `data/`:  Папка для загрузки данных
  - `docker-compose.yml`: Конфигурация Docker-окружения
  - `Dockerfile`: Настройка образа Greenplum
  - `README.md`: Документация проекта

    
### Описание БД (DDL)

1) Хабы (Hubs):
   - Содержат бизнес-ключи

2) Линки (Links):
   - Описывают связи между хабами

3) Сателлиты (Satellites):
   - Содержат описательные атрибуты

### Запуск контейнера
1) Собрать и запустить контейнер:
```
docker-compose down
docker-compose up -d
```


2) Инициализировать БД:
```
docker exec -it greenplum bash
su - gpadmin
source /opt/greenplum/greenplum_path.sh
bash /docker-entrypoint-initdb.d/init_db.sh
```
3) Проверить созданные таблицы:
```
psql -d postgres -c "\dt"
```