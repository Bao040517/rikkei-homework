--
-- PostgreSQL database dump
--

\restrict JXpyt56n26A3CtouKS1LUgHrw5qBFarBSRqjV328bYKjWuqfrBhmXCRiJE9M59N

-- Dumped from database version 18.0
-- Dumped by pg_dump version 18.0

-- Started on 2025-11-04 22:08:26

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
-- TOC entry 9 (class 2615 OID 17158)
-- Name: salemanager; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA salemanager;


ALTER SCHEMA salemanager OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 232 (class 1259 OID 17160)
-- Name: customers; Type: TABLE; Schema: salemanager; Owner: postgres
--

CREATE TABLE salemanager.customers (
    id integer NOT NULL,
    name character varying(50),
    city character varying(50)
);


ALTER TABLE salemanager.customers OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 17159)
-- Name: customers_id_seq; Type: SEQUENCE; Schema: salemanager; Owner: postgres
--

CREATE SEQUENCE salemanager.customers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE salemanager.customers_id_seq OWNER TO postgres;

--
-- TOC entry 5044 (class 0 OID 0)
-- Dependencies: 231
-- Name: customers_id_seq; Type: SEQUENCE OWNED BY; Schema: salemanager; Owner: postgres
--

ALTER SEQUENCE salemanager.customers_id_seq OWNED BY salemanager.customers.id;


--
-- TOC entry 234 (class 1259 OID 17186)
-- Name: orders; Type: TABLE; Schema: salemanager; Owner: postgres
--

CREATE TABLE salemanager.orders (
    id integer NOT NULL,
    customer_id integer,
    product character varying(50),
    quantity integer,
    price numeric(10,2),
    order_date date
);


ALTER TABLE salemanager.orders OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 17185)
-- Name: orders_id_seq; Type: SEQUENCE; Schema: salemanager; Owner: postgres
--

CREATE SEQUENCE salemanager.orders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE salemanager.orders_id_seq OWNER TO postgres;

--
-- TOC entry 5045 (class 0 OID 0)
-- Dependencies: 233
-- Name: orders_id_seq; Type: SEQUENCE OWNED BY; Schema: salemanager; Owner: postgres
--

ALTER SEQUENCE salemanager.orders_id_seq OWNED BY salemanager.orders.id;


--
-- TOC entry 4881 (class 2604 OID 17163)
-- Name: customers id; Type: DEFAULT; Schema: salemanager; Owner: postgres
--

ALTER TABLE ONLY salemanager.customers ALTER COLUMN id SET DEFAULT nextval('salemanager.customers_id_seq'::regclass);


--
-- TOC entry 4882 (class 2604 OID 17189)
-- Name: orders id; Type: DEFAULT; Schema: salemanager; Owner: postgres
--

ALTER TABLE ONLY salemanager.orders ALTER COLUMN id SET DEFAULT nextval('salemanager.orders_id_seq'::regclass);


--
-- TOC entry 5036 (class 0 OID 17160)
-- Dependencies: 232
-- Data for Name: customers; Type: TABLE DATA; Schema: salemanager; Owner: postgres
--

COPY salemanager.customers (id, name, city) FROM stdin;
1	An	Hà Nội
2	Bình	HCM
3	Cường	Đà Nẵng
4	Dương	Hà Nội
5	An	Hà Nội
6	Bình	HCM
7	Cường	Đà Nẵng
8	Dương	Hà Nội
\.


--
-- TOC entry 5038 (class 0 OID 17186)
-- Dependencies: 234
-- Data for Name: orders; Type: TABLE DATA; Schema: salemanager; Owner: postgres
--

COPY salemanager.orders (id, customer_id, product, quantity, price, order_date) FROM stdin;
2	2	Chuột	5	25.50	2025-10-02
3	3	Bàn phím	3	120.00	2025-10-03
4	1	Laptop	1	1500.00	2025-10-05
5	4	Tủ lạnh	1	800.00	2025-10-06
6	2	Laptop	1	1500.00	2025-10-10
1	1	Laptop	3	1500.00	2025-10-01
\.


--
-- TOC entry 5046 (class 0 OID 0)
-- Dependencies: 231
-- Name: customers_id_seq; Type: SEQUENCE SET; Schema: salemanager; Owner: postgres
--

SELECT pg_catalog.setval('salemanager.customers_id_seq', 8, true);


--
-- TOC entry 5047 (class 0 OID 0)
-- Dependencies: 233
-- Name: orders_id_seq; Type: SEQUENCE SET; Schema: salemanager; Owner: postgres
--

SELECT pg_catalog.setval('salemanager.orders_id_seq', 6, true);


--
-- TOC entry 4884 (class 2606 OID 17166)
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: salemanager; Owner: postgres
--

ALTER TABLE ONLY salemanager.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (id);


--
-- TOC entry 4886 (class 2606 OID 17192)
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: salemanager; Owner: postgres
--

ALTER TABLE ONLY salemanager.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);


--
-- TOC entry 4887 (class 2606 OID 17193)
-- Name: orders orders_customer_id_fkey; Type: FK CONSTRAINT; Schema: salemanager; Owner: postgres
--

ALTER TABLE ONLY salemanager.orders
    ADD CONSTRAINT orders_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES salemanager.customers(id);


-- Completed on 2025-11-04 22:08:26

--
-- PostgreSQL database dump complete
--

\unrestrict JXpyt56n26A3CtouKS1LUgHrw5qBFarBSRqjV328bYKjWuqfrBhmXCRiJE9M59N

