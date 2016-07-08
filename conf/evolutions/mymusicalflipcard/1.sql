# Users schema

# --- !Ups

CREATE TABLE public.songs
(
  id SERIAL,
  title VARCHAR(80),
  author VARCHAR(80),
  timing_upper integer,
  timing_lower integer,
  key VARCHAR(25),
  CONSTRAINT songs_pkey PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.songs
  OWNER TO postgres;

# --- !Downs

DROP TABLE public.songs;