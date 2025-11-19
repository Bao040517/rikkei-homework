--
-- PostgreSQL database dump
--

\restrict x6WzbDN4xtToHn90zLFOho42kEnDRIlg7sGojHXhjVVESV00jXWTem4gyu6WV8u

-- Dumped from database version 18.0
-- Dumped by pg_dump version 18.0

-- Started on 2025-11-19 11:18:23

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
-- TOC entry 7 (class 2615 OID 18500)
-- Name: ex2; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA ex2;


ALTER SCHEMA ex2 OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 224 (class 1259 OID 18521)
-- Name: customers; Type: TABLE; Schema: ex2; Owner: postgres
--

CREATE TABLE ex2.customers (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    credit_limit integer NOT NULL
);


ALTER TABLE ex2.customers OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 18520)
-- Name: customers_id_seq; Type: SEQUENCE; Schema: ex2; Owner: postgres
--

CREATE SEQUENCE ex2.customers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE ex2.customers_id_seq OWNER TO postgres;

--
-- TOC entry 5033 (class 0 OID 0)
-- Dependencies: 223
-- Name: customers_id_seq; Type: SEQUENCE OWNED BY; Schema: ex2; Owner: postgres
--

ALTER SEQUENCE ex2.customers_id_seq OWNED BY ex2.customers.id;


--
-- TOC entry 226 (class 1259 OID 18540)
-- Name: orders; Type: TABLE; Schema: ex2; Owner: postgres
--

CREATE TABLE ex2.orders (
    id integer NOT NULL,
    customer_id integer,
    order_amount integer NOT NULL
);


ALTER TABLE ex2.orders OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 18539)
-- Name: orders_id_seq; Type: SEQUENCE; Schema: ex2; Owner: postgres
--

CREATE SEQUENCE ex2.orders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE ex2.orders_id_seq OWNER TO postgres;

--
-- TOC entry 5034 (class 0 OID 0)
-- Dependencies: 225
-- Name: orders_id_seq; Type: SEQUENCE OWNED BY; Schema: ex2; Owner: postgres
--

ALTER SEQUENCE ex2.orders_id_seq OWNED BY ex2.orders.id;


--
-- TOC entry 4869 (class 2604 OID 18524)
-- Name: customers id; Type: DEFAULT; Schema: ex2; Owner: postgres
--

ALTER TABLE ONLY ex2.customers ALTER COLUMN id SET DEFAULT nextval('ex2.customers_id_seq'::regclass);


--
-- TOC entry 4870 (class 2604 OID 18543)
-- Name: orders id; Type: DEFAULT; Schema: ex2; Owner: postgres
--

ALTER TABLE ONLY ex2.orders ALTER COLUMN id SET DEFAULT nextval('ex2.orders_id_seq'::regclass);


--
-- TOC entry 5025 (class 0 OID 18521)
-- Dependencies: 224
-- Data for Name: customers; Type: TABLE DATA; Schema: ex2; Owner: postgres
--

COPY ex2.customers (id, name, credit_limit) FROM stdin;
1	Nguyen Van A	50000000
2	Tran Thi B	30000000
3	Le Van C	15000000
4	Pham Thi D	10000000
5	Do Van E	8000000
\.


--
-- TOC entry 5027 (class 0 OID 18540)
-- Dependencies: 226
-- Data for Name: orders; Type: TABLE DATA; Schema: ex2; Owner: postgres
--

COPY ex2.orders (id, customer_id, order_amount) FROM stdin;
1	1	12000000
2	1	8000000
3	1	15000000
4	2	7000000
5	2	5000000
6	3	3000000
7	3	4500000
8	4	2000000
9	5	1500000
10	5	2500000
11	2	9999999
\.


--
-- TOC entry 5035 (class 0 OID 0)
-- Dependencies: 223
-- Name: customers_id_seq; Type: SEQUENCE SET; Schema: ex2; Owner: postgres
--

SELECT pg_catalog.setval('ex2.customers_id_seq', 5, true);


--
-- TOC entry 5036 (class 0 OID 0)
-- Dependencies: 225
-- Name: orders_id_seq; Type: SEQUENCE SET; Schema: ex2; Owner: postgres
--

SELECT pg_catalog.setval('ex2.orders_id_seq', 12, true);


--
-- TOC entry 4872 (class 2606 OID 18529)
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: ex2; Owner: postgres
--

ALTER TABLE ONLY ex2.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (id);


--
-- TOC entry 4874 (class 2606 OID 18547)
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: ex2; Owner: postgres
--

ALTER TABLE ONLY ex2.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);


--
-- TOC entry 4876 (class 2620 OID 18554)
-- Name: orders trg_check_credit; Type: TRIGGER; Schema: ex2; Owner: postgres
--

CREATE TRIGGER trg_check_credit BEFORE INSERT ON ex2.orders FOR EACH ROW EXECUTE FUNCTION public.check_credit_limit();


--
-- TOC entry 4875 (class 2606 OID 18548)
-- Name: orders orders_customer_id_fkey; Type: FK CONSTRAINT; Schema: ex2; Owner: postgres
--

ALTER TABLE ONLY ex2.orders
    ADD CONSTRAINT orders_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES ex2.customers(id);


-- Completed on 2025-11-19 11:18:23

--
-- PostgreSQL database dump complete
--

\unrestrict x6WzbDN4xtToHn90zLFOho42kEnDRIlg7sGojHXhjVVESV00jXWTem4gyu6WV8u

