--
-- PostgreSQL database dump
--

\restrict buxuda1oRJMGjcXWKLJ6rf7O65Pnv9Dx0GyhFkrv6KQPDxjeV0tLdJuuWLmPpDT

-- Dumped from database version 18.0
-- Dumped by pg_dump version 18.0

-- Started on 2025-11-01 23:22:30

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
-- TOC entry 6 (class 2615 OID 16679)
-- Name: hotel; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA hotel;


ALTER SCHEMA hotel OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 227 (class 1259 OID 16724)
-- Name: bookings; Type: TABLE; Schema: hotel; Owner: postgres
--

CREATE TABLE hotel.bookings (
    booking_id integer NOT NULL,
    customer_id integer,
    room_id integer,
    check_in date NOT NULL,
    check_out date NOT NULL,
    status character varying(20),
    CONSTRAINT bookings_status_check CHECK (((status)::text = ANY ((ARRAY['Pending'::character varying, 'Confirmed'::character varying, 'Cancelled'::character varying])::text[])))
);


ALTER TABLE hotel.bookings OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 16723)
-- Name: bookings_booking_id_seq; Type: SEQUENCE; Schema: hotel; Owner: postgres
--

CREATE SEQUENCE hotel.bookings_booking_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE hotel.bookings_booking_id_seq OWNER TO postgres;

--
-- TOC entry 5070 (class 0 OID 0)
-- Dependencies: 226
-- Name: bookings_booking_id_seq; Type: SEQUENCE OWNED BY; Schema: hotel; Owner: postgres
--

ALTER SEQUENCE hotel.bookings_booking_id_seq OWNED BY hotel.bookings.booking_id;


--
-- TOC entry 225 (class 1259 OID 16711)
-- Name: customers; Type: TABLE; Schema: hotel; Owner: postgres
--

CREATE TABLE hotel.customers (
    customer_id integer NOT NULL,
    full_name character varying(100) NOT NULL,
    email character varying(100) NOT NULL,
    phone character varying(15) NOT NULL
);


ALTER TABLE hotel.customers OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 16710)
-- Name: customers_customer_id_seq; Type: SEQUENCE; Schema: hotel; Owner: postgres
--

CREATE SEQUENCE hotel.customers_customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE hotel.customers_customer_id_seq OWNER TO postgres;

--
-- TOC entry 5071 (class 0 OID 0)
-- Dependencies: 224
-- Name: customers_customer_id_seq; Type: SEQUENCE OWNED BY; Schema: hotel; Owner: postgres
--

ALTER SEQUENCE hotel.customers_customer_id_seq OWNED BY hotel.customers.customer_id;


--
-- TOC entry 229 (class 1259 OID 16745)
-- Name: payments; Type: TABLE; Schema: hotel; Owner: postgres
--

CREATE TABLE hotel.payments (
    payment_id integer NOT NULL,
    booking_id integer,
    amount numeric(10,2),
    payment_date date NOT NULL,
    method character varying(20),
    CONSTRAINT payments_amount_check CHECK ((amount >= (0)::numeric)),
    CONSTRAINT payments_method_check CHECK (((method)::text = ANY ((ARRAY['Credit Card'::character varying, 'Cash'::character varying, 'Bank Transfer'::character varying])::text[])))
);


ALTER TABLE hotel.payments OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 16744)
-- Name: payments_payment_id_seq; Type: SEQUENCE; Schema: hotel; Owner: postgres
--

CREATE SEQUENCE hotel.payments_payment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE hotel.payments_payment_id_seq OWNER TO postgres;

--
-- TOC entry 5072 (class 0 OID 0)
-- Dependencies: 228
-- Name: payments_payment_id_seq; Type: SEQUENCE OWNED BY; Schema: hotel; Owner: postgres
--

ALTER SEQUENCE hotel.payments_payment_id_seq OWNED BY hotel.payments.payment_id;


--
-- TOC entry 223 (class 1259 OID 16694)
-- Name: rooms; Type: TABLE; Schema: hotel; Owner: postgres
--

CREATE TABLE hotel.rooms (
    room_id integer NOT NULL,
    room_number character varying(10) NOT NULL,
    room_type_id integer,
    status character varying(20),
    CONSTRAINT rooms_status_check CHECK (((status)::text = ANY ((ARRAY['Available'::character varying, 'Occupied'::character varying, 'Maintenance'::character varying])::text[])))
);


ALTER TABLE hotel.rooms OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16693)
-- Name: rooms_room_id_seq; Type: SEQUENCE; Schema: hotel; Owner: postgres
--

CREATE SEQUENCE hotel.rooms_room_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE hotel.rooms_room_id_seq OWNER TO postgres;

--
-- TOC entry 5073 (class 0 OID 0)
-- Dependencies: 222
-- Name: rooms_room_id_seq; Type: SEQUENCE OWNED BY; Schema: hotel; Owner: postgres
--

ALTER SEQUENCE hotel.rooms_room_id_seq OWNED BY hotel.rooms.room_id;


