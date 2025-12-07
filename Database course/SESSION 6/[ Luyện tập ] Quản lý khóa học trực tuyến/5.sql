--
-- PostgreSQL database dump
--

\restrict NgWwp0WNdkzslJZ1QdMBRgpTJ5Ub9CE40B2LKPOCnEvg9MdV5flbWN2dqUVMzwO

-- Dumped from database version 18.0
-- Dumped by pg_dump version 18.0

-- Started on 2025-11-08 22:54:37

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
-- TOC entry 10 (class 2615 OID 17754)
-- Name: course; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA course;


ALTER SCHEMA course OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 233 (class 1259 OID 17756)
-- Name: courses; Type: TABLE; Schema: course; Owner: postgres
--

CREATE TABLE course.courses (
    id integer NOT NULL,
    title character varying(100),
    instructor character varying(50),
    price numeric(10,2),
    duration integer
);


ALTER TABLE course.courses OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 17755)
-- Name: courses_id_seq; Type: SEQUENCE; Schema: course; Owner: postgres
--

CREATE SEQUENCE course.courses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE course.courses_id_seq OWNER TO postgres;

--
-- TOC entry 5034 (class 0 OID 0)
-- Dependencies: 232
-- Name: courses_id_seq; Type: SEQUENCE OWNED BY; Schema: course; Owner: postgres
--

ALTER SEQUENCE course.courses_id_seq OWNED BY course.courses.id;


--
-- TOC entry 4877 (class 2604 OID 17759)
-- Name: courses id; Type: DEFAULT; Schema: course; Owner: postgres
--

ALTER TABLE ONLY course.courses ALTER COLUMN id SET DEFAULT nextval('course.courses_id_seq'::regclass);


--
-- TOC entry 5028 (class 0 OID 17756)
-- Dependencies: 233
-- Data for Name: courses; Type: TABLE DATA; Schema: course; Owner: postgres
--

COPY course.courses (id, title, instructor, price, duration) FROM stdin;
1	SQL cơ bản	Nguyễn Văn A	800000.00	20
3	Python cơ bản	Lê Văn C	1000000.00	25
6	HTML & CSS	Hoàng Minh	600000.00	30
2	SQL nâng cao	Trần Thị B	1380000.00	35
4	Python nâng cao	Phạm Dương	1725000.00	40
\.


--
-- TOC entry 5035 (class 0 OID 0)
-- Dependencies: 232
-- Name: courses_id_seq; Type: SEQUENCE SET; Schema: course; Owner: postgres
--

SELECT pg_catalog.setval('course.courses_id_seq', 6, true);


--
-- TOC entry 4879 (class 2606 OID 17762)
-- Name: courses courses_pkey; Type: CONSTRAINT; Schema: course; Owner: postgres
--

ALTER TABLE ONLY course.courses
    ADD CONSTRAINT courses_pkey PRIMARY KEY (id);


-- Completed on 2025-11-08 22:54:37

--
-- PostgreSQL database dump complete
--

\unrestrict NgWwp0WNdkzslJZ1QdMBRgpTJ5Ub9CE40B2LKPOCnEvg9MdV5flbWN2dqUVMzwO

