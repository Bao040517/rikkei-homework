--
-- PostgreSQL database dump
--

\restrict e67gpHZb1137u6hzpXHcQHjBymrFhhCIyThmJHDOEKG1dNaheG3RvyYIgWbmQcY

-- Dumped from database version 18.0
-- Dumped by pg_dump version 18.0

-- Started on 2025-11-08 23:00:31

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
-- TOC entry 11 (class 2615 OID 17763)
-- Name: profit; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA profit;


ALTER SCHEMA profit OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 236 (class 1259 OID 17765)
-- Name: orders; Type: TABLE; Schema: profit; Owner: postgres
--

CREATE TABLE profit.orders (
    id integer NOT NULL,
    customer_id integer,
    order_date date,
    total_amount numeric(10,2)
);


ALTER TABLE profit.orders OWNER TO postgres;

--
-- TOC entry 235 (class 1259 OID 17764)
-- Name: orders_id_seq; Type: SEQUENCE; Schema: profit; Owner: postgres
--

CREATE SEQUENCE profit.orders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE profit.orders_id_seq OWNER TO postgres;

--
-- TOC entry 5039 (class 0 OID 0)
-- Dependencies: 235
-- Name: orders_id_seq; Type: SEQUENCE OWNED BY; Schema: profit; Owner: postgres
--

ALTER SEQUENCE profit.orders_id_seq OWNED BY profit.orders.id;


--
-- TOC entry 4882 (class 2604 OID 17768)
-- Name: orders id; Type: DEFAULT; Schema: profit; Owner: postgres
--

ALTER TABLE ONLY profit.orders ALTER COLUMN id SET DEFAULT nextval('profit.orders_id_seq'::regclass);


--
-- TOC entry 5033 (class 0 OID 17765)
-- Dependencies: 236
-- Data for Name: orders; Type: TABLE DATA; Schema: profit; Owner: postgres
--

COPY profit.orders (id, customer_id, order_date, total_amount) FROM stdin;
1	1	2024-01-15	12000000.00
2	2	2024-03-20	5000000.00
3	1	2024-05-10	7000000.00
4	3	2024-08-05	15000000.00
5	4	2023-11-12	3000000.00
6	2	2023-12-25	10000000.00
7	5	2024-09-18	20000000.00
\.


--
-- TOC entry 5040 (class 0 OID 0)
-- Dependencies: 235
-- Name: orders_id_seq; Type: SEQUENCE SET; Schema: profit; Owner: postgres
--

SELECT pg_catalog.setval('profit.orders_id_seq', 7, true);


--
-- TOC entry 4884 (class 2606 OID 17771)
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: profit; Owner: postgres
--

ALTER TABLE ONLY profit.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);


-- Completed on 2025-11-08 23:00:31

--
-- PostgreSQL database dump complete
--

\unrestrict e67gpHZb1137u6hzpXHcQHjBymrFhhCIyThmJHDOEKG1dNaheG3RvyYIgWbmQcY

