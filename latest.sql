--
-- PostgreSQL database dump
--

-- Dumped from database version 12.11 (Ubuntu 12.11-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.11 (Ubuntu 12.11-0ubuntu0.20.04.1)

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
-- Name: lobby; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.lobby (
    id Serial PRIMARY KEY,
    name character varying(25),
    admin_id integer
);


ALTER TABLE public.lobby OWNER TO yxaefovmltktpc;

--
-- Name: lobby_id_seq; Type: SEQUENCE; Schema: public; Owner: yxaefovmltktpc
--

-- ALTER TABLE public.lobby_id_seq OWNER TO yxaefovmltktpc;

--
-- Name: lobby_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yxaefovmltktpc
--

-- ALTER SEQUENCE public.lobby_id_seq OWNED BY public.lobby.id;

--
-- Name: messages; Type: TABLE; Schema: public; Owner: yxaefovmltktpc
--

CREATE TABLE public.messages (
    id Serial PRIMARY KEY,
    text text,
    author_id integer,
    lobby_id integer,
    created timestamp(0) without time zone,
    edited timestamp(0) without time zone
);


ALTER TABLE public.messages OWNER TO yxaefovmltktpc;

--
-- Name: messages_id_seq; Type: SEQUENCE; Schema: public; Owner: yxaefovmltktpc
--


-- ALTER TABLE public.messages_id_seq OWNER TO yxaefovmltktpc;

--
-- Name: messages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yxaefovmltktpc
--

-- ALTER SEQUENCE public.messages_id_seq OWNED BY public.messages.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: yxaefovmltktpc
--

CREATE TABLE public.users (
    id Serial PRIMARY KEY,
    firstname character varying(25),
    lastname character varying(25),
    username character varying(25),
    email character varying(250),
    password character varying(250),
    created_at timestamp(0) without time zone,
    admin boolean
);


ALTER TABLE public.users OWNER TO yxaefovmltktpc;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: yxaefovmltktpc
--

-- ALTER TABLE public.users_id_seq OWNER TO yxaefovmltktpc;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yxaefovmltktpc
--

-- ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;

--
-- Name: users_in_lobby; Type: TABLE; Schema: public; Owner: yxaefovmltktpc
--

CREATE TABLE public.users_in_lobby (
    id Serial PRIMARY KEY,
    lobby_id integer,
    user_id integer
);


ALTER TABLE public.users_in_lobby OWNER TO yxaefovmltktpc;

--
-- Name: users_in_lobby_id_seq; Type: SEQUENCE; Schema: public; Owner: yxaefovmltktpc
--

-- ALTER TABLE public.users_in_lobby_id_seq OWNER TO yxaefovmltktpc;

-- --
-- -- Name: users_in_lobby_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yxaefovmltktpc
-- --

-- ALTER SEQUENCE public.users_in_lobby_id_seq OWNED BY public.users_in_lobby.id;

--
-- Name: lobby id; Type: DEFAULT; Schema: public; Owner: yxaefovmltktpc
--

-- ALTER TABLE ONLY public.lobby ALTER COLUMN id SET DEFAULT nextval('public.lobby_id_seq'::regclass);

-- --
-- -- Name: messages id; Type: DEFAULT; Schema: public; Owner: yxaefovmltktpc
-- --

-- ALTER TABLE ONLY public.messages ALTER COLUMN id SET DEFAULT nextval('public.messages_id_seq'::regclass);


-- --
-- -- Name: users id; Type: DEFAULT; Schema: public; Owner: yxaefovmltktpc
-- --

-- ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


-- --
-- -- Name: users_in_lobby id; Type: DEFAULT; Schema: public; Owner: yxaefovmltktpc
-- --

-- ALTER TABLE ONLY public.users_in_lobby ALTER COLUMN id SET DEFAULT nextval('public.users_in_lobby_id_seq'::regclass);


--
-- Data for Name: lobby; Type: TABLE DATA; Schema: public; Owner: yxaefovmltktpc
--

COPY public.lobby (id, name, admin_id) FROM stdin;
5	Warriors	109
6	Eagles	110
7	Pirates	123
8	Kangaroos	124
9	Lions	125
10	Patriots	136
\.


--
-- Data for Name: messages; Type: TABLE DATA; Schema: public; Owner: yxaefovmltktpc
--

COPY public.messages (id, text, author_id, lobby_id, created, edited) FROM stdin;
14	hey man, how you doin?	110	6	2022-06-17 15:39:11	\N
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: yxaefovmltktpc
--

COPY public.users (id, firstname, lastname, username, email, password, created_at, admin) FROM stdin;
134	James	Moore	JamesM	james@moore.com	$2b$10$eLEaPXvUzInXLEIvNMkFo.E4W0OPPRCOySRFqk1cC0/D5npf0Oa9G	2022-06-17 10:21:34	f
136	Jamie	Nisbet	JamieN	jamie@nisbet.com	$2b$10$QRFNX2EWxNUttcWRp4y6Kuu2gKjd2BqzXmViw65fWxlI6Mz39yRxO	2022-06-17 12:39:19	t
109	Wayne	Rivera	WayneR	wayne@rivera.com	$2b$10$u5sVKVdWGy3mkbIgIeCo7OzOHt3pdKjOcfF9tSyHN00dGQmbFSBVG	2022-06-17 09:24:48	t
110	Jack	Clark	JackC	jack@clark.com	$2b$10$7rrDOb7mm6Lf1djbMpZ0QuH5q2V8KMLCZKdWXGc7u1.X9zc9VkvwK	2022-06-17 10:15:22	t
123	Arjan	Prins	ArjanP	arjan@prins.com	$2b$10$as3QBCF6z2c2Vc5lwQhEGuyFNxlcSPbGZRcDOzgrNizIrb6PV8fYm	2022-06-17 10:19:34	t
124	Lotta	Jung	LottaJ	lotta@jung.com	$2b$10$J23L7kAVsw3wnaz5Y98XrO9oyNTCm8ozQ1KgIw5940xfo4E/2Y8Uu	2022-06-17 10:19:42	t
125	Elina	Schafer	ElinaS	elina@schafer.com	$2b$10$fYahLH/Nz18bT0U5jWFiD.3wdiYknLdQaST7FGHskz3XUj2Xd3jHW	2022-06-17 10:19:50	t
135	Florencia	Sanchez	FlorenciaS	florencia@sanchez.com	$2b$10$i9MWu3OiOs7lhLtd0I/S6uw7qexjiQOhvxuVTDfQtxBxdVdgJ8tyO	2022-06-17 10:21:45	f
108	Rajesh	Mukopadhyay	RajM	rajesh@mukopadhyay.com	$2b$10$j2KPOwTdhilNGyITOvCH4.rvwDe9K5GZDRURPa3Pe4a/.zhREbIHS	2022-06-17 09:20:07	f
112	Ralph	Wright	RalphW	ralph@wright.com	$2b$10$c/0hedJEmNAj1phGtnGzU.G7klBNvhFKqHw0AoooAJA9rX8iNCg/e	2022-06-17 10:17:46	f
113	Mehdi	Carre	MehdiC	mehdi@carre.com	$2b$10$t94BA0qmaJrYjRVqC3hlverxwUEsln4kCQEyO1dD060aaERLhelpS	2022-06-17 10:17:56	f
114	Lena	Baron	LenaB	lena@baron.com	$2b$10$eQAiyJRIon5IC7nr0301mO9EXBZ2aUZ8WmEI/AQ1/mVrTYVP.P2qu	2022-06-17 10:18:06	f
115	Marie	Vasquez	MarieV	marie@vasquez.com	$2b$10$emHDlpEpa0Lvy26YViOXhO7m9GFK15lqPeWJXckD4ZP2P0MuaskxK	2022-06-17 10:18:26	f
116	Jeanne	Guillot	JeanneG	jeanne@guillot.com	$2b$10$NeQDap7zmXIRpNr3GGE/Ruk3hJQSVErPrJ1.nuGNPUeHHNDhyUZ2q	2022-06-17 10:18:35	f
118	Anni	Thomas	AnniT	anni@thomas.com	$2b$10$7Vxbw.wYmkxKRW.fF2TRNeczlHYvNHNYG1sn93ZWRM73xbJ2dIm1e	2022-06-17 10:18:48	f
119	Hannah	Burton	HannahB	hannah@burton.com	$2b$10$tkviPNjKrNSXAtA4A6JOqeiyu.occ2/w0wZgQutCxuvH7S0jYJZ.6	2022-06-17 10:19:00	f
120	Roger	Chapman	RogerC	roger@chapman.com	$2b$10$EAq80HHJz/jhDxlHuLr/Vuf8ORXh/44pQg548iylOntBMn5ey3Aja	2022-06-17 10:19:09	f
121	Bastien	Renard	BastienR	bastien@renard.com	$2b$10$Y1OMDva0MWVSKSggDrwtOeCr.0GG9I.AvhAQaaHlGLlRa4Lu5LKLC	2022-06-17 10:19:18	f
122	Maria	Ramos	MariaR	maria@ramos.com	$2b$10$Xh3qLKyfhnPgm/WPK4OB0ed0DYwnbK/fktIMFwecoAwLd53OTbbxm	2022-06-17 10:19:26	f
126	Demi	Cooper	DemiC	demi@cooper.com	$2b$10$adQUhPK1qyTlmEwQqD.pc.YsOg21zdX3wihDUJJKFiBYVS46vcrKW	2022-06-17 10:19:58	f
127	Syrine	Jacquet	SyrineJ	syrine@jacquet.com	$2b$10$d4xfxhGosGIRJaJi1FE1D.B/EfZ0icNHoakM8HDJ0/fFayAQ.zbCO	2022-06-17 10:20:08	f
128	Eloise	Mitchell	EloiseM	eloise@mitchell.com	$2b$10$CnsTpyD3xEdqVdoEmHysR.91ZwGr8cm9MwoRZArjJFJZg967hYeUu	2022-06-17 10:20:14	f
129	Judith	Bowman	JudithB	judith@bowman.com	$2b$10$HNIXjRYVjhZXfUTjyI2cLe/cVjQtQpPnBP0zRP2DMlRZ9dQyBXH.e	2022-06-17 10:20:22	f
130	Rishika	Jaiteley	RishikaJ	rishika@jaitelay.com	$2b$10$7.qwiDLhklInwsfJ.EuYfuqu0WQec2vJsH015T8kmYEWvCbvtNvKm	2022-06-17 10:20:31	f
131	Gilles	De Cock	GillesD	gilles@decock.com	$2b$10$cqxoV041qvA9B9Vtq9srIee.fZaxyNWzHD8uBGQONrXqRnyDpQ0NK	2022-06-17 10:20:43	f
132	Jerry	Thomas	JerryT	jerry@thomas.com	$2b$10$AiArRpRyTm6z/XpeJBKquenqRGhaYRks3zvbqZKQR7SNV5CskARPa	2022-06-17 10:21:01	f
133	Helena	Winkler	HelenaW	helena@winkler.com	$2b$10$XMyswuokfv3.zYVYFGcAmOALCrjZLYdqo38h14w0LEiL6DQSf1os6	2022-06-17 10:21:10	f
\.


--
-- Data for Name: users_in_lobby; Type: TABLE DATA; Schema: public; Owner: yxaefovmltktpc
--

COPY public.users_in_lobby (id, lobby_id, user_id) FROM stdin;
\.


--
-- Name: lobby_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yxaefovmltktpc
--

-- SELECT pg_catalog.setval('public.lobby_id_seq', 16, true);


--
-- Name: messages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yxaefovmltktpc
--

-- SELECT pg_catalog.setval('public.messages_id_seq', 14, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yxaefovmltktpc
--

-- SELECT pg_catalog.setval('public.users_id_seq', 139, true);


--
-- Name: users_in_lobby_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yxaefovmltktpc
--

-- SELECT pg_catalog.setval('public.users_in_lobby_id_seq', 46, true);


--
-- Name: lobby lobby_pkey; Type: CONSTRAINT; Schema: public; Owner: yxaefovmltktpc
--

-- ALTER TABLE ONLY public.lobby
--     ADD CONSTRAINT lobby_pkey PRIMARY KEY (id);


-- --
-- -- Name: messages messages_pkey; Type: CONSTRAINT; Schema: public; Owner: yxaefovmltktpc
-- --

-- ALTER TABLE ONLY public.messages
--     ADD CONSTRAINT messages_pkey PRIMARY KEY (id);


-- --
-- -- Name: users uniquectm_const; Type: CONSTRAINT; Schema: public; Owner: yxaefovmltktpc
-- --

-- ALTER TABLE ONLY public.users
--     ADD CONSTRAINT uniquectm_const UNIQUE (email);


-- --
-- -- Name: users_in_lobby users_in_lobby_pkey; Type: CONSTRAINT; Schema: public; Owner: yxaefovmltktpc
-- --

-- ALTER TABLE ONLY public.users_in_lobby
--     ADD CONSTRAINT users_in_lobby_pkey PRIMARY KEY (id);


-- --
-- -- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: yxaefovmltktpc
-- --

-- ALTER TABLE ONLY public.users
--     ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: lobby lobby_admin_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: yxaefovmltktpc
--

ALTER TABLE ONLY public.lobby
    ADD CONSTRAINT lobby_admin_id_fkey FOREIGN KEY (admin_id) REFERENCES public.users(id);


--
-- Name: messages messages_author_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.messages
    ADD CONSTRAINT messages_author_id_fkey FOREIGN KEY (author_id) REFERENCES public.users(id);


--
-- Name: messages messages_lobby_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.messages
    ADD CONSTRAINT messages_lobby_id_fkey FOREIGN KEY (lobby_id) REFERENCES public.lobby(id);


--
-- Name: users_in_lobby users_in_lobby_lobby_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_in_lobby
    ADD CONSTRAINT users_in_lobby_lobby_id_fkey FOREIGN KEY (lobby_id) REFERENCES public.lobby(id);


--
-- Name: users_in_lobby users_in_lobby_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_in_lobby
    ADD CONSTRAINT users_in_lobby_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- PostgreSQL database dump complete
--

