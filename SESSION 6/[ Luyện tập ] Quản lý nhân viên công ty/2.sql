--
-- PostgreSQL database dump
--

\restrict P9uvTFXTsR9KqbmO0QtWmmrwvtc8cnGeYfsfIFjgebGcJXF8lAhe6ya2c8z2RUE

-- Dumped from database version 18.0
-- Dumped by pg_dump version 18.0

-- Started on 2025-11-08 22:16:18

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
-- TOC entry 7 (class 2615 OID 17726)
-- Name: employees; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA employees;


ALTER SCHEMA employees OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 224 (class 1259 OID 17728)
-- Name: employee; Type: TABLE; Schema: employees; Owner: postgres
--

CREATE TABLE employees.employee (
    id integer NOT NULL,
    full_name character varying(100),
    department character varying(50),
    salary numeric(10,2),
    hire_date date
);


ALTER TABLE employees.employee OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 17727)
-- Name: employee_id_seq; Type: SEQUENCE; Schema: employees; Owner: postgres
--

CREATE SEQUENCE employees.employee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE employees.employee_id_seq OWNER TO postgres;

--
-- TOC entry 5019 (class 0 OID 0)
-- Dependencies: 223
-- Name: employee_id_seq; Type: SEQUENCE OWNED BY; Schema: employees; Owner: postgres
--

ALTER SEQUENCE employees.employee_id_seq OWNED BY employees.employee.id;


--
-- TOC entry 4862 (class 2604 OID 17731)
-- Name: employee id; Type: DEFAULT; Schema: employees; Owner: postgres
--

ALTER TABLE ONLY employees.employee ALTER COLUMN id SET DEFAULT nextval('employees.employee_id_seq'::regclass);


--
-- TOC entry 5013 (class 0 OID 17728)
-- Dependencies: 224
-- Data for Name: employee; Type: TABLE DATA; Schema: employees; Owner: postgres
--

COPY employees.employee (id, full_name, department, salary, hire_date) FROM stdin;
4	Phạm Dương	Kế toán	7000000.00	2021-12-01
3	Lê Văn C	CNTT	6600000.00	2023-03-20
6	Nguyễn Văn An	CNTT	5000000.00	2023-01-15
7	Trần Thị Bình	Nhân sự	5500000.00	2022-05-10
8	Lê Văn Chính	CNTT	6000000.00	2023-03-20
9	Phạm Dương	Kế toán	7000000.00	2021-12-01
10	Nguyễn Thị Em	Marketing	5200000.00	2023-07-05
11	Nguyễn Thị Anh	CNTT	5200000.00	2023-07-05
\.


--
-- TOC entry 5020 (class 0 OID 0)
-- Dependencies: 223
-- Name: employee_id_seq; Type: SEQUENCE SET; Schema: employees; Owner: postgres
--

SELECT pg_catalog.setval('employees.employee_id_seq', 11, true);


--
-- TOC entry 4864 (class 2606 OID 17734)
-- Name: employee employee_pkey; Type: CONSTRAINT; Schema: employees; Owner: postgres
--

ALTER TABLE ONLY employees.employee
    ADD CONSTRAINT employee_pkey PRIMARY KEY (id);


-- Completed on 2025-11-08 22:16:18

--
-- PostgreSQL database dump complete
--

\unrestrict P9uvTFXTsR9KqbmO0QtWmmrwvtc8cnGeYfsfIFjgebGcJXF8lAhe6ya2c8z2RUE

