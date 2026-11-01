--
-- PostgreSQL database dump
--

\restrict IGmeTXmGnzW3uWdYUO6zuIBCef5FeubfD8pwoivs2n9kpPFcIiShKROSu96zc8P

-- Dumped from database version 18.6
-- Dumped by pg_dump version 18.6

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
-- Name: large_table_2023; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.large_table_2023 (
    event_id integer CONSTRAINT large_table_event_id_not_null NOT NULL,
    event_date date CONSTRAINT large_table_event_date_not_null NOT NULL,
    description text
);


ALTER TABLE public.large_table_2023 OWNER TO postgres;

--
-- Name: large_table_2023; Type: TABLE ATTACH; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.large_table ATTACH PARTITION public.large_table_2023 FOR VALUES FROM ('2023-01-01') TO ('2024-01-01');


--
-- Data for Name: large_table_2023; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.large_table_2023 (event_id, event_date, description) FROM stdin;
1	2023-05-10	Event 2023
\.


--
-- Name: large_table_2023 large_table_2023_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.large_table_2023
    ADD CONSTRAINT large_table_2023_pkey PRIMARY KEY (event_id, event_date);


--
-- Name: large_table_2023_pkey; Type: INDEX ATTACH; Schema: public; Owner: postgres
--

ALTER INDEX public.large_table_pkey ATTACH PARTITION public.large_table_2023_pkey;


--
-- PostgreSQL database dump complete
--

\unrestrict IGmeTXmGnzW3uWdYUO6zuIBCef5FeubfD8pwoivs2n9kpPFcIiShKROSu96zc8P

