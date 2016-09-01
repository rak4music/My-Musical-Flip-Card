# --- !Ups

CREATE TABLE public.phrases
(
  id SERIAL,
  note TEXT,
  lyrics TEXT,
  line_id integer,
  CONSTRAINT phrases_pkey PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.phrases
  OWNER TO postgres;

# --- !Downs

DROP TABLE public.phrases;
