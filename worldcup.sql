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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(50) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: games_opponent_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_opponent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_opponent_id_seq OWNER TO freecodecamp;

--
-- Name: games_opponent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_opponent_id_seq OWNED BY public.games.opponent_id;


--
-- Name: games_winner_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_winner_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_winner_id_seq OWNER TO freecodecamp;

--
-- Name: games_winner_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_winner_id_seq OWNED BY public.games.winner_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: games winner_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN winner_id SET DEFAULT nextval('public.games_winner_id_seq'::regclass);


--
-- Name: games opponent_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN opponent_id SET DEFAULT nextval('public.games_opponent_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (97, 2018, 'Final', 596, 597, 4, 2);
INSERT INTO public.games VALUES (98, 2018, 'Third Place', 598, 599, 2, 0);
INSERT INTO public.games VALUES (99, 2018, 'Semi-Final', 597, 599, 2, 1);
INSERT INTO public.games VALUES (100, 2018, 'Semi-Final', 596, 598, 1, 0);
INSERT INTO public.games VALUES (101, 2018, 'Quarter-Final', 597, 605, 3, 2);
INSERT INTO public.games VALUES (102, 2018, 'Quarter-Final', 599, 607, 2, 0);
INSERT INTO public.games VALUES (103, 2018, 'Quarter-Final', 598, 609, 2, 1);
INSERT INTO public.games VALUES (104, 2018, 'Quarter-Final', 596, 611, 2, 0);
INSERT INTO public.games VALUES (105, 2018, 'Eighth-Final', 599, 613, 2, 1);
INSERT INTO public.games VALUES (106, 2018, 'Eighth-Final', 607, 615, 1, 0);
INSERT INTO public.games VALUES (107, 2018, 'Eighth-Final', 598, 617, 3, 2);
INSERT INTO public.games VALUES (108, 2018, 'Eighth-Final', 609, 619, 2, 0);
INSERT INTO public.games VALUES (109, 2018, 'Eighth-Final', 597, 621, 2, 1);
INSERT INTO public.games VALUES (110, 2018, 'Eighth-Final', 605, 623, 2, 1);
INSERT INTO public.games VALUES (111, 2018, 'Eighth-Final', 611, 625, 2, 1);
INSERT INTO public.games VALUES (112, 2018, 'Eighth-Final', 596, 627, 4, 3);
INSERT INTO public.games VALUES (113, 2014, 'Final', 628, 627, 1, 0);
INSERT INTO public.games VALUES (114, 2014, 'Third Place', 630, 609, 3, 0);
INSERT INTO public.games VALUES (115, 2014, 'Semi-Final', 627, 630, 1, 0);
INSERT INTO public.games VALUES (116, 2014, 'Semi-Final', 628, 609, 7, 1);
INSERT INTO public.games VALUES (117, 2014, 'Quarter-Final', 630, 637, 1, 0);
INSERT INTO public.games VALUES (118, 2014, 'Quarter-Final', 627, 598, 1, 0);
INSERT INTO public.games VALUES (119, 2014, 'Quarter-Final', 609, 613, 2, 1);
INSERT INTO public.games VALUES (120, 2014, 'Quarter-Final', 628, 596, 1, 0);
INSERT INTO public.games VALUES (121, 2014, 'Eighth-Final', 609, 645, 2, 1);
INSERT INTO public.games VALUES (122, 2014, 'Eighth-Final', 613, 611, 2, 0);
INSERT INTO public.games VALUES (123, 2014, 'Eighth-Final', 596, 649, 2, 0);
INSERT INTO public.games VALUES (124, 2014, 'Eighth-Final', 628, 651, 2, 1);
INSERT INTO public.games VALUES (125, 2014, 'Eighth-Final', 630, 619, 2, 1);
INSERT INTO public.games VALUES (126, 2014, 'Eighth-Final', 637, 655, 2, 1);
INSERT INTO public.games VALUES (127, 2014, 'Eighth-Final', 627, 615, 1, 0);
INSERT INTO public.games VALUES (128, 2014, 'Eighth-Final', 598, 659, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (596, 'France');
INSERT INTO public.teams VALUES (597, 'Croatia');
INSERT INTO public.teams VALUES (598, 'Belgium');
INSERT INTO public.teams VALUES (599, 'England');
INSERT INTO public.teams VALUES (605, 'Russia');
INSERT INTO public.teams VALUES (607, 'Sweden');
INSERT INTO public.teams VALUES (609, 'Brazil');
INSERT INTO public.teams VALUES (611, 'Uruguay');
INSERT INTO public.teams VALUES (613, 'Colombia');
INSERT INTO public.teams VALUES (615, 'Switzerland');
INSERT INTO public.teams VALUES (617, 'Japan');
INSERT INTO public.teams VALUES (619, 'Mexico');
INSERT INTO public.teams VALUES (621, 'Denmark');
INSERT INTO public.teams VALUES (623, 'Spain');
INSERT INTO public.teams VALUES (625, 'Portugal');
INSERT INTO public.teams VALUES (627, 'Argentina');
INSERT INTO public.teams VALUES (628, 'Germany');
INSERT INTO public.teams VALUES (630, 'Netherlands');
INSERT INTO public.teams VALUES (637, 'Costa Rica');
INSERT INTO public.teams VALUES (645, 'Chile');
INSERT INTO public.teams VALUES (649, 'Nigeria');
INSERT INTO public.teams VALUES (651, 'Algeria');
INSERT INTO public.teams VALUES (655, 'Greece');
INSERT INTO public.teams VALUES (659, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 128, true);


--
-- Name: games_opponent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_opponent_id_seq', 64, true);


--
-- Name: games_winner_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_winner_id_seq', 64, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 659, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

