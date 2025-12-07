--
-- PostgreSQL database dump
--

\restrict hoaHYaqwLK7JU1NaiJAbV1YleN3ebbp8r30gIL98QV82Ca86OBGGdE33hzePqSX

-- Dumped from database version 18.0
-- Dumped by pg_dump version 18.0

-- Started on 2025-11-08 23:09:55

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
-- TOC entry 12 (class 2615 OID 17772)
-- Name: company; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA company;


ALTER SCHEMA company OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 239 (class 1259 OID 17774)
-- Name: department; Type: TABLE; Schema: company; Owner: postgres
--

CREATE TABLE company.department (
    id integer NOT NULL,
    name character varying(50)
);


ALTER TABLE company.department OWNER TO postgres;

--
-- TOC entry 238 (class 1259 OID 17773)
-- Name: department_id_seq; Type: SEQUENCE; Schema: company; Owner: postgres
--

CREATE SEQUENCE company.department_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE company.department_id_seq OWNER TO postgres;

--
-- TOC entry 5055 (class 0 OID 0)
-- Dependencies: 238
-- Name: department_id_seq; Type: SEQUENCE OWNED BY; Schema: company; Owner: postgres
--

ALTER SEQUENCE company.department_id_seq OWNED BY company.department.id;


--
-- TOC entry 241 (class 1259 OID 17782)
-- Name: employee; Type: TABLE; Schema: company; Owner: postgres
--

CREATE TABLE company.employee (
    id integer NOT NULL,
    full_name character varying(100),
    department_id integer,
    salary numeric(10,2)
);


ALTER TABLE company.employee OWNER TO postgres;

--
-- TOC entry 240 (class 1259 OID 17781)
-- Name: employee_id_seq; Type: SEQUENCE; Schema: company; Owner: postgres
--

CREATE SEQUENCE company.employee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE company.employee_id_seq OWNER TO postgres;

--
-- TOC entry 5056 (class 0 OID 0)
-- Dependencies: 240
-- Name: employee_id_seq; Type: SEQUENCE OWNED BY; Schema: company; Owner: postgres
--

ALTER SEQUENCE company.employee_id_seq OWNED BY company.employee.id;


--
-- TOC entry 4892 (class 2604 OID 17777)
-- Name: department id; Type: DEFAULT; Schema: company; Owner: postgres
--

ALTER TABLE ONLY company.department ALTER COLUMN id SET DEFAULT nextval('company.department_id_seq'::regclass);


--
-- TOC entry 4893 (class 2604 OID 17785)
-- Name: employee id; Type: DEFAULT; Schema: company; Owner: postgres
--

ALTER TABLE ONLY company.employee ALTER COLUMN id SET DEFAULT nextval('company.employee_id_seq'::regclass);


--
-- TOC entry 5047 (class 0 OID 17774)
-- Dependencies: 239
-- Data for Name: department; Type: TABLE DATA; Schema: company; Owner: postgres
--

COPY company.department (id, name) FROM stdin;
1	CNTT
2	Nhân sự
3	Kế toán
4	Marketing
\.


--
-- TOC entry 5049 (class 0 OID 17782)
-- Dependencies: 241
-- Data for Name: employee; Type: TABLE DATA; Schema: company; Owner: postgres
--

COPY company.employee (id, full_name, department_id, salary) FROM stdin;
1	Nguyễn Văn An	1	12000000.00
2	Trần Thị B	4	15000000.00
3	Lê Văn C	2	9000000.00
4	Phạm Dương	3	11000000.00
5	Nguyễn Thị Em	1	13000000.00
\.


--
-- TOC entry 5057 (class 0 OID 0)
-- Dependencies: 238
-- Name: department_id_seq; Type: SEQUENCE SET; Schema: company; Owner: postgres
--

SELECT pg_catalog.setval('company.department_id_seq', 1, false);


--
-- TOC entry 5058 (class 0 OID 0)
-- Dependencies: 240
-- Name: employee_id_seq; Type: SEQUENCE SET; Schema: company; Owner: postgres
--

SELECT pg_catalog.setval('company.employee_id_seq', 5, true);


--
-- TOC entry 4895 (class 2606 OID 17780)
-- Name: department department_pkey; Type: CONSTRAINT; Schema: company; Owner: postgres
--

ALTER TABLE ONLY company.department
    ADD CONSTRAINT department_pkey PRIMARY KEY (id);


--
-- TOC entry 4897 (class 2606 OID 17788)
-- Name: employee employee_pkey; Type: CONSTRAINT; Schema: company; Owner: postgres
--

ALTER TABLE ONLY company.employee
    ADD CONSTRAINT employee_pkey PRIMARY KEY (id);


--
-- TOC entry 4898 (class 2606 OID 17789)
-- Name: employee fk_department; Type: FK CONSTRAINT; Schema: company; Owner: postgres
--

ALTER TABLE ONLY company.employee
    ADD CONSTRAINT fk_department FOREIGN KEY (department_id) REFERENCES company.department(id);


-- Completed on 2025-11-08 23:09:56

--
-- PostgreSQL database dump complete
--

\unrestrict hoaHYaqwLK7JU1NaiJAbV1YleN3ebbp8r30gIL98QV82Ca86OBGGdE33hzePqSX

