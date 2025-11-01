--
-- PostgreSQL database dump
--

\restrict LplFZGiP1GUJAAKk3v4RrHbGRui8fKvbhYWYdBQFzmwmJoNrAFJ6Y2zgxNvl5MT

-- Dumped from database version 18.0
-- Dumped by pg_dump version 18.0

-- Started on 2025-11-01 23:05:26

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
-- TOC entry 6 (class 2615 OID 16541)
-- Name: elearning; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA elearning;


ALTER SCHEMA elearning OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 229 (class 1259 OID 16601)
-- Name: assignments; Type: TABLE; Schema: elearning; Owner: postgres
--

CREATE TABLE elearning.assignments (
    assignment_id integer NOT NULL,
    course_id integer,
    title character varying(100) NOT NULL,
    due_date date NOT NULL
);


ALTER TABLE elearning.assignments OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 16600)
-- Name: assignments_assignment_id_seq; Type: SEQUENCE; Schema: elearning; Owner: postgres
--

CREATE SEQUENCE elearning.assignments_assignment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE elearning.assignments_assignment_id_seq OWNER TO postgres;

--
-- TOC entry 5074 (class 0 OID 0)
-- Dependencies: 228
-- Name: assignments_assignment_id_seq; Type: SEQUENCE OWNED BY; Schema: elearning; Owner: postgres
--

ALTER SEQUENCE elearning.assignments_assignment_id_seq OWNED BY elearning.assignments.assignment_id;


--
-- TOC entry 225 (class 1259 OID 16569)
-- Name: courses; Type: TABLE; Schema: elearning; Owner: postgres
--

CREATE TABLE elearning.courses (
    course_id integer NOT NULL,
    course_name character varying(100) NOT NULL,
    instructor_id integer
);


ALTER TABLE elearning.courses OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 16568)
-- Name: courses_course_id_seq; Type: SEQUENCE; Schema: elearning; Owner: postgres
--

CREATE SEQUENCE elearning.courses_course_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE elearning.courses_course_id_seq OWNER TO postgres;

--
-- TOC entry 5075 (class 0 OID 0)
-- Dependencies: 224
-- Name: courses_course_id_seq; Type: SEQUENCE OWNED BY; Schema: elearning; Owner: postgres
--

ALTER SEQUENCE elearning.courses_course_id_seq OWNED BY elearning.courses.course_id;


--
-- TOC entry 227 (class 1259 OID 16583)
-- Name: enrollments; Type: TABLE; Schema: elearning; Owner: postgres
--

CREATE TABLE elearning.enrollments (
    enrollment_id integer NOT NULL,
    student_id integer,
    course_id integer,
    enroll_date date
);


ALTER TABLE elearning.enrollments OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 16582)
-- Name: enrollments_enrollment_id_seq; Type: SEQUENCE; Schema: elearning; Owner: postgres
--

CREATE SEQUENCE elearning.enrollments_enrollment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE elearning.enrollments_enrollment_id_seq OWNER TO postgres;

--
-- TOC entry 5076 (class 0 OID 0)
-- Dependencies: 226
-- Name: enrollments_enrollment_id_seq; Type: SEQUENCE OWNED BY; Schema: elearning; Owner: postgres
--

ALTER SEQUENCE elearning.enrollments_enrollment_id_seq OWNED BY elearning.enrollments.enrollment_id;


--
-- TOC entry 223 (class 1259 OID 16556)
-- Name: instructors; Type: TABLE; Schema: elearning; Owner: postgres
--

CREATE TABLE elearning.instructors (
    instructor_id integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    email character varying(50) NOT NULL
);


ALTER TABLE elearning.instructors OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16555)
-- Name: instructors_instructor_id_seq; Type: SEQUENCE; Schema: elearning; Owner: postgres
--

CREATE SEQUENCE elearning.instructors_instructor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE elearning.instructors_instructor_id_seq OWNER TO postgres;

--
-- TOC entry 5077 (class 0 OID 0)
-- Dependencies: 222
-- Name: instructors_instructor_id_seq; Type: SEQUENCE OWNED BY; Schema: elearning; Owner: postgres
--

