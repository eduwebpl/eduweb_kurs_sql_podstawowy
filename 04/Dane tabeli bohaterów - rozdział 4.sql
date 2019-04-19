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
    strength integer NOT NULL,
    wisdom integer,
    health integer,
    mana integer,
    hero_id integer NOT NULL,
    CONSTRAINT heroes_gender_check CHECK ((gender = ANY (ARRAY['M'::bpchar, 'K'::bpchar])))
);


ALTER TABLE public.heroes OWNER TO postgres;

--
-- Name: heroes_hero_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.heroes ALTER COLUMN hero_id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.heroes_hero_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Data for Name: heroes; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.heroes VALUES ('Jared', 'Brewster', 'M', 'człowiek', 15, 10, 250, 50, 2);
INSERT INTO public.heroes VALUES ('Gal', 'Krzywonóg', 'K', 'hobbit', 8, 12, 100, 0, 3);
INSERT INTO public.heroes VALUES ('Jan', 'Błysk', 'M', 'człowiek', 5, 30, 130, 450, 4);
INSERT INTO public.heroes VALUES ('Olive', 'Ironfist', 'K', 'krasnolud', 32, 8, 380, 120, 5);
INSERT INTO public.heroes VALUES ('Mika', 'Kleefan', 'M', 'człowiek', 20, 25, 220, 250, 6);
INSERT INTO public.heroes VALUES ('Brass', 'Comtel', 'M', 'elf', 15, 19, 150, 210, 1);
INSERT INTO public.heroes VALUES ('Fandrel', 'Glowhand', 'M', 'elf', 15, 32, 180, 210, 7);
INSERT INTO public.heroes VALUES ('Axel', 'deBoom', 'M', 'krasnolud', 35, 5, 340, 190, 8);
INSERT INTO public.heroes VALUES ('Moira', 'Srebrnolica', 'K', 'krasnolud', 38, 12, 290, 130, 9);
INSERT INTO public.heroes VALUES ('Brandon', 'Tuk', 'K', 'hobbit', 22, 12, 210, 0, 10);



--
-- Name: heroes_hero_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.heroes_hero_id_seq', 11, true);


--
-- Name: heroes heroes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.heroes
    ADD CONSTRAINT heroes_pkey PRIMARY KEY (hero_id);


--
-- PostgreSQL database dump complete
--

