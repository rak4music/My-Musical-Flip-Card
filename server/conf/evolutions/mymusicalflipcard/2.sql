# --- !Ups

CREATE TABLE public.phrases
(
  id SERIAL,
  song_id integer,
  bars FLOAT,
  note VARCHAR(10),
  repeat integer,
  lyric VARCHAR(255),
  CONSTRAINT phrases_pkey PRIMARY KEY (id)

)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.phrases
  OWNER TO postgres;

# --- !Downs

DROP TABLE public.phrases;