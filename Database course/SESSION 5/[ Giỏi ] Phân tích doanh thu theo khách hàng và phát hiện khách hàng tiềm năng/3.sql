--
-- PostgreSQL database dump
--

\restrict UtXskR7tmXVf0iIGnlCa9kArbKAjHwm0MVPoTXz5VB2WiAgT7VlcTWgrvpPyH0K

-- Dumped from database version 18.0
-- Dumped by pg_dump version 18.0

-- Started on 2025-11-07 07:59:05

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
-- TOC entry 8 (class 2615 OID 17474)
-- Name: potential; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA potential;


ALTER SCHEMA potential OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 227 (class 1259 OID 17475)
-- Name: customers; Type: TABLE; Schema: potential; Owner: postgres
--

CREATE TABLE potential.customers (
    customer_id integer NOT NULL,
    customer_name character varying(100) NOT NULL,
    city character varying(50)
);


ALTER TABLE potential.customers OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 17495)
-- Name: order_items; Type: TABLE; Schema: potential; Owner: postgres
--

CREATE TABLE potential.order_items (
    item_id integer NOT NULL,
    order_id integer NOT NULL,
    product_id integer NOT NULL,
    quantity integer,
    price integer
);


ALTER TABLE potential.order_items OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 17482)
-- Name: orders; Type: TABLE; Schema: potential; Owner: postgres
--

CREATE TABLE potential.orders (
    order_id integer NOT NULL,
    customer_id integer NOT NULL,
    order_date date NOT NULL,
    total_price integer
);


ALTER TABLE potential.orders OWNER TO postgres;

--
-- TOC entry 5036 (class 0 OID 17475)
-- Dependencies: 227
-- Data for Name: customers; Type: TABLE DATA; Schema: potential; Owner: postgres
--

COPY potential.customers (customer_id, customer_name, city) FROM stdin;
1	Nguyễn Văn A	Hà Nội
2	Trần Thị B	Đà Nẵng
3	Lê Văn C	Hồ Chí Minh
4	Phạm Thị D	Hà Nội
\.


--
-- TOC entry 5038 (class 0 OID 17495)
-- Dependencies: 229
-- Data for Name: order_items; Type: TABLE DATA; Schema: potential; Owner: postgres
--

COPY potential.order_items (item_id, order_id, product_id, quantity, price) FROM stdin;
1	101	1	2	1500
2	102	2	1	1500
3	103	3	5	500
4	104	2	4	1000
\.


--
-- TOC entry 5037 (class 0 OID 17482)
-- Dependencies: 228
-- Data for Name: orders; Type: TABLE DATA; Schema: potential; Owner: postgres
--

COPY potential.orders (order_id, customer_id, order_date, total_price) FROM stdin;
101	1	2024-12-20	3000
102	2	2025-01-05	1500
103	1	2025-02-10	2500
104	3	2025-02-15	4000
105	4	2025-03-01	800
\.


--
-- TOC entry 4882 (class 2606 OID 17481)
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: potential; Owner: postgres
--

ALTER TABLE ONLY potential.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (customer_id);


--
-- TOC entry 4886 (class 2606 OID 17502)
-- Name: order_items order_items_pkey; Type: CONSTRAINT; Schema: potential; Owner: postgres
--

ALTER TABLE ONLY potential.order_items
    ADD CONSTRAINT order_items_pkey PRIMARY KEY (item_id);


--
-- TOC entry 4884 (class 2606 OID 17489)
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: potential; Owner: postgres
--

ALTER TABLE ONLY potential.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (order_id);


--
-- TOC entry 4888 (class 2606 OID 17503)
-- Name: order_items order_items_order_id_fkey; Type: FK CONSTRAINT; Schema: potential; Owner: postgres
--

ALTER TABLE ONLY potential.order_items
    ADD CONSTRAINT order_items_order_id_fkey FOREIGN KEY (order_id) REFERENCES potential.orders(order_id);


--
-- TOC entry 4887 (class 2606 OID 17490)
-- Name: orders orders_customer_id_fkey; Type: FK CONSTRAINT; Schema: potential; Owner: postgres
--

ALTER TABLE ONLY potential.orders
    ADD CONSTRAINT orders_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES potential.customers(customer_id);


-- Completed on 2025-11-07 07:59:05

--
-- PostgreSQL database dump complete
--

\unrestrict UtXskR7tmXVf0iIGnlCa9kArbKAjHwm0MVPoTXz5VB2WiAgT7VlcTWgrvpPyH0K

