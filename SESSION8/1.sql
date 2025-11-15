--
-- PostgreSQL database dump
--

\restrict QXamvZI4cQHTsoSfTbER9t5nsNTeZAZst9i1fjlGVEReTlKz5Xx5UEwnFjRQenM

-- Dumped from database version 18.0
-- Dumped by pg_dump version 18.0

-- Started on 2025-11-15 20:18:55

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
-- TOC entry 6 (class 2615 OID 18408)
-- Name: ex1; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA ex1;


ALTER SCHEMA ex1 OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 221 (class 1259 OID 18410)
-- Name: order_detail; Type: TABLE; Schema: ex1; Owner: postgres
--

CREATE TABLE ex1.order_detail (
    id integer NOT NULL,
    order_name character varying(100),
    quantity integer,
    unit_price numeric
);


ALTER TABLE ex1.order_detail OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 18409)
-- Name: order_detail_id_seq; Type: SEQUENCE; Schema: ex1; Owner: postgres
--

CREATE SEQUENCE ex1.order_detail_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE ex1.order_detail_id_seq OWNER TO postgres;

--
-- TOC entry 5015 (class 0 OID 0)
-- Dependencies: 220
-- Name: order_detail_id_seq; Type: SEQUENCE OWNED BY; Schema: ex1; Owner: postgres
--

ALTER SEQUENCE ex1.order_detail_id_seq OWNED BY ex1.order_detail.id;


--
-- TOC entry 4858 (class 2604 OID 18413)
-- Name: order_detail id; Type: DEFAULT; Schema: ex1; Owner: postgres
--

ALTER TABLE ONLY ex1.order_detail ALTER COLUMN id SET DEFAULT nextval('ex1.order_detail_id_seq'::regclass);


--
-- TOC entry 5009 (class 0 OID 18410)
-- Dependencies: 221
-- Data for Name: order_detail; Type: TABLE DATA; Schema: ex1; Owner: postgres
--

COPY ex1.order_detail (id, order_name, quantity, unit_price) FROM stdin;
1	IPhone 15 Pro Max	2	32990000
2	Macbook Air M2	1	24990000
3	AirPods Pro 2	3	5490000
4	Apple Watch S9	1	9990000
5	Samsung S24 Ultra	2	28990000
6	Laptop Asus Gaming	1	21990000
7	Chuột Logitech G102	4	390000
8	Bàn phím Akko 3087	2	1590000
9	Màn hình LG UltraWide	1	7990000
10	Ổ SSD Samsung 1TB	3	1990000
\.


--
-- TOC entry 5016 (class 0 OID 0)
-- Dependencies: 220
-- Name: order_detail_id_seq; Type: SEQUENCE SET; Schema: ex1; Owner: postgres
--

SELECT pg_catalog.setval('ex1.order_detail_id_seq', 10, true);


--
-- TOC entry 4860 (class 2606 OID 18418)
-- Name: order_detail order_detail_pkey; Type: CONSTRAINT; Schema: ex1; Owner: postgres
--

ALTER TABLE ONLY ex1.order_detail
    ADD CONSTRAINT order_detail_pkey PRIMARY KEY (id);


-- Completed on 2025-11-15 20:18:55

--
-- PostgreSQL database dump complete
--

\unrestrict QXamvZI4cQHTsoSfTbER9t5nsNTeZAZst9i1fjlGVEReTlKz5Xx5UEwnFjRQenM

