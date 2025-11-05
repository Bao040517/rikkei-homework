--
-- PostgreSQL database dump
--

\restrict lI5pLEMNxKU2pIoAMZZRChvvWa2JWNapTdg5AREfo5nQqnIcMT95AD52SYxAgry

-- Dumped from database version 18.0
-- Dumped by pg_dump version 18.0

-- Started on 2025-11-04 09:21:09

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
-- TOC entry 8 (class 2615 OID 17112)
-- Name: schoolarship; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA schoolarship;


ALTER SCHEMA schoolarship OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 229 (class 1259 OID 17146)
-- Name: scholarships; Type: TABLE; Schema: schoolarship; Owner: postgres
--

CREATE TABLE schoolarship.scholarships (
    id integer NOT NULL,
    student_id integer,
    name character varying(50),
    amount numeric(10,2),
    year integer
);


ALTER TABLE schoolarship.scholarships OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 17145)
-- Name: scholarships_id_seq; Type: SEQUENCE; Schema: schoolarship; Owner: postgres
--

CREATE SEQUENCE schoolarship.scholarships_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE schoolarship.scholarships_id_seq OWNER TO postgres;

--
-- TOC entry 5035 (class 0 OID 0)
-- Dependencies: 228
-- Name: scholarships_id_seq; Type: SEQUENCE OWNED BY; Schema: schoolarship; Owner: postgres
--

ALTER SEQUENCE schoolarship.scholarships_id_seq OWNED BY schoolarship.scholarships.id;


--
-- TOC entry 227 (class 1259 OID 17130)
-- Name: students; Type: TABLE; Schema: schoolarship; Owner: postgres
--

CREATE TABLE schoolarship.students (
    id integer NOT NULL,
    name character varying(50),
    age integer,
    major character varying(50),
    gpa numeric(3,2)
);


ALTER TABLE schoolarship.students OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 17129)
-- Name: students_id_seq; Type: SEQUENCE; Schema: schoolarship; Owner: postgres
--

CREATE SEQUENCE schoolarship.students_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE schoolarship.students_id_seq OWNER TO postgres;

--
-- TOC entry 5036 (class 0 OID 0)
-- Dependencies: 226
-- Name: students_id_seq; Type: SEQUENCE OWNED BY; Schema: schoolarship; Owner: postgres
--

ALTER SEQUENCE schoolarship.students_id_seq OWNED BY schoolarship.students.id;


--
-- TOC entry 4873 (class 2604 OID 17149)
-- Name: scholarships id; Type: DEFAULT; Schema: schoolarship; Owner: postgres
--

ALTER TABLE ONLY schoolarship.scholarships ALTER COLUMN id SET DEFAULT nextval('schoolarship.scholarships_id_seq'::regclass);


--
-- TOC entry 4872 (class 2604 OID 17133)
-- Name: students id; Type: DEFAULT; Schema: schoolarship; Owner: postgres
--

ALTER TABLE ONLY schoolarship.students ALTER COLUMN id SET DEFAULT nextval('schoolarship.students_id_seq'::regclass);


--
-- TOC entry 5029 (class 0 OID 17146)
-- Dependencies: 229
-- Data for Name: scholarships; Type: TABLE DATA; Schema: schoolarship; Owner: postgres
--

COPY schoolarship.scholarships (id, student_id, name, amount, year) FROM stdin;
1	1	Học bổng xuất sắc	1000.00	2025
2	3	Học bổng xuất sắc	1200.00	2025
3	2	Học bổng khuyến khích	500.00	2025
4	4	Học bổng khuyến khích	400.00	2025
\.


--
-- TOC entry 5027 (class 0 OID 17130)
-- Dependencies: 227
-- Data for Name: students; Type: TABLE DATA; Schema: schoolarship; Owner: postgres
--

COPY schoolarship.students (id, name, age, major, gpa) FROM stdin;
2	Bình	21	Toán	3.20
4	Dương	20	Vật lý	3.00
5	Em	21	CNTT	2.90
1	An	20	CNTT	4.00
3	Cường	22	CNTT	4.00
\.


--
-- TOC entry 5037 (class 0 OID 0)
-- Dependencies: 228
-- Name: scholarships_id_seq; Type: SEQUENCE SET; Schema: schoolarship; Owner: postgres
--

SELECT pg_catalog.setval('schoolarship.scholarships_id_seq', 6, true);


--
-- TOC entry 5038 (class 0 OID 0)
-- Dependencies: 226
-- Name: students_id_seq; Type: SEQUENCE SET; Schema: schoolarship; Owner: postgres
--

SELECT pg_catalog.setval('schoolarship.students_id_seq', 5, true);


--
-- TOC entry 4877 (class 2606 OID 17152)
-- Name: scholarships scholarships_pkey; Type: CONSTRAINT; Schema: schoolarship; Owner: postgres
--

ALTER TABLE ONLY schoolarship.scholarships
    ADD CONSTRAINT scholarships_pkey PRIMARY KEY (id);


--
-- TOC entry 4875 (class 2606 OID 17136)
-- Name: students students_pkey; Type: CONSTRAINT; Schema: schoolarship; Owner: postgres
--

ALTER TABLE ONLY schoolarship.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (id);


--
-- TOC entry 4878 (class 2606 OID 17153)
-- Name: scholarships scholarships_student_id_fkey; Type: FK CONSTRAINT; Schema: schoolarship; Owner: postgres
--

ALTER TABLE ONLY schoolarship.scholarships
    ADD CONSTRAINT scholarships_student_id_fkey FOREIGN KEY (student_id) REFERENCES schoolarship.students(id);


-- Completed on 2025-11-04 09:21:09

--
-- PostgreSQL database dump complete
--

\unrestrict lI5pLEMNxKU2pIoAMZZRChvvWa2JWNapTdg5AREfo5nQqnIcMT95AD52SYxAgry

