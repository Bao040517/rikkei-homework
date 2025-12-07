--
-- PostgreSQL database dump
--

\restrict S4JzhZhskUorvYgKPl3N1AxSx5Zu9oW8ys1gNcqb7Z5x079IYR62fZxXn32CkDf

-- Dumped from database version 18.0
-- Dumped by pg_dump version 18.0

-- Started on 2025-11-09 12:04:14

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
-- TOC entry 6 (class 2615 OID 17866)
-- Name: ex1; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA ex1;


ALTER SCHEMA ex1 OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 221 (class 1259 OID 17873)
-- Name: student; Type: TABLE; Schema: ex1; Owner: postgres
--

CREATE TABLE ex1.student (
    student_id integer NOT NULL,
    full_name character varying(100) NOT NULL,
    date_of_birth date NOT NULL,
    sex bit(1) DEFAULT '1'::"bit",
    phone character varying(11) NOT NULL,
    address character varying(150) NOT NULL,
    point integer DEFAULT 100 NOT NULL,
    CONSTRAINT student_point_check CHECK ((point >= 0))
);


ALTER TABLE ex1.student OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 17872)
-- Name: student_student_id_seq; Type: SEQUENCE; Schema: ex1; Owner: postgres
--

CREATE SEQUENCE ex1.student_student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE ex1.student_student_id_seq OWNER TO postgres;

--
-- TOC entry 5021 (class 0 OID 0)
-- Dependencies: 220
-- Name: student_student_id_seq; Type: SEQUENCE OWNED BY; Schema: ex1; Owner: postgres
--

ALTER SEQUENCE ex1.student_student_id_seq OWNED BY ex1.student.student_id;


--
-- TOC entry 4857 (class 2604 OID 17876)
-- Name: student student_id; Type: DEFAULT; Schema: ex1; Owner: postgres
--

ALTER TABLE ONLY ex1.student ALTER COLUMN student_id SET DEFAULT nextval('ex1.student_student_id_seq'::regclass);


--
-- TOC entry 5015 (class 0 OID 17873)
-- Dependencies: 221
-- Data for Name: student; Type: TABLE DATA; Schema: ex1; Owner: postgres
--

COPY ex1.student (student_id, full_name, date_of_birth, sex, phone, address, point) FROM stdin;
2	Nguyễn Thị Bình	2002-03-25	0	09876543210	Hồ Chí Minh	95
4	Lê Hoài Phương	2004-01-09	0	09090909090	Hải Phòng	130
6	Vũ Thị Thanh	2003-05-30	0	09775556667	Nam Định	100
8	Ngô Thị Hằng	2002-09-05	0	09668889990	Nghệ An	115
1	Dương Văn An	2003-08-11	1	12345566778	Hà Nội	60
3	Phạm Quốc Dũng	2003-07-14	1	09112233445	Đà Nẵng	60
5	Trần Văn Lâm	2002-11-22	1	09334445556	Cần Thơ	60
7	Hoàng Đức Minh	2004-06-18	1	09446667778	Thái Nguyên	60
9	Trịnh Văn Khánh	2003-12-12	1	09223334445	Thanh Hóa	60
10	Đặng Thị Mai	2004-04-21	0	09335557779	Bắc Ninh	125
\.


--
-- TOC entry 5022 (class 0 OID 0)
-- Dependencies: 220
-- Name: student_student_id_seq; Type: SEQUENCE SET; Schema: ex1; Owner: postgres
--

SELECT pg_catalog.setval('ex1.student_student_id_seq', 1, false);


--
-- TOC entry 4862 (class 2606 OID 17889)
-- Name: student student_full_name_key; Type: CONSTRAINT; Schema: ex1; Owner: postgres
--

ALTER TABLE ONLY ex1.student
    ADD CONSTRAINT student_full_name_key UNIQUE (full_name);


--
-- TOC entry 4864 (class 2606 OID 17891)
-- Name: student student_phone_key; Type: CONSTRAINT; Schema: ex1; Owner: postgres
--

ALTER TABLE ONLY ex1.student
    ADD CONSTRAINT student_phone_key UNIQUE (phone);


--
-- TOC entry 4866 (class 2606 OID 17887)
-- Name: student student_pkey; Type: CONSTRAINT; Schema: ex1; Owner: postgres
--

ALTER TABLE ONLY ex1.student
    ADD CONSTRAINT student_pkey PRIMARY KEY (student_id);


-- Completed on 2025-11-09 12:04:14

--
-- PostgreSQL database dump complete
--

\unrestrict S4JzhZhskUorvYgKPl3N1AxSx5Zu9oW8ys1gNcqb7Z5x079IYR62fZxXn32CkDf

