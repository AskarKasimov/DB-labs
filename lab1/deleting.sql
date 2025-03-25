-- Удаление таблиц с зависимостями
DROP TABLE IF EXISTS system_and_stars CASCADE;

DROP TABLE IF EXISTS system_and_planets CASCADE;

DROP TABLE IF EXISTS master_and_planet CASCADE;

DROP TABLE IF EXISTS master_and_robots CASCADE;

-- Удаление основных таблиц
DROP TABLE IF EXISTS star CASCADE;

DROP TABLE IF EXISTS system CASCADE;

DROP TABLE IF EXISTS planet CASCADE;

DROP TABLE IF EXISTS robot CASCADE;

DROP TABLE IF EXISTS master CASCADE;

DROP TABLE IF EXISTS ship CASCADE;