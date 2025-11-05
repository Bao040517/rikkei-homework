--
-- PostgreSQL database dump
--

\restrict JIVVWTzBLTuN8aDkgpvYzAkn5yFM5TXiovdfxDbRU9IefaQN6DUojvceNy8FOG5

-- Dumped from database version 18.0
-- Dumped by pg_dump version 18.0

-- Started on 2025-11-01 23:45:43

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
-- TOC entry 6 (class 2615 OID 16857)
-- Name: library; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA library;


ALTER SCHEMA library OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 223 (class 1259 OID 16986)
-- Name: authors; Type: TABLE; Schema: library; Owner: postgres
--

CREATE TABLE library.authors (
    author_id integer NOT NULL,
    author_name character varying(100) NOT NULL,
    biography character varying(100)
);


ALTER TABLE library.authors OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16985)
-- Name: authors_author_id_seq; Type: SEQUENCE; Schema: library; Owner: postgres
--

CREATE SEQUENCE library.authors_author_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE library.authors_author_id_seq OWNER TO postgres;

--
-- TOC entry 5092 (class 0 OID 0)
-- Dependencies: 222
-- Name: authors_author_id_seq; Type: SEQUENCE OWNED BY; Schema: library; Owner: postgres
--

ALTER SEQUENCE library.authors_author_id_seq OWNED BY library.authors.author_id;


--
-- TOC entry 228 (class 1259 OID 17026)
-- Name: book_authors; Type: TABLE; Schema: library; Owner: postgres
--

CREATE TABLE library.book_authors (
    book_id integer NOT NULL,
    author_id integer NOT NULL
);


ALTER TABLE library.book_authors OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 17006)
-- Name: books; Type: TABLE; Schema: library; Owner: postgres
--

CREATE TABLE library.books (
    book_id integer NOT NULL,
    isbn character varying(20) NOT NULL,
    title character varying(200) NOT NULL,
    publish_year integer,
    publisher character varying(100),
    total_copies integer,
    available_copies integer,
    category_id integer NOT NULL,
    CONSTRAINT books_available_copies_check CHECK ((available_copies >= 0)),
    CONSTRAINT books_publish_year_check CHECK ((publish_year >= 0)),
    CONSTRAINT books_total_copies_check CHECK ((total_copies >= 0)),
    CONSTRAINT chk_available_le_total CHECK ((available_copies <= total_copies))
);


ALTER TABLE library.books OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 17005)
-- Name: books_book_id_seq; Type: SEQUENCE; Schema: library; Owner: postgres
--

CREATE SEQUENCE library.books_book_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE library.books_book_id_seq OWNER TO postgres;

--
-- TOC entry 5093 (class 0 OID 0)
-- Dependencies: 226
-- Name: books_book_id_seq; Type: SEQUENCE OWNED BY; Schema: library; Owner: postgres
--

ALTER SEQUENCE library.books_book_id_seq OWNED BY library.books.book_id;


--
-- TOC entry 232 (class 1259 OID 17060)
-- Name: borrow_details; Type: TABLE; Schema: library; Owner: postgres
--

CREATE TABLE library.borrow_details (
    borrow_detail_id integer NOT NULL,
    slip_id integer NOT NULL,
    book_id integer NOT NULL,
    quantity integer,
    CONSTRAINT borrow_details_quantity_check CHECK ((quantity > 0))
);


ALTER TABLE library.borrow_details OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 17059)
-- Name: borrow_details_borrow_detail_id_seq; Type: SEQUENCE; Schema: library; Owner: postgres
--

CREATE SEQUENCE library.borrow_details_borrow_detail_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE library.borrow_details_borrow_detail_id_seq OWNER TO postgres;

--
-- TOC entry 5094 (class 0 OID 0)
-- Dependencies: 231
-- Name: borrow_details_borrow_detail_id_seq; Type: SEQUENCE OWNED BY; Schema: library; Owner: postgres
--

ALTER SEQUENCE library.borrow_details_borrow_detail_id_seq OWNED BY library.borrow_details.borrow_detail_id;


--
-- TOC entry 230 (class 1259 OID 17044)
-- Name: borrow_slips; Type: TABLE; Schema: library; Owner: postgres
--

CREATE TABLE library.borrow_slips (
    slip_id integer NOT NULL,
    member_id integer NOT NULL,
    borrow_date date NOT NULL,
    due_date date NOT NULL,
    return_date date,
    CONSTRAINT chk_due_after_borrow CHECK ((due_date >= borrow_date)),
    CONSTRAINT chk_return_after_borrow CHECK (((return_date IS NULL) OR (return_date >= borrow_date)))
);


