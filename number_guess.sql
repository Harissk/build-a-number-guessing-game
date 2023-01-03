--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
    number_guesses integer NOT NULL,
    user_id integer
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
    username character varying(20) NOT NULL
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

INSERT INTO public.games VALUES (1, 999, 1);
INSERT INTO public.games VALUES (2, 333, 1);
INSERT INTO public.games VALUES (3, 422, 2);
INSERT INTO public.games VALUES (4, 676, 2);
INSERT INTO public.games VALUES (5, 336, 1);
INSERT INTO public.games VALUES (6, 136, 1);
INSERT INTO public.games VALUES (7, 677, 1);
INSERT INTO public.games VALUES (8, 10, 3);
INSERT INTO public.games VALUES (9, 157, 4);
INSERT INTO public.games VALUES (10, 79, 4);
INSERT INTO public.games VALUES (11, 744, 5);
INSERT INTO public.games VALUES (12, 851, 5);
INSERT INTO public.games VALUES (13, 224, 4);
INSERT INTO public.games VALUES (14, 656, 4);
INSERT INTO public.games VALUES (15, 251, 4);
INSERT INTO public.games VALUES (16, 598, 6);
INSERT INTO public.games VALUES (17, 256, 6);
INSERT INTO public.games VALUES (18, 566, 7);
INSERT INTO public.games VALUES (19, 412, 7);
INSERT INTO public.games VALUES (20, 981, 6);
INSERT INTO public.games VALUES (21, 212, 6);
INSERT INTO public.games VALUES (22, 660, 6);
INSERT INTO public.games VALUES (23, 10, 8);
INSERT INTO public.games VALUES (24, 206, 9);
INSERT INTO public.games VALUES (25, 35, 9);
INSERT INTO public.games VALUES (26, 861, 10);
INSERT INTO public.games VALUES (27, 832, 10);
INSERT INTO public.games VALUES (28, 459, 9);
INSERT INTO public.games VALUES (29, 457, 9);
INSERT INTO public.games VALUES (30, 576, 9);
INSERT INTO public.games VALUES (31, 929, 11);
INSERT INTO public.games VALUES (32, 409, 11);
INSERT INTO public.games VALUES (33, 269, 12);
INSERT INTO public.games VALUES (34, 110, 12);
INSERT INTO public.games VALUES (35, 737, 11);
INSERT INTO public.games VALUES (36, 355, 11);
INSERT INTO public.games VALUES (37, 223, 11);
INSERT INTO public.games VALUES (38, 10, 3);
INSERT INTO public.games VALUES (39, 630, 13);
INSERT INTO public.games VALUES (40, 163, 13);
INSERT INTO public.games VALUES (41, 903, 14);
INSERT INTO public.games VALUES (42, 336, 14);
INSERT INTO public.games VALUES (43, 96, 13);
INSERT INTO public.games VALUES (44, 807, 13);
INSERT INTO public.games VALUES (45, 639, 13);
INSERT INTO public.games VALUES (46, 8, 15);
INSERT INTO public.games VALUES (47, 671, 16);
INSERT INTO public.games VALUES (48, 28, 16);
INSERT INTO public.games VALUES (49, 953, 17);
INSERT INTO public.games VALUES (50, 667, 17);
INSERT INTO public.games VALUES (51, 67, 16);
INSERT INTO public.games VALUES (52, 701, 16);
INSERT INTO public.games VALUES (53, 811, 16);
INSERT INTO public.games VALUES (54, 383, 18);
INSERT INTO public.games VALUES (55, 812, 18);
INSERT INTO public.games VALUES (56, 214, 19);
INSERT INTO public.games VALUES (57, 999, 19);
INSERT INTO public.games VALUES (58, 313, 18);
INSERT INTO public.games VALUES (59, 243, 18);
INSERT INTO public.games VALUES (60, 951, 18);
INSERT INTO public.games VALUES (61, 610, 20);
INSERT INTO public.games VALUES (62, 876, 20);
INSERT INTO public.games VALUES (63, 969, 21);
INSERT INTO public.games VALUES (64, 420, 21);
INSERT INTO public.games VALUES (65, 780, 20);
INSERT INTO public.games VALUES (66, 343, 20);
INSERT INTO public.games VALUES (67, 988, 20);
INSERT INTO public.games VALUES (68, 232, 22);
INSERT INTO public.games VALUES (69, 388, 22);
INSERT INTO public.games VALUES (70, 826, 23);
INSERT INTO public.games VALUES (71, 847, 23);
INSERT INTO public.games VALUES (72, 484, 22);
INSERT INTO public.games VALUES (73, 227, 22);
INSERT INTO public.games VALUES (74, 535, 22);
INSERT INTO public.games VALUES (75, 325, 24);
INSERT INTO public.games VALUES (76, 433, 24);
INSERT INTO public.games VALUES (77, 786, 25);
INSERT INTO public.games VALUES (78, 151, 25);
INSERT INTO public.games VALUES (79, 674, 24);
INSERT INTO public.games VALUES (80, 902, 24);
INSERT INTO public.games VALUES (81, 792, 24);
INSERT INTO public.games VALUES (82, 777, 26);
INSERT INTO public.games VALUES (83, 887, 26);
INSERT INTO public.games VALUES (84, 849, 27);
INSERT INTO public.games VALUES (85, 269, 27);
INSERT INTO public.games VALUES (86, 832, 26);
INSERT INTO public.games VALUES (87, 355, 26);
INSERT INTO public.games VALUES (88, 36, 26);
INSERT INTO public.games VALUES (89, 528, 28);
INSERT INTO public.games VALUES (90, 578, 28);
INSERT INTO public.games VALUES (91, 748, 29);
INSERT INTO public.games VALUES (92, 923, 29);
INSERT INTO public.games VALUES (93, 237, 28);
INSERT INTO public.games VALUES (94, 719, 28);
INSERT INTO public.games VALUES (95, 868, 28);
INSERT INTO public.games VALUES (96, 70, 30);
INSERT INTO public.games VALUES (97, 901, 30);
INSERT INTO public.games VALUES (98, 289, 31);
INSERT INTO public.games VALUES (99, 678, 31);
INSERT INTO public.games VALUES (100, 904, 30);
INSERT INTO public.games VALUES (101, 717, 30);
INSERT INTO public.games VALUES (102, 77, 30);
INSERT INTO public.games VALUES (103, 957, 32);
INSERT INTO public.games VALUES (104, 62, 32);
INSERT INTO public.games VALUES (105, 489, 33);
INSERT INTO public.games VALUES (106, 443, 33);
INSERT INTO public.games VALUES (107, 917, 32);
INSERT INTO public.games VALUES (108, 59, 32);
INSERT INTO public.games VALUES (109, 979, 32);
INSERT INTO public.games VALUES (110, 686, 34);
INSERT INTO public.games VALUES (111, 779, 34);
INSERT INTO public.games VALUES (112, 165, 35);
INSERT INTO public.games VALUES (113, 481, 35);
INSERT INTO public.games VALUES (114, 39, 34);
INSERT INTO public.games VALUES (115, 954, 34);
INSERT INTO public.games VALUES (116, 57, 34);
INSERT INTO public.games VALUES (117, 492, 36);
INSERT INTO public.games VALUES (118, 330, 36);
INSERT INTO public.games VALUES (119, 776, 37);
INSERT INTO public.games VALUES (120, 458, 37);
INSERT INTO public.games VALUES (121, 94, 36);
INSERT INTO public.games VALUES (122, 856, 36);
INSERT INTO public.games VALUES (123, 6, 36);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1672784535346');
INSERT INTO public.users VALUES (2, 'user_1672784535345');
INSERT INTO public.users VALUES (3, 'haris');
INSERT INTO public.users VALUES (4, 'user_1672784661678');
INSERT INTO public.users VALUES (5, 'user_1672784661677');
INSERT INTO public.users VALUES (6, 'user_1672784835422');
INSERT INTO public.users VALUES (7, 'user_1672784835421');
INSERT INTO public.users VALUES (8, 'sdada');
INSERT INTO public.users VALUES (9, 'user_1672784943929');
INSERT INTO public.users VALUES (10, 'user_1672784943928');
INSERT INTO public.users VALUES (11, 'user_1672785003472');
INSERT INTO public.users VALUES (12, 'user_1672785003471');
INSERT INTO public.users VALUES (13, 'user_1672785075021');
INSERT INTO public.users VALUES (14, 'user_1672785075020');
INSERT INTO public.users VALUES (15, 'skend');
INSERT INTO public.users VALUES (16, 'user_1672785170963');
INSERT INTO public.users VALUES (17, 'user_1672785170962');
INSERT INTO public.users VALUES (18, 'user_1672785460575');
INSERT INTO public.users VALUES (19, 'user_1672785460574');
INSERT INTO public.users VALUES (20, 'user_1672785481372');
INSERT INTO public.users VALUES (21, 'user_1672785481371');
INSERT INTO public.users VALUES (22, 'user_1672785521955');
INSERT INTO public.users VALUES (23, 'user_1672785521954');
INSERT INTO public.users VALUES (24, 'user_1672785575767');
INSERT INTO public.users VALUES (25, 'user_1672785575766');
INSERT INTO public.users VALUES (26, 'user_1672785579313');
INSERT INTO public.users VALUES (27, 'user_1672785579312');
INSERT INTO public.users VALUES (28, 'user_1672785770715');
INSERT INTO public.users VALUES (29, 'user_1672785770714');
INSERT INTO public.users VALUES (30, 'user_1672786070318');
INSERT INTO public.users VALUES (31, 'user_1672786070317');
INSERT INTO public.users VALUES (32, 'user_1672786076868');
INSERT INTO public.users VALUES (33, 'user_1672786076867');
INSERT INTO public.users VALUES (34, 'user_1672786313420');
INSERT INTO public.users VALUES (35, 'user_1672786313419');
INSERT INTO public.users VALUES (36, 'user_1672786319046');
INSERT INTO public.users VALUES (37, 'user_1672786319045');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 123, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 37, true);


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

