CREATE TABLE
    master (
        id SERIAL PRIMARY KEY,
        name VARCHAR(50) NOT NULL,
        is_rogue BOOLEAN,
        birthday DATE
    );

CREATE TABLE
    ship (
        id SERIAL PRIMARY KEY,
        name VARCHAR(50) NOT NULL,
        description TEXT,
        max_speed FLOAT CHECK (max_speed > 0),
        owner_id INT REFERENCES master (id) ON DELETE SET NULL
    );

CREATE TABLE
    robot (
        id SERIAL PRIMARY KEY,
        name VARCHAR(50) NOT NULL,
        description TEXT,
        power FLOAT CHECK (power > 0)
    );

CREATE TABLE
    master_and_robots (
        robot_id INT UNIQUE REFERENCES robot (id) ON DELETE CASCADE,
        master_id INT REFERENCES master (id) ON DELETE CASCADE,
        PRIMARY KEY (robot_id, master_id)
    );

CREATE TABLE
    planet (
        id SERIAL PRIMARY KEY,
        name VARCHAR(50) NOT NULL,
        description TEXT,
        size FLOAT
    );

CREATE TABLE
    master_and_planet (
        master_id INT UNIQUE REFERENCES master (id) ON DELETE CASCADE,
        planet_id INT REFERENCES planet (id) ON DELETE CASCADE,
        PRIMARY KEY (master_id, planet_id)
    );

CREATE TABLE
    system (
        id SERIAL PRIMARY KEY,
        name VARCHAR(50) NOT NULL,
        description TEXT
    );

CREATE TABLE
    system_and_planets (
        planet_id INT UNIQUE REFERENCES planet (id) ON DELETE CASCADE,
        system_id INT REFERENCES system (id) ON DELETE CASCADE,
        PRIMARY KEY (planet_id, system_id)
    );

CREATE TABLE
    star (
        id SERIAL PRIMARY KEY,
        name VARCHAR(50) NOT NULL,
        description TEXT
    );

CREATE TABLE
    system_and_stars (
        star_id INT UNIQUE REFERENCES star (id) ON DELETE CASCADE,
        system_id INT REFERENCES system (id) ON DELETE CASCADE,
        PRIMARY KEY (star_id, system_id)
    );