--
-- PostgreSQL database dump
--

\restrict b2ke72sdUKbPDgcIMjzo7ITMxAE1yLzKFUITyoPN59qPe7iZ9dWfda15pDMewq9

-- Dumped from database version 18.0
-- Dumped by pg_dump version 18.0

-- Started on 2025-11-04 23:45:19

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
-- TOC entry 9 (class 2615 OID 17198)
-- Name: library; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA library;


ALTER SCHEMA library OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 238 (class 1259 OID 17242)
-- Name: books; Type: TABLE; Schema: library; Owner: postgres
--

CREATE TABLE library.books (
    id integer NOT NULL,
    title character varying(100),
    author character varying(50),
    category character varying(50)
);


ALTER TABLE library.books OWNER TO postgres;

--
-- TOC entry 237 (class 1259 OID 17241)
-- Name: books_id_seq; Type: SEQUENCE; Schema: library; Owner: postgres
--

CREATE SEQUENCE library.books_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE library.books_id_seq OWNER TO postgres;

--
-- TOC entry 5063 (class 0 OID 0)
-- Dependencies: 237
-- Name: books_id_seq; Type: SEQUENCE OWNED BY; Schema: library; Owner: postgres
--

ALTER SEQUENCE library.books_id_seq OWNED BY library.books.id;


--
-- TOC entry 240 (class 1259 OID 17250)
-- Name: borrows; Type: TABLE; Schema: library; Owner: postgres
--

CREATE TABLE library.borrows (
    id integer NOT NULL,
    student_id integer,
    book_id integer,
    borrow_date date,
    return_date date
);


ALTER TABLE library.borrows OWNER TO postgres;

--
-- TOC entry 239 (class 1259 OID 17249)
-- Name: borrows_id_seq; Type: SEQUENCE; Schema: library; Owner: postgres
--

CREATE SEQUENCE library.borrows_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE library.borrows_id_seq OWNER TO postgres;

--
-- TOC entry 5064 (class 0 OID 0)
-- Dependencies: 239
-- Name: borrows_id_seq; Type: SEQUENCE OWNED BY; Schema: library; Owner: postgres
--

ALTER SEQUENCE library.borrows_id_seq OWNED BY library.borrows.id;


--
-- TOC entry 236 (class 1259 OID 17234)
-- Name: students; Type: TABLE; Schema: library; Owner: postgres
--

CREATE TABLE library.students (
    id integer NOT NULL,
    name character varying(50),
    major character varying(50)
);


ALTER TABLE library.students OWNER TO postgres;

--
-- TOC entry 235 (class 1259 OID 17233)
-- Name: students_id_seq; Type: SEQUENCE; Schema: library; Owner: postgres
--

CREATE SEQUENCE library.students_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE library.students_id_seq OWNER TO postgres;

--
-- TOC entry 5065 (class 0 OID 0)
-- Dependencies: 235
-- Name: students_id_seq; Type: SEQUENCE OWNED BY; Schema: library; Owner: postgres
--

ALTER SEQUENCE library.students_id_seq OWNED BY library.students.id;


--
-- TOC entry 4895 (class 2604 OID 17245)
-- Name: books id; Type: DEFAULT; Schema: library; Owner: postgres
--

ALTER TABLE ONLY library.books ALTER COLUMN id SET DEFAULT nextval('library.books_id_seq'::regclass);


--
-- TOC entry 4896 (class 2604 OID 17253)
-- Name: borrows id; Type: DEFAULT; Schema: library; Owner: postgres
--

ALTER TABLE ONLY library.borrows ALTER COLUMN id SET DEFAULT nextval('library.borrows_id_seq'::regclass);


--
-- TOC entry 4894 (class 2604 OID 17237)
-- Name: students id; Type: DEFAULT; Schema: library; Owner: postgres
--

ALTER TABLE ONLY library.students ALTER COLUMN id SET DEFAULT nextval('library.students_id_seq'::regclass);


--
-- TOC entry 5055 (class 0 OID 17242)
-- Dependencies: 238
-- Data for Name: books; Type: TABLE DATA; Schema: library; Owner: postgres
--

