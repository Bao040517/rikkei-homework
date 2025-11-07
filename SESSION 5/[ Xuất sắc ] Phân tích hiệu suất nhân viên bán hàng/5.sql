--
-- PostgreSQL database dump
--

\restrict iOiHk2HZY1bPLWnpFHuFoC4oVqIVWLJ1obbbfvZfBx8cgZ6bWTZO64AVdh2bCPU

-- Dumped from database version 18.0
-- Dumped by pg_dump version 18.0

-- Started on 2025-11-07 11:38:10

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
-- TOC entry 10 (class 2615 OID 17581)
-- Name: student; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA student;


ALTER SCHEMA student OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 241 (class 1259 OID 17591)
-- Name: courses; Type: TABLE; Schema: student; Owner: postgres
--

CREATE TABLE student.courses (
    course_id integer NOT NULL,
    course_name character varying(100),
    credit integer
);


ALTER TABLE student.courses OWNER TO postgres;

--
-- TOC entry 240 (class 1259 OID 17590)
-- Name: courses_course_id_seq; Type: SEQUENCE; Schema: student; Owner: postgres
--

CREATE SEQUENCE student.courses_course_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE student.courses_course_id_seq OWNER TO postgres;

--
-- TOC entry 5071 (class 0 OID 0)
-- Dependencies: 240
-- Name: courses_course_id_seq; Type: SEQUENCE OWNED BY; Schema: student; Owner: postgres
--

ALTER SEQUENCE student.courses_course_id_seq OWNED BY student.courses.course_id;


--
-- TOC entry 242 (class 1259 OID 17598)
-- Name: enrollments; Type: TABLE; Schema: student; Owner: postgres
--

CREATE TABLE student.enrollments (
    student_id integer,
    course_id integer,
    score numeric(5,2)
);


ALTER TABLE student.enrollments OWNER TO postgres;

--
-- TOC entry 239 (class 1259 OID 17583)
-- Name: students; Type: TABLE; Schema: student; Owner: postgres
--

CREATE TABLE student.students (
    student_id integer NOT NULL,
    full_name character varying(100),
    major character varying(50)
);


ALTER TABLE student.students OWNER TO postgres;

--
-- TOC entry 238 (class 1259 OID 17582)
-- Name: students_student_id_seq; Type: SEQUENCE; Schema: student; Owner: postgres
--

CREATE SEQUENCE student.students_student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE student.students_student_id_seq OWNER TO postgres;

--
-- TOC entry 5072 (class 0 OID 0)
-- Dependencies: 238
-- Name: students_student_id_seq; Type: SEQUENCE OWNED BY; Schema: student; Owner: postgres
--

ALTER SEQUENCE student.students_student_id_seq OWNED BY student.students.student_id;


--
-- TOC entry 4907 (class 2604 OID 17594)
-- Name: courses course_id; Type: DEFAULT; Schema: student; Owner: postgres
--

ALTER TABLE ONLY student.courses ALTER COLUMN course_id SET DEFAULT nextval('student.courses_course_id_seq'::regclass);


--
-- TOC entry 4906 (class 2604 OID 17586)
-- Name: students student_id; Type: DEFAULT; Schema: student; Owner: postgres
--

ALTER TABLE ONLY student.students ALTER COLUMN student_id SET DEFAULT nextval('student.students_student_id_seq'::regclass);


--
-- TOC entry 5064 (class 0 OID 17591)
-- Dependencies: 241
-- Data for Name: courses; Type: TABLE DATA; Schema: student; Owner: postgres
--

COPY student.courses (course_id, course_name, credit) FROM stdin;
1	Cấu trúc dữ liệu	3
2	Toán cao cấp	4
3	Vật lý đại cương	3
4	Lập trình Python	4
5	Cơ sở dữ liệu	3
\.


--
-- TOC entry 5065 (class 0 OID 17598)
-- Dependencies: 242
-- Data for Name: enrollments; Type: TABLE DATA; Schema: student; Owner: postgres
--

COPY student.enrollments (student_id, course_id, score) FROM stdin;
1	1	8.50
1	4	9.00
2	2	7.00
3	1	9.20
3	4	8.80
4	3	6.50
5	1	7.50
5	4	8.00
5	5	9.00
\.


--
-- TOC entry 5062 (class 0 OID 17583)
-- Dependencies: 239
-- Data for Name: students; Type: TABLE DATA; Schema: student; Owner: postgres
--

COPY student.students (student_id, full_name, major) FROM stdin;
1	Nguyễn Văn A	CNTT
2	Trần Thị B	Toán
3	Lê Văn C	CNTT
4	Phạm Dương	Vật lý
5	Nguyễn Thị Em	CNTT
\.


--
-- TOC entry 5073 (class 0 OID 0)
-- Dependencies: 240
-- Name: courses_course_id_seq; Type: SEQUENCE SET; Schema: student; Owner: postgres
--

SELECT pg_catalog.setval('student.courses_course_id_seq', 5, true);


--
-- TOC entry 5074 (class 0 OID 0)
-- Dependencies: 238
-- Name: students_student_id_seq; Type: SEQUENCE SET; Schema: student; Owner: postgres
--

SELECT pg_catalog.setval('student.students_student_id_seq', 5, true);


--
-- TOC entry 4911 (class 2606 OID 17597)
-- Name: courses courses_pkey; Type: CONSTRAINT; Schema: student; Owner: postgres
--

ALTER TABLE ONLY student.courses
    ADD CONSTRAINT courses_pkey PRIMARY KEY (course_id);


--
-- TOC entry 4909 (class 2606 OID 17589)
-- Name: students students_pkey; Type: CONSTRAINT; Schema: student; Owner: postgres
--

ALTER TABLE ONLY student.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (student_id);


--
-- TOC entry 4912 (class 2606 OID 17606)
-- Name: enrollments enrollments_course_id_fkey; Type: FK CONSTRAINT; Schema: student; Owner: postgres
--

ALTER TABLE ONLY student.enrollments
    ADD CONSTRAINT enrollments_course_id_fkey FOREIGN KEY (course_id) REFERENCES student.courses(course_id);


--
-- TOC entry 4913 (class 2606 OID 17601)
-- Name: enrollments enrollments_student_id_fkey; Type: FK CONSTRAINT; Schema: student; Owner: postgres
--

ALTER TABLE ONLY student.enrollments
    ADD CONSTRAINT enrollments_student_id_fkey FOREIGN KEY (student_id) REFERENCES student.students(student_id);


-- Completed on 2025-11-07 11:38:10

--
-- PostgreSQL database dump complete
--

\unrestrict iOiHk2HZY1bPLWnpFHuFoC4oVqIVWLJ1obbbfvZfBx8cgZ6bWTZO64AVdh2bCPU

