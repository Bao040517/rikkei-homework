--
-- PostgreSQL database dump
--

\restrict d7svRcog0yOfWvdh0RorgSLC2RQySOpmKVx3jfcqc6XzhlhsnQgwS2LRhJ1u1cg

-- Dumped from database version 18.0
-- Dumped by pg_dump version 18.0

-- Started on 2025-11-07 12:27:23

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
-- TOC entry 12 (class 2615 OID 17646)
-- Name: advantage; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA advantage;


ALTER SCHEMA advantage OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 252 (class 1259 OID 17648)
-- Name: categories; Type: TABLE; Schema: advantage; Owner: postgres
--

CREATE TABLE advantage.categories (
    category_id integer NOT NULL,
    category_name character varying(100),
    description text
);


ALTER TABLE advantage.categories OWNER TO postgres;

--
-- TOC entry 251 (class 1259 OID 17647)
-- Name: categories_category_id_seq; Type: SEQUENCE; Schema: advantage; Owner: postgres
--

CREATE SEQUENCE advantage.categories_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE advantage.categories_category_id_seq OWNER TO postgres;

--
-- TOC entry 5125 (class 0 OID 0)
-- Dependencies: 251
-- Name: categories_category_id_seq; Type: SEQUENCE OWNED BY; Schema: advantage; Owner: postgres
--

ALTER SEQUENCE advantage.categories_category_id_seq OWNED BY advantage.categories.category_id;


--
-- TOC entry 256 (class 1259 OID 17673)
-- Name: customers; Type: TABLE; Schema: advantage; Owner: postgres
--

CREATE TABLE advantage.customers (
    customer_id integer NOT NULL,
    customer_name character varying(100) NOT NULL,
    email character varying(100),
    city character varying(50),
    join_date date
);


ALTER TABLE advantage.customers OWNER TO postgres;

--
-- TOC entry 255 (class 1259 OID 17672)
-- Name: customers_customer_id_seq; Type: SEQUENCE; Schema: advantage; Owner: postgres
--

CREATE SEQUENCE advantage.customers_customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE advantage.customers_customer_id_seq OWNER TO postgres;

--
-- TOC entry 5126 (class 0 OID 0)
-- Dependencies: 255
-- Name: customers_customer_id_seq; Type: SEQUENCE OWNED BY; Schema: advantage; Owner: postgres
--

ALTER SEQUENCE advantage.customers_customer_id_seq OWNED BY advantage.customers.customer_id;


--
-- TOC entry 260 (class 1259 OID 17699)
-- Name: order_items; Type: TABLE; Schema: advantage; Owner: postgres
--

CREATE TABLE advantage.order_items (
    item_id integer NOT NULL,
    order_id integer,
    product_id integer,
    quantity integer,
    unit_price integer
);


ALTER TABLE advantage.order_items OWNER TO postgres;

--
-- TOC entry 259 (class 1259 OID 17698)
-- Name: order_items_item_id_seq; Type: SEQUENCE; Schema: advantage; Owner: postgres
--

CREATE SEQUENCE advantage.order_items_item_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE advantage.order_items_item_id_seq OWNER TO postgres;

--
-- TOC entry 5127 (class 0 OID 0)
-- Dependencies: 259
-- Name: order_items_item_id_seq; Type: SEQUENCE OWNED BY; Schema: advantage; Owner: postgres
--

ALTER SEQUENCE advantage.order_items_item_id_seq OWNED BY advantage.order_items.item_id;


--
-- TOC entry 258 (class 1259 OID 17686)
-- Name: orders; Type: TABLE; Schema: advantage; Owner: postgres
--

CREATE TABLE advantage.orders (
    order_id integer NOT NULL,
    customer_id integer,
    order_date date,
    total_amount integer,
    status character varying(20)
);


ALTER TABLE advantage.orders OWNER TO postgres;

--
-- TOC entry 257 (class 1259 OID 17685)
-- Name: orders_order_id_seq; Type: SEQUENCE; Schema: advantage; Owner: postgres
--

CREATE SEQUENCE advantage.orders_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE advantage.orders_order_id_seq OWNER TO postgres;

--
-- TOC entry 5128 (class 0 OID 0)
-- Dependencies: 257
-- Name: orders_order_id_seq; Type: SEQUENCE OWNED BY; Schema: advantage; Owner: postgres
--

ALTER SEQUENCE advantage.orders_order_id_seq OWNED BY advantage.orders.order_id;


--
-- TOC entry 254 (class 1259 OID 17658)
-- Name: products; Type: TABLE; Schema: advantage; Owner: postgres
--

