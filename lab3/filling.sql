-- system
INSERT INTO
    system (name, description)
VALUES
    ('Solar System', 'Our home system'),
    ('Alpha Centauri', 'Nearest star system'),
    ('Sirius System', 'Brightest star system'),
    (
        'Barnard''s Star System',
        'Nearby red dwarf system'
    ),
    ('Tau Ceti System', 'Potentially habitable system');

-- planet
INSERT INTO
    planet (name, description, size, system_id)
VALUES
    ('Earth', 'Blue planet', 12742, 1),
    (
        'Proxima b',
        'Exoplanet orbiting Proxima Centauri',
        11400,
        2
    ),
    ('Sirius B', 'White dwarf planet', 12000, 3),
    ('Barnard b', 'Cold exoplanet', 10000, 4),
    (
        'Tau Ceti e',
        'Potentially habitable exoplanet',
        13000,
        5
    );

-- master
INSERT INTO
    master (name, is_rogue, birthday, robot_count, planet_id)
VALUES
    ('John Doe', FALSE, '1980-05-15', 3, 1),
    ('Jane Smith', TRUE, '1975-08-22', 5, 2),
    ('Alice Johnson', FALSE, '1990-12-01', 2, 3),
    ('Bob Brown', FALSE, '1985-03-10', 0, 4),
    ('Eve Davis', TRUE, '1992-07-30', 1, 5);

-- ship_model
INSERT INTO
    ship_model (name, max_speed)
VALUES
    ('Falcon', 1500.5),
    ('Eagle', 1200.0),
    ('Hawk', 1300.75),
    ('Raven', 1100.25),
    ('Condor', 1400.0);

-- ship
INSERT INTO
    ship (name, description, model_id, owner_id)
VALUES
    ('Falcon One', 'First Falcon model', 1, 1),
    ('Eagle Eye', 'Advanced Eagle model', 2, 2),
    ('Hawk Wing', 'Stealth Hawk model', 3, 3),
    ('Raven Shadow', 'Fast Raven model', 4, 4),
    ('Condor Strike', 'Powerful Condor model', 5, 5);

-- robot_model
INSERT INTO
    robot_model (name, power)
VALUES
    ('RX-78', 500.0),
    ('T-800', 750.5),
    ('C-3PO', 300.25),
    ('R2-D2', 400.0),
    ('HAL 9000', 1000.0);

-- robot
INSERT INTO
    robot (name, description, model_id, master_id)
VALUES
    ('Robo1', 'First robot', 1, 1),
    ('Robo2', 'Second robot', 2, 2),
    ('Robo3', 'Third robot', 3, 3),
    ('Robo4', 'Fourth robot', 4, 4),
    ('Robo5', 'Fifth robot', 5, 5);

-- star
INSERT INTO
    star (name, description)
VALUES
    ('Sun', 'Our star'),
    (
        'Alpha Centauri A',
        'Primary star of Alpha Centauri'
    ),
    ('Sirius A', 'Brightest star in the night sky'),
    ('Barnard''s Star', 'Red dwarf star'),
    ('Tau Ceti', 'Sun-like star');

-- system_and_stars
INSERT INTO
    system_and_stars (star_id, system_id)
VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5);