ALTER SEQUENCE elearning.instructors_instructor_id_seq OWNED BY elearning.instructors.instructor_id;


--
-- TOC entry 221 (class 1259 OID 16543)
-- Name: students; Type: TABLE; Schema: elearning; Owner: postgres
--

CREATE TABLE elearning.students (
    student_id integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    email character varying(50) NOT NULL
);


ALTER TABLE elearning.students OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16542)
-- Name: students_student_id_seq; Type: SEQUENCE; Schema: elearning; Owner: postgres
--

CREATE SEQUENCE elearning.students_student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE elearning.students_student_id_seq OWNER TO postgres;

--
-- TOC entry 5078 (class 0 OID 0)
-- Dependencies: 220
-- Name: students_student_id_seq; Type: SEQUENCE OWNED BY; Schema: elearning; Owner: postgres
--

ALTER SEQUENCE elearning.students_student_id_seq OWNED BY elearning.students.student_id;


--
-- TOC entry 231 (class 1259 OID 16616)
-- Name: submissions; Type: TABLE; Schema: elearning; Owner: postgres
--

CREATE TABLE elearning.submissions (
    submission_id integer NOT NULL,
    assignment_id integer,
    student_id integer,
    submission_date date NOT NULL,
    title double precision
);


ALTER TABLE elearning.submissions OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 16615)
-- Name: submissions_submission_id_seq; Type: SEQUENCE; Schema: elearning; Owner: postgres
--

CREATE SEQUENCE elearning.submissions_submission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE elearning.submissions_submission_id_seq OWNER TO postgres;

--
-- TOC entry 5079 (class 0 OID 0)
-- Dependencies: 230
-- Name: submissions_submission_id_seq; Type: SEQUENCE OWNED BY; Schema: elearning; Owner: postgres
--

ALTER SEQUENCE elearning.submissions_submission_id_seq OWNED BY elearning.submissions.submission_id;


--
-- TOC entry 4886 (class 2604 OID 16604)
-- Name: assignments assignment_id; Type: DEFAULT; Schema: elearning; Owner: postgres
--

ALTER TABLE ONLY elearning.assignments ALTER COLUMN assignment_id SET DEFAULT nextval('elearning.assignments_assignment_id_seq'::regclass);


--
-- TOC entry 4884 (class 2604 OID 16572)
-- Name: courses course_id; Type: DEFAULT; Schema: elearning; Owner: postgres
--

ALTER TABLE ONLY elearning.courses ALTER COLUMN course_id SET DEFAULT nextval('elearning.courses_course_id_seq'::regclass);


--
-- TOC entry 4885 (class 2604 OID 16586)
-- Name: enrollments enrollment_id; Type: DEFAULT; Schema: elearning; Owner: postgres
--

ALTER TABLE ONLY elearning.enrollments ALTER COLUMN enrollment_id SET DEFAULT nextval('elearning.enrollments_enrollment_id_seq'::regclass);


--
-- TOC entry 4883 (class 2604 OID 16559)
-- Name: instructors instructor_id; Type: DEFAULT; Schema: elearning; Owner: postgres
--

ALTER TABLE ONLY elearning.instructors ALTER COLUMN instructor_id SET DEFAULT nextval('elearning.instructors_instructor_id_seq'::regclass);


--
-- TOC entry 4882 (class 2604 OID 16546)
-- Name: students student_id; Type: DEFAULT; Schema: elearning; Owner: postgres
--

ALTER TABLE ONLY elearning.students ALTER COLUMN student_id SET DEFAULT nextval('elearning.students_student_id_seq'::regclass);


--
-- TOC entry 4887 (class 2604 OID 16619)
-- Name: submissions submission_id; Type: DEFAULT; Schema: elearning; Owner: postgres
--

ALTER TABLE ONLY elearning.submissions ALTER COLUMN submission_id SET DEFAULT nextval('elearning.submissions_submission_id_seq'::regclass);


--
-- TOC entry 5066 (class 0 OID 16601)
-- Dependencies: 229
-- Data for Name: assignments; Type: TABLE DATA; Schema: elearning; Owner: postgres
--

COPY elearning.assignments (assignment_id, course_id, title, due_date) FROM stdin;
\.