ALTER TABLE library.borrow_slips OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 17043)
-- Name: borrow_slips_slip_id_seq; Type: SEQUENCE; Schema: library; Owner: postgres
--

CREATE SEQUENCE library.borrow_slips_slip_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE library.borrow_slips_slip_id_seq OWNER TO postgres;

--
-- TOC entry 5095 (class 0 OID 0)
-- Dependencies: 229
-- Name: borrow_slips_slip_id_seq; Type: SEQUENCE OWNED BY; Schema: library; Owner: postgres
--

ALTER SEQUENCE library.borrow_slips_slip_id_seq OWNED BY library.borrow_slips.slip_id;


--
-- TOC entry 225 (class 1259 OID 16995)
-- Name: categories; Type: TABLE; Schema: library; Owner: postgres
--

CREATE TABLE library.categories (
    category_id integer NOT NULL,
    category_name character varying(100) NOT NULL,
    description character varying(100)
);


ALTER TABLE library.categories OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 16994)
-- Name: categories_category_id_seq; Type: SEQUENCE; Schema: library; Owner: postgres
--

CREATE SEQUENCE library.categories_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE library.categories_category_id_seq OWNER TO postgres;

--
-- TOC entry 5096 (class 0 OID 0)
-- Dependencies: 224
-- Name: categories_category_id_seq; Type: SEQUENCE OWNED BY; Schema: library; Owner: postgres
--

ALTER SEQUENCE library.categories_category_id_seq OWNED BY library.categories.category_id;


--
-- TOC entry 221 (class 1259 OID 16971)
-- Name: members; Type: TABLE; Schema: library; Owner: postgres
--

CREATE TABLE library.members (
    member_id integer NOT NULL,
    full_name character varying(100) NOT NULL,
    email character varying(100) NOT NULL,
    phone character varying(20),
    birth_date date,
    address character varying(100),
    status character varying(10) DEFAULT 'active'::character varying,
    join_date date NOT NULL,
    CONSTRAINT members_status_check CHECK (((status)::text = ANY ((ARRAY['active'::character varying, 'inactive'::character varying])::text[])))
);


ALTER TABLE library.members OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16970)
-- Name: members_member_id_seq; Type: SEQUENCE; Schema: library; Owner: postgres
--

CREATE SEQUENCE library.members_member_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE library.members_member_id_seq OWNER TO postgres;

--
-- TOC entry 5097 (class 0 OID 0)
-- Dependencies: 220
-- Name: members_member_id_seq; Type: SEQUENCE OWNED BY; Schema: library; Owner: postgres
--

ALTER SEQUENCE library.members_member_id_seq OWNED BY library.members.member_id;


--
-- TOC entry 4888 (class 2604 OID 16989)
-- Name: authors author_id; Type: DEFAULT; Schema: library; Owner: postgres
--

ALTER TABLE ONLY library.authors ALTER COLUMN author_id SET DEFAULT nextval('library.authors_author_id_seq'::regclass);


--
-- TOC entry 4890 (class 2604 OID 17009)
-- Name: books book_id; Type: DEFAULT; Schema: library; Owner: postgres
--

ALTER TABLE ONLY library.books ALTER COLUMN book_id SET DEFAULT nextval('library.books_book_id_seq'::regclass);


--
-- TOC entry 4892 (class 2604 OID 17063)
-- Name: borrow_details borrow_detail_id; Type: DEFAULT; Schema: library; Owner: postgres
--

ALTER TABLE ONLY library.borrow_details ALTER COLUMN borrow_detail_id SET DEFAULT nextval('library.borrow_details_borrow_detail_id_seq'::regclass);


--
-- TOC entry 4891 (class 2604 OID 17047)
-- Name: borrow_slips slip_id; Type: DEFAULT; Schema: library; Owner: postgres
--

ALTER TABLE ONLY library.borrow_slips ALTER COLUMN slip_id SET DEFAULT nextval('library.borrow_slips_slip_id_seq'::regclass);


--
-- TOC entry 4889 (class 2604 OID 16998)
-- Name: categories category_id; Type: DEFAULT; Schema: library; Owner: postgres
--

ALTER TABLE ONLY library.categories ALTER COLUMN category_id SET DEFAULT nextval('library.categories_category_id_seq'::regclass);


--
-- TOC entry 4886 (class 2604 OID 16974)
-- Name: members member_id; Type: DEFAULT; Schema: library; Owner: postgres
--

ALTER TABLE ONLY library.members ALTER COLUMN member_id SET DEFAULT nextval('library.members_member_id_seq'::regclass);


