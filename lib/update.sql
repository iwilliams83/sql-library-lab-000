
UPDATE characters SET species = "MARTIAN" WHERE id = (SELECT max(id) FROM characters);