CREATE TABLE advantage.products (
    product_id integer NOT NULL,
    product_name character varying(100) NOT NULL,
    category_id integer,
    price integer NOT NULL,
    stock_quantity integer
);


ALTER TABLE advantage.products OWNER TO postgres;

--
-- TOC entry 253 (class 1259 OID 17657)
-- Name: products_product_id_seq; Type: SEQUENCE; Schema: advantage; Owner: postgres
--

CREATE SEQUENCE advantage.products_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE advantage.products_product_id_seq OWNER TO postgres;

--
-- TOC entry 5129 (class 0 OID 0)
-- Dependencies: 253
-- Name: products_product_id_seq; Type: SEQUENCE OWNED BY; Schema: advantage; Owner: postgres
--

ALTER SEQUENCE advantage.products_product_id_seq OWNED BY advantage.products.product_id;


--
-- TOC entry 4942 (class 2604 OID 17651)
-- Name: categories category_id; Type: DEFAULT; Schema: advantage; Owner: postgres
--

ALTER TABLE ONLY advantage.categories ALTER COLUMN category_id SET DEFAULT nextval('advantage.categories_category_id_seq'::regclass);


--
-- TOC entry 4944 (class 2604 OID 17676)
-- Name: customers customer_id; Type: DEFAULT; Schema: advantage; Owner: postgres
--

ALTER TABLE ONLY advantage.customers ALTER COLUMN customer_id SET DEFAULT nextval('advantage.customers_customer_id_seq'::regclass);


--
-- TOC entry 4946 (class 2604 OID 17702)
-- Name: order_items item_id; Type: DEFAULT; Schema: advantage; Owner: postgres
--

ALTER TABLE ONLY advantage.order_items ALTER COLUMN item_id SET DEFAULT nextval('advantage.order_items_item_id_seq'::regclass);


--
-- TOC entry 4945 (class 2604 OID 17689)
-- Name: orders order_id; Type: DEFAULT; Schema: advantage; Owner: postgres
--

ALTER TABLE ONLY advantage.orders ALTER COLUMN order_id SET DEFAULT nextval('advantage.orders_order_id_seq'::regclass);


--
-- TOC entry 4943 (class 2604 OID 17661)
-- Name: products product_id; Type: DEFAULT; Schema: advantage; Owner: postgres
--

ALTER TABLE ONLY advantage.products ALTER COLUMN product_id SET DEFAULT nextval('advantage.products_product_id_seq'::regclass);


--
-- TOC entry 5111 (class 0 OID 17648)
-- Dependencies: 252
-- Data for Name: categories; Type: TABLE DATA; Schema: advantage; Owner: postgres
--

COPY advantage.categories (category_id, category_name, description) FROM stdin;
1	Electronics	Thiết bị điện tử
2	Books	Sách giáo trình
3	Home Appliances	Đồ gia dụng
\.


--
-- TOC entry 5115 (class 0 OID 17673)
-- Dependencies: 256
-- Data for Name: customers; Type: TABLE DATA; Schema: advantage; Owner: postgres
--

COPY advantage.customers (customer_id, customer_name, email, city, join_date) FROM stdin;
1	Nguyễn Văn A	a@gmail.com	Hà Nội	2025-01-01
2	Trần Thị B	b@gmail.com	Đà Nẵng	2025-01-02
3	Lê Văn C	c@gmail.com	Hồ Chí Minh	2025-01-03
4	Phạm Thị D	d@gmail.com	Hà Nội	2025-01-04
\.


--
-- TOC entry 5119 (class 0 OID 17699)
-- Dependencies: 260
-- Data for Name: order_items; Type: TABLE DATA; Schema: advantage; Owner: postgres
--

COPY advantage.order_items (item_id, order_id, product_id, quantity, unit_price) FROM stdin;
1	1	1	2	1500
2	1	5	1	50
3	2	2	1	600
4	3	3	5	288
5	4	4	1	850
\.


--
-- TOC entry 5117 (class 0 OID 17686)
-- Dependencies: 258
-- Data for Name: orders; Type: TABLE DATA; Schema: advantage; Owner: postgres
--

COPY advantage.orders (order_id, customer_id, order_date, total_amount, status) FROM stdin;
1	1	2025-10-01	3050	PENDING
2	2	2025-10-02	600	CONFIRMED
3	3	2025-10-03	1440	PENDING
4	4	2025-10-04	850	SHIPPED
\.


--
-- TOC entry 5113 (class 0 OID 17658)
-- Dependencies: 254
-- Data for Name: products; Type: TABLE DATA; Schema: advantage; Owner: postgres
--

