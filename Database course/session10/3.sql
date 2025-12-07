--
-- PostgreSQL database dump
--

\restrict Prtk8KR6GP1TIeGIsVjDyTybjvjQkHPVeTVPAbuzBJEjg08UnsyCPEa9iH0JwA4

-- Dumped from database version 18.0
-- Dumped by pg_dump version 18.0

-- Started on 2025-11-19 11:53:40

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
-- TOC entry 8 (class 2615 OID 18555)
-- Name: ex3; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA ex3;


ALTER SCHEMA ex3 OWNER TO postgres;

--
-- TOC entry 235 (class 1255 OID 18579)
-- Name: log_employee_changes(); Type: FUNCTION; Schema: ex3; Owner: postgres
--

CREATE FUNCTION ex3.log_employee_changes() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
    IF TG_OP = 'INSERT' THEN
        INSERT INTO ex3.employees_log(employee_id, operation, old_data, new_data)
        VALUES (NEW.id, 'INSERT', NULL, to_jsonb(NEW));
        RETURN NEW;
    END IF;
    IF TG_OP = 'UPDATE' THEN
        INSERT INTO ex3.employees_log(employee_id, operation, old_data, new_data)
        VALUES (NEW.id, 'UPDATE', to_jsonb(OLD), to_jsonb(NEW));
        RETURN NEW;
    END IF;
    IF TG_OP = 'DELETE' THEN
        INSERT INTO ex3.employees_log(employee_id, operation, old_data, new_data)
        VALUES (OLD.id, 'DELETE', to_jsonb(OLD), NULL);
        RETURN OLD;
    END IF;

    RETURN NULL;
END;
$$;


ALTER FUNCTION ex3.log_employee_changes() OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 229 (class 1259 OID 18557)
-- Name: employees; Type: TABLE; Schema: ex3; Owner: postgres
--

CREATE TABLE ex3.employees (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    "position" character varying(50) NOT NULL,
    salary integer NOT NULL
);


ALTER TABLE ex3.employees OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 18556)
-- Name: employees_id_seq; Type: SEQUENCE; Schema: ex3; Owner: postgres
--

CREATE SEQUENCE ex3.employees_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE ex3.employees_id_seq OWNER TO postgres;

--
-- TOC entry 5044 (class 0 OID 0)
-- Dependencies: 228
-- Name: employees_id_seq; Type: SEQUENCE OWNED BY; Schema: ex3; Owner: postgres
--

ALTER SEQUENCE ex3.employees_id_seq OWNED BY ex3.employees.id;


--
-- TOC entry 231 (class 1259 OID 18568)
-- Name: employees_log; Type: TABLE; Schema: ex3; Owner: postgres
--

CREATE TABLE ex3.employees_log (
    id integer NOT NULL,
    employee_id integer,
    operation character varying(10),
    old_data jsonb,
    new_data jsonb,
    change_time timestamp without time zone DEFAULT now()
);


ALTER TABLE ex3.employees_log OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 18567)
-- Name: employees_log_id_seq; Type: SEQUENCE; Schema: ex3; Owner: postgres
--

CREATE SEQUENCE ex3.employees_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE ex3.employees_log_id_seq OWNER TO postgres;

--
-- TOC entry 5045 (class 0 OID 0)
-- Dependencies: 230
-- Name: employees_log_id_seq; Type: SEQUENCE OWNED BY; Schema: ex3; Owner: postgres
--

ALTER SEQUENCE ex3.employees_log_id_seq OWNED BY ex3.employees_log.id;


--
-- TOC entry 4880 (class 2604 OID 18560)
-- Name: employees id; Type: DEFAULT; Schema: ex3; Owner: postgres
--

ALTER TABLE ONLY ex3.employees ALTER COLUMN id SET DEFAULT nextval('ex3.employees_id_seq'::regclass);


--
-- TOC entry 4881 (class 2604 OID 18571)
-- Name: employees_log id; Type: DEFAULT; Schema: ex3; Owner: postgres
--

ALTER TABLE ONLY ex3.employees_log ALTER COLUMN id SET DEFAULT nextval('ex3.employees_log_id_seq'::regclass);


--
-- TOC entry 5036 (class 0 OID 18557)
-- Dependencies: 229
-- Data for Name: employees; Type: TABLE DATA; Schema: ex3; Owner: postgres
--

COPY ex3.employees (id, name, "position", salary) FROM stdin;
3	Le Quoc Cuong	Developer	18000000
4	Pham Minh Duc	Developer	17500000
5	Do Thi Ha	HR Staff	12000000
6	Nguyen Thanh Hung	Team Leader	22000000
7	Vu Hoai Linh	Designer	16000000
8	Bui Quang Minh	Intern	5000000
9	Phan Kim Ngan	QA Tester	14000000
10	Hoang Gia Phuc	Support Staff	10000000
11	Test User	Tester	10000000
1	Nguyen Van An	Manager	20000000
\.


--
-- TOC entry 5038 (class 0 OID 18568)
-- Dependencies: 231
-- Data for Name: employees_log; Type: TABLE DATA; Schema: ex3; Owner: postgres
--

COPY ex3.employees_log (id, employee_id, operation, old_data, new_data, change_time) FROM stdin;
1	11	INSERT	\N	{"id": 11, "name": "Test User", "salary": 10000000, "position": "Tester"}	2025-11-19 11:51:47.797595
2	1	UPDATE	{"id": 1, "name": "Nguyen Van An", "salary": 30000000, "position": "Manager"}	{"id": 1, "name": "Nguyen Van An", "salary": 20000000, "position": "Manager"}	2025-11-19 11:52:58.744276
3	2	DELETE	{"id": 2, "name": "Tran Thi Bich", "salary": 15000000, "position": "Accountant"}	\N	2025-11-19 11:53:01.517016
\.


--
-- TOC entry 5046 (class 0 OID 0)
-- Dependencies: 228
-- Name: employees_id_seq; Type: SEQUENCE SET; Schema: ex3; Owner: postgres
--

SELECT pg_catalog.setval('ex3.employees_id_seq', 11, true);


--
-- TOC entry 5047 (class 0 OID 0)
-- Dependencies: 230
-- Name: employees_log_id_seq; Type: SEQUENCE SET; Schema: ex3; Owner: postgres
--

SELECT pg_catalog.setval('ex3.employees_log_id_seq', 3, true);


--
-- TOC entry 4886 (class 2606 OID 18577)
-- Name: employees_log employees_log_pkey; Type: CONSTRAINT; Schema: ex3; Owner: postgres
--

ALTER TABLE ONLY ex3.employees_log
    ADD CONSTRAINT employees_log_pkey PRIMARY KEY (id);


--
-- TOC entry 4884 (class 2606 OID 18566)
-- Name: employees employees_pkey; Type: CONSTRAINT; Schema: ex3; Owner: postgres
--

ALTER TABLE ONLY ex3.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (id);


--
-- TOC entry 4887 (class 2620 OID 18580)
-- Name: employees trg_employees_log; Type: TRIGGER; Schema: ex3; Owner: postgres
--

CREATE TRIGGER trg_employees_log AFTER INSERT OR DELETE OR UPDATE ON ex3.employees FOR EACH ROW EXECUTE FUNCTION ex3.log_employee_changes();


-- Completed on 2025-11-19 11:53:41

--
-- PostgreSQL database dump complete
--

\unrestrict Prtk8KR6GP1TIeGIsVjDyTybjvjQkHPVeTVPAbuzBJEjg08UnsyCPEa9iH0JwA4

