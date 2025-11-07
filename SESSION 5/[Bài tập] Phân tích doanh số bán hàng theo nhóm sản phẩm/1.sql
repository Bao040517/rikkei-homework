--
-- PostgreSQL database dump
--

\restrict arKmnAqyVsI6Si10hZP1eV9hEJMuIgWoYB3OBI2mgJlwkMF32zhUstBEHXKpjrk

-- Dumped from database version 18.0
-- Dumped by pg_dump version 18.0

-- Started on 2025-11-06 10:09:44

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
-- TOC entry 6 (class 2615 OID 17380)
-- Name: product; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA product;


ALTER SCHEMA product OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 221 (class 1259 OID 17433)
-- Name: orders; Type: TABLE; Schema: product; Owner: postgres
--

CREATE TABLE product.orders (
    order_id integer NOT NULL,
    product_id integer NOT NULL,
    quantity integer,
    total_price integer
);


ALTER TABLE product.orders OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 17426)
-- Name: products; Type: TABLE; Schema: product; Owner: postgres
--

CREATE TABLE product.products (
    product_id integer NOT NULL,
    product_name character varying(100) NOT NULL,
    category character varying(50)
);


ALTER TABLE product.products OWNER TO postgres;

--
-- TOC entry 5013 (class 0 OID 17433)
-- Dependencies: 221
-- Data for Name: orders; Type: TABLE DATA; Schema: product; Owner: postgres
--

COPY product.orders (order_id, product_id, quantity, total_price) FROM stdin;
101	1	2	2200
102	2	3	3300
103	3	5	2500
104	4	4	1600
105	1	1	1100
\.


--
-- TOC entry 5012 (class 0 OID 17426)
-- Dependencies: 220
-- Data for Name: products; Type: TABLE DATA; Schema: product; Owner: postgres
--

COPY product.products (product_id, product_name, category) FROM stdin;
1	Laptop Dell	Electronics
2	IPhone 15	Electronics
3	Bàn học gỗ	Furniture
4	Ghế xoay	Furniture
\.


--
-- TOC entry 4863 (class 2606 OID 17439)
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (order_id);


--
-- TOC entry 4861 (class 2606 OID 17432)
-- Name: products products_pkey; Type: CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (product_id);


--
-- TOC entry 4864 (class 2606 OID 17440)
-- Name: orders orders_product_id_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.orders
    ADD CONSTRAINT orders_product_id_fkey FOREIGN KEY (product_id) REFERENCES product.products(product_id);


-- Completed on 2025-11-06 10:09:45

--
-- PostgreSQL database dump complete
--

\unrestrict arKmnAqyVsI6Si10hZP1eV9hEJMuIgWoYB3OBI2mgJlwkMF32zhUstBEHXKpjrk