COPY advantage.products (product_id, product_name, category_id, price, stock_quantity) FROM stdin;
1	Laptop Dell	1	1500	10
2	IPhone 15	1	2000	5
3	Sách SQL cơ bản	2	20	50
4	Máy giặt Samsung	3	600	3
5	Chuột Logitech	1	25	50
\.


--
-- TOC entry 5130 (class 0 OID 0)
-- Dependencies: 251
-- Name: categories_category_id_seq; Type: SEQUENCE SET; Schema: advantage; Owner: postgres
--

SELECT pg_catalog.setval('advantage.categories_category_id_seq', 3, true);


--
-- TOC entry 5131 (class 0 OID 0)
-- Dependencies: 255
-- Name: customers_customer_id_seq; Type: SEQUENCE SET; Schema: advantage; Owner: postgres
--

SELECT pg_catalog.setval('advantage.customers_customer_id_seq', 4, true);


--
-- TOC entry 5132 (class 0 OID 0)
-- Dependencies: 259
-- Name: order_items_item_id_seq; Type: SEQUENCE SET; Schema: advantage; Owner: postgres
--

SELECT pg_catalog.setval('advantage.order_items_item_id_seq', 5, true);


--
-- TOC entry 5133 (class 0 OID 0)
-- Dependencies: 257
-- Name: orders_order_id_seq; Type: SEQUENCE SET; Schema: advantage; Owner: postgres
--

SELECT pg_catalog.setval('advantage.orders_order_id_seq', 4, true);


--
-- TOC entry 5134 (class 0 OID 0)
-- Dependencies: 253
-- Name: products_product_id_seq; Type: SEQUENCE SET; Schema: advantage; Owner: postgres
--

SELECT pg_catalog.setval('advantage.products_product_id_seq', 5, true);


--
-- TOC entry 4948 (class 2606 OID 17656)
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: advantage; Owner: postgres
--

ALTER TABLE ONLY advantage.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (category_id);


--
-- TOC entry 4952 (class 2606 OID 17682)
-- Name: customers customers_email_key; Type: CONSTRAINT; Schema: advantage; Owner: postgres
--

ALTER TABLE ONLY advantage.customers
    ADD CONSTRAINT customers_email_key UNIQUE (email);


--
-- TOC entry 4954 (class 2606 OID 17680)
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: advantage; Owner: postgres
--

ALTER TABLE ONLY advantage.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (customer_id);


--
-- TOC entry 4958 (class 2606 OID 17705)
-- Name: order_items order_items_pkey; Type: CONSTRAINT; Schema: advantage; Owner: postgres
--

ALTER TABLE ONLY advantage.order_items
    ADD CONSTRAINT order_items_pkey PRIMARY KEY (item_id);


--
-- TOC entry 4956 (class 2606 OID 17692)
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: advantage; Owner: postgres
--

ALTER TABLE ONLY advantage.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (order_id);


--
-- TOC entry 4950 (class 2606 OID 17666)
-- Name: products products_pkey; Type: CONSTRAINT; Schema: advantage; Owner: postgres
--

ALTER TABLE ONLY advantage.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (product_id);


--
-- TOC entry 4961 (class 2606 OID 17706)
-- Name: order_items order_items_order_id_fkey; Type: FK CONSTRAINT; Schema: advantage; Owner: postgres
--

ALTER TABLE ONLY advantage.order_items
    ADD CONSTRAINT order_items_order_id_fkey FOREIGN KEY (order_id) REFERENCES advantage.orders(order_id);


--
-- TOC entry 4962 (class 2606 OID 17711)
-- Name: order_items order_items_product_id_fkey; Type: FK CONSTRAINT; Schema: advantage; Owner: postgres
--

ALTER TABLE ONLY advantage.order_items
    ADD CONSTRAINT order_items_product_id_fkey FOREIGN KEY (product_id) REFERENCES advantage.products(product_id);


--
-- TOC entry 4960 (class 2606 OID 17693)
-- Name: orders orders_customer_id_fkey; Type: FK CONSTRAINT; Schema: advantage; Owner: postgres
--

ALTER TABLE ONLY advantage.orders
    ADD CONSTRAINT orders_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES advantage.customers(customer_id);


--
-- TOC entry 4959 (class 2606 OID 17667)
-- Name: products products_category_id_fkey; Type: FK CONSTRAINT; Schema: advantage; Owner: postgres
--

ALTER TABLE ONLY advantage.products
    ADD CONSTRAINT products_category_id_fkey FOREIGN KEY (category_id) REFERENCES advantage.categories(category_id);


-- Completed on 2025-11-07 12:27:23

--
-- PostgreSQL database dump complete
--

\unrestrict d7svRcog0yOfWvdh0RorgSLC2RQySOpmKVx3jfcqc6XzhlhsnQgwS2LRhJ1u1cg

