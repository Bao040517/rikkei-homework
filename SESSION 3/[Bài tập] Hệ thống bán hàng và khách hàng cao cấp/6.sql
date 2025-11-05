--
-- PostgreSQL database dump
--

\restrict 5tlXZBEyzcDuQlVdqL7TP4VVuAGHPOnM1V8JM3L4UzasbDWEWcYfmkbCWnwZ4hh

-- Dumped from database version 18.0
-- Dumped by pg_dump version 18.0

-- Started on 2025-11-05 09:09:46

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
-- TOC entry 10 (class 2615 OID 17273)
-- Name: salesuper; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA salesuper;


ALTER SCHEMA salesuper OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 243 (class 1259 OID 17275)
-- Name: customers; Type: TABLE; Schema: salesuper; Owner: postgres
--

CREATE TABLE salesuper.customers (
    id integer NOT NULL,
    name character varying(50),
    city character varying(50)
);


ALTER TABLE salesuper.customers OWNER TO postgres;

--
-- TOC entry 242 (class 1259 OID 17274)
-- Name: customers_id_seq; Type: SEQUENCE; Schema: salesuper; Owner: postgres
--

CREATE SEQUENCE salesuper.customers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE salesuper.customers_id_seq OWNER TO postgres;

--
-- TOC entry 5076 (class 0 OID 0)
-- Dependencies: 242
-- Name: customers_id_seq; Type: SEQUENCE OWNED BY; Schema: salesuper; Owner: postgres
--

ALTER SEQUENCE salesuper.customers_id_seq OWNED BY salesuper.customers.id;


--
-- TOC entry 247 (class 1259 OID 17315)
-- Name: orders; Type: TABLE; Schema: salesuper; Owner: postgres
--

CREATE TABLE salesuper.orders (
    id integer NOT NULL,
    customer_id integer,
    product_id integer,
    quantity integer,
    order_date date
);


ALTER TABLE salesuper.orders OWNER TO postgres;

--
-- TOC entry 246 (class 1259 OID 17314)
-- Name: orders_id_seq; Type: SEQUENCE; Schema: salesuper; Owner: postgres
--

CREATE SEQUENCE salesuper.orders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE salesuper.orders_id_seq OWNER TO postgres;

--
-- TOC entry 5077 (class 0 OID 0)
-- Dependencies: 246
-- Name: orders_id_seq; Type: SEQUENCE OWNED BY; Schema: salesuper; Owner: postgres
--

ALTER SEQUENCE salesuper.orders_id_seq OWNED BY salesuper.orders.id;


--
-- TOC entry 245 (class 1259 OID 17283)
-- Name: products; Type: TABLE; Schema: salesuper; Owner: postgres
--

CREATE TABLE salesuper.products (
    id integer NOT NULL,
    name character varying(50),
    category character varying(50),
    price numeric(10,2)
);


ALTER TABLE salesuper.products OWNER TO postgres;

--
-- TOC entry 244 (class 1259 OID 17282)
-- Name: products_id_seq; Type: SEQUENCE; Schema: salesuper; Owner: postgres
--

CREATE SEQUENCE salesuper.products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE salesuper.products_id_seq OWNER TO postgres;

--
-- TOC entry 5078 (class 0 OID 0)
-- Dependencies: 244
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: salesuper; Owner: postgres
--

ALTER SEQUENCE salesuper.products_id_seq OWNED BY salesuper.products.id;


--
-- TOC entry 4907 (class 2604 OID 17278)
-- Name: customers id; Type: DEFAULT; Schema: salesuper; Owner: postgres
--

ALTER TABLE ONLY salesuper.customers ALTER COLUMN id SET DEFAULT nextval('salesuper.customers_id_seq'::regclass);


--
-- TOC entry 4909 (class 2604 OID 17318)
-- Name: orders id; Type: DEFAULT; Schema: salesuper; Owner: postgres
--

ALTER TABLE ONLY salesuper.orders ALTER COLUMN id SET DEFAULT nextval('salesuper.orders_id_seq'::regclass);


