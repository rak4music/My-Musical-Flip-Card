# --- !Ups

CREATE TABLE public.scores
(
  id SERIAL,
  title character varying(80),
  artist character varying(80),
  file bytea,
  CONSTRAINT scores_pkey PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.scores
  OWNER TO postgres;

# --- !Downs

DROP TABLE public.scores;