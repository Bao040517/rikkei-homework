--
-- PostgreSQL database dump
--

\restrict ObLUbaAcFdHxH7m0otapdlRFzFkkQG04OLS0ygjKlnNSNEfLdMaKi4RUtS93Y3T

-- Dumped from database version 18.0
-- Dumped by pg_dump version 18.0

-- Started on 2025-11-08 23:33:59

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
-- TOC entry 13 (class 2615 OID 17803)
-- Name: ordercus; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA ordercus;


ALTER SCHEMA ordercus OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 246 (class 1259 OID 17805)
-- Name: customer; Type: TABLE; Schema: ordercus; Owner: postgres
--

CREATE TABLE ordercus.customer (
    id integer NOT NULL,
    name character varying(100)
);


ALTER TABLE ordercus.customer OWNER TO postgres;

--
-- TOC entry 245 (class 1259 OID 17804)
-- Name: customer_id_seq; Type: SEQUENCE; Schema: ordercus; Owner: postgres
--

CREATE SEQUENCE ordercus.customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE ordercus.customer_id_seq OWNER TO postgres;

--
-- TOC entry 5068 (class 0 OID 0)
-- Dependencies: 245
-- Name: customer_id_seq; Type: SEQUENCE OWNED BY; Schema: ordercus; Owner: postgres
--

ALTER SEQUENCE ordercus.customer_id_seq OWNED BY ordercus.customer.id;


--
-- TOC entry 248 (class 1259 OID 17813)
-- Name: orders; Type: TABLE; Schema: ordercus; Owner: postgres
--

CREATE TABLE ordercus.orders (
    id integer NOT NULL,
    customer_id integer NOT NULL,
    order_date date,
    total_amount numeric(10,2)
);


ALTER TABLE ordercus.orders OWNER TO postgres;

--
-- TOC entry 247 (class 1259 OID 17812)
-- Name: orders_id_seq; Type: SEQUENCE; Schema: ordercus; Owner: postgres
--

CREATE SEQUENCE ordercus.orders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE ordercus.orders_id_seq OWNER TO postgres;

--
-- TOC entry 5069 (class 0 OID 0)
-- Dependencies: 247
-- Name: orders_id_seq; Type: SEQUENCE OWNED BY; Schema: ordercus; Owner: postgres
--

ALTER SEQUENCE ordercus.orders_id_seq OWNED BY ordercus.orders.id;


--
-- TOC entry 4905 (class 2604 OID 17808)
-- Name: customer id; Type: DEFAULT; Schema: ordercus; Owner: postgres
--

ALTER TABLE ONLY ordercus.customer ALTER COLUMN id SET DEFAULT nextval('ordercus.customer_id_seq'::regclass);


--
-- TOC entry 4906 (class 2604 OID 17816)
-- Name: orders id; Type: DEFAULT; Schema: ordercus; Owner: postgres
--

ALTER TABLE ONLY ordercus.orders ALTER COLUMN id SET DEFAULT nextval('ordercus.orders_id_seq'::regclass);


--
-- TOC entry 5060 (class 0 OID 17805)
-- Dependencies: 246
-- Data for Name: customer; Type: TABLE DATA; Schema: ordercus; Owner: postgres
--

COPY ordercus.customer (id, name) FROM stdin;
1	Nguyễn Văn An
2	Trần Thị B
3	Lê Văn C
4	Phạm Dương
5	Nguyễn Thị Em
6	Hoàng Minh
7	Phan Lan
\.


--
-- TOC entry 5062 (class 0 OID 17813)
-- Dependencies: 248
-- Data for Name: orders; Type: TABLE DATA; Schema: ordercus; Owner: postgres
--

COPY ordercus.orders (id, customer_id, order_date, total_amount) FROM stdin;
1	1	2024-10-01	500000.00
2	2	2024-10-05	1500000.00
3	1	2024-10-10	2000000.00
4	3	2024-11-01	800000.00
5	4	2024-11-10	1200000.00
6	5	2024-12-01	700000.00
7	2	2024-12-05	1000000.00
\.


--
-- TOC entry 5070 (class 0 OID 0)
-- Dependencies: 245
-- Name: customer_id_seq; Type: SEQUENCE SET; Schema: ordercus; Owner: postgres
--

SELECT pg_catalog.setval('ordercus.customer_id_seq', 7, true);


--
-- TOC entry 5071 (class 0 OID 0)
-- Dependencies: 247
-- Name: orders_id_seq; Type: SEQUENCE SET; Schema: ordercus; Owner: postgres
--

SELECT pg_catalog.setval('ordercus.orders_id_seq', 7, true);


--
-- TOC entry 4908 (class 2606 OID 17811)
-- Name: customer customer_pkey; Type: CONSTRAINT; Schema: ordercus; Owner: postgres
--

ALTER TABLE ONLY ordercus.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (id);


--
-- TOC entry 4910 (class 2606 OID 17820)
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: ordercus; Owner: postgres
--

ALTER TABLE ONLY ordercus.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);


--
-- TOC entry 4911 (class 2606 OID 17821)
-- Name: orders orders_customer_id_fkey; Type: FK CONSTRAINT; Schema: ordercus; Owner: postgres
--

ALTER TABLE ONLY ordercus.orders
    ADD CONSTRAINT orders_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES ordercus.customer(id);


-- Completed on 2025-11-08 23:33:59

--
-- PostgreSQL database dump complete
--

\unrestrict ObLUbaAcFdHxH7m0otapdlRFzFkkQG04OLS0ygjKlnNSNEfLdMaKi4RUtS93Y3T

