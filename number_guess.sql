--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
    user_id integer,
    guesses integer NOT NULL
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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 13, 3);
INSERT INTO public.games VALUES (2, 14, 4);
INSERT INTO public.games VALUES (3, 14, 3);
INSERT INTO public.games VALUES (4, 15, 2);
INSERT INTO public.games VALUES (5, 15, 9);
INSERT INTO public.games VALUES (6, 14, 5);
INSERT INTO public.games VALUES (7, 14, 12);
INSERT INTO public.games VALUES (8, 14, 2);
INSERT INTO public.games VALUES (9, 16, 5);
INSERT INTO public.games VALUES (10, 16, 9);
INSERT INTO public.games VALUES (11, 17, 10);
INSERT INTO public.games VALUES (12, 17, 10);
INSERT INTO public.games VALUES (13, 16, 10);
INSERT INTO public.games VALUES (14, 16, 12);
INSERT INTO public.games VALUES (15, 16, 10);
INSERT INTO public.games VALUES (16, 18, 5);
INSERT INTO public.games VALUES (17, 18, 6);
INSERT INTO public.games VALUES (18, 19, 2);
INSERT INTO public.games VALUES (19, 19, 2);
INSERT INTO public.games VALUES (20, 18, 13);
INSERT INTO public.games VALUES (21, 18, 9);
INSERT INTO public.games VALUES (22, 18, 7);
INSERT INTO public.games VALUES (23, 20, 9);
INSERT INTO public.games VALUES (24, 20, 5);
INSERT INTO public.games VALUES (25, 21, 7);
INSERT INTO public.games VALUES (26, 21, 11);
INSERT INTO public.games VALUES (27, 20, 12);
INSERT INTO public.games VALUES (28, 20, 9);
INSERT INTO public.games VALUES (29, 20, 5);
INSERT INTO public.games VALUES (30, 22, 11);
INSERT INTO public.games VALUES (31, 22, 8);
INSERT INTO public.games VALUES (32, 23, 10);
INSERT INTO public.games VALUES (33, 23, 3);
INSERT INTO public.games VALUES (34, 22, 6);
INSERT INTO public.games VALUES (35, 22, 5);
INSERT INTO public.games VALUES (36, 22, 11);
INSERT INTO public.games VALUES (37, 24, 841);
INSERT INTO public.games VALUES (38, 24, 889);
INSERT INTO public.games VALUES (39, 25, 696);
INSERT INTO public.games VALUES (40, 25, 291);
INSERT INTO public.games VALUES (41, 24, 715);
INSERT INTO public.games VALUES (42, 24, 571);
INSERT INTO public.games VALUES (43, 24, 130);
INSERT INTO public.games VALUES (44, 26, 118);
INSERT INTO public.games VALUES (45, 26, 867);
INSERT INTO public.games VALUES (46, 27, 705);
INSERT INTO public.games VALUES (47, 27, 807);
INSERT INTO public.games VALUES (48, 26, 362);
INSERT INTO public.games VALUES (49, 26, 320);
INSERT INTO public.games VALUES (50, 26, 182);
INSERT INTO public.games VALUES (51, 28, 938);
INSERT INTO public.games VALUES (52, 28, 407);
INSERT INTO public.games VALUES (53, 29, 638);
INSERT INTO public.games VALUES (54, 29, 691);
INSERT INTO public.games VALUES (55, 28, 792);
INSERT INTO public.games VALUES (56, 28, 495);
INSERT INTO public.games VALUES (57, 28, 569);
INSERT INTO public.games VALUES (58, 30, 133);
INSERT INTO public.games VALUES (59, 30, 135);
INSERT INTO public.games VALUES (60, 31, 800);
INSERT INTO public.games VALUES (61, 31, 661);
INSERT INTO public.games VALUES (62, 30, 72);
INSERT INTO public.games VALUES (63, 30, 168);
INSERT INTO public.games VALUES (64, 30, 600);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1782832952275');
INSERT INTO public.users VALUES (2, 'user_1782832952274');
INSERT INTO public.users VALUES (3, 'user_1782832961654');
INSERT INTO public.users VALUES (4, 'user_1782832961653');
INSERT INTO public.users VALUES (5, 'user_1782833255350');
INSERT INTO public.users VALUES (6, 'user_1782833255349');
INSERT INTO public.users VALUES (7, 'user_1782834689306');
INSERT INTO public.users VALUES (8, 'user_1782834689305');
INSERT INTO public.users VALUES (9, '');
INSERT INTO public.users VALUES (10, 'user_1782835243293');
INSERT INTO public.users VALUES (11, 'user_1782835243292');
INSERT INTO public.users VALUES (12, 'sathasrani');
INSERT INTO public.users VALUES (13, 'sathsarani');
INSERT INTO public.users VALUES (14, 'user_1782835980833');
INSERT INTO public.users VALUES (15, 'user_1782835980832');
INSERT INTO public.users VALUES (16, 'user_1782835990437');
INSERT INTO public.users VALUES (17, 'user_1782835990436');
INSERT INTO public.users VALUES (18, 'user_1782836091505');
INSERT INTO public.users VALUES (19, 'user_1782836091504');
INSERT INTO public.users VALUES (20, 'user_1782836128754');
INSERT INTO public.users VALUES (21, 'user_1782836128753');
INSERT INTO public.users VALUES (22, 'user_1782836137561');
INSERT INTO public.users VALUES (23, 'user_1782836137560');
INSERT INTO public.users VALUES (24, 'user_1782836222753');
INSERT INTO public.users VALUES (25, 'user_1782836222752');
INSERT INTO public.users VALUES (26, 'user_1782836241728');
INSERT INTO public.users VALUES (27, 'user_1782836241727');
INSERT INTO public.users VALUES (28, 'user_1782836585700');
INSERT INTO public.users VALUES (29, 'user_1782836585699');
INSERT INTO public.users VALUES (30, 'user_1782836685143');
INSERT INTO public.users VALUES (31, 'user_1782836685142');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 64, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 31, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

