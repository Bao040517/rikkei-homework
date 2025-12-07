--
-- PostgreSQL database dump
--

\restrict CPLc0JaIR6Luk3jruPfKK7TJkq7RBooK7fDr8itCu4YvkIuqWnHPDd3Sg564RuV

-- Dumped from database version 18.0
-- Dumped by pg_dump version 18.0

-- Started on 2025-11-12 09:54:42

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
-- TOC entry 8 (class 2615 OID 18239)
-- Name: cus; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA cus;


ALTER SCHEMA cus OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 225 (class 1259 OID 18241)
-- Name: customer; Type: TABLE; Schema: cus; Owner: postgres
--

CREATE TABLE cus.customer (
    customer_id integer NOT NULL,
    full_name character varying(100),
    email character varying(100),
    phone character varying(15)
);


ALTER TABLE cus.customer OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 18240)
-- Name: customer_customer_id_seq; Type: SEQUENCE; Schema: cus; Owner: postgres
--

CREATE SEQUENCE cus.customer_customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE cus.customer_customer_id_seq OWNER TO postgres;

--
-- TOC entry 5083 (class 0 OID 0)
-- Dependencies: 224
-- Name: customer_customer_id_seq; Type: SEQUENCE OWNED BY; Schema: cus; Owner: postgres
--

ALTER SEQUENCE cus.customer_customer_id_seq OWNED BY cus.customer.customer_id;


--
-- TOC entry 227 (class 1259 OID 18249)
-- Name: orders; Type: TABLE; Schema: cus; Owner: postgres
--

CREATE TABLE cus.orders (
    order_id integer NOT NULL,
    customer_id integer,
    total_amount numeric(10,2),
    order_date date
);


ALTER TABLE cus.orders OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 18248)
-- Name: orders_order_id_seq; Type: SEQUENCE; Schema: cus; Owner: postgres
--

CREATE SEQUENCE cus.orders_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE cus.orders_order_id_seq OWNER TO postgres;

--
-- TOC entry 5084 (class 0 OID 0)
-- Dependencies: 226
-- Name: orders_order_id_seq; Type: SEQUENCE OWNED BY; Schema: cus; Owner: postgres
--

ALTER SEQUENCE cus.orders_order_id_seq OWNED BY cus.orders.order_id;


--
-- TOC entry 228 (class 1259 OID 18273)
-- Name: v_order_summary; Type: VIEW; Schema: cus; Owner: postgres
--

CREATE VIEW cus.v_order_summary AS
 SELECT order_id,
    customer_id,
    total_amount,
    order_date
   FROM cus.orders
  WITH CASCADED CHECK OPTION;


ALTER VIEW cus.v_order_summary OWNER TO postgres;

--
-- TOC entry 4919 (class 2604 OID 18244)
-- Name: customer customer_id; Type: DEFAULT; Schema: cus; Owner: postgres
--

ALTER TABLE ONLY cus.customer ALTER COLUMN customer_id SET DEFAULT nextval('cus.customer_customer_id_seq'::regclass);


--
-- TOC entry 4920 (class 2604 OID 18252)
-- Name: orders order_id; Type: DEFAULT; Schema: cus; Owner: postgres
--

ALTER TABLE ONLY cus.orders ALTER COLUMN order_id SET DEFAULT nextval('cus.orders_order_id_seq'::regclass);


--
-- TOC entry 5075 (class 0 OID 18241)
-- Dependencies: 225
-- Data for Name: customer; Type: TABLE DATA; Schema: cus; Owner: postgres
--

COPY cus.customer (customer_id, full_name, email, phone) FROM stdin;
1	Nguyễn Văn An	an.nguyen@example.com	0912345678
2	Trần Thị Bình	binh.tran@example.com	0987654321
3	Lê Văn Cường	cuong.le@example.com	0909998888
4	Phạm Thu Hà	ha.pham@example.com	0911222333
\.


--
-- TOC entry 5077 (class 0 OID 18249)
-- Dependencies: 227
-- Data for Name: orders; Type: TABLE DATA; Schema: cus; Owner: postgres
--

COPY cus.orders (order_id, customer_id, total_amount, order_date) FROM stdin;
2	1	180000.00	2025-02-15
3	2	350000.00	2025-01-20
4	3	500000.00	2025-02-10
5	4	200000.00	2025-03-02
6	2	450000.00	2025-03-12
1	1	300000.00	2025-01-05
\.


--
-- TOC entry 5085 (class 0 OID 0)
-- Dependencies: 224
-- Name: customer_customer_id_seq; Type: SEQUENCE SET; Schema: cus; Owner: postgres
--

SELECT pg_catalog.setval('cus.customer_customer_id_seq', 4, true);


--
-- TOC entry 5086 (class 0 OID 0)
-- Dependencies: 226
-- Name: orders_order_id_seq; Type: SEQUENCE SET; Schema: cus; Owner: postgres
--

SELECT pg_catalog.setval('cus.orders_order_id_seq', 6, true);


--
-- TOC entry 4922 (class 2606 OID 18247)
-- Name: customer customer_pkey; Type: CONSTRAINT; Schema: cus; Owner: postgres
--

ALTER TABLE ONLY cus.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (customer_id);


--
-- TOC entry 4924 (class 2606 OID 18255)
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: cus; Owner: postgres
--

ALTER TABLE ONLY cus.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (order_id);


--
-- TOC entry 4925 (class 2606 OID 18256)
-- Name: orders orders_customer_id_fkey; Type: FK CONSTRAINT; Schema: cus; Owner: postgres
--

ALTER TABLE ONLY cus.orders
    ADD CONSTRAINT orders_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES cus.customer(customer_id);


-- Completed on 2025-11-12 09:54:42

--
-- PostgreSQL database dump complete
--

\unrestrict CPLc0JaIR6Luk3jruPfKK7TJkq7RBooK7fDr8itCu4YvkIuqWnHPDd3Sg564RuV

