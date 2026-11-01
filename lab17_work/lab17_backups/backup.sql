--
-- PostgreSQL database dump
--

\restrict KcWwxd8emytUecmetTYMkvicF5bhVEOmbjT6TK58zlk045Tobjd1kFacY5x5sdo

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
-- Name: customer_feedback; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customer_feedback (
    feedback_id integer NOT NULL,
    comment text
);


ALTER TABLE public.customer_feedback OWNER TO postgres;

--
-- Name: customer_feedback_feedback_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.customer_feedback_feedback_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.customer_feedback_feedback_id_seq OWNER TO postgres;

--
-- Name: customer_feedback_feedback_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.customer_feedback_feedback_id_seq OWNED BY public.customer_feedback.feedback_id;


--
-- Name: customers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customers (
    customer_id integer NOT NULL,
    name character varying(100),
    email character varying(100)
);


ALTER TABLE public.customers OWNER TO postgres;

--
-- Name: customers_customer_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.customers_customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.customers_customer_id_seq OWNER TO postgres;

--
-- Name: customers_customer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.customers_customer_id_seq OWNED BY public.customers.customer_id;


--
-- Name: departments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.departments (
    department_id integer NOT NULL,
    department_name character varying(100) NOT NULL
);


ALTER TABLE public.departments OWNER TO postgres;

--
-- Name: departments_department_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.departments_department_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.departments_department_id_seq OWNER TO postgres;

--
-- Name: departments_department_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.departments_department_id_seq OWNED BY public.departments.department_id;


--
-- Name: employees; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employees (
    employee_id integer NOT NULL,
    first_name character varying(50),
    last_name character varying(50),
    email character varying(100),
    department character varying(50)
);


ALTER TABLE public.employees OWNER TO postgres;

--
-- Name: employees_employee_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.employees_employee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.employees_employee_id_seq OWNER TO postgres;

--
-- Name: employees_employee_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.employees_employee_id_seq OWNED BY public.employees.employee_id;


--
-- Name: employees_partial; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employees_partial (
    first_name character varying(50),
    last_name character varying(50),
    email character varying(100)
);


ALTER TABLE public.employees_partial OWNER TO postgres;

--
-- Name: log_table; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.log_table (
    log_id integer NOT NULL,
    message text
);


ALTER TABLE public.log_table OWNER TO postgres;

--
-- Name: log_table_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.log_table_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.log_table_log_id_seq OWNER TO postgres;

--
-- Name: log_table_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.log_table_log_id_seq OWNED BY public.log_table.log_id;


--
-- Name: orders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orders (
    order_id integer NOT NULL,
    customer_id integer,
    order_date date,
    total numeric(10,2)
);


ALTER TABLE public.orders OWNER TO postgres;

--
-- Name: orders_order_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.orders_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.orders_order_id_seq OWNER TO postgres;

--
-- Name: orders_order_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.orders_order_id_seq OWNED BY public.orders.order_id;


--
-- Name: products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products (
    product_id integer NOT NULL,
    product_name character varying(100),
    price numeric(10,2)
);


ALTER TABLE public.products OWNER TO postgres;

--
-- Name: products_product_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.products_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.products_product_id_seq OWNER TO postgres;

--
-- Name: products_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.products_product_id_seq OWNED BY public.products.product_id;


--
-- Name: products_errors_import; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products_errors_import (
    product_id integer DEFAULT nextval('public.products_product_id_seq'::regclass) CONSTRAINT products_product_id_not_null NOT NULL,
    product_name character varying(100),
    price numeric(10,2)
);


ALTER TABLE public.products_errors_import OWNER TO postgres;

--
-- Name: products_import; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products_import (
    product_id integer DEFAULT nextval('public.products_product_id_seq'::regclass) CONSTRAINT products_product_id_not_null NOT NULL,
    product_name character varying(100),
    price numeric(10,2)
);


ALTER TABLE public.products_import OWNER TO postgres;

