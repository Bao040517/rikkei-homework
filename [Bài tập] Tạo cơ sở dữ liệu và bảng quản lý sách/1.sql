--
-- PostgreSQL database dump
--

\restrict 6gUUJBT726IFdmdse19SU53refHXudMaUigqcIRdZfchAvnlIeqVhTATWtYPhX9

-- Dumped from database version 18.0
-- Dumped by pg_dump version 18.0

-- Started on 2025-11-01 22:18:27

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
-- TOC entry 6 (class 2615 OID 16391)
-- Name: library; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA library;


ALTER SCHEMA library OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 221 (class 1259 OID 16396)
-- Name: books; Type: TABLE; Schema: library; Owner: postgres
--

CREATE TABLE library.books (
    book_id integer NOT NULL,
    title character varying(100) NOT NULL,
    author character varying(100) NOT NULL,
    published_year integer,
    genre character varying(50),
    price double precision
);


ALTER TABLE library.books OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16395)
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
-- TOC entry 5014 (class 0 OID 0)
-- Dependencies: 220
-- Name: books_book_id_seq; Type: SEQUENCE OWNED BY; Schema: library; Owner: postgres
--

ALTER SEQUENCE library.books_book_id_seq OWNED BY library.books.book_id;


--
-- TOC entry 4857 (class 2604 OID 16399)
-- Name: books book_id; Type: DEFAULT; Schema: library; Owner: postgres
--

ALTER TABLE ONLY library.books ALTER COLUMN book_id SET DEFAULT nextval('library.books_book_id_seq'::regclass);


--
-- TOC entry 5008 (class 0 OID 16396)
-- Dependencies: 221
-- Data for Name: books; Type: TABLE DATA; Schema: library; Owner: postgres
--

COPY library.books (book_id, title, author, published_year, genre, price) FROM stdin;
\.


--
-- TOC entry 5015 (class 0 OID 0)
-- Dependencies: 220
-- Name: books_book_id_seq; Type: SEQUENCE SET; Schema: library; Owner: postgres
--

SELECT pg_catalog.setval('library.books_book_id_seq', 1, false);


--
-- TOC entry 4859 (class 2606 OID 16404)
-- Name: books books_pkey; Type: CONSTRAINT; Schema: library; Owner: postgres
--

ALTER TABLE ONLY library.books
    ADD CONSTRAINT books_pkey PRIMARY KEY (book_id);


-- Completed on 2025-11-01 22:18:27

--
-- PostgreSQL database dump complete
--

\unrestrict 6gUUJBT726IFdmdse19SU53refHXudMaUigqcIRdZfchAvnlIeqVhTATWtYPhX9

