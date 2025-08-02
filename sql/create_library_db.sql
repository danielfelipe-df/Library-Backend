-- Create the database 'library' with 'daniel' user as owner.
-- The variables ENCODING, LC_COLLATE and LC_CTYPE  with the values
-- shown let support Spanish characters.
-- The line 'TEMPLATE template0' let create the DB without any template behind

CREATE DATABASE library
	OWNER daniel
	ENCODING 'UTF8'
	LC_COLLATE 'es_ES.UTF-8'
	LC_CTYPE 'es_ES.UTF-8'
	TEMPLATE template0;

COMMENT ON DATABASE library IS 'Main Database of the Library Server Project'
