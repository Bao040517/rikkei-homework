--
-- PostgreSQL database dump
--

\restrict 04h9MZOrBfdk3frbG4rqeQhqsMS26gNEhFmRMFEX4Exb3d7t18rBVJIPEAHSlhX

-- Dumped from database version 18.0
-- Dumped by pg_dump version 18.0

-- Started on 2025-11-05 09:57:06

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
-- TOC entry 11 (class 2615 OID 17336)
-- Name: saleproduction; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA saleproduction;


ALTER SCHEMA saleproduction OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 249 (class 1259 OID 17348)
-- Name: customers; Type: TABLE; Schema: saleproduction; Owner: postgres
--

CREATE TABLE saleproduction.customers (
    customer_id integer NOT NULL,
    full_name character varying(100) NOT NULL,
    email character varying(100) NOT NULL,
    phone character varying(20),
    city character varying(50),
    join_date date
);


ALTER TABLE saleproduction.customers OWNER TO postgres;

--
-- TOC entry 251 (class 1259 OID 17366)
-- Name: orders; Type: TABLE; Schema: saleproduction; Owner: postgres
--

CREATE TABLE saleproduction.orders (
    order_id integer NOT NULL,
    customer_id integer NOT NULL,
    order_date date NOT NULL,
    total_amount integer,
    status character varying(20),
    product_id integer
);


ALTER TABLE saleproduction.orders OWNER TO postgres;

--
-- TOC entry 250 (class 1259 OID 17358)
-- Name: products; Type: TABLE; Schema: saleproduction; Owner: postgres
--

CREATE TABLE saleproduction.products (
    product_id integer NOT NULL,
    product_name character varying(100) NOT NULL,
    category character varying(50),
    price integer NOT NULL,
    stock_quantity integer
);


ALTER TABLE saleproduction.products OWNER TO postgres;

--
-- TOC entry 5073 (class 0 OID 17348)
-- Dependencies: 249
-- Data for Name: customers; Type: TABLE DATA; Schema: saleproduction; Owner: postgres
--

COPY saleproduction.customers (customer_id, full_name, email, phone, city, join_date) FROM stdin;
2	Trần Thị Bình	binh@gmail.com	0923456789	HCM	2025-01-02
3	Lê Văn Cường	cuong@gmail.com	0934567890	Đà Nẵng	2025-01-03
4	Phạm Dương	duong@gmail.com	0945678901	Hà Nội	2025-01-04
5	Nguyễn Thị Em	em@gmail.com	0956789012	HCM	2025-01-05
6	Hoàng Minh	minh@gmail.com	0967890123	Hà Nội	2025-01-06
8	Đặng Hùng	hung@gmail.com	0989012345	HCM	2025-01-08
1	Nguyễn Văn An	an@gmail.com	0911222333	Hà Nội	2025-01-01
7	Phan Lan	lan@gmail.com	\N	Đà Nẵng	2025-01-07
\.


--
-- TOC entry 5075 (class 0 OID 17366)
-- Dependencies: 251
-- Data for Name: orders; Type: TABLE DATA; Schema: saleproduction; Owner: postgres
--

COPY saleproduction.orders (order_id, customer_id, order_date, total_amount, status, product_id) FROM stdin;
1	1	2025-10-01	3050	CONFIRMED	1
2	2	2025-10-02	600	CONFIRMED	2
3	3	2025-10-03	1440	CONFIRMED	3
4	4	2025-10-04	850	SHIPPED	4
5	5	2025-10-05	2200	DELIVERED	5
6	6	2025-10-06	150	CANCELLED	6
7	7	2025-10-07	700	CONFIRMED	7
8	8	2025-10-08	1250	CONFIRMED	8
\.


--
-- TOC entry 5074 (class 0 OID 17358)
-- Dependencies: 250
-- Data for Name: products; Type: TABLE DATA; Schema: saleproduction; Owner: postgres
--

COPY saleproduction.products (product_id, product_name, category, price, stock_quantity) FROM stdin;
6	Tủ lạnh LG	Home Appliances	800	5
7	Máy giặt Samsung	Home Appliances	600	3
8	Máy lạnh Daikin	Home Appliances	1200	4
9	Bình đun nước	Home Appliances	50	30
10	Nồi cơm điện	Home Appliances	70	20
11	Sách SQL cơ bản	Books	20	50
12	Sách Python nâng cao	Books	25	40
13	Sách Lập trình Java	Books	30	35
14	Sách Kỹ năng mềm	Books	15	60
15	Sách Cấu trúc dữ liệu	Books	22	45
1	Laptop Dell	Electronics	1650	10
2	Laptop HP	Electronics	1540	5
3	Chuột Logitech	Electronics	27	50
4	Bàn phím Razer	Electronics	132	20
5	Màn hình Samsung	Electronics	330	15
\.


--
-- TOC entry 4918 (class 2606 OID 17357)
-- Name: customers customers_email_key; Type: CONSTRAINT; Schema: saleproduction; Owner: postgres
--

ALTER TABLE ONLY saleproduction.customers
    ADD CONSTRAINT customers_email_key UNIQUE (email);


--
-- TOC entry 4920 (class 2606 OID 17355)
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: saleproduction; Owner: postgres
--

ALTER TABLE ONLY saleproduction.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (customer_id);


--
-- TOC entry 4924 (class 2606 OID 17373)
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: saleproduction; Owner: postgres
--

ALTER TABLE ONLY saleproduction.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (order_id);


--
-- TOC entry 4922 (class 2606 OID 17365)
-- Name: products products_pkey; Type: CONSTRAINT; Schema: saleproduction; Owner: postgres
--

ALTER TABLE ONLY saleproduction.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (product_id);


--
-- TOC entry 4925 (class 2606 OID 17374)
-- Name: orders fk_customer; Type: FK CONSTRAINT; Schema: saleproduction; Owner: postgres
--

ALTER TABLE ONLY saleproduction.orders
    ADD CONSTRAINT fk_customer FOREIGN KEY (customer_id) REFERENCES saleproduction.customers(customer_id);


-- Completed on 2025-11-05 09:57:06

--
-- PostgreSQL database dump complete
--

\unrestrict 04h9MZOrBfdk3frbG4rqeQhqsMS26gNEhFmRMFEX4Exb3d7t18rBVJIPEAHSlhX

