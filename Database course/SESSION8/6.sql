--
-- PostgreSQL database dump
--

\restrict mqslvKMD9av3YlMEgozdNfoGw3yEpGxzctXd8hslMLev8bsMBNPs6wxNbvjYee7

-- Dumped from database version 18.0
-- Dumped by pg_dump version 18.0

-- Started on 2025-11-15 23:00:18

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
-- TOC entry 12 (class 2615 OID 18471)
-- Name: ex6; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA ex6;


ALTER SCHEMA ex6 OWNER TO postgres;

--
-- TOC entry 244 (class 1255 OID 18485)
-- Name: calculate_bonus(integer, numeric); Type: PROCEDURE; Schema: ex6; Owner: postgres
--

CREATE PROCEDURE ex6.calculate_bonus(IN p_emp_id integer, IN p_percent numeric, OUT p_bonus numeric)
    LANGUAGE plpgsql
    AS $$
DECLARE
	tmp INT;
BEGIN
	SELECT salary INTO tmp
	FROM ex6.employees
	WHERE id = p_emp_id;
	
 	IF tmp IS NULL THEN
        RAISE NOTICE 'Employee not found';
    END IF;

	IF p_percent >= 0 THEN
		p_bonus := tmp * p_percent / 100;
		UPDATE ex6.employees
		SET bonus = p_bonus
		WHERE id = p_emp_id;
		RAISE NOTICE '%', p_bonus;
	ELSE
		p_percent := 0;
		RAISE NOTICE '%', p_percent;
	END IF;
END;
$$;


ALTER PROCEDURE ex6.calculate_bonus(IN p_emp_id integer, IN p_percent numeric, OUT p_bonus numeric) OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 237 (class 1259 OID 18473)
-- Name: employees; Type: TABLE; Schema: ex6; Owner: postgres
--

CREATE TABLE ex6.employees (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    department character varying(50),
    salary numeric(10,2),
    bonus numeric(10,2) DEFAULT 0
);


ALTER TABLE ex6.employees OWNER TO postgres;

--
-- TOC entry 236 (class 1259 OID 18472)
-- Name: employees_id_seq; Type: SEQUENCE; Schema: ex6; Owner: postgres
--

CREATE SEQUENCE ex6.employees_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE ex6.employees_id_seq OWNER TO postgres;

--
-- TOC entry 5048 (class 0 OID 0)
-- Dependencies: 236
-- Name: employees_id_seq; Type: SEQUENCE OWNED BY; Schema: ex6; Owner: postgres
--

ALTER SEQUENCE ex6.employees_id_seq OWNED BY ex6.employees.id;


--
-- TOC entry 4890 (class 2604 OID 18476)
-- Name: employees id; Type: DEFAULT; Schema: ex6; Owner: postgres
--

ALTER TABLE ONLY ex6.employees ALTER COLUMN id SET DEFAULT nextval('ex6.employees_id_seq'::regclass);


--
-- TOC entry 5042 (class 0 OID 18473)
-- Dependencies: 237
-- Data for Name: employees; Type: TABLE DATA; Schema: ex6; Owner: postgres
--

COPY ex6.employees (id, name, department, salary, bonus) FROM stdin;
2	Tran Thi B	IT	6000.00	0.00
3	Le Van C	Finance	10500.00	0.00
4	Pham Thi D	IT	8000.00	0.00
5	Do Van E	HR	12000.00	0.00
1	Nguyen Van A	HR	4000.00	400.00
\.


--
-- TOC entry 5049 (class 0 OID 0)
-- Dependencies: 236
-- Name: employees_id_seq; Type: SEQUENCE SET; Schema: ex6; Owner: postgres
--

SELECT pg_catalog.setval('ex6.employees_id_seq', 5, true);


--
-- TOC entry 4893 (class 2606 OID 18481)
-- Name: employees employees_pkey; Type: CONSTRAINT; Schema: ex6; Owner: postgres
--

ALTER TABLE ONLY ex6.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (id);


-- Completed on 2025-11-15 23:00:18

--
-- PostgreSQL database dump complete
--

\unrestrict mqslvKMD9av3YlMEgozdNfoGw3yEpGxzctXd8hslMLev8bsMBNPs6wxNbvjYee7

