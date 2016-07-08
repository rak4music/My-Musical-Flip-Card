# Users schema

# --- !Ups

CREATE TABLE public.songs
(
  id bigint NOT NULL,
  title text,
  author text,
  timing_upper integer,
  timing_lower integer,
  key text,
  CONSTRAINT songs_pkey PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.songs
  OWNER TO postgres;

# --- !Downs

DROP TABLE public.songs;