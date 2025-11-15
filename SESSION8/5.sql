--
-- PostgreSQL database dump
--

\restrict cnmsxzyi5sWBDeXC84iC8daCVyIfnhFB7H5B6riN90LzOEo30cAjghqaQdjohFL

-- Dumped from database version 18.0
-- Dumped by pg_dump version 18.0

-- Started on 2025-11-15 23:00:04

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
-- TOC entry 11 (class 2615 OID 18459)
-- Name: ex5; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA ex5;


ALTER SCHEMA ex5 OWNER TO postgres;

--
-- TOC entry 242 (class 1255 OID 18470)
-- Name: update_employee_status(integer); Type: PROCEDURE; Schema: ex5; Owner: postgres
--

CREATE PROCEDURE ex5.update_employee_status(IN p_emp_id integer, OUT p_status text)
    LANGUAGE plpgsql
    AS $$
DECLARE
tmp_salary NUMERIC;
BEGIN
SELECT salary INTO tmp_salary
FROM ex5.employees
WHERE id = p_emp_id;
IF tmp_salary IS NULL THEN
p_status := 'Employee not found';
RAISE EXCEPTION '%', p_status;
END IF;
    IF tmp_salary < 5000 THEN
        p_status := 'Junior';
        UPDATE ex5.employees SET bonus = 200 WHERE id = p_emp_id;
    ELSIF tmp_salary BETWEEN 5000 AND 10000 THEN
        p_status := 'Mid-level';
        UPDATE ex5.employees SET bonus = 500 WHERE id = p_emp_id;
    ELSE
        p_status := 'Senior';
        UPDATE ex5.employees SET bonus = 1000 WHERE id = p_emp_id;
    END IF;
END;
$$;


ALTER PROCEDURE ex5.update_employee_status(IN p_emp_id integer, OUT p_status text) OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 235 (class 1259 OID 18461)
-- Name: employees; Type: TABLE; Schema: ex5; Owner: postgres
--

CREATE TABLE ex5.employees (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    department character varying(50),
    salary numeric(10,2),
    bonus numeric(10,2) DEFAULT 0
);


ALTER TABLE ex5.employees OWNER TO postgres;

--
-- TOC entry 234 (class 1259 OID 18460)
-- Name: employees_id_seq; Type: SEQUENCE; Schema: ex5; Owner: postgres
--

CREATE SEQUENCE ex5.employees_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE ex5.employees_id_seq OWNER TO postgres;

--
-- TOC entry 5048 (class 0 OID 0)
-- Dependencies: 234
-- Name: employees_id_seq; Type: SEQUENCE OWNED BY; Schema: ex5; Owner: postgres
--

ALTER SEQUENCE ex5.employees_id_seq OWNED BY ex5.employees.id;


--
-- TOC entry 4890 (class 2604 OID 18464)
-- Name: employees id; Type: DEFAULT; Schema: ex5; Owner: postgres
--

ALTER TABLE ONLY ex5.employees ALTER COLUMN id SET DEFAULT nextval('ex5.employees_id_seq'::regclass);


--
-- TOC entry 5042 (class 0 OID 18461)
-- Dependencies: 235
-- Data for Name: employees; Type: TABLE DATA; Schema: ex5; Owner: postgres
--

COPY ex5.employees (id, name, department, salary, bonus) FROM stdin;
2	Tran Thi B	IT	6000.00	0.00
3	Le Van C	Finance	10500.00	0.00
4	Pham Thi D	IT	8000.00	0.00
5	Do Van E	HR	12000.00	0.00
1	Nguyen Van A	HR	4000.00	200.00
\.


--
-- TOC entry 5049 (class 0 OID 0)
-- Dependencies: 234
-- Name: employees_id_seq; Type: SEQUENCE SET; Schema: ex5; Owner: postgres
--

SELECT pg_catalog.setval('ex5.employees_id_seq', 5, true);


--
-- TOC entry 4893 (class 2606 OID 18469)
-- Name: employees employees_pkey; Type: CONSTRAINT; Schema: ex5; Owner: postgres
--

ALTER TABLE ONLY ex5.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (id);


-- Completed on 2025-11-15 23:00:04

--
-- PostgreSQL database dump complete
--

\unrestrict cnmsxzyi5sWBDeXC84iC8daCVyIfnhFB7H5B6riN90LzOEo30cAjghqaQdjohFL

