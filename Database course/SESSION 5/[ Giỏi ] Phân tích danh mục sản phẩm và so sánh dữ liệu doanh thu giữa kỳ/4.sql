--
-- PostgreSQL database dump
--

\restrict GIX3roFwcAg3ICQs8kcibwhpcsLu6Ya8RejXtFRSY1syiNajkkslrAIwNDLl2Ka

-- Dumped from database version 18.0
-- Dumped by pg_dump version 18.0

-- Started on 2025-11-07 09:20:21

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
-- TOC entry 9 (class 2615 OID 17508)
-- Name: revenue; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA revenue;


ALTER SCHEMA revenue OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 232 (class 1259 OID 17510)
-- Name: customers; Type: TABLE; Schema: revenue; Owner: postgres
--

CREATE TABLE revenue.customers (
    customer_id integer NOT NULL,
    customer_name character varying(100),
    city character varying(50)
);


ALTER TABLE revenue.customers OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 17509)
-- Name: customers_customer_id_seq; Type: SEQUENCE; Schema: revenue; Owner: postgres
--

CREATE SEQUENCE revenue.customers_customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE revenue.customers_customer_id_seq OWNER TO postgres;

--
-- TOC entry 5063 (class 0 OID 0)
-- Dependencies: 231
-- Name: customers_customer_id_seq; Type: SEQUENCE OWNED BY; Schema: revenue; Owner: postgres
--

ALTER SEQUENCE revenue.customers_customer_id_seq OWNED BY revenue.customers.customer_id;


--
-- TOC entry 236 (class 1259 OID 17563)
-- Name: order_items; Type: TABLE; Schema: revenue; Owner: postgres
--

CREATE TABLE revenue.order_items (
    item_id integer NOT NULL,
    order_id integer,
    product_name character varying(100),
    quantity integer,
    price numeric(10,2)
);


ALTER TABLE revenue.order_items OWNER TO postgres;

--
-- TOC entry 235 (class 1259 OID 17562)
-- Name: order_items_item_id_seq; Type: SEQUENCE; Schema: revenue; Owner: postgres
--

CREATE SEQUENCE revenue.order_items_item_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE revenue.order_items_item_id_seq OWNER TO postgres;

--
-- TOC entry 5064 (class 0 OID 0)
-- Dependencies: 235
-- Name: order_items_item_id_seq; Type: SEQUENCE OWNED BY; Schema: revenue; Owner: postgres
--

ALTER SEQUENCE revenue.order_items_item_id_seq OWNED BY revenue.order_items.item_id;


--
-- TOC entry 234 (class 1259 OID 17550)
-- Name: orders; Type: TABLE; Schema: revenue; Owner: postgres
--

CREATE TABLE revenue.orders (
    order_id integer NOT NULL,
    customer_id integer,
    order_date date,
    total_amount numeric(10,2)
);


ALTER TABLE revenue.orders OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 17549)
-- Name: orders_order_id_seq; Type: SEQUENCE; Schema: revenue; Owner: postgres
--

CREATE SEQUENCE revenue.orders_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE revenue.orders_order_id_seq OWNER TO postgres;

--
-- TOC entry 5065 (class 0 OID 0)
-- Dependencies: 233
-- Name: orders_order_id_seq; Type: SEQUENCE OWNED BY; Schema: revenue; Owner: postgres
--

ALTER SEQUENCE revenue.orders_order_id_seq OWNED BY revenue.orders.order_id;


--
-- TOC entry 4894 (class 2604 OID 17513)
-- Name: customers customer_id; Type: DEFAULT; Schema: revenue; Owner: postgres
--

ALTER TABLE ONLY revenue.customers ALTER COLUMN customer_id SET DEFAULT nextval('revenue.customers_customer_id_seq'::regclass);


--
-- TOC entry 4896 (class 2604 OID 17566)
-- Name: order_items item_id; Type: DEFAULT; Schema: revenue; Owner: postgres
--

ALTER TABLE ONLY revenue.order_items ALTER COLUMN item_id SET DEFAULT nextval('revenue.order_items_item_id_seq'::regclass);


--
-- TOC entry 4895 (class 2604 OID 17553)
-- Name: orders order_id; Type: DEFAULT; Schema: revenue; Owner: postgres
--