--
-- TOC entry 4908 (class 2604 OID 17286)
-- Name: products id; Type: DEFAULT; Schema: salesuper; Owner: postgres
--

ALTER TABLE ONLY salesuper.products ALTER COLUMN id SET DEFAULT nextval('salesuper.products_id_seq'::regclass);


--
-- TOC entry 5066 (class 0 OID 17275)
-- Dependencies: 243
-- Data for Name: customers; Type: TABLE DATA; Schema: salesuper; Owner: postgres
--

COPY salesuper.customers (id, name, city) FROM stdin;
1	An	Hà Nội
2	Bình	HCM
3	Cường	Đà Nẵng
4	Dương	Hà Nội
5	Em	HCM
\.


--
-- TOC entry 5070 (class 0 OID 17315)
-- Dependencies: 247
-- Data for Name: orders; Type: TABLE DATA; Schema: salesuper; Owner: postgres
--

COPY salesuper.orders (id, customer_id, product_id, quantity, order_date) FROM stdin;
2	2	5	5	2025-10-02
3	3	3	3	2025-10-03
4	1	5	1	2025-10-05
5	4	4	1	2025-10-06
6	5	1	1	2025-10-10
1	1	1	3	2025-10-01
\.


--
-- TOC entry 5068 (class 0 OID 17283)
-- Dependencies: 245
-- Data for Name: products; Type: TABLE DATA; Schema: salesuper; Owner: postgres
--

COPY salesuper.products (id, name, category, price) FROM stdin;
1	Laptop Dell	Electronics	1500.00
2	Chuột Logitech	Electronics	25.50
3	Bàn phím Razer	Electronics	120.00
4	Tủ lạnh LG	Home Appliances	800.00
5	Máy giặt Samsung	Home Appliances	600.00
\.


--
-- TOC entry 5079 (class 0 OID 0)
-- Dependencies: 242
-- Name: customers_id_seq; Type: SEQUENCE SET; Schema: salesuper; Owner: postgres
--

SELECT pg_catalog.setval('salesuper.customers_id_seq', 5, true);


--
-- TOC entry 5080 (class 0 OID 0)
-- Dependencies: 246
-- Name: orders_id_seq; Type: SEQUENCE SET; Schema: salesuper; Owner: postgres
--

SELECT pg_catalog.setval('salesuper.orders_id_seq', 6, true);


--
-- TOC entry 5081 (class 0 OID 0)
-- Dependencies: 244
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: salesuper; Owner: postgres
--

SELECT pg_catalog.setval('salesuper.products_id_seq', 5, true);


--
-- TOC entry 4911 (class 2606 OID 17281)
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: salesuper; Owner: postgres
--

ALTER TABLE ONLY salesuper.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (id);


--
-- TOC entry 4915 (class 2606 OID 17321)
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: salesuper; Owner: postgres
--

ALTER TABLE ONLY salesuper.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);


--
-- TOC entry 4913 (class 2606 OID 17289)
-- Name: products products_pkey; Type: CONSTRAINT; Schema: salesuper; Owner: postgres
--

ALTER TABLE ONLY salesuper.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- TOC entry 4916 (class 2606 OID 17322)
-- Name: orders orders_customer_id_fkey; Type: FK CONSTRAINT; Schema: salesuper; Owner: postgres
--

ALTER TABLE ONLY salesuper.orders
    ADD CONSTRAINT orders_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES salesuper.customers(id);


--
-- TOC entry 4917 (class 2606 OID 17327)
-- Name: orders orders_product_id_fkey; Type: FK CONSTRAINT; Schema: salesuper; Owner: postgres
--

ALTER TABLE ONLY salesuper.orders
    ADD CONSTRAINT orders_product_id_fkey FOREIGN KEY (product_id) REFERENCES salesuper.products(id);


-- Completed on 2025-11-05 09:09:46

--
-- PostgreSQL database dump complete
--

\unrestrict 5tlXZBEyzcDuQlVdqL7TP4VVuAGHPOnM1V8JM3L4UzasbDWEWcYfmkbCWnwZ4hh