--
-- TOC entry 5077 (class 0 OID 16986)
-- Dependencies: 223
-- Data for Name: authors; Type: TABLE DATA; Schema: library; Owner: postgres
--

COPY library.authors (author_id, author_name, biography) FROM stdin;
\.


--
-- TOC entry 5082 (class 0 OID 17026)
-- Dependencies: 228
-- Data for Name: book_authors; Type: TABLE DATA; Schema: library; Owner: postgres
--

COPY library.book_authors (book_id, author_id) FROM stdin;
\.


--
-- TOC entry 5081 (class 0 OID 17006)
-- Dependencies: 227
-- Data for Name: books; Type: TABLE DATA; Schema: library; Owner: postgres
--

COPY library.books (book_id, isbn, title, publish_year, publisher, total_copies, available_copies, category_id) FROM stdin;
\.


--
-- TOC entry 5086 (class 0 OID 17060)
-- Dependencies: 232
-- Data for Name: borrow_details; Type: TABLE DATA; Schema: library; Owner: postgres
--

COPY library.borrow_details (borrow_detail_id, slip_id, book_id, quantity) FROM stdin;
\.


--
-- TOC entry 5084 (class 0 OID 17044)
-- Dependencies: 230
-- Data for Name: borrow_slips; Type: TABLE DATA; Schema: library; Owner: postgres
--

COPY library.borrow_slips (slip_id, member_id, borrow_date, due_date, return_date) FROM stdin;
\.


--
-- TOC entry 5079 (class 0 OID 16995)
-- Dependencies: 225
-- Data for Name: categories; Type: TABLE DATA; Schema: library; Owner: postgres
--

COPY library.categories (category_id, category_name, description) FROM stdin;
\.


--
-- TOC entry 5075 (class 0 OID 16971)
-- Dependencies: 221
-- Data for Name: members; Type: TABLE DATA; Schema: library; Owner: postgres
--

COPY library.members (member_id, full_name, email, phone, birth_date, address, status, join_date) FROM stdin;
\.


--
-- TOC entry 5098 (class 0 OID 0)
-- Dependencies: 222
-- Name: authors_author_id_seq; Type: SEQUENCE SET; Schema: library; Owner: postgres
--

SELECT pg_catalog.setval('library.authors_author_id_seq', 1, false);


--
-- TOC entry 5099 (class 0 OID 0)
-- Dependencies: 226
-- Name: books_book_id_seq; Type: SEQUENCE SET; Schema: library; Owner: postgres
--

SELECT pg_catalog.setval('library.books_book_id_seq', 1, false);


--
-- TOC entry 5100 (class 0 OID 0)
-- Dependencies: 231
-- Name: borrow_details_borrow_detail_id_seq; Type: SEQUENCE SET; Schema: library; Owner: postgres
--

SELECT pg_catalog.setval('library.borrow_details_borrow_detail_id_seq', 1, false);


--
-- TOC entry 5101 (class 0 OID 0)
-- Dependencies: 229
-- Name: borrow_slips_slip_id_seq; Type: SEQUENCE SET; Schema: library; Owner: postgres
--

SELECT pg_catalog.setval('library.borrow_slips_slip_id_seq', 1, false);


--
-- TOC entry 5102 (class 0 OID 0)
-- Dependencies: 224
-- Name: categories_category_id_seq; Type: SEQUENCE SET; Schema: library; Owner: postgres
--

SELECT pg_catalog.setval('library.categories_category_id_seq', 1, false);


--
-- TOC entry 5103 (class 0 OID 0)
-- Dependencies: 220
-- Name: members_member_id_seq; Type: SEQUENCE SET; Schema: library; Owner: postgres
--

SELECT pg_catalog.setval('library.members_member_id_seq', 1, false);


--
-- TOC entry 4906 (class 2606 OID 16993)
-- Name: authors authors_pkey; Type: CONSTRAINT; Schema: library; Owner: postgres
--

ALTER TABLE ONLY library.authors
    ADD CONSTRAINT authors_pkey PRIMARY KEY (author_id);


--
-- TOC entry 4916 (class 2606 OID 17032)
-- Name: book_authors book_authors_pkey; Type: CONSTRAINT; Schema: library; Owner: postgres
--

ALTER TABLE ONLY library.book_authors
    ADD CONSTRAINT book_authors_pkey PRIMARY KEY (book_id, author_id);


--
-- TOC entry 4912 (class 2606 OID 17020)
-- Name: books books_isbn_key; Type: CONSTRAINT; Schema: library; Owner: postgres
--

ALTER TABLE ONLY library.books
    ADD CONSTRAINT books_isbn_key UNIQUE (isbn);


