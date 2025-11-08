--
-- PostgreSQL database dump
--

\restrict qXt4huGH2xzZTeOKQSpIljuBQbfnhwsSV7ZsZ7FS6froxqeUQHDmNgUT63rer9n

-- Dumped from database version 18.0
-- Dumped by pg_dump version 18.0

-- Started on 2025-11-08 22:49:33

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
-- TOC entry 9 (class 2615 OID 17745)
-- Name: sale; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA sale;


ALTER SCHEMA sale OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 230 (class 1259 OID 17747)
-- Name: order; Type: TABLE; Schema: sale; Owner: postgres
--

CREATE TABLE sale."order" (
    id integer NOT NULL,
    customer_id integer,
    order_date date,
    total numeric(10,2),
    status character varying(20)
);


ALTER TABLE sale."order" OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 17746)
-- Name: order_id_seq; Type: SEQUENCE; Schema: sale; Owner: postgres
--

CREATE SEQUENCE sale.order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE sale.order_id_seq OWNER TO postgres;

--
-- TOC entry 5029 (class 0 OID 0)
-- Dependencies: 229
-- Name: order_id_seq; Type: SEQUENCE OWNED BY; Schema: sale; Owner: postgres
--

ALTER SEQUENCE sale.order_id_seq OWNED BY sale."order".id;


--
-- TOC entry 4872 (class 2604 OID 17750)
-- Name: order id; Type: DEFAULT; Schema: sale; Owner: postgres
--

ALTER TABLE ONLY sale."order" ALTER COLUMN id SET DEFAULT nextval('sale.order_id_seq'::regclass);


--
-- TOC entry 5023 (class 0 OID 17747)
-- Dependencies: 230
-- Data for Name: order; Type: TABLE DATA; Schema: sale; Owner: postgres
--

COPY sale."order" (id, customer_id, order_date, total, status) FROM stdin;
1	1	2024-10-01	600000.00	Pending
2	2	2024-10-15	450000.00	Completed
3	3	2024-09-20	800000.00	Shipped
4	4	2024-10-10	1200000.00	Processing
5	5	2024-11-05	300000.00	Pending
\.


--
-- TOC entry 5030 (class 0 OID 0)
-- Dependencies: 229
-- Name: order_id_seq; Type: SEQUENCE SET; Schema: sale; Owner: postgres
--

SELECT pg_catalog.setval('sale.order_id_seq', 5, true);


--
-- TOC entry 4874 (class 2606 OID 17753)
-- Name: order order_pkey; Type: CONSTRAINT; Schema: sale; Owner: postgres
--

ALTER TABLE ONLY sale."order"
    ADD CONSTRAINT order_pkey PRIMARY KEY (id);


-- Completed on 2025-11-08 22:49:34

--
-- PostgreSQL database dump complete
--

\unrestrict qXt4huGH2xzZTeOKQSpIljuBQbfnhwsSV7ZsZ7FS6froxqeUQHDmNgUT63rer9n

