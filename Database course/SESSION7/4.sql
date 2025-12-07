--
-- PostgreSQL database dump
--

\restrict NtNBgFdJes6eAPZWqDFUcXZuhfCwK3OMzEgAPmUaCsHlh8BH0WXrjiCar1g8EJZ

-- Dumped from database version 18.0
-- Dumped by pg_dump version 18.0

-- Started on 2025-11-12 10:39:35

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
-- TOC entry 10 (class 2615 OID 18335)
-- Name: sales; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA sales;


ALTER SCHEMA sales OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 235 (class 1259 OID 18337)
-- Name: customer; Type: TABLE; Schema: sales; Owner: postgres
--

CREATE TABLE sales.customer (
    customer_id integer NOT NULL,
    full_name character varying(100),
    region character varying(50)
);


ALTER TABLE sales.customer OWNER TO postgres;

--
-- TOC entry 234 (class 1259 OID 18336)
-- Name: customer_customer_id_seq; Type: SEQUENCE; Schema: sales; Owner: postgres
--

CREATE SEQUENCE sales.customer_customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE sales.customer_customer_id_seq OWNER TO postgres;

--
-- TOC entry 5137 (class 0 OID 0)
-- Dependencies: 234
-- Name: customer_customer_id_seq; Type: SEQUENCE OWNED BY; Schema: sales; Owner: postgres
--

ALTER SEQUENCE sales.customer_customer_id_seq OWNED BY sales.customer.customer_id;


--
-- TOC entry 237 (class 1259 OID 18345)
-- Name: orders; Type: TABLE; Schema: sales; Owner: postgres
--

CREATE TABLE sales.orders (
    order_id integer NOT NULL,
    customer_id integer,
    total_amount numeric(10,2),
    order_date date,
    status character varying(20)
);


ALTER TABLE sales.orders OWNER TO postgres;

--
-- TOC entry 244 (class 1259 OID 18391)
-- Name: mv_monthly_sales; Type: MATERIALIZED VIEW; Schema: sales; Owner: postgres
--

CREATE MATERIALIZED VIEW sales.mv_monthly_sales AS
 SELECT date_trunc('month'::text, (order_date)::timestamp with time zone) AS month,
    sum(total_amount) AS monthly_revenue
   FROM sales.orders
  GROUP BY (date_trunc('month'::text, (order_date)::timestamp with time zone))
  WITH NO DATA;


ALTER MATERIALIZED VIEW sales.mv_monthly_sales OWNER TO postgres;

--
-- TOC entry 240 (class 1259 OID 18365)
-- Name: order_detail; Type: TABLE; Schema: sales; Owner: postgres
--

CREATE TABLE sales.order_detail (
    order_id integer,
    product_id integer,
    quantity integer
);


ALTER TABLE sales.order_detail OWNER TO postgres;

--
-- TOC entry 236 (class 1259 OID 18344)
-- Name: orders_order_id_seq; Type: SEQUENCE; Schema: sales; Owner: postgres
--

CREATE SEQUENCE sales.orders_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE sales.orders_order_id_seq OWNER TO postgres;

--
-- TOC entry 5138 (class 0 OID 0)
-- Dependencies: 236
-- Name: orders_order_id_seq; Type: SEQUENCE OWNED BY; Schema: sales; Owner: postgres
--

ALTER SEQUENCE sales.orders_order_id_seq OWNED BY sales.orders.order_id;


--
-- TOC entry 239 (class 1259 OID 18358)
-- Name: product; Type: TABLE; Schema: sales; Owner: postgres
--

CREATE TABLE sales.product (
    product_id integer NOT NULL,
    name character varying(100),
    price numeric(10,2),
    category character varying(50)
);


ALTER TABLE sales.product OWNER TO postgres;

--
-- TOC entry 238 (class 1259 OID 18357)
-- Name: product_product_id_seq; Type: SEQUENCE; Schema: sales; Owner: postgres
--

CREATE SEQUENCE sales.product_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE sales.product_product_id_seq OWNER TO postgres;

