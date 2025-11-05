--
-- PostgreSQL database dump
--

\restrict J5QxikApR6upIQxeWor3ebLQoL12KztGdcZhCNHO86lyIMriwTg5CBkp74PiUVC

-- Dumped from database version 18.0
-- Dumped by pg_dump version 18.0

-- Started on 2025-11-01 23:26:26

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
-- TOC entry 6 (class 2615 OID 16761)
-- Name: shop; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA shop;


ALTER SCHEMA shop OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 223 (class 1259 OID 16779)
-- Name: categories; Type: TABLE; Schema: shop; Owner: postgres
--

CREATE TABLE shop.categories (
    category_id integer NOT NULL,
    category_name character varying(100) NOT NULL
);


ALTER TABLE shop.categories OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16778)
-- Name: categories_category_id_seq; Type: SEQUENCE; Schema: shop; Owner: postgres
--

CREATE SEQUENCE shop.categories_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE shop.categories_category_id_seq OWNER TO postgres;

--
-- TOC entry 5083 (class 0 OID 0)
-- Dependencies: 222
-- Name: categories_category_id_seq; Type: SEQUENCE OWNED BY; Schema: shop; Owner: postgres
--

ALTER SEQUENCE shop.categories_category_id_seq OWNED BY shop.categories.category_id;


--
-- TOC entry 229 (class 1259 OID 16821)
-- Name: orderdetails; Type: TABLE; Schema: shop; Owner: postgres
--

CREATE TABLE shop.orderdetails (
    order_detail_id integer NOT NULL,
    order_id integer,
    product_id integer,
    quantity integer,
    price_each numeric(10,2),
    CONSTRAINT orderdetails_price_each_check CHECK ((price_each > (0)::numeric)),
    CONSTRAINT orderdetails_quantity_check CHECK ((quantity > 0))
);


ALTER TABLE shop.orderdetails OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 16820)
-- Name: orderdetails_order_detail_id_seq; Type: SEQUENCE; Schema: shop; Owner: postgres
--

CREATE SEQUENCE shop.orderdetails_order_detail_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE shop.orderdetails_order_detail_id_seq OWNER TO postgres;

--
-- TOC entry 5084 (class 0 OID 0)
-- Dependencies: 228
-- Name: orderdetails_order_detail_id_seq; Type: SEQUENCE OWNED BY; Schema: shop; Owner: postgres
--

ALTER SEQUENCE shop.orderdetails_order_detail_id_seq OWNED BY shop.orderdetails.order_detail_id;


--
-- TOC entry 227 (class 1259 OID 16806)
-- Name: orders; Type: TABLE; Schema: shop; Owner: postgres
--

CREATE TABLE shop.orders (
    order_id integer NOT NULL,
    user_id integer,
    order_date date NOT NULL,
    status character varying(20),
    CONSTRAINT orders_status_check CHECK (((status)::text = ANY ((ARRAY['Pending'::character varying, 'Shipped'::character varying, 'Delivered'::character varying, 'Cancelled'::character varying])::text[])))
);


ALTER TABLE shop.orders OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 16805)
-- Name: orders_order_id_seq; Type: SEQUENCE; Schema: shop; Owner: postgres
--

CREATE SEQUENCE shop.orders_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE shop.orders_order_id_seq OWNER TO postgres;

--
-- TOC entry 5085 (class 0 OID 0)
-- Dependencies: 226
-- Name: orders_order_id_seq; Type: SEQUENCE OWNED BY; Schema: shop; Owner: postgres
--

ALTER SEQUENCE shop.orders_order_id_seq OWNED BY shop.orders.order_id;


--
-- TOC entry 231 (class 1259 OID 16841)
-- Name: payments; Type: TABLE; Schema: shop; Owner: postgres
--

CREATE TABLE shop.payments (
    payment_id integer NOT NULL,
    order_id integer,
    amount numeric(10,2),
    payment_date date NOT NULL,
    method character varying(30),
    CONSTRAINT payments_amount_check CHECK ((amount >= (0)::numeric)),
    CONSTRAINT payments_method_check CHECK (((method)::text = ANY ((ARRAY['Credit Card'::character varying, 'Momo'::character varying, 'Bank Transfer'::character varying, 'Cash'::character varying])::text[])))
);


