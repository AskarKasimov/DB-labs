-- Заполнение таблицы MASTER
INSERT INTO
    master (name, is_rogue, birthday)
VALUES
    ('John Doe', FALSE, '1980-05-15'),
    ('Jane Smith', TRUE, '1975-08-22'),
    ('Alex Johnson', FALSE, '1990-11-30');

-- Заполнение таблицы SHIP
INSERT INTO
    ship (name, description, max_speed, owner_id)
VALUES
    (
        'Galaxy Cruiser',
        'A fast and reliable ship for interstellar travel.',
        0.8,
        1
    ),
    (
        'Star Blazer',
        'Known for its durability and advanced navigation systems.',
        0.9,
        2
    ),
    (
        'Cosmic Rider',
        'A sleek ship designed for speed and agility.',
        0.85,
        null
    );

-- Заполнение таблицы ROBOT
INSERT INTO
    robot (name, description, power)
VALUES
    (
        'RoboGuard',
        'A security robot with high defense capabilities.',
        95.5
    ),
    (
        'MechMender',
        'Specializes in repair and maintenance tasks.',
        88.0
    ),
    (
        'DataBot',
        'Designed for data analysis and information processing.',
        92.3
    );

-- Заполнение таблицы MASTER_AND_ROBOTS
INSERT INTO
    master_and_robots (robot_id, master_id)
VALUES
    (1, 1),
    (2, 2),
    (3, 3);

-- Заполнение таблицы PLANET
INSERT INTO
    planet (name, description, size)
VALUES
    (
        'Earth',
        'Home planet with diverse ecosystems.',
        1.0
    ),
    (
        'Mars',
        'Known for its red terrain and potential for colonization.',
        0.53
    ),
    (
        'Jupiter',
        'A gas giant with a strong magnetic field.',
        11.2
    );

-- Заполнение таблицы MASTER_AND_PLANET
INSERT INTO
    master_and_planet (master_id, planet_id)
VALUES
    (1, 1),
    (2, 2),
    (3, 3);

-- Заполнение таблицы SYSTEM
INSERT INTO
    system (name, description)
VALUES
    (
        'Solar System',
        'Our home system with the Sun at its center.'
    ),
    (
        'Alpha Centauri',
        'The closest star system to the Solar System.'
    ),
    (
        'Sirius System',
        'Known for its brightest star Sirius.'
    );

-- Заполнение таблицы PLANET_AND_SYSTEM
INSERT INTO
    system_and_planets (planet_id, system_id)
VALUES
    (1, 1),
    (2, 1),
    (3, 1);

-- Заполнение таблицы STAR
INSERT INTO
    star (name, description)
VALUES
    (
        'Sun',
        'The star at the center of the Solar System.'
    ),
    (
        'Alpha Centauri A',
        'Primary star of the Alpha Centauri system.'
    ),
    (
        'Sirius A',
        'The brightest star in the night sky.'
    );

-- Заполнение таблицы SYSTEM_AND_STARS
INSERT INTO
    system_and_stars (star_id, system_id)
VALUES
    (1, 1),
    (2, 2),
    (3, 3);