--
-- TOC entry 4914 (class 2606 OID 17018)
-- Name: books books_pkey; Type: CONSTRAINT; Schema: library; Owner: postgres
--

ALTER TABLE ONLY library.books
    ADD CONSTRAINT books_pkey PRIMARY KEY (book_id);


--
-- TOC entry 4920 (class 2606 OID 17069)
-- Name: borrow_details borrow_details_pkey; Type: CONSTRAINT; Schema: library; Owner: postgres
--

ALTER TABLE ONLY library.borrow_details
    ADD CONSTRAINT borrow_details_pkey PRIMARY KEY (borrow_detail_id);


--
-- TOC entry 4918 (class 2606 OID 17053)
-- Name: borrow_slips borrow_slips_pkey; Type: CONSTRAINT; Schema: library; Owner: postgres
--

ALTER TABLE ONLY library.borrow_slips
    ADD CONSTRAINT borrow_slips_pkey PRIMARY KEY (slip_id);


--
-- TOC entry 4908 (class 2606 OID 17004)
-- Name: categories categories_category_name_key; Type: CONSTRAINT; Schema: library; Owner: postgres
--

ALTER TABLE ONLY library.categories
    ADD CONSTRAINT categories_category_name_key UNIQUE (category_name);


--
-- TOC entry 4910 (class 2606 OID 17002)
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: library; Owner: postgres
--

ALTER TABLE ONLY library.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (category_id);


--
-- TOC entry 4902 (class 2606 OID 16984)
-- Name: members members_email_key; Type: CONSTRAINT; Schema: library; Owner: postgres
--

ALTER TABLE ONLY library.members
    ADD CONSTRAINT members_email_key UNIQUE (email);


--
-- TOC entry 4904 (class 2606 OID 16982)
-- Name: members members_pkey; Type: CONSTRAINT; Schema: library; Owner: postgres
--

ALTER TABLE ONLY library.members
    ADD CONSTRAINT members_pkey PRIMARY KEY (member_id);


--
-- TOC entry 4922 (class 2606 OID 17038)
-- Name: book_authors book_authors_author_id_fkey; Type: FK CONSTRAINT; Schema: library; Owner: postgres
--

ALTER TABLE ONLY library.book_authors
    ADD CONSTRAINT book_authors_author_id_fkey FOREIGN KEY (author_id) REFERENCES library.authors(author_id);


--
-- TOC entry 4923 (class 2606 OID 17033)
-- Name: book_authors book_authors_book_id_fkey; Type: FK CONSTRAINT; Schema: library; Owner: postgres
--

ALTER TABLE ONLY library.book_authors
    ADD CONSTRAINT book_authors_book_id_fkey FOREIGN KEY (book_id) REFERENCES library.books(book_id);


--
-- TOC entry 4921 (class 2606 OID 17021)
-- Name: books books_category_id_fkey; Type: FK CONSTRAINT; Schema: library; Owner: postgres
--

ALTER TABLE ONLY library.books
    ADD CONSTRAINT books_category_id_fkey FOREIGN KEY (category_id) REFERENCES library.categories(category_id);


--
-- TOC entry 4925 (class 2606 OID 17075)
-- Name: borrow_details borrow_details_book_id_fkey; Type: FK CONSTRAINT; Schema: library; Owner: postgres
--

ALTER TABLE ONLY library.borrow_details
    ADD CONSTRAINT borrow_details_book_id_fkey FOREIGN KEY (book_id) REFERENCES library.books(book_id);


--
-- TOC entry 4926 (class 2606 OID 17070)
-- Name: borrow_details borrow_details_slip_id_fkey; Type: FK CONSTRAINT; Schema: library; Owner: postgres
--

ALTER TABLE ONLY library.borrow_details
    ADD CONSTRAINT borrow_details_slip_id_fkey FOREIGN KEY (slip_id) REFERENCES library.borrow_slips(slip_id);


--
-- TOC entry 4924 (class 2606 OID 17054)
-- Name: borrow_slips borrow_slips_member_id_fkey; Type: FK CONSTRAINT; Schema: library; Owner: postgres
--

ALTER TABLE ONLY library.borrow_slips
    ADD CONSTRAINT borrow_slips_member_id_fkey FOREIGN KEY (member_id) REFERENCES library.members(member_id);


-- Completed on 2025-11-01 23:45:43

--
-- PostgreSQL database dump complete
--

\unrestrict JIVVWTzBLTuN8aDkgpvYzAkn5yFM5TXiovdfxDbRU9IefaQN6DUojvceNy8FOG5