ALTER TABLE shop.payments OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 16840)
-- Name: payments_payment_id_seq; Type: SEQUENCE; Schema: shop; Owner: postgres
--

CREATE SEQUENCE shop.payments_payment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE shop.payments_payment_id_seq OWNER TO postgres;

--
-- TOC entry 5086 (class 0 OID 0)
-- Dependencies: 230
-- Name: payments_payment_id_seq; Type: SEQUENCE OWNED BY; Schema: shop; Owner: postgres
--

ALTER SEQUENCE shop.payments_payment_id_seq OWNED BY shop.payments.payment_id;


--
-- TOC entry 225 (class 1259 OID 16790)
-- Name: products; Type: TABLE; Schema: shop; Owner: postgres
--

CREATE TABLE shop.products (
    product_id integer NOT NULL,
    product_name character varying(100) NOT NULL,
    price numeric(10,2),
    stock integer,
    category_id integer,
    CONSTRAINT products_price_check CHECK ((price > (0)::numeric)),
    CONSTRAINT products_stock_check CHECK ((stock >= 0))
);


ALTER TABLE shop.products OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 16789)
-- Name: products_product_id_seq; Type: SEQUENCE; Schema: shop; Owner: postgres
--

CREATE SEQUENCE shop.products_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE shop.products_product_id_seq OWNER TO postgres;

--
-- TOC entry 5087 (class 0 OID 0)
-- Dependencies: 224
-- Name: products_product_id_seq; Type: SEQUENCE OWNED BY; Schema: shop; Owner: postgres
--

ALTER SEQUENCE shop.products_product_id_seq OWNED BY shop.products.product_id;


--
-- TOC entry 221 (class 1259 OID 16763)
-- Name: users; Type: TABLE; Schema: shop; Owner: postgres
--

CREATE TABLE shop.users (
    user_id integer NOT NULL,
    username character varying(50) NOT NULL,
    email character varying(100) NOT NULL,
    password character varying(100) NOT NULL,
    role character varying(20),
    CONSTRAINT users_role_check CHECK (((role)::text = ANY ((ARRAY['Customer'::character varying, 'Admin'::character varying])::text[])))
);


ALTER TABLE shop.users OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16762)
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: shop; Owner: postgres
--

CREATE SEQUENCE shop.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE shop.users_user_id_seq OWNER TO postgres;

--
-- TOC entry 5088 (class 0 OID 0)
-- Dependencies: 220
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: shop; Owner: postgres
--

ALTER SEQUENCE shop.users_user_id_seq OWNED BY shop.users.user_id;


--
-- TOC entry 4883 (class 2604 OID 16782)
-- Name: categories category_id; Type: DEFAULT; Schema: shop; Owner: postgres
--

ALTER TABLE ONLY shop.categories ALTER COLUMN category_id SET DEFAULT nextval('shop.categories_category_id_seq'::regclass);


--
-- TOC entry 4886 (class 2604 OID 16824)
-- Name: orderdetails order_detail_id; Type: DEFAULT; Schema: shop; Owner: postgres
--

ALTER TABLE ONLY shop.orderdetails ALTER COLUMN order_detail_id SET DEFAULT nextval('shop.orderdetails_order_detail_id_seq'::regclass);


--
-- TOC entry 4885 (class 2604 OID 16809)
-- Name: orders order_id; Type: DEFAULT; Schema: shop; Owner: postgres
--

ALTER TABLE ONLY shop.orders ALTER COLUMN order_id SET DEFAULT nextval('shop.orders_order_id_seq'::regclass);


--
-- TOC entry 4887 (class 2604 OID 16844)
-- Name: payments payment_id; Type: DEFAULT; Schema: shop; Owner: postgres
--

ALTER TABLE ONLY shop.payments ALTER COLUMN payment_id SET DEFAULT nextval('shop.payments_payment_id_seq'::regclass);


