# --- !Ups

CREATE TABLE public.lines
(
  id SERIAL,
  song_id integer,
  CONSTRAINT lines_pkey PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.lines
  OWNER TO postgres;

# --- !Downs

DROP TABLE public.lines;