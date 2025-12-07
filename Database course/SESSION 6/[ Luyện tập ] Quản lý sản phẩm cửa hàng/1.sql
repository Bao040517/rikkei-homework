--
-- PostgreSQL database dump
--

\restrict 9LnizklrYNLDA3pI7sl3elikhrBkWbYtnJ8ieWQYVtpxG984FXf9IcOA34CQ8Rk

-- Dumped from database version 18.0
-- Dumped by pg_dump version 18.0

-- Started on 2025-11-08 22:00:38

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
-- TOC entry 6 (class 2615 OID 17717)
-- Name: store; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA store;


ALTER SCHEMA store OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 221 (class 1259 OID 17719)
-- Name: product; Type: TABLE; Schema: store; Owner: postgres
--

CREATE TABLE store.product (
    id integer NOT NULL,
    name character varying(100),
    category character varying(50),
    price numeric(10,2),
    stock integer
);


ALTER TABLE store.product OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 17718)
-- Name: product_id_seq; Type: SEQUENCE; Schema: store; Owner: postgres
--

CREATE SEQUENCE store.product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE store.product_id_seq OWNER TO postgres;

--
-- TOC entry 5014 (class 0 OID 0)
-- Dependencies: 220
-- Name: product_id_seq; Type: SEQUENCE OWNED BY; Schema: store; Owner: postgres
--

ALTER SEQUENCE store.product_id_seq OWNED BY store.product.id;


--
-- TOC entry 4857 (class 2604 OID 17722)
-- Name: product id; Type: DEFAULT; Schema: store; Owner: postgres
--

ALTER TABLE ONLY store.product ALTER COLUMN id SET DEFAULT nextval('store.product_id_seq'::regclass);


--
-- TOC entry 5008 (class 0 OID 17719)
-- Dependencies: 221
-- Data for Name: product; Type: TABLE DATA; Schema: store; Owner: postgres
--

COPY store.product (id, name, category, price, stock) FROM stdin;
1	Máy tính	Điện tử	1500.00	10
2	Điện thoại	Điện tử	800.00	20
3	Chuột Logitech	Phụ kiện	25.00	50
4	Bàn phím Razer	Phụ kiện	120.00	15
5	Màn hình Samsung	Điện tử	300.00	12
\.


--
-- TOC entry 5015 (class 0 OID 0)
-- Dependencies: 220
-- Name: product_id_seq; Type: SEQUENCE SET; Schema: store; Owner: postgres
--

SELECT pg_catalog.setval('store.product_id_seq', 5, true);


--
-- TOC entry 4859 (class 2606 OID 17725)
-- Name: product product_pkey; Type: CONSTRAINT; Schema: store; Owner: postgres
--

ALTER TABLE ONLY store.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);


-- Completed on 2025-11-08 22:00:38

--
-- PostgreSQL database dump complete
--

\unrestrict 9LnizklrYNLDA3pI7sl3elikhrBkWbYtnJ8ieWQYVtpxG984FXf9IcOA34CQ8Rk

