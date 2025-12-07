--
-- PostgreSQL database dump
--

\restrict zbhYPLzSxofUHX3fmSPtE62OKapwvVu00APmd1I68RhElZ7nDXPWiMO6kxz6k0c

-- Dumped from database version 18.0
-- Dumped by pg_dump version 18.0

-- Started on 2025-11-07 12:17:37

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
-- TOC entry 11 (class 2615 OID 17611)
-- Name: profit; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA profit;


ALTER SCHEMA profit OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 245 (class 1259 OID 17613)
-- Name: departments; Type: TABLE; Schema: profit; Owner: postgres
--

CREATE TABLE profit.departments (
    dept_id integer NOT NULL,
    dept_name character varying(100)
);


ALTER TABLE profit.departments OWNER TO postgres;

--
-- TOC entry 244 (class 1259 OID 17612)
-- Name: departments_dept_id_seq; Type: SEQUENCE; Schema: profit; Owner: postgres
--

CREATE SEQUENCE profit.departments_dept_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE profit.departments_dept_id_seq OWNER TO postgres;

--
-- TOC entry 5088 (class 0 OID 0)
-- Dependencies: 244
-- Name: departments_dept_id_seq; Type: SEQUENCE OWNED BY; Schema: profit; Owner: postgres
--

ALTER SEQUENCE profit.departments_dept_id_seq OWNED BY profit.departments.dept_id;


--
-- TOC entry 247 (class 1259 OID 17621)
-- Name: employees; Type: TABLE; Schema: profit; Owner: postgres
--

CREATE TABLE profit.employees (
    emp_id integer NOT NULL,
    emp_name character varying(100),
    dept_id integer,
    salary numeric(10,2),
    hire_date date
);


ALTER TABLE profit.employees OWNER TO postgres;

--
-- TOC entry 246 (class 1259 OID 17620)
-- Name: employees_emp_id_seq; Type: SEQUENCE; Schema: profit; Owner: postgres
--

CREATE SEQUENCE profit.employees_emp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE profit.employees_emp_id_seq OWNER TO postgres;

--
-- TOC entry 5089 (class 0 OID 0)
-- Dependencies: 246
-- Name: employees_emp_id_seq; Type: SEQUENCE OWNED BY; Schema: profit; Owner: postgres
--

ALTER SEQUENCE profit.employees_emp_id_seq OWNED BY profit.employees.emp_id;


--
-- TOC entry 249 (class 1259 OID 17634)
-- Name: projects; Type: TABLE; Schema: profit; Owner: postgres
--

CREATE TABLE profit.projects (
    project_id integer NOT NULL,
    project_name character varying(100),
    dept_id integer
);


ALTER TABLE profit.projects OWNER TO postgres;

--
-- TOC entry 248 (class 1259 OID 17633)
-- Name: projects_project_id_seq; Type: SEQUENCE; Schema: profit; Owner: postgres
--

CREATE SEQUENCE profit.projects_project_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE profit.projects_project_id_seq OWNER TO postgres;

--
-- TOC entry 5090 (class 0 OID 0)
-- Dependencies: 248
-- Name: projects_project_id_seq; Type: SEQUENCE OWNED BY; Schema: profit; Owner: postgres
--

ALTER SEQUENCE profit.projects_project_id_seq OWNED BY profit.projects.project_id;


--
-- TOC entry 4919 (class 2604 OID 17616)
-- Name: departments dept_id; Type: DEFAULT; Schema: profit; Owner: postgres
--

ALTER TABLE ONLY profit.departments ALTER COLUMN dept_id SET DEFAULT nextval('profit.departments_dept_id_seq'::regclass);


--
-- TOC entry 4920 (class 2604 OID 17624)
-- Name: employees emp_id; Type: DEFAULT; Schema: profit; Owner: postgres
--

ALTER TABLE ONLY profit.employees ALTER COLUMN emp_id SET DEFAULT nextval('profit.employees_emp_id_seq'::regclass);


--
-- TOC entry 4921 (class 2604 OID 17637)
-- Name: projects project_id; Type: DEFAULT; Schema: profit; Owner: postgres
--

ALTER TABLE ONLY profit.projects ALTER COLUMN project_id SET DEFAULT nextval('profit.projects_project_id_seq'::regclass);