--
-- TOC entry 5139 (class 0 OID 0)
-- Dependencies: 238
-- Name: product_product_id_seq; Type: SEQUENCE OWNED BY; Schema: sales; Owner: postgres
--

ALTER SEQUENCE sales.product_product_id_seq OWNED BY sales.product.product_id;


--
-- TOC entry 242 (class 1259 OID 18383)
-- Name: v_order_status; Type: VIEW; Schema: sales; Owner: postgres
--

CREATE VIEW sales.v_order_status AS
 SELECT order_id,
    customer_id,
    total_amount,
    order_date,
    status
   FROM sales.orders
  WHERE ((status)::text = ANY ((ARRAY['Pending'::character varying, 'Completed'::character varying])::text[]))
  WITH CASCADED CHECK OPTION;


ALTER VIEW sales.v_order_status OWNER TO postgres;

--
-- TOC entry 241 (class 1259 OID 18379)
-- Name: v_revenue_by_region; Type: VIEW; Schema: sales; Owner: postgres
--

CREATE VIEW sales.v_revenue_by_region AS
 SELECT c.region,
    sum(o.total_amount) AS total_revenue
   FROM (sales.customer c
     JOIN sales.orders o ON ((c.customer_id = o.customer_id)))
  GROUP BY c.region;


ALTER VIEW sales.v_revenue_by_region OWNER TO postgres;

--
-- TOC entry 243 (class 1259 OID 18387)
-- Name: v_revenue_above_avg; Type: VIEW; Schema: sales; Owner: postgres
--

CREATE VIEW sales.v_revenue_above_avg AS
 SELECT region,
    total_revenue
   FROM sales.v_revenue_by_region
  WHERE (total_revenue > ( SELECT avg(v_revenue_by_region_1.total_revenue) AS avg
           FROM sales.v_revenue_by_region v_revenue_by_region_1));


ALTER VIEW sales.v_revenue_above_avg OWNER TO postgres;

--
-- TOC entry 4960 (class 2604 OID 18340)
-- Name: customer customer_id; Type: DEFAULT; Schema: sales; Owner: postgres
--

ALTER TABLE ONLY sales.customer ALTER COLUMN customer_id SET DEFAULT nextval('sales.customer_customer_id_seq'::regclass);


--
-- TOC entry 4961 (class 2604 OID 18348)
-- Name: orders order_id; Type: DEFAULT; Schema: sales; Owner: postgres
--

ALTER TABLE ONLY sales.orders ALTER COLUMN order_id SET DEFAULT nextval('sales.orders_order_id_seq'::regclass);


--
-- TOC entry 4962 (class 2604 OID 18361)
-- Name: product product_id; Type: DEFAULT; Schema: sales; Owner: postgres
--

ALTER TABLE ONLY sales.product ALTER COLUMN product_id SET DEFAULT nextval('sales.product_product_id_seq'::regclass);


--
-- TOC entry 5125 (class 0 OID 18337)
-- Dependencies: 235
-- Data for Name: customer; Type: TABLE DATA; Schema: sales; Owner: postgres
--

COPY sales.customer (customer_id, full_name, region) FROM stdin;
1	Nguyễn Văn An	Hà Nội
2	Trần Thị Bình	Đà Nẵng
3	Phạm Duy Cường	TP.HCM
4	Hoàng Thị Dung	Huế
5	Lê Văn Long	Cần Thơ
\.


--
-- TOC entry 5130 (class 0 OID 18365)
-- Dependencies: 240
-- Data for Name: order_detail; Type: TABLE DATA; Schema: sales; Owner: postgres
--

COPY sales.order_detail (order_id, product_id, quantity) FROM stdin;
1	1	1
2	2	2
3	3	1
4	4	1
5	2	3
6	1	1
7	3	2
\.


--
-- TOC entry 5127 (class 0 OID 18345)
-- Dependencies: 237
-- Data for Name: orders; Type: TABLE DATA; Schema: sales; Owner: postgres
--

