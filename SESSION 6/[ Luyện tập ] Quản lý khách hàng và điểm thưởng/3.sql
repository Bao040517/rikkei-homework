--
-- PostgreSQL database dump
--

\restrict aNrSXcuGf5SLBnWPeN3QhAW3pqtU8kK7euRG8u5OzKbmhH0BcMuLMb85kFALIWd

-- Dumped from database version 18.0
-- Dumped by pg_dump version 18.0

-- Started on 2025-11-08 22:22:07

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
-- TOC entry 8 (class 2615 OID 17735)
-- Name: point; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA point;


ALTER SCHEMA point OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 227 (class 1259 OID 17737)
-- Name: customer; Type: TABLE; Schema: point; Owner: postgres
--

CREATE TABLE point.customer (
    id integer NOT NULL,
    name character varying(100),
    email character varying(100),
    phone character varying(20),
    points integer
);


ALTER TABLE point.customer OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 17736)
-- Name: customer_id_seq; Type: SEQUENCE; Schema: point; Owner: postgres
--

CREATE SEQUENCE point.customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE point.customer_id_seq OWNER TO postgres;

--
-- TOC entry 5024 (class 0 OID 0)
-- Dependencies: 226
-- Name: customer_id_seq; Type: SEQUENCE OWNED BY; Schema: point; Owner: postgres
--

ALTER SEQUENCE point.customer_id_seq OWNED BY point.customer.id;


--
-- TOC entry 4867 (class 2604 OID 17740)
-- Name: customer id; Type: DEFAULT; Schema: point; Owner: postgres
--

ALTER TABLE ONLY point.customer ALTER COLUMN id SET DEFAULT nextval('point.customer_id_seq'::regclass);


--
-- TOC entry 5018 (class 0 OID 17737)
-- Dependencies: 227
-- Data for Name: customer; Type: TABLE DATA; Schema: point; Owner: postgres
--

COPY point.customer (id, name, email, phone, points) FROM stdin;
1	Nguyễn Văn An	an@gmail.com	0912345678	150
2	Trần Thị B	b@gmail.com	0923456789	200
3	Lê Văn C	c@gmail.com	0934567890	180
4	Phạm Dương	\N	0945678901	220
5	Nguyễn Thị Em	em@gmail.com	0956789012	170
6	Hoàng Minh	minh@gmail.com	0967890123	190
7	Phan Lan	lan@gmail.com	0978901234	210
\.


--
-- TOC entry 5025 (class 0 OID 0)
-- Dependencies: 226
-- Name: customer_id_seq; Type: SEQUENCE SET; Schema: point; Owner: postgres
--

SELECT pg_catalog.setval('point.customer_id_seq', 7, true);


--
-- TOC entry 4869 (class 2606 OID 17743)
-- Name: customer customer_pkey; Type: CONSTRAINT; Schema: point; Owner: postgres
--

ALTER TABLE ONLY point.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (id);


-- Completed on 2025-11-08 22:22:07

--
-- PostgreSQL database dump complete
--

\unrestrict aNrSXcuGf5SLBnWPeN3QhAW3pqtU8kK7euRG8u5OzKbmhH0BcMuLMb85kFALIWd

