--
-- PostgreSQL database dump
--

\restrict P61TfIWF6UuFP3E8k1P2F54YRqn8hiwSytg1dxP7dPe0plfkFAyEbaTdcmgFWKv

-- Dumped from database version 18.0
-- Dumped by pg_dump version 18.0

-- Started on 2025-11-06 22:45:16

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
-- TOC entry 7 (class 2615 OID 17454)
-- Name: kha; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA kha;


ALTER SCHEMA kha OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 225 (class 1259 OID 17462)
-- Name: orders; Type: TABLE; Schema: kha; Owner: postgres
--

CREATE TABLE kha.orders (
    order_id integer NOT NULL,
    product_id integer NOT NULL,
    quantity integer,
    total_price integer
);


ALTER TABLE kha.orders OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 17455)
-- Name: products; Type: TABLE; Schema: kha; Owner: postgres
--

CREATE TABLE kha.products (
    product_id integer NOT NULL,
    product_name character varying(100) NOT NULL,
    category character varying(50)
);


ALTER TABLE kha.products OWNER TO postgres;

--
-- TOC entry 5023 (class 0 OID 17462)
-- Dependencies: 225
-- Data for Name: orders; Type: TABLE DATA; Schema: kha; Owner: postgres
--

COPY kha.orders (order_id, product_id, quantity, total_price) FROM stdin;
101	1	2	2200
102	2	3	3300
103	3	5	2500
104	4	4	1600
105	1	1	1100
\.


--
-- TOC entry 5022 (class 0 OID 17455)
-- Dependencies: 224
-- Data for Name: products; Type: TABLE DATA; Schema: kha; Owner: postgres
--

COPY kha.products (product_id, product_name, category) FROM stdin;
1	Laptop Dell	Electronics
2	IPhone 15	Electronics
3	Bàn học gỗ	Furniture
4	Ghế xoay	Furniture
\.


--
-- TOC entry 4873 (class 2606 OID 17468)
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: kha; Owner: postgres
--

ALTER TABLE ONLY kha.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (order_id);


--
-- TOC entry 4871 (class 2606 OID 17461)
-- Name: products products_pkey; Type: CONSTRAINT; Schema: kha; Owner: postgres
--

ALTER TABLE ONLY kha.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (product_id);


--
-- TOC entry 4874 (class 2606 OID 17469)
-- Name: orders orders_product_id_fkey; Type: FK CONSTRAINT; Schema: kha; Owner: postgres
--

ALTER TABLE ONLY kha.orders
    ADD CONSTRAINT orders_product_id_fkey FOREIGN KEY (product_id) REFERENCES kha.products(product_id);


-- Completed on 2025-11-06 22:45:16

--
-- PostgreSQL database dump complete
--

\unrestrict P61TfIWF6UuFP3E8k1P2F54YRqn8hiwSytg1dxP7dPe0plfkFAyEbaTdcmgFWKv

