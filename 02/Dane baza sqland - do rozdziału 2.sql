--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5
-- Dumped by pg_dump version 10.5

--
-- Name: heroes; Type: TABLE; Schema: public; Owner: postgres
--


CREATE TABLE public.heroes (
    first_name character varying,
    last_name character varying,
    gender character(1),
    race character varying,
    strength integer,
    wisdom integer,
    health integer DEFAULT 200,
    mana integer,
    hero_id integer,
    birthdate date
);


ALTER TABLE public.heroes OWNER TO postgres;

--
-- Data for Name: heroes; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.heroes (first_name, last_name, gender, race, strength, wisdom, health, mana, hero_id, birthdate) VALUES ('Brass', 'Comtel', 'M', 'elf', 15, 19, 150, 210, 11, '1948-02-25');
INSERT INTO public.heroes (first_name, last_name, gender, race, strength, wisdom, health, mana, hero_id, birthdate) VALUES ('Jared', 'Brewster', 'M', 'człowiek', 15, 10, 200, 50, 12, '1966-05-20');
INSERT INTO public.heroes (first_name, last_name, gender, race, strength, wisdom, health, mana, hero_id, birthdate) VALUES ('Gal', 'Krzywonóg', 'K', 'hobbit', 12, 10, 200, 10, 13, '1977-11-03');
INSERT INTO public.heroes (first_name, last_name, gender, race, strength, wisdom, health, mana, hero_id, birthdate) VALUES ('Olive', 'Ironfist', 'M', 'krasnolud', 32, 8, 200, 120, 14, '1960-02-05');
INSERT INTO public.heroes (first_name, last_name, gender, race, strength, wisdom, health, mana, hero_id, birthdate) VALUES ('Mika', 'Kleefan', 'K', 'człowiek', 20, 25, 200, 250, 15, '1966-05-20');
INSERT INTO public.heroes (first_name, last_name, gender, race, strength, wisdom, health, mana, hero_id, birthdate) VALUES ('Fandrel', 'Glowhand', 'M', 'elf', 15, 32, 200, 210, 16, '1820-11-10');
INSERT INTO public.heroes (first_name, last_name, gender, race, strength, wisdom, health, mana, hero_id, birthdate) VALUES ('Axel', 'deBoom', 'M', 'krasnolud', 35, 5, 200, 190, 17, '1900-01-03');
INSERT INTO public.heroes (first_name, last_name, gender, race, strength, wisdom, health, mana, hero_id, birthdate) VALUES ('Moira', 'Srebrnolica', 'K', 'krasnolud', 38, 12, 200, 130, 18, '1890-08-05');
INSERT INTO public.heroes (first_name, last_name, gender, race, strength, wisdom, health, mana, hero_id, birthdate) VALUES ('Brandon', 'Tuk', 'M', 'hobbit', 22, 12, 200, 0, 19, '1970-12-05');

--
-- PostgreSQL database dump complete
--

