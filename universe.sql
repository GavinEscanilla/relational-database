--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.2)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.2)

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
    the_amount_of_stars integer NOT NULL,
    the_amount_of_planets integer NOT NULL,
    the_amount_of_moons integer NOT NULL,
    age_in_millions numeric NOT NULL,
    name character varying(40) NOT NULL,
    description text NOT NULL,
    is_spherical boolean
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
    name character varying(40) NOT NULL,
    description text NOT NULL,
    types_of_moons text NOT NULL,
    planet_id integer NOT NULL
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
    name character varying(40) NOT NULL,
    description text NOT NULL,
    has_life boolean,
    star_id integer NOT NULL
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text NOT NULL,
    types_of_suns text NOT NULL,
    galaxy_id integer NOT NULL
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
-- Name: types_of_galaxys; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.types_of_galaxys (
    types_of_galaxys_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.types_of_galaxys OWNER TO freecodecamp;

--
-- Name: types_of_galaxys_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.types_of_galaxys_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.types_of_galaxys_type_id_seq OWNER TO freecodecamp;

--
-- Name: types_of_galaxys_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.types_of_galaxys_type_id_seq OWNED BY public.types_of_galaxys.types_of_galaxys_id;


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
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: types_of_galaxys types_of_galaxys_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.types_of_galaxys ALTER COLUMN types_of_galaxys_id SET DEFAULT nextval('public.types_of_galaxys_type_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 1, 2, 3, 100, 'Milky Way', 'The Milky Way is a huge collection of stars, dust, and gas. It''s called a spiral galaxy because if you could view it from the top or bottom, it would look like a spinning pinwheel.', true);
INSERT INTO public.galaxy VALUES (2, 1, 2, 3, 100, 'Andromeda Galaxy', 'The Andromeda Galaxy is the closest spiral galaxy to the Milky Way and is on a collision course with the Milky Way. It is a spiral galaxy, which means it has a central bulge, spiral arms, and is not spherical.', false);
INSERT INTO public.galaxy VALUES (3, 1, 2, 3, 100, 'Triangulum Galaxy', 'The Triangulum Galaxy is a smaller spiral galaxy located near the Andromeda Galaxy. It contains many star-forming regions and nebulae. It is not spherical and has a relatively flat structure.', false);
INSERT INTO public.galaxy VALUES (4, 1, 2, 4, 100, 'Messier 87(M87)', 'a giant elliptical galaxy in the Virgo constellation, boasting a supermassive black hole at its core and a powerful, energetic jet of plasma, making it a prominent and fascinating object in the universe.', false);
INSERT INTO public.galaxy VALUES (5, 1, 2, 4, 100, 'Whirlpool', 'a grand-design spiral galaxy located about 23 million light-years away in the constellation Canes Venatici, famous for its prominent spiral arms and interaction with its companion galaxy, NGC 5195', false);
INSERT INTO public.galaxy VALUES (6, 1, 2, 4, 100, 'Sculptor', 'a vibrant, dusty spiral galaxy undergoing intense star formation, located in the Southern Hemisphere sky within the Sculptor constellation', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'M1', 'M1', 'm1', 1);
INSERT INTO public.moon VALUES (2, 'M2', 'M1', 'm1', 1);
INSERT INTO public.moon VALUES (3, 'M3', 'M1', 'm1', 1);
INSERT INTO public.moon VALUES (4, 'M4', 'M1', 'm1', 2);
INSERT INTO public.moon VALUES (5, 'M5', 'M1', 'm1', 2);
INSERT INTO public.moon VALUES (6, 'M6', 'M1', 'm1', 2);
INSERT INTO public.moon VALUES (7, 'M7', 'M1', 'm1', 3);
INSERT INTO public.moon VALUES (8, 'M8', 'M1', 'm1', 3);
INSERT INTO public.moon VALUES (9, 'M9', 'M1', 'm1', 3);
INSERT INTO public.moon VALUES (10, 'M10', 'M1', 'm1', 4);
INSERT INTO public.moon VALUES (11, 'M111', 'M1', 'm1', 4);
INSERT INTO public.moon VALUES (12, 'M12', 'M1', 'm1', 4);
INSERT INTO public.moon VALUES (13, 'M13', 'M1', 'm1', 4);
INSERT INTO public.moon VALUES (14, 'M14', 'M1', 'm1', 5);
INSERT INTO public.moon VALUES (15, 'M15', 'M1', 'm1', 5);
INSERT INTO public.moon VALUES (16, 'M16', 'M1', 'm1', 5);
INSERT INTO public.moon VALUES (17, 'M17', 'M1', 'm1', 5);
INSERT INTO public.moon VALUES (18, 'M18', 'M1', 'm1', 6);
INSERT INTO public.moon VALUES (19, 'M19', 'M1', 'm1', 6);
INSERT INTO public.moon VALUES (20, 'M20', 'M1', 'm1', 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'our home', true, 4);
INSERT INTO public.planet VALUES (2, 'Mars', 'martians', false, 4);
INSERT INTO public.planet VALUES (3, 'P2', 'G2-S2-P1', false, 5);
INSERT INTO public.planet VALUES (4, 'P3', 'G2-S2-P2', false, 5);
INSERT INTO public.planet VALUES (5, 'P5', 'G2-S2-P3', false, 6);
INSERT INTO public.planet VALUES (6, 'P6', 'G2-S2-P4', false, 6);
INSERT INTO public.planet VALUES (7, 'P7', 'G2-S2-P5', false, 7);
INSERT INTO public.planet VALUES (8, 'P8', 'G2-S2-P6', false, 7);
INSERT INTO public.planet VALUES (9, 'P9', 'G2-S2-P7', false, 8);
INSERT INTO public.planet VALUES (10, 'P10', 'G2-S2-P8', false, 8);
INSERT INTO public.planet VALUES (11, 'P11', 'G2-S2-P9', false, 9);
INSERT INTO public.planet VALUES (12, 'P12', 'G2-S2-P10', false, 9);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (4, 'Betelgeuse', 'Betelgeuse is one of the brightest stars in the night sky, located in the constellation Orion. It is a red supergiant nearing the end of its life and is expected to explode as a supernova within the next 100,000 years. Due to its enormous size and brightness, Betelgeuse is visible to the naked eye and has been studied extensively.', 'Red Supergiant(M-type', 1);
INSERT INTO public.star VALUES (5, 'Alpheratz', 'the brightest star in the constellation Andromeda, a binary star system, and a prominent star in the Great Square of Pegasus', 'spectral type B8IVpMnHg', 2);
INSERT INTO public.star VALUES (6, 'Alpha Trianguli', 'a multiple sub-giant star of spectral class F6 in the constellation Triangulum, with a visual magnitude of 3.41, making it visible to the naked eye in dark skies', 'spectral type B8IVpMnHg', 3);
INSERT INTO public.star VALUES (7, 'M87 supermassive blackhole', 'one of the most massive known, with a mass estimated at 6.5 billion times that of our Sun, and is also associated with a powerful, relativistic jet of plasma', 'spectral type B8IVpMnHg', 4);
INSERT INTO public.star VALUES (8, 'HD 108313', 'is a star located in the constellation Crux. It has an apparent magnitude of 7.327, making it not visible to the naked eye.', 'spectral type B8IVpMnHg', 5);
INSERT INTO public.star VALUES (9, 'HD 2612', 'is a star located in the constellation Crux. It has an apparent magnitude of 7.327, making it not visible to the naked eye.', 'spectral type B8IVpMnHg', 6);


--
-- Data for Name: types_of_galaxys; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.types_of_galaxys VALUES (1, 'g1', 'g2');
INSERT INTO public.types_of_galaxys VALUES (2, 'g2', 'g2');
INSERT INTO public.types_of_galaxys VALUES (3, 'g3', 'g2');


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
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 10, true);


--
-- Name: types_of_galaxys_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.types_of_galaxys_type_id_seq', 3, true);


--
-- Name: galaxy galaxy_id_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: moon moon_id_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: planet planet_id_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: star star_id_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id_pkey PRIMARY KEY (star_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: types_of_galaxys types_of_galaxys_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.types_of_galaxys
    ADD CONSTRAINT types_of_galaxys_name_key UNIQUE (name);


--
-- Name: types_of_galaxys types_of_galaxys_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.types_of_galaxys
    ADD CONSTRAINT types_of_galaxys_pkey PRIMARY KEY (types_of_galaxys_id);


--
-- Name: star galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