--
-- TOC entry 5062 (class 0 OID 16569)
-- Dependencies: 225
-- Data for Name: courses; Type: TABLE DATA; Schema: elearning; Owner: postgres
--

COPY elearning.courses (course_id, course_name, instructor_id) FROM stdin;
\.


--
-- TOC entry 5064 (class 0 OID 16583)
-- Dependencies: 227
-- Data for Name: enrollments; Type: TABLE DATA; Schema: elearning; Owner: postgres
--

COPY elearning.enrollments (enrollment_id, student_id, course_id, enroll_date) FROM stdin;
\.


--
-- TOC entry 5060 (class 0 OID 16556)
-- Dependencies: 223
-- Data for Name: instructors; Type: TABLE DATA; Schema: elearning; Owner: postgres
--

COPY elearning.instructors (instructor_id, first_name, last_name, email) FROM stdin;
\.


--
-- TOC entry 5058 (class 0 OID 16543)
-- Dependencies: 221
-- Data for Name: students; Type: TABLE DATA; Schema: elearning; Owner: postgres
--

COPY elearning.students (student_id, first_name, last_name, email) FROM stdin;
\.


--
-- TOC entry 5068 (class 0 OID 16616)
-- Dependencies: 231
-- Data for Name: submissions; Type: TABLE DATA; Schema: elearning; Owner: postgres
--

COPY elearning.submissions (submission_id, assignment_id, student_id, submission_date, title) FROM stdin;
\.


--
-- TOC entry 5080 (class 0 OID 0)
-- Dependencies: 228
-- Name: assignments_assignment_id_seq; Type: SEQUENCE SET; Schema: elearning; Owner: postgres
--

SELECT pg_catalog.setval('elearning.assignments_assignment_id_seq', 1, false);


--
-- TOC entry 5081 (class 0 OID 0)
-- Dependencies: 224
-- Name: courses_course_id_seq; Type: SEQUENCE SET; Schema: elearning; Owner: postgres
--

SELECT pg_catalog.setval('elearning.courses_course_id_seq', 1, false);


--
-- TOC entry 5082 (class 0 OID 0)
-- Dependencies: 226
-- Name: enrollments_enrollment_id_seq; Type: SEQUENCE SET; Schema: elearning; Owner: postgres
--

SELECT pg_catalog.setval('elearning.enrollments_enrollment_id_seq', 1, false);


--
-- TOC entry 5083 (class 0 OID 0)
-- Dependencies: 222
-- Name: instructors_instructor_id_seq; Type: SEQUENCE SET; Schema: elearning; Owner: postgres
--

SELECT pg_catalog.setval('elearning.instructors_instructor_id_seq', 1, false);


--
-- TOC entry 5084 (class 0 OID 0)
-- Dependencies: 220
-- Name: students_student_id_seq; Type: SEQUENCE SET; Schema: elearning; Owner: postgres
--

SELECT pg_catalog.setval('elearning.students_student_id_seq', 1, false);


--
-- TOC entry 5085 (class 0 OID 0)
-- Dependencies: 230
-- Name: submissions_submission_id_seq; Type: SEQUENCE SET; Schema: elearning; Owner: postgres
--

SELECT pg_catalog.setval('elearning.submissions_submission_id_seq', 1, false);


--
-- TOC entry 4901 (class 2606 OID 16609)
-- Name: assignments assignments_pkey; Type: CONSTRAINT; Schema: elearning; Owner: postgres
--

ALTER TABLE ONLY elearning.assignments
    ADD CONSTRAINT assignments_pkey PRIMARY KEY (assignment_id);


--
-- TOC entry 4897 (class 2606 OID 16576)
-- Name: courses courses_pkey; Type: CONSTRAINT; Schema: elearning; Owner: postgres
--

ALTER TABLE ONLY elearning.courses
    ADD CONSTRAINT courses_pkey PRIMARY KEY (course_id);


--
-- TOC entry 4899 (class 2606 OID 16589)
-- Name: enrollments enrollments_pkey; Type: CONSTRAINT; Schema: elearning; Owner: postgres
--

ALTER TABLE ONLY elearning.enrollments
    ADD CONSTRAINT enrollments_pkey PRIMARY KEY (enrollment_id);


