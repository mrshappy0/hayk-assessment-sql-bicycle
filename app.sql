-- Create a table, `owners`
CREATE TABLE owners (
    id INTEGER PRIMARY KEY,
    names TEXT
);

-- Create a related table, `bicycles`
CREATE TABLE bicycles (
    id INTEGER PRIMARY KEY, 
    model TEXT,
    suspension TEXT,
    condition TEXT,
    owner_id INTEGER, 
    FOREIGN KEY (owner_id) REFERENCES owners(id)
);

-- Create 3 bicycles and 2 owners
INSERT INTO owners(names)
VALUES (
    "Eamon"
    ),(
    "Gondo"
    ),(
    "In the dump!"
);

INSERT INTO bicycles(model, suspension, condition, owner_id)
VALUES (
    "Nomad", "FS", "New", 1
    ),(
    "Titan", "Hardtail", "Crashed", 2
    ),(
    "Monster", "Rigid", "Shitty bike!", 2
);

-- Update the properties of one of the bicycles
UPDATE bicycles
SET condition = "Shattered frame", owner_id = 3
WHERE owner_id = 1;
-- List all the bicycles
SELECT *
from bicycles;

SELECT model
FROM bicycles;

-- List all the bicycles with their owners
SELECT model, NAMES
FROM bicycles, owners
WHERE owners.id = bicycles.owner_id;

-- Delete one of the bicycles
DELETE FROM bicycles
WHERE id = 1;
