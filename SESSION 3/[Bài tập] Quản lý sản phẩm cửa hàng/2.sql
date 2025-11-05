--
-- PostgreSQL database dump
--

\restrict NI1SyAdkPxR9hT8IF3S09DfwshLMcm1D7XLNLqDhrznTmSNm1FrJGnMT4xDch8m

-- Dumped from database version 18.0
-- Dumped by pg_dump version 18.0

-- Started on 2025-11-03 22:12:50

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
-- TOC entry 7 (class 2615 OID 17103)
-- Name: shop; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA shop;


ALTER SCHEMA shop OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 224 (class 1259 OID 17105)
-- Name: products; Type: TABLE; Schema: shop; Owner: postgres
--

CREATE TABLE shop.products (
    id integer NOT NULL,
    name character varying(50),
    category character varying(50),
    price numeric(10,2),
    stock integer
);


ALTER TABLE shop.products OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 17104)
-- Name: products_id_seq; Type: SEQUENCE; Schema: shop; Owner: postgres
--

CREATE SEQUENCE shop.products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE shop.products_id_seq OWNER TO postgres;

--
-- TOC entry 5019 (class 0 OID 0)
-- Dependencies: 223
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: shop; Owner: postgres
--

ALTER SEQUENCE shop.products_id_seq OWNED BY shop.products.id;


--
-- TOC entry 4862 (class 2604 OID 17108)
-- Name: products id; Type: DEFAULT; Schema: shop; Owner: postgres
--

ALTER TABLE ONLY shop.products ALTER COLUMN id SET DEFAULT nextval('shop.products_id_seq'::regclass);


--
-- TOC entry 5013 (class 0 OID 17105)
-- Dependencies: 224
-- Data for Name: products; Type: TABLE DATA; Schema: shop; Owner: postgres
--

COPY shop.products (id, name, category, price, stock) FROM stdin;
2	Chuột Logitech	Electronics	25.50	50
3	Bàn phím Razer	Electronics	120.00	20
4	Tủ lạnh LG	Home Appliances	800.00	3
5	Máy giặt Samsung	Home Appliances	600.00	2
6	Điều hòa Panasonic	Home Appliances	400.00	10
1	Laptop Dell	Electronics	1500.00	7
\.


--
-- TOC entry 5020 (class 0 OID 0)
-- Dependencies: 223
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: shop; Owner: postgres
--

SELECT pg_catalog.setval('shop.products_id_seq', 6, true);


--
-- TOC entry 4864 (class 2606 OID 17111)
-- Name: products products_pkey; Type: CONSTRAINT; Schema: shop; Owner: postgres
--

ALTER TABLE ONLY shop.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


-- Completed on 2025-11-03 22:12:50

--
-- PostgreSQL database dump complete
--

\unrestrict NI1SyAdkPxR9hT8IF3S09DfwshLMcm1D7XLNLqDhrznTmSNm1FrJGnMT4xDch8m