--
-- Name: products_utf8_import; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products_utf8_import (
    product_id integer DEFAULT nextval('public.products_product_id_seq'::regclass) CONSTRAINT products_product_id_not_null NOT NULL,
    product_name character varying(100),
    price numeric(10,2)
);


ALTER TABLE public.products_utf8_import OWNER TO postgres;

--
-- Name: sales_data; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sales_data (
    sale_id integer NOT NULL,
    amount numeric(10,2),
    note text
);


ALTER TABLE public.sales_data OWNER TO postgres;

--
-- Name: sales_data_sale_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sales_data_sale_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.sales_data_sale_id_seq OWNER TO postgres;

--
-- Name: sales_data_sale_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sales_data_sale_id_seq OWNED BY public.sales_data.sale_id;


--
-- Name: temp_data; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.temp_data (
    temp_id integer NOT NULL,
    description text
);


ALTER TABLE public.temp_data OWNER TO postgres;

--
-- Name: temp_data_temp_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.temp_data_temp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.temp_data_temp_id_seq OWNER TO postgres;

--
-- Name: temp_data_temp_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.temp_data_temp_id_seq OWNED BY public.temp_data.temp_id;


--
-- Name: customer_feedback feedback_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer_feedback ALTER COLUMN feedback_id SET DEFAULT nextval('public.customer_feedback_feedback_id_seq'::regclass);


--
-- Name: customers customer_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers ALTER COLUMN customer_id SET DEFAULT nextval('public.customers_customer_id_seq'::regclass);


--
-- Name: departments department_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.departments ALTER COLUMN department_id SET DEFAULT nextval('public.departments_department_id_seq'::regclass);


--
-- Name: employees employee_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees ALTER COLUMN employee_id SET DEFAULT nextval('public.employees_employee_id_seq'::regclass);


--
-- Name: log_table log_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.log_table ALTER COLUMN log_id SET DEFAULT nextval('public.log_table_log_id_seq'::regclass);


--
-- Name: orders order_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders ALTER COLUMN order_id SET DEFAULT nextval('public.orders_order_id_seq'::regclass);


--
-- Name: products product_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products ALTER COLUMN product_id SET DEFAULT nextval('public.products_product_id_seq'::regclass);


--
-- Name: sales_data sale_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sales_data ALTER COLUMN sale_id SET DEFAULT nextval('public.sales_data_sale_id_seq'::regclass);


--
-- Name: temp_data temp_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.temp_data ALTER COLUMN temp_id SET DEFAULT nextval('public.temp_data_temp_id_seq'::regclass);


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
-- Name: customer_feedback customer_feedback_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer_feedback
    ADD CONSTRAINT customer_feedback_pkey PRIMARY KEY (feedback_id);


--
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (customer_id);


--
-- Name: departments departments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.departments
    ADD CONSTRAINT departments_pkey PRIMARY KEY (department_id);


--
-- Name: employees employees_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (employee_id);


--
-- Name: log_table log_table_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.log_table
    ADD CONSTRAINT log_table_pkey PRIMARY KEY (log_id);


--
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (order_id);


--
-- Name: products_errors_import products_errors_import_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products_errors_import
    ADD CONSTRAINT products_errors_import_pkey PRIMARY KEY (product_id);


--
-- Name: products_import products_import_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products_import
    ADD CONSTRAINT products_import_pkey PRIMARY KEY (product_id);


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (product_id);


--
-- Name: products_utf8_import products_utf8_import_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products_utf8_import
    ADD CONSTRAINT products_utf8_import_pkey PRIMARY KEY (product_id);


--
-- Name: sales_data sales_data_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sales_data
    ADD CONSTRAINT sales_data_pkey PRIMARY KEY (sale_id);


--
-- Name: temp_data temp_data_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.temp_data
    ADD CONSTRAINT temp_data_pkey PRIMARY KEY (temp_id);


--
-- Name: orders orders_customer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customers(customer_id);


--
-- PostgreSQL database dump complete
--

\unrestrict KcWwxd8emytUecmetTYMkvicF5bhVEOmbjT6TK58zlk045Tobjd1kFacY5x5sdo