--
-- TOC entry 4884 (class 2604 OID 16793)
-- Name: products product_id; Type: DEFAULT; Schema: shop; Owner: postgres
--

ALTER TABLE ONLY shop.products ALTER COLUMN product_id SET DEFAULT nextval('shop.products_product_id_seq'::regclass);


--
-- TOC entry 4882 (class 2604 OID 16766)
-- Name: users user_id; Type: DEFAULT; Schema: shop; Owner: postgres
--

ALTER TABLE ONLY shop.users ALTER COLUMN user_id SET DEFAULT nextval('shop.users_user_id_seq'::regclass);


--
-- TOC entry 5069 (class 0 OID 16779)
-- Dependencies: 223
-- Data for Name: categories; Type: TABLE DATA; Schema: shop; Owner: postgres
--

COPY shop.categories (category_id, category_name) FROM stdin;
\.


--
-- TOC entry 5075 (class 0 OID 16821)
-- Dependencies: 229
-- Data for Name: orderdetails; Type: TABLE DATA; Schema: shop; Owner: postgres
--

COPY shop.orderdetails (order_detail_id, order_id, product_id, quantity, price_each) FROM stdin;
\.


--
-- TOC entry 5073 (class 0 OID 16806)
-- Dependencies: 227
-- Data for Name: orders; Type: TABLE DATA; Schema: shop; Owner: postgres
--

COPY shop.orders (order_id, user_id, order_date, status) FROM stdin;
\.


--
-- TOC entry 5077 (class 0 OID 16841)
-- Dependencies: 231
-- Data for Name: payments; Type: TABLE DATA; Schema: shop; Owner: postgres
--

COPY shop.payments (payment_id, order_id, amount, payment_date, method) FROM stdin;
\.


--
-- TOC entry 5071 (class 0 OID 16790)
-- Dependencies: 225
-- Data for Name: products; Type: TABLE DATA; Schema: shop; Owner: postgres
--

COPY shop.products (product_id, product_name, price, stock, category_id) FROM stdin;
\.


--
-- TOC entry 5067 (class 0 OID 16763)
-- Dependencies: 221
-- Data for Name: users; Type: TABLE DATA; Schema: shop; Owner: postgres
--

COPY shop.users (user_id, username, email, password, role) FROM stdin;
\.


--
-- TOC entry 5089 (class 0 OID 0)
-- Dependencies: 222
-- Name: categories_category_id_seq; Type: SEQUENCE SET; Schema: shop; Owner: postgres
--

SELECT pg_catalog.setval('shop.categories_category_id_seq', 1, false);


--
-- TOC entry 5090 (class 0 OID 0)
-- Dependencies: 228
-- Name: orderdetails_order_detail_id_seq; Type: SEQUENCE SET; Schema: shop; Owner: postgres
--

SELECT pg_catalog.setval('shop.orderdetails_order_detail_id_seq', 1, false);


--
-- TOC entry 5091 (class 0 OID 0)
-- Dependencies: 226
-- Name: orders_order_id_seq; Type: SEQUENCE SET; Schema: shop; Owner: postgres
--

SELECT pg_catalog.setval('shop.orders_order_id_seq', 1, false);


--
-- TOC entry 5092 (class 0 OID 0)
-- Dependencies: 230
-- Name: payments_payment_id_seq; Type: SEQUENCE SET; Schema: shop; Owner: postgres
--

SELECT pg_catalog.setval('shop.payments_payment_id_seq', 1, false);


--
-- TOC entry 5093 (class 0 OID 0)
-- Dependencies: 224
-- Name: products_product_id_seq; Type: SEQUENCE SET; Schema: shop; Owner: postgres
--

SELECT pg_catalog.setval('shop.products_product_id_seq', 1, false);


--
-- TOC entry 5094 (class 0 OID 0)
-- Dependencies: 220
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: shop; Owner: postgres
--

SELECT pg_catalog.setval('shop.users_user_id_seq', 1, false);


--
-- TOC entry 4903 (class 2606 OID 16788)
-- Name: categories categories_category_name_key; Type: CONSTRAINT; Schema: shop; Owner: postgres
--

