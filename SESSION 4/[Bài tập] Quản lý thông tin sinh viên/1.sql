--
-- PostgreSQL database dump
--

\restrict 9ojatCdEx40tC9IG4tpAbUyMDL7kR6oJ3YHbn45Y3YObFqV3PnvU0Eikc2HOYm9

-- Dumped from database version 18.0
-- Dumped by pg_dump version 18.0

-- Started on 2025-11-03 21:55:37

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
-- TOC entry 6 (class 2615 OID 17085)
-- Name: test04; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA test04;


ALTER SCHEMA test04 OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 221 (class 1259 OID 17096)
-- Name: students; Type: TABLE; Schema: test04; Owner: postgres
--

CREATE TABLE test04.students (
    id integer NOT NULL,
    name character varying(50),
    age integer,
    major character varying(50),
    gpa numeric(3,2)
);


ALTER TABLE test04.students OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 17095)
-- Name: students_id_seq; Type: SEQUENCE; Schema: test04; Owner: postgres
--

CREATE SEQUENCE test04.students_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE test04.students_id_seq OWNER TO postgres;

--
-- TOC entry 5014 (class 0 OID 0)
-- Dependencies: 220
-- Name: students_id_seq; Type: SEQUENCE OWNED BY; Schema: test04; Owner: postgres
--

ALTER SEQUENCE test04.students_id_seq OWNED BY test04.students.id;


--
-- TOC entry 4857 (class 2604 OID 17099)
-- Name: students id; Type: DEFAULT; Schema: test04; Owner: postgres
--

ALTER TABLE ONLY test04.students ALTER COLUMN id SET DEFAULT nextval('test04.students_id_seq'::regclass);


--
-- TOC entry 5008 (class 0 OID 17096)
-- Dependencies: 221
-- Data for Name: students; Type: TABLE DATA; Schema: test04; Owner: postgres
--

COPY test04.students (id, name, age, major, gpa) FROM stdin;
1	An	20	CNTT	3.50
3	Cường	22	CNTT	3.80
4	Dương	20	Vật lý	3.00
6	Hùng	23	Hoá học	3.40
2	Bình	21	Toán	3.60
\.


--
-- TOC entry 5015 (class 0 OID 0)
-- Dependencies: 220
-- Name: students_id_seq; Type: SEQUENCE SET; Schema: test04; Owner: postgres
--

SELECT pg_catalog.setval('test04.students_id_seq', 6, true);


--
-- TOC entry 4859 (class 2606 OID 17102)
-- Name: students students_pkey; Type: CONSTRAINT; Schema: test04; Owner: postgres
--

ALTER TABLE ONLY test04.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (id);


-- Completed on 2025-11-03 21:55:37

--
-- PostgreSQL database dump complete
--

\unrestrict 9ojatCdEx40tC9IG4tpAbUyMDL7kR6oJ3YHbn45Y3YObFqV3PnvU0Eikc2HOYm9

