--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4 (Debian 17.4-1.pgdg120+2)
-- Dumped by pg_dump version 17.4 (Debian 17.4-1.pgdg120+2)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- Name: hero; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.hero (
    id integer NOT NULL,
    name character varying NOT NULL,
    secret_name character varying NOT NULL,
    age integer
);


ALTER TABLE public.hero OWNER TO postgres;

--
-- Name: hero_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.hero_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.hero_id_seq OWNER TO postgres;

--
-- Name: hero_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.hero_id_seq OWNED BY public.hero.id;


--
-- Name: hero id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hero ALTER COLUMN id SET DEFAULT nextval('public.hero_id_seq'::regclass);


--
-- Data for Name: hero; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.hero (id, name, secret_name, age) FROM stdin;
1	my hero	austing	12
2	my hero	austing	12
3	spiderman	tranxuanthuy	24
\.


--
-- Name: hero_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.hero_id_seq', 1, false);


--
-- Name: hero hero_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hero
    ADD CONSTRAINT hero_pkey PRIMARY KEY (id);


--
-- Name: ix_hero_age; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_hero_age ON public.hero USING btree (age);


--
-- Name: ix_hero_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_hero_name ON public.hero USING btree (name);


--
-- PostgreSQL database dump complete
--

