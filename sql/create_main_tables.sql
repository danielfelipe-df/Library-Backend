-- Create table with the information of the authors

CREATE TABLE public.author (
	id SERIAL PRIMARY KEY,
	name VARCHAR(100) NOT NULL COLLATE "es_ES",
	birth_date DATE,
	death_date DATE,
	country VARCHAR(50) COLLATE "es_ES",
	created_at TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
	updated_at TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
	deleted_at TIMESTAMP(0)
);

COMMENT ON TABLE public.author IS 'Table with the personal and useful information of each author';
COMMENT ON COLUMN public.author.name IS 'Name of the author';
COMMENT ON COLUMN public.author.birth_date IS 'Date of birth of the author (NULL if unknown)';
COMMENT ON COLUMN public.author.death_date IS 'Date of death of the author (NULL if still living or unknown)';
COMMENT ON COLUMN public.author.country IS 'Country where the author was born (NULL if unknown)';
COMMENT ON COLUMN public.author.created_at IS 'Timestamp when the record was created';
COMMENT ON COLUMN public.author.updated_at IS 'Timestamp of the last modification to the record';
COMMENT ON COLUMN public.author.deleted_at IS 'Timestamp when the record was marked as deleted (NULL if record is active)';



-- Create table with the information of the books

CREATE TABLE public.book (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255) NOT NULL COLLATE "es_ES",
	author_id INTEGER NOT NULL,
	FOREIGN KEY (author_id) REFERENCES author(id),
	pages SMALLINT DEFAULT 0,
	publication_year SMALLINT NOT NULL,
	photo VARCHAR(255) NOT NULL COLLATE "en_GB",
	created_at TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
	updated_at TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
	deleted_at TIMESTAMP(0)
);

COMMENT ON TABLE public.book IS 'Table with the basic information of each book';
COMMENT ON COLUMN public.book.name IS 'Title of the book';
COMMENT ON COLUMN public.book.author_id IS 'Reference to the author who wrote this book. Links to the author ID in author table.';
COMMENT ON COLUMN public.book.pages IS 'Number of pages in the book (0 if not specified)';
COMMENT ON COLUMN public.book.publication_year IS 'Year when the book was published';
COMMENT ON COLUMN public.book.photo IS 'Path to the main photo of the book';
COMMENT ON COLUMN public.book.created_at IS 'Timestamp when the record was created';
COMMENT ON COLUMN public.book.updated_at IS 'Timestamp of the last modification to the record';
COMMENT ON COLUMN public.book.deleted_at IS 'Timestamp when the record was marked as deleted (NULL if record is active)';
