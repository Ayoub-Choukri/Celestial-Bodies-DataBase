--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    distance_from_earth numeric(5,2),
    galaxy_types integer,
    description text,
    name character varying(50) NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    distance_from_earth numeric(5,2),
    description text,
    is_spherical boolean,
    planet_id integer,
    name character varying(50) NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    distance_from_earth numeric(5,2),
    planet_types integer,
    description text,
    has_life boolean,
    is_spherical boolean,
    star_id integer,
    name character varying(50) NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: satelite; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.satelite (
    satelite_id integer NOT NULL,
    description text,
    name character varying(50) NOT NULL
);


ALTER TABLE public.satelite OWNER TO freecodecamp;

--
-- Name: satelite_satelite_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.satelite_satelite_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.satelite_satelite_id_seq OWNER TO freecodecamp;

--
-- Name: satelite_satelite_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.satelite_satelite_id_seq OWNED BY public.satelite.satelite_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    distance_from_earth numeric(5,2),
    description text,
    galaxy_id integer,
    name character varying(50) NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: satelite satelite_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satelite ALTER COLUMN satelite_id SET DEFAULT nextval('public.satelite_satelite_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 0.00, 1, 'The galaxy that contains our Solar System', 'Milky Way');
INSERT INTO public.galaxy VALUES (2, 2.53, 1, 'The closest major galaxy to the Milky Way', 'Andromeda');
INSERT INTO public.galaxy VALUES (3, 31.00, 1, 'A grand-design spiral galaxy located in the constellation Canes Venatici', 'Whirlpool');
INSERT INTO public.galaxy VALUES (4, 29.37, 1, 'An unbarred spiral galaxy in the constellation Virgo', 'Sombrero');
INSERT INTO public.galaxy VALUES (5, 11.40, 2, 'A lenticular galaxy in the constellation Centaurus', 'Centaurus A');
INSERT INTO public.galaxy VALUES (6, 3.03, 1, 'A spiral galaxy and member of the Local Group', 'Triangulum');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 0.00, 'The natural satellite of Earth', true, 3, 'Moon');
INSERT INTO public.moon VALUES (2, 0.53, 'The larger and innermost of the two natural satellites of Mars', true, 4, 'Phobos');
INSERT INTO public.moon VALUES (3, 0.53, 'The smaller and outer of the two natural satellites of Mars', true, 4, 'Deimos');
INSERT INTO public.moon VALUES (4, 5.20, 'The innermost of the four Galilean moons of Jupiter', true, 5, 'Io');
INSERT INTO public.moon VALUES (5, 5.20, 'The smallest of the four Galilean moons of Jupiter', true, 5, 'Europa');
INSERT INTO public.moon VALUES (6, 5.20, 'The largest and most massive of the moons of Jupiter', true, 5, 'Ganymede');
INSERT INTO public.moon VALUES (7, 5.20, 'The outermost of the four Galilean moons of Jupiter', true, 5, 'Callisto');
INSERT INTO public.moon VALUES (8, 9.58, 'The largest moon of Saturn and the second-largest natural satellite in the Solar System', true, 6, 'Titan');
INSERT INTO public.moon VALUES (9, 9.58, 'The second-largest moon of Saturn and the ninth-largest moon in the Solar System', true, 6, 'Rhea');
INSERT INTO public.moon VALUES (10, 9.58, 'The third-largest natural satellite of Saturn and the eleventh-largest moon in the Solar System', true, 6, 'Iapetus');
INSERT INTO public.moon VALUES (11, 9.58, 'The fourth-largest moon of Saturn and the fifteenth-largest moon in the Solar System', true, 6, 'Dione');
INSERT INTO public.moon VALUES (12, 30.07, 'The largest natural satellite of the planet Neptune and the seventh-largest moon in the Solar System', true, 7, 'Triton');
INSERT INTO public.moon VALUES (13, 2.55, 'A moon in the Andromeda galaxy', true, 8, 'Andromeda Moon 1');
INSERT INTO public.moon VALUES (14, 31.20, 'A moon in the Whirlpool galaxy', true, 9, 'Whirlpool Moon 1');
INSERT INTO public.moon VALUES (15, 29.50, 'A moon in the Sombrero galaxy', true, 10, 'Sombrero Moon 1');
INSERT INTO public.moon VALUES (16, 11.60, 'A moon in the Centaurus A galaxy', true, 11, 'Centaurus A Moon 1');
INSERT INTO public.moon VALUES (17, 3.05, 'A moon in the Triangulum galaxy', true, 12, 'Triangulum Moon 1');
INSERT INTO public.moon VALUES (18, 3.05, 'Another moon in the Triangulum galaxy', true, 12, 'Triangulum Moon 2');
INSERT INTO public.moon VALUES (19, 3.05, 'Yet another moon in the Triangulum galaxy', true, 12, 'Triangulum Moon 3');
INSERT INTO public.moon VALUES (20, 3.05, 'One more moon in the Triangulum galaxy', true, 12, 'Triangulum Moon 4');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 0.39, 1, 'The smallest planet in the Solar System', false, true, 1, 'Mercury');
INSERT INTO public.planet VALUES (2, 0.62, 1, 'The second planet from the Sun', false, true, 1, 'Venus');
INSERT INTO public.planet VALUES (3, 0.00, 1, 'The third planet from the Sun', true, true, 1, 'Earth');
INSERT INTO public.planet VALUES (4, 2.55, 1, 'A planet in the Andromeda galaxy', NULL, true, 2, 'Andromeda Planet 1');
INSERT INTO public.planet VALUES (5, 31.20, 1, 'A planet in the Whirlpool galaxy', NULL, true, 3, 'Whirlpool Planet 1');
INSERT INTO public.planet VALUES (6, 29.50, 1, 'A planet in the Sombrero galaxy', NULL, true, 4, 'Sombrero Planet 1');
INSERT INTO public.planet VALUES (7, 11.60, 1, 'A planet in the Centaurus A galaxy', NULL, true, 5, 'Centaurus A Planet 1');
INSERT INTO public.planet VALUES (8, 3.05, 1, 'A planet in the Triangulum galaxy', NULL, true, 6, 'Triangulum Planet 1');
INSERT INTO public.planet VALUES (9, 3.05, 1, 'Another planet in the Triangulum galaxy', NULL, true, 6, 'Triangulum Planet 2');
INSERT INTO public.planet VALUES (10, 0.53, 1, 'The fourth planet from the Sun', false, true, 1, 'Mars');
INSERT INTO public.planet VALUES (11, 5.20, 2, 'The largest planet in the Solar System', false, true, 1, 'Jupiter');
INSERT INTO public.planet VALUES (12, 9.58, 2, 'The second largest planet in the Solar System', false, true, 1, 'Saturn');