--
-- TOC entry 5078 (class 0 OID 17613)
-- Dependencies: 245
-- Data for Name: departments; Type: TABLE DATA; Schema: profit; Owner: postgres
--

COPY profit.departments (dept_id, dept_name) FROM stdin;
1	CNTT
2	Nhân sự
3	Kế toán
4	Marketing
\.


--
-- TOC entry 5080 (class 0 OID 17621)
-- Dependencies: 247
-- Data for Name: employees; Type: TABLE DATA; Schema: profit; Owner: postgres
--

COPY profit.employees (emp_id, emp_name, dept_id, salary, hire_date) FROM stdin;
1	Nguyễn Văn A	1	1500.00	2023-01-15
2	Trần Thị B	2	1200.00	2022-05-10
3	Lê Văn C	1	1800.00	2023-03-20
4	Phạm Dương	3	1300.00	2021-12-01
5	Nguyễn Thị Em	4	1400.00	2023-07-05
\.


--
-- TOC entry 5082 (class 0 OID 17634)
-- Dependencies: 249
-- Data for Name: projects; Type: TABLE DATA; Schema: profit; Owner: postgres
--

COPY profit.projects (project_id, project_name, dept_id) FROM stdin;
1	Website Upgrade	1
2	Tuyển dụng Q2	2
3	Báo cáo tài chính	3
4	Chiến dịch quảng cáo	4
5	App Mobile	1
\.


--
-- TOC entry 5091 (class 0 OID 0)
-- Dependencies: 244
-- Name: departments_dept_id_seq; Type: SEQUENCE SET; Schema: profit; Owner: postgres
--

SELECT pg_catalog.setval('profit.departments_dept_id_seq', 4, true);


--
-- TOC entry 5092 (class 0 OID 0)
-- Dependencies: 246
-- Name: employees_emp_id_seq; Type: SEQUENCE SET; Schema: profit; Owner: postgres
--

SELECT pg_catalog.setval('profit.employees_emp_id_seq', 5, true);


--
-- TOC entry 5093 (class 0 OID 0)
-- Dependencies: 248
-- Name: projects_project_id_seq; Type: SEQUENCE SET; Schema: profit; Owner: postgres
--

SELECT pg_catalog.setval('profit.projects_project_id_seq', 5, true);


--
-- TOC entry 4923 (class 2606 OID 17619)
-- Name: departments departments_pkey; Type: CONSTRAINT; Schema: profit; Owner: postgres
--

ALTER TABLE ONLY profit.departments
    ADD CONSTRAINT departments_pkey PRIMARY KEY (dept_id);


--
-- TOC entry 4925 (class 2606 OID 17627)
-- Name: employees employees_pkey; Type: CONSTRAINT; Schema: profit; Owner: postgres
--

ALTER TABLE ONLY profit.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (emp_id);


--
-- TOC entry 4927 (class 2606 OID 17640)
-- Name: projects projects_pkey; Type: CONSTRAINT; Schema: profit; Owner: postgres
--

ALTER TABLE ONLY profit.projects
    ADD CONSTRAINT projects_pkey PRIMARY KEY (project_id);


--
-- TOC entry 4928 (class 2606 OID 17628)
-- Name: employees employees_dept_id_fkey; Type: FK CONSTRAINT; Schema: profit; Owner: postgres
--

ALTER TABLE ONLY profit.employees
    ADD CONSTRAINT employees_dept_id_fkey FOREIGN KEY (dept_id) REFERENCES profit.departments(dept_id);


--
-- TOC entry 4929 (class 2606 OID 17641)
-- Name: projects projects_dept_id_fkey; Type: FK CONSTRAINT; Schema: profit; Owner: postgres
--

ALTER TABLE ONLY profit.projects
    ADD CONSTRAINT projects_dept_id_fkey FOREIGN KEY (dept_id) REFERENCES profit.departments(dept_id);


-- Completed on 2025-11-07 12:17:38

--
-- PostgreSQL database dump complete
--

\unrestrict zbhYPLzSxofUHX3fmSPtE62OKapwvVu00APmd1I68RhElZ7nDXPWiMO6kxz6k0c

