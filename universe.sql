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
    name character varying(40) NOT NULL,
    type character varying(20),
    colour character varying(20),
    million_ligth_years_distance numeric(5,2)
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
    orbital_period_days numeric(5,2),
    galaxy_id integer NOT NULL,
    planet_id integer NOT NULL,
    name character varying(30)
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
    orbital_period_days numeric(5,2),
    size_kg integer,
    description text,
    have_moon boolean NOT NULL,
    galaxy_id integer,
    have_life boolean NOT NULL,
    star_id integer
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
-- Name: planetary_sistem; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planetary_sistem (
    planet_id integer NOT NULL,
    galaxy_id integer NOT NULL,
    planetary_sistem_id integer NOT NULL,
    name character varying(30)
);


ALTER TABLE public.planetary_sistem OWNER TO freecodecamp;

--
-- Name: planetary_sistem_planetary_sistem_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planetary_sistem_planetary_sistem_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planetary_sistem_planetary_sistem_id_seq OWNER TO freecodecamp;

--
-- Name: planetary_sistem_planetary_sistem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planetary_sistem_planetary_sistem_id_seq OWNED BY public.planetary_sistem.planetary_sistem_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40) NOT NULL,
    galaxy_id integer,
    earth_distance integer,
    colour character varying(20)
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
-- Name: planetary_sistem planetary_sistem_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planetary_sistem ALTER COLUMN planetary_sistem_id SET DEFAULT nextval('public.planetary_sistem_planetary_sistem_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Via Lactea', 'spiral', NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'spiral', NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Sagitario', 'eliptic', 'red', 0.07);
INSERT INTO public.galaxy VALUES (4, 'Android', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Messianic', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Arbusrt', NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 27.00, 1, 1, 'Moon');
INSERT INTO public.moon VALUES (2, NULL, 1, 1, 'Europe');
INSERT INTO public.moon VALUES (3, NULL, 1, 7, 'Sagi');
INSERT INTO public.moon VALUES (4, NULL, 1, 3, 'Deimos');
INSERT INTO public.moon VALUES (5, NULL, 1, 6, 'Calisto');
INSERT INTO public.moon VALUES (6, NULL, 1, 6, 'Io');
INSERT INTO public.moon VALUES (7, NULL, 1, 7, 'Titan');
INSERT INTO public.moon VALUES (8, NULL, 1, 7, 'Encelado');
INSERT INTO public.moon VALUES (9, NULL, 1, 7, 'Mimas');
INSERT INTO public.moon VALUES (10, NULL, 1, 8, 'Triton');
INSERT INTO public.moon VALUES (11, NULL, 1, 8, 'Proteo');
INSERT INTO public.moon VALUES (12, NULL, 1, 9, 'Miranda');
INSERT INTO public.moon VALUES (13, NULL, 1, 9, 'Oberon');
INSERT INTO public.moon VALUES (14, NULL, 1, 9, 'Ariel');
INSERT INTO public.moon VALUES (15, NULL, 1, 7, 'Dione');
INSERT INTO public.moon VALUES (16, NULL, 1, 7, 'Rea');
INSERT INTO public.moon VALUES (17, NULL, 1, 7, 'Caronte');
INSERT INTO public.moon VALUES (18, NULL, 1, 9, 'Nix');
INSERT INTO public.moon VALUES (19, NULL, 1, 9, 'Sateli');
INSERT INTO public.moon VALUES (20, NULL, 1, 9, 'Minion');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 365.00, NULL, NULL, true, 1, true, 1);
INSERT INTO public.planet VALUES (6, 'Jupiter', NULL, NULL, NULL, true, 1, false, 2);
INSERT INTO public.planet VALUES (7, 'Saturn', NULL, NULL, NULL, true, 1, false, 2);
INSERT INTO public.planet VALUES (8, 'Neptune', NULL, NULL, NULL, true, 1, false, 2);
INSERT INTO public.planet VALUES (9, 'Uranus', NULL, NULL, NULL, true, 1, false, 2);
INSERT INTO public.planet VALUES (4, 'Venus', NULL, NULL, NULL, false, 1, false, 2);
INSERT INTO public.planet VALUES (3, 'Mars', 687.00, NULL, NULL, true, 1, false, 2);
INSERT INTO public.planet VALUES (5, 'Mercury', 88.00, NULL, NULL, false, 1, false, 2);
INSERT INTO public.planet VALUES (10, 'K2-377 b', NULL, NULL, NULL, true, NULL, false, 2);
INSERT INTO public.planet VALUES (11, '51 Pegasi b', NULL, NULL, NULL, false, NULL, false, 2);
INSERT INTO public.planet VALUES (12, 'Kepler 187', NULL, NULL, NULL, false, NULL, false, 2);
INSERT INTO public.planet VALUES (13, 'Tatoide', NULL, NULL, NULL, false, NULL, false, 2);
INSERT INTO public.planet VALUES (14, 'Kepler 852', NULL, NULL, NULL, false, NULL, false, 2);


--
-- Data for Name: planetary_sistem; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planetary_sistem VALUES (1, 1, 1, 'Solar_System');
INSERT INTO public.planetary_sistem VALUES (3, 1, 2, 'Solar_System');
INSERT INTO public.planetary_sistem VALUES (5, 1, 5, 'Solar_System');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'falopinha', 1, NULL, NULL);
INSERT INTO public.star VALUES (2, 'Sun', 1, NULL, NULL);
INSERT INTO public.star VALUES (3, 'Barnard', 1, NULL, 'white');
INSERT INTO public.star VALUES (4, 'Sage', 1, NULL, NULL);
INSERT INTO public.star VALUES (5, 'Maga', 1, NULL, NULL);
INSERT INTO public.star VALUES (6, 'Androide', 1, NULL, NULL);


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: planetary_sistem_planetary_sistem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planetary_sistem_planetary_sistem_id_seq', 6, true);


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
-- Name: planet name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT name UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planetary_sistem planetary_sistem_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planetary_sistem
    ADD CONSTRAINT planetary_sistem_pkey PRIMARY KEY (planetary_sistem_id);


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
-- Name: planetary_sistem unique_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planetary_sistem
    ADD CONSTRAINT unique_planet UNIQUE (planet_id);


--
-- Name: moon moon_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: planetary_sistem planetary_sistem_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planetary_sistem
    ADD CONSTRAINT planetary_sistem_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: planetary_sistem planetary_sistem_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planetary_sistem
    ADD CONSTRAINT planetary_sistem_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