--
-- TOC entry 221 (class 1259 OID 16681)
-- Name: roomtypes; Type: TABLE; Schema: hotel; Owner: postgres
--

CREATE TABLE hotel.roomtypes (
    room_type_id integer NOT NULL,
    type_name character varying(50) NOT NULL,
    price_per_night numeric(10,2),
    max_capacity integer,
    CONSTRAINT roomtypes_max_capacity_check CHECK ((max_capacity > 0)),
    CONSTRAINT roomtypes_price_per_night_check CHECK ((price_per_night > (0)::numeric))
);


ALTER TABLE hotel.roomtypes OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16680)
-- Name: roomtypes_room_type_id_seq; Type: SEQUENCE; Schema: hotel; Owner: postgres
--

CREATE SEQUENCE hotel.roomtypes_room_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE hotel.roomtypes_room_type_id_seq OWNER TO postgres;

--
-- TOC entry 5074 (class 0 OID 0)
-- Dependencies: 220
-- Name: roomtypes_room_type_id_seq; Type: SEQUENCE OWNED BY; Schema: hotel; Owner: postgres
--

ALTER SEQUENCE hotel.roomtypes_room_type_id_seq OWNED BY hotel.roomtypes.room_type_id;


--
-- TOC entry 4880 (class 2604 OID 16727)
-- Name: bookings booking_id; Type: DEFAULT; Schema: hotel; Owner: postgres
--

ALTER TABLE ONLY hotel.bookings ALTER COLUMN booking_id SET DEFAULT nextval('hotel.bookings_booking_id_seq'::regclass);


--
-- TOC entry 4879 (class 2604 OID 16714)
-- Name: customers customer_id; Type: DEFAULT; Schema: hotel; Owner: postgres
--

ALTER TABLE ONLY hotel.customers ALTER COLUMN customer_id SET DEFAULT nextval('hotel.customers_customer_id_seq'::regclass);


--
-- TOC entry 4881 (class 2604 OID 16748)
-- Name: payments payment_id; Type: DEFAULT; Schema: hotel; Owner: postgres
--

ALTER TABLE ONLY hotel.payments ALTER COLUMN payment_id SET DEFAULT nextval('hotel.payments_payment_id_seq'::regclass);


--
-- TOC entry 4878 (class 2604 OID 16697)
-- Name: rooms room_id; Type: DEFAULT; Schema: hotel; Owner: postgres
--

ALTER TABLE ONLY hotel.rooms ALTER COLUMN room_id SET DEFAULT nextval('hotel.rooms_room_id_seq'::regclass);


--
-- TOC entry 4877 (class 2604 OID 16684)
-- Name: roomtypes room_type_id; Type: DEFAULT; Schema: hotel; Owner: postgres
--

ALTER TABLE ONLY hotel.roomtypes ALTER COLUMN room_type_id SET DEFAULT nextval('hotel.roomtypes_room_type_id_seq'::regclass);


--
-- TOC entry 5062 (class 0 OID 16724)
-- Dependencies: 227
-- Data for Name: bookings; Type: TABLE DATA; Schema: hotel; Owner: postgres
--

COPY hotel.bookings (booking_id, customer_id, room_id, check_in, check_out, status) FROM stdin;
\.


--
-- TOC entry 5060 (class 0 OID 16711)
-- Dependencies: 225
-- Data for Name: customers; Type: TABLE DATA; Schema: hotel; Owner: postgres
--

COPY hotel.customers (customer_id, full_name, email, phone) FROM stdin;
\.


--
-- TOC entry 5064 (class 0 OID 16745)
-- Dependencies: 229
-- Data for Name: payments; Type: TABLE DATA; Schema: hotel; Owner: postgres
--

COPY hotel.payments (payment_id, booking_id, amount, payment_date, method) FROM stdin;
\.


--
-- TOC entry 5058 (class 0 OID 16694)
-- Dependencies: 223
-- Data for Name: rooms; Type: TABLE DATA; Schema: hotel; Owner: postgres
--

COPY hotel.rooms (room_id, room_number, room_type_id, status) FROM stdin;
\.


--
-- TOC entry 5056 (class 0 OID 16681)
-- Dependencies: 221
-- Data for Name: roomtypes; Type: TABLE DATA; Schema: hotel; Owner: postgres
--

COPY hotel.roomtypes (room_type_id, type_name, price_per_night, max_capacity) FROM stdin;
\.


--
-- TOC entry 5075 (class 0 OID 0)
-- Dependencies: 226
-- Name: bookings_booking_id_seq; Type: SEQUENCE SET; Schema: hotel; Owner: postgres
--

SELECT pg_catalog.setval('hotel.bookings_booking_id_seq', 1, false);


--
-- TOC entry 5076 (class 0 OID 0)
-- Dependencies: 224
-- Name: customers_customer_id_seq; Type: SEQUENCE SET; Schema: hotel; Owner: postgres
--

SELECT pg_catalog.setval('hotel.customers_customer_id_seq', 1, false);