ALTER TABLE ONLY revenue.orders ALTER COLUMN order_id SET DEFAULT nextval('revenue.orders_order_id_seq'::regclass);


--
-- TOC entry 5053 (class 0 OID 17510)
-- Dependencies: 232
-- Data for Name: customers; Type: TABLE DATA; Schema: revenue; Owner: postgres
--

COPY revenue.customers (customer_id, customer_name, city) FROM stdin;
1	Nguyễn Văn A	Hà Nội
2	Trần Thị B	Đà Nẵng
3	Lê Văn C	Hồ Chí Minh
4	Phạm Thị D	Hà Nội
\.


--
-- TOC entry 5057 (class 0 OID 17563)
-- Dependencies: 236
-- Data for Name: order_items; Type: TABLE DATA; Schema: revenue; Owner: postgres
--

COPY revenue.order_items (item_id, order_id, product_name, quantity, price) FROM stdin;
1	1	Laptop Dell	2	1500.00
2	2	IPhone 15	1	1500.00
3	3	Bàn học gỗ	5	500.00
4	4	IPhone 15	4	1000.00
5	1	Chuột Logitech	1	500.00
\.


--
-- TOC entry 5055 (class 0 OID 17550)
-- Dependencies: 234
-- Data for Name: orders; Type: TABLE DATA; Schema: revenue; Owner: postgres
--

COPY revenue.orders (order_id, customer_id, order_date, total_amount) FROM stdin;
1	1	2024-12-20	3000.00
2	2	2025-01-05	1500.00
3	1	2025-02-10	2500.00
4	3	2025-02-15	4000.00
5	4	2025-03-01	800.00
\.


--
-- TOC entry 5066 (class 0 OID 0)
-- Dependencies: 231
-- Name: customers_customer_id_seq; Type: SEQUENCE SET; Schema: revenue; Owner: postgres
--

SELECT pg_catalog.setval('revenue.customers_customer_id_seq', 4, true);


--
-- TOC entry 5067 (class 0 OID 0)
-- Dependencies: 235
-- Name: order_items_item_id_seq; Type: SEQUENCE SET; Schema: revenue; Owner: postgres
--

SELECT pg_catalog.setval('revenue.order_items_item_id_seq', 5, true);


--
-- TOC entry 5068 (class 0 OID 0)
-- Dependencies: 233
-- Name: orders_order_id_seq; Type: SEQUENCE SET; Schema: revenue; Owner: postgres
--

SELECT pg_catalog.setval('revenue.orders_order_id_seq', 5, true);


--
-- TOC entry 4898 (class 2606 OID 17516)
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: revenue; Owner: postgres
--

ALTER TABLE ONLY revenue.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (customer_id);


--
-- TOC entry 4902 (class 2606 OID 17569)
-- Name: order_items order_items_pkey; Type: CONSTRAINT; Schema: revenue; Owner: postgres
--

ALTER TABLE ONLY revenue.order_items
    ADD CONSTRAINT order_items_pkey PRIMARY KEY (item_id);


--
-- TOC entry 4900 (class 2606 OID 17556)
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: revenue; Owner: postgres
--

ALTER TABLE ONLY revenue.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (order_id);


--
-- TOC entry 4904 (class 2606 OID 17570)
-- Name: order_items order_items_order_id_fkey; Type: FK CONSTRAINT; Schema: revenue; Owner: postgres
--

ALTER TABLE ONLY revenue.order_items
    ADD CONSTRAINT order_items_order_id_fkey FOREIGN KEY (order_id) REFERENCES revenue.orders(order_id);


--
-- TOC entry 4903 (class 2606 OID 17557)
-- Name: orders orders_customer_id_fkey; Type: FK CONSTRAINT; Schema: revenue; Owner: postgres
--

ALTER TABLE ONLY revenue.orders
    ADD CONSTRAINT orders_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES revenue.customers(customer_id);


-- Completed on 2025-11-07 09:20:21

--
-- PostgreSQL database dump complete
--

\unrestrict GIX3roFwcAg3ICQs8kcibwhpcsLu6Ya8RejXtFRSY1syiNajkkslrAIwNDLl2Ka