COPY sales.orders (order_id, customer_id, total_amount, order_date, status) FROM stdin;
1	1	2500000.00	2025-01-10	Completed
3	3	1800000.00	2025-02-20	Completed
4	4	4500000.00	2025-03-02	Completed
5	5	2000000.00	2025-03-15	Pending
6	1	6000000.00	2025-03-25	Completed
7	3	3500000.00	2025-04-01	Completed
2	2	3200000.00	2025-02-05	Completed
\.


--
-- TOC entry 5129 (class 0 OID 18358)
-- Dependencies: 239
-- Data for Name: product; Type: TABLE DATA; Schema: sales; Owner: postgres
--

COPY sales.product (product_id, name, price, category) FROM stdin;
1	Laptop Dell	18000000.00	Electronics
2	Chuột Logitech	500000.00	Accessories
3	Bàn phím cơ Akko	2500000.00	Accessories
4	Điện thoại Samsung	15000000.00	Electronics
\.


--
-- TOC entry 5140 (class 0 OID 0)
-- Dependencies: 234
-- Name: customer_customer_id_seq; Type: SEQUENCE SET; Schema: sales; Owner: postgres
--

SELECT pg_catalog.setval('sales.customer_customer_id_seq', 5, true);


--
-- TOC entry 5141 (class 0 OID 0)
-- Dependencies: 236
-- Name: orders_order_id_seq; Type: SEQUENCE SET; Schema: sales; Owner: postgres
--

SELECT pg_catalog.setval('sales.orders_order_id_seq', 7, true);


--
-- TOC entry 5142 (class 0 OID 0)
-- Dependencies: 238
-- Name: product_product_id_seq; Type: SEQUENCE SET; Schema: sales; Owner: postgres
--

SELECT pg_catalog.setval('sales.product_product_id_seq', 4, true);


--
-- TOC entry 4964 (class 2606 OID 18343)
-- Name: customer customer_pkey; Type: CONSTRAINT; Schema: sales; Owner: postgres
--

ALTER TABLE ONLY sales.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (customer_id);


--
-- TOC entry 4966 (class 2606 OID 18351)
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: sales; Owner: postgres
--

ALTER TABLE ONLY sales.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (order_id);


--
-- TOC entry 4968 (class 2606 OID 18364)
-- Name: product product_pkey; Type: CONSTRAINT; Schema: sales; Owner: postgres
--

ALTER TABLE ONLY sales.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (product_id);


--
-- TOC entry 4970 (class 2606 OID 18368)
-- Name: order_detail order_detail_order_id_fkey; Type: FK CONSTRAINT; Schema: sales; Owner: postgres
--

ALTER TABLE ONLY sales.order_detail
    ADD CONSTRAINT order_detail_order_id_fkey FOREIGN KEY (order_id) REFERENCES sales.orders(order_id);


--
-- TOC entry 4971 (class 2606 OID 18373)
-- Name: order_detail order_detail_product_id_fkey; Type: FK CONSTRAINT; Schema: sales; Owner: postgres
--

ALTER TABLE ONLY sales.order_detail
    ADD CONSTRAINT order_detail_product_id_fkey FOREIGN KEY (product_id) REFERENCES sales.product(product_id);


--
-- TOC entry 4969 (class 2606 OID 18352)
-- Name: orders orders_customer_id_fkey; Type: FK CONSTRAINT; Schema: sales; Owner: postgres
--

ALTER TABLE ONLY sales.orders
    ADD CONSTRAINT orders_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES sales.customer(customer_id);


--
-- TOC entry 5131 (class 0 OID 18391)
-- Dependencies: 244 5133
-- Name: mv_monthly_sales; Type: MATERIALIZED VIEW DATA; Schema: sales; Owner: postgres
--

REFRESH MATERIALIZED VIEW sales.mv_monthly_sales;


-- Completed on 2025-11-12 10:39:35

--
-- PostgreSQL database dump complete
--

\unrestrict NtNBgFdJes6eAPZWqDFUcXZuhfCwK3OMzEgAPmUaCsHlh8BH0WXrjiCar1g8EJZ

