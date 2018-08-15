CREATE TABLE estado (
	id bigint NOT NULL,
	nome text,
	CONSTRAINT estado_pk PRIMARY KEY (id)
);

CREATE TABLE cidade (
	id bigint NOT NULL,
	nome text,
	estado_id bigint,
	CONSTRAINT cidade_pk PRIMARY KEY (id),
    CONSTRAINT fk_cidade_estado FOREIGN KEY (estado_id)
      REFERENCES public.estado (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
);
