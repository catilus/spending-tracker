-- Category table
CREATE SEQUENCE public.category_id_seq;

CREATE TABLE public.category (
                id BIGINT NOT NULL DEFAULT nextval('public.category_id_seq'),
                name VARCHAR(300) NOT NULL,
                CONSTRAINT category_pk PRIMARY KEY (id)
);


ALTER SEQUENCE public.category_id_seq OWNED BY public.category.id;

-- Users table
CREATE SEQUENCE public.users_id_seq;

CREATE TABLE public.users (
                id BIGINT NOT NULL DEFAULT nextval('public.users_id_seq'),
                username VARCHAR(1000) NOT NULL,
                email VARCHAR(1000) NOT NULL,
                CONSTRAINT users_pk PRIMARY KEY (id)
);


ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;

-- Expense table
CREATE TABLE public.expense (
                id BIGINT NOT NULL,
                name VARCHAR(1000) NOT NULL,
                recurrence BOOLEAN NOT NULL,
                datetime TIMESTAMP NOT NULL,
                price NUMERIC(10,2) NOT NULL,
                notes VARCHAR(1000),
                category_id BIGINT NOT NULL,
                users_id BIGINT NOT NULL,
                CONSTRAINT expense_pk PRIMARY KEY (id)
);

-- Foreign key for category on expense table
ALTER TABLE public.expense ADD CONSTRAINT category_expense_fk
FOREIGN KEY (category_id)
REFERENCES public.category (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

-- Foreign key for users on expense table
ALTER TABLE public.expense ADD CONSTRAINT users_expense_fk
FOREIGN KEY (users_id)
REFERENCES public.users (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;
