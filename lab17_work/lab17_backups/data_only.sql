--
-- PostgreSQL database dump
--

\restrict AMOhCF3cinfbgPBRIrOgzn05WqNAg7jkhSCNGdFcA23SGYdHN1awie4OuVn4va5

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

--
-- Data for Name: customer_feedback; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customer_feedback (feedback_id, comment) FROM stdin;
1	Great product, very useful!
2	The product is "excellent", thank you!
\.


--
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customers (customer_id, name, email) FROM stdin;
1	Aizada	aizada@gmail.com
2	Nursultan	nursultan@gmail.com
3	Meerim	meerim@gmail.com
\.


--
-- Data for Name: departments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.departments (department_id, department_name) FROM stdin;
1	IT
2	HR
3	Sales
\.


--
-- Data for Name: employees; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.employees (employee_id, first_name, last_name, email, department) FROM stdin;
1	Ainura	Asanova	ainura@gmail.com	IT
2	Bakyt	Osmonov	bakyt@gmail.com	HR
3	Malika	Arli	malika@gmail.com	IT
4	Karim	Alymov	\N	Sales
\.


--
-- Data for Name: employees_partial; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.employees_partial (first_name, last_name, email) FROM stdin;
Ainura	Asanova	ainura@gmail.com
Bakyt	Osmonov	bakyt@gmail.com
Malika	Arli	malika@gmail.com
Karim	Alymov	\N
\.


--
-- Data for Name: log_table; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.log_table (log_id, message) FROM stdin;
1	Database initialized
\.


--
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.orders (order_id, customer_id, order_date, total) FROM stdin;
1	1	2026-01-15	85000.00
2	2	2026-02-10	1500.00
3	3	2026-03-05	3500.00
\.


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.products (product_id, product_name, price) FROM stdin;
1	Laptop	85000.00
2	Mouse	1500.00
3	Keyboard	3500.00
4	Monitor	18000.00
\.


--
-- Data for Name: products_errors_import; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.products_errors_import (product_id, product_name, price) FROM stdin;
10	Plant	500.00
12	Flower	300.00
\.


--
-- Data for Name: products_import; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.products_import (product_id, product_name, price) FROM stdin;
1	Laptop	85000.00
2	Mouse	1500.00
3	Keyboard	3500.00
4	Monitor	18000.00
\.


--
-- Data for Name: products_utf8_import; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.products_utf8_import (product_id, product_name, price) FROM stdin;
1	Laptop	85000.00
2	Mouse	1500.00
3	Keyboard	3500.00
4	Monitor	18000.00
\.


--
-- Data for Name: sales_data; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sales_data (sale_id, amount, note) FROM stdin;
1	1500.00	Online sale
2	3500.00	\N
3	85000.00	Store sale
\.


--
-- Data for Name: temp_data; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.temp_data (temp_id, description) FROM stdin;
1	Temporary test data
\.


--
-- Name: customer_feedback_feedback_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customer_feedback_feedback_id_seq', 2, true);


--
-- Name: customers_customer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customers_customer_id_seq', 3, true);


--
-- Name: departments_department_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.departments_department_id_seq', 3, true);


--
-- Name: employees_employee_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.employees_employee_id_seq', 4, true);


--
-- Name: log_table_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.log_table_log_id_seq', 1, true);


--
-- Name: orders_order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.orders_order_id_seq', 3, true);


--
-- Name: products_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_product_id_seq', 4, true);


--
-- Name: sales_data_sale_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sales_data_sale_id_seq', 3, true);


--
-- Name: temp_data_temp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.temp_data_temp_id_seq', 1, true);


--
-- PostgreSQL database dump complete
--

\unrestrict AMOhCF3cinfbgPBRIrOgzn05WqNAg7jkhSCNGdFcA23SGYdHN1awie4OuVn4va5