ALTER TABLE ONLY shop.categories
    ADD CONSTRAINT categories_category_name_key UNIQUE (category_name);


--
-- TOC entry 4905 (class 2606 OID 16786)
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: shop; Owner: postgres
--

ALTER TABLE ONLY shop.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (category_id);


--
-- TOC entry 4911 (class 2606 OID 16829)
-- Name: orderdetails orderdetails_pkey; Type: CONSTRAINT; Schema: shop; Owner: postgres
--

ALTER TABLE ONLY shop.orderdetails
    ADD CONSTRAINT orderdetails_pkey PRIMARY KEY (order_detail_id);


--
-- TOC entry 4909 (class 2606 OID 16814)
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: shop; Owner: postgres
--

ALTER TABLE ONLY shop.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (order_id);


--
-- TOC entry 4913 (class 2606 OID 16850)
-- Name: payments payments_pkey; Type: CONSTRAINT; Schema: shop; Owner: postgres
--

ALTER TABLE ONLY shop.payments
    ADD CONSTRAINT payments_pkey PRIMARY KEY (payment_id);


--
-- TOC entry 4907 (class 2606 OID 16799)
-- Name: products products_pkey; Type: CONSTRAINT; Schema: shop; Owner: postgres
--

ALTER TABLE ONLY shop.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (product_id);


--
-- TOC entry 4897 (class 2606 OID 16777)
-- Name: users users_email_key; Type: CONSTRAINT; Schema: shop; Owner: postgres
--

ALTER TABLE ONLY shop.users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- TOC entry 4899 (class 2606 OID 16773)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: shop; Owner: postgres
--

ALTER TABLE ONLY shop.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- TOC entry 4901 (class 2606 OID 16775)
-- Name: users users_username_key; Type: CONSTRAINT; Schema: shop; Owner: postgres
--

ALTER TABLE ONLY shop.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- TOC entry 4916 (class 2606 OID 16830)
-- Name: orderdetails orderdetails_order_id_fkey; Type: FK CONSTRAINT; Schema: shop; Owner: postgres
--

ALTER TABLE ONLY shop.orderdetails
    ADD CONSTRAINT orderdetails_order_id_fkey FOREIGN KEY (order_id) REFERENCES shop.orders(order_id);


--
-- TOC entry 4917 (class 2606 OID 16835)
-- Name: orderdetails orderdetails_product_id_fkey; Type: FK CONSTRAINT; Schema: shop; Owner: postgres
--

ALTER TABLE ONLY shop.orderdetails
    ADD CONSTRAINT orderdetails_product_id_fkey FOREIGN KEY (product_id) REFERENCES shop.products(product_id);


--
-- TOC entry 4915 (class 2606 OID 16815)
-- Name: orders orders_user_id_fkey; Type: FK CONSTRAINT; Schema: shop; Owner: postgres
--

ALTER TABLE ONLY shop.orders
    ADD CONSTRAINT orders_user_id_fkey FOREIGN KEY (user_id) REFERENCES shop.users(user_id);


--
-- TOC entry 4918 (class 2606 OID 16851)
-- Name: payments payments_order_id_fkey; Type: FK CONSTRAINT; Schema: shop; Owner: postgres
--

ALTER TABLE ONLY shop.payments
    ADD CONSTRAINT payments_order_id_fkey FOREIGN KEY (order_id) REFERENCES shop.orders(order_id);


--
-- TOC entry 4914 (class 2606 OID 16800)
-- Name: products products_category_id_fkey; Type: FK CONSTRAINT; Schema: shop; Owner: postgres
--

ALTER TABLE ONLY shop.products
    ADD CONSTRAINT products_category_id_fkey FOREIGN KEY (category_id) REFERENCES shop.categories(category_id);


-- Completed on 2025-11-01 23:26:27

--
-- PostgreSQL database dump complete
--

\unrestrict J5QxikApR6upIQxeWor3ebLQoL12KztGdcZhCNHO86lyIMriwTg5CBkp74PiUVC

