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
    name character varying(50) NOT NULL,
    galaxy_id integer NOT NULL,
    has_stars boolean,
    random_unique integer,
    description text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(50) NOT NULL,
    moon_id integer NOT NULL,
    planet_id integer NOT NULL,
    random_unique integer,
    description text
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(50) NOT NULL,
    planet_id integer NOT NULL,
    star_id integer NOT NULL,
    dist_from_sun numeric,
    moon_type text,
    has_moons boolean,
    random_unique integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(50) NOT NULL,
    star_id integer NOT NULL,
    galaxy_id integer NOT NULL,
    random_unique integer,
    description text
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: universe; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.universe (
    name character varying(50) NOT NULL,
    universe_id integer NOT NULL,
    number_of_planets integer,
    number_of_stars integer,
    random_unique integer
);


ALTER TABLE public.universe OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('black galaxy', 1, true, 1, 'Black galaxy with numerous stars');
INSERT INTO public.galaxy VALUES ('white galaxy', 2, true, 2, 'white galaxy with numerous stars');
INSERT INTO public.galaxy VALUES ('pink galaxy', 3, true, 3, 'pink galaxy with numerous stars');
INSERT INTO public.galaxy VALUES ('red galaxy', 4, true, 4, 'red galaxy with numerous stars');
INSERT INTO public.galaxy VALUES ('blue galaxy', 5, true, 5, 'blue galaxy with numerous stars');
INSERT INTO public.galaxy VALUES ('orange galaxy', 6, true, 6, 'orange galaxy with numerous stars');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('ALpha', 1, 1, NULL, NULL);
INSERT INTO public.moon VALUES ('Beta', 2, 1, NULL, NULL);
INSERT INTO public.moon VALUES ('Gamma', 3, 2, NULL, NULL);
INSERT INTO public.moon VALUES ('DElta', 4, 2, NULL, NULL);
INSERT INTO public.moon VALUES ('Epsilon', 5, 3, NULL, NULL);
INSERT INTO public.moon VALUES ('Zeta', 6, 3, NULL, NULL);
INSERT INTO public.moon VALUES ('Eta', 7, 4, NULL, NULL);
INSERT INTO public.moon VALUES ('Theta', 8, 4, NULL, NULL);
INSERT INTO public.moon VALUES ('Iota', 9, 5, NULL, NULL);
INSERT INTO public.moon VALUES ('Kappa', 10, 5, NULL, NULL);
INSERT INTO public.moon VALUES ('Lambda', 11, 6, NULL, NULL);
INSERT INTO public.moon VALUES ('Mu', 12, 6, NULL, NULL);
INSERT INTO public.moon VALUES ('Nu', 13, 7, NULL, NULL);
INSERT INTO public.moon VALUES ('Xi', 14, 8, NULL, NULL);
INSERT INTO public.moon VALUES ('Omicron', 15, 9, NULL, NULL);
INSERT INTO public.moon VALUES ('Pi', 16, 10, NULL, NULL);
INSERT INTO public.moon VALUES ('Rho', 17, 11, NULL, NULL);
INSERT INTO public.moon VALUES ('Sigma', 18, 12, NULL, NULL);
INSERT INTO public.moon VALUES ('Tau', 19, 12, NULL, NULL);
INSERT INTO public.moon VALUES ('Upsilon', 20, 12, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Alpha', 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('Bravo', 2, 2, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('Charlie', 3, 3, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('Delta', 4, 4, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('Echo', 5, 5, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('Foxtrot', 6, 6, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('Golf', 7, 1, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('Hotel', 8, 2, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('India', 9, 3, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('Kilo', 10, 4, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('Lima', 11, 5, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('Mike', 12, 6, NULL, NULL, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('alpha', 1, 1, 1, 'star alpha in the black galaxy');
INSERT INTO public.star VALUES ('bravo', 2, 2, 2, 'star bravo in the white galaxy');
INSERT INTO public.star VALUES ('charlie', 3, 3, 3, 'star charlie in the pink galaxy');
INSERT INTO public.star VALUES ('delta', 4, 4, 4, 'star delta in the red galaxy');
INSERT INTO public.star VALUES ('echo', 5, 5, 5, 'star echo in the blue galaxy');
INSERT INTO public.star VALUES ('foxtrot', 6, 6, 6, 'star foxtrot in the orange galaxy');


--
-- Data for Name: universe; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.universe VALUES ('black galaxy', 1, 1, 1, 1);
INSERT INTO public.universe VALUES ('white galaxy', 2, 2, 2, 2);
INSERT INTO public.universe VALUES ('pink galaxy', 3, 3, 3, 3);


--
-- Name: galaxy galaxy_random_unique_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_random_unique_key UNIQUE (random_unique);


--
-- Name: moon moon_random_unique_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_random_unique_key UNIQUE (random_unique);


--
-- Name: galaxy pk_galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT pk_galaxy_id PRIMARY KEY (galaxy_id);


--
-- Name: moon pk_moon_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT pk_moon_id PRIMARY KEY (moon_id);


--
-- Name: planet pk_planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT pk_planet_id PRIMARY KEY (planet_id);


--
-- Name: star pk_star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT pk_star_id PRIMARY KEY (star_id);


--
-- Name: universe pk_universe_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe
    ADD CONSTRAINT pk_universe_id PRIMARY KEY (universe_id);


--
-- Name: planet planet_random_unique_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_random_unique_key UNIQUE (random_unique);


--
-- Name: star star_random_unique_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_random_unique_key UNIQUE (random_unique);


--
-- Name: universe universe_random_unique_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe
    ADD CONSTRAINT universe_random_unique_key UNIQUE (random_unique);


--
-- Name: universe universe_universe_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe
    ADD CONSTRAINT universe_universe_id_key UNIQUE (universe_id);


--
-- Name: moon fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

