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
    games_played integer,
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
    username character varying(30),
    best_game integer
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

INSERT INTO public.games VALUES (37, 1, 39);
INSERT INTO public.games VALUES (38, 951, 40);
INSERT INTO public.games VALUES (39, 259, 41);
INSERT INTO public.games VALUES (40, 155, 41);
INSERT INTO public.games VALUES (41, 218, 40);
INSERT INTO public.games VALUES (42, 117, 40);
INSERT INTO public.games VALUES (43, 701, 40);
INSERT INTO public.games VALUES (44, 317, 42);
INSERT INTO public.games VALUES (45, 955, 42);
INSERT INTO public.games VALUES (46, 294, 43);
INSERT INTO public.games VALUES (47, 769, 43);
INSERT INTO public.games VALUES (48, 911, 43);
INSERT INTO public.games VALUES (49, 7, 39);
INSERT INTO public.games VALUES (50, 1, 39);
INSERT INTO public.games VALUES (51, 8, 44);
INSERT INTO public.games VALUES (52, 4, 44);
INSERT INTO public.games VALUES (53, 572, 45);
INSERT INTO public.games VALUES (54, 304, 46);
INSERT INTO public.games VALUES (55, 549, 46);
INSERT INTO public.games VALUES (56, 797, 45);
INSERT INTO public.games VALUES (57, 653, 45);
INSERT INTO public.games VALUES (58, 257, 45);
INSERT INTO public.games VALUES (59, 100, 47);
INSERT INTO public.games VALUES (60, 415, 48);
INSERT INTO public.games VALUES (61, 98, 48);
INSERT INTO public.games VALUES (62, 862, 47);
INSERT INTO public.games VALUES (63, 960, 47);
INSERT INTO public.games VALUES (64, 252, 47);
INSERT INTO public.games VALUES (65, 75, 49);
INSERT INTO public.games VALUES (66, 77, 49);
INSERT INTO public.games VALUES (67, 10, 50);
INSERT INTO public.games VALUES (68, 570, 50);
INSERT INTO public.games VALUES (69, 280, 49);
INSERT INTO public.games VALUES (70, 1000, 49);
INSERT INTO public.games VALUES (71, 463, 49);
INSERT INTO public.games VALUES (72, 917, 51);
INSERT INTO public.games VALUES (73, 746, 52);
INSERT INTO public.games VALUES (74, 410, 52);
INSERT INTO public.games VALUES (75, 419, 51);
INSERT INTO public.games VALUES (76, 415, 51);
INSERT INTO public.games VALUES (77, 245, 51);
INSERT INTO public.games VALUES (78, 639, 53);
INSERT INTO public.games VALUES (79, 850, 54);
INSERT INTO public.games VALUES (80, 551, 54);
INSERT INTO public.games VALUES (81, 969, 53);
INSERT INTO public.games VALUES (82, 19, 53);
INSERT INTO public.games VALUES (83, 593, 53);
INSERT INTO public.games VALUES (84, 141, 55);
INSERT INTO public.games VALUES (85, 27, 56);
INSERT INTO public.games VALUES (86, 883, 56);
INSERT INTO public.games VALUES (87, 136, 55);
INSERT INTO public.games VALUES (88, 699, 55);
INSERT INTO public.games VALUES (89, 701, 55);
INSERT INTO public.games VALUES (90, 839, 58);
INSERT INTO public.games VALUES (91, 89, 57);
INSERT INTO public.games VALUES (92, 303, 57);
INSERT INTO public.games VALUES (93, 343, 57);
INSERT INTO public.games VALUES (94, 168, 60);
INSERT INTO public.games VALUES (95, 869, 61);
INSERT INTO public.games VALUES (96, 867, 61);
INSERT INTO public.games VALUES (97, 379, 60);
INSERT INTO public.games VALUES (98, 261, 60);
INSERT INTO public.games VALUES (99, 207, 60);
INSERT INTO public.games VALUES (100, 647, 62);
INSERT INTO public.games VALUES (101, 38, 62);
INSERT INTO public.games VALUES (102, 3, 63);
INSERT INTO public.games VALUES (103, 379, 63);
INSERT INTO public.games VALUES (104, 110, 62);
INSERT INTO public.games VALUES (105, 924, 62);
INSERT INTO public.games VALUES (106, 361, 62);
INSERT INTO public.games VALUES (107, 891, 64);
INSERT INTO public.games VALUES (108, 512, 64);
INSERT INTO public.games VALUES (109, 734, 65);
INSERT INTO public.games VALUES (110, 983, 64);
INSERT INTO public.games VALUES (111, 512, 64);
INSERT INTO public.games VALUES (112, 822, 64);
INSERT INTO public.games VALUES (113, 268, 66);
INSERT INTO public.games VALUES (114, 757, 66);
INSERT INTO public.games VALUES (115, 274, 67);
INSERT INTO public.games VALUES (116, 378, 67);
INSERT INTO public.games VALUES (117, 510, 66);
INSERT INTO public.games VALUES (118, 699, 66);
INSERT INTO public.games VALUES (119, 375, 66);
INSERT INTO public.games VALUES (120, 877, 68);
INSERT INTO public.games VALUES (121, 482, 68);
INSERT INTO public.games VALUES (122, 598, 69);
INSERT INTO public.games VALUES (123, 358, 69);
INSERT INTO public.games VALUES (124, 349, 68);
INSERT INTO public.games VALUES (125, 349, 68);
INSERT INTO public.games VALUES (126, 927, 68);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (39, 'hc', 1);
INSERT INTO public.users VALUES (40, 'user_1690790699221', 951);
INSERT INTO public.users VALUES (41, 'user_1690790699220', 259);
INSERT INTO public.users VALUES (42, 'user_1690790728249', 317);
INSERT INTO public.users VALUES (43, 'user_1690790728250', 294);
INSERT INTO public.users VALUES (44, 'yc', 8);
INSERT INTO public.users VALUES (45, 'user_1690791373605', 572);
INSERT INTO public.users VALUES (46, 'user_1690791373604', 304);
INSERT INTO public.users VALUES (47, 'user_1690791489429', 100);
INSERT INTO public.users VALUES (48, 'user_1690791489428', 415);
INSERT INTO public.users VALUES (49, 'user_1690791588811', 75);
INSERT INTO public.users VALUES (50, 'user_1690791588810', 10);
INSERT INTO public.users VALUES (51, 'user_1690791657111', 917);
INSERT INTO public.users VALUES (52, 'user_1690791657110', 746);
INSERT INTO public.users VALUES (53, 'user_1690791713586', 639);
INSERT INTO public.users VALUES (54, 'user_1690791713585', 850);
INSERT INTO public.users VALUES (55, 'user_1690791749653', 141);
INSERT INTO public.users VALUES (56, 'user_1690791749652', 27);
INSERT INTO public.users VALUES (58, 'user_1690791915433', 839);
INSERT INTO public.users VALUES (57, 'user_1690791915434', 89);
INSERT INTO public.users VALUES (59, 'ere', NULL);
INSERT INTO public.users VALUES (60, 'user_1690792014074', 168);
INSERT INTO public.users VALUES (61, 'user_1690792014073', 869);
INSERT INTO public.users VALUES (62, 'user_1690792215349', 647);
INSERT INTO public.users VALUES (63, 'user_1690792215348', 3);
INSERT INTO public.users VALUES (64, 'user_1690792269733', 891);
INSERT INTO public.users VALUES (65, 'user_1690792269732', 734);
INSERT INTO public.users VALUES (66, 'user_1690792284456', 268);
INSERT INTO public.users VALUES (67, 'user_1690792284455', 274);
INSERT INTO public.users VALUES (68, 'user_1690792388297', 877);
INSERT INTO public.users VALUES (69, 'user_1690792388296', 598);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 126, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 69, true);


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
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

