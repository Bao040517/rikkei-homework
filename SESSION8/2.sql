--
-- PostgreSQL database dump
--

\restrict 0M5LUVLVb6lgVL1cfYAEYpTbdqXa5WBMpjtCVGbCKSm7EhFCje88wzI1Q03nzGk

-- Dumped from database version 18.0
-- Dumped by pg_dump version 18.0

-- Started on 2025-11-15 20:36:29

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
-- TOC entry 7 (class 2615 OID 18423)
-- Name: ex2; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA ex2;


ALTER SCHEMA ex2 OWNER TO postgres;

--
-- TOC entry 226 (class 1255 OID 18433)
-- Name: check_stock(integer, integer); Type: PROCEDURE; Schema: ex2; Owner: postgres
--

CREATE PROCEDURE ex2.check_stock(IN p_id integer, IN p_qty integer)
    LANGUAGE plpgsql
    AS $$
DECLARE
	total INT;
BEGIN
	SELECT COUNT(inv.quantity) INTO total
	FROM ex2.inventory AS inv
	WHERE inv.product_id = p_id;
	IF total >= p_qty THEN
		RAISE NOTICE 'Đủ hàng: %', total;
	ELSE
		RAISE NOTICE 'Không đủ hàng trong kho,còn % sản phẩm', total;
	END IF;
END;
$$;


ALTER PROCEDURE ex2.check_stock(IN p_id integer, IN p_qty integer) OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 224 (class 1259 OID 18425)
-- Name: inventory; Type: TABLE; Schema: ex2; Owner: postgres
--

CREATE TABLE ex2.inventory (
    product_id integer NOT NULL,
    product_name character varying(100),
    quantity integer
);


ALTER TABLE ex2.inventory OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 18424)
-- Name: inventory_product_id_seq; Type: SEQUENCE; Schema: ex2; Owner: postgres
--

CREATE SEQUENCE ex2.inventory_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE ex2.inventory_product_id_seq OWNER TO postgres;

--
-- TOC entry 5021 (class 0 OID 0)
-- Dependencies: 223
-- Name: inventory_product_id_seq; Type: SEQUENCE OWNED BY; Schema: ex2; Owner: postgres
--

ALTER SEQUENCE ex2.inventory_product_id_seq OWNED BY ex2.inventory.product_id;


--
-- TOC entry 4864 (class 2604 OID 18428)
-- Name: inventory product_id; Type: DEFAULT; Schema: ex2; Owner: postgres
--

ALTER TABLE ONLY ex2.inventory ALTER COLUMN product_id SET DEFAULT nextval('ex2.inventory_product_id_seq'::regclass);


--
-- TOC entry 5015 (class 0 OID 18425)
-- Dependencies: 224
-- Data for Name: inventory; Type: TABLE DATA; Schema: ex2; Owner: postgres
--

COPY ex2.inventory (product_id, product_name, quantity) FROM stdin;
1	IPhone 15 Pro Max	50
2	Macbook Air M2	20
3	AirPods Pro 2	100
4	Apple Watch Series 9	35
5	Samsung Galaxy S24 Ultra	40
6	Chuột Logitech G102	200
7	Bàn phím cơ Akko 3087	120
8	Màn hình LG UltraWide 29"	25
9	Ổ cứng SSD Samsung 1TB	80
10	Tai nghe Sony WH-1000XM5	30
\.


--
-- TOC entry 5022 (class 0 OID 0)
-- Dependencies: 223
-- Name: inventory_product_id_seq; Type: SEQUENCE SET; Schema: ex2; Owner: postgres
--

SELECT pg_catalog.setval('ex2.inventory_product_id_seq', 10, true);


--
-- TOC entry 4866 (class 2606 OID 18431)
-- Name: inventory inventory_pkey; Type: CONSTRAINT; Schema: ex2; Owner: postgres
--

ALTER TABLE ONLY ex2.inventory
    ADD CONSTRAINT inventory_pkey PRIMARY KEY (product_id);


-- Completed on 2025-11-15 20:36:29

--
-- PostgreSQL database dump complete
--

\unrestrict 0M5LUVLVb6lgVL1cfYAEYpTbdqXa5WBMpjtCVGbCKSm7EhFCje88wzI1Q03nzGk

