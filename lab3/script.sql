CREATE TABLE
    system (
        id SERIAL PRIMARY KEY,
        name VARCHAR(50) NOT NULL,
        description TEXT
    );

CREATE TABLE
    planet (
        id SERIAL PRIMARY KEY,
        name VARCHAR(50) NOT NULL,
        description TEXT,
        size FLOAT,
        system_id INT REFERENCES system (id) ON DELETE CASCADE
    );

CREATE TABLE
    master (
        id SERIAL PRIMARY KEY,
        name VARCHAR(50) NOT NULL,
        is_rogue BOOLEAN,
        birthday DATE,
        robot_count INT DEFAULT 0 CHECK (robot_count >= 0),
        planet_id INT NOT NULL REFERENCES planet (id)
    );

CREATE TABLE
    ship_model (
        id SERIAL PRIMARY KEY,
        name VARCHAR(50) NOT NULL,
        max_speed FLOAT CHECK (max_speed > 0)
    );

CREATE TABLE
    ship (
        id SERIAL PRIMARY KEY,
        name VARCHAR(50) NOT NULL,
        description TEXT,
        model_id INT REFERENCES ship_model (id),
        owner_id INT REFERENCES master (id) ON DELETE SET NULL
    );

CREATE TABLE
    robot_model (
        id SERIAL PRIMARY KEY,
        name VARCHAR(50) NOT NULL,
        power FLOAT CHECK (power > 0)
    );

CREATE TABLE
    robot (
        id SERIAL PRIMARY KEY,
        name VARCHAR(50) NOT NULL,
        description TEXT,
        model_id INT REFERENCES robot_model (id),
        master_id INT REFERENCES master (id) ON DELETE SET NULL
    );

CREATE TABLE
    star (
        id SERIAL PRIMARY KEY,
        name VARCHAR(50) NOT NULL,
        description TEXT
    );

CREATE TABLE
    system_and_stars (
        star_id INT REFERENCES star (id) ON DELETE CASCADE,
        system_id INT REFERENCES system (id) ON DELETE CASCADE,
        PRIMARY KEY (star_id, system_id)
    );

CREATE OR REPLACE FUNCTION update_master_robot_count()
RETURNS TRIGGER AS $$
BEGIN
    -- удаление робота
    IF (TG_OP = 'DELETE') THEN
        UPDATE master 
        SET robot_count = robot_count - 1 
        WHERE id = OLD.master_id;
        RETURN OLD;
        
    -- добавление робота
    ELSIF (TG_OP = 'INSERT') THEN
        UPDATE master 
        SET robot_count = robot_count + 1 
        WHERE id = NEW.master_id;
        RETURN NEW;
        
    -- изменение master
    ELSIF (TG_OP = 'UPDATE') THEN
        IF (OLD.master_id IS DISTINCT FROM NEW.master_id) THEN
            UPDATE master 
            SET robot_count = robot_count - 1 
            WHERE id = OLD.master_id;
            
            UPDATE master 
            SET robot_count = robot_count + 1 
            WHERE id = NEW.master_id;
        END IF;
        RETURN NEW;
    END IF;
END;
$$ LANGUAGE plpgsql;

-- триггер
CREATE TRIGGER robot_count_trigger
AFTER INSERT OR DELETE OR UPDATE OF master_id ON robot
FOR EACH ROW EXECUTE FUNCTION update_master_robot_count();
