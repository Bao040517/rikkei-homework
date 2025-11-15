--
-- PostgreSQL database dump
--

\restrict CWNJwxRmQ8SAHEeY36EfaH9LclM6Oo1UfvJIKHOJ02mfZmvhtZmngJbUide2drl

-- Dumped from database version 18.0
-- Dumped by pg_dump version 18.0

-- Started on 2025-11-15 21:31:29

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
-- TOC entry 10 (class 2615 OID 18447)
-- Name: ex4; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA ex4;


ALTER SCHEMA ex4 OWNER TO postgres;

--
-- TOC entry 235 (class 1255 OID 18458)
-- Name: calculate_discount(integer); Type: PROCEDURE; Schema: ex4; Owner: postgres
--

CREATE PROCEDURE ex4.calculate_discount(IN p_id integer, OUT p_final_price numeric)
    LANGUAGE plpgsql
    AS $$
DECLARE
v_price NUMERIC;
v_discount INT;
BEGIN
SELECT price, discount_percent
INTO v_price, v_discount
FROM ex4.products
WHERE id = p_id;

    IF v_discount > 50 THEN
        v_discount := 50;
        UPDATE ex4.products
        SET discount_percent = 50
        WHERE id = p_id;
    END IF;

    p_final_price := v_price - (v_price * v_discount / 100);
    UPDATE ex4.products
    SET price = p_final_price
    WHERE id = p_id;
END;
$$;


ALTER PROCEDURE ex4.calculate_discount(IN p_id integer, OUT p_final_price numeric) OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 231 (class 1259 OID 18449)
-- Name: products; Type: TABLE; Schema: ex4; Owner: postgres
--

CREATE TABLE ex4.products (
    id integer NOT NULL,
    name character varying(100),
    price numeric,
    discount_percent integer
);


ALTER TABLE ex4.products OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 18448)
-- Name: products_id_seq; Type: SEQUENCE; Schema: ex4; Owner: postgres
--

CREATE SEQUENCE ex4.products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE ex4.products_id_seq OWNER TO postgres;

--
-- TOC entry 5034 (class 0 OID 0)
-- Dependencies: 230
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: ex4; Owner: postgres
--

ALTER SEQUENCE ex4.products_id_seq OWNED BY ex4.products.id;


--
-- TOC entry 4877 (class 2604 OID 18452)
-- Name: products id; Type: DEFAULT; Schema: ex4; Owner: postgres
--

ALTER TABLE ONLY ex4.products ALTER COLUMN id SET DEFAULT nextval('ex4.products_id_seq'::regclass);


--
-- TOC entry 5028 (class 0 OID 18449)
-- Dependencies: 231
-- Data for Name: products; Type: TABLE DATA; Schema: ex4; Owner: postgres
--

COPY ex4.products (id, name, price, discount_percent) FROM stdin;
1	IPhone 15 Pro Max	32990000	10
3	AirPods Pro 2	5490000	15
4	Apple Watch Series 9	9990000	12
5	Samsung Galaxy S24 Ultra	28990000	8
6	Chuột Logitech G102	390000	20
7	Bàn phím cơ Akko 3087	1590000	10
8	Màn hình LG UltraWide 29"	7990000	18
9	Ổ cứng SSD Samsung 1TB	1990000	5
10	Tai nghe Sony WH-1000XM5	8990000	7
2	Macbook Air M2	23740500.000000000000	5
\.


--
-- TOC entry 5035 (class 0 OID 0)
-- Dependencies: 230
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: ex4; Owner: postgres
--

SELECT pg_catalog.setval('ex4.products_id_seq', 10, true);


--
-- TOC entry 4879 (class 2606 OID 18457)
-- Name: products products_pkey; Type: CONSTRAINT; Schema: ex4; Owner: postgres
--

ALTER TABLE ONLY ex4.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


-- Completed on 2025-11-15 21:31:29

--
-- PostgreSQL database dump complete
--

\unrestrict CWNJwxRmQ8SAHEeY36EfaH9LclM6Oo1UfvJIKHOJ02mfZmvhtZmngJbUide2drl