--
-- TOC entry 4893 (class 2606 OID 16567)
-- Name: instructors instructors_email_key; Type: CONSTRAINT; Schema: elearning; Owner: postgres
--

ALTER TABLE ONLY elearning.instructors
    ADD CONSTRAINT instructors_email_key UNIQUE (email);


--
-- TOC entry 4895 (class 2606 OID 16565)
-- Name: instructors instructors_pkey; Type: CONSTRAINT; Schema: elearning; Owner: postgres
--

ALTER TABLE ONLY elearning.instructors
    ADD CONSTRAINT instructors_pkey PRIMARY KEY (instructor_id);


--
-- TOC entry 4889 (class 2606 OID 16554)
-- Name: students students_email_key; Type: CONSTRAINT; Schema: elearning; Owner: postgres
--

ALTER TABLE ONLY elearning.students
    ADD CONSTRAINT students_email_key UNIQUE (email);


--
-- TOC entry 4891 (class 2606 OID 16552)
-- Name: students students_pkey; Type: CONSTRAINT; Schema: elearning; Owner: postgres
--

ALTER TABLE ONLY elearning.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (student_id);


--
-- TOC entry 4903 (class 2606 OID 16623)
-- Name: submissions submissions_pkey; Type: CONSTRAINT; Schema: elearning; Owner: postgres
--

ALTER TABLE ONLY elearning.submissions
    ADD CONSTRAINT submissions_pkey PRIMARY KEY (submission_id);


--
-- TOC entry 4907 (class 2606 OID 16610)
-- Name: assignments assignments_course_id_fkey; Type: FK CONSTRAINT; Schema: elearning; Owner: postgres
--

ALTER TABLE ONLY elearning.assignments
    ADD CONSTRAINT assignments_course_id_fkey FOREIGN KEY (course_id) REFERENCES elearning.courses(course_id);


--
-- TOC entry 4904 (class 2606 OID 16577)
-- Name: courses courses_instructor_id_fkey; Type: FK CONSTRAINT; Schema: elearning; Owner: postgres
--

ALTER TABLE ONLY elearning.courses
    ADD CONSTRAINT courses_instructor_id_fkey FOREIGN KEY (instructor_id) REFERENCES elearning.instructors(instructor_id);


--
-- TOC entry 4905 (class 2606 OID 16595)
-- Name: enrollments enrollments_course_id_fkey; Type: FK CONSTRAINT; Schema: elearning; Owner: postgres
--

ALTER TABLE ONLY elearning.enrollments
    ADD CONSTRAINT enrollments_course_id_fkey FOREIGN KEY (course_id) REFERENCES elearning.courses(course_id);


--
-- TOC entry 4906 (class 2606 OID 16590)
-- Name: enrollments enrollments_student_id_fkey; Type: FK CONSTRAINT; Schema: elearning; Owner: postgres
--

ALTER TABLE ONLY elearning.enrollments
    ADD CONSTRAINT enrollments_student_id_fkey FOREIGN KEY (student_id) REFERENCES elearning.students(student_id);


--
-- TOC entry 4908 (class 2606 OID 16624)
-- Name: submissions submissions_assignment_id_fkey; Type: FK CONSTRAINT; Schema: elearning; Owner: postgres
--

ALTER TABLE ONLY elearning.submissions
    ADD CONSTRAINT submissions_assignment_id_fkey FOREIGN KEY (assignment_id) REFERENCES elearning.assignments(assignment_id);


--
-- TOC entry 4909 (class 2606 OID 16629)
-- Name: submissions submissions_student_id_fkey; Type: FK CONSTRAINT; Schema: elearning; Owner: postgres
--

ALTER TABLE ONLY elearning.submissions
    ADD CONSTRAINT submissions_student_id_fkey FOREIGN KEY (student_id) REFERENCES elearning.students(student_id);


-- Completed on 2025-11-01 23:05:26

--
-- PostgreSQL database dump complete
--

\unrestrict LplFZGiP1GUJAAKk3v4RrHbGRui8fKvbhYWYdBQFzmwmJoNrAFJ6Y2zgxNvl5MT