--
-- Data for Name: satelite; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.satelite VALUES (1, 'A space telescope that was launched into low Earth orbit in 1990 and remains in operation.', 'Hubble Space Telescope');
INSERT INTO public.satelite VALUES (2, 'A modular space station in low Earth orbit. It is a multinational collaborative project between NASA, Roscosmos, JAXA, ESA, and CSA.', 'International Space Station (ISS)');
INSERT INTO public.satelite VALUES (3, 'A multipurpose spacecraft designed to conduct reconnaissance and exploration of Mars from orbit. It was launched in 2005 and remains operational.', 'Mars Reconnaissance Orbiter (MRO)');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 0.00, 'The star at the center of the Solar System', 1, 'Sun');
INSERT INTO public.star VALUES (2, 2.55, 'A star in the Andromeda galaxy', 2, 'V1');
INSERT INTO public.star VALUES (3, 31.20, 'A star in the Whirlpool galaxy', 3, 'Whirlpool Star 1');
INSERT INTO public.star VALUES (4, 29.50, 'A star in the Sombrero galaxy', 4, 'Sombrero Star 1');
INSERT INTO public.star VALUES (5, 11.60, 'A star in the Centaurus A galaxy', 5, 'Centaurus A Star 1');
INSERT INTO public.star VALUES (6, 3.05, 'A star in the Triangulum galaxy', 6, 'Triangulum Star 1');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: satelite_satelite_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.satelite_satelite_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: satelite satelite_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satelite
    ADD CONSTRAINT satelite_name_key UNIQUE (name);


--
-- Name: satelite satelite_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satelite
    ADD CONSTRAINT satelite_pkey PRIMARY KEY (satelite_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--


