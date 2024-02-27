--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2 (Postgres.app)
-- Dumped by pg_dump version 16.2 (Postgres.app)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: matteobonetto
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_milions_of_years integer,
    galaxy_type text NOT NULL
);


ALTER TABLE public.galaxy OWNER TO matteobonetto;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: matteobonetto
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNER TO matteobonetto;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: matteobonetto
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: matteobonetto
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_milions_of_years integer,
    distance_from_earth_in_milions_of_km numeric(20,2) NOT NULL,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO matteobonetto;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: matteobonetto
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.moon_moon_id_seq OWNER TO matteobonetto;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: matteobonetto
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: more_info; Type: TABLE; Schema: public; Owner: matteobonetto
--

CREATE TABLE public.more_info (
    more_info_id integer NOT NULL,
    planet_id integer NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.more_info OWNER TO matteobonetto;

--
-- Name: more_info_more_info_id_seq; Type: SEQUENCE; Schema: public; Owner: matteobonetto
--

CREATE SEQUENCE public.more_info_more_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.more_info_more_info_id_seq OWNER TO matteobonetto;

--
-- Name: more_info_more_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: matteobonetto
--

ALTER SEQUENCE public.more_info_more_info_id_seq OWNED BY public.more_info.more_info_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: matteobonetto
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_life boolean,
    is_spherical boolean,
    age_in_milions_of_years integer,
    distance_from_earth numeric(20,2),
    size_in_milions_of_km numeric(20,2) NOT NULL,
    star_id integer,
    more_info_id integer
);


ALTER TABLE public.planet OWNER TO matteobonetto;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: matteobonetto
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.planet_planet_id_seq OWNER TO matteobonetto;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: matteobonetto
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: matteobonetto
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_milions_of_years integer NOT NULL,
    distance_from_earth numeric(20,2),
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO matteobonetto;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: matteobonetto
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.star_star_id_seq OWNER TO matteobonetto;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: matteobonetto
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: matteobonetto
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: matteobonetto
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: more_info more_info_id; Type: DEFAULT; Schema: public; Owner: matteobonetto
--

ALTER TABLE ONLY public.more_info ALTER COLUMN more_info_id SET DEFAULT nextval('public.more_info_more_info_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: matteobonetto
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: matteobonetto
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: matteobonetto
--

COPY public.galaxy (galaxy_id, name, age_in_milions_of_years, galaxy_type) FROM stdin;
2	Andromeda	10010	Barred Spiral
1	Milky Way	13610	Barred Spiral
3	Tadpole	300	Barred Spiral
4	Cartwheel	400	Double Ring
6	Sculptur	11	Spiral
5	Black Eye	9	Spiral
\.


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: matteobonetto
--

COPY public.moon (moon_id, name, age_in_milions_of_years, distance_from_earth_in_milions_of_km, planet_id) FROM stdin;
1	Moon	4500	0.38	6
2	Io	4500	0.50	1
3	Europa	4500	0.67	1
4	Callisto	4500	1.89	1
5	Themisto	4500	7.50	1
6	Leda	4500	11.09	1
7	Ersa	4500	17.98	1
8	Pandia	4500	20.33	1
9	Dia	4500	23.96	1
10	Carpo	4500	17.04	1
11	Euphene	4500	19.22	1
12	Mneme	4500	20.87	1
13	Orthosie	4500	20.33	1
14	Helike	4500	21.89	1
15	Thyone	4500	21.91	1
16	Anake	4500	21.28	1
17	Corme	4500	23.19	1
18	Herse	4500	23.56	1
19	Sponde	4500	24.56	1
20	Sinope	4500	23.31	1
21	Aoede	4500	23.27	1
\.


--
-- Data for Name: more_info; Type: TABLE DATA; Schema: public; Owner: matteobonetto
--

COPY public.more_info (more_info_id, planet_id, description) FROM stdin;
1	1	The biggest planet in the solar system. It is famous for the tornado that keeps spinning on his surface.
2	2	It is called The Red Planet. It has got a solid surface and craters.
3	3	The colests planet to the Sun.
4	4	Gas planet famous for its asteroids rings.
5	5	It looks green / blue and has about 20 moons. It is made of rocks, ice and methane.
6	6	The planet we live in.
7	7	Its winds are the strongest and fastest in the solar system.
8	8	It has been reclassified to dwarf planet and its moon is larger than it.
9	9	It appears orange to the human eye and it is approaching the Sun.
10	10	It is colder than the Sun, but has got 2 planets orbitating around it.
11	11	It belongs to a system where a planet is locatd inside the habital zone, therefore there might be liquid water and life
12	12	Its rotation speed is so slow a day actually last almost as one year.
\.


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: matteobonetto
--

COPY public.planet (planet_id, name, has_life, is_spherical, age_in_milions_of_years, distance_from_earth, size_in_milions_of_km, star_id, more_info_id) FROM stdin;
1	Jupiter	f	t	4600	714.00	139822.00	7	1
2	Mars	f	t	4603	225.00	6779.00	7	2
3	Mercury	f	t	4503	207.00	4879.00	7	3
4	Saturn	f	t	4600	1427.00	120000.00	7	4
5	Uranus	f	t	4503	2970.00	50724.00	7	5
7	Neptune	f	t	4503	4350.00	49244.00	7	7
8	Pluto	f	t	4600	7500.00	1151.00	7	8
9	75 Ceti	f	t	1400	2535000000.00	1474884.00	7	9
10	83 Leonis A	f	t	8090000	558200000.00	1336.00	7	10
11	Kepler 68	f	t	6840	18363000000.00	874882.00	7	11
6	Earth	t	t	4543	0.00	12756.00	7	6
12	Venus	f	t	4503	61.00	12104.00	7	12
\.


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: matteobonetto
--

COPY public.star (star_id, name, age_in_milions_of_years, distance_from_earth, galaxy_id) FROM stdin;
1	Syrius	228	813600000.00	1
2	Canopus	10	2923000000.00	1
3	Alpha Centauri	4850	41315000.00	1
4	Vega	455	236500000.00	1
5	Rigel	8	8176909000.00	1
6	Altair	100	160800000.00	1
7	Sun	4600	150.00	1
\.


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: matteobonetto
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: matteobonetto
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: more_info_more_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: matteobonetto
--

SELECT pg_catalog.setval('public.more_info_more_info_id_seq', 13, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: matteobonetto
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: matteobonetto
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: matteobonetto
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: matteobonetto
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: matteobonetto
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: matteobonetto
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: more_info more_info_pkey; Type: CONSTRAINT; Schema: public; Owner: matteobonetto
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_pkey PRIMARY KEY (more_info_id);


--
-- Name: more_info more_info_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: matteobonetto
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_planet_id_key UNIQUE (planet_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: matteobonetto
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: matteobonetto
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: matteobonetto
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: matteobonetto
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: matteobonetto
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: planet more_info_id; Type: FK CONSTRAINT; Schema: public; Owner: matteobonetto
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT more_info_id FOREIGN KEY (more_info_id) REFERENCES public.more_info(more_info_id);


--
-- Name: moon planet_id; Type: FK CONSTRAINT; Schema: public; Owner: matteobonetto
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet star_id; Type: FK CONSTRAINT; Schema: public; Owner: matteobonetto
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

