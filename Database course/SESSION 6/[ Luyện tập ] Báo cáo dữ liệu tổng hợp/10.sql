--
-- PostgreSQL database dump
--

\restrict S7eOiTqCUuxVMj2FsU6Fcrgn6XwHWgEjb7RV0xpW1RuAqs4oAIDWiZokJDGpd2G

-- Dumped from database version 18.0
-- Dumped by pg_dump version 18.0

-- Started on 2025-11-09 00:02:50

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
-- TOC entry 15 (class 2615 OID 17848)
-- Name: custome; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA custome;


ALTER SCHEMA custome OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 258 (class 1259 OID 17858)
-- Name: newcustomers; Type: TABLE; Schema: custome; Owner: postgres
--

CREATE TABLE custome.newcustomers (
    id integer NOT NULL,
    name character varying(100),
    city character varying(50)
);


ALTER TABLE custome.newcustomers OWNER TO postgres;

--
-- TOC entry 257 (class 1259 OID 17857)
-- Name: newcustomers_id_seq; Type: SEQUENCE; Schema: custome; Owner: postgres
--

CREATE SEQUENCE custome.newcustomers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE custome.newcustomers_id_seq OWNER TO postgres;

--
-- TOC entry 5085 (class 0 OID 0)
-- Dependencies: 257
-- Name: newcustomers_id_seq; Type: SEQUENCE OWNED BY; Schema: custome; Owner: postgres
--

ALTER SEQUENCE custome.newcustomers_id_seq OWNED BY custome.newcustomers.id;


--
-- TOC entry 256 (class 1259 OID 17850)
-- Name: oldcustomers; Type: TABLE; Schema: custome; Owner: postgres
--

CREATE TABLE custome.oldcustomers (
    id integer NOT NULL,
    name character varying(100),
    city character varying(50)
);


ALTER TABLE custome.oldcustomers OWNER TO postgres;

--
-- TOC entry 255 (class 1259 OID 17849)
-- Name: oldcustomers_id_seq; Type: SEQUENCE; Schema: custome; Owner: postgres
--

CREATE SEQUENCE custome.oldcustomers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE custome.oldcustomers_id_seq OWNER TO postgres;

--
-- TOC entry 5086 (class 0 OID 0)
-- Dependencies: 255
-- Name: oldcustomers_id_seq; Type: SEQUENCE OWNED BY; Schema: custome; Owner: postgres
--

ALTER SEQUENCE custome.oldcustomers_id_seq OWNED BY custome.oldcustomers.id;


--
-- TOC entry 4924 (class 2604 OID 17861)
-- Name: newcustomers id; Type: DEFAULT; Schema: custome; Owner: postgres
--

ALTER TABLE ONLY custome.newcustomers ALTER COLUMN id SET DEFAULT nextval('custome.newcustomers_id_seq'::regclass);


--
-- TOC entry 4923 (class 2604 OID 17853)
-- Name: oldcustomers id; Type: DEFAULT; Schema: custome; Owner: postgres
--

ALTER TABLE ONLY custome.oldcustomers ALTER COLUMN id SET DEFAULT nextval('custome.oldcustomers_id_seq'::regclass);


--
-- TOC entry 5079 (class 0 OID 17858)
-- Dependencies: 258
-- Data for Name: newcustomers; Type: TABLE DATA; Schema: custome; Owner: postgres
--

COPY custome.newcustomers (id, name, city) FROM stdin;
1	Nguyễn Văn An	Hà Nội
2	Nguyễn Thị Em	HCM
3	Hoàng Minh	Hà Nội
4	Phan Lan	Đà Nẵng
5	Trần Thị B	HCM
\.


--
-- TOC entry 5077 (class 0 OID 17850)
-- Dependencies: 256
-- Data for Name: oldcustomers; Type: TABLE DATA; Schema: custome; Owner: postgres
--

COPY custome.oldcustomers (id, name, city) FROM stdin;
1	Nguyễn Văn An	Hà Nội
2	Trần Thị B	HCM
3	Lê Văn C	Đà Nẵng
4	Phạm Dương	Hà Nội
5	Nguyễn Thị Em	HCM
\.


--
-- TOC entry 5087 (class 0 OID 0)
-- Dependencies: 257
-- Name: newcustomers_id_seq; Type: SEQUENCE SET; Schema: custome; Owner: postgres
--

SELECT pg_catalog.setval('custome.newcustomers_id_seq', 5, true);


--
-- TOC entry 5088 (class 0 OID 0)
-- Dependencies: 255
-- Name: oldcustomers_id_seq; Type: SEQUENCE SET; Schema: custome; Owner: postgres
--

SELECT pg_catalog.setval('custome.oldcustomers_id_seq', 5, true);


--
-- TOC entry 4928 (class 2606 OID 17864)
-- Name: newcustomers newcustomers_pkey; Type: CONSTRAINT; Schema: custome; Owner: postgres
--

ALTER TABLE ONLY custome.newcustomers
    ADD CONSTRAINT newcustomers_pkey PRIMARY KEY (id);


--
-- TOC entry 4926 (class 2606 OID 17856)
-- Name: oldcustomers oldcustomers_pkey; Type: CONSTRAINT; Schema: custome; Owner: postgres
--

ALTER TABLE ONLY custome.oldcustomers
    ADD CONSTRAINT oldcustomers_pkey PRIMARY KEY (id);


-- Completed on 2025-11-09 00:02:51

--
-- PostgreSQL database dump complete
--

\unrestrict S7eOiTqCUuxVMj2FsU6Fcrgn6XwHWgEjb7RV0xpW1RuAqs4oAIDWiZokJDGpd2G

