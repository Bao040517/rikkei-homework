--
-- PostgreSQL database dump
--

\restrict AXXbsbjXJZohvMfPYguEy1eLPhrcOAjsGI3tDhpOcfTZ7G67yijbxdauznfcs4p

-- Dumped from database version 18.0
-- Dumped by pg_dump version 18.0

-- Started on 2025-11-15 21:09:03

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
-- TOC entry 8 (class 2615 OID 18434)
-- Name: ex3; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA ex3;


ALTER SCHEMA ex3 OWNER TO postgres;

--
-- TOC entry 230 (class 1255 OID 18445)
-- Name: adjust_salary(integer); Type: PROCEDURE; Schema: ex3; Owner: postgres
--

CREATE PROCEDURE ex3.adjust_salary(IN p_emp_id integer, OUT p_new_salary numeric)
    LANGUAGE plpgsql
    AS $$
BEGIN
    UPDATE ex3.employees
    SET salary = salary + salary * 0.10
    WHERE emp_id = p_emp_id;

    SELECT salary
    INTO p_new_salary
    FROM ex3.employees
    WHERE emp_id = p_emp_id;
END;
$$;


ALTER PROCEDURE ex3.adjust_salary(IN p_emp_id integer, OUT p_new_salary numeric) OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 227 (class 1259 OID 18436)
-- Name: employees; Type: TABLE; Schema: ex3; Owner: postgres
--

CREATE TABLE ex3.employees (
    emp_id integer NOT NULL,
    emp_name character varying(100),
    job_level integer,
    salary numeric
);


ALTER TABLE ex3.employees OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 18435)
-- Name: employees_emp_id_seq; Type: SEQUENCE; Schema: ex3; Owner: postgres
--

CREATE SEQUENCE ex3.employees_emp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE ex3.employees_emp_id_seq OWNER TO postgres;

--
-- TOC entry 5027 (class 0 OID 0)
-- Dependencies: 226
-- Name: employees_emp_id_seq; Type: SEQUENCE OWNED BY; Schema: ex3; Owner: postgres
--

ALTER SEQUENCE ex3.employees_emp_id_seq OWNED BY ex3.employees.emp_id;


--
-- TOC entry 4870 (class 2604 OID 18439)
-- Name: employees emp_id; Type: DEFAULT; Schema: ex3; Owner: postgres
--

ALTER TABLE ONLY ex3.employees ALTER COLUMN emp_id SET DEFAULT nextval('ex3.employees_emp_id_seq'::regclass);


--
-- TOC entry 5021 (class 0 OID 18436)
-- Dependencies: 227
-- Data for Name: employees; Type: TABLE DATA; Schema: ex3; Owner: postgres
--

COPY ex3.employees (emp_id, emp_name, job_level, salary) FROM stdin;
2	Duong Van B	1	10000000
3	Duong Van C	1	10000000
4	Duong Van D	1	10000000
5	Duong Van E	1	10000000
6	Duong Van F	1	10000000
7	Nguyen Thi Lan	2	15000000
8	Tran Hoang Huy	3	22000000
9	Le Bao Nhi	4	30000000
10	Pham Minh Tri	5	40000000
1	Duong Van An	1	11000000.00
\.


--
-- TOC entry 5028 (class 0 OID 0)
-- Dependencies: 226
-- Name: employees_emp_id_seq; Type: SEQUENCE SET; Schema: ex3; Owner: postgres
--

SELECT pg_catalog.setval('ex3.employees_emp_id_seq', 10, true);


--
-- TOC entry 4872 (class 2606 OID 18444)
-- Name: employees employees_pkey; Type: CONSTRAINT; Schema: ex3; Owner: postgres
--

ALTER TABLE ONLY ex3.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (emp_id);


-- Completed on 2025-11-15 21:09:03

--
-- PostgreSQL database dump complete
--

\unrestrict AXXbsbjXJZohvMfPYguEy1eLPhrcOAjsGI3tDhpOcfTZ7G67yijbxdauznfcs4p