COPY library.books (id, title, author, category) FROM stdin;
1	Cấu trúc dữ liệu	Nguyễn Văn A	CNTT
2	Toán cao cấp	Trần Thị B	Toán
3	Vật lý đại cương	Lê Văn C	Vật lý
4	Lập trình Python	Nguyễn Văn D	CNTT
5	Cơ sở dữ liệu	Trần Thị E	CNTT
6	Cấu trúc dữ liệu	Nguyễn Văn A	CNTT
7	Toán cao cấp	Trần Thị B	Toán
8	Vật lý đại cương	Lê Văn C	Vật lý
9	Lập trình Python	Nguyễn Văn D	CNTT
10	Cơ sở dữ liệu	Trần Thị E	CNTT
\.


--
-- TOC entry 5057 (class 0 OID 17250)
-- Dependencies: 240
-- Data for Name: borrows; Type: TABLE DATA; Schema: library; Owner: postgres
--

COPY library.borrows (id, student_id, book_id, borrow_date, return_date) FROM stdin;
1	1	1	2025-10-01	2025-10-10
2	2	2	2025-10-02	2025-10-12
5	5	5	2025-10-10	2025-10-20
3	3	4	2025-10-03	2025-10-15
6	1	1	2025-10-01	2025-10-10
7	2	2	2025-10-02	2025-10-12
8	3	4	2025-10-03	\N
9	4	3	2025-10-05	2025-10-15
10	5	5	2025-10-10	2025-10-20
\.


--
-- TOC entry 5053 (class 0 OID 17234)
-- Dependencies: 236
-- Data for Name: students; Type: TABLE DATA; Schema: library; Owner: postgres
--

COPY library.students (id, name, major) FROM stdin;
1	An	CNTT
2	Bình	Toán
3	Cường	CNTT
4	Dương	Vật lý
5	Em	CNTT
6	An	CNTT
7	Bình	Toán
8	Cường	CNTT
9	Dương	Vật lý
10	Em	CNTT
\.


--
-- TOC entry 5066 (class 0 OID 0)
-- Dependencies: 237
-- Name: books_id_seq; Type: SEQUENCE SET; Schema: library; Owner: postgres
--

SELECT pg_catalog.setval('library.books_id_seq', 10, true);


--
-- TOC entry 5067 (class 0 OID 0)
-- Dependencies: 239
-- Name: borrows_id_seq; Type: SEQUENCE SET; Schema: library; Owner: postgres
--

SELECT pg_catalog.setval('library.borrows_id_seq', 10, true);


--
-- TOC entry 5068 (class 0 OID 0)
-- Dependencies: 235
-- Name: students_id_seq; Type: SEQUENCE SET; Schema: library; Owner: postgres
--

SELECT pg_catalog.setval('library.students_id_seq', 10, true);


--
-- TOC entry 4900 (class 2606 OID 17248)
-- Name: books books_pkey; Type: CONSTRAINT; Schema: library; Owner: postgres
--

ALTER TABLE ONLY library.books
    ADD CONSTRAINT books_pkey PRIMARY KEY (id);


--
-- TOC entry 4902 (class 2606 OID 17256)
-- Name: borrows borrows_pkey; Type: CONSTRAINT; Schema: library; Owner: postgres
--

ALTER TABLE ONLY library.borrows
    ADD CONSTRAINT borrows_pkey PRIMARY KEY (id);


--
-- TOC entry 4898 (class 2606 OID 17240)
-- Name: students students_pkey; Type: CONSTRAINT; Schema: library; Owner: postgres
--

ALTER TABLE ONLY library.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (id);


--
-- TOC entry 4903 (class 2606 OID 17262)
-- Name: borrows borrows_book_id_fkey; Type: FK CONSTRAINT; Schema: library; Owner: postgres
--

ALTER TABLE ONLY library.borrows
    ADD CONSTRAINT borrows_book_id_fkey FOREIGN KEY (book_id) REFERENCES library.books(id);


--
-- TOC entry 4904 (class 2606 OID 17257)
-- Name: borrows borrows_student_id_fkey; Type: FK CONSTRAINT; Schema: library; Owner: postgres
--

ALTER TABLE ONLY library.borrows
    ADD CONSTRAINT borrows_student_id_fkey FOREIGN KEY (student_id) REFERENCES library.students(id);


-- Completed on 2025-11-04 23:45:19

--
-- PostgreSQL database dump complete
--

\unrestrict b2ke72sdUKbPDgcIMjzo7ITMxAE1yLzKFUITyoPN59qPe7iZ9dWfda15pDMewq9