--
-- TOC entry 5077 (class 0 OID 0)
-- Dependencies: 228
-- Name: payments_payment_id_seq; Type: SEQUENCE SET; Schema: hotel; Owner: postgres
--

SELECT pg_catalog.setval('hotel.payments_payment_id_seq', 1, false);


--
-- TOC entry 5078 (class 0 OID 0)
-- Dependencies: 222
-- Name: rooms_room_id_seq; Type: SEQUENCE SET; Schema: hotel; Owner: postgres
--

SELECT pg_catalog.setval('hotel.rooms_room_id_seq', 1, false);


--
-- TOC entry 5079 (class 0 OID 0)
-- Dependencies: 220
-- Name: roomtypes_room_type_id_seq; Type: SEQUENCE SET; Schema: hotel; Owner: postgres
--

SELECT pg_catalog.setval('hotel.roomtypes_room_type_id_seq', 1, false);


--
-- TOC entry 4901 (class 2606 OID 16733)
-- Name: bookings bookings_pkey; Type: CONSTRAINT; Schema: hotel; Owner: postgres
--

ALTER TABLE ONLY hotel.bookings
    ADD CONSTRAINT bookings_pkey PRIMARY KEY (booking_id);


--
-- TOC entry 4897 (class 2606 OID 16722)
-- Name: customers customers_email_key; Type: CONSTRAINT; Schema: hotel; Owner: postgres
--

ALTER TABLE ONLY hotel.customers
    ADD CONSTRAINT customers_email_key UNIQUE (email);


--
-- TOC entry 4899 (class 2606 OID 16720)
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: hotel; Owner: postgres
--

ALTER TABLE ONLY hotel.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (customer_id);


--
-- TOC entry 4903 (class 2606 OID 16754)
-- Name: payments payments_pkey; Type: CONSTRAINT; Schema: hotel; Owner: postgres
--

ALTER TABLE ONLY hotel.payments
    ADD CONSTRAINT payments_pkey PRIMARY KEY (payment_id);


--
-- TOC entry 4893 (class 2606 OID 16702)
-- Name: rooms rooms_pkey; Type: CONSTRAINT; Schema: hotel; Owner: postgres
--

ALTER TABLE ONLY hotel.rooms
    ADD CONSTRAINT rooms_pkey PRIMARY KEY (room_id);


--
-- TOC entry 4895 (class 2606 OID 16704)
-- Name: rooms rooms_room_number_key; Type: CONSTRAINT; Schema: hotel; Owner: postgres
--

ALTER TABLE ONLY hotel.rooms
    ADD CONSTRAINT rooms_room_number_key UNIQUE (room_number);


--
-- TOC entry 4889 (class 2606 OID 16690)
-- Name: roomtypes roomtypes_pkey; Type: CONSTRAINT; Schema: hotel; Owner: postgres
--

ALTER TABLE ONLY hotel.roomtypes
    ADD CONSTRAINT roomtypes_pkey PRIMARY KEY (room_type_id);


--
-- TOC entry 4891 (class 2606 OID 16692)
-- Name: roomtypes roomtypes_type_name_key; Type: CONSTRAINT; Schema: hotel; Owner: postgres
--

ALTER TABLE ONLY hotel.roomtypes
    ADD CONSTRAINT roomtypes_type_name_key UNIQUE (type_name);


--
-- TOC entry 4905 (class 2606 OID 16734)
-- Name: bookings bookings_customer_id_fkey; Type: FK CONSTRAINT; Schema: hotel; Owner: postgres
--

ALTER TABLE ONLY hotel.bookings
    ADD CONSTRAINT bookings_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES hotel.customers(customer_id);


--
-- TOC entry 4906 (class 2606 OID 16739)
-- Name: bookings bookings_room_id_fkey; Type: FK CONSTRAINT; Schema: hotel; Owner: postgres
--

ALTER TABLE ONLY hotel.bookings
    ADD CONSTRAINT bookings_room_id_fkey FOREIGN KEY (room_id) REFERENCES hotel.rooms(room_id);


--
-- TOC entry 4907 (class 2606 OID 16755)
-- Name: payments payments_booking_id_fkey; Type: FK CONSTRAINT; Schema: hotel; Owner: postgres
--

ALTER TABLE ONLY hotel.payments
    ADD CONSTRAINT payments_booking_id_fkey FOREIGN KEY (booking_id) REFERENCES hotel.bookings(booking_id);


--
-- TOC entry 4904 (class 2606 OID 16705)
-- Name: rooms rooms_room_type_id_fkey; Type: FK CONSTRAINT; Schema: hotel; Owner: postgres
--

ALTER TABLE ONLY hotel.rooms
    ADD CONSTRAINT rooms_room_type_id_fkey FOREIGN KEY (room_type_id) REFERENCES hotel.roomtypes(room_type_id);


-- Completed on 2025-11-01 23:22:30

--
-- PostgreSQL database dump complete
--

\unrestrict buxuda1oRJMGjcXWKLJ6rf7O65Pnv9Dx0GyhFkrv6KQPDxjeV0tLdJuuWLmPpDT

