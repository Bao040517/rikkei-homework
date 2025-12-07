--
-- PostgreSQL database dump
--

\restrict pkBddIepYpbD3W4FNedGDsCRm4DOcMSRoxC5kF3KwDvhLKYNWga8XyLDy0kXvV8

-- Dumped from database version 18.0
-- Dumped by pg_dump version 18.0

-- Started on 2025-11-08 23:51:28

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
-- TOC entry 14 (class 2615 OID 17826)
-- Name: product; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA product;


ALTER SCHEMA product OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 253 (class 1259 OID 17836)
-- Name: orderdetail; Type: TABLE; Schema: product; Owner: postgres
--

CREATE TABLE product.orderdetail (
    id integer NOT NULL,
    order_id integer,
    product_id integer,
    quantity integer
);


ALTER TABLE product.orderdetail OWNER TO postgres;

--
-- TOC entry 252 (class 1259 OID 17835)
-- Name: orderdetail_id_seq; Type: SEQUENCE; Schema: product; Owner: postgres
--

CREATE SEQUENCE product.orderdetail_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE product.orderdetail_id_seq OWNER TO postgres;

--
-- TOC entry 5077 (class 0 OID 0)
-- Dependencies: 252
-- Name: orderdetail_id_seq; Type: SEQUENCE OWNED BY; Schema: product; Owner: postgres
--

ALTER SEQUENCE product.orderdetail_id_seq OWNED BY product.orderdetail.id;


--
-- TOC entry 251 (class 1259 OID 17828)
-- Name: product; Type: TABLE; Schema: product; Owner: postgres
--

CREATE TABLE product.product (
    id integer NOT NULL,
    name character varying(100),
    category character varying(50),
    price numeric(10,2)
);


ALTER TABLE product.product OWNER TO postgres;

--
-- TOC entry 250 (class 1259 OID 17827)
-- Name: product_id_seq; Type: SEQUENCE; Schema: product; Owner: postgres
--

CREATE SEQUENCE product.product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE product.product_id_seq OWNER TO postgres;

--
-- TOC entry 5078 (class 0 OID 0)
-- Dependencies: 250
-- Name: product_id_seq; Type: SEQUENCE OWNED BY; Schema: product; Owner: postgres
--

ALTER SEQUENCE product.product_id_seq OWNED BY product.product.id;


--
-- TOC entry 4915 (class 2604 OID 17839)
-- Name: orderdetail id; Type: DEFAULT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.orderdetail ALTER COLUMN id SET DEFAULT nextval('product.orderdetail_id_seq'::regclass);


--
-- TOC entry 4914 (class 2604 OID 17831)
-- Name: product id; Type: DEFAULT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.product ALTER COLUMN id SET DEFAULT nextval('product.product_id_seq'::regclass);


--
-- TOC entry 5071 (class 0 OID 17836)
-- Dependencies: 253
-- Data for Name: orderdetail; Type: TABLE DATA; Schema: product; Owner: postgres
--

COPY product.orderdetail (id, order_id, product_id, quantity) FROM stdin;
1	101	1	2
2	102	2	1
3	103	3	5
4	104	4	1
6	106	1	1
5	105	5	1
\.


--
-- TOC entry 5069 (class 0 OID 17828)
-- Dependencies: 251
-- Data for Name: product; Type: TABLE DATA; Schema: product; Owner: postgres
--

COPY product.product (id, name, category, price) FROM stdin;
1	Laptop Dell	Electronics	15000000.00
2	Laptop HP	Electronics	14000000.00
3	Chuột Logitech	Electronics	500000.00
4	Tủ lạnh LG	Home Appliances	8000000.00
5	Máy giặt Samsung	Home Appliances	6000000.00
\.


--
-- TOC entry 5079 (class 0 OID 0)
-- Dependencies: 252
-- Name: orderdetail_id_seq; Type: SEQUENCE SET; Schema: product; Owner: postgres
--

SELECT pg_catalog.setval('product.orderdetail_id_seq', 6, true);


--
-- TOC entry 5080 (class 0 OID 0)
-- Dependencies: 250
-- Name: product_id_seq; Type: SEQUENCE SET; Schema: product; Owner: postgres
--

SELECT pg_catalog.setval('product.product_id_seq', 5, true);


--
-- TOC entry 4919 (class 2606 OID 17842)
-- Name: orderdetail orderdetail_pkey; Type: CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.orderdetail
    ADD CONSTRAINT orderdetail_pkey PRIMARY KEY (id);


--
-- TOC entry 4917 (class 2606 OID 17834)
-- Name: product product_pkey; Type: CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);


--
-- TOC entry 4920 (class 2606 OID 17843)
-- Name: orderdetail orderdetail_product_id_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.orderdetail
    ADD CONSTRAINT orderdetail_product_id_fkey FOREIGN KEY (product_id) REFERENCES product.product(id);


-- Completed on 2025-11-08 23:51:28

--
-- PostgreSQL database dump complete
--

\unrestrict pkBddIepYpbD3W4FNedGDsCRm4DOcMSRoxC5kF3KwDvhLKYNWga8XyLDy0kXvV8

