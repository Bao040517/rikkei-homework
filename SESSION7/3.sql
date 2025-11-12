--
-- PostgreSQL database dump
--

\restrict TDNYVrJXlQm8bMVm0NcPEB7TYW7wIdzYHTGqHCfj4gbtlQAcCfCc1ABOftFHxKD

-- Dumped from database version 18.0
-- Dumped by pg_dump version 18.0

-- Started on 2025-11-12 10:33:38

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
-- TOC entry 9 (class 2615 OID 18285)
-- Name: social; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA social;


ALTER SCHEMA social OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 231 (class 1259 OID 18310)
-- Name: post; Type: TABLE; Schema: social; Owner: postgres
--

CREATE TABLE social.post (
    post_id integer NOT NULL,
    user_id integer NOT NULL,
    content text,
    tags text[],
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    is_public boolean DEFAULT true
);


ALTER TABLE social.post OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 18322)
-- Name: post_like; Type: TABLE; Schema: social; Owner: postgres
--

CREATE TABLE social.post_like (
    user_id integer NOT NULL,
    post_id integer NOT NULL,
    liked_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE social.post_like OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 18309)
-- Name: post_post_id_seq; Type: SEQUENCE; Schema: social; Owner: postgres
--

CREATE SEQUENCE social.post_post_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE social.post_post_id_seq OWNER TO postgres;

--
-- TOC entry 5095 (class 0 OID 0)
-- Dependencies: 230
-- Name: post_post_id_seq; Type: SEQUENCE OWNED BY; Schema: social; Owner: postgres
--

ALTER SEQUENCE social.post_post_id_seq OWNED BY social.post.post_id;


--
-- TOC entry 4926 (class 2604 OID 18313)
-- Name: post post_id; Type: DEFAULT; Schema: social; Owner: postgres
--

ALTER TABLE ONLY social.post ALTER COLUMN post_id SET DEFAULT nextval('social.post_post_id_seq'::regclass);


--
-- TOC entry 5088 (class 0 OID 18310)
-- Dependencies: 231
-- Data for Name: post; Type: TABLE DATA; Schema: social; Owner: postgres
--

COPY social.post (post_id, user_id, content, tags, created_at, is_public) FROM stdin;
1	275	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-04 08:33:43.361389	t
2	423	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-09 13:21:27.249713	t
3	810	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-29 21:18:56.433449	t
4	930	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-08 05:04:55.041713	t
5	721	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-16 13:21:42.078025	t
6	975	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-17 00:47:03.217326	t
7	93	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-05 09:16:12.961121	f
8	958	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-04 14:30:36.571681	t
9	100	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-09 14:28:23.811921	t
10	653	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-20 08:33:37.520487	f
11	372	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-13 02:00:57.121961	t
12	932	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-16 09:54:33.571236	t
13	290	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-11-11 21:58:00.941969	f
14	834	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-19 11:21:35.347236	t
15	899	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-19 20:04:32.891018	t
16	936	Âm nhạc và cuộc sống	{review,coffee}	2025-11-02 12:20:41.627938	f
17	396	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-12 15:55:49.119551	t
18	664	Học lập trình Python cơ bản	{tech,python}	2025-10-09 02:31:33.991301	t
19	273	Khám phá du lịch Việt Nam	{tech,python}	2025-10-15 17:02:14.69428	t
20	760	Khám phá du lịch Việt Nam	{tech,python}	2025-10-15 21:21:38.134161	t
21	171	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-08 08:34:53.843692	t
22	299	Khám phá du lịch Việt Nam	{tech,python}	2025-10-05 23:15:49.615398	t
23	326	Khám phá du lịch Việt Nam	{general}	2025-10-01 23:37:00.698428	t
24	827	Học lập trình Python cơ bản	{food,vietnam}	2025-10-09 23:12:47.075713	f
25	95	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-27 12:43:29.19353	t
26	529	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-11-06 22:53:54.245444	t
27	944	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-28 20:20:26.55036	t
28	214	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-07 17:05:32.263726	t
29	457	Khám phá du lịch Việt Nam	{general}	2025-10-31 03:13:48.031295	f
30	332	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-11-08 15:15:05.841872	t
31	893	Review các quán cà phê nổi tiếng	{tech,python}	2025-11-07 22:14:58.812575	t
32	860	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-05 19:09:18.336141	t
33	566	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-26 21:23:21.129447	t
34	667	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-08 02:19:03.851138	t
35	40	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-11-04 19:32:53.351292	t
36	508	Review các quán cà phê nổi tiếng	{review,coffee}	2025-11-07 23:40:18.721866	t
37	248	Âm nhạc và cuộc sống	{review,coffee}	2025-10-25 01:38:24.792909	t
38	459	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-13 12:56:55.140542	t
39	990	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-11-09 01:26:47.43138	t
40	647	Giới thiệu công nghệ AI hiện đại	{general}	2025-09-28 10:33:11.902814	f
41	229	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-27 13:34:46.80364	t
42	33	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-09 01:54:46.201291	t
43	763	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-08 06:43:35.333722	t
44	507	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-20 12:52:37.187611	t
45	718	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-08 05:51:52.4392	t
46	685	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-29 00:24:46.379129	t
47	996	Giới thiệu công nghệ AI hiện đại	{general}	2025-10-18 21:10:25.541209	t
48	381	Âm nhạc và cuộc sống	{tech,python}	2025-10-22 21:41:39.420843	t
49	706	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-03 08:45:49.942542	t
50	55	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-18 11:58:42.982825	f
51	466	Khám phá du lịch Việt Nam	{tech,python}	2025-10-28 04:41:05.544932	t
52	985	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-10-07 08:32:31.623149	t
53	292	Âm nhạc và cuộc sống	{review,coffee}	2025-10-03 08:11:06.368556	t
54	235	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-01 07:38:21.322711	t
55	616	Học lập trình Python cơ bản	{review,coffee}	2025-11-11 05:18:36.679557	t
56	428	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-03 03:57:04.297357	f
57	531	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-11-01 07:40:56.159717	t
58	661	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-17 23:22:52.20946	t
59	486	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-11-08 21:51:58.876527	t
60	271	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-07 03:25:30.665197	f
61	298	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-08 11:35:15.847857	t
62	437	Âm nhạc và cuộc sống	{review,coffee}	2025-11-10 00:18:27.508798	t
63	918	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-30 03:58:26.569987	f
64	99	Review các quán cà phê nổi tiếng	{general}	2025-11-09 12:34:49.67392	t
65	220	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-10-02 14:43:22.59143	t
66	267	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-09-29 23:27:28.673285	t
67	296	Khám phá du lịch Việt Nam	{food,vietnam}	2025-09-29 06:45:32.834413	t
68	853	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-11-06 10:00:27.315301	t
69	287	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-17 07:37:08.320878	f
70	439	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-10-09 06:13:58.639565	t
71	233	Học lập trình Python cơ bản	{ai,machinelearning}	2025-09-29 14:09:01.722948	t
72	409	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-03 01:14:26.994596	t
73	997	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-09-29 10:27:51.108706	t
74	168	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-22 01:12:12.433203	t
75	309	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-11-02 19:23:30.831047	t
76	12	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-13 10:01:11.817098	t
77	426	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-25 19:56:46.616253	t
78	117	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-19 15:07:33.638313	f
79	165	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-12 01:33:16.095595	t
80	814	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-14 14:27:34.005959	t
81	55	Học lập trình Python cơ bản	{general}	2025-11-11 11:19:39.386224	f
82	562	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-11-06 09:17:03.024691	t
83	697	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-11-10 12:51:55.037484	f
84	251	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-17 08:07:35.753416	f
85	70	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-31 10:08:50.79477	t
86	298	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-11-11 07:27:06.891675	f
87	933	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-23 05:13:14.138345	t
88	359	Âm nhạc và cuộc sống	{travel,vietnam}	2025-10-30 09:34:38.136454	t
89	939	Học lập trình Python cơ bản	{tech,python}	2025-10-04 08:56:12.23602	t
90	262	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-11-10 13:22:54.322016	t
91	615	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-10-21 06:25:44.838543	t
92	548	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-26 00:36:20.642731	f
93	503	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-05 21:00:00.065844	t
94	610	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-08 21:41:50.946986	t
95	48	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-15 05:22:29.337969	t
96	264	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-10 16:27:51.371947	t
97	592	Âm nhạc và cuộc sống	{tech,python}	2025-10-31 17:57:01.294218	t
98	344	Âm nhạc và cuộc sống	{general}	2025-09-30 16:11:27.597871	t
99	960	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-01 21:52:47.172246	t
100	39	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-10-04 21:58:16.198545	t
101	140	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-15 07:23:12.257105	t
102	818	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-23 18:25:37.827663	t
103	455	Khám phá du lịch Việt Nam	{food,vietnam}	2025-11-02 07:01:30.949564	t
104	200	Âm nhạc và cuộc sống	{tech,python}	2025-10-21 15:20:38.452059	f
105	666	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-07 09:29:53.441734	t
106	626	Học lập trình Python cơ bản	{travel,vietnam}	2025-10-12 04:24:01.596866	t
107	772	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-04 17:48:43.290757	t
108	675	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-09-30 00:41:57.317735	f
109	301	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-20 23:19:37.465687	t
110	790	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-01 04:05:33.373007	t
111	343	Review các quán cà phê nổi tiếng	{review,coffee}	2025-11-06 04:52:46.095095	t
112	941	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-29 08:17:38.047094	t
113	808	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-30 09:46:49.954923	t
114	422	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-03 18:08:29.739399	t
115	766	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-07 08:15:29.382715	t
116	152	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-11-06 19:33:00.761309	t
117	516	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-15 18:43:04.983699	t
118	291	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-09 11:21:07.871026	t
119	506	Khám phá du lịch Việt Nam	{travel,vietnam}	2025-10-19 06:50:29.488885	t
120	879	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-27 19:03:33.644741	t
121	843	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-19 14:05:02.698276	t
122	663	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-10 22:33:27.051845	f
123	145	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-18 00:21:42.464139	f
124	681	Âm nhạc và cuộc sống	{review,coffee}	2025-11-06 08:50:40.785857	t
125	625	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-10-25 20:12:07.010501	t
126	737	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-11-07 21:48:17.778873	t
127	763	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-17 06:11:46.931846	t
128	836	Review các quán cà phê nổi tiếng	{tech,python}	2025-11-08 03:49:01.501306	f
129	276	Âm nhạc và cuộc sống	{review,coffee}	2025-10-06 22:41:59.899433	t
130	241	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-09-29 04:03:44.168006	f
131	520	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-29 16:31:45.97508	t
132	462	Học lập trình Python cơ bản	{ai,machinelearning}	2025-11-11 05:32:27.700959	t
133	206	Giới thiệu công nghệ AI hiện đại	{general}	2025-10-25 20:20:26.663287	t
134	838	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-28 06:07:26.426655	t
135	513	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-27 15:28:46.32528	t
136	473	Khám phá du lịch Việt Nam	{food,vietnam}	2025-10-23 04:08:27.937082	t
137	159	Học lập trình Python cơ bản	{review,coffee}	2025-10-06 07:36:25.193956	t
138	204	Khám phá du lịch Việt Nam	{tech,python}	2025-10-01 00:55:00.390009	t
139	829	Học lập trình Python cơ bản	{travel,vietnam}	2025-11-02 09:00:50.983998	t
140	887	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-09-29 01:34:45.882767	t
141	486	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-03 19:57:20.539652	t
142	613	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-10-07 08:06:52.49087	t
143	979	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-06 06:03:40.835919	t
144	725	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-15 21:52:04.814284	f
145	835	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-30 11:01:36.662181	t
146	199	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-09-30 17:00:49.099663	t
147	805	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-10 23:45:25.199794	t
148	783	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-09-30 14:59:46.465439	t
149	990	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-18 07:11:53.323025	t
150	285	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-07 02:57:36.32534	t
151	816	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-23 17:53:31.878791	t
152	523	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-19 02:56:22.095544	f
153	255	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-17 15:02:51.855302	t
154	790	Học lập trình Python cơ bản	{review,coffee}	2025-10-10 10:59:10.122926	t
155	621	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-04 21:03:43.450572	t
156	723	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-24 02:05:14.449313	t
157	197	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-14 12:53:06.929229	t
158	391	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-16 16:20:30.611666	t
159	779	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-19 10:09:12.14759	t
160	611	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-11-09 23:28:21.617946	t
161	847	Học lập trình Python cơ bản	{review,coffee}	2025-11-10 18:21:27.669766	t
162	718	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-22 23:20:22.947204	t
163	4	Âm nhạc và cuộc sống	{review,coffee}	2025-10-06 19:18:46.490401	t
164	995	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-24 14:57:25.87334	t
165	378	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-01 09:55:11.862862	t
166	349	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-15 09:32:01.819504	t
167	940	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-11-05 10:21:37.77449	t
168	118	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-13 06:54:09.798622	f
169	933	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-23 01:42:43.597592	t
170	826	Review các quán cà phê nổi tiếng	{review,coffee}	2025-11-08 19:18:32.299147	t
171	514	Âm nhạc và cuộc sống	{tech,python}	2025-10-15 06:28:51.767876	t
172	893	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-10-07 00:00:30.364392	t
173	790	Giới thiệu công nghệ AI hiện đại	{general}	2025-10-21 19:13:29.869671	t
174	432	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-18 10:18:33.199025	f
175	556	Học lập trình Python cơ bản	{general}	2025-10-12 04:21:16.854975	t
176	586	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-09 19:24:30.247121	t
177	420	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-11-08 17:13:09.770982	t
178	784	Học lập trình Python cơ bản	{review,coffee}	2025-10-29 12:41:08.674494	t
179	500	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-25 05:43:06.785717	t
180	223	Học lập trình Python cơ bản	{food,vietnam}	2025-10-03 19:50:14.98982	t
181	371	Học lập trình Python cơ bản	{tech,python}	2025-10-27 10:32:59.462335	t
182	638	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-08 15:32:50.301099	t
183	713	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-09 21:00:36.788195	t
184	81	Học lập trình Python cơ bản	{food,vietnam}	2025-11-03 23:37:41.492345	t
185	997	Học lập trình Python cơ bản	{travel,vietnam}	2025-10-06 12:45:38.674452	t
186	423	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-09-30 12:13:56.454582	t
187	390	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-11-08 01:54:11.150146	t
188	261	Học lập trình Python cơ bản	{food,vietnam}	2025-10-30 16:22:34.491526	t
189	583	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-31 20:05:27.205468	f
190	64	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-15 07:01:55.049416	t
191	72	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-10-07 12:21:21.892125	t
192	927	Âm nhạc và cuộc sống	{travel,vietnam}	2025-10-31 01:01:50.48614	f
193	882	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-21 12:14:14.390414	t
194	888	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-02 05:34:19.396923	t
195	246	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-27 09:03:00.347578	t
196	909	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-06 17:51:52.372326	t
197	107	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-22 09:11:54.876277	t
198	706	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-27 06:13:49.932025	t
199	265	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-07 13:00:10.68251	t
200	332	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-18 03:31:21.097923	t
201	593	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-09 22:11:27.24001	t
202	684	Âm nhạc và cuộc sống	{tech,python}	2025-10-17 23:31:42.427179	t
203	293	Âm nhạc và cuộc sống	{review,coffee}	2025-11-12 02:35:51.791281	f
204	423	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-13 15:35:02.650157	t
205	429	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-03 02:58:07.469243	t
206	478	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-11-05 18:19:34.569512	t
207	140	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-11-10 15:28:48.684912	t
208	798	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-12 09:51:11.058492	t
209	365	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-10-25 17:26:56.061062	t
210	623	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-29 03:11:04.709814	t
211	38	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-13 13:02:16.535336	t
212	751	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-25 12:51:57.716602	t
213	431	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-01 02:23:37.680509	t
214	283	Review các quán cà phê nổi tiếng	{review,coffee}	2025-11-01 12:24:52.246627	t
215	519	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-29 04:50:02.76931	t
216	922	Review các quán cà phê nổi tiếng	{tech,python}	2025-11-03 19:36:26.119435	t
217	924	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-09-28 22:29:34.028964	t
218	838	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-14 23:35:30.446671	t
219	309	Thể thao và sức khỏe mỗi ngày	{general}	2025-11-08 09:01:41.040178	t
220	950	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-08 21:31:57.593146	t
221	43	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-17 14:16:43.448249	t
222	815	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-13 10:05:39.185957	f
223	218	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-10-02 05:29:54.284253	t
224	290	Học lập trình Python cơ bản	{review,coffee}	2025-10-23 14:47:13.624883	t
225	944	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-20 02:18:50.498214	t
226	442	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-02 16:06:00.723394	t
227	769	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-17 16:52:18.992353	t
228	642	Học lập trình Python cơ bản	{food,vietnam}	2025-10-26 23:55:59.657115	t
229	810	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-08 13:32:30.075511	t
230	331	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-20 17:44:21.19922	t
231	613	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-10-20 13:42:38.116476	t
232	41	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-14 15:04:35.393396	f
233	523	Học lập trình Python cơ bản	{tech,python}	2025-10-17 08:39:59.087504	t
234	594	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-06 06:15:38.170262	t
235	976	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-10-20 18:52:53.762925	t
236	8	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-29 00:29:10.506866	t
237	675	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-11-06 05:34:41.162384	t
238	414	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-22 04:08:35.093258	f
239	823	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-20 23:56:41.054871	t
240	51	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-09 14:07:41.757209	t
241	958	Học lập trình Python cơ bản	{tech,python}	2025-11-03 18:30:07.230992	t
242	1000	Âm nhạc và cuộc sống	{review,coffee}	2025-10-10 14:28:05.074941	t
243	254	Khám phá du lịch Việt Nam	{food,vietnam}	2025-10-27 04:59:57.328651	t
244	486	Học lập trình Python cơ bản	{tech,python}	2025-10-13 09:33:17.792293	t
245	39	Âm nhạc và cuộc sống	{review,coffee}	2025-10-07 20:23:32.40856	t
246	144	Học lập trình Python cơ bản	{review,coffee}	2025-10-21 14:59:21.573319	t
247	880	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-11-11 01:20:44.556592	t
248	220	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-10-09 12:29:54.656697	f
249	93	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-03 22:25:27.385677	f
250	472	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-09-29 22:45:33.723445	t
251	918	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-11-03 19:36:49.929403	t
252	270	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-25 10:48:25.475264	t
253	285	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-10-12 17:17:56.72088	t
254	806	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-31 17:42:01.363993	t
255	376	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-11 08:47:50.941413	t
256	689	Học lập trình Python cơ bản	{general}	2025-10-09 15:06:23.486449	t
257	719	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-02 11:26:40.518833	t
258	145	Khám phá du lịch Việt Nam	{tech,python}	2025-10-13 03:16:56.864071	t
259	167	Giới thiệu công nghệ AI hiện đại	{general}	2025-10-20 11:17:46.805907	t
260	952	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-26 03:54:21.446476	t
261	772	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-23 22:43:29.625281	t
262	760	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-06 13:13:47.696643	t
263	130	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-05 17:09:35.514479	t
264	292	Giới thiệu công nghệ AI hiện đại	{general}	2025-10-17 01:41:10.913869	t
265	564	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-26 01:06:00.350722	t
266	935	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-14 14:18:31.26006	f
267	22	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-29 22:06:45.861264	t
268	263	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-11-11 11:31:41.577217	t
269	79	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-20 00:27:52.43865	f
270	70	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-29 14:18:26.35408	t
271	470	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-10-22 14:48:36.980758	t
272	652	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-11-04 08:57:32.36205	t
273	872	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-24 02:03:04.336264	f
274	51	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-25 08:10:01.719178	t
275	570	Âm nhạc và cuộc sống	{review,coffee}	2025-10-21 21:51:19.666257	t
276	558	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-31 00:35:40.759512	f
277	389	Âm nhạc và cuộc sống	{tech,python}	2025-11-04 05:52:45.841284	t
278	343	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-14 18:53:17.047927	t
279	213	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-21 10:57:03.750151	t
280	979	Học lập trình Python cơ bản	{review,coffee}	2025-09-29 04:32:39.437034	t
281	26	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-01 08:10:44.935321	t
282	997	Học lập trình Python cơ bản	{review,coffee}	2025-10-01 08:01:42.860905	t
283	927	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-09-29 22:17:01.253075	t
284	207	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-11-06 18:28:27.540362	t
285	124	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-05 18:33:08.069018	t
286	63	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-17 20:16:45.147779	t
287	993	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-14 16:33:29.11158	f
288	904	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-10 12:55:53.978042	t
289	15	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-09-29 14:48:26.494379	t
290	950	Review các quán cà phê nổi tiếng	{review,coffee}	2025-11-05 20:01:17.120548	t
291	858	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-22 08:24:17.041013	f
292	936	Khám phá du lịch Việt Nam	{food,vietnam}	2025-10-04 01:05:00.767189	t
293	474	Học lập trình Python cơ bản	{tech,python}	2025-11-06 05:32:00.472061	t
294	680	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-11-05 22:41:17.7014	t
295	830	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-18 20:43:25.469497	t
296	542	Học lập trình Python cơ bản	{food,vietnam}	2025-11-08 05:12:50.36347	f
297	44	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-11-03 19:07:10.151389	t
298	491	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-30 00:15:40.41587	t
299	276	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-11-09 20:05:01.651399	t
300	887	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-12 13:30:26.093007	t
301	776	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-23 18:14:31.489407	f
302	453	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-18 03:05:16.899162	t
303	485	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-11-10 15:19:28.642828	t
304	646	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-04 15:48:23.038875	t
305	159	Giới thiệu công nghệ AI hiện đại	{general}	2025-10-08 19:23:16.902044	t
306	741	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-13 12:14:16.323772	t
307	695	Học lập trình Python cơ bản	{travel,vietnam}	2025-11-12 05:14:55.412952	t
308	839	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-11-10 12:06:04.308309	t
309	808	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-11 04:58:51.251522	t
310	48	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-04 18:15:31.779327	t
311	21	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-31 02:39:32.327451	t
312	525	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-09 10:34:07.614137	t
313	683	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-22 09:50:37.907357	f
314	623	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-14 21:05:50.218953	t
315	710	Âm nhạc và cuộc sống	{general}	2025-10-25 15:38:36.187578	f
316	892	Học lập trình Python cơ bản	{food,vietnam}	2025-10-04 12:43:01.554908	t
317	445	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-11-07 02:58:35.286686	t
318	909	Âm nhạc và cuộc sống	{travel,vietnam}	2025-10-24 22:23:36.530298	f
319	515	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-01 03:28:26.688081	t
320	68	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-16 03:30:56.660335	t
321	737	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-10-20 20:06:13.993304	t
322	1	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-11-01 17:22:22.577895	t
323	347	Học lập trình Python cơ bản	{tech,python}	2025-10-10 15:12:11.800206	t
324	997	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-22 10:47:51.517039	t
325	547	Âm nhạc và cuộc sống	{tech,python}	2025-11-09 02:33:12.163252	t
326	282	Khám phá du lịch Việt Nam	{tech,python}	2025-11-10 02:56:47.463014	t
327	668	Khám phá du lịch Việt Nam	{tech,python}	2025-10-08 01:17:43.431807	f
328	256	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-11-12 07:11:03.58085	t
329	413	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-10-21 18:23:49.436661	t
330	923	Khám phá du lịch Việt Nam	{food,vietnam}	2025-11-08 01:53:52.580023	t
331	62	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-30 23:19:03.851076	t
332	561	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-12 23:34:23.42322	t
333	911	Âm nhạc và cuộc sống	{tech,python}	2025-10-19 23:49:07.98295	t
334	873	Học lập trình Python cơ bản	{food,vietnam}	2025-11-01 07:39:43.47982	t
335	573	Review các quán cà phê nổi tiếng	{tech,python}	2025-11-04 10:30:09.23683	t
336	920	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-03 14:33:36.910173	t
337	287	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-06 03:40:35.507565	t
338	213	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-24 01:33:57.61801	t
339	728	Học lập trình Python cơ bản	{ai,machinelearning}	2025-11-08 03:13:37.960795	t
340	169	Âm nhạc và cuộc sống	{tech,python}	2025-10-19 14:51:53.521553	f
341	669	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-11 10:38:28.847263	t
342	931	Review các quán cà phê nổi tiếng	{tech,python}	2025-11-04 02:09:45.990091	t
343	743	Học lập trình Python cơ bản	{travel,vietnam}	2025-11-05 23:28:05.429285	t
344	98	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-16 18:59:07.792281	t
345	514	Âm nhạc và cuộc sống	{review,coffee}	2025-10-12 16:32:10.005121	t
346	538	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-30 13:39:14.029686	t
347	615	Review các quán cà phê nổi tiếng	{review,coffee}	2025-11-03 06:29:49.387929	t
348	367	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-31 02:54:38.835191	t
638	957	Âm nhạc và cuộc sống	{review,coffee}	2025-10-06 10:00:43.386784	t
349	698	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-25 03:29:07.203338	t
350	225	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-15 20:27:14.297208	t
351	431	Khám phá du lịch Việt Nam	{tech,python}	2025-10-23 18:43:42.55808	t
352	19	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-06 22:25:44.929114	t
353	716	Học lập trình Python cơ bản	{tech,python}	2025-10-01 19:03:41.734785	t
354	950	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-09 13:23:02.759074	t
355	702	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-10-27 19:36:54.235668	t
356	493	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-23 16:39:28.053501	t
357	846	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-15 18:03:14.531818	t
358	27	Khám phá du lịch Việt Nam	{food,vietnam}	2025-10-25 23:35:30.463898	f
359	229	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-09-29 01:41:56.741565	t
360	775	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-31 07:08:20.980083	f
361	327	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-03 07:39:46.182927	f
362	439	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-11-09 04:27:14.293238	t
363	431	Học lập trình Python cơ bản	{review,coffee}	2025-11-01 14:13:19.409447	t
364	933	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-23 21:33:39.670052	t
365	994	Âm nhạc và cuộc sống	{review,coffee}	2025-10-29 18:06:09.397315	f
366	357	Âm nhạc và cuộc sống	{travel,vietnam}	2025-11-09 05:22:19.65761	t
367	229	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-23 19:16:08.626863	t
368	776	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-21 16:22:32.174634	t
369	161	Học lập trình Python cơ bản	{ai,machinelearning}	2025-09-30 10:31:16.098031	t
370	559	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-11-11 13:51:05.418951	f
371	567	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-15 03:04:13.632446	t
372	590	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-10 14:14:28.60086	t
373	256	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-28 06:48:16.622919	t
374	474	Khám phá du lịch Việt Nam	{review,coffee}	2025-11-03 22:16:45.783865	t
375	788	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-27 22:12:52.166235	t
376	682	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-28 00:03:40.902703	t
377	558	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-11-03 04:15:15.515214	t
378	537	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-11-08 01:51:48.556639	t
379	602	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-29 05:43:39.924706	t
380	594	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-09-30 13:25:14.367779	t
381	930	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-16 05:06:02.851809	t
382	751	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-05 06:06:03.147426	t
383	125	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-25 16:04:31.562019	t
384	499	Âm nhạc và cuộc sống	{review,coffee}	2025-11-12 00:21:19.114007	t
385	23	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-11-02 19:44:01.353668	t
386	905	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-11-02 06:54:54.642517	t
387	68	Học lập trình Python cơ bản	{travel,vietnam}	2025-10-29 13:38:23.513938	f
388	563	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-11-03 06:01:39.753161	t
389	105	Review các quán cà phê nổi tiếng	{general}	2025-10-22 16:42:23.050295	t
390	522	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-11-04 05:30:27.122991	t
391	714	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-11 21:55:48.238786	t
392	440	Âm nhạc và cuộc sống	{review,coffee}	2025-10-30 14:59:19.741367	t
393	953	Học lập trình Python cơ bản	{review,coffee}	2025-10-29 08:52:20.838226	t
394	973	Học lập trình Python cơ bản	{food,vietnam}	2025-10-20 05:51:55.538429	f
395	674	Review các quán cà phê nổi tiếng	{review,coffee}	2025-09-29 13:18:41.211817	t
396	522	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-26 22:25:41.214884	t
397	480	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-11-03 03:30:53.159658	t
398	55	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-11-07 19:34:13.953606	t
399	117	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-30 12:48:20.682456	t
400	448	Khám phá du lịch Việt Nam	{tech,python}	2025-11-03 18:46:32.037474	f
401	956	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-11-10 15:00:28.706597	f
402	390	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-08 19:42:20.963923	t
403	314	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-08 21:18:35.933898	t
404	147	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-10-03 15:31:35.912672	t
405	859	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-16 19:20:55.729597	t
406	404	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-10-03 09:04:49.050592	t
407	311	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-02 04:19:44.359065	t
408	72	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-05 21:50:40.543179	t
409	823	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-19 07:20:15.107462	t
410	622	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-18 22:35:47.388292	t
411	961	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-09-29 01:47:07.707855	t
412	941	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-16 17:20:45.572193	t
413	735	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-23 09:01:33.711096	t
414	761	Học lập trình Python cơ bản	{tech,python}	2025-10-12 18:53:47.293101	t
415	681	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-07 06:42:15.760356	t
416	965	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-11-11 15:24:29.471853	t
417	319	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-06 07:15:37.956791	t
418	715	Âm nhạc và cuộc sống	{tech,python}	2025-11-04 23:26:24.04968	t
419	740	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-12 05:36:36.311066	t
420	54	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-21 06:41:58.445631	t
421	747	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-29 10:57:47.71372	t
422	190	Khám phá du lịch Việt Nam	{food,vietnam}	2025-10-07 19:54:42.723082	t
423	263	Học lập trình Python cơ bản	{travel,vietnam}	2025-10-26 01:51:34.668274	t
424	461	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-11-10 09:23:10.818674	t
425	735	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-06 22:52:14.388588	f
426	432	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-30 11:27:45.245801	t
427	621	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-10-17 19:51:52.895057	f
428	764	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-09-28 17:57:46.587395	t
429	323	Học lập trình Python cơ bản	{travel,vietnam}	2025-10-11 18:31:54.614427	t
430	999	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-01 17:39:19.494969	t
431	378	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-09-29 01:21:23.123662	t
432	409	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-04 16:22:38.850278	f
433	799	Học lập trình Python cơ bản	{ai,machinelearning}	2025-11-08 16:16:16.659678	t
434	746	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-20 00:17:20.67268	t
435	846	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-19 02:58:12.208406	t
436	186	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-12 06:47:19.571387	t
437	538	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-01 23:29:50.697964	t
438	777	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-03 16:42:04.358466	f
439	719	Học lập trình Python cơ bản	{tech,python}	2025-11-12 02:30:38.532091	t
440	250	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-22 20:50:55.925171	f
441	603	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-09-30 22:56:43.376455	t
442	189	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-10 19:40:04.034451	t
443	551	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-04 05:57:32.688618	t
444	448	Review các quán cà phê nổi tiếng	{tech,python}	2025-09-30 21:43:47.156252	t
445	630	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-09-30 14:26:21.428099	t
446	360	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-29 15:55:26.858219	f
447	800	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-12 15:04:14.499839	t
448	731	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-10-13 06:51:07.836168	t
449	575	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-10-06 18:32:09.632983	t
450	68	Học lập trình Python cơ bản	{tech,python}	2025-11-07 21:51:21.816623	t
451	803	Học lập trình Python cơ bản	{tech,python}	2025-11-02 13:08:48.479188	t
452	191	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-24 17:14:57.2297	t
453	450	Học lập trình Python cơ bản	{review,coffee}	2025-10-30 23:13:51.333567	t
454	545	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-11-10 22:51:00.286202	f
455	297	Âm nhạc và cuộc sống	{review,coffee}	2025-11-05 14:37:09.724497	t
456	574	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-09-28 18:36:25.375779	t
457	317	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-04 15:48:00.368362	t
458	293	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-21 04:26:06.430814	t
459	858	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-07 20:03:28.903574	t
460	223	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-10-25 17:42:33.123346	f
461	246	Học lập trình Python cơ bản	{review,coffee}	2025-09-28 15:35:57.620859	f
462	289	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-10-19 08:37:26.756629	t
463	313	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-29 17:50:47.745821	t
464	703	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-11-08 02:55:46.868909	t
465	106	Học lập trình Python cơ bản	{food,vietnam}	2025-11-11 07:47:24.006569	t
466	573	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-15 01:23:59.227298	t
467	390	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-11-10 15:26:48.66372	t
468	713	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-11-04 02:43:51.704507	t
469	729	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-29 12:23:02.789071	t
470	74	Học lập trình Python cơ bản	{ai,machinelearning}	2025-09-29 19:01:41.904213	t
471	255	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-21 05:48:49.026521	t
472	400	Khám phá du lịch Việt Nam	{food,vietnam}	2025-11-11 08:58:45.813411	t
473	284	Âm nhạc và cuộc sống	{food,vietnam}	2025-11-08 07:31:41.183147	t
474	909	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-30 05:41:47.695968	t
475	253	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-16 17:31:40.932736	t
476	623	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-11-12 01:50:32.950977	t
477	234	Học lập trình Python cơ bản	{food,vietnam}	2025-10-24 23:43:06.991191	t
478	960	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-09-30 13:20:06.884324	t
479	942	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-05 23:03:07.238228	t
480	640	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-20 08:07:59.930377	t
481	653	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-10 23:43:00.508442	f
482	889	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-14 08:10:15.400698	f
483	666	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-26 18:00:43.789461	t
484	75	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-25 02:11:49.059156	t
485	808	Học lập trình Python cơ bản	{food,vietnam}	2025-10-08 14:41:49.409563	t
486	108	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-05 13:05:57.829676	t
487	784	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-11-01 08:58:30.352733	t
488	369	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-08 19:17:43.585976	t
489	505	Học lập trình Python cơ bản	{food,vietnam}	2025-11-07 16:30:28.000814	t
490	502	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-10-25 20:34:41.289044	t
491	24	Review các quán cà phê nổi tiếng	{general}	2025-10-11 22:14:10.34294	t
492	907	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-06 23:40:54.563325	t
493	621	Giới thiệu công nghệ AI hiện đại	{general}	2025-10-20 05:09:23.282975	t
494	35	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-11 06:11:50.632561	t
495	69	Học lập trình Python cơ bản	{food,vietnam}	2025-10-03 17:59:13.522581	f
496	42	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-13 15:53:46.294912	t
497	499	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-21 13:04:41.754286	t
498	558	Âm nhạc và cuộc sống	{tech,python}	2025-09-30 21:28:17.688198	f
499	88	Học lập trình Python cơ bản	{travel,vietnam}	2025-10-25 10:58:18.325666	t
500	704	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-23 20:39:00.005466	t
501	28	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-17 16:21:57.731289	t
502	516	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-20 05:27:25.157466	t
503	474	Khám phá du lịch Việt Nam	{food,vietnam}	2025-09-29 15:32:55.575864	t
504	932	Khám phá du lịch Việt Nam	{food,vietnam}	2025-11-04 16:21:14.791261	t
505	833	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-30 22:47:40.650559	t
506	490	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-23 19:14:26.080604	t
507	256	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-03 22:27:40.391999	f
508	217	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-31 16:07:23.514977	t
509	648	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-10-28 11:06:19.298505	t
510	120	Học lập trình Python cơ bản	{tech,python}	2025-10-14 07:02:36.239643	t
511	131	Review các quán cà phê nổi tiếng	{general}	2025-10-12 07:23:26.859841	t
512	627	Khám phá du lịch Việt Nam	{general}	2025-11-11 23:39:36.148525	t
513	62	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-10 01:12:21.669387	t
514	41	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-11-02 10:02:45.614911	t
515	499	Âm nhạc và cuộc sống	{travel,vietnam}	2025-11-12 06:27:34.152624	t
516	513	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-07 08:29:32.810852	t
517	665	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-25 03:24:08.744219	t
518	306	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-11-06 00:28:44.50773	t
519	11	Âm nhạc và cuộc sống	{general}	2025-10-29 12:38:26.961641	t
520	881	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-03 16:45:13.797699	t
521	178	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-12 15:55:57.292985	t
873	367	Khám phá du lịch Việt Nam	{food,vietnam}	2025-11-11 05:51:19.513504	t
522	923	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-30 19:28:46.703392	t
523	422	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-01 15:07:25.340865	t
524	723	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-23 23:36:06.045468	t
525	631	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-11-11 10:44:12.570986	t
526	876	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-01 11:29:38.536576	f
527	119	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-10-25 10:56:49.950986	t
528	794	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-26 17:55:56.670079	t
529	29	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-14 07:55:48.262065	t
530	709	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-02 05:43:47.334406	t
531	852	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-20 21:39:37.938843	t
532	307	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-09-30 18:35:19.171786	t
533	641	Khám phá du lịch Việt Nam	{general}	2025-11-10 05:49:59.158202	t
534	842	Khám phá du lịch Việt Nam	{review,coffee}	2025-11-08 00:18:20.665825	t
535	362	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-07 12:36:00.676752	t
536	803	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-14 23:53:59.135724	t
537	923	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-09-30 19:34:55.482367	t
538	152	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-10 04:19:36.919165	t
539	188	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-11-11 17:20:07.413599	t
540	114	Âm nhạc và cuộc sống	{travel,vietnam}	2025-09-29 22:57:23.838041	t
541	536	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-11-12 06:12:19.702546	f
542	84	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-10 12:46:46.363665	t
543	926	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-12 07:17:53.046033	t
544	458	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-10-03 02:54:03.998321	t
545	97	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-24 18:13:57.130696	t
546	362	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-26 03:25:43.21752	t
547	224	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-29 04:54:33.150192	f
548	298	Âm nhạc và cuộc sống	{food,vietnam}	2025-11-04 21:46:32.700136	t
549	360	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-18 06:13:04.081002	t
550	108	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-26 20:32:26.69572	t
551	214	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-10-19 04:52:13.463101	t
552	280	Học lập trình Python cơ bản	{tech,python}	2025-11-10 21:49:37.889253	t
553	271	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-24 18:22:16.372424	t
554	820	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-07 14:21:36.639664	t
555	287	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-30 09:19:15.956373	f
556	678	Review các quán cà phê nổi tiếng	{general}	2025-11-04 16:35:10.783312	t
557	160	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-24 15:35:55.910223	f
558	330	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-09-28 14:16:15.890897	t
559	405	Học lập trình Python cơ bản	{ai,machinelearning}	2025-11-09 10:54:55.388501	t
560	380	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-23 12:50:25.134411	t
561	122	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-03 19:06:09.323788	t
562	913	Âm nhạc và cuộc sống	{general}	2025-10-09 03:15:31.726301	t
563	349	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-15 20:50:01.866976	f
564	437	Học lập trình Python cơ bản	{travel,vietnam}	2025-10-31 08:35:22.515276	t
565	889	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-19 16:39:32.34191	t
566	199	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-02 16:10:20.116947	t
567	233	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-28 02:30:07.103563	t
568	115	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-11-04 01:29:43.48234	f
569	971	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-24 15:23:50.193996	t
570	297	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-24 10:11:57.00815	t
571	187	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-11-12 01:39:38.438223	t
572	941	Học lập trình Python cơ bản	{general}	2025-10-30 05:29:52.79999	t
573	290	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-17 23:23:34.956111	t
574	725	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-11-03 11:21:55.588689	t
575	352	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-08 14:36:01.765662	t
576	267	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-12 12:41:49.862779	f
577	602	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-27 06:04:36.002241	t
578	681	Review các quán cà phê nổi tiếng	{general}	2025-11-07 10:24:14.792639	t
579	999	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-11-07 20:52:57.091628	f
580	221	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-22 20:53:39.792194	t
581	918	Học lập trình Python cơ bản	{tech,python}	2025-10-06 22:00:16.023422	t
582	729	Review các quán cà phê nổi tiếng	{general}	2025-10-18 05:15:04.881388	t
583	336	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-10-20 23:04:13.544031	t
584	472	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-06 09:38:07.959343	t
585	121	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-25 07:55:17.354589	t
586	762	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-08 12:11:24.306869	t
587	985	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-18 11:30:51.090004	t
588	383	Review các quán cà phê nổi tiếng	{review,coffee}	2025-11-03 00:52:47.425622	t
589	829	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-11-02 11:38:49.20907	t
590	368	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-21 19:02:10.440373	t
591	910	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-09-28 11:57:49.119986	t
592	195	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-05 18:19:03.715799	t
593	605	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-11-02 11:10:13.271365	t
594	475	Học lập trình Python cơ bản	{review,coffee}	2025-11-05 15:25:45.498444	t
595	700	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-17 08:27:01.330588	t
596	907	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-04 18:31:38.744696	t
597	733	Học lập trình Python cơ bản	{tech,python}	2025-10-13 22:08:10.702918	t
598	719	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-11-04 09:32:41.920593	t
599	161	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-01 00:37:53.882443	f
600	191	Học lập trình Python cơ bản	{tech,python}	2025-10-11 02:43:48.359293	t
601	303	Âm nhạc và cuộc sống	{general}	2025-10-03 18:46:45.053398	t
602	749	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-03 15:36:18.209288	f
603	309	Học lập trình Python cơ bản	{review,coffee}	2025-11-10 20:28:03.168422	f
604	490	Khám phá du lịch Việt Nam	{general}	2025-10-12 03:33:55.833465	t
605	698	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-06 10:35:41.332696	t
606	71	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-22 11:10:17.301099	t
607	534	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-01 09:36:28.055032	t
608	890	Âm nhạc và cuộc sống	{general}	2025-10-26 21:54:02.806372	t
609	422	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-11-01 11:51:01.73735	t
610	260	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-09-29 03:56:21.275293	f
611	97	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-06 19:32:46.812617	t
612	51	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-10-09 14:47:19.731779	t
613	390	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-19 07:09:38.369102	t
614	269	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-10-12 09:20:05.220968	t
615	898	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-17 12:12:43.680685	t
616	248	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-07 15:49:04.471015	t
617	506	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-11-03 21:32:21.943568	t
618	66	Học lập trình Python cơ bản	{review,coffee}	2025-11-07 16:05:59.878247	t
619	167	Học lập trình Python cơ bản	{review,coffee}	2025-11-03 04:45:45.5696	f
620	852	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-12 05:34:51.930633	f
621	394	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-11-03 20:43:16.457006	t
622	966	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-07 23:16:36.743069	t
623	165	Âm nhạc và cuộc sống	{review,coffee}	2025-10-12 19:36:14.570127	t
624	644	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-09 19:49:06.307775	t
625	522	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-09 01:45:00.974462	t
626	625	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-25 11:00:42.187782	t
627	230	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-10 23:56:13.677772	t
628	453	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-14 14:15:46.231117	f
629	208	Học lập trình Python cơ bản	{food,vietnam}	2025-10-09 17:49:00.435194	t
630	206	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-29 00:15:10.164312	t
631	894	Học lập trình Python cơ bản	{ai,machinelearning}	2025-09-29 00:03:56.080875	t
632	92	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-04 04:31:58.932472	t
633	801	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-05 00:54:23.957364	t
634	421	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-01 09:11:09.281133	f
635	521	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-08 14:12:12.399925	f
636	559	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-09-30 21:39:19.393705	t
637	491	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-01 07:01:19.797105	t
639	635	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-31 23:03:25.127077	t
640	345	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-10 12:35:31.048133	t
641	606	Âm nhạc và cuộc sống	{review,coffee}	2025-09-29 19:09:13.447526	t
642	278	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-23 14:40:56.119667	f
643	85	Âm nhạc và cuộc sống	{travel,vietnam}	2025-10-14 16:18:07.459999	t
644	520	Giới thiệu công nghệ AI hiện đại	{general}	2025-11-04 02:27:50.163672	t
645	564	Học lập trình Python cơ bản	{tech,python}	2025-11-09 14:02:17.780277	t
646	953	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-11-10 22:51:59.956517	t
647	144	Học lập trình Python cơ bản	{general}	2025-10-13 12:40:42.466176	t
648	340	Học lập trình Python cơ bản	{review,coffee}	2025-10-01 18:29:51.647812	t
649	712	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-09-30 00:40:01.213286	t
650	228	Âm nhạc và cuộc sống	{general}	2025-11-10 14:46:06.150482	t
651	551	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-19 13:13:04.105888	t
652	896	Khám phá du lịch Việt Nam	{food,vietnam}	2025-10-08 05:26:49.43913	t
653	142	Học lập trình Python cơ bản	{ai,machinelearning}	2025-11-10 00:17:48.343396	t
654	723	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-29 10:23:41.808187	f
655	131	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-08 14:07:21.452091	t
656	851	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-19 17:38:46.299444	t
657	739	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-31 22:27:42.858424	t
658	963	Khám phá du lịch Việt Nam	{food,vietnam}	2025-10-25 11:45:46.423395	f
659	963	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-12 08:03:51.383087	t
660	952	Khám phá du lịch Việt Nam	{food,vietnam}	2025-10-07 08:25:59.627618	t
661	832	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-25 02:20:55.168777	t
662	780	Học lập trình Python cơ bản	{general}	2025-10-31 21:00:24.102271	f
663	252	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-11-10 14:39:44.302858	t
664	973	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-25 16:48:31.031468	f
665	777	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-16 00:14:32.707909	f
666	557	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-21 19:47:04.370654	f
667	39	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-10-21 07:12:19.312769	t
668	839	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-11-11 01:00:59.042511	t
669	169	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-09-30 23:45:54.432492	t
670	645	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-16 12:54:43.43317	t
671	41	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-30 02:43:25.459695	t
672	606	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-10-31 23:03:51.587827	t
673	121	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-02 10:31:06.621699	t
674	764	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-11-09 22:36:35.063331	t
675	210	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-21 17:23:05.132057	t
676	561	Review các quán cà phê nổi tiếng	{general}	2025-10-12 14:57:08.008451	t
677	857	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-04 07:04:10.8936	t
678	830	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-06 03:16:43.711297	t
679	730	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-11-01 22:15:24.799095	t
680	171	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-13 20:58:26.628665	t
681	887	Học lập trình Python cơ bản	{food,vietnam}	2025-10-02 03:31:14.234465	t
682	641	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-16 22:07:34.362893	t
683	355	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-30 10:50:19.852193	f
684	792	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-24 10:32:09.018451	t
685	823	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-04 20:08:34.320043	t
686	831	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-23 23:53:24.29106	t
687	764	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-09-29 21:41:22.817575	t
688	67	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-10 04:47:14.201649	t
689	888	Học lập trình Python cơ bản	{review,coffee}	2025-11-10 09:53:04.047925	t
690	146	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-15 18:29:47.422305	t
691	163	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-09-29 05:45:39.873712	t
692	505	Review các quán cà phê nổi tiếng	{general}	2025-11-12 04:27:11.74299	t
693	347	Âm nhạc và cuộc sống	{review,coffee}	2025-10-10 15:30:41.574794	t
694	767	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-11-02 05:39:22.569754	t
695	472	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-26 14:22:42.691314	t
696	399	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-29 16:05:28.929526	t
697	824	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-12 04:11:44.32869	t
698	392	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-23 19:59:41.249225	t
699	770	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-18 14:11:21.283125	t
700	686	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-20 08:44:30.592827	t
701	101	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-02 00:20:47.216461	t
702	646	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-08 07:46:48.39618	f
703	787	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-10 19:25:13.734906	t
704	759	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-10 10:57:19.307925	t
705	360	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-08 18:46:33.865538	f
706	622	Học lập trình Python cơ bản	{tech,python}	2025-10-31 01:50:06.166256	t
707	607	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-11-08 16:18:48.285934	f
708	767	Học lập trình Python cơ bản	{general}	2025-10-09 14:38:59.70055	t
709	47	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-21 03:21:58.920126	t
710	600	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-11-08 14:03:29.955381	t
711	774	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-11-12 01:19:56.437506	t
712	592	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-10-11 20:06:32.662027	f
713	587	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-08 16:33:37.459496	f
714	210	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-20 21:18:48.988648	t
715	664	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-29 04:59:56.239989	t
716	914	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-11-07 14:13:43.982294	t
717	705	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-07 06:07:50.62067	f
718	639	Thể thao và sức khỏe mỗi ngày	{general}	2025-11-10 02:36:04.578108	t
719	778	Giới thiệu công nghệ AI hiện đại	{general}	2025-10-15 22:27:27.19171	t
720	817	Học lập trình Python cơ bản	{general}	2025-10-23 15:06:36.327823	t
721	998	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-09-29 11:05:25.91138	f
722	566	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-30 01:29:01.498636	t
723	370	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-31 10:13:34.395062	t
724	218	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-11-03 02:10:07.155131	t
725	615	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-29 03:21:03.892245	t
726	90	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-16 23:06:42.151935	t
727	237	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-02 14:11:59.503439	t
728	60	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-11-07 23:08:35.668827	t
729	38	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-09 11:35:07.306223	t
730	666	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-10 22:13:06.065662	t
731	747	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-11-05 23:00:20.027506	t
732	716	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-07 09:13:00.466506	t
733	155	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-12 10:18:47.251126	t
734	26	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-19 20:15:51.989629	f
735	214	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-07 19:31:42.248509	t
736	246	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-11-07 09:53:46.564458	t
737	816	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-10-26 06:43:41.715938	f
738	265	Âm nhạc và cuộc sống	{review,coffee}	2025-10-12 06:21:17.403105	t
739	980	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-17 20:52:12.141852	t
740	587	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-11-09 09:21:19.753325	t
741	74	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-04 20:56:00.698665	t
742	807	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-23 09:16:20.445666	t
743	294	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-28 04:56:14.413765	f
744	465	Học lập trình Python cơ bản	{travel,vietnam}	2025-10-06 09:35:03.334551	t
745	431	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-18 08:38:25.190241	t
746	652	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-10 17:57:20.803995	t
747	248	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-10-22 14:38:22.7615	t
748	780	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-14 01:08:21.734257	t
749	394	Âm nhạc và cuộc sống	{general}	2025-10-23 14:38:42.385975	t
750	929	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-16 20:58:21.53165	t
751	287	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-09 19:10:27.497265	t
752	944	Học lập trình Python cơ bản	{tech,python}	2025-10-11 18:33:54.384254	t
753	343	Âm nhạc và cuộc sống	{general}	2025-09-29 22:06:38.855861	t
754	91	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-14 02:59:26.733044	t
755	23	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-11 23:55:34.377392	f
756	577	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-11-10 10:53:02.014232	t
757	602	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-24 17:12:47.292839	t
758	951	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-03 14:07:39.687187	f
759	441	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-11 05:43:23.733305	t
760	808	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-17 18:15:45.537278	t
761	802	Khám phá du lịch Việt Nam	{review,coffee}	2025-11-03 21:07:56.182475	t
762	669	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-03 15:08:59.313525	f
763	340	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-01 12:07:04.471231	t
764	82	Học lập trình Python cơ bản	{travel,vietnam}	2025-11-06 19:08:57.679302	t
765	266	Âm nhạc và cuộc sống	{review,coffee}	2025-10-11 03:02:18.656935	f
766	298	Học lập trình Python cơ bản	{general}	2025-11-02 19:25:12.955851	t
767	918	Học lập trình Python cơ bản	{food,vietnam}	2025-10-08 02:22:50.275879	t
768	527	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-31 14:36:10.565872	t
769	831	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-11-08 21:19:53.493858	t
770	790	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-13 01:27:10.315544	t
771	2	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-06 22:01:46.946927	t
772	566	Học lập trình Python cơ bản	{travel,vietnam}	2025-10-22 21:59:23.964457	t
773	132	Học lập trình Python cơ bản	{review,coffee}	2025-09-29 03:41:43.859264	t
774	710	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-10 04:46:41.296255	t
775	64	Học lập trình Python cơ bản	{food,vietnam}	2025-10-17 21:41:36.572631	t
776	934	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-11-10 23:06:43.198878	t
777	194	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-09-28 20:20:18.590871	t
778	953	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-13 00:19:53.900701	t
779	786	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-11-03 10:06:55.788935	t
780	316	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-10-05 04:30:03.140066	f
781	951	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-11 06:15:01.625232	f
782	838	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-12 01:59:31.194545	t
783	220	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-09-30 08:04:07.72049	t
784	735	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-30 01:59:31.270645	t
785	102	Âm nhạc và cuộc sống	{travel,vietnam}	2025-10-05 22:50:07.575095	t
786	478	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-03 12:22:01.120859	t
787	663	Học lập trình Python cơ bản	{travel,vietnam}	2025-11-11 22:03:09.87231	t
788	928	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-06 00:22:09.275056	t
789	939	Âm nhạc và cuộc sống	{general}	2025-10-15 13:31:54.361819	t
790	969	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-11-12 05:45:16.096368	t
791	208	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-11-04 04:11:13.119312	t
792	708	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-12 09:05:50.391079	t
793	860	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-11-07 20:51:38.25696	t
794	269	Học lập trình Python cơ bản	{review,coffee}	2025-11-10 20:37:49.327217	t
795	628	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-10-19 14:48:02.936783	t
796	427	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-31 22:15:05.623275	t
797	741	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-05 22:48:41.036608	f
798	389	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-18 02:34:59.068938	t
799	890	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-15 05:44:23.620458	t
800	292	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-21 07:48:09.756828	t
801	31	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-01 14:05:11.098789	t
802	704	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-10 22:14:34.384136	t
803	132	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-16 08:16:49.621151	t
804	645	Âm nhạc và cuộc sống	{tech,python}	2025-10-12 07:46:25.741557	t
805	461	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-04 16:15:50.956873	t
806	1	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-11-05 23:16:54.43169	t
807	384	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-10-12 01:26:58.658846	t
808	434	Học lập trình Python cơ bản	{review,coffee}	2025-10-29 13:18:51.461923	t
809	713	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-11-09 04:09:40.116801	t
810	50	Học lập trình Python cơ bản	{food,vietnam}	2025-10-25 08:06:30.884411	t
811	674	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-01 22:11:01.296742	t
812	817	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-30 08:23:52.860837	f
813	184	Âm nhạc và cuộc sống	{review,coffee}	2025-10-31 08:47:26.799291	t
814	616	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-11-05 23:18:53.93758	t
815	227	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-18 22:44:05.643825	t
816	826	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-10-16 13:06:46.796921	t
817	807	Thể thao và sức khỏe mỗi ngày	{general}	2025-11-11 16:50:32.478913	f
818	370	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-18 19:08:40.185395	t
819	218	Âm nhạc và cuộc sống	{general}	2025-10-02 21:41:22.037292	f
820	10	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-09-29 07:01:16.234971	t
821	211	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-01 12:19:42.272325	f
822	909	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-11-02 03:04:09.530713	t
823	370	Thể thao và sức khỏe mỗi ngày	{general}	2025-09-30 22:40:24.187426	t
824	435	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-24 04:14:20.595361	t
825	457	Thể thao và sức khỏe mỗi ngày	{general}	2025-11-04 15:17:14.310051	t
826	78	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-10-25 05:35:51.85732	t
827	311	Âm nhạc và cuộc sống	{food,vietnam}	2025-11-01 10:36:01.078485	t
828	143	Khám phá du lịch Việt Nam	{tech,python}	2025-11-05 17:08:09.974242	f
829	984	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-11 22:16:34.00694	t
830	550	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-06 12:48:40.758804	t
831	808	Âm nhạc và cuộc sống	{tech,python}	2025-09-30 10:51:06.979208	t
832	299	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-09-29 09:50:23.197236	t
833	491	Thể thao và sức khỏe mỗi ngày	{general}	2025-11-12 05:55:45.41507	t
834	758	Khám phá du lịch Việt Nam	{general}	2025-10-31 03:37:51.167415	t
835	866	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-27 13:09:56.070555	t
836	386	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-12 09:26:58.797999	t
837	110	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-11 18:52:06.023299	f
838	210	Thể thao và sức khỏe mỗi ngày	{general}	2025-11-07 10:09:55.834904	t
839	975	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-27 03:13:12.182556	t
840	203	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-07 20:23:05.271155	t
841	802	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-09-29 19:55:06.860672	t
842	335	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-19 20:06:05.797304	t
843	774	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-13 17:36:22.906361	t
844	350	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-01 09:18:24.643576	t
845	4	Review các quán cà phê nổi tiếng	{general}	2025-11-07 06:06:50.496885	t
846	7	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-12 12:06:17.345155	f
847	473	Âm nhạc và cuộc sống	{review,coffee}	2025-10-04 16:20:37.151978	t
848	883	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-11-04 23:19:17.116352	f
849	116	Âm nhạc và cuộc sống	{review,coffee}	2025-11-03 17:45:49.883078	t
850	622	Thể thao và sức khỏe mỗi ngày	{general}	2025-11-06 01:04:59.019923	t
851	76	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-11-02 09:32:50.48532	t
852	925	Học lập trình Python cơ bản	{food,vietnam}	2025-09-29 02:20:01.121308	f
853	55	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-11-10 06:38:51.394504	t
854	165	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-17 16:27:22.660004	t
855	646	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-11-11 05:38:44.337237	t
856	488	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-11 17:33:41.76839	t
857	576	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-09-29 23:22:26.711136	t
858	144	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-24 19:35:14.012562	t
859	361	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-24 05:32:26.194829	t
860	421	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-28 15:42:26.317975	t
861	798	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-02 01:11:09.813496	f
862	924	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-28 14:19:50.50414	t
863	474	Review các quán cà phê nổi tiếng	{general}	2025-10-15 18:08:11.971135	t
864	513	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-04 13:34:14.681079	f
865	739	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-10-14 05:10:37.854143	t
866	60	Học lập trình Python cơ bản	{food,vietnam}	2025-10-11 20:55:28.774273	f
867	66	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-06 05:03:21.184992	t
868	895	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-10-17 08:22:43.373341	t
869	997	Âm nhạc và cuộc sống	{tech,python}	2025-10-21 14:11:55.681217	t
870	88	Âm nhạc và cuộc sống	{general}	2025-11-11 09:43:03.425228	t
871	427	Học lập trình Python cơ bản	{travel,vietnam}	2025-11-02 20:02:04.933277	t
872	961	Âm nhạc và cuộc sống	{review,coffee}	2025-10-01 23:50:07.434514	t
874	588	Âm nhạc và cuộc sống	{travel,vietnam}	2025-10-09 06:10:55.84344	t
875	139	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-11 02:11:41.211031	t
876	13	Âm nhạc và cuộc sống	{travel,vietnam}	2025-11-05 23:18:53.393518	f
877	482	Giới thiệu công nghệ AI hiện đại	{general}	2025-11-05 12:31:46.179908	f
878	266	Khám phá du lịch Việt Nam	{travel,vietnam}	2025-10-10 18:01:02.201754	t
879	949	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-03 22:17:23.218578	t
880	232	Học lập trình Python cơ bản	{review,coffee}	2025-11-01 15:45:51.571368	t
881	165	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-09-29 19:36:38.720789	t
882	917	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-23 07:42:55.237511	t
883	943	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-08 00:25:46.167579	t
884	583	Review các quán cà phê nổi tiếng	{general}	2025-10-08 11:21:57.352007	t
885	41	Âm nhạc và cuộc sống	{general}	2025-10-12 02:54:47.575905	t
886	906	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-05 12:27:20.011121	t
887	722	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-11-08 08:11:48.41864	f
888	742	Khám phá du lịch Việt Nam	{tech,python}	2025-10-09 14:55:21.404681	t
889	460	Âm nhạc và cuộc sống	{travel,vietnam}	2025-10-17 08:59:05.62419	t
890	466	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-15 15:46:24.70804	t
891	85	Review các quán cà phê nổi tiếng	{general}	2025-11-10 08:50:31.619723	f
892	866	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-18 21:34:04.62784	t
893	996	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-20 16:37:57.213835	t
894	744	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-11-11 06:43:58.445071	t
895	682	Review các quán cà phê nổi tiếng	{general}	2025-10-03 07:57:11.700147	t
896	560	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-31 20:33:36.600131	t
897	778	Review các quán cà phê nổi tiếng	{general}	2025-10-15 01:00:21.215417	f
898	115	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-11-04 10:09:43.720049	t
899	521	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-16 18:55:03.383206	t
900	278	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-09 16:06:54.743732	t
901	237	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-11 22:32:45.298816	t
902	236	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-18 07:25:27.730167	f
903	674	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-09 17:07:34.328064	t
904	765	Âm nhạc và cuộc sống	{tech,python}	2025-10-12 12:02:11.20597	t
905	2	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-11-06 05:38:26.471876	t
906	37	Khám phá du lịch Việt Nam	{food,vietnam}	2025-09-29 16:23:20.898905	t
907	657	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-11-05 21:23:54.104934	t
908	136	Âm nhạc và cuộc sống	{general}	2025-10-20 02:20:38.760744	f
909	410	Khám phá du lịch Việt Nam	{travel,vietnam}	2025-10-07 13:35:48.622172	t
910	668	Học lập trình Python cơ bản	{ai,machinelearning}	2025-11-08 17:19:50.382838	t
911	932	Giới thiệu công nghệ AI hiện đại	{general}	2025-10-13 20:56:28.401801	t
912	702	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-10-18 17:12:05.58896	t
913	695	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-11-12 02:17:56.899569	f
914	341	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-14 12:10:12.57491	t
915	779	Khám phá du lịch Việt Nam	{food,vietnam}	2025-11-05 08:32:46.254598	f
916	117	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-05 21:08:47.199298	t
917	184	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-04 06:48:38.863065	t
918	97	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-26 01:15:39.971257	f
919	379	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-10 16:30:37.693068	t
920	712	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-11-01 16:39:41.031705	t
921	946	Âm nhạc và cuộc sống	{travel,vietnam}	2025-10-01 12:37:42.459856	f
922	493	Giới thiệu công nghệ AI hiện đại	{general}	2025-10-21 08:18:13.262705	t
923	263	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-11-12 02:54:08.827719	f
924	921	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-11-07 12:54:46.162578	t
925	510	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-07 17:57:31.785117	t
926	950	Khám phá du lịch Việt Nam	{review,coffee}	2025-11-04 07:40:49.205275	f
927	810	Học lập trình Python cơ bản	{food,vietnam}	2025-10-18 23:40:14.941636	t
928	977	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-09-28 21:09:54.951266	f
929	800	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-13 15:43:37.297229	t
930	577	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-11-05 09:40:16.91624	t
931	259	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-11 14:43:00.775098	t
932	581	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-01 11:23:03.567182	f
933	540	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-05 05:18:40.374231	t
934	109	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-01 09:15:03.205522	t
935	287	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-24 18:50:23.283488	t
936	41	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-29 01:41:23.565857	f
937	270	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-12 04:45:39.193843	t
938	93	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-09-30 23:50:42.562527	t
939	652	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-22 05:19:05.027426	f
940	957	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-27 22:39:59.737451	t
941	518	Review các quán cà phê nổi tiếng	{tech,python}	2025-11-03 01:10:53.153792	t
942	791	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-23 21:01:49.432656	t
943	204	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-24 16:06:05.466411	t
944	76	Âm nhạc và cuộc sống	{tech,python}	2025-09-28 16:18:04.866545	t
945	116	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-09-28 10:49:52.994418	t
946	568	Thể thao và sức khỏe mỗi ngày	{general}	2025-11-10 04:02:47.868598	f
947	593	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-09-29 04:36:35.889089	t
948	334	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-05 11:19:55.642111	t
949	234	Học lập trình Python cơ bản	{food,vietnam}	2025-11-04 02:45:04.823874	t
950	895	Âm nhạc và cuộc sống	{review,coffee}	2025-10-11 11:44:01.093848	t
951	606	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-11-06 21:38:00.782686	t
952	875	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-25 13:37:37.327218	f
953	3	Học lập trình Python cơ bản	{food,vietnam}	2025-10-28 06:52:51.582414	t
954	884	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-11-10 05:08:09.363783	t
955	954	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-25 08:41:26.055418	t
956	362	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-11-04 04:30:44.897416	t
957	266	Học lập trình Python cơ bản	{food,vietnam}	2025-10-18 03:52:37.455039	t
958	787	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-11-07 15:32:24.701465	t
959	515	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-01 20:37:12.940941	t
960	398	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-11-01 04:38:18.592684	t
961	351	Âm nhạc và cuộc sống	{review,coffee}	2025-11-01 09:39:26.882887	t
962	581	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-31 20:40:50.618861	t
963	27	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-05 09:43:30.128475	t
964	739	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-11-10 01:10:40.278589	t
965	379	Review các quán cà phê nổi tiếng	{general}	2025-09-30 03:19:02.237923	f
966	197	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-14 17:34:04.631531	f
967	262	Review các quán cà phê nổi tiếng	{general}	2025-10-18 19:57:41.654721	f
968	599	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-10-27 11:39:59.909073	t
969	243	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-11-04 12:56:23.370019	t
970	380	Học lập trình Python cơ bản	{review,coffee}	2025-11-05 13:46:44.297587	t
971	132	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-02 02:18:18.049108	t
972	159	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-29 12:27:46.037232	t
973	377	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-04 05:09:45.901653	t
974	549	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-10-07 04:25:54.80321	t
975	663	Học lập trình Python cơ bản	{tech,python}	2025-10-30 18:16:53.826687	t
976	828	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-30 19:31:00.937584	t
977	503	Âm nhạc và cuộc sống	{travel,vietnam}	2025-10-10 07:12:02.280052	t
978	603	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-10-27 13:02:27.678475	t
979	928	Âm nhạc và cuộc sống	{tech,python}	2025-11-07 04:58:56.167896	t
980	826	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-02 16:41:14.871384	t
981	851	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-25 10:06:58.389267	t
982	272	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-11-08 15:32:22.600937	t
983	342	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-01 16:28:52.188594	t
984	914	Khám phá du lịch Việt Nam	{travel,vietnam}	2025-10-10 00:35:05.568907	t
985	157	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-09-29 09:37:05.642292	t
986	243	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-20 15:27:52.755239	t
987	568	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-27 06:15:09.025291	t
988	704	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-25 02:36:25.347555	t
989	0	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-11-10 04:43:49.784263	t
990	668	Âm nhạc và cuộc sống	{general}	2025-10-19 12:16:08.222712	t
991	294	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-31 11:52:31.185028	t
992	133	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-11-02 12:05:09.603179	t
993	529	Học lập trình Python cơ bản	{travel,vietnam}	2025-10-20 15:03:27.840329	t
994	190	Khám phá du lịch Việt Nam	{travel,vietnam}	2025-10-26 23:43:50.482245	t
995	431	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-31 20:31:48.262878	t
996	445	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-07 23:42:43.037291	t
997	757	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-14 15:11:34.199969	t
998	480	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-11-09 14:42:18.09499	t
999	120	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-10-19 05:37:00.593741	t
1000	542	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-17 02:23:50.689008	t
1001	846	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-19 11:10:02.171808	t
1002	210	Khám phá du lịch Việt Nam	{general}	2025-11-05 02:53:36.017525	t
1003	980	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-22 22:04:35.424833	t
1004	793	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-11-05 13:06:44.00629	t
1005	928	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-26 07:37:45.24041	t
1006	270	Học lập trình Python cơ bản	{tech,python}	2025-10-25 20:19:31.172275	t
1007	101	Học lập trình Python cơ bản	{tech,python}	2025-10-30 12:26:07.358364	f
1008	790	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-11-10 02:10:55.369682	f
1009	473	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-19 09:38:14.830786	t
1010	358	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-20 07:33:04.518087	f
1011	991	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-05 16:31:04.751462	t
1012	1	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-06 15:58:04.987964	f
1013	84	Review các quán cà phê nổi tiếng	{general}	2025-11-04 00:50:11.796339	f
1014	235	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-19 04:42:23.250034	t
1015	403	Khám phá du lịch Việt Nam	{food,vietnam}	2025-10-04 12:32:21.352191	t
1016	478	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-05 18:11:06.761031	f
1017	209	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-11-02 09:33:56.509464	t
1018	404	Học lập trình Python cơ bản	{general}	2025-11-06 15:48:50.272566	t
1019	431	Âm nhạc và cuộc sống	{tech,python}	2025-10-26 00:09:01.376071	f
1020	782	Giới thiệu công nghệ AI hiện đại	{general}	2025-11-06 23:50:13.524317	f
1021	684	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-09-29 19:52:13.277865	t
1022	98	Học lập trình Python cơ bản	{tech,python}	2025-10-20 09:56:48.356598	t
1023	588	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-26 01:01:07.38603	t
1024	992	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-09-30 14:16:17.224195	t
1025	494	Khám phá du lịch Việt Nam	{review,coffee}	2025-11-03 09:38:02.813238	t
1026	596	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-03 10:21:42.022574	f
1027	206	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-01 05:32:30.363619	t
1028	473	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-10-07 23:34:38.598113	f
1029	912	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-13 13:34:10.07077	t
1030	396	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-11-02 03:22:53.260895	t
1031	106	Học lập trình Python cơ bản	{ai,machinelearning}	2025-09-29 09:03:17.504796	t
1032	31	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-14 15:08:08.657412	t
1033	868	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-20 07:44:26.392478	t
1034	793	Học lập trình Python cơ bản	{review,coffee}	2025-09-30 11:54:16.002209	f
1035	630	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-26 01:00:12.921232	t
1036	509	Âm nhạc và cuộc sống	{tech,python}	2025-10-06 23:50:19.792423	t
1037	836	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-17 12:15:33.164665	t
1038	912	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-14 03:20:12.499547	t
1039	983	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-02 04:28:03.038702	t
1040	891	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-11-07 00:40:16.378473	t
1041	688	Học lập trình Python cơ bản	{review,coffee}	2025-10-23 10:49:02.137224	f
1042	995	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-31 14:09:59.073122	t
1043	43	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-06 07:53:43.53038	t
1044	82	Review các quán cà phê nổi tiếng	{review,coffee}	2025-11-06 14:51:00.167019	t
1045	948	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-18 02:06:29.605176	f
1046	715	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-07 01:17:36.758375	t
1047	375	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-09 18:41:23.362079	t
1048	43	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-20 01:13:13.17867	t
1049	492	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-10 21:18:58.112055	t
1050	485	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-10 17:25:46.059935	t
1051	250	Khám phá du lịch Việt Nam	{general}	2025-10-26 07:38:43.417024	t
1052	333	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-08 19:51:50.7316	t
1053	673	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-31 00:30:21.001323	t
1054	945	Học lập trình Python cơ bản	{food,vietnam}	2025-11-05 13:11:30.764967	t
1055	868	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-03 17:03:36.038259	f
1056	59	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-21 08:02:58.742508	t
1057	432	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-11-02 04:10:25.209361	t
1058	507	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-11 16:38:35.413358	t
1059	856	Học lập trình Python cơ bản	{food,vietnam}	2025-11-02 16:49:45.010543	f
1060	117	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-07 19:30:14.585892	t
1061	534	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-18 08:55:38.095498	t
1062	727	Review các quán cà phê nổi tiếng	{tech,python}	2025-11-12 04:00:14.328246	t
1063	566	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-11-11 09:38:16.553945	t
1064	823	Khám phá du lịch Việt Nam	{general}	2025-10-31 00:01:15.073317	f
1065	724	Âm nhạc và cuộc sống	{travel,vietnam}	2025-10-03 15:12:22.578717	t
1066	754	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-09-29 00:51:42.398558	t
1067	315	Học lập trình Python cơ bản	{tech,python}	2025-10-22 20:19:30.325164	f
1068	13	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-06 21:11:57.10979	t
1069	178	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-02 14:14:39.411813	t
1070	905	Review các quán cà phê nổi tiếng	{tech,python}	2025-11-11 15:47:17.258102	t
1071	43	Âm nhạc và cuộc sống	{review,coffee}	2025-09-30 00:07:03.093605	t
1072	215	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-29 23:40:03.441499	f
1073	765	Âm nhạc và cuộc sống	{review,coffee}	2025-10-15 07:02:49.442267	f
1074	811	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-09-29 19:57:07.42511	t
1075	373	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-04 13:33:13.381067	t
1076	467	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-05 13:16:24.684245	t
1077	112	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-12 22:27:12.016434	t
1078	519	Review các quán cà phê nổi tiếng	{general}	2025-11-07 17:58:11.999221	t
1079	793	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-30 10:22:10.726874	t
1080	82	Âm nhạc và cuộc sống	{food,vietnam}	2025-11-06 21:24:03.692783	t
1081	527	Học lập trình Python cơ bản	{tech,python}	2025-10-20 14:24:45.753695	t
1082	630	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-08 17:32:45.654261	f
1083	957	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-06 04:28:05.009492	f
1084	831	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-08 22:20:07.054041	t
1085	914	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-11-05 23:28:20.71292	t
1086	928	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-11-06 03:05:40.527227	t
1087	136	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-09-30 12:33:26.447846	t
1088	285	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-11-07 01:41:50.404397	t
1089	350	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-11-05 00:24:01.38675	t
1090	768	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-08 00:03:03.170911	t
1091	240	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-11-01 16:28:30.616899	t
1092	915	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-18 17:13:09.576919	t
1093	41	Học lập trình Python cơ bản	{general}	2025-10-21 07:09:18.667048	f
1094	63	Học lập trình Python cơ bản	{travel,vietnam}	2025-11-07 07:16:03.549685	t
1095	640	Âm nhạc và cuộc sống	{food,vietnam}	2025-09-29 03:42:35.764616	f
1096	210	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-29 16:43:05.921962	t
1097	150	Học lập trình Python cơ bản	{tech,python}	2025-10-18 23:16:58.804374	t
1098	714	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-31 03:13:25.52176	t
1099	610	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-03 13:46:07.329343	t
1100	249	Review các quán cà phê nổi tiếng	{general}	2025-11-01 05:07:06.503502	t
1101	390	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-22 14:53:43.426505	t
1102	644	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-10-16 07:27:44.383465	t
1103	468	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-11-09 16:47:35.317122	t
1104	721	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-08 17:03:17.094889	t
1105	902	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-01 03:08:21.103242	t
1106	985	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-11-11 20:52:47.846781	t
1107	83	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-09-29 09:11:23.216248	t
1108	255	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-11-08 23:45:38.304194	t
1109	636	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-11-11 22:54:23.287837	t
1110	742	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-14 20:23:55.943474	f
1111	654	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-22 23:21:49.799055	f
1112	619	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-03 01:36:39.34086	f
1113	872	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-08 09:17:04.029716	t
1114	727	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-12 12:41:31.34883	t
1115	280	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-18 15:48:49.685079	t
1116	799	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-29 02:53:31.979643	t
1117	471	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-11 05:04:52.131919	t
1118	286	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-10-09 18:13:41.570225	t
1119	123	Học lập trình Python cơ bản	{travel,vietnam}	2025-10-19 00:50:33.623893	f
1120	328	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-16 11:35:07.071904	f
1121	115	Âm nhạc và cuộc sống	{general}	2025-09-30 14:54:21.934429	t
1122	224	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-02 22:03:49.390538	t
1123	113	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-14 03:46:29.899808	t
1124	292	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-09-30 21:18:14.498423	f
1125	363	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-31 12:44:22.540524	t
1126	951	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-31 09:51:10.332835	t
1127	198	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-06 03:27:35.319791	t
1128	221	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-03 15:54:38.738257	t
1129	227	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-01 13:55:17.045154	f
1130	954	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-09 13:23:54.652977	t
1131	965	Thể thao và sức khỏe mỗi ngày	{general}	2025-11-05 09:18:02.335058	t
1132	397	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-15 04:42:51.056169	f
1133	19	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-11-12 07:08:15.442897	f
1134	611	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-10-27 23:20:35.129017	t
1135	666	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-04 09:59:17.673193	t
1136	581	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-27 18:49:33.85082	t
1137	553	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-15 18:54:08.480618	t
1138	416	Khám phá du lịch Việt Nam	{food,vietnam}	2025-11-06 22:17:12.089334	t
1139	684	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-28 01:56:38.249878	t
1140	139	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-03 11:16:22.688639	t
1141	711	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-11-11 01:09:50.934655	f
1142	598	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-03 19:04:45.947898	t
1143	30	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-28 23:01:52.848807	t
1144	513	Học lập trình Python cơ bản	{review,coffee}	2025-11-11 19:51:50.290448	t
1145	467	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-28 06:46:56.636213	t
1146	757	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-06 13:35:19.546889	f
1147	843	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-13 08:35:02.010688	t
1148	128	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-22 11:05:37.268186	t
1149	507	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-11-07 07:06:15.401151	t
1150	854	Âm nhạc và cuộc sống	{general}	2025-10-31 13:57:12.13136	t
1151	492	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-13 04:40:08.821853	t
1152	544	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-11-11 13:40:31.907315	t
1153	207	Âm nhạc và cuộc sống	{tech,python}	2025-10-03 05:36:17.107382	t
1154	392	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-28 11:51:31.067452	t
1155	689	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-03 22:11:15.819121	t
1156	197	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-11-04 15:44:16.536468	t
1157	384	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-13 04:05:11.35417	f
1158	455	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-09-28 13:17:00.615983	t
1159	111	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-20 10:07:58.943823	f
1160	191	Học lập trình Python cơ bản	{travel,vietnam}	2025-10-17 19:47:29.859907	t
1161	917	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-06 00:24:29.598441	t
1162	893	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-22 01:23:29.60531	f
1163	831	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-05 22:56:04.529122	t
1164	771	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-28 10:47:19.440257	f
1165	158	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-03 16:22:22.000188	t
1166	449	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-11-05 11:02:18.881236	t
1167	287	Học lập trình Python cơ bản	{general}	2025-10-14 00:39:56.997413	t
1168	784	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-21 06:45:37.031692	t
1169	919	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-23 01:03:10.572126	t
1170	832	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-20 06:42:13.991761	t
1171	109	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-19 10:12:54.832865	t
1172	395	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-11-09 01:27:08.627196	f
1173	751	Review các quán cà phê nổi tiếng	{review,coffee}	2025-11-11 10:43:54.461545	t
1174	923	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-27 23:11:59.098103	t
1175	555	Học lập trình Python cơ bản	{tech,python}	2025-10-07 14:13:00.106188	t
1176	305	Học lập trình Python cơ bản	{general}	2025-09-29 17:53:49.872016	t
1177	178	Giới thiệu công nghệ AI hiện đại	{general}	2025-10-27 23:32:25.735833	t
1178	756	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-04 21:22:10.430659	t
1179	104	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-09-29 23:35:05.415816	t
1180	999	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-12 22:16:43.565222	t
1181	449	Khám phá du lịch Việt Nam	{general}	2025-10-29 03:34:43.291354	f
1182	723	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-23 04:05:26.162791	t
1183	463	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-21 16:14:43.495362	t
1184	59	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-26 20:47:59.007154	t
1185	649	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-26 13:18:10.282164	t
1186	83	Giới thiệu công nghệ AI hiện đại	{general}	2025-10-20 01:23:49.7096	t
1187	621	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-21 20:35:12.415922	t
1188	288	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-08 17:06:52.348768	t
1189	379	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-14 19:19:57.478329	t
1190	634	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-05 20:54:52.450435	t
1191	22	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-11-03 19:57:19.609058	f
1192	62	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-02 15:04:44.66322	f
1193	518	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-09-30 09:37:47.802213	t
1194	452	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-26 07:48:22.769204	t
1195	823	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-28 22:23:09.979865	t
1196	865	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-09-29 13:48:36.440061	f
1197	359	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-11-08 17:12:06.315143	t
1198	284	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-03 13:22:30.173913	t
1199	570	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-09-30 22:23:09.087931	t
1200	456	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-18 03:59:33.238776	t
1201	686	Thể thao và sức khỏe mỗi ngày	{general}	2025-11-05 11:31:07.543158	t
1202	26	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-19 10:34:23.773322	t
1203	985	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-02 11:54:29.267462	t
1204	830	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-15 12:39:36.725164	f
1205	799	Âm nhạc và cuộc sống	{review,coffee}	2025-10-16 04:10:17.262767	t
1206	73	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-26 16:06:23.501913	t
1207	632	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-10 19:22:06.425487	t
1208	756	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-11-06 08:57:11.066405	t
1209	477	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-12 23:29:19.511824	t
1210	165	Học lập trình Python cơ bản	{tech,python}	2025-10-28 20:52:24.184146	f
1211	371	Học lập trình Python cơ bản	{food,vietnam}	2025-10-01 17:21:10.583337	t
1212	140	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-11 18:32:56.789895	t
1213	90	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-03 23:08:00.171146	t
1214	535	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-25 05:16:19.745269	t
1215	614	Học lập trình Python cơ bản	{travel,vietnam}	2025-10-17 18:00:52.403688	t
1216	509	Học lập trình Python cơ bản	{general}	2025-11-08 01:55:34.576924	t
1217	392	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-02 02:41:23.957297	t
1218	557	Âm nhạc và cuộc sống	{food,vietnam}	2025-11-10 06:53:49.740191	t
1219	0	Review các quán cà phê nổi tiếng	{review,coffee}	2025-11-03 02:03:53.360444	t
1220	539	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-11-11 15:28:43.928551	f
1221	967	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-22 04:16:42.088147	t
1222	786	Học lập trình Python cơ bản	{review,coffee}	2025-10-05 09:16:05.033918	t
1223	261	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-11-05 12:59:51.703289	t
1224	111	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-09-29 02:07:02.317659	t
1225	261	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-11-11 05:38:35.951763	t
1226	376	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-10-26 10:03:17.610258	t
1227	302	Khám phá du lịch Việt Nam	{food,vietnam}	2025-10-05 05:17:15.684871	t
1228	462	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-20 03:56:04.468001	t
1229	266	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-11-03 02:38:23.75683	f
1230	164	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-11-02 20:15:19.194338	t
1231	327	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-28 21:28:50.90697	t
1232	467	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-11-05 19:03:23.654647	t
1233	687	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-11-11 00:39:04.969621	t
1234	383	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-28 18:52:47.43258	f
1235	363	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-11-08 05:35:56.258296	t
1236	202	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-09-29 21:58:44.621037	t
1237	899	Học lập trình Python cơ bản	{general}	2025-10-10 21:09:33.850018	t
1238	583	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-02 12:07:19.832099	t
1239	583	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-20 13:29:27.815773	f
1240	770	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-09 01:16:50.411027	t
1241	224	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-26 05:21:39.071953	t
1242	782	Khám phá du lịch Việt Nam	{tech,python}	2025-10-16 16:49:27.295659	t
1243	797	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-19 05:08:13.991646	t
1244	943	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-10-09 02:44:28.435316	t
1245	578	Học lập trình Python cơ bản	{tech,python}	2025-10-01 18:33:26.244619	t
1246	376	Khám phá du lịch Việt Nam	{food,vietnam}	2025-11-05 01:17:23.285815	t
1247	944	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-02 15:17:55.651385	t
1248	481	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-12 18:21:31.151437	t
1249	804	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-06 05:49:11.185248	t
1250	941	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-11-01 21:45:18.777549	t
1251	314	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-22 05:34:50.551221	t
1252	432	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-17 19:10:22.654079	t
1253	471	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-12 11:11:05.381403	f
1254	683	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-03 03:37:05.051905	t
1255	62	Khám phá du lịch Việt Nam	{travel,vietnam}	2025-09-29 23:38:20.045549	t
1256	921	Học lập trình Python cơ bản	{general}	2025-10-15 12:26:06.405607	t
1257	223	Âm nhạc và cuộc sống	{travel,vietnam}	2025-10-23 16:26:53.571562	t
1258	894	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-11-01 15:07:34.925439	t
1259	285	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-11-11 19:49:56.966159	t
1260	759	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-18 20:47:21.499111	t
1261	671	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-06 16:45:21.375596	t
1262	607	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-11-07 19:27:56.582189	t
1263	350	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-10 08:57:39.123293	t
1264	227	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-12 18:51:04.944483	t
1265	82	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-21 22:23:31.815116	t
1266	147	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-09-30 07:50:01.285496	t
1267	22	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-11-01 08:47:34.528339	t
1268	596	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-11-01 11:36:16.8044	t
1269	880	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-05 03:56:14.821169	f
1270	661	Học lập trình Python cơ bản	{food,vietnam}	2025-10-25 17:44:05.820495	t
1271	305	Âm nhạc và cuộc sống	{tech,python}	2025-10-26 09:48:39.306461	t
1272	45	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-21 17:04:52.547309	t
1273	622	Học lập trình Python cơ bản	{food,vietnam}	2025-10-15 08:10:02.135229	t
1274	601	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-19 09:05:14.321317	f
1275	462	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-15 08:24:56.740209	t
1276	638	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-07 12:16:15.575574	t
1277	56	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-11-10 19:10:22.926741	t
1278	605	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-22 02:49:28.299311	f
1279	482	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-11-08 02:55:45.983332	t
1280	184	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-11-04 16:24:14.216698	t
1281	596	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-11-01 23:02:44.314763	t
1282	572	Âm nhạc và cuộc sống	{general}	2025-11-08 19:08:41.131249	t
1283	832	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-09 07:23:31.901478	t
1284	256	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-09 21:33:21.769569	t
1285	785	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-17 12:56:04.182831	t
1286	263	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-18 14:18:27.660682	t
1287	865	Học lập trình Python cơ bản	{food,vietnam}	2025-10-21 16:07:37.528575	t
1288	97	Học lập trình Python cơ bản	{review,coffee}	2025-10-11 08:48:53.022082	t
1289	774	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-10-22 04:30:49.304536	t
1290	450	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-31 10:46:11.159553	t
1291	923	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-09 06:11:44.828178	t
1292	951	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-06 13:40:39.490129	f
1293	120	Học lập trình Python cơ bản	{general}	2025-10-30 08:41:19.213075	t
1294	897	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-29 02:21:41.62509	t
1295	57	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-10-13 04:44:06.183725	t
1296	953	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-11-09 03:22:20.8357	t
1297	609	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-07 09:25:39.29063	t
1298	387	Giới thiệu công nghệ AI hiện đại	{general}	2025-10-09 03:52:39.475453	t
1299	13	Khám phá du lịch Việt Nam	{food,vietnam}	2025-10-09 02:26:48.232611	t
1300	740	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-23 17:13:47.05421	t
1301	571	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-11 21:40:30.057937	t
1302	927	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-07 15:15:07.723891	t
1303	522	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-10 05:14:52.566603	t
1304	330	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-02 09:04:08.307538	t
1305	728	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-02 08:59:57.688835	t
1306	214	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-11-06 02:23:17.249455	t
1307	141	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-23 13:31:32.870569	t
1308	549	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-04 23:38:51.352939	t
1309	310	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-11-11 15:54:35.756363	t
1310	439	Học lập trình Python cơ bản	{tech,python}	2025-09-30 17:46:08.876942	f
1311	146	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-31 13:29:21.394363	t
1312	744	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-05 14:51:11.684205	t
1313	298	Học lập trình Python cơ bản	{food,vietnam}	2025-11-09 06:35:41.06957	t
1314	250	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-09 12:33:53.686547	t
1315	458	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-11-03 22:14:13.906175	t
1316	4	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-18 08:43:46.293432	t
1317	357	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-11-10 20:27:06.674068	t
1318	182	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-13 09:22:54.194621	t
1319	137	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-21 07:19:56.391868	f
1320	402	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-17 23:30:55.436319	t
1321	605	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-11-10 09:09:17.921536	t
1322	545	Học lập trình Python cơ bản	{review,coffee}	2025-11-10 09:02:43.710696	t
1323	95	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-26 22:07:53.736657	t
1324	279	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-08 03:02:26.840746	t
1325	865	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-11-03 14:55:18.006071	t
1326	266	Khám phá du lịch Việt Nam	{tech,python}	2025-10-25 13:17:59.112989	t
1327	367	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-17 05:35:25.501941	t
1328	324	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-04 03:23:51.165052	t
1329	450	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-27 01:10:00.707409	t
1330	287	Âm nhạc và cuộc sống	{review,coffee}	2025-10-20 05:06:16.027473	t
1331	790	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-29 23:34:06.984766	t
1332	943	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-11-10 14:43:27.523803	t
1333	327	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-19 18:20:46.672587	t
1334	953	Âm nhạc và cuộc sống	{general}	2025-10-05 14:43:15.332958	t
1335	715	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-16 17:25:49.887896	t
1336	334	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-12 09:28:59.508567	t
1337	23	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-08 21:56:36.097234	t
1338	630	Học lập trình Python cơ bản	{food,vietnam}	2025-11-11 12:16:15.522249	t
1339	416	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-31 07:34:12.373517	t
1340	516	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-09-29 17:13:27.27952	t
1341	633	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-31 03:47:43.088333	t
1342	668	Khám phá du lịch Việt Nam	{travel,vietnam}	2025-10-27 13:14:31.274004	f
1343	714	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-30 02:18:19.802215	t
1344	973	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-22 10:48:07.127696	t
1345	147	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-11-03 13:37:08.485754	t
1346	616	Học lập trình Python cơ bản	{review,coffee}	2025-10-04 13:09:34.367378	t
1347	831	Khám phá du lịch Việt Nam	{general}	2025-11-11 08:06:26.356036	t
1348	295	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-09 02:58:04.580608	t
1349	392	Học lập trình Python cơ bản	{tech,python}	2025-11-10 04:10:52.152764	t
1350	267	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-13 04:19:13.053613	t
1351	844	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-11-02 19:15:50.918305	t
1352	774	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-15 03:50:44.00835	t
1353	548	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-23 14:07:55.505688	t
1354	727	Review các quán cà phê nổi tiếng	{general}	2025-11-07 09:01:34.239866	t
1355	839	Giới thiệu công nghệ AI hiện đại	{general}	2025-10-21 16:27:25.584251	t
1356	955	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-15 13:35:37.595679	f
1357	626	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-10 18:52:39.227455	t
1358	629	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-11-08 19:59:49.251499	t
1359	194	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-28 22:24:36.794755	f
1360	822	Âm nhạc và cuộc sống	{food,vietnam}	2025-11-04 23:41:18.776249	t
1361	593	Khám phá du lịch Việt Nam	{food,vietnam}	2025-09-29 19:01:58.007013	t
1362	510	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-04 15:37:35.06395	f
1363	586	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-31 14:47:44.058453	t
1364	920	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-06 01:26:19.365462	t
1365	831	Âm nhạc và cuộc sống	{review,coffee}	2025-10-09 06:48:55.188853	t
1366	40	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-04 08:46:11.356418	f
1367	494	Học lập trình Python cơ bản	{ai,machinelearning}	2025-09-29 18:55:02.105132	t
1368	534	Khám phá du lịch Việt Nam	{general}	2025-10-08 06:21:34.410127	t
1369	888	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-20 22:57:39.251753	t
1370	768	Học lập trình Python cơ bản	{travel,vietnam}	2025-11-06 00:43:09.962676	t
1371	282	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-11-03 13:24:14.180664	t
1372	794	Review các quán cà phê nổi tiếng	{tech,python}	2025-11-04 04:41:48.756263	t
1373	146	Âm nhạc và cuộc sống	{general}	2025-10-22 01:42:47.220289	t
1374	4	Review các quán cà phê nổi tiếng	{review,coffee}	2025-11-10 09:36:43.239108	t
1375	58	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-09-29 18:45:58.701335	f
1376	144	Khám phá du lịch Việt Nam	{general}	2025-10-24 00:46:01.437862	t
1377	793	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-09-30 19:17:28.655967	t
1378	744	Học lập trình Python cơ bản	{tech,python}	2025-11-05 18:22:49.235087	t
1379	777	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-01 09:00:24.795212	t
1380	604	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-10-30 14:01:57.877766	f
1381	548	Giới thiệu công nghệ AI hiện đại	{general}	2025-10-18 02:55:14.1904	t
1382	144	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-11 22:45:55.586492	t
1383	88	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-11-09 19:37:56.36456	f
1384	692	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-06 11:15:11.892167	t
1385	427	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-22 18:32:38.705415	t
1386	966	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-14 16:38:23.30146	t
1387	650	Âm nhạc và cuộc sống	{tech,python}	2025-11-06 08:33:23.556529	f
1388	719	Học lập trình Python cơ bản	{review,coffee}	2025-11-04 17:20:56.470244	t
1389	42	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-20 18:52:42.458297	t
1390	811	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-13 20:33:20.062549	t
1391	969	Học lập trình Python cơ bản	{travel,vietnam}	2025-10-22 08:45:52.392906	f
1392	733	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-04 04:49:42.061272	t
1393	82	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-11-10 06:04:58.174294	t
1394	709	Âm nhạc và cuộc sống	{general}	2025-10-18 20:02:53.018699	f
1395	194	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-16 03:39:19.015598	t
1396	454	Học lập trình Python cơ bản	{tech,python}	2025-10-19 22:47:24.318408	t
1397	133	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-29 16:12:56.742372	t
1398	328	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-21 04:03:36.241084	t
1399	574	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-07 11:22:46.411478	f
1400	252	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-20 17:27:27.846061	t
1401	473	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-23 08:15:07.017777	t
1402	700	Âm nhạc và cuộc sống	{general}	2025-11-09 01:09:53.61585	t
1403	354	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-10-03 23:55:04.420929	t
1404	493	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-10-21 00:06:16.930702	t
1405	190	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-20 12:30:55.542503	f
1406	89	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-13 17:44:01.40533	t
1407	595	Học lập trình Python cơ bản	{review,coffee}	2025-11-10 13:31:28.349589	t
1408	376	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-03 16:49:37.750931	f
1409	941	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-04 12:02:21.371764	f
1410	736	Học lập trình Python cơ bản	{general}	2025-11-11 20:49:08.402144	t
1411	448	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-10 03:38:01.591794	f
1412	77	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-11-11 12:15:54.82666	f
1413	454	Review các quán cà phê nổi tiếng	{general}	2025-10-20 15:34:19.672667	t
1414	638	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-11-09 01:23:04.890941	t
1415	929	Review các quán cà phê nổi tiếng	{general}	2025-11-09 17:49:00.998909	f
1416	609	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-26 09:30:07.659928	t
1417	608	Học lập trình Python cơ bản	{travel,vietnam}	2025-10-06 16:37:18.616654	t
1418	141	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-20 05:29:15.467302	t
1419	768	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-26 17:52:27.318652	t
1420	814	Khám phá du lịch Việt Nam	{general}	2025-10-17 23:09:29.049686	t
1421	15	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-07 06:39:17.501587	t
1422	262	Âm nhạc và cuộc sống	{review,coffee}	2025-10-28 15:40:18.64087	t
1423	633	Review các quán cà phê nổi tiếng	{general}	2025-10-05 23:37:26.545244	f
1424	45	Âm nhạc và cuộc sống	{travel,vietnam}	2025-10-04 04:20:04.592998	t
1425	690	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-13 09:41:14.159862	f
1426	971	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-03 01:21:47.521004	f
1427	259	Âm nhạc và cuộc sống	{tech,python}	2025-11-10 03:39:43.888502	f
1428	465	Học lập trình Python cơ bản	{travel,vietnam}	2025-10-09 04:16:47.888917	t
1429	52	Âm nhạc và cuộc sống	{review,coffee}	2025-11-11 00:34:01.907548	t
1430	607	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-09-30 21:04:08.358955	t
1431	908	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-25 17:56:37.827406	t
1432	166	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-11-09 07:55:26.326345	t
1433	629	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-10 18:34:27.064647	t
1434	245	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-10 17:00:28.092296	t
1435	991	Âm nhạc và cuộc sống	{tech,python}	2025-10-24 18:49:58.960783	t
1436	851	Khám phá du lịch Việt Nam	{tech,python}	2025-11-03 02:14:16.833545	t
1437	966	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-13 13:51:17.669332	t
1438	214	Học lập trình Python cơ bản	{food,vietnam}	2025-10-31 06:54:22.137674	t
1439	928	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-27 16:13:39.087977	t
1440	548	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-01 01:44:37.078294	t
1441	406	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-11-09 08:14:44.62574	t
1442	371	Âm nhạc và cuộc sống	{review,coffee}	2025-10-23 10:47:17.057236	t
1443	243	Review các quán cà phê nổi tiếng	{tech,python}	2025-09-28 20:46:19.079787	f
1444	658	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-08 15:44:08.466459	t
1445	651	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-11-01 12:15:51.903532	t
1446	790	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-06 23:35:32.50212	t
1447	345	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-14 02:52:34.148884	t
1448	380	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-23 02:55:23.458279	f
1449	111	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-11-08 20:41:11.573383	t
1450	725	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-26 06:25:35.755532	f
1451	564	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-10-21 01:57:27.986227	t
1452	283	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-11 12:15:08.207578	t
1453	430	Khám phá du lịch Việt Nam	{tech,python}	2025-10-23 00:15:44.976444	t
1454	314	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-18 03:54:58.488945	t
1455	17	Review các quán cà phê nổi tiếng	{general}	2025-10-11 00:30:16.817419	t
1456	224	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-30 14:01:26.573344	t
1457	154	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-09-30 08:15:34.557283	t
1458	635	Âm nhạc và cuộc sống	{tech,python}	2025-10-28 01:27:53.92412	t
1459	39	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-27 20:23:48.817892	f
1460	549	Học lập trình Python cơ bản	{food,vietnam}	2025-10-07 08:50:51.277106	f
1461	35	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-26 00:55:41.553208	t
1462	312	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-09-29 14:00:19.853703	t
1463	913	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-14 08:37:52.853722	t
1464	980	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-11-03 14:44:50.439747	t
1465	561	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-10-29 00:48:26.991892	t
1466	905	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-27 03:13:12.972598	t
1467	470	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-17 04:07:40.274016	t
1468	41	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-13 22:22:41.859225	t
1469	786	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-10-05 01:22:25.893317	t
1470	789	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-10-22 07:38:38.134403	t
1471	750	Học lập trình Python cơ bản	{review,coffee}	2025-10-21 07:39:53.007408	t
1472	650	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-19 05:01:19.460727	t
1473	281	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-11-09 06:18:24.482392	t
1474	451	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-27 02:15:14.586701	t
1475	959	Giới thiệu công nghệ AI hiện đại	{general}	2025-10-18 14:23:57.715053	t
1476	328	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-11-11 14:48:04.414518	t
1477	589	Học lập trình Python cơ bản	{review,coffee}	2025-11-06 17:29:58.230953	t
1478	837	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-06 00:47:11.986946	t
1479	728	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-09-29 10:59:30.134956	t
1480	112	Khám phá du lịch Việt Nam	{food,vietnam}	2025-11-01 17:04:28.653255	t
1481	530	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-22 14:50:58.371638	t
1482	154	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-01 06:39:23.752044	t
1483	20	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-06 16:45:30.641334	t
1484	617	Học lập trình Python cơ bản	{review,coffee}	2025-10-23 00:37:32.141291	t
1485	162	Review các quán cà phê nổi tiếng	{review,coffee}	2025-11-03 17:23:29.207703	t
1486	141	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-11-05 17:23:19.533967	f
1487	252	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-04 12:27:53.97152	t
1488	511	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-26 06:32:02.828686	t
1489	768	Khám phá du lịch Việt Nam	{food,vietnam}	2025-10-08 18:34:32.201014	t
1490	963	Học lập trình Python cơ bản	{ai,machinelearning}	2025-11-09 07:14:28.793651	f
1491	950	Học lập trình Python cơ bản	{ai,machinelearning}	2025-11-09 15:13:24.560013	t
1492	421	Âm nhạc và cuộc sống	{general}	2025-11-03 17:24:15.8294	t
1493	283	Khám phá du lịch Việt Nam	{general}	2025-10-04 14:44:14.590259	t
1494	147	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-28 05:37:08.296427	t
1495	79	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-17 19:18:22.000031	f
1496	228	Âm nhạc và cuộc sống	{tech,python}	2025-10-01 13:30:34.167636	t
1497	782	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-22 19:18:50.269116	t
1498	87	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-26 15:23:15.07018	t
1499	244	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-11-06 17:45:31.43647	t
1500	287	Âm nhạc và cuộc sống	{review,coffee}	2025-10-07 10:38:55.627277	t
1501	604	Học lập trình Python cơ bản	{ai,machinelearning}	2025-11-11 17:27:10.799969	t
1502	834	Học lập trình Python cơ bản	{tech,python}	2025-10-02 21:51:48.715887	t
1503	88	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-21 09:40:38.757645	t
1504	544	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-21 00:11:07.544057	t
1505	394	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-29 03:55:45.454336	f
1506	942	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-16 22:25:31.769805	t
1507	528	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-09-30 01:41:59.587308	t
1508	158	Khám phá du lịch Việt Nam	{food,vietnam}	2025-11-10 14:50:52.502666	t
1509	786	Khám phá du lịch Việt Nam	{food,vietnam}	2025-09-29 21:34:35.165001	t
1510	232	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-07 18:14:24.153052	t
1511	384	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-27 16:36:08.201001	t
1512	917	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-10 19:43:59.23625	f
1513	767	Khám phá du lịch Việt Nam	{review,coffee}	2025-11-03 18:56:17.82273	f
1514	972	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-10-26 04:32:56.081466	t
1515	257	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-11 00:24:34.107497	t
1516	61	Âm nhạc và cuộc sống	{general}	2025-10-12 18:35:41.442773	f
1517	793	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-18 00:47:28.051907	t
1518	268	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-11-07 19:50:18.420629	f
1519	268	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-11-12 09:23:27.91577	t
1520	995	Âm nhạc và cuộc sống	{general}	2025-10-26 08:25:38.897453	t
1521	588	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-10-08 13:53:47.520995	t
1522	790	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-27 06:56:12.837042	t
1523	706	Khám phá du lịch Việt Nam	{general}	2025-10-12 07:06:33.271267	t
1524	227	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-10-21 05:55:40.721922	t
1525	520	Âm nhạc và cuộc sống	{travel,vietnam}	2025-10-31 19:57:49.576968	t
1526	231	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-09 12:24:41.734081	t
1527	712	Học lập trình Python cơ bản	{review,coffee}	2025-10-09 20:14:45.390817	f
1528	187	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-23 20:19:04.510004	t
1529	277	Âm nhạc và cuộc sống	{general}	2025-11-03 20:45:13.895759	t
1530	50	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-09 16:49:55.888509	t
1531	183	Khám phá du lịch Việt Nam	{travel,vietnam}	2025-11-07 20:00:49.137565	t
1532	842	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-11-04 19:41:15.903429	f
1533	663	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-11-05 10:02:52.352185	t
1534	902	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-20 03:33:09.128873	t
1535	719	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-30 07:24:47.819453	t
1536	401	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-29 14:34:57.430501	t
1537	208	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-13 18:09:31.406495	t
1538	138	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-10-17 06:22:13.968471	t
1539	810	Âm nhạc và cuộc sống	{review,coffee}	2025-10-21 21:48:47.318618	t
1540	462	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-11-05 04:08:15.588315	t
1541	739	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-10-31 20:30:39.243215	t
1542	995	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-27 23:08:20.970787	f
1543	74	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-23 14:06:33.80358	t
1544	86	Học lập trình Python cơ bản	{food,vietnam}	2025-10-01 17:44:45.304479	t
1545	687	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-11-06 04:17:56.651822	t
1546	255	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-11 18:00:40.277054	t
1547	631	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-24 20:28:24.959707	t
1548	56	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-11-05 08:41:36.101538	t
1549	544	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-12 14:30:44.185154	t
1550	373	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-11-02 23:54:51.604902	t
1551	378	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-11-08 02:26:11.733802	t
1552	122	Khám phá du lịch Việt Nam	{food,vietnam}	2025-11-05 17:19:55.14918	f
1553	778	Âm nhạc và cuộc sống	{travel,vietnam}	2025-10-26 18:13:22.385618	f
1554	60	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-26 09:54:20.645548	t
1555	186	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-27 05:16:01.05713	t
1556	340	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-11-02 05:06:58.200431	t
1557	681	Âm nhạc và cuộc sống	{food,vietnam}	2025-11-05 22:23:50.579382	t
1558	747	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-05 17:30:24.125644	t
1559	630	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-31 10:10:23.912539	f
1560	212	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-11-12 05:31:52.494484	t
1561	121	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-09-29 22:03:12.887134	t
1562	127	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-24 20:25:31.322263	t
1563	142	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-07 22:01:03.423361	t
1564	561	Review các quán cà phê nổi tiếng	{tech,python}	2025-11-09 07:27:34.715432	t
1565	991	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-03 00:16:12.411095	t
1566	33	Học lập trình Python cơ bản	{food,vietnam}	2025-10-08 12:22:09.047069	t
1567	194	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-07 12:27:18.816411	t
1568	785	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-20 16:55:23.888536	t
1569	427	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-07 00:19:28.634541	f
1570	863	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-23 10:35:50.406019	t
1571	693	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-26 19:55:37.422848	t
1572	448	Học lập trình Python cơ bản	{review,coffee}	2025-10-16 23:40:39.418292	t
1573	776	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-03 02:45:30.41989	t
1574	37	Khám phá du lịch Việt Nam	{travel,vietnam}	2025-10-25 04:57:03.951808	t
1575	848	Âm nhạc và cuộc sống	{food,vietnam}	2025-11-12 01:00:20.594217	t
1576	711	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-10-06 01:09:58.658616	t
1577	772	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-25 18:37:27.37481	t
1578	128	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-02 09:34:31.878113	t
1579	807	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-11 09:58:19.540421	t
1580	112	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-10-29 04:47:51.886072	t
1581	222	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-21 16:56:10.242938	t
1582	924	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-03 11:45:02.9379	t
1583	270	Khám phá du lịch Việt Nam	{tech,python}	2025-10-09 13:35:54.93804	f
1584	672	Khám phá du lịch Việt Nam	{travel,vietnam}	2025-11-07 05:20:32.852091	t
1585	597	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-24 12:44:28.159161	t
1586	147	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-28 02:04:25.047873	t
1587	57	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-02 09:57:28.039556	t
1588	566	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-11 00:26:13.881406	t
1589	208	Âm nhạc và cuộc sống	{food,vietnam}	2025-11-06 01:15:28.309667	t
1590	661	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-09-30 21:21:57.578772	t
1591	239	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-26 18:10:47.029935	t
1592	330	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-11 10:01:39.456142	t
1593	460	Khám phá du lịch Việt Nam	{food,vietnam}	2025-10-17 14:41:33.003345	t
1594	905	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-20 18:03:52.243933	t
1595	30	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-30 11:16:34.493291	t
1596	654	Khám phá du lịch Việt Nam	{tech,python}	2025-10-02 08:44:04.928299	t
1597	803	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-07 16:08:10.762424	t
1598	542	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-11-06 11:23:11.58215	f
1599	344	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-11-07 12:16:11.8831	t
1600	908	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-24 00:04:17.096473	t
1601	965	Học lập trình Python cơ bản	{general}	2025-10-26 06:20:30.197916	t
1602	371	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-10 04:09:56.944096	t
1603	830	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-20 10:45:30.620224	t
1604	425	Học lập trình Python cơ bản	{tech,python}	2025-10-05 13:31:28.636102	t
1605	397	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-11-11 00:45:21.131727	t
1606	841	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-22 08:43:31.982685	t
1607	848	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-11-06 23:26:40.334757	f
1608	876	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-11-01 12:41:44.116797	t
1609	612	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-21 11:53:08.790118	t
1610	601	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-21 20:19:10.336344	f
1611	836	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-09 14:21:44.312416	t
1612	66	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-07 22:03:14.595273	t
1613	178	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-10-03 16:12:01.648019	t
1614	872	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-11-07 17:30:15.851969	t
1615	697	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-25 12:18:24.218474	t
1616	220	Âm nhạc và cuộc sống	{general}	2025-11-08 16:55:58.169821	t
1617	127	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-27 22:43:55.626125	t
1618	850	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-28 12:39:07.226924	t
1619	473	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-03 00:17:18.08352	t
1620	54	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-04 03:47:35.423916	t
1621	951	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-19 09:59:44.170149	t
1622	887	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-14 09:20:20.947854	t
1623	239	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-30 04:09:08.965176	f
1624	104	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-01 08:21:51.316279	f
1625	969	Âm nhạc và cuộc sống	{travel,vietnam}	2025-11-09 02:18:05.637982	t
1626	735	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-31 07:44:44.541168	t
1627	715	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-18 00:08:01.699245	f
1628	511	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-10-17 13:28:01.082591	f
1629	571	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-10-02 07:54:34.478597	t
1630	750	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-12 08:53:24.59138	f
1631	540	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-06 06:19:34.275338	t
1632	362	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-06 15:31:25.940737	t
1633	880	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-23 05:31:40.105867	t
1634	237	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-22 14:28:06.618288	t
1635	929	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-10-18 08:18:25.15449	t
1636	486	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-09-30 01:04:51.871784	t
1637	78	Thể thao và sức khỏe mỗi ngày	{general}	2025-11-04 11:09:14.668819	t
1638	862	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-09-29 04:02:31.811749	t
1639	584	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-11-05 07:40:35.476209	t
1640	675	Khám phá du lịch Việt Nam	{review,coffee}	2025-11-10 00:31:33.008037	t
1641	319	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-10 09:09:22.040679	t
1642	683	Âm nhạc và cuộc sống	{general}	2025-11-11 23:41:44.34072	t
1643	157	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-11 09:29:53.912979	t
1644	875	Học lập trình Python cơ bản	{tech,python}	2025-11-02 02:25:20.682646	t
1645	450	Học lập trình Python cơ bản	{tech,python}	2025-11-11 06:35:59.772785	t
1646	961	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-11-03 04:47:26.527922	t
1647	79	Review các quán cà phê nổi tiếng	{review,coffee}	2025-09-28 11:15:23.142284	t
1648	831	Học lập trình Python cơ bản	{tech,python}	2025-10-01 10:22:19.387426	t
1649	44	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-09-29 14:42:38.170965	t
1650	303	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-10-10 04:57:36.73249	t
1651	108	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-11-10 02:09:44.075339	t
1652	876	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-12 02:50:26.697433	t
1653	298	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-10-20 14:40:26.260146	t
1654	917	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-13 02:29:16.169274	t
1655	4	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-08 12:24:56.142113	t
1656	165	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-30 02:53:10.938427	t
1657	195	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-11-08 00:35:33.645495	t
1658	528	Học lập trình Python cơ bản	{food,vietnam}	2025-10-04 13:23:49.08532	t
1659	197	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-05 02:55:22.930105	t
1660	504	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-10 09:53:54.648731	t
1661	831	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-12 01:58:26.016492	t
1662	244	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-11-03 03:39:03.676916	t
1663	460	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-22 15:04:37.079158	t
1664	604	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-01 02:35:33.458892	t
1665	244	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-11-08 10:39:11.081702	f
1666	456	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-04 08:01:27.421774	f
1667	472	Học lập trình Python cơ bản	{tech,python}	2025-11-10 23:06:49.25225	t
1668	786	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-08 10:58:49.392684	t
1669	685	Học lập trình Python cơ bản	{tech,python}	2025-11-09 01:14:19.604206	t
1670	752	Âm nhạc và cuộc sống	{travel,vietnam}	2025-11-02 19:45:24.789783	t
1671	948	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-10-24 20:04:23.006183	t
1672	636	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-26 08:18:06.287267	t
1673	179	Học lập trình Python cơ bản	{ai,machinelearning}	2025-11-09 09:33:10.014592	t
1674	457	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-15 14:12:03.639886	t
1675	23	Học lập trình Python cơ bản	{food,vietnam}	2025-11-08 04:18:16.308187	t
1676	75	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-11-03 20:32:42.940831	f
1677	92	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-17 14:46:51.189827	t
1678	199	Review các quán cà phê nổi tiếng	{general}	2025-10-06 03:17:56.569077	t
1679	504	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-22 20:47:43.137996	t
1680	403	Học lập trình Python cơ bản	{review,coffee}	2025-10-03 21:24:31.611417	t
1681	935	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-24 01:32:33.75557	t
1682	181	Âm nhạc và cuộc sống	{travel,vietnam}	2025-11-03 07:49:17.814209	t
1683	338	Học lập trình Python cơ bản	{general}	2025-10-14 16:35:45.806356	t
1684	20	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-23 16:12:17.518484	f
1685	451	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-11-10 22:40:57.257702	t
1686	931	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-19 12:21:08.59035	t
1687	216	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-16 23:28:34.769823	t
1688	811	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-31 15:20:35.084743	t
1689	568	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-14 18:18:41.702819	t
1690	861	Âm nhạc và cuộc sống	{review,coffee}	2025-09-30 21:09:44.502897	t
1691	154	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-21 01:41:55.072201	t
1692	345	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-27 17:37:30.923387	t
1693	484	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-09 09:09:15.873193	t
1694	875	Giới thiệu công nghệ AI hiện đại	{general}	2025-10-23 11:23:47.312371	t
1695	941	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-02 00:57:20.658071	f
1696	934	Khám phá du lịch Việt Nam	{travel,vietnam}	2025-10-01 03:05:02.021754	t
1697	590	Khám phá du lịch Việt Nam	{tech,python}	2025-10-18 06:58:22.847581	t
1698	343	Âm nhạc và cuộc sống	{review,coffee}	2025-11-07 20:32:48.409121	f
1699	70	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-11-10 07:00:20.032009	f
1700	52	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-26 01:50:14.02569	t
1701	316	Khám phá du lịch Việt Nam	{review,coffee}	2025-11-11 03:20:52.993843	t
1702	136	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-11-02 06:16:16.048446	f
1703	394	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-13 11:10:27.063032	t
1704	707	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-07 06:52:21.428308	t
1705	882	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-11 04:58:42.019359	t
1706	375	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-31 16:33:17.421534	f
1707	919	Âm nhạc và cuộc sống	{review,coffee}	2025-10-03 11:45:16.969722	f
1708	31	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-10-08 05:01:53.613129	t
1709	519	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-16 09:33:13.543198	t
1710	204	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-09 18:32:28.4488	t
1711	808	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-22 00:32:58.490195	t
1712	577	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-10-09 14:24:16.15277	t
1713	306	Khám phá du lịch Việt Nam	{general}	2025-10-26 03:31:49.303038	t
1714	552	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-03 10:23:20.952707	t
1715	496	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-06 07:19:05.292989	t
1716	122	Âm nhạc và cuộc sống	{food,vietnam}	2025-11-11 07:35:28.286065	t
1717	35	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-18 12:00:34.529223	t
1718	803	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-11 01:02:47.194648	t
1719	614	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-10-19 02:44:27.361887	t
1720	843	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-19 23:15:49.302559	f
1721	804	Âm nhạc và cuộc sống	{review,coffee}	2025-10-04 02:21:55.114507	t
1722	334	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-09 21:43:11.664381	t
1723	475	Học lập trình Python cơ bản	{food,vietnam}	2025-09-29 23:06:52.845777	t
1724	964	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-11-08 05:30:11.736285	t
1725	117	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-02 16:42:32.088686	t
1726	458	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-22 12:57:35.019943	t
1727	536	Âm nhạc và cuộc sống	{review,coffee}	2025-11-10 13:36:20.15343	t
1728	582	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-11 23:22:25.421997	t
1729	179	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-02 14:46:54.42105	t
1730	577	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-11-04 16:06:46.188856	t
1731	290	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-24 04:01:52.399301	t
1732	885	Học lập trình Python cơ bản	{review,coffee}	2025-10-04 23:00:00.306156	f
1733	474	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-14 12:11:19.8009	t
1734	931	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-09-29 07:49:07.507139	t
1735	912	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-22 11:38:18.734461	t
1736	303	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-11-02 07:32:41.126	t
1737	850	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-17 10:42:42.127764	t
1738	444	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-08 02:22:59.278995	t
1739	310	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-11 14:25:59.967528	t
1740	115	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-11-04 22:06:39.973322	f
1741	240	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-11-02 17:48:23.386462	f
1742	216	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-24 16:17:10.803791	t
1743	349	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-10-14 12:09:04.92716	t
1744	854	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-24 09:33:55.177712	t
1745	945	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-29 06:05:05.742967	t
1746	746	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-21 16:39:51.657565	t
1747	817	Học lập trình Python cơ bản	{review,coffee}	2025-11-11 18:52:22.7784	t
1748	194	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-16 07:42:18.173749	t
1749	259	Học lập trình Python cơ bản	{tech,python}	2025-10-23 10:30:55.832104	t
1750	844	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-10-26 07:14:04.011823	t
1751	228	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-12 06:15:44.336552	t
1752	706	Âm nhạc và cuộc sống	{review,coffee}	2025-09-30 17:47:34.059421	t
1753	691	Âm nhạc và cuộc sống	{food,vietnam}	2025-09-28 12:28:47.555471	t
1754	567	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-02 18:06:24.68117	t
1755	323	Review các quán cà phê nổi tiếng	{general}	2025-11-02 08:52:58.019674	f
1756	600	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-11-11 02:05:23.342334	t
1757	815	Review các quán cà phê nổi tiếng	{tech,python}	2025-11-01 12:59:24.2738	t
1758	338	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-02 15:44:16.053873	t
1759	759	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-10 02:30:37.53183	t
1760	385	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-21 15:48:00.950957	t
1761	613	Review các quán cà phê nổi tiếng	{general}	2025-10-14 03:41:10.443378	t
1762	310	Âm nhạc và cuộc sống	{review,coffee}	2025-09-29 14:28:56.398381	t
1763	160	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-09 01:08:19.784326	t
1764	75	Khám phá du lịch Việt Nam	{tech,python}	2025-11-04 01:04:43.809571	t
1765	226	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-11-01 10:18:12.562895	t
1766	208	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-01 13:37:31.049086	t
1767	590	Khám phá du lịch Việt Nam	{tech,python}	2025-11-12 03:52:13.48529	t
1768	535	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-03 22:52:28.039756	t
1769	662	Học lập trình Python cơ bản	{travel,vietnam}	2025-11-01 14:15:33.880444	t
1770	380	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-17 21:55:18.702509	t
1771	481	Học lập trình Python cơ bản	{general}	2025-10-14 22:38:57.45833	t
1772	443	Âm nhạc và cuộc sống	{food,vietnam}	2025-11-10 08:08:47.807867	f
1773	889	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-02 23:27:33.224714	f
1774	60	Âm nhạc và cuộc sống	{review,coffee}	2025-10-05 09:22:43.301405	t
1775	136	Học lập trình Python cơ bản	{review,coffee}	2025-10-09 05:49:05.684894	t
1776	787	Học lập trình Python cơ bản	{review,coffee}	2025-09-29 04:41:35.560887	t
1777	342	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-12 00:34:42.32468	t
1778	421	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-10 06:40:19.239888	t
1779	704	Âm nhạc và cuộc sống	{general}	2025-11-02 10:24:51.464053	t
1780	980	Khám phá du lịch Việt Nam	{food,vietnam}	2025-10-30 21:50:38.627123	t
1781	209	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-31 20:46:44.574693	f
1782	902	Khám phá du lịch Việt Nam	{food,vietnam}	2025-11-08 02:13:10.372043	f
1783	610	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-11-07 19:54:03.946277	t
1784	336	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-11-02 23:35:37.239686	t
1785	718	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-07 18:57:02.075734	t
1786	666	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-12 15:52:01.097218	t
1787	824	Âm nhạc và cuộc sống	{tech,python}	2025-11-01 08:35:23.971312	t
1788	770	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-01 01:54:52.285677	f
1789	468	Giới thiệu công nghệ AI hiện đại	{general}	2025-11-06 02:36:48.359964	t
1790	353	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-16 14:48:36.676027	t
1791	415	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-22 18:56:51.069242	t
1792	958	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-24 03:46:32.330745	t
1793	248	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-14 19:58:44.602339	t
1794	125	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-15 00:35:33.388396	t
1795	53	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-09-28 11:02:12.815669	f
1796	250	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-10-24 15:06:57.846218	t
1797	281	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-11-06 12:29:39.820349	f
1798	166	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-11-01 06:11:43.937243	t
1799	339	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-08 15:27:51.966487	t
1800	693	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-11-08 17:30:19.122809	f
1801	857	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-23 11:20:59.914091	t
1802	914	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-15 22:16:16.249098	t
1803	334	Học lập trình Python cơ bản	{ai,machinelearning}	2025-11-06 14:26:59.49853	t
1804	118	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-27 08:05:37.78183	t
1805	888	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-09-30 12:45:56.530152	t
1806	459	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-29 00:12:44.684037	f
1807	653	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-15 04:33:22.798651	t
1808	241	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-14 09:57:11.226709	f
1809	171	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-31 01:45:11.96088	t
1810	51	Khám phá du lịch Việt Nam	{general}	2025-11-07 08:19:02.963502	t
1811	702	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-10 19:01:41.179369	t
1812	302	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-07 09:03:06.041878	f
1813	313	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-05 12:46:52.232324	t
1814	158	Âm nhạc và cuộc sống	{tech,python}	2025-11-08 04:19:51.571801	t
1815	867	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-08 06:56:44.951497	f
1816	3	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-19 12:45:36.216072	t
1817	957	Khám phá du lịch Việt Nam	{food,vietnam}	2025-10-08 10:09:25.809316	t
1818	760	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-29 06:29:45.136699	f
1819	460	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-16 06:56:42.821542	t
1820	145	Thể thao và sức khỏe mỗi ngày	{general}	2025-11-02 19:35:08.74185	t
1821	945	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-31 10:49:40.278422	t
1822	489	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-10-22 14:07:42.318206	t
1823	26	Giới thiệu công nghệ AI hiện đại	{general}	2025-10-25 15:18:06.659634	t
1824	924	Học lập trình Python cơ bản	{tech,python}	2025-10-12 19:13:38.121474	t
1825	515	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-11-10 11:36:11.857461	t
1826	600	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-11-03 06:32:09.469043	t
1827	126	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-03 06:51:20.596764	t
1828	472	Review các quán cà phê nổi tiếng	{general}	2025-10-30 20:33:53.23072	f
1829	841	Giới thiệu công nghệ AI hiện đại	{general}	2025-10-03 22:14:51.737875	t
1830	684	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-15 20:02:44.536331	t
1831	141	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-10-29 14:02:10.653999	t
1832	955	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-08 20:27:37.29741	t
1833	185	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-09 02:41:58.783904	f
1834	156	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-11 08:21:20.299129	f
1835	841	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-11-07 06:12:42.160738	t
1836	786	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-05 03:03:44.657655	t
1837	582	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-20 20:32:44.629369	t
1838	988	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-08 16:50:28.762262	t
1839	755	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-11-10 08:25:16.646109	f
1840	783	Học lập trình Python cơ bản	{tech,python}	2025-11-08 05:43:04.806162	t
1841	789	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-03 02:50:18.396674	t
1842	781	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-18 05:35:51.910731	t
1843	500	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-10-08 00:53:47.878055	t
1844	165	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-26 21:52:38.279091	t
1845	330	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-11-11 05:30:45.27577	t
1846	546	Học lập trình Python cơ bản	{tech,python}	2025-11-03 14:04:05.347286	t
1847	748	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-09-29 20:04:09.964185	t
1848	168	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-11-12 00:41:12.430507	t
1849	283	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-25 21:23:02.897441	t
1850	595	Giới thiệu công nghệ AI hiện đại	{general}	2025-09-30 02:47:36.546619	f
1851	233	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-31 11:35:09.592248	t
1852	37	Âm nhạc và cuộc sống	{review,coffee}	2025-10-22 22:16:24.17148	t
1853	735	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-01 12:09:48.633876	t
1854	36	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-09-28 11:59:48.180081	t
1855	79	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-08 11:01:47.590028	t
1856	736	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-27 09:45:16.194157	t
1857	352	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-10-22 19:59:11.917037	t
1858	926	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-04 20:55:35.225125	t
1859	558	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-11-10 20:09:25.72103	f
1860	649	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-03 03:26:41.144305	t
1861	79	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-09-29 09:37:43.912138	f
1862	638	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-08 02:54:07.374053	t
1863	73	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-31 07:25:50.976068	f
1864	568	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-11-06 06:20:39.991296	t
1865	219	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-04 08:12:36.939773	f
1866	601	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-11-03 21:08:28.288047	f
1867	642	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-06 14:32:53.589566	t
1868	529	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-10-11 23:02:24.28608	t
1869	138	Âm nhạc và cuộc sống	{general}	2025-10-02 08:07:57.918531	t
1870	12	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-07 15:29:57.926697	t
1871	269	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-11-04 17:44:59.420019	t
1872	837	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-10-03 20:15:31.698645	t
1873	959	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-23 13:04:03.065367	t
1874	120	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-24 05:57:07.951314	t
1875	649	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-11-01 08:22:43.361932	t
1876	563	Khám phá du lịch Việt Nam	{tech,python}	2025-10-01 10:45:12.547971	t
1877	415	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-01 18:28:25.500534	t
1878	588	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-04 12:49:27.905943	t
1879	775	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-02 00:27:27.767297	f
1880	269	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-16 18:00:02.360472	t
1881	837	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-11-12 00:45:10.677112	t
1882	539	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-10-03 05:05:55.369909	t
1883	305	Học lập trình Python cơ bản	{general}	2025-10-12 06:24:29.497736	t
1884	154	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-17 13:29:51.262212	t
1885	166	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-18 02:36:37.938737	t
1886	471	Giới thiệu công nghệ AI hiện đại	{general}	2025-10-09 03:52:12.884526	f
1887	7	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-11-08 05:18:18.657623	t
1888	456	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-11-10 06:25:18.047208	t
1889	559	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-25 13:13:42.9074	t
1890	178	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-11-03 16:43:14.127951	t
1891	783	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-09-29 19:08:26.643228	t
1892	461	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-02 02:03:16.184143	f
1893	996	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-11-02 17:49:41.351895	f
1894	931	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-09-28 23:00:56.282885	t
1895	677	Review các quán cà phê nổi tiếng	{review,coffee}	2025-09-28 20:01:28.305311	t
1896	826	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-10-29 12:46:22.001506	t
1897	529	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-13 13:37:29.037134	t
1898	680	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-15 19:43:10.403988	t
1899	635	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-06 23:06:45.41357	t
1900	327	Âm nhạc và cuộc sống	{tech,python}	2025-11-08 18:56:14.393792	t
1901	430	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-17 03:06:45.181898	t
1902	356	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-25 09:28:58.667114	t
1903	328	Khám phá du lịch Việt Nam	{food,vietnam}	2025-10-07 12:19:17.709512	t
1904	135	Âm nhạc và cuộc sống	{travel,vietnam}	2025-11-10 11:00:10.2806	t
1905	356	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-05 11:34:27.090291	t
1906	851	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-10 23:26:42.088336	t
1907	693	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-23 08:06:19.527366	t
1908	659	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-20 03:48:39.827827	t
1909	491	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-10-05 17:36:04.006544	t
1910	458	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-10-24 18:41:17.693352	t
1911	607	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-04 10:55:56.933235	f
1912	307	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-10 03:13:33.514563	t
1913	994	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-09-30 22:49:51.836716	t
1914	911	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-06 14:42:13.490519	t
1915	842	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-06 03:49:40.808928	t
1916	344	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-02 13:20:19.846662	t
1917	169	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-01 12:04:40.711142	t
1918	44	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-11 10:08:51.783299	t
1919	546	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-11-11 03:13:06.314362	t
1920	296	Học lập trình Python cơ bản	{food,vietnam}	2025-11-11 21:22:52.240051	t
1921	491	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-06 19:16:46.796722	t
1922	423	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-10-25 12:50:18.520802	t
2039	159	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-04 22:15:46.804048	t
1923	496	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-01 08:44:54.758577	t
1924	273	Học lập trình Python cơ bản	{tech,python}	2025-10-22 16:41:41.479338	t
1925	918	Âm nhạc và cuộc sống	{tech,python}	2025-11-12 05:47:01.968351	t
1926	678	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-25 23:47:19.90496	t
1927	729	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-01 19:16:33.835356	t
1928	98	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-10-03 00:24:07.31549	t
1929	384	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-04 03:17:26.633346	t
1930	821	Học lập trình Python cơ bản	{general}	2025-10-06 10:32:31.626804	t
1931	683	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-11-09 03:59:35.553622	t
1932	89	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-17 14:03:16.35904	t
1933	775	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-11-07 11:50:08.682284	t
1934	668	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-27 12:54:37.328419	t
1935	472	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-11-08 06:56:30.766194	t
1936	474	Học lập trình Python cơ bản	{food,vietnam}	2025-11-12 06:42:18.621841	t
1937	183	Âm nhạc và cuộc sống	{review,coffee}	2025-10-21 11:14:34.162926	t
1938	560	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-08 03:24:11.571179	f
1939	397	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-10-21 00:57:59.665607	t
1940	896	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-11-09 00:50:36.57991	t
1941	798	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-10 07:45:05.956991	t
1942	907	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-02 05:12:13.295599	t
1943	542	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-22 07:30:14.097785	t
1944	566	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-22 16:46:56.115947	t
1945	320	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-18 23:46:20.19609	t
1946	609	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-11-05 18:35:57.636159	t
1947	725	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-30 22:06:22.784983	f
1948	107	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-11-01 09:34:05.018964	t
1949	238	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-11-06 10:06:11.461267	t
1950	772	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-26 20:12:40.090674	t
1951	304	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-08 22:31:48.351891	t
1952	388	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-13 17:35:57.253166	t
1953	248	Học lập trình Python cơ bản	{tech,python}	2025-10-18 19:39:02.42405	t
1954	248	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-06 05:11:55.170263	t
1955	275	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-11 01:04:49.968808	t
1956	197	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-16 23:03:57.436486	f
1957	876	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-17 23:51:14.712389	t
1958	794	Âm nhạc và cuộc sống	{review,coffee}	2025-10-08 00:34:34.675638	t
1959	415	Học lập trình Python cơ bản	{tech,python}	2025-10-23 15:54:06.466692	f
1960	796	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-05 08:35:20.340092	f
1961	658	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-12 16:28:55.590724	t
1962	370	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-23 15:33:35.709933	t
1963	392	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-16 03:58:30.047672	t
1964	134	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-04 14:53:11.909676	t
1965	451	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-23 18:06:33.696795	t
1966	709	Học lập trình Python cơ bản	{travel,vietnam}	2025-10-12 22:36:37.924621	f
1967	33	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-05 11:09:05.038611	t
1968	672	Âm nhạc và cuộc sống	{review,coffee}	2025-11-07 17:44:34.571665	f
1969	23	Học lập trình Python cơ bản	{food,vietnam}	2025-11-08 12:51:20.142422	t
1970	215	Khám phá du lịch Việt Nam	{food,vietnam}	2025-10-05 11:28:41.870601	t
1971	970	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-03 08:28:57.163893	t
1972	740	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-06 22:44:16.786677	t
1973	125	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-22 06:57:45.135758	t
1974	655	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-09-29 11:39:47.641333	t
1975	785	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-28 19:54:39.412564	t
1976	398	Học lập trình Python cơ bản	{food,vietnam}	2025-10-14 22:43:32.104336	t
1977	773	Âm nhạc và cuộc sống	{review,coffee}	2025-10-29 10:18:25.6565	t
1978	849	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-08 09:04:50.409285	t
1979	35	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-07 21:15:59.86112	t
1980	254	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-22 14:38:04.791314	t
1981	714	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-01 02:54:27.99216	t
1982	373	Học lập trình Python cơ bản	{travel,vietnam}	2025-11-10 15:42:48.892854	t
1983	142	Âm nhạc và cuộc sống	{food,vietnam}	2025-11-09 20:28:37.758495	t
1984	59	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-02 05:48:32.796286	t
1985	954	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-13 04:03:42.152741	t
1986	508	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-11-10 07:17:19.037876	t
1987	783	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-22 21:57:40.894059	t
1988	563	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-12 04:11:40.465694	t
1989	491	Khám phá du lịch Việt Nam	{food,vietnam}	2025-10-25 09:01:11.505334	t
1990	517	Âm nhạc và cuộc sống	{tech,python}	2025-10-04 09:01:21.317135	t
1991	534	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-12 12:42:30.860202	t
1992	759	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-23 04:38:52.738715	t
1993	39	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-10 21:53:05.856089	t
1994	493	Học lập trình Python cơ bản	{review,coffee}	2025-10-12 10:38:52.416356	t
1995	169	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-11-04 14:00:26.732261	t
1996	497	Học lập trình Python cơ bản	{ai,machinelearning}	2025-11-06 11:30:30.181579	t
1997	695	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-13 20:50:29.289979	t
1998	101	Học lập trình Python cơ bản	{review,coffee}	2025-10-23 23:40:51.457568	f
1999	213	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-01 09:15:32.708008	t
2000	420	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-06 04:41:01.829617	f
2001	478	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-11-08 12:21:46.117978	t
2002	989	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-08 11:36:47.441253	t
2003	805	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-24 02:12:38.30174	t
2004	800	Khám phá du lịch Việt Nam	{travel,vietnam}	2025-10-18 12:14:55.007589	t
2005	371	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-09-28 20:40:19.160422	f
2006	487	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-09-30 17:00:20.176392	t
2007	959	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-08 08:07:00.624517	t
2008	825	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-01 04:00:01.336764	f
2009	365	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-02 10:46:32.483062	f
2010	989	Học lập trình Python cơ bản	{review,coffee}	2025-11-10 05:29:45.562396	t
2011	315	Âm nhạc và cuộc sống	{travel,vietnam}	2025-10-20 20:48:19.363291	f
2012	819	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-18 19:12:03.066775	f
2013	937	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-08 21:10:33.277007	t
2014	752	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-01 04:35:55.793553	t
2015	789	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-25 05:51:07.840155	f
2016	148	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-02 00:28:15.900005	t
2017	149	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-11-05 09:44:51.077881	t
2018	187	Giới thiệu công nghệ AI hiện đại	{general}	2025-10-30 03:23:42.496756	t
2019	357	Khám phá du lịch Việt Nam	{food,vietnam}	2025-10-03 03:07:24.212252	t
2020	452	Học lập trình Python cơ bản	{tech,python}	2025-10-07 01:07:08.858813	t
2021	469	Học lập trình Python cơ bản	{tech,python}	2025-10-01 07:00:24.807087	t
2022	856	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-14 18:58:15.793107	t
2023	695	Học lập trình Python cơ bản	{general}	2025-11-09 20:17:51.78106	t
2024	412	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-13 03:25:32.393709	f
2025	680	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-11-12 02:41:21.277243	t
2026	295	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-15 15:40:58.366075	t
2027	769	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-13 11:39:04.119363	t
2028	407	Học lập trình Python cơ bản	{review,coffee}	2025-11-05 01:40:36.901056	f
2029	742	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-10 06:15:17.893613	t
2030	749	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-20 03:25:07.490522	t
2031	793	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-21 21:22:00.072585	t
2032	173	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-10-04 10:56:14.910796	t
2033	967	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-21 23:19:57.296656	f
2034	93	Khám phá du lịch Việt Nam	{review,coffee}	2025-11-10 02:13:05.020347	t
2035	650	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-07 05:06:45.026562	t
2036	278	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-11-05 05:15:32.742225	t
2037	947	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-09 21:31:04.929062	t
2038	991	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-11-08 03:02:54.103277	t
2040	784	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-14 17:33:21.749006	t
2041	554	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-11-08 22:29:33.223581	t
2042	92	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-31 12:39:33.015719	t
2043	452	Review các quán cà phê nổi tiếng	{general}	2025-10-28 11:08:28.753253	t
2044	539	Khám phá du lịch Việt Nam	{food,vietnam}	2025-10-28 15:33:43.752746	f
2045	527	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-05 06:46:36.426823	t
2046	623	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-09-30 23:30:38.209253	f
2047	608	Học lập trình Python cơ bản	{food,vietnam}	2025-10-05 00:37:48.554452	t
2048	732	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-11-01 04:02:33.308396	f
2049	304	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-11-09 05:40:19.140783	t
2050	177	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-16 14:45:27.493923	t
2051	823	Khám phá du lịch Việt Nam	{travel,vietnam}	2025-11-10 03:28:49.671952	f
2052	831	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-26 06:01:09.932746	t
2053	771	Âm nhạc và cuộc sống	{food,vietnam}	2025-11-03 06:56:11.048762	t
2054	569	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-13 13:41:16.877684	f
2055	612	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-25 20:08:45.5431	t
2056	919	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-01 21:27:17.896424	t
2057	36	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-06 14:03:36.058492	f
2058	251	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-13 20:22:53.486161	t
2059	229	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-30 21:39:42.893723	t
2060	81	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-06 20:48:04.769056	f
2061	137	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-09-28 23:00:51.117488	t
2062	137	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-21 15:14:40.567568	t
2063	198	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-06 00:23:57.76034	t
2064	978	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-29 15:22:02.64726	t
2065	724	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-12 12:56:13.444191	t
2066	375	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-03 10:00:33.650582	t
2067	886	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-12 02:05:16.51761	f
2068	645	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-11-04 01:27:29.323519	t
2069	642	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-16 06:11:41.402875	t
2070	702	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-22 23:37:12.98462	t
2071	755	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-10 02:53:27.246602	t
2072	179	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-15 12:45:43.672419	t
2073	412	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-13 23:47:21.366177	t
2074	935	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-14 05:20:39.898818	t
2075	238	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-24 18:13:31.924069	t
2076	602	Giới thiệu công nghệ AI hiện đại	{general}	2025-11-11 19:39:23.148477	t
2077	682	Khám phá du lịch Việt Nam	{tech,python}	2025-10-12 10:29:45.702465	t
2078	545	Học lập trình Python cơ bản	{travel,vietnam}	2025-10-19 16:13:40.984914	t
2079	688	Âm nhạc và cuộc sống	{general}	2025-10-28 03:43:46.946468	t
2080	419	Học lập trình Python cơ bản	{food,vietnam}	2025-11-06 03:32:15.163669	t
2081	64	Âm nhạc và cuộc sống	{tech,python}	2025-11-07 20:43:17.515015	f
2082	1000	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-18 14:25:17.502491	t
2083	485	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-22 11:03:30.356962	t
2084	595	Âm nhạc và cuộc sống	{tech,python}	2025-10-16 05:39:18.062179	t
2085	804	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-11-03 16:08:34.943674	t
2086	427	Khám phá du lịch Việt Nam	{food,vietnam}	2025-10-06 11:31:26.546967	t
2087	784	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-11-07 05:30:57.158665	t
2088	787	Âm nhạc và cuộc sống	{review,coffee}	2025-10-18 11:15:52.630115	t
2089	416	Âm nhạc và cuộc sống	{review,coffee}	2025-10-19 11:57:34.502256	t
2090	620	Âm nhạc và cuộc sống	{general}	2025-10-08 15:57:54.328288	t
2091	856	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-21 18:32:01.81844	t
2092	421	Âm nhạc và cuộc sống	{tech,python}	2025-10-16 13:15:52.038089	t
2093	48	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-11-04 18:58:41.404448	t
2094	119	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-11-06 05:53:45.687624	t
2095	541	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-11-02 06:10:50.613907	t
2096	694	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-19 10:56:12.954516	f
2097	756	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-23 19:12:24.199998	t
2098	417	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-11-07 05:58:57.213938	t
2099	43	Học lập trình Python cơ bản	{tech,python}	2025-10-01 22:36:00.857509	t
2100	822	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-09-29 00:48:35.195544	t
2101	680	Học lập trình Python cơ bản	{tech,python}	2025-10-08 01:30:15.728651	f
2102	439	Học lập trình Python cơ bản	{review,coffee}	2025-11-11 12:45:06.175904	t
2103	480	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-25 13:00:34.2028	t
2104	167	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-07 00:07:45.910715	t
2105	454	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-10-31 05:18:02.889934	t
2106	759	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-08 10:40:59.762958	t
2107	95	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-12 01:29:27.417806	t
2108	32	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-11-02 01:14:22.708056	t
2109	903	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-25 04:08:56.878307	t
2110	85	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-09-30 02:52:22.722284	t
2111	808	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-30 16:12:27.293562	t
2112	98	Học lập trình Python cơ bản	{tech,python}	2025-11-06 18:49:19.77524	t
2113	6	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-20 15:04:41.78974	t
2114	762	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-18 09:07:15.108157	t
2115	950	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-28 01:34:18.470726	t
2116	983	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-12 04:48:10.306639	f
2117	540	Học lập trình Python cơ bản	{tech,python}	2025-10-28 06:22:48.220164	t
2118	278	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-09 07:50:01.993245	t
2119	860	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-24 17:19:46.133063	t
2120	1	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-06 09:23:13.452965	t
2121	494	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-09-28 18:05:49.743655	f
2122	685	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-11-07 05:28:44.177047	t
2123	307	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-22 13:28:59.882614	t
2124	998	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-18 14:18:45.164517	t
2125	319	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-02 21:26:26.440239	t
2126	884	Âm nhạc và cuộc sống	{general}	2025-10-03 09:11:18.322073	t
2127	260	Review các quán cà phê nổi tiếng	{general}	2025-11-10 17:32:44.985097	t
2128	270	Review các quán cà phê nổi tiếng	{general}	2025-10-06 20:53:36.070248	t
2129	946	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-14 00:35:11.332618	t
2130	245	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-16 00:49:58.942825	f
2131	46	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-11-01 18:11:31.982164	t
2132	6	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-10-27 23:03:08.896162	t
2133	712	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-22 09:34:54.128606	t
2134	74	Học lập trình Python cơ bản	{food,vietnam}	2025-10-15 10:44:35.884641	t
2135	283	Học lập trình Python cơ bản	{travel,vietnam}	2025-10-26 12:39:57.513422	t
2136	601	Âm nhạc và cuộc sống	{tech,python}	2025-10-23 16:51:34.576883	t
2137	393	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-09 07:09:31.817886	t
2138	744	Review các quán cà phê nổi tiếng	{general}	2025-11-05 18:30:46.12911	t
2139	244	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-10-30 19:07:10.795971	t
2140	951	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-11-01 01:44:23.056154	f
2141	764	Khám phá du lịch Việt Nam	{food,vietnam}	2025-10-10 10:32:04.79901	t
2142	457	Học lập trình Python cơ bản	{ai,machinelearning}	2025-11-07 17:19:35.009188	f
2143	178	Học lập trình Python cơ bản	{tech,python}	2025-11-07 21:51:55.239547	t
2144	348	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-10 23:16:58.927201	f
2145	422	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-11-09 21:00:50.999836	t
2146	155	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-09 23:54:06.559087	f
2147	886	Học lập trình Python cơ bản	{food,vietnam}	2025-10-16 12:00:18.980508	t
2148	188	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-04 07:09:15.003092	t
2149	725	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-27 07:34:08.093657	t
2150	33	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-10-24 13:16:15.893133	t
2151	685	Học lập trình Python cơ bản	{travel,vietnam}	2025-10-03 10:36:59.384385	t
2152	487	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-17 03:01:31.359298	t
2153	260	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-25 03:03:14.923587	t
2154	576	Giới thiệu công nghệ AI hiện đại	{general}	2025-10-17 00:33:51.544775	f
2155	229	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-13 12:33:37.287062	t
2156	21	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-11-04 00:10:03.012571	t
2157	743	Âm nhạc và cuộc sống	{review,coffee}	2025-10-10 21:57:55.756896	f
2158	884	Âm nhạc và cuộc sống	{tech,python}	2025-10-13 09:55:40.389614	t
2159	240	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-10-12 10:44:41.179988	t
2160	826	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-28 19:33:39.709572	t
2161	145	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-19 17:28:19.372916	f
2162	905	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-26 17:59:27.212127	t
2163	810	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-11 18:22:25.58763	t
2164	64	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-30 00:53:37.480032	t
2165	900	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-13 07:00:05.580398	t
2166	21	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-10-20 23:20:58.432278	f
2167	262	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-08 02:59:04.926255	t
2168	6	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-30 09:20:19.143773	f
2169	232	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-16 16:04:16.114478	t
2170	135	Học lập trình Python cơ bản	{review,coffee}	2025-10-12 22:23:56.020203	t
2171	247	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-20 08:05:42.547189	f
2172	732	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-01 21:51:27.974856	t
2173	941	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-11-06 18:07:58.772104	t
2174	93	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-07 11:06:40.898839	t
2175	157	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-16 22:25:43.248426	f
2176	876	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-28 20:18:40.802812	t
2177	238	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-03 23:27:40.006247	t
2178	491	Âm nhạc và cuộc sống	{general}	2025-09-28 20:44:57.496025	t
2179	531	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-07 11:06:47.558958	t
2180	793	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-13 10:28:01.929321	t
2181	605	Âm nhạc và cuộc sống	{tech,python}	2025-09-28 10:53:58.780623	t
2182	309	Khám phá du lịch Việt Nam	{general}	2025-11-12 07:16:23.361593	t
2183	371	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-10-13 07:58:26.324331	t
2184	369	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-10-22 21:00:31.956686	t
2185	388	Khám phá du lịch Việt Nam	{food,vietnam}	2025-10-19 21:33:04.477503	t
2186	265	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-30 09:11:28.787145	t
2187	376	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-15 06:35:11.482975	t
2188	462	Học lập trình Python cơ bản	{review,coffee}	2025-10-27 22:42:41.344844	f
2189	532	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-11-05 18:59:21.839417	t
2190	265	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-01 14:36:42.1266	t
2191	331	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-08 18:53:03.992286	f
2192	562	Khám phá du lịch Việt Nam	{travel,vietnam}	2025-10-08 07:02:28.973688	f
2193	383	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-11-01 00:32:00.756877	t
2194	642	Khám phá du lịch Việt Nam	{food,vietnam}	2025-11-11 21:45:19.933936	t
2195	514	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-19 05:06:05.351432	t
2196	339	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-10 22:03:31.139616	t
2197	117	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-20 08:54:41.731497	t
2198	656	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-11-08 03:27:44.571003	t
2199	364	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-24 15:31:33.401625	t
2200	47	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-31 22:25:43.61275	f
2201	664	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-11-01 01:44:12.586254	t
2202	33	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-11-01 23:02:00.731762	t
2203	546	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-30 08:23:59.366874	t
2204	773	Khám phá du lịch Việt Nam	{tech,python}	2025-11-05 07:07:11.901579	t
2205	274	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-11-08 06:13:44.516731	t
2206	855	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-11-07 02:41:00.357413	t
2207	327	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-17 00:03:39.727819	t
2208	330	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-10-10 11:05:34.3679	t
2209	292	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-22 03:07:51.883511	t
2210	310	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-21 10:55:43.562455	t
2211	307	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-07 03:53:19.074928	f
2212	869	Âm nhạc và cuộc sống	{food,vietnam}	2025-11-01 21:24:21.635864	t
2213	949	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-04 06:21:10.236176	t
2214	404	Học lập trình Python cơ bản	{review,coffee}	2025-10-03 01:22:49.620661	t
2215	376	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-11-06 02:02:02.163797	t
2216	391	Khám phá du lịch Việt Nam	{food,vietnam}	2025-10-01 08:20:22.23016	f
2217	531	Âm nhạc và cuộc sống	{review,coffee}	2025-10-23 23:04:13.574694	t
2218	500	Âm nhạc và cuộc sống	{tech,python}	2025-11-09 01:32:25.938161	t
2219	219	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-09 03:36:39.894919	t
2220	494	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-23 03:23:42.458295	t
2221	605	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-20 04:48:58.179328	t
2222	694	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-04 13:30:23.438526	t
2223	715	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-11-06 14:45:39.320991	t
2224	613	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-11-02 03:06:16.974177	t
2225	778	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-19 22:20:46.399233	t
2226	527	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-26 15:32:49.482118	t
2227	841	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-11-02 22:19:25.346447	t
2228	411	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-11-08 17:36:58.420425	f
2229	157	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-09-29 07:07:12.725717	t
2230	893	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-29 19:59:50.615895	t
2231	293	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-04 19:40:41.292848	t
2232	621	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-11-05 19:33:38.842026	t
2233	49	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-11-02 11:59:11.015586	t
2234	539	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-11-11 19:33:09.016273	t
2235	845	Học lập trình Python cơ bản	{food,vietnam}	2025-10-28 09:05:10.228689	f
2236	879	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-07 13:14:26.270424	t
2237	204	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-11-12 08:06:36.85473	f
2238	117	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-08 08:03:37.617905	f
2239	291	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-11 05:32:04.723821	t
2240	627	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-27 02:29:13.441038	t
2241	163	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-28 04:30:37.364404	t
2242	232	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-10-14 01:51:05.867074	t
2243	788	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-02 03:15:29.072945	t
2244	363	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-26 05:20:58.272025	t
2245	195	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-11-06 14:23:04.191656	t
2246	906	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-22 01:40:36.268807	t
2247	959	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-23 21:33:38.243967	t
2248	493	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-07 21:38:10.651836	t
2249	86	Học lập trình Python cơ bản	{review,coffee}	2025-10-20 00:52:11.499769	f
2250	104	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-16 09:43:35.295035	t
2251	837	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-12 13:11:54.558695	t
2252	761	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-11-04 03:07:03.018146	t
2253	839	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-11-07 16:10:34.869957	t
2254	225	Âm nhạc và cuộc sống	{travel,vietnam}	2025-10-02 15:28:21.602939	t
2255	795	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-23 21:48:19.246112	f
2256	619	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-15 19:16:22.311447	t
2257	603	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-10-16 17:54:59.33417	f
2258	184	Học lập trình Python cơ bản	{food,vietnam}	2025-09-29 13:46:31.385378	t
2259	40	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-22 15:55:33.067543	f
2260	632	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-26 00:48:56.647252	f
2261	442	Âm nhạc và cuộc sống	{tech,python}	2025-11-07 22:03:14.344209	t
2262	677	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-11-03 19:15:25.588586	t
2263	372	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-20 14:01:31.290621	t
2264	824	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-11-01 23:43:56.557865	t
2265	541	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-11-02 16:59:01.188318	t
2266	790	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-18 02:24:27.569913	t
2267	676	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-10-07 17:49:12.801301	t
2268	181	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-09-28 22:23:54.367445	f
2269	79	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-10-11 13:01:23.401978	t
2270	861	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-11-01 03:18:11.433963	t
2271	301	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-24 14:51:45.583803	t
2272	418	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-07 12:37:41.948617	t
2273	633	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-22 13:23:44.018993	f
2274	823	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-02 06:46:08.66015	f
2275	551	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-06 08:38:51.350099	t
2276	223	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-09 06:43:00.398351	t
2277	964	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-10-29 15:40:37.528583	t
2278	338	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-07 09:43:02.927833	t
2279	168	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-09-29 13:34:41.887141	f
2280	560	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-09-30 01:06:53.172389	t
2281	462	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-01 23:32:22.74655	t
2282	891	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-24 11:46:35.040694	t
2283	371	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-09-29 10:32:45.881911	t
2284	107	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-03 04:09:31.3989	t
2285	369	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-11 12:07:19.211608	t
2286	517	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-11-07 12:57:34.261667	t
2287	362	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-31 01:27:15.13724	t
2288	302	Review các quán cà phê nổi tiếng	{review,coffee}	2025-11-11 06:05:33.437013	f
2289	673	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-11-11 01:42:18.948997	t
2290	358	Khám phá du lịch Việt Nam	{tech,python}	2025-10-30 13:33:51.218508	t
2291	148	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-12 20:00:53.338061	t
2292	676	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-08 19:43:07.933268	t
2293	297	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-10 13:40:54.179011	t
2294	877	Học lập trình Python cơ bản	{food,vietnam}	2025-09-29 19:07:31.721339	t
2295	519	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-15 12:22:55.999657	t
2296	331	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-11-05 05:56:47.996075	t
2297	616	Âm nhạc và cuộc sống	{tech,python}	2025-10-10 01:56:28.990749	f
2298	970	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-30 03:25:24.81222	t
2299	41	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-11-11 19:44:12.832765	t
2300	321	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-31 04:19:48.339757	t
2301	794	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-10-11 22:03:35.095723	t
2302	825	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-02 07:50:56.069461	t
2303	811	Học lập trình Python cơ bản	{travel,vietnam}	2025-10-23 01:06:13.715483	t
2304	502	Học lập trình Python cơ bản	{general}	2025-11-01 18:56:03.73578	t
2305	557	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-14 22:13:42.27236	f
2306	207	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-03 16:14:35.892329	t
2307	683	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-13 07:56:19.75585	t
2308	963	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-26 19:38:32.455338	t
2309	740	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-11-09 21:33:28.717266	f
2310	611	Học lập trình Python cơ bản	{tech,python}	2025-10-15 08:54:25.310639	t
2311	119	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-24 01:43:34.264347	t
2312	84	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-18 03:36:35.643	t
2313	144	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-05 05:23:00.8901	t
2314	934	Học lập trình Python cơ bản	{review,coffee}	2025-11-07 20:50:11.433874	f
2315	901	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-11-01 03:16:47.709177	t
2316	302	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-01 05:27:47.402314	t
2317	568	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-11-03 12:58:55.108978	t
2318	11	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-18 16:19:35.664041	t
2319	41	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-31 16:09:17.032803	t
2320	210	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-14 21:30:03.146564	t
2321	108	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-12 07:13:23.82075	f
2322	854	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-22 03:15:44.463131	t
2323	910	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-07 06:57:21.946829	t
2324	863	Âm nhạc và cuộc sống	{tech,python}	2025-11-09 03:21:02.072875	t
2325	417	Học lập trình Python cơ bản	{tech,python}	2025-10-01 21:39:41.15858	t
2326	429	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-15 16:55:15.376569	t
2327	797	Khám phá du lịch Việt Nam	{tech,python}	2025-10-04 05:10:55.593769	t
2328	919	Học lập trình Python cơ bản	{review,coffee}	2025-10-27 17:37:28.177889	t
2329	887	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-22 02:41:00.221935	t
2330	355	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-20 17:38:53.495976	t
2331	137	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-04 18:27:01.453209	t
2332	858	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-11 01:11:28.799827	t
2333	792	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-11-08 05:57:30.07757	t
2334	362	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-26 12:53:07.04638	t
2335	790	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-17 10:29:30.30492	t
2336	698	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-25 02:01:28.040638	t
2337	864	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-11-01 16:16:04.80779	t
2338	910	Khám phá du lịch Việt Nam	{food,vietnam}	2025-09-29 16:28:43.217379	t
2339	328	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-11-11 22:45:08.321103	t
2340	184	Âm nhạc và cuộc sống	{tech,python}	2025-11-02 01:09:14.432151	t
2341	792	Học lập trình Python cơ bản	{food,vietnam}	2025-11-01 13:42:53.660383	f
2342	792	Âm nhạc và cuộc sống	{travel,vietnam}	2025-11-04 22:49:06.299334	t
2343	444	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-10-05 21:30:10.694864	t
2344	446	Âm nhạc và cuộc sống	{tech,python}	2025-10-25 21:34:09.100619	t
2345	889	Âm nhạc và cuộc sống	{food,vietnam}	2025-11-07 11:32:00.405481	t
2346	636	Học lập trình Python cơ bản	{tech,python}	2025-10-03 03:13:04.29845	t
2347	275	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-10-12 08:56:15.648556	t
2348	600	Học lập trình Python cơ bản	{review,coffee}	2025-10-14 16:00:36.450954	t
2349	277	Âm nhạc và cuộc sống	{tech,python}	2025-10-02 05:30:47.765003	t
2350	440	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-13 09:10:09.131432	t
2351	503	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-10-23 07:55:31.155187	t
2352	420	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-11-06 14:11:43.507097	t
2353	534	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-31 15:47:18.540701	t
2354	336	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-07 14:53:15.013075	t
2355	110	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-09-29 12:21:54.176722	t
2356	617	Học lập trình Python cơ bản	{general}	2025-10-12 06:26:45.621606	t
2357	53	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-11-09 17:30:56.137203	f
2358	366	Giới thiệu công nghệ AI hiện đại	{general}	2025-11-02 04:10:52.196312	t
2359	443	Âm nhạc và cuộc sống	{general}	2025-11-10 08:49:38.604178	t
2360	688	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-03 17:04:58.652128	t
2361	74	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-07 01:01:26.393847	t
2362	52	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-17 04:02:36.246296	f
2363	600	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-11 12:54:34.365245	t
2364	973	Học lập trình Python cơ bản	{general}	2025-10-21 09:19:00.739918	t
2365	628	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-16 21:20:15.610261	t
2366	333	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-10-01 13:01:59.6656	t
2367	245	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-28 08:44:52.093808	f
2368	808	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-19 21:33:33.927599	t
2369	650	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-12 06:46:08.698987	t
2370	411	Âm nhạc và cuộc sống	{review,coffee}	2025-10-08 03:12:02.688883	t
2371	117	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-21 06:04:01.624991	t
2372	312	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-06 12:25:47.08412	t
2373	992	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-10 18:19:51.014804	t
2374	502	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-19 22:10:09.179288	t
2375	849	Học lập trình Python cơ bản	{review,coffee}	2025-10-10 14:57:34.279173	t
2376	895	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-03 04:06:19.779191	t
2377	222	Review các quán cà phê nổi tiếng	{tech,python}	2025-09-30 10:02:30.892928	t
2378	760	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-11-10 01:09:09.088828	t
2379	700	Âm nhạc và cuộc sống	{review,coffee}	2025-10-10 09:39:40.069998	t
2380	980	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-31 06:09:30.015247	f
2381	806	Học lập trình Python cơ bản	{food,vietnam}	2025-10-10 17:03:12.458405	f
2382	425	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-30 21:40:08.543339	t
2383	130	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-09-29 18:21:37.882205	t
2384	389	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-15 02:26:29.13098	f
2385	948	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-01 08:02:40.355009	t
2386	334	Giới thiệu công nghệ AI hiện đại	{general}	2025-10-20 08:36:57.673038	t
2387	67	Giới thiệu công nghệ AI hiện đại	{general}	2025-10-11 23:52:59.314425	t
2388	402	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-27 03:02:10.286064	t
2621	934	Review các quán cà phê nổi tiếng	{general}	2025-10-25 16:57:48.74969	f
2389	143	Giới thiệu công nghệ AI hiện đại	{general}	2025-10-05 01:12:56.34848	t
2390	849	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-11-03 02:43:29.569045	t
2391	414	Học lập trình Python cơ bản	{review,coffee}	2025-10-10 15:00:42.941835	t
2392	970	Âm nhạc và cuộc sống	{review,coffee}	2025-10-18 17:04:29.697973	t
2393	430	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-07 15:29:36.590296	t
2394	620	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-11 07:25:20.70612	f
2395	429	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-28 20:20:13.804327	t
2396	699	Khám phá du lịch Việt Nam	{food,vietnam}	2025-10-20 03:18:52.261172	f
2397	34	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-03 09:02:05.940194	t
2398	1	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-19 07:59:31.697209	t
2399	680	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-05 05:27:45.490468	t
2400	816	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-10-16 13:01:54.137663	t
2401	988	Học lập trình Python cơ bản	{general}	2025-10-06 10:14:22.999558	t
2402	682	Học lập trình Python cơ bản	{tech,python}	2025-11-06 09:38:59.049873	t
2403	80	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-04 14:11:23.804286	t
2404	486	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-21 03:40:43.398498	t
2405	191	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-10-23 21:35:21.949693	t
2406	259	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-26 20:07:28.447797	f
2407	363	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-16 05:53:02.6184	t
2408	85	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-11-01 00:05:05.356878	t
2409	315	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-10-22 16:14:01.950092	t
2410	997	Khám phá du lịch Việt Nam	{review,coffee}	2025-11-05 20:36:19.137098	t
2411	269	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-03 15:27:27.108361	t
2412	463	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-10 13:18:27.501207	t
2413	915	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-15 11:13:28.232525	f
2414	177	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-10-10 16:24:28.004992	f
2415	913	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-29 13:19:48.200598	t
2416	74	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-31 22:42:58.397976	t
2417	817	Âm nhạc và cuộc sống	{general}	2025-10-14 18:22:43.704525	t
2418	310	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-22 21:46:15.793997	t
2419	586	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-16 20:12:22.199174	t
2420	453	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-09 00:23:36.95027	t
2421	481	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-19 14:24:03.701896	t
2422	843	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-11-01 09:42:50.70596	t
2423	701	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-09 14:57:20.55202	t
2424	383	Âm nhạc và cuộc sống	{travel,vietnam}	2025-11-12 09:18:55.751459	t
2425	289	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-10-17 20:06:02.554777	t
2426	738	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-09-29 16:22:10.063831	t
2427	739	Học lập trình Python cơ bản	{food,vietnam}	2025-09-28 10:34:24.147954	t
2428	689	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-10-06 14:18:06.171793	t
2429	563	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-07 18:53:09.049084	t
2430	325	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-09-29 15:56:12.682196	t
2431	173	Âm nhạc và cuộc sống	{tech,python}	2025-09-29 10:52:47.069194	t
2432	706	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-07 12:56:29.399363	t
2433	114	Âm nhạc và cuộc sống	{tech,python}	2025-11-09 15:58:58.052993	t
2434	164	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-13 21:19:53.632942	t
2435	528	Học lập trình Python cơ bản	{tech,python}	2025-10-22 22:11:30.333797	t
2436	395	Học lập trình Python cơ bản	{tech,python}	2025-10-11 16:03:07.165923	t
2437	906	Học lập trình Python cơ bản	{general}	2025-10-15 18:57:18.797311	t
2438	625	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-01 04:40:30.314703	t
2439	470	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-11-02 15:52:54.136463	t
2440	41	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-11-11 15:42:31.272465	t
2441	435	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-11-06 13:10:58.477755	t
2442	549	Khám phá du lịch Việt Nam	{review,coffee}	2025-11-11 10:13:25.69617	t
2443	182	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-03 05:05:02.244992	t
2444	413	Học lập trình Python cơ bản	{tech,python}	2025-10-28 05:00:49.983127	f
2445	677	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-27 11:54:44.244998	f
2446	295	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-10-25 06:05:34.271302	t
2447	673	Học lập trình Python cơ bản	{review,coffee}	2025-10-23 09:33:50.820159	t
2448	115	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-24 19:37:45.598138	t
2449	666	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-03 04:26:36.383603	t
2450	493	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-09-30 22:37:30.614986	t
2451	667	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-05 18:10:53.020983	f
2452	241	Âm nhạc và cuộc sống	{food,vietnam}	2025-11-01 08:46:51.963091	t
2453	818	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-05 21:52:00.339186	t
2454	755	Âm nhạc và cuộc sống	{food,vietnam}	2025-11-11 12:12:56.814628	t
2455	942	Học lập trình Python cơ bản	{review,coffee}	2025-10-12 22:04:29.071383	t
2456	831	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-09-28 18:35:13.311665	t
2457	232	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-13 11:31:41.535608	t
2458	248	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-05 06:02:16.870071	f
2459	410	Âm nhạc và cuộc sống	{food,vietnam}	2025-11-04 06:23:49.473085	t
2460	145	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-01 06:15:10.837156	t
2461	299	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-11-07 15:04:48.017961	t
2462	975	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-11-05 21:22:55.009856	t
2463	400	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-11-03 21:22:31.477406	t
2464	501	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-15 18:58:21.858646	t
2465	945	Khám phá du lịch Việt Nam	{food,vietnam}	2025-11-10 05:06:27.356343	t
2466	550	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-15 02:53:47.46077	t
2467	37	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-24 04:52:04.713444	t
2468	728	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-11 22:32:32.944734	t
2469	426	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-11-03 00:23:05.265	t
2470	7	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-25 15:47:58.964075	t
2471	364	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-11-07 05:09:32.689276	t
2472	800	Review các quán cà phê nổi tiếng	{general}	2025-10-09 02:28:54.466722	t
2473	408	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-10 08:14:19.157716	f
2474	124	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-31 11:14:34.882555	t
2475	357	Học lập trình Python cơ bản	{review,coffee}	2025-10-05 20:05:30.600514	t
2476	557	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-23 01:51:47.355569	t
2477	162	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-07 11:50:43.429922	t
2478	40	Khám phá du lịch Việt Nam	{food,vietnam}	2025-10-10 04:45:30.751465	t
2479	743	Học lập trình Python cơ bản	{review,coffee}	2025-10-24 19:41:40.665374	t
2480	124	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-21 23:27:27.95129	t
2481	924	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-18 17:07:33.28113	t
2482	534	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-11-04 04:40:48.773378	t
2483	741	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-29 06:06:40.686335	f
2484	93	Học lập trình Python cơ bản	{tech,python}	2025-10-02 21:53:10.243012	t
2485	584	Học lập trình Python cơ bản	{review,coffee}	2025-11-04 12:20:18.350676	t
2486	289	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-21 14:49:59.627795	t
2487	500	Học lập trình Python cơ bản	{tech,python}	2025-11-10 20:59:12.920982	t
2488	292	Review các quán cà phê nổi tiếng	{general}	2025-11-04 02:03:19.141883	f
2489	571	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-02 13:49:23.440333	f
2490	876	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-11-07 12:25:14.107042	f
2491	448	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-21 02:50:46.346606	t
2492	858	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-09-30 03:42:52.858362	t
2493	113	Khám phá du lịch Việt Nam	{food,vietnam}	2025-11-06 00:41:29.708823	t
2494	931	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-26 12:45:32.689015	t
2495	761	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-11-08 13:28:55.762807	t
2496	764	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-25 21:16:21.50931	t
2497	407	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-16 14:18:24.571616	f
2498	23	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-10 16:37:20.041603	t
2499	261	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-09 18:57:55.062402	t
2500	807	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-13 05:05:12.230264	t
2501	615	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-22 03:04:55.946844	t
2502	889	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-01 11:52:59.39335	t
2503	496	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-11-05 10:08:00.372011	f
2504	337	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-07 19:11:41.614406	t
2505	940	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-19 16:45:42.753601	t
2506	108	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-29 21:54:38.570279	f
2507	944	Âm nhạc và cuộc sống	{tech,python}	2025-10-22 04:31:46.040116	t
2508	697	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-03 16:57:49.069781	t
2509	330	Học lập trình Python cơ bản	{travel,vietnam}	2025-10-07 17:42:07.17087	f
2510	276	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-11-09 04:42:03.467703	t
2511	898	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-22 06:55:26.616556	t
2512	968	Review các quán cà phê nổi tiếng	{general}	2025-09-30 07:58:45.706861	t
2513	270	Học lập trình Python cơ bản	{tech,python}	2025-11-04 14:01:12.081839	f
2514	626	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-06 10:15:53.99016	f
2515	685	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-08 19:14:20.659329	f
2516	783	Âm nhạc và cuộc sống	{tech,python}	2025-10-25 18:16:54.41573	t
2517	303	Khám phá du lịch Việt Nam	{food,vietnam}	2025-10-22 02:05:50.440173	t
2518	639	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-07 15:24:42.892946	t
2519	382	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-03 02:03:41.322097	t
2520	422	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-11-09 16:37:45.286066	t
2521	9	Học lập trình Python cơ bản	{tech,python}	2025-10-27 06:51:10.763323	t
2522	355	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-02 00:58:18.69849	t
2523	454	Học lập trình Python cơ bản	{tech,python}	2025-11-04 02:48:07.058417	t
2524	838	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-08 03:51:29.534453	t
2525	143	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-31 05:55:18.229746	t
2526	256	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-10-23 13:27:52.939621	t
2527	271	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-07 13:39:42.340038	t
2528	315	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-10-20 09:19:39.780188	f
2529	918	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-09-28 16:53:03.17233	t
2530	368	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-23 11:29:05.53673	t
2531	677	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-07 16:54:01.472549	t
2532	413	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-11-08 12:47:26.555155	t
2533	151	Review các quán cà phê nổi tiếng	{tech,python}	2025-11-07 18:21:03.744019	f
2534	516	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-01 22:56:11.505258	t
2535	49	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-07 05:50:27.159375	t
2536	597	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-20 08:49:52.621686	f
2537	806	Học lập trình Python cơ bản	{review,coffee}	2025-10-31 05:01:11.53134	t
2538	210	Học lập trình Python cơ bản	{tech,python}	2025-10-01 22:42:42.846004	f
2539	754	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-11-02 07:26:13.340545	t
2540	842	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-16 14:28:18.600543	t
2541	879	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-25 03:10:39.920274	t
2542	326	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-09-30 23:45:15.87226	t
2543	224	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-28 07:31:02.253361	t
2544	975	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-13 04:12:48.752521	t
2545	29	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-27 16:31:46.843077	t
2546	118	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-11-04 04:37:57.576251	t
2547	891	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-27 13:33:59.524709	f
2548	175	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-26 20:32:06.974245	t
2549	267	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-19 12:21:40.902518	t
2550	602	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-09-29 08:21:57.556485	t
2551	909	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-01 23:25:16.562151	t
2552	937	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-14 06:24:38.691262	t
2553	136	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-18 09:37:53.086674	t
2554	978	Thể thao và sức khỏe mỗi ngày	{general}	2025-11-07 05:10:42.185387	f
2555	577	Khám phá du lịch Việt Nam	{food,vietnam}	2025-10-15 14:13:25.610781	t
2556	740	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-14 09:37:32.664869	t
2557	385	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-09-28 15:53:41.746564	t
2558	894	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-06 13:28:38.74359	t
2559	521	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-08 18:40:02.38609	t
2560	355	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-11-01 07:49:12.040274	t
2561	571	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-11-05 20:10:35.050212	t
2562	336	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-11-03 08:27:22.282022	t
2563	50	Giới thiệu công nghệ AI hiện đại	{general}	2025-09-30 21:45:49.893469	t
2564	183	Review các quán cà phê nổi tiếng	{general}	2025-10-07 14:54:24.776577	t
2565	751	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-09-30 15:35:30.514875	f
2566	955	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-14 06:41:15.672972	t
2567	654	Âm nhạc và cuộc sống	{travel,vietnam}	2025-11-03 14:15:29.144976	t
2568	649	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-09-28 11:38:15.401947	t
2569	799	Giới thiệu công nghệ AI hiện đại	{general}	2025-10-10 22:58:50.70595	t
2570	935	Review các quán cà phê nổi tiếng	{tech,python}	2025-11-07 01:18:23.702708	t
2571	997	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-11-01 22:30:37.463174	t
2572	778	Học lập trình Python cơ bản	{tech,python}	2025-11-12 09:25:12.779372	t
2573	549	Giới thiệu công nghệ AI hiện đại	{general}	2025-11-01 02:42:06.309951	t
2574	904	Học lập trình Python cơ bản	{tech,python}	2025-11-08 21:08:48.675241	t
2575	736	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-10-29 23:03:24.612576	t
2576	907	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-12 00:45:43.386095	t
2577	818	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-26 17:13:36.32516	t
2578	133	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-10-05 13:48:32.555132	t
2579	231	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-31 00:36:38.506006	t
2580	133	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-19 07:09:18.427133	t
2581	969	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-10-26 17:38:53.265508	f
2582	867	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-08 08:19:00.493278	t
2583	95	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-09-30 08:28:57.566396	f
2584	7	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-21 08:52:15.903205	t
2585	205	Học lập trình Python cơ bản	{review,coffee}	2025-10-08 20:34:20.283712	t
2586	502	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-13 01:06:42.370088	f
2587	128	Học lập trình Python cơ bản	{review,coffee}	2025-11-03 13:23:59.223815	t
2588	502	Review các quán cà phê nổi tiếng	{general}	2025-10-16 04:36:57.726009	t
2589	321	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-10-25 01:39:07.32229	t
2590	503	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-11 04:42:35.396964	t
2591	452	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-26 16:53:46.777837	t
2592	476	Học lập trình Python cơ bản	{ai,machinelearning}	2025-11-06 09:42:50.890715	f
2593	827	Học lập trình Python cơ bản	{review,coffee}	2025-11-09 12:23:30.077778	t
2594	345	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-25 04:39:26.467974	t
2595	705	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-01 00:11:20.041356	t
2596	586	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-09-30 12:39:00.486283	t
2597	330	Âm nhạc và cuộc sống	{general}	2025-11-09 15:20:19.141116	f
2598	252	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-11-07 03:52:17.227467	t
2599	269	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-12 22:28:24.636706	t
2600	504	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-03 09:57:43.847028	t
2601	307	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-04 01:39:39.972003	t
2602	873	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-09 14:45:12.348444	t
2603	738	Khám phá du lịch Việt Nam	{tech,python}	2025-10-30 18:35:15.713221	t
2604	491	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-10-31 00:10:57.802745	t
2605	947	Học lập trình Python cơ bản	{food,vietnam}	2025-11-10 03:09:10.074485	t
2606	935	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-27 18:47:34.119345	f
2607	810	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-11-09 23:45:43.166827	t
2608	678	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-14 20:27:16.376181	t
2609	898	Khám phá du lịch Việt Nam	{general}	2025-10-04 21:16:04.729938	t
2610	195	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-11-08 17:03:53.424936	f
2611	280	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-16 17:11:15.710367	t
2612	747	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-10-11 17:21:25.336102	t
2613	511	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-09-30 20:20:08.306322	t
2614	183	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-26 05:07:13.292814	t
2615	141	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-01 02:05:30.405082	t
2616	138	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-06 01:51:53.674214	t
2617	381	Review các quán cà phê nổi tiếng	{review,coffee}	2025-11-09 09:20:11.728054	t
2618	291	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-19 07:03:30.944184	t
2619	410	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-07 05:44:01.959329	t
2620	259	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-10 16:27:19.44315	t
2622	321	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-11-12 00:45:54.83892	t
2623	186	Học lập trình Python cơ bản	{food,vietnam}	2025-10-01 05:40:34.299964	t
2624	29	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-08 17:02:11.37002	t
2625	338	Giới thiệu công nghệ AI hiện đại	{general}	2025-10-13 15:15:26.033804	t
2626	181	Review các quán cà phê nổi tiếng	{tech,python}	2025-09-28 17:40:49.223892	t
2627	734	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-11 23:40:45.671771	f
2628	695	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-27 13:48:27.263781	t
2629	732	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-09-28 21:03:55.830566	t
2630	464	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-11-10 07:35:45.324045	t
2631	712	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-07 19:38:54.971685	t
2632	688	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-06 08:54:35.771048	t
2633	620	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-26 21:07:59.416701	t
2634	308	Review các quán cà phê nổi tiếng	{general}	2025-09-30 16:50:50.050453	t
2635	712	Review các quán cà phê nổi tiếng	{general}	2025-11-02 19:07:29.906353	t
2636	683	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-21 00:52:15.502982	f
2637	94	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-03 16:16:59.435275	t
2638	689	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-14 07:28:43.478204	t
2639	755	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-23 19:21:53.067408	t
2640	357	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-18 11:11:24.279142	t
2641	365	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-14 18:04:33.934852	f
2642	893	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-10-16 22:02:26.145915	f
2643	567	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-11-07 17:02:20.075718	t
2644	295	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-15 21:32:05.232515	t
2645	250	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-06 14:02:19.174312	t
2646	46	Âm nhạc và cuộc sống	{general}	2025-11-02 01:14:32.598333	t
2647	409	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-18 10:34:47.618611	f
2648	43	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-26 16:16:43.10421	t
2649	422	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-24 19:31:30.509768	t
2650	771	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-19 04:36:55.015717	t
2651	822	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-04 15:31:13.009321	t
2652	449	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-04 08:19:47.160006	t
2653	934	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-11-08 00:15:56.776012	t
2654	990	Âm nhạc và cuộc sống	{review,coffee}	2025-11-02 01:17:46.002186	t
2655	191	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-11-10 06:06:51.369795	t
2656	376	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-26 15:41:12.20759	t
2657	34	Review các quán cà phê nổi tiếng	{tech,python}	2025-09-29 00:31:42.414435	t
2658	291	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-09-29 03:41:37.260177	f
2659	261	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-09 12:15:11.370498	t
2660	113	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-27 01:14:50.532212	t
2661	366	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-10 09:48:03.747929	f
2662	136	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-05 04:18:15.265397	t
2663	370	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-03 15:42:42.731291	t
2664	4	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-11-01 01:48:38.55318	t
2665	662	Khám phá du lịch Việt Nam	{general}	2025-10-02 09:28:08.100138	t
2666	12	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-10-22 15:31:37.438066	t
2667	278	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-09 16:38:11.356531	t
2668	601	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-19 12:15:45.253698	t
2669	993	Khám phá du lịch Việt Nam	{travel,vietnam}	2025-10-07 10:52:15.780785	f
2670	286	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-11-11 10:09:14.085853	t
2671	927	Review các quán cà phê nổi tiếng	{general}	2025-10-29 14:47:31.026149	t
2672	532	Học lập trình Python cơ bản	{tech,python}	2025-10-24 23:38:31.369796	t
2673	134	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-27 22:11:09.439539	t
2674	191	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-09-29 02:52:07.353618	t
2675	340	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-02 23:09:17.799219	t
2676	177	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-31 08:56:23.194808	t
2677	749	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-24 03:57:52.898116	t
2678	717	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-02 11:18:46.815198	t
2679	894	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-22 03:13:12.362607	t
2680	265	Học lập trình Python cơ bản	{general}	2025-10-19 08:20:47.830014	t
2681	860	Âm nhạc và cuộc sống	{tech,python}	2025-10-29 22:00:06.688869	f
2682	442	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-09-30 08:01:13.475591	t
2683	971	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-11-10 03:37:34.426532	t
2684	551	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-28 19:24:10.432925	t
2685	861	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-20 02:38:00.80231	t
2686	261	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-02 03:18:50.86743	t
2687	227	Học lập trình Python cơ bản	{general}	2025-10-11 16:05:03.214166	t
2688	439	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-04 16:44:13.914081	t
2689	664	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-03 12:29:06.445406	f
2690	748	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-17 22:53:33.668679	t
2691	211	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-22 16:26:05.682854	f
2692	819	Âm nhạc và cuộc sống	{tech,python}	2025-10-16 11:58:07.852438	t
2693	803	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-11 09:11:31.312581	f
2694	240	Âm nhạc và cuộc sống	{food,vietnam}	2025-11-02 12:02:01.57304	t
2695	811	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-07 15:14:43.260007	f
2696	814	Học lập trình Python cơ bản	{review,coffee}	2025-10-30 15:11:03.885518	t
2697	170	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-07 22:32:18.26075	t
2698	499	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-31 16:45:41.205969	t
2699	587	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-06 10:14:53.444661	t
2700	935	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-23 04:10:20.297875	t
2701	264	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-10-13 04:58:01.001619	t
2702	633	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-09-29 04:15:49.88507	t
2703	526	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-11-02 14:02:21.606036	t
2704	267	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-24 00:33:30.488657	t
2705	862	Giới thiệu công nghệ AI hiện đại	{general}	2025-11-06 20:36:02.055827	t
2706	417	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-08 09:38:13.84653	t
2707	591	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-24 17:08:02.919743	t
2708	737	Học lập trình Python cơ bản	{food,vietnam}	2025-10-01 05:48:51.764415	t
2709	374	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-15 03:09:25.152957	t
2710	181	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-11-06 00:27:45.287436	t
2711	301	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-05 18:09:15.975656	t
2712	795	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-13 21:45:42.211482	t
2713	514	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-03 13:06:33.53946	t
2714	635	Âm nhạc và cuộc sống	{food,vietnam}	2025-11-08 03:21:20.059921	t
2715	619	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-05 23:20:49.986528	f
2716	44	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-28 03:32:11.929318	t
2717	412	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-09-30 07:33:45.913662	t
2718	881	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-11 21:36:29.307502	t
2719	557	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-19 10:00:52.996558	t
2720	848	Khám phá du lịch Việt Nam	{food,vietnam}	2025-10-17 22:20:53.682692	t
2721	907	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-10 23:58:58.877137	t
2722	711	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-27 21:50:14.561642	t
2723	661	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-05 13:50:51.676574	f
2724	166	Khám phá du lịch Việt Nam	{food,vietnam}	2025-10-13 18:50:07.110054	t
2725	528	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-05 21:04:48.767185	t
2726	179	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-08 09:52:27.042964	t
2727	181	Âm nhạc và cuộc sống	{tech,python}	2025-11-05 20:15:34.098017	t
2728	705	Âm nhạc và cuộc sống	{review,coffee}	2025-11-11 09:55:28.639483	t
2729	567	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-10 12:24:45.41444	t
2730	997	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-11-10 13:12:01.980037	f
2731	271	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-11-02 02:06:03.824522	t
2732	392	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-04 10:29:00.890765	t
2733	263	Giới thiệu công nghệ AI hiện đại	{general}	2025-10-24 11:27:19.98967	t
2734	242	Review các quán cà phê nổi tiếng	{tech,python}	2025-11-04 21:38:51.096876	t
2735	532	Khám phá du lịch Việt Nam	{food,vietnam}	2025-11-02 15:54:19.268691	t
2736	630	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-24 12:06:51.067543	t
2737	342	Học lập trình Python cơ bản	{ai,machinelearning}	2025-11-06 18:11:40.788182	t
2738	698	Học lập trình Python cơ bản	{tech,python}	2025-10-26 03:13:01.740894	t
2739	269	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-13 16:51:49.375393	t
2740	52	Âm nhạc và cuộc sống	{review,coffee}	2025-10-29 20:20:55.721999	t
2741	702	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-16 11:37:15.07268	t
2742	793	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-12 14:27:06.665591	t
2743	373	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-04 03:38:52.086952	t
2744	114	Học lập trình Python cơ bản	{food,vietnam}	2025-09-29 12:08:24.872725	t
2745	129	Khám phá du lịch Việt Nam	{travel,vietnam}	2025-10-29 09:32:42.264315	f
2746	333	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-11-05 09:48:01.144392	t
2747	150	Thể thao và sức khỏe mỗi ngày	{general}	2025-11-04 04:48:40.050411	t
2748	981	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-26 13:17:20.390114	t
2749	494	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-24 10:12:28.582162	t
2750	532	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-28 18:09:52.963359	t
2751	78	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-31 17:50:02.465021	t
2752	415	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-11 12:25:22.338875	t
2753	342	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-11-10 08:02:20.162183	t
2754	903	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-18 15:16:21.841898	t
2755	433	Học lập trình Python cơ bản	{review,coffee}	2025-10-19 23:10:04.914611	t
2756	347	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-29 04:32:31.842492	t
2757	955	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-24 16:56:34.841718	t
2758	655	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-24 13:14:57.495756	t
2759	573	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-25 23:21:56.729386	f
2760	517	Học lập trình Python cơ bản	{general}	2025-11-11 14:09:11.762588	f
2761	130	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-10-11 00:16:28.358518	t
2762	150	Review các quán cà phê nổi tiếng	{tech,python}	2025-11-07 00:21:46.600824	t
2763	777	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-06 04:18:39.676132	t
2764	625	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-13 12:12:50.154576	t
2765	334	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-11-11 17:12:40.191906	t
2766	290	Review các quán cà phê nổi tiếng	{general}	2025-10-02 13:20:23.049173	t
2767	987	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-10-07 02:32:37.874943	t
2768	876	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-02 09:56:05.836425	t
2769	628	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-11-08 05:04:34.878055	t
2770	691	Học lập trình Python cơ bản	{review,coffee}	2025-10-27 03:47:42.453915	t
2771	710	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-10-11 18:15:53.415977	f
2772	58	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-30 22:35:40.267312	t
2773	148	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-15 11:52:46.37961	t
2774	4	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-11 21:40:47.965457	f
2775	681	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-11-03 06:28:43.291996	t
2776	521	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-31 18:51:34.067836	t
2777	531	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-04 10:31:13.035737	t
2778	514	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-07 04:12:44.703108	t
2779	799	Âm nhạc và cuộc sống	{tech,python}	2025-10-22 15:23:07.343275	t
2780	549	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-10-16 14:39:20.726109	t
2781	722	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-10-08 09:31:09.283236	t
2782	146	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-11-02 15:37:50.911422	t
2783	394	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-16 05:42:21.003035	t
2784	445	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-11-08 08:16:17.763212	t
2785	637	Âm nhạc và cuộc sống	{review,coffee}	2025-10-27 03:52:21.269958	f
2786	290	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-16 07:52:38.399069	f
2787	634	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-11-05 18:48:03.469962	t
2788	517	Khám phá du lịch Việt Nam	{food,vietnam}	2025-11-07 14:11:02.92306	t
2789	106	Âm nhạc và cuộc sống	{review,coffee}	2025-10-02 03:29:20.872776	f
2790	113	Review các quán cà phê nổi tiếng	{general}	2025-11-01 07:42:14.335571	f
2791	385	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-10-23 19:10:09.047565	t
2792	35	Thể thao và sức khỏe mỗi ngày	{general}	2025-11-06 19:38:11.740833	t
2793	218	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-18 17:21:33.631973	t
2794	287	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-10 17:50:28.427373	t
2795	841	Khám phá du lịch Việt Nam	{food,vietnam}	2025-10-26 14:38:57.176352	t
2796	927	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-11-03 14:35:10.089357	t
2797	276	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-29 16:48:02.234002	t
2798	960	Âm nhạc và cuộc sống	{tech,python}	2025-10-30 12:40:45.272041	t
2799	644	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-15 19:57:22.658842	t
2800	918	Học lập trình Python cơ bản	{general}	2025-10-07 02:16:43.040264	t
2801	964	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-06 01:31:20.260191	f
2802	654	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-23 01:10:08.741106	t
2803	610	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-21 03:50:37.235197	t
2804	317	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-24 13:32:57.229501	f
2805	344	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-20 05:08:45.081426	t
2806	965	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-27 12:25:48.320054	t
2807	119	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-01 23:16:14.268177	f
2808	298	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-17 21:14:53.919527	t
2809	843	Âm nhạc và cuộc sống	{review,coffee}	2025-11-01 20:45:22.700325	f
2810	408	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-25 13:17:43.020394	t
2811	643	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-10-06 17:41:01.67354	t
2812	813	Học lập trình Python cơ bản	{food,vietnam}	2025-10-13 00:21:42.865676	t
2813	953	Âm nhạc và cuộc sống	{food,vietnam}	2025-11-11 03:27:10.832487	f
2814	674	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-24 02:57:53.703705	t
2815	310	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-09 05:34:02.625977	t
2816	199	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-26 10:51:09.920274	t
2817	528	Âm nhạc và cuộc sống	{food,vietnam}	2025-09-28 11:38:07.780276	f
2818	863	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-09 09:57:43.762801	t
2819	328	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-09 10:48:16.889112	t
2820	65	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-20 15:20:49.288082	t
2821	122	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-11-08 22:56:10.607818	t
2822	977	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-02 07:11:38.212028	f
2823	861	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-11-08 20:22:01.172462	t
2824	27	Âm nhạc và cuộc sống	{review,coffee}	2025-09-29 05:53:30.935813	t
2825	101	Học lập trình Python cơ bản	{tech,python}	2025-10-15 22:24:31.015258	f
2826	396	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-17 19:36:39.778234	t
2827	468	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-12 22:50:47.491171	t
2828	947	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-09-29 14:43:22.992319	f
2829	753	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-09-28 21:36:08.269955	t
2830	155	Âm nhạc và cuộc sống	{travel,vietnam}	2025-11-06 04:32:32.856227	t
2831	711	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-31 01:18:34.67454	t
2832	141	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-11 00:37:21.886308	t
2833	846	Khám phá du lịch Việt Nam	{tech,python}	2025-10-17 10:51:37.598008	t
2834	776	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-09-29 23:34:20.968256	t
2835	946	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-11-02 07:28:36.71759	t
2836	170	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-07 06:37:37.939831	t
2837	285	Âm nhạc và cuộc sống	{food,vietnam}	2025-11-11 08:09:34.934793	f
2838	585	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-09-29 14:05:17.25907	t
2839	653	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-28 18:15:52.287683	t
2840	267	Học lập trình Python cơ bản	{review,coffee}	2025-10-20 10:40:45.526219	t
2841	456	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-17 07:33:55.578684	t
2842	68	Khám phá du lịch Việt Nam	{food,vietnam}	2025-10-10 03:07:20.237429	t
2843	962	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-11-03 09:48:40.448713	f
2844	584	Học lập trình Python cơ bản	{travel,vietnam}	2025-10-03 02:00:09.180711	t
2845	381	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-27 19:32:04.265694	t
2846	147	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-15 01:30:41.608904	t
2847	981	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-24 03:32:48.604414	t
2848	750	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-28 18:58:42.924128	t
2849	765	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-09-28 21:45:09.418992	f
2850	124	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-11 07:38:48.906875	t
2851	223	Âm nhạc và cuộc sống	{food,vietnam}	2025-11-09 06:10:28.456105	f
2852	92	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-18 03:51:02.151623	t
2853	76	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-10-06 19:56:53.174486	t
2854	898	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-23 17:27:55.053258	t
2855	774	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-24 23:32:03.874611	t
2856	700	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-11-08 18:16:43.692954	t
2857	814	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-11-12 05:38:36.123639	t
2858	114	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-10 15:44:06.442439	t
2859	939	Review các quán cà phê nổi tiếng	{general}	2025-10-11 06:46:39.310634	t
2860	529	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-06 22:34:09.073516	t
2861	54	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-10-09 07:49:31.068701	t
2862	254	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-23 04:12:11.665155	f
2863	743	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-13 02:38:39.328697	f
2864	486	Âm nhạc và cuộc sống	{general}	2025-11-01 02:12:54.347879	t
2865	184	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-29 05:13:58.013615	t
2866	272	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-04 18:18:51.480474	t
2867	817	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-30 04:47:03.194578	f
2868	712	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-31 02:46:21.205344	t
2869	99	Review các quán cà phê nổi tiếng	{general}	2025-10-13 12:07:38.722277	t
2870	522	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-09-28 14:29:26.819893	t
2871	738	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-18 20:54:54.693939	t
2872	396	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-20 02:50:57.132349	t
2873	253	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-10-28 19:03:54.659433	t
2874	970	Học lập trình Python cơ bản	{review,coffee}	2025-10-27 08:24:26.939581	t
2875	851	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-10 23:50:31.887009	t
2876	889	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-06 22:07:54.10364	t
2877	699	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-11-06 16:27:44.529825	t
2878	709	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-01 19:12:08.865472	t
2879	50	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-09 07:17:12.876703	f
2880	229	Khám phá du lịch Việt Nam	{general}	2025-10-23 22:43:53.77939	f
2881	365	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-02 10:59:13.620011	t
2882	40	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-07 04:23:34.851939	t
2883	457	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-11-02 08:13:40.774641	t
2884	971	Khám phá du lịch Việt Nam	{general}	2025-10-05 08:45:02.380615	t
2885	492	Âm nhạc và cuộc sống	{review,coffee}	2025-10-27 20:18:12.094066	t
2886	492	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-25 19:34:41.92183	f
2887	389	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-26 17:56:32.739155	t
2888	519	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-02 05:25:53.799314	t
2889	810	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-11 16:51:04.233173	t
2890	978	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-24 02:58:14.972616	t
2891	118	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-11-08 10:20:39.602167	t
2892	640	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-10-28 19:47:44.006768	t
2893	115	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-20 16:03:39.486561	f
2894	314	Khám phá du lịch Việt Nam	{travel,vietnam}	2025-10-07 13:26:21.955441	t
2895	283	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-10-28 17:10:12.742295	t
2896	130	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-11 19:46:28.34793	f
2897	866	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-29 17:09:29.423877	t
2898	663	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-10-05 02:47:13.163371	t
2899	784	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-10-01 05:14:23.697378	t
2900	122	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-10-02 04:38:04.169463	t
2901	735	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-11-08 17:05:34.832093	t
2902	94	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-23 07:36:40.77261	t
2903	770	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-11-07 14:49:15.715367	t
2904	462	Khám phá du lịch Việt Nam	{general}	2025-10-10 01:59:46.044549	f
2905	647	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-21 23:38:30.757424	t
2906	962	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-09-30 11:18:57.646915	t
2907	681	Khám phá du lịch Việt Nam	{tech,python}	2025-10-25 22:18:23.949663	t
2908	489	Khám phá du lịch Việt Nam	{tech,python}	2025-11-05 09:35:38.561941	t
2909	251	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-31 23:47:53.504201	t
2910	422	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-11-05 16:30:49.588262	t
2911	847	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-01 03:23:49.060454	t
2912	716	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-10-14 03:17:42.034302	t
2913	161	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-13 15:48:08.35989	t
2914	395	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-26 14:19:04.304799	t
2915	181	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-11-07 15:53:53.389666	f
2916	504	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-12 12:48:51.56999	t
2917	889	Học lập trình Python cơ bản	{ai,machinelearning}	2025-11-10 00:33:46.733811	t
2918	470	Học lập trình Python cơ bản	{ai,machinelearning}	2025-11-09 03:00:43.396393	f
2919	72	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-17 12:28:21.626956	t
2920	394	Review các quán cà phê nổi tiếng	{general}	2025-10-16 20:30:58.896963	f
2921	56	Âm nhạc và cuộc sống	{review,coffee}	2025-10-13 04:44:28.140971	t
2922	96	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-07 13:41:51.353243	t
2923	744	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-22 06:37:26.417003	t
2924	152	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-14 01:42:44.317721	t
2925	4	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-21 07:55:57.637716	f
2926	92	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-23 16:21:41.621932	t
2927	453	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-01 00:23:43.235058	t
2928	733	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-03 13:27:53.240631	f
2929	896	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-26 20:48:04.822202	t
2930	671	Học lập trình Python cơ bản	{ai,machinelearning}	2025-09-30 18:11:59.759991	t
2931	680	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-25 20:37:42.612473	t
2932	444	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-02 13:03:03.141767	t
2933	557	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-10-29 00:16:13.806442	t
2934	493	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-23 06:33:16.552512	t
2935	844	Học lập trình Python cơ bản	{tech,python}	2025-10-01 15:10:53.694699	t
2936	773	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-10 03:21:40.771953	t
2937	442	Học lập trình Python cơ bản	{tech,python}	2025-10-27 15:32:39.025447	t
2938	620	Học lập trình Python cơ bản	{ai,machinelearning}	2025-11-03 00:03:52.790268	t
2939	845	Âm nhạc và cuộc sống	{review,coffee}	2025-11-09 22:16:49.981598	t
2940	106	Giới thiệu công nghệ AI hiện đại	{general}	2025-11-02 16:42:48.452167	t
2941	3	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-10-28 16:49:14.277607	t
2942	679	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-11-03 06:00:55.767045	t
2943	920	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-11-07 02:21:46.833821	t
2944	658	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-10-04 05:16:59.806059	t
2945	10	Học lập trình Python cơ bản	{tech,python}	2025-10-18 09:42:28.157161	f
2946	772	Giới thiệu công nghệ AI hiện đại	{general}	2025-11-02 08:02:26.467299	t
2947	780	Giới thiệu công nghệ AI hiện đại	{general}	2025-10-28 07:06:19.888441	t
2948	781	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-11 19:14:21.227805	t
2949	971	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-02 15:39:00.436072	t
2950	605	Học lập trình Python cơ bản	{tech,python}	2025-10-01 10:37:33.682242	t
2951	668	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-11-09 13:38:14.376956	t
2952	91	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-23 02:45:12.834181	t
2953	733	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-22 05:56:22.598958	t
2954	961	Học lập trình Python cơ bản	{general}	2025-11-07 02:58:38.239	t
2955	562	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-07 16:48:38.831039	t
2956	874	Review các quán cà phê nổi tiếng	{general}	2025-10-12 00:16:55.588552	t
2957	22	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-11 02:52:16.895804	t
2958	935	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-21 01:35:53.023586	t
2959	744	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-19 14:45:14.212457	t
2960	5	Giới thiệu công nghệ AI hiện đại	{general}	2025-10-28 22:32:57.880967	t
2961	82	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-29 20:31:35.288585	t
2962	369	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-11-09 03:09:07.936841	t
2963	427	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-06 05:23:12.392534	f
2964	429	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-10 13:06:48.640633	t
2965	475	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-09-29 06:18:24.420118	t
2966	322	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-26 18:59:47.832991	f
2967	128	Âm nhạc và cuộc sống	{general}	2025-11-04 22:58:26.394876	t
2968	84	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-09-30 19:00:30.359601	t
2969	449	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-09 10:44:56.348585	f
2970	203	Học lập trình Python cơ bản	{general}	2025-10-08 18:24:51.174245	t
2971	303	Học lập trình Python cơ bản	{food,vietnam}	2025-10-21 04:50:45.240426	t
2972	5	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-29 21:24:33.357949	t
2973	269	Học lập trình Python cơ bản	{food,vietnam}	2025-10-05 21:18:28.819593	t
2974	891	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-11-11 12:09:56.683674	f
2975	91	Học lập trình Python cơ bản	{review,coffee}	2025-10-15 19:27:23.697897	t
2976	101	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-05 18:49:05.962368	t
2977	531	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-01 17:05:32.970335	t
2978	89	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-10-16 05:10:13.429448	t
2979	859	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-12 11:50:10.711463	t
2980	208	Review các quán cà phê nổi tiếng	{review,coffee}	2025-11-10 20:33:26.093525	t
2981	256	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-04 17:14:41.797586	t
2982	906	Học lập trình Python cơ bản	{review,coffee}	2025-11-04 08:33:40.779879	t
2983	124	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-22 07:09:35.976453	t
2984	839	Khám phá du lịch Việt Nam	{general}	2025-10-26 00:59:45.023865	t
2985	662	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-19 07:18:00.353385	t
2986	601	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-07 18:42:58.716951	t
2987	357	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-11-10 01:20:56.536179	t
2988	439	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-11-05 19:45:33.890082	t
2989	489	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-23 03:32:10.743411	t
2990	220	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-25 13:30:41.639698	t
2991	633	Khám phá du lịch Việt Nam	{tech,python}	2025-10-14 03:50:02.851818	t
2992	413	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-09-29 23:07:48.449901	t
2993	891	Khám phá du lịch Việt Nam	{tech,python}	2025-10-01 20:36:03.33075	f
2994	635	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-11-04 16:44:23.848836	f
2995	882	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-11-01 06:54:09.461086	t
2996	676	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-28 09:54:10.773032	t
2997	604	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-20 19:54:11.170215	t
2998	633	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-11-05 17:00:09.909479	t
2999	136	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-09-28 22:54:49.685409	t
3000	88	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-25 09:14:41.585872	t
3001	671	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-26 16:14:15.28594	f
3002	462	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-01 06:33:09.594829	t
3003	916	Học lập trình Python cơ bản	{tech,python}	2025-11-07 23:20:21.984945	t
3004	244	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-10-07 11:22:26.64108	t
3005	261	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-10 09:32:48.120046	f
3006	28	Âm nhạc và cuộc sống	{tech,python}	2025-10-21 04:09:52.0678	t
3007	810	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-11-10 11:44:40.237181	t
3008	746	Review các quán cà phê nổi tiếng	{review,coffee}	2025-11-08 13:15:54.849371	t
3009	527	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-14 03:43:35.756395	t
3010	153	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-11-12 03:02:59.564034	t
3011	908	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-10-17 12:34:30.040667	t
3012	664	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-30 10:46:30.750149	t
3013	190	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-13 20:24:00.195765	t
3014	483	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-07 13:39:45.984992	t
3015	576	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-29 13:45:00.130801	f
3016	124	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-20 06:35:33.024544	f
3017	848	Học lập trình Python cơ bản	{review,coffee}	2025-10-03 19:07:51.981087	t
3018	218	Học lập trình Python cơ bản	{review,coffee}	2025-10-14 20:07:25.741842	f
3019	623	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-10-05 08:42:17.408095	t
3020	852	Review các quán cà phê nổi tiếng	{review,coffee}	2025-11-12 00:15:47.440486	t
3021	349	Học lập trình Python cơ bản	{food,vietnam}	2025-10-22 10:02:39.542671	t
3022	497	Khám phá du lịch Việt Nam	{food,vietnam}	2025-10-21 15:26:41.802723	t
3023	360	Học lập trình Python cơ bản	{review,coffee}	2025-09-29 22:04:56.270683	f
3024	646	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-06 04:04:48.9596	t
3025	142	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-25 03:16:44.726107	t
3026	992	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-14 20:52:16.542982	t
3027	229	Review các quán cà phê nổi tiếng	{general}	2025-10-05 10:24:25.437406	t
3028	183	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-08 22:15:57.820676	t
3029	259	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-08 08:08:56.043858	t
3030	315	Âm nhạc và cuộc sống	{review,coffee}	2025-11-03 10:31:56.837551	t
3031	840	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-12 01:20:33.406014	t
3032	774	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-22 23:44:11.326728	t
3033	705	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-11-07 18:17:52.41342	t
3034	556	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-11-03 14:23:19.170205	t
3035	979	Âm nhạc và cuộc sống	{travel,vietnam}	2025-10-02 15:01:33.214728	f
3036	320	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-26 19:12:59.202554	t
3037	938	Giới thiệu công nghệ AI hiện đại	{general}	2025-10-15 00:40:49.946856	t
3038	20	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-09-29 01:34:16.219654	t
3039	598	Khám phá du lịch Việt Nam	{food,vietnam}	2025-10-21 03:29:55.596106	f
3040	920	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-09-30 23:22:04.782535	t
3041	745	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-07 02:01:20.260497	t
3042	223	Khám phá du lịch Việt Nam	{travel,vietnam}	2025-11-04 10:34:03.528617	t
3043	353	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-04 16:09:04.488484	t
3044	758	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-19 02:50:30.049964	t
3045	985	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-04 09:00:27.059191	t
3046	703	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-29 23:27:54.221902	t
3047	850	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-01 10:31:16.943818	t
3048	610	Học lập trình Python cơ bản	{general}	2025-10-11 07:08:47.537357	t
3049	898	Âm nhạc và cuộc sống	{general}	2025-10-19 22:33:29.336769	t
3050	364	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-03 13:05:38.21918	t
3051	847	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-28 12:02:26.066264	t
3052	531	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-02 00:10:17.806363	t
3053	346	Âm nhạc và cuộc sống	{food,vietnam}	2025-11-01 17:20:08.085026	f
3054	871	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-10 15:14:41.379365	t
3055	135	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-10 13:28:44.816186	t
3056	828	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-20 02:09:32.006926	t
3057	628	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-31 08:11:26.272997	t
3058	600	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-22 20:29:49.408394	t
3059	245	Giới thiệu công nghệ AI hiện đại	{general}	2025-10-30 16:10:29.352948	t
3060	201	Âm nhạc và cuộc sống	{general}	2025-10-28 12:43:00.122442	f
3061	937	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-10 03:07:17.550993	t
3062	630	Học lập trình Python cơ bản	{food,vietnam}	2025-10-22 20:56:29.536731	f
3063	684	Âm nhạc và cuộc sống	{tech,python}	2025-10-09 02:26:56.271995	t
3064	216	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-10-27 13:03:50.493478	t
3065	944	Học lập trình Python cơ bản	{food,vietnam}	2025-10-06 21:00:53.745512	t
3066	791	Review các quán cà phê nổi tiếng	{tech,python}	2025-11-07 12:37:56.770035	t
3067	866	Khám phá du lịch Việt Nam	{travel,vietnam}	2025-10-29 05:01:09.961543	t
3068	421	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-20 14:31:50.135436	f
3069	637	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-09-29 02:06:11.057911	t
3070	574	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-02 16:06:07.241448	t
3071	847	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-05 22:48:08.877402	t
3072	47	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-11 17:08:03.361105	t
3073	499	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-28 06:44:38.073747	t
3074	905	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-31 02:13:38.175554	t
3075	687	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-24 18:23:16.253864	t
3076	70	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-19 06:28:43.765449	t
3077	47	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-08 10:04:07.895027	t
3078	765	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-11-05 01:44:39.855647	t
3079	94	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-02 09:46:42.144167	t
3080	618	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-11-12 05:13:41.311687	t
3081	637	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-10-04 08:31:56.46679	t
3082	827	Review các quán cà phê nổi tiếng	{tech,python}	2025-11-08 09:35:52.854845	t
3083	981	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-06 12:51:32.619388	f
3084	702	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-11-10 02:30:54.454605	t
3085	773	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-11-10 12:36:57.111594	f
3086	822	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-27 10:01:36.19795	t
3087	554	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-03 06:39:55.501342	t
3088	64	Học lập trình Python cơ bản	{travel,vietnam}	2025-10-22 09:06:29.076166	t
3089	924	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-29 12:28:01.054739	t
3090	9	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-09-29 00:53:45.154007	t
3091	340	Khám phá du lịch Việt Nam	{review,coffee}	2025-09-29 22:18:02.474843	t
3092	895	Âm nhạc và cuộc sống	{tech,python}	2025-10-21 06:24:40.138847	t
3093	982	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-10-19 23:46:15.174451	t
3094	110	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-16 03:14:49.638129	t
3095	222	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-16 06:04:54.219945	t
3096	861	Học lập trình Python cơ bản	{review,coffee}	2025-10-17 04:09:44.364852	t
3097	987	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-18 04:23:30.371799	t
3098	361	Review các quán cà phê nổi tiếng	{review,coffee}	2025-11-05 23:09:59.357818	t
3099	328	Học lập trình Python cơ bản	{food,vietnam}	2025-10-11 21:56:03.358391	t
3100	974	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-27 01:15:32.302316	t
3101	139	Âm nhạc và cuộc sống	{travel,vietnam}	2025-10-27 03:35:47.419942	t
3102	148	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-08 22:58:01.745775	t
3103	104	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-11-05 16:46:06.815366	t
3104	593	Học lập trình Python cơ bản	{tech,python}	2025-11-05 01:04:02.494149	t
3105	77	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-28 11:20:21.690807	t
3106	782	Âm nhạc và cuộc sống	{tech,python}	2025-10-28 05:40:21.702721	f
3107	916	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-09-29 04:40:37.618991	t
3108	206	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-16 07:24:00.609605	t
3109	858	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-11-02 05:49:30.078455	f
3110	128	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-07 16:02:42.331525	t
3111	579	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-10-20 08:41:12.704629	t
3112	971	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-10-27 08:48:59.437483	t
3113	340	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-11 23:59:37.301145	t
3114	188	Học lập trình Python cơ bản	{review,coffee}	2025-10-20 04:45:40.446478	t
3115	504	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-25 15:32:55.931203	t
3116	642	Giới thiệu công nghệ AI hiện đại	{general}	2025-11-10 05:36:40.49129	f
3117	17	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-29 01:02:57.69631	t
3118	490	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-11-07 10:41:21.611157	t
3119	929	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-28 21:30:34.813113	t
3120	268	Học lập trình Python cơ bản	{review,coffee}	2025-10-12 03:13:53.100737	t
3121	627	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-11-04 07:34:42.758494	t
3122	722	Review các quán cà phê nổi tiếng	{general}	2025-10-27 12:17:27.107798	t
3123	815	Học lập trình Python cơ bản	{general}	2025-10-19 08:26:26.675017	t
3124	400	Học lập trình Python cơ bản	{general}	2025-10-04 09:13:14.544368	f
3125	713	Học lập trình Python cơ bản	{ai,machinelearning}	2025-11-08 13:00:14.796387	f
3126	581	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-02 19:59:41.664948	t
3127	993	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-21 06:03:26.944641	f
3128	660	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-09-30 07:43:24.833943	t
3129	742	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-10-15 13:32:28.837363	t
3130	156	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-26 15:17:36.821001	t
3131	744	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-11-07 06:42:51.580974	t
3132	730	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-11-03 23:26:23.907338	t
3133	747	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-11-12 05:22:04.188504	t
3134	695	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-28 08:50:41.910032	t
3135	269	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-26 09:49:13.958418	t
3136	934	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-10-15 18:08:34.462214	f
3137	403	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-22 21:05:36.898222	t
3138	752	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-28 05:50:22.644683	t
3139	433	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-08 16:59:19.511878	t
3140	789	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-22 21:58:47.028566	f
3141	639	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-11-09 01:55:33.230806	t
3142	362	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-10-11 09:34:24.436765	t
3143	838	Học lập trình Python cơ bản	{general}	2025-09-28 18:09:53.121401	t
3434	189	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-05 19:10:38.753945	t
3144	274	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-09-30 09:04:02.842419	t
3145	570	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-09 02:34:03.501353	f
3146	687	Học lập trình Python cơ bản	{tech,python}	2025-11-04 14:10:35.622381	f
3147	549	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-23 09:02:39.742706	f
3148	760	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-11-11 21:07:32.549922	t
3149	643	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-09-30 06:53:54.292194	t
3150	912	Học lập trình Python cơ bản	{tech,python}	2025-10-09 02:00:52.62569	t
3151	521	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-11-03 15:18:21.828001	t
3152	533	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-30 01:41:39.259097	t
3153	116	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-19 03:00:28.901878	t
3154	550	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-02 09:06:13.038424	t
3155	0	Âm nhạc và cuộc sống	{food,vietnam}	2025-11-06 13:28:10.667414	f
3156	229	Review các quán cà phê nổi tiếng	{review,coffee}	2025-11-02 20:04:51.692057	t
3157	538	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-11-04 04:12:12.840892	t
3158	468	Học lập trình Python cơ bản	{review,coffee}	2025-10-14 07:09:47.25433	f
3159	970	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-19 20:07:01.272852	t
3160	699	Âm nhạc và cuộc sống	{food,vietnam}	2025-11-01 19:53:51.810819	t
3161	578	Âm nhạc và cuộc sống	{tech,python}	2025-10-16 22:19:43.017623	t
3162	982	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-03 09:37:48.69448	t
3163	191	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-10-10 19:00:22.009417	t
3164	92	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-21 02:46:02.606904	t
3165	438	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-28 08:30:46.176927	t
3166	441	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-27 19:29:00.374204	t
3167	493	Âm nhạc và cuộc sống	{tech,python}	2025-10-28 19:45:11.64229	f
3168	737	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-23 18:09:39.525203	t
3169	175	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-28 22:16:32.051842	t
3170	681	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-02 20:27:34.618243	t
3171	885	Học lập trình Python cơ bản	{tech,python}	2025-10-13 06:53:49.960534	t
3172	926	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-29 11:06:36.537948	t
3173	417	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-12 15:30:23.562151	t
3174	606	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-11-03 06:39:34.266983	t
3175	219	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-10 09:27:30.920958	t
3176	887	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-10-22 08:26:12.703256	t
3177	953	Âm nhạc và cuộc sống	{tech,python}	2025-10-04 13:46:17.674366	t
3178	767	Khám phá du lịch Việt Nam	{tech,python}	2025-10-07 07:37:06.197275	f
3179	842	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-30 17:30:41.011206	t
3180	610	Review các quán cà phê nổi tiếng	{tech,python}	2025-11-09 19:10:55.415871	t
3181	681	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-05 03:32:16.133146	t
3182	336	Khám phá du lịch Việt Nam	{food,vietnam}	2025-10-22 19:13:41.202448	t
3183	775	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-02 01:32:05.267865	f
3184	677	Review các quán cà phê nổi tiếng	{tech,python}	2025-11-10 17:44:11.934223	t
3185	249	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-14 03:36:09.480959	f
3186	9	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-11-03 22:31:13.234482	t
3187	139	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-05 22:27:15.087771	t
3188	413	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-14 22:24:49.655399	f
3189	351	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-21 19:10:40.182481	f
3190	630	Âm nhạc và cuộc sống	{general}	2025-11-01 23:11:38.649677	t
3191	190	Khám phá du lịch Việt Nam	{food,vietnam}	2025-10-04 17:16:43.201463	f
3192	493	Học lập trình Python cơ bản	{review,coffee}	2025-10-31 07:53:36.573276	f
3193	338	Học lập trình Python cơ bản	{review,coffee}	2025-11-02 16:35:55.558435	t
3194	645	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-11-09 01:46:14.596029	f
3195	790	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-10 19:22:53.374459	t
3196	482	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-27 19:58:49.868789	f
3197	418	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-11-06 13:29:53.728063	t
3198	32	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-11-07 01:28:28.749085	t
3199	922	Học lập trình Python cơ bản	{travel,vietnam}	2025-10-27 13:21:53.720666	t
3200	45	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-26 17:37:53.882031	t
3201	910	Học lập trình Python cơ bản	{ai,machinelearning}	2025-09-28 21:48:50.012505	t
3202	750	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-10-14 17:39:05.235692	t
3203	218	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-11 15:29:33.623202	t
3204	290	Học lập trình Python cơ bản	{travel,vietnam}	2025-09-30 21:55:32.274948	f
3205	227	Học lập trình Python cơ bản	{food,vietnam}	2025-10-26 22:48:26.934735	t
3206	361	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-11-06 09:40:58.248889	t
3207	989	Học lập trình Python cơ bản	{review,coffee}	2025-11-02 03:47:33.192741	t
3208	109	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-11-03 22:44:46.96876	t
3209	468	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-04 12:29:01.931161	t
3210	112	Học lập trình Python cơ bản	{review,coffee}	2025-10-18 18:38:32.979673	t
3211	397	Âm nhạc và cuộc sống	{tech,python}	2025-10-10 22:34:08.755883	t
3212	439	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-11-06 17:12:23.271577	f
3213	569	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-04 18:40:37.298889	t
3214	144	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-11-05 21:23:57.5569	t
3215	790	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-14 12:51:03.665789	t
3216	14	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-20 15:49:04.903209	t
3217	277	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-15 20:12:04.977738	t
3218	535	Âm nhạc và cuộc sống	{travel,vietnam}	2025-10-06 07:48:30.731681	t
3219	519	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-11 03:02:04.950597	t
3220	207	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-29 20:58:53.213745	t
3221	681	Review các quán cà phê nổi tiếng	{tech,python}	2025-11-02 04:38:29.794943	f
3222	556	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-21 06:13:06.9689	t
3223	655	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-08 08:24:06.722998	t
3224	215	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-30 06:37:46.862052	t
3225	237	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-10-08 03:13:55.448158	t
3226	129	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-15 02:26:42.612527	t
3227	193	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-09-28 12:27:24.43268	t
3228	777	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-23 21:12:09.640433	f
3229	160	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-05 10:02:53.346678	t
3230	750	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-26 12:18:16.124176	t
3231	227	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-28 15:38:30.708219	t
3232	307	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-04 04:44:04.99683	t
3233	12	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-06 10:45:13.015193	t
3234	272	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-23 09:43:58.669791	t
3235	963	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-10-22 21:06:10.621147	t
3236	499	Học lập trình Python cơ bản	{review,coffee}	2025-10-17 05:41:01.665955	t
3237	277	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-13 14:03:12.517904	t
3238	371	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-10-11 06:02:47.296231	t
3239	37	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-05 03:32:47.062779	t
3240	478	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-23 10:55:51.97061	t
3241	204	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-20 14:19:50.041398	t
3242	885	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-06 05:04:01.748323	t
3243	94	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-24 11:45:00.908808	t
3244	274	Học lập trình Python cơ bản	{tech,python}	2025-11-09 16:13:08.120099	t
3245	547	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-12 23:57:27.336531	t
3246	604	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-02 12:02:52.842557	t
3247	326	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-21 10:13:36.097058	t
3248	589	Học lập trình Python cơ bản	{general}	2025-10-10 22:15:03.868191	t
3249	865	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-01 14:51:25.87436	t
3250	923	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-07 18:16:01.845036	t
3251	502	Học lập trình Python cơ bản	{review,coffee}	2025-10-10 02:20:26.187062	t
3252	187	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-08 11:04:39.012532	t
3253	941	Âm nhạc và cuộc sống	{tech,python}	2025-10-14 23:42:15.23307	t
3254	977	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-12 18:52:06.075766	t
3255	464	Khám phá du lịch Việt Nam	{review,coffee}	2025-11-06 12:54:45.019257	t
3256	300	Âm nhạc và cuộc sống	{review,coffee}	2025-11-08 21:44:56.175252	t
3257	689	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-10-28 12:15:57.21156	t
3258	592	Âm nhạc và cuộc sống	{review,coffee}	2025-10-13 12:29:20.4934	t
3259	171	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-31 15:44:28.557443	t
3260	515	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-09-30 08:13:59.362032	t
3261	195	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-30 19:45:04.764487	t
3262	80	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-24 13:05:54.006077	f
3263	570	Âm nhạc và cuộc sống	{tech,python}	2025-09-28 20:53:56.274358	t
3264	717	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-15 08:41:21.058709	t
3265	970	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-09-28 13:13:18.534872	t
3266	194	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-08 00:35:45.554593	t
3267	920	Âm nhạc và cuộc sống	{tech,python}	2025-11-04 18:50:56.052485	t
3268	60	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-09-29 19:50:06.169974	t
3269	696	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-18 18:55:45.770596	t
3270	562	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-30 19:57:52.883169	t
3271	703	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-31 02:49:59.243461	t
3272	869	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-01 18:02:42.830587	t
3273	308	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-12 07:44:09.829787	t
3274	27	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-11 18:11:49.72887	t
3275	350	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-11-02 21:00:02.243479	t
3276	998	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-07 09:11:52.108535	t
3277	955	Học lập trình Python cơ bản	{review,coffee}	2025-10-04 15:52:48.421514	t
3278	915	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-11-04 12:49:17.631049	t
3279	396	Âm nhạc và cuộc sống	{travel,vietnam}	2025-10-31 05:24:44.965088	t
3280	440	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-09-30 13:05:55.949073	t
3281	139	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-10-20 09:10:36.593714	t
3282	853	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-15 06:37:34.661895	t
3283	606	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-12 04:04:53.313712	t
3284	682	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-26 14:28:42.278664	t
3285	839	Âm nhạc và cuộc sống	{tech,python}	2025-09-30 01:51:24.19474	t
3286	511	Khám phá du lịch Việt Nam	{review,coffee}	2025-11-07 14:53:58.342123	t
3287	585	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-02 17:19:46.876889	t
3288	295	Review các quán cà phê nổi tiếng	{general}	2025-10-01 08:44:09.308763	t
3289	113	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-10-16 03:34:01.678437	t
3290	364	Giới thiệu công nghệ AI hiện đại	{general}	2025-10-28 18:20:03.055115	t
3291	73	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-16 03:58:01.008136	f
3292	935	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-11-09 13:22:53.159327	t
3293	909	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-01 12:58:33.719448	t
3294	393	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-19 05:00:31.431074	f
3295	492	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-30 06:48:12.331072	t
3296	194	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-10-18 13:38:26.076982	t
3297	381	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-11-04 19:09:19.739535	t
3298	482	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-11-08 10:12:32.895187	t
3299	186	Review các quán cà phê nổi tiếng	{general}	2025-10-25 17:39:54.815062	t
3300	550	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-09-30 21:16:22.205784	t
3301	361	Học lập trình Python cơ bản	{food,vietnam}	2025-11-06 17:48:57.491369	t
3302	707	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-11-06 20:01:28.003087	t
3303	772	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-05 20:44:04.954523	t
3304	373	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-09-28 17:01:49.063739	t
3305	281	Khám phá du lịch Việt Nam	{food,vietnam}	2025-10-22 21:32:03.204325	t
3306	158	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-10-23 05:49:09.03232	t
3307	80	Âm nhạc và cuộc sống	{review,coffee}	2025-10-14 21:53:48.065975	f
3308	972	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-11 17:22:20.022839	t
3309	877	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-12 18:54:16.435147	t
3310	392	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-13 14:13:33.664281	t
3311	660	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-11-01 14:01:52.522643	t
3312	844	Học lập trình Python cơ bản	{review,coffee}	2025-11-08 16:28:49.914887	t
3313	232	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-16 22:01:46.275506	t
3314	746	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-29 21:07:41.395303	t
3315	557	Âm nhạc và cuộc sống	{tech,python}	2025-10-27 20:10:43.067765	t
3316	126	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-11-03 02:47:48.039885	t
3317	882	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-18 09:09:33.795594	t
3318	514	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-10-31 13:21:23.870723	t
3319	217	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-11-04 16:27:20.651122	t
3320	685	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-12 02:03:43.986203	t
3321	829	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-10-23 15:43:45.49087	t
3322	260	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-11-11 10:48:30.415141	f
3323	69	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-09 00:06:09.799248	t
3324	185	Khám phá du lịch Việt Nam	{tech,python}	2025-11-12 03:32:20.117152	t
3325	472	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-22 06:55:18.434989	t
3326	917	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-21 09:41:02.320493	t
3327	766	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-11-07 22:44:58.682953	t
3328	655	Học lập trình Python cơ bản	{ai,machinelearning}	2025-09-30 17:31:41.504133	t
3329	363	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-08 13:43:33.538937	t
3330	295	Học lập trình Python cơ bản	{travel,vietnam}	2025-10-02 03:24:34.905925	t
3331	244	Âm nhạc và cuộc sống	{review,coffee}	2025-10-24 00:56:54.961655	t
3332	89	Khám phá du lịch Việt Nam	{review,coffee}	2025-11-08 12:35:31.108553	t
3333	45	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-11-04 11:43:21.530691	t
3334	220	Khám phá du lịch Việt Nam	{food,vietnam}	2025-11-02 12:39:43.156145	f
3335	711	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-06 10:06:30.729265	t
3336	474	Học lập trình Python cơ bản	{tech,python}	2025-10-24 20:32:58.62858	t
3337	436	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-11-04 18:31:40.55459	t
3338	408	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-08 08:29:15.340357	t
3339	545	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-05 17:58:30.177767	t
3340	149	Review các quán cà phê nổi tiếng	{general}	2025-10-13 23:16:53.219285	t
3341	32	Âm nhạc và cuộc sống	{general}	2025-10-12 20:59:45.597097	t
3342	546	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-05 02:23:32.520332	t
3343	90	Âm nhạc và cuộc sống	{tech,python}	2025-10-02 16:18:23.219391	t
3344	450	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-10 08:18:54.969536	f
3345	530	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-11-06 10:57:06.323896	t
3346	138	Âm nhạc và cuộc sống	{tech,python}	2025-10-21 20:07:50.77188	t
3347	277	Khám phá du lịch Việt Nam	{food,vietnam}	2025-10-02 17:12:22.714183	t
3348	759	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-07 10:41:25.128194	t
3349	733	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-01 14:17:58.106992	t
3350	405	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-11-09 21:25:08.540247	t
3351	288	Review các quán cà phê nổi tiếng	{general}	2025-10-31 22:49:37.95754	t
3352	221	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-11-09 03:29:27.270414	t
3353	143	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-11-09 15:53:05.373993	f
3354	600	Học lập trình Python cơ bản	{tech,python}	2025-10-16 11:26:34.447695	t
3355	355	Học lập trình Python cơ bản	{review,coffee}	2025-09-30 06:45:25.667683	t
3356	169	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-11-09 23:52:45.53587	t
3357	874	Âm nhạc và cuộc sống	{general}	2025-10-12 18:55:54.168687	f
3358	190	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-10-14 11:47:58.75396	t
3359	704	Học lập trình Python cơ bản	{food,vietnam}	2025-11-08 01:01:59.381244	t
3360	618	Review các quán cà phê nổi tiếng	{tech,python}	2025-11-09 20:06:37.97069	t
3361	541	Giới thiệu công nghệ AI hiện đại	{general}	2025-10-30 12:49:08.151391	t
3362	987	Review các quán cà phê nổi tiếng	{general}	2025-10-29 21:13:44.762778	f
3363	789	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-16 15:54:14.486555	t
3364	413	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-17 05:56:26.148037	t
3365	984	Học lập trình Python cơ bản	{food,vietnam}	2025-10-10 16:43:31.678071	f
3366	716	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-15 11:48:23.289288	t
3367	19	Học lập trình Python cơ bản	{tech,python}	2025-11-10 01:29:47.298219	t
3368	20	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-09-28 14:51:08.091305	t
3369	437	Học lập trình Python cơ bản	{tech,python}	2025-10-17 04:42:30.467737	f
3370	638	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-31 08:36:45.141567	t
3371	246	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-11-03 18:21:00.815751	f
3372	257	Âm nhạc và cuộc sống	{tech,python}	2025-10-25 09:29:18.5215	t
3373	613	Học lập trình Python cơ bản	{tech,python}	2025-10-22 22:50:34.700998	f
3374	750	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-09-29 09:01:47.856051	t
3375	156	Khám phá du lịch Việt Nam	{tech,python}	2025-10-30 18:25:02.412442	t
3376	434	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-24 00:55:39.85467	t
3377	359	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-11-10 05:37:45.245798	t
3378	917	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-10-24 06:25:06.448021	t
3379	265	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-04 22:58:47.571385	t
3380	549	Học lập trình Python cơ bản	{ai,machinelearning}	2025-11-04 11:31:53.292135	f
3381	592	Khám phá du lịch Việt Nam	{food,vietnam}	2025-10-09 22:43:09.564966	t
3382	98	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-21 18:55:04.1865	f
3383	670	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-11-10 01:58:48.006575	t
3384	650	Học lập trình Python cơ bản	{tech,python}	2025-11-01 01:22:25.064053	f
3385	392	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-30 07:20:24.676229	f
3386	634	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-27 12:17:13.75917	f
3387	638	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-28 00:42:58.16426	t
3388	36	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-13 23:40:22.439188	f
3389	481	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-07 09:25:22.527433	t
3390	503	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-11-06 15:37:44.191821	t
3391	332	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-26 19:04:59.218952	t
3392	651	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-31 05:45:34.886548	t
3393	838	Học lập trình Python cơ bản	{review,coffee}	2025-10-19 14:33:35.987303	t
3394	399	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-11-03 13:31:24.963749	t
3395	512	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-11-05 23:47:24.539839	t
3396	392	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-19 01:56:31.337181	t
3397	866	Khám phá du lịch Việt Nam	{tech,python}	2025-10-03 09:55:45.200083	t
3398	37	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-25 21:20:13.398509	t
3399	442	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-28 01:44:36.612494	t
3400	243	Âm nhạc và cuộc sống	{travel,vietnam}	2025-11-01 23:45:19.145336	t
3401	363	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-15 02:20:49.682102	t
3402	520	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-10-05 08:56:07.175257	t
3403	651	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-30 10:46:00.189469	t
3404	850	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-22 13:06:56.575074	t
3405	129	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-19 09:49:27.614347	f
3406	678	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-29 04:02:23.888549	t
3407	728	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-09 09:50:56.117576	t
3408	90	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-05 19:29:12.645117	f
3409	438	Học lập trình Python cơ bản	{review,coffee}	2025-09-29 21:48:18.821638	f
3410	868	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-11 04:21:21.687238	t
3411	449	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-11 03:28:55.017744	t
3412	81	Học lập trình Python cơ bản	{review,coffee}	2025-11-05 03:27:01.944707	t
3413	5	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-08 20:50:29.721379	t
3414	844	Thể thao và sức khỏe mỗi ngày	{general}	2025-11-07 21:11:49.052275	f
3415	557	Học lập trình Python cơ bản	{review,coffee}	2025-11-02 05:45:55.282844	t
3416	256	Học lập trình Python cơ bản	{travel,vietnam}	2025-10-04 21:45:13.651531	t
3417	178	Học lập trình Python cơ bản	{tech,python}	2025-10-30 12:50:55.147138	t
3418	682	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-31 17:50:54.02358	t
3419	156	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-09 19:13:02.311556	t
3420	877	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-09 06:33:21.301032	t
3421	378	Học lập trình Python cơ bản	{general}	2025-10-10 19:41:02.075083	t
3422	733	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-26 23:33:33.498523	t
3423	342	Học lập trình Python cơ bản	{review,coffee}	2025-10-31 16:11:33.9165	t
3424	726	Âm nhạc và cuộc sống	{tech,python}	2025-10-16 12:44:24.270613	t
3425	507	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-02 03:31:42.413154	t
3426	307	Âm nhạc và cuộc sống	{tech,python}	2025-11-05 18:07:11.632153	f
3427	396	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-22 05:47:37.405909	f
3428	928	Học lập trình Python cơ bản	{travel,vietnam}	2025-11-12 02:13:35.273705	t
3429	210	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-08 02:30:15.20786	t
3430	389	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-05 13:21:50.021494	f
3431	482	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-11-07 18:47:41.36035	t
3432	724	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-11-05 07:38:57.862004	t
3433	451	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-21 21:13:49.696679	t
3435	347	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-02 18:37:28.332499	t
3436	629	Âm nhạc và cuộc sống	{review,coffee}	2025-11-12 03:39:59.83792	t
3437	943	Học lập trình Python cơ bản	{travel,vietnam}	2025-10-05 08:08:00.268357	t
3438	522	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-26 21:07:04.856581	t
3439	241	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-09-30 19:24:34.866107	t
3440	716	Âm nhạc và cuộc sống	{tech,python}	2025-11-10 22:51:06.658962	f
3441	46	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-11 02:29:38.669662	t
3442	161	Thể thao và sức khỏe mỗi ngày	{general}	2025-11-07 08:34:13.893274	t
3443	617	Review các quán cà phê nổi tiếng	{general}	2025-10-29 08:45:43.474987	t
3444	748	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-10-18 14:48:33.626711	t
3445	583	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-20 08:03:40.432143	t
3446	392	Âm nhạc và cuộc sống	{review,coffee}	2025-10-02 00:06:22.465003	t
3447	814	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-04 15:43:15.880798	f
3448	103	Học lập trình Python cơ bản	{review,coffee}	2025-09-30 17:33:34.616571	t
3449	475	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-19 01:10:18.587887	t
3450	304	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-09 19:27:50.309731	t
3451	863	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-10-25 14:59:55.787147	f
3452	252	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-14 16:33:11.765666	t
3453	637	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-13 19:57:54.881962	t
3454	210	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-28 15:01:55.356529	f
3455	643	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-05 05:40:24.840449	t
3456	996	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-02 00:11:01.906256	t
3457	905	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-16 16:36:19.382871	f
3458	263	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-22 16:37:53.780537	t
3459	247	Khám phá du lịch Việt Nam	{tech,python}	2025-11-04 01:32:59.005171	t
3460	286	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-02 01:55:34.597818	t
3461	345	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-08 04:50:45.039886	t
3462	504	Âm nhạc và cuộc sống	{tech,python}	2025-10-07 07:47:00.545457	t
3463	821	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-14 04:36:10.781099	t
3464	641	Học lập trình Python cơ bản	{travel,vietnam}	2025-11-02 15:48:36.68601	t
3465	158	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-06 05:02:46.607797	f
3466	233	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-30 20:00:07.699748	t
3467	978	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-17 23:46:49.956769	f
3468	105	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-06 04:24:58.786422	t
3469	901	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-14 06:36:44.944496	f
3470	442	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-11-05 04:26:38.316247	t
3471	307	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-30 23:28:31.263814	t
3472	865	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-27 06:04:37.439938	t
3473	5	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-24 21:50:49.239944	f
3474	700	Học lập trình Python cơ bản	{food,vietnam}	2025-10-05 04:38:38.846653	t
3475	159	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-08 16:39:54.351203	t
3476	349	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-10-27 19:15:22.531764	t
3477	358	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-20 14:53:08.354203	t
3478	778	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-16 02:03:34.924734	t
3479	372	Khám phá du lịch Việt Nam	{tech,python}	2025-09-30 01:55:34.328852	t
3480	913	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-20 00:24:18.455503	t
3481	396	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-26 10:54:25.010581	t
3482	759	Học lập trình Python cơ bản	{review,coffee}	2025-10-07 02:21:30.934478	t
3483	244	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-11-10 22:50:18.354606	t
3484	925	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-19 00:40:56.117112	t
3485	228	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-29 15:05:57.98979	t
3486	113	Khám phá du lịch Việt Nam	{food,vietnam}	2025-10-09 04:34:40.897094	t
3487	201	Học lập trình Python cơ bản	{tech,python}	2025-10-02 15:37:31.802362	t
3488	556	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-03 16:45:55.245535	t
3489	289	Âm nhạc và cuộc sống	{tech,python}	2025-10-03 22:50:32.703888	t
3490	485	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-11-01 02:12:31.220535	t
3491	394	Học lập trình Python cơ bản	{tech,python}	2025-09-29 07:25:43.777783	t
3492	551	Học lập trình Python cơ bản	{review,coffee}	2025-10-26 17:07:59.134012	t
3956	563	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-31 19:04:54.92685	t
3493	539	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-04 23:12:28.972848	t
3494	789	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-11 09:15:51.119557	t
3495	710	Học lập trình Python cơ bản	{tech,python}	2025-10-01 14:29:03.720622	t
3496	46	Học lập trình Python cơ bản	{food,vietnam}	2025-11-05 06:15:43.946172	t
3497	651	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-06 19:47:51.696454	t
3498	704	Review các quán cà phê nổi tiếng	{general}	2025-11-04 11:32:51.102547	t
3499	925	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-13 04:28:39.691889	t
3500	78	Học lập trình Python cơ bản	{food,vietnam}	2025-10-24 06:18:22.344897	t
3501	901	Âm nhạc và cuộc sống	{general}	2025-10-08 09:55:58.739514	t
3502	760	Học lập trình Python cơ bản	{review,coffee}	2025-11-09 09:16:01.085902	t
3503	912	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-24 05:52:51.871966	t
3504	198	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-08 06:31:01.577437	t
3505	80	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-09 17:45:15.414316	t
3506	220	Học lập trình Python cơ bản	{review,coffee}	2025-10-16 01:44:17.076037	f
3507	779	Khám phá du lịch Việt Nam	{food,vietnam}	2025-11-11 00:48:49.734757	t
3508	10	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-11-06 13:55:02.302331	t
3509	933	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-11-04 09:20:00.870813	f
3510	673	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-11-12 08:11:43.471835	t
3511	626	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-10-31 20:33:47.221636	t
3512	225	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-19 11:24:37.564781	t
3513	569	Khám phá du lịch Việt Nam	{general}	2025-10-15 03:26:40.416579	t
3514	323	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-20 06:32:16.728422	f
3515	722	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-13 11:24:15.340358	t
3516	257	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-20 15:23:53.626288	t
3517	414	Âm nhạc và cuộc sống	{general}	2025-10-23 15:06:44.194696	f
3518	281	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-07 05:51:42.823723	f
3519	733	Review các quán cà phê nổi tiếng	{general}	2025-11-01 17:40:19.099086	t
3520	5	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-09-30 09:20:01.868205	f
3521	57	Âm nhạc và cuộc sống	{review,coffee}	2025-09-28 16:13:52.50141	t
3522	656	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-06 23:54:54.335224	t
3523	173	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-01 12:35:00.435745	t
3524	5	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-11-01 03:22:25.472065	f
3525	114	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-26 18:51:14.214503	t
3526	399	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-11-10 00:10:15.438139	t
3527	507	Âm nhạc và cuộc sống	{tech,python}	2025-10-13 12:48:08.444839	t
3528	311	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-02 08:39:02.792914	t
3529	494	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-11-11 13:07:38.778263	f
3530	26	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-16 10:00:31.790826	t
3531	378	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-10 01:24:24.875579	t
3532	105	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-10-08 19:01:32.997108	t
3533	477	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-09 12:53:27.624964	t
3534	361	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-18 08:16:44.369624	t
3535	418	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-09-30 14:29:01.185229	t
3536	824	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-21 10:07:32.654952	t
3537	485	Review các quán cà phê nổi tiếng	{tech,python}	2025-11-05 05:44:01.37586	f
3538	730	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-10-31 10:24:21.523672	t
3539	848	Học lập trình Python cơ bản	{food,vietnam}	2025-10-08 08:50:24.515431	t
3540	624	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-19 15:34:54.223265	f
3541	716	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-29 11:43:39.141856	t
3542	51	Review các quán cà phê nổi tiếng	{general}	2025-10-02 22:53:36.964684	t
3543	221	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-11-09 22:50:53.779055	t
3544	215	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-14 00:20:24.494864	t
3545	647	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-30 14:55:39.259128	t
3546	641	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-23 06:21:00.41357	t
3547	617	Âm nhạc và cuộc sống	{review,coffee}	2025-10-05 22:23:48.498487	t
3548	466	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-12 04:17:14.004509	t
3549	782	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-23 00:15:07.523573	t
3550	248	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-04 07:07:42.697284	t
3551	79	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-03 15:29:56.774413	t
3552	46	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-23 23:18:55.265046	t
3553	59	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-02 00:12:04.218301	t
3554	928	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-20 23:25:13.245159	f
3555	753	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-21 04:12:02.612578	t
3556	503	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-09-28 22:05:10.159097	t
3557	926	Khám phá du lịch Việt Nam	{tech,python}	2025-11-02 06:06:35.571813	t
3558	828	Học lập trình Python cơ bản	{review,coffee}	2025-10-18 00:15:11.3534	t
3559	857	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-11-04 00:16:52.572866	t
3560	996	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-21 10:32:21.353304	t
3561	624	Review các quán cà phê nổi tiếng	{review,coffee}	2025-09-30 05:45:05.339382	t
3562	398	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-09-29 06:33:27.456842	t
3563	443	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-23 19:10:51.314408	t
3564	759	Học lập trình Python cơ bản	{travel,vietnam}	2025-10-28 10:14:35.486239	f
3565	197	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-30 06:06:18.782775	t
3566	962	Khám phá du lịch Việt Nam	{food,vietnam}	2025-10-04 20:56:39.261667	t
3567	615	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-11-05 01:36:51.513148	t
3568	615	Học lập trình Python cơ bản	{tech,python}	2025-11-09 23:20:36.21667	t
3569	212	Học lập trình Python cơ bản	{review,coffee}	2025-11-07 12:59:05.069502	t
3570	412	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-26 01:39:38.27192	t
3571	829	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-01 06:59:06.141868	t
3572	450	Review các quán cà phê nổi tiếng	{general}	2025-10-22 08:56:54.05365	t
3573	889	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-17 18:25:38.569372	f
3574	561	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-09-28 13:56:50.827898	t
3575	669	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-05 18:16:29.626272	t
3576	365	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-11-06 21:12:09.923274	t
3577	646	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-23 21:01:38.189093	t
3578	214	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-16 15:02:19.818789	t
3579	925	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-10-03 17:36:28.908845	f
3580	575	Review các quán cà phê nổi tiếng	{general}	2025-10-19 05:49:12.769245	t
3581	291	Học lập trình Python cơ bản	{food,vietnam}	2025-10-22 08:20:32.330066	t
3582	300	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-31 17:21:05.332069	t
3583	136	Âm nhạc và cuộc sống	{travel,vietnam}	2025-10-10 18:12:37.360465	t
3584	385	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-11-07 07:05:00.282949	t
3585	460	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-25 05:43:51.641373	t
3586	878	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-06 06:39:22.104786	f
3587	25	Review các quán cà phê nổi tiếng	{general}	2025-10-17 20:45:00.379868	t
3588	385	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-08 02:37:02.333623	t
3589	78	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-11-03 10:29:32.860844	t
3590	833	Khám phá du lịch Việt Nam	{travel,vietnam}	2025-10-28 11:41:22.077556	f
3591	846	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-31 23:40:05.94624	t
3592	941	Review các quán cà phê nổi tiếng	{general}	2025-11-10 04:44:07.747292	t
3593	736	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-10-10 01:51:41.982862	t
3594	257	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-11 09:48:47.272633	f
3595	315	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-04 00:22:38.051438	t
3596	408	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-11-09 12:52:55.390278	t
3597	131	Khám phá du lịch Việt Nam	{general}	2025-10-23 21:38:07.303134	t
3598	732	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-11-04 18:34:23.69738	t
3599	733	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-17 13:27:02.630025	f
3600	819	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-29 01:13:52.576253	t
3601	663	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-29 07:34:15.155111	t
3602	624	Học lập trình Python cơ bản	{review,coffee}	2025-10-20 10:42:34.60135	f
3603	454	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-04 18:51:33.609385	f
3604	603	Khám phá du lịch Việt Nam	{food,vietnam}	2025-10-17 12:06:19.5925	t
3605	434	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-16 13:36:09.348893	f
3606	170	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-11 12:02:04.959468	t
3607	451	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-14 00:57:21.599592	t
3608	992	Học lập trình Python cơ bản	{ai,machinelearning}	2025-11-07 16:29:15.669228	t
3609	802	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-08 19:39:20.35123	t
3610	473	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-02 15:03:14.984319	t
3611	839	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-11-09 16:25:31.955824	f
3612	637	Học lập trình Python cơ bản	{review,coffee}	2025-09-28 22:51:04.722334	t
3613	190	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-18 17:25:45.227841	t
3614	839	Học lập trình Python cơ bản	{review,coffee}	2025-10-29 20:09:49.71374	t
3615	820	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-09 03:40:55.509452	t
3616	491	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-28 08:32:15.810083	f
3617	601	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-24 03:40:49.312107	t
3618	141	Âm nhạc và cuộc sống	{review,coffee}	2025-11-01 23:48:47.332162	t
3619	25	Âm nhạc và cuộc sống	{tech,python}	2025-10-18 11:43:58.84301	t
3620	366	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-04 14:18:38.798517	t
3621	811	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-11-11 12:24:51.921814	t
3622	347	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-31 02:32:14.439973	t
3623	63	Học lập trình Python cơ bản	{ai,machinelearning}	2025-11-01 11:52:30.376285	f
3624	537	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-10-22 17:17:47.311877	t
3625	486	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-22 10:04:14.735482	t
3626	123	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-10-08 23:16:25.769631	t
3627	502	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-11-06 06:34:31.514064	t
3628	174	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-26 19:53:03.331698	t
3629	773	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-08 04:57:59.034606	t
3630	922	Học lập trình Python cơ bản	{tech,python}	2025-11-05 22:45:47.000979	t
3631	594	Âm nhạc và cuộc sống	{food,vietnam}	2025-11-01 10:53:18.025025	t
3632	226	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-11-05 22:25:26.172826	t
3633	870	Học lập trình Python cơ bản	{ai,machinelearning}	2025-11-02 07:22:10.909348	t
3634	633	Học lập trình Python cơ bản	{review,coffee}	2025-10-04 03:00:03.056219	t
3635	424	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-26 14:39:14.448373	t
3636	393	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-03 03:19:50.514447	t
3637	772	Âm nhạc và cuộc sống	{travel,vietnam}	2025-10-02 05:05:15.84494	f
3638	325	Khám phá du lịch Việt Nam	{travel,vietnam}	2025-10-06 12:10:13.408459	t
3639	305	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-01 13:36:35.980321	t
3640	601	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-08 05:16:56.583241	f
3641	663	Âm nhạc và cuộc sống	{travel,vietnam}	2025-11-10 15:42:06.661968	f
3642	597	Học lập trình Python cơ bản	{review,coffee}	2025-10-18 02:51:44.277525	t
3643	41	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-27 17:24:18.925209	t
3644	133	Học lập trình Python cơ bản	{tech,python}	2025-10-18 03:00:24.332661	f
3645	849	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-11-02 18:21:47.724834	t
3646	231	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-07 22:17:54.488843	t
3647	537	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-10-31 22:01:30.884095	t
3648	88	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-19 00:01:15.424269	t
3649	289	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-17 01:40:34.291715	f
3650	928	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-11-07 15:53:15.41214	t
3651	545	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-11-07 19:42:56.83503	f
3652	153	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-31 05:04:15.64682	t
3653	671	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-16 17:14:42.283145	t
3654	310	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-21 12:20:20.834895	t
3655	595	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-11-11 10:25:43.472558	f
3656	764	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-07 00:01:35.964355	t
3657	967	Khám phá du lịch Việt Nam	{review,coffee}	2025-11-09 22:53:52.641856	t
3658	876	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-17 07:25:16.600611	t
3659	93	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-31 00:27:08.495752	t
3660	230	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-11-12 10:19:25.277329	f
3661	303	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-11-01 09:30:08.130292	t
3662	438	Âm nhạc và cuộc sống	{tech,python}	2025-10-12 02:15:52.966618	t
3663	84	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-09 06:28:53.524158	t
3664	377	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-27 17:15:01.85341	t
3665	919	Âm nhạc và cuộc sống	{travel,vietnam}	2025-10-19 10:58:33.90692	t
3666	915	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-12 09:40:49.702714	t
3667	63	Học lập trình Python cơ bản	{tech,python}	2025-10-05 12:47:11.273011	t
3668	319	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-04 23:10:34.463158	f
3669	149	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-11 20:35:37.111245	t
3670	997	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-15 12:25:47.768614	t
3671	643	Giới thiệu công nghệ AI hiện đại	{general}	2025-10-03 19:09:57.287468	t
3672	983	Học lập trình Python cơ bản	{food,vietnam}	2025-09-29 11:09:02.979668	t
3673	958	Review các quán cà phê nổi tiếng	{general}	2025-10-07 07:50:19.498034	t
3674	860	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-29 05:43:58.743902	t
3675	800	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-01 15:53:31.139306	f
3676	21	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-04 17:17:46.671174	t
3677	128	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-27 19:12:52.577879	t
3678	106	Khám phá du lịch Việt Nam	{general}	2025-11-03 20:55:55.294101	f
3679	645	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-14 01:19:04.056651	t
3680	905	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-02 02:32:25.212308	t
3681	162	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-08 16:46:11.583321	t
3682	689	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-28 03:29:58.556936	t
3683	765	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-10-30 01:29:52.44698	t
3684	443	Khám phá du lịch Việt Nam	{travel,vietnam}	2025-10-29 00:11:23.623377	t
3685	127	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-08 08:54:35.587325	t
3686	453	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-16 04:43:26.646862	t
3687	902	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-01 00:03:17.868504	t
3688	471	Review các quán cà phê nổi tiếng	{tech,python}	2025-09-29 08:53:34.81164	t
3689	265	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-13 20:45:55.377237	t
3690	37	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-11-03 08:59:52.113712	f
3691	398	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-03 23:26:07.874064	t
3692	883	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-06 14:42:15.464895	t
3693	132	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-29 06:47:35.575117	t
3694	209	Âm nhạc và cuộc sống	{tech,python}	2025-10-08 18:21:22.854533	t
3695	945	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-15 19:13:54.530758	t
3696	377	Review các quán cà phê nổi tiếng	{general}	2025-11-03 20:20:50.190339	f
3697	582	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-09-29 05:10:24.192977	t
3698	827	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-15 21:34:21.602034	t
3699	377	Âm nhạc và cuộc sống	{tech,python}	2025-10-04 06:44:22.805345	t
3700	375	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-05 17:36:12.750111	t
3701	979	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-11-12 05:05:40.639106	t
3702	234	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-25 02:23:29.383528	f
3703	533	Khám phá du lịch Việt Nam	{tech,python}	2025-10-03 14:46:53.370044	t
3704	113	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-11 03:49:08.727613	f
3705	484	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-11-08 10:09:41.004212	t
3706	505	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-10 02:34:28.788299	t
3707	852	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-06 18:39:55.361437	t
3708	447	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-16 11:52:12.654683	t
3709	794	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-11-06 11:23:03.039143	t
3710	492	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-12 07:37:50.606613	f
3711	161	Học lập trình Python cơ bản	{review,coffee}	2025-09-30 05:58:41.26334	t
3712	405	Học lập trình Python cơ bản	{general}	2025-10-30 01:08:16.239409	f
3713	611	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-02 21:01:35.306286	t
3714	953	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-01 19:19:27.038407	t
3715	397	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-06 12:23:45.684766	t
3716	384	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-11 10:08:10.683414	t
3717	640	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-28 10:04:01.36098	t
3718	885	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-27 20:34:19.491434	t
3719	633	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-23 05:34:36.178822	t
3720	724	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-05 02:31:26.465334	t
3721	567	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-21 03:57:03.013123	f
3722	476	Âm nhạc và cuộc sống	{general}	2025-10-07 23:37:31.876257	f
3723	421	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-11-08 20:50:18.245769	t
3724	156	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-08 10:31:38.363176	t
3725	463	Review các quán cà phê nổi tiếng	{review,coffee}	2025-11-02 06:16:27.032677	t
3726	243	Âm nhạc và cuộc sống	{tech,python}	2025-11-01 01:56:03.366512	f
3727	298	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-11-06 00:48:06.557347	t
3728	493	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-28 07:39:48.982587	t
3729	705	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-10-23 12:09:14.584894	t
3730	839	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-06 17:29:16.238484	t
3731	736	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-06 14:29:25.436107	t
3732	193	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-03 03:07:28.802479	t
3733	223	Học lập trình Python cơ bản	{review,coffee}	2025-11-08 02:41:18.53846	t
3734	13	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-30 12:03:11.701478	t
3735	807	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-19 01:55:52.066865	t
3736	52	Học lập trình Python cơ bản	{food,vietnam}	2025-10-29 10:02:20.374614	t
3737	265	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-15 00:07:54.414482	t
3738	389	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-10-10 23:59:24.040141	t
3739	305	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-11-01 02:53:15.047097	t
3740	165	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-07 16:59:47.126058	t
3741	319	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-07 04:45:29.151644	t
3742	880	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-09 10:07:27.230503	f
3743	104	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-18 11:55:49.400425	t
3744	722	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-10-11 06:38:41.541703	t
3745	699	Học lập trình Python cơ bản	{tech,python}	2025-10-08 08:05:53.561468	t
3746	305	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-13 20:15:19.089979	t
3747	212	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-09-29 06:44:26.390383	t
3748	827	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-15 12:20:17.942857	t
3749	351	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-25 00:27:02.880754	t
3750	25	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-11-01 07:39:01.473206	t
3751	816	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-08 12:05:04.467691	t
3752	671	Âm nhạc và cuộc sống	{travel,vietnam}	2025-10-25 06:53:03.882077	f
3753	981	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-11-07 21:08:42.195246	t
3754	786	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-11-01 10:20:15.311409	t
3755	642	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-03 19:43:52.224837	t
3756	376	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-05 10:43:24.12397	t
3757	859	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-16 08:46:11.759312	t
3758	720	Học lập trình Python cơ bản	{general}	2025-11-03 12:48:00.099492	t
3759	414	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-14 21:16:11.835657	t
3760	307	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-11-09 08:10:37.514463	t
3761	969	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-21 06:33:40.648828	t
3762	634	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-17 18:32:01.100736	t
3763	166	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-14 13:44:39.331916	t
3764	991	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-10-13 12:21:20.452026	t
3765	828	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-20 03:08:56.31011	t
3766	287	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-11-11 06:19:19.186326	t
3767	88	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-28 11:06:22.159177	t
3768	618	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-25 23:19:56.590925	t
3769	514	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-10 13:58:08.144915	t
3770	764	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-11-03 10:45:42.750741	t
3771	369	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-01 13:05:57.646586	f
3772	859	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-20 06:31:54.611198	t
3773	663	Học lập trình Python cơ bản	{food,vietnam}	2025-10-23 06:25:46.875453	t
3774	503	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-28 01:37:27.043601	t
3775	952	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-10-08 20:51:18.291632	t
3776	607	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-11-11 00:02:43.086726	t
3777	708	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-11-10 07:51:00.622545	t
3778	923	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-11-07 07:17:01.720858	t
3779	783	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-11-01 05:31:45.013052	t
3780	39	Âm nhạc và cuộc sống	{general}	2025-10-23 17:38:15.55536	t
3781	46	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-04 06:48:36.478639	f
3782	740	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-06 08:14:03.88649	f
3783	628	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-11-10 15:51:22.435299	t
3784	348	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-13 08:40:48.428535	f
3785	932	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-11-06 07:42:53.994633	t
3786	306	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-08 19:00:58.424543	t
3787	112	Âm nhạc và cuộc sống	{tech,python}	2025-10-31 12:31:41.314683	f
3788	484	Khám phá du lịch Việt Nam	{tech,python}	2025-10-10 06:38:51.335812	f
3789	197	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-11-04 02:48:36.923959	t
3790	745	Học lập trình Python cơ bản	{travel,vietnam}	2025-10-10 05:38:34.080062	t
3791	112	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-11-02 02:10:26.430985	t
3792	244	Học lập trình Python cơ bản	{tech,python}	2025-10-02 15:03:13.66083	t
3793	869	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-19 23:22:16.46312	f
3794	5	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-11-10 20:21:14.573787	f
3795	623	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-13 18:28:04.340807	t
3796	732	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-12 01:46:05.247531	t
3797	189	Học lập trình Python cơ bản	{food,vietnam}	2025-10-30 14:06:48.898908	t
3798	581	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-22 23:17:59.705521	t
3799	963	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-26 21:11:43.201342	t
3800	28	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-09-28 20:29:46.660678	t
3801	793	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-04 14:27:15.69362	t
3802	750	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-15 14:15:00.278643	t
3803	687	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-16 17:48:59.229443	t
3804	225	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-03 21:12:14.330241	t
3805	68	Khám phá du lịch Việt Nam	{general}	2025-10-30 04:13:03.772525	t
3806	986	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-11-11 11:05:24.027264	t
3807	55	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-10-08 07:44:38.897165	f
3808	815	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-07 03:54:31.255593	t
3809	38	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-12 01:25:44.955377	t
3810	186	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-16 08:21:10.910062	t
3811	900	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-22 23:14:14.862038	t
3812	514	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-10-26 21:12:58.806755	t
3813	675	Khám phá du lịch Việt Nam	{tech,python}	2025-10-26 17:20:20.814905	t
3814	916	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-11-09 08:10:26.477344	t
3815	128	Học lập trình Python cơ bản	{food,vietnam}	2025-10-22 14:45:37.337558	t
3816	539	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-16 03:48:39.204454	t
3817	560	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-10 01:18:14.855258	t
3818	846	Học lập trình Python cơ bản	{tech,python}	2025-11-06 07:02:23.419877	t
3819	666	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-22 18:11:38.788051	t
3820	975	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-28 05:35:43.967978	f
3821	564	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-01 15:09:35.368191	t
3822	600	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-05 20:59:28.002041	t
3823	496	Học lập trình Python cơ bản	{review,coffee}	2025-10-07 15:30:22.532121	t
3824	842	Khám phá du lịch Việt Nam	{travel,vietnam}	2025-10-20 22:22:05.800065	t
3825	510	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-22 16:02:07.983479	f
3826	368	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-11 19:51:26.711144	t
3827	644	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-10 12:28:05.32961	t
3828	582	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-09 04:20:20.973037	t
3829	858	Khám phá du lịch Việt Nam	{review,coffee}	2025-09-29 17:34:25.647292	t
3830	700	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-02 20:46:50.675492	t
3831	409	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-07 14:03:46.695533	t
3832	552	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-04 04:33:25.822111	t
3833	852	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-03 04:47:20.233257	t
3834	951	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-21 20:33:30.783889	t
3835	349	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-16 21:51:00.396223	t
3836	989	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-01 05:39:40.069787	t
3837	392	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-14 03:43:11.427592	t
3838	66	Review các quán cà phê nổi tiếng	{general}	2025-10-20 05:01:58.114734	t
3839	215	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-27 22:12:09.369072	t
3840	265	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-27 01:18:23.993239	t
3841	456	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-12 22:35:51.358329	f
3842	391	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-03 19:53:47.702436	f
3843	151	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-08 06:48:52.704025	t
3844	960	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-10-14 00:13:09.83169	t
3845	610	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-14 06:58:44.543603	t
3846	757	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-19 04:22:14.796469	t
3847	725	Âm nhạc và cuộc sống	{tech,python}	2025-10-02 10:48:34.791048	f
3848	907	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-06 20:24:18.606733	t
3849	738	Review các quán cà phê nổi tiếng	{review,coffee}	2025-11-06 13:06:17.16158	t
3850	24	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-27 15:10:45.505342	t
3851	574	Học lập trình Python cơ bản	{ai,machinelearning}	2025-11-02 18:01:03.213387	t
3852	830	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-29 07:00:02.08648	t
3853	167	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-18 18:53:16.684332	t
3854	794	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-22 04:56:22.263708	t
3855	922	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-11-12 03:51:17.120593	t
3856	115	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-31 14:20:00.84794	f
3857	24	Khám phá du lịch Việt Nam	{food,vietnam}	2025-11-11 07:07:43.488089	t
3858	439	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-25 03:02:25.178056	t
3859	836	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-31 04:18:36.050408	t
3860	978	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-20 01:41:10.133208	t
3861	166	Review các quán cà phê nổi tiếng	{tech,python}	2025-11-03 10:44:41.548979	f
3862	133	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-13 04:02:18.825822	t
3863	51	Học lập trình Python cơ bản	{review,coffee}	2025-10-02 20:07:55.459984	t
3864	959	Âm nhạc và cuộc sống	{tech,python}	2025-10-26 12:31:55.454853	t
3865	639	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-27 13:13:40.679242	t
3866	136	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-11-02 18:55:07.100176	t
3867	509	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-10-09 10:56:31.033524	t
3868	508	Review các quán cà phê nổi tiếng	{tech,python}	2025-09-30 23:30:30.248233	t
3869	979	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-11-04 03:31:43.967168	t
3870	360	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-28 15:17:46.035768	t
3871	564	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-05 07:27:10.330938	t
3872	781	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-11-10 16:06:28.779057	t
3873	271	Review các quán cà phê nổi tiếng	{review,coffee}	2025-11-10 03:27:49.758508	t
3874	517	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-19 11:35:16.104463	t
3875	497	Âm nhạc và cuộc sống	{general}	2025-10-08 12:52:36.174158	f
3876	533	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-02 23:58:51.377698	t
3877	8	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-04 23:41:15.587009	t
3878	171	Học lập trình Python cơ bản	{ai,machinelearning}	2025-09-29 04:19:20.297705	t
3879	822	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-11-02 10:15:28.947864	t
3880	384	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-28 19:53:09.294755	t
3881	172	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-31 09:31:25.377996	t
3882	266	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-11-03 09:54:27.409488	t
3883	246	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-28 10:40:04.725452	f
3884	914	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-13 20:24:19.754684	t
3885	655	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-29 23:42:39.834086	t
3886	241	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-31 11:00:20.491619	t
3887	861	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-17 01:20:31.60377	t
3888	437	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-11-10 12:02:17.758812	t
3889	60	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-04 13:05:24.473928	t
3890	691	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-10-24 23:47:24.708985	t
3891	510	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-17 05:24:26.23512	f
3892	81	Học lập trình Python cơ bản	{tech,python}	2025-10-03 13:23:41.978459	t
3893	470	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-10-29 01:53:25.194684	t
3894	462	Khám phá du lịch Việt Nam	{general}	2025-09-29 03:02:52.121568	f
3895	417	Âm nhạc và cuộc sống	{travel,vietnam}	2025-10-30 10:22:05.098753	t
3896	679	Âm nhạc và cuộc sống	{review,coffee}	2025-10-16 07:03:23.162284	t
3897	226	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-11-08 22:29:34.667353	t
3898	576	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-25 20:40:34.046519	t
3899	269	Review các quán cà phê nổi tiếng	{general}	2025-10-30 05:05:37.838942	t
3900	411	Âm nhạc và cuộc sống	{tech,python}	2025-10-20 21:27:30.922356	t
3901	120	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-17 19:42:11.809133	t
3902	236	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-17 13:24:04.800217	f
3903	756	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-16 15:57:59.965532	t
3904	694	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-29 00:34:25.458325	t
3905	564	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-11-01 03:04:34.069188	f
3906	631	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-01 03:26:07.50534	t
3907	468	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-11 20:30:04.676501	f
3908	62	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-11-08 21:46:50.924727	f
3909	938	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-11-01 05:34:02.485756	t
3910	84	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-12 02:03:46.331236	t
3911	667	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-13 17:39:03.051113	f
3912	345	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-11-08 07:54:06.341241	t
3913	953	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-12 11:28:22.56244	t
3914	540	Review các quán cà phê nổi tiếng	{tech,python}	2025-11-03 16:30:37.060105	t
3915	146	Học lập trình Python cơ bản	{tech,python}	2025-09-28 17:40:46.655624	t
3916	157	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-03 14:14:30.926608	f
3917	205	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-11-03 04:11:47.382933	f
3918	809	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-11-07 08:19:16.668416	t
3919	286	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-10 06:01:39.985997	t
3920	362	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-04 22:02:08.56428	t
3921	113	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-13 18:10:02.017494	t
3922	514	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-10-26 23:26:27.069512	t
3923	483	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-09 20:27:53.710849	f
3924	260	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-07 09:35:42.569445	t
3925	429	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-16 18:14:09.173275	t
3926	601	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-11-08 18:17:22.65595	t
3927	104	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-20 14:45:34.895907	t
3928	998	Học lập trình Python cơ bản	{food,vietnam}	2025-11-09 13:09:57.897364	t
3929	767	Khám phá du lịch Việt Nam	{general}	2025-10-29 06:42:35.995725	t
3930	394	Âm nhạc và cuộc sống	{travel,vietnam}	2025-10-08 09:23:36.144674	t
3931	793	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-04 12:16:33.659362	t
3932	588	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-25 15:59:13.381945	t
3933	163	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-16 15:32:03.612882	f
3934	979	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-10-02 05:24:12.680601	f
3935	167	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-11-12 07:58:05.24717	t
3936	943	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-07 18:49:06.245644	t
3937	458	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-25 01:54:51.387938	t
3938	442	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-02 02:23:09.029079	t
3939	673	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-09 09:27:43.322547	t
3940	256	Âm nhạc và cuộc sống	{general}	2025-10-15 04:29:34.427513	t
3941	110	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-22 13:30:21.418779	t
3942	438	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-09-30 07:01:52.347964	t
3943	365	Khám phá du lịch Việt Nam	{tech,python}	2025-11-06 05:12:31.089135	t
3944	367	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-29 01:59:24.309574	t
3945	159	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-16 22:45:06.124379	t
3946	578	Học lập trình Python cơ bản	{food,vietnam}	2025-10-26 13:50:37.170196	t
3947	168	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-23 05:40:25.756683	t
3948	765	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-11-01 23:05:36.159341	t
3949	678	Review các quán cà phê nổi tiếng	{general}	2025-10-22 20:26:41.426597	t
3950	268	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-01 15:02:41.385013	t
3951	525	Âm nhạc và cuộc sống	{review,coffee}	2025-10-17 19:02:43.317289	t
3952	595	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-08 21:20:19.529996	t
3953	380	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-13 09:20:49.923062	t
3954	111	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-08 19:52:22.976207	t
3955	24	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-08 01:52:46.879685	t
3957	732	Âm nhạc và cuộc sống	{travel,vietnam}	2025-10-04 17:17:15.908355	t
3958	69	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-22 10:02:31.628935	t
3959	925	Âm nhạc và cuộc sống	{tech,python}	2025-10-10 10:16:28.526095	t
3960	518	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-22 05:44:05.179514	t
3961	160	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-13 08:07:58.805766	t
3962	123	Học lập trình Python cơ bản	{travel,vietnam}	2025-10-24 05:51:46.781995	t
3963	17	Học lập trình Python cơ bản	{food,vietnam}	2025-11-12 03:57:59.377743	t
3964	937	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-12 04:23:46.1404	t
3965	298	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-18 00:20:18.791164	t
3966	505	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-08 11:17:13.878854	t
3967	293	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-11-10 23:50:03.87352	t
3968	93	Học lập trình Python cơ bản	{travel,vietnam}	2025-10-31 08:27:59.613218	t
3969	97	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-11-08 07:36:38.690489	t
3970	927	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-10 13:02:28.383129	t
3971	925	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-11-10 16:28:21.079546	t
3972	661	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-10 10:41:57.329093	t
3973	652	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-11-10 18:43:08.393437	f
3974	770	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-29 20:16:12.183282	t
3975	164	Âm nhạc và cuộc sống	{review,coffee}	2025-11-03 00:32:35.667331	t
3976	605	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-10-27 08:23:52.243484	f
3977	792	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-29 07:52:40.856256	t
3978	334	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-11 07:51:02.913169	t
3979	327	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-28 06:54:24.420619	t
3980	512	Âm nhạc và cuộc sống	{review,coffee}	2025-11-07 09:38:32.390507	t
3981	173	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-10 18:27:51.4198	t
3982	194	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-03 23:21:03.487715	t
3983	193	Âm nhạc và cuộc sống	{food,vietnam}	2025-11-08 22:33:06.124896	t
3984	477	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-13 09:16:33.097553	t
3985	617	Học lập trình Python cơ bản	{review,coffee}	2025-11-09 17:52:42.230468	f
3986	127	Review các quán cà phê nổi tiếng	{tech,python}	2025-09-28 18:48:41.237249	t
3987	581	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-16 21:58:49.227134	f
3988	463	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-16 22:17:52.574171	f
3989	595	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-09-28 12:20:15.269772	t
3990	301	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-23 17:20:25.837772	t
3991	337	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-05 14:21:56.073816	t
3992	679	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-23 21:08:05.514691	t
3993	631	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-11-05 11:04:17.37255	f
3994	807	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-11-09 15:18:49.434235	f
3995	791	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-25 20:44:05.97078	t
3996	269	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-07 01:15:09.218185	t
3997	786	Học lập trình Python cơ bản	{food,vietnam}	2025-10-23 22:57:26.714546	t
3998	30	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-11-07 01:40:38.134213	t
3999	86	Khám phá du lịch Việt Nam	{travel,vietnam}	2025-10-10 06:30:05.619237	t
4000	155	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-09-28 10:35:11.931169	t
4001	482	Âm nhạc và cuộc sống	{tech,python}	2025-11-08 00:18:48.916225	f
4002	456	Học lập trình Python cơ bản	{general}	2025-10-03 11:59:40.83102	t
4003	203	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-11-06 16:30:52.435818	t
4004	815	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-24 14:46:53.425698	t
4005	1000	Âm nhạc và cuộc sống	{review,coffee}	2025-11-02 13:31:16.020395	t
4006	831	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-11-10 09:50:28.306022	t
4007	414	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-11-03 21:55:41.359122	t
4008	956	Học lập trình Python cơ bản	{tech,python}	2025-10-29 09:54:49.515881	t
4009	775	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-01 04:24:07.779906	t
4010	184	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-27 21:23:56.943154	t
4011	42	Thể thao và sức khỏe mỗi ngày	{general}	2025-11-05 00:07:20.115669	t
4012	149	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-10-16 11:59:40.756106	t
4013	803	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-19 14:35:30.318479	t
4014	509	Giới thiệu công nghệ AI hiện đại	{general}	2025-11-01 20:12:14.029239	t
4015	750	Khám phá du lịch Việt Nam	{tech,python}	2025-10-27 04:10:27.402808	t
4016	944	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-06 14:16:24.302628	f
4017	988	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-13 07:47:36.087201	t
4018	378	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-27 03:31:50.272983	f
4019	834	Học lập trình Python cơ bản	{travel,vietnam}	2025-10-20 05:17:58.491021	t
4020	136	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-09 14:29:56.166371	t
4021	705	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-05 13:42:37.987352	t
4022	191	Học lập trình Python cơ bản	{tech,python}	2025-09-30 00:21:32.688861	t
4023	173	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-10-15 14:13:58.834528	t
4024	399	Học lập trình Python cơ bản	{travel,vietnam}	2025-10-06 11:19:48.33361	t
4025	136	Âm nhạc và cuộc sống	{review,coffee}	2025-11-05 03:17:57.592253	t
4026	959	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-17 02:05:08.335274	t
4027	310	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-11-10 18:26:54.299018	t
4028	502	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-09 09:07:36.904763	t
4029	913	Khám phá du lịch Việt Nam	{tech,python}	2025-10-30 02:20:56.584119	f
4030	65	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-30 04:06:19.648965	t
4031	813	Giới thiệu công nghệ AI hiện đại	{general}	2025-09-29 11:35:06.388102	f
4032	812	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-06 00:52:34.389005	t
4033	693	Review các quán cà phê nổi tiếng	{tech,python}	2025-09-29 18:59:11.8666	t
4034	170	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-27 11:28:06.124338	t
4035	115	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-13 19:34:40.51238	t
4036	236	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-13 18:09:58.446161	t
4037	194	Học lập trình Python cơ bản	{food,vietnam}	2025-10-16 19:37:45.169036	t
4038	170	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-11-09 05:33:05.230712	t
4039	520	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-01 17:48:19.296893	t
4040	188	Học lập trình Python cơ bản	{ai,machinelearning}	2025-11-12 10:27:52.431853	t
4041	244	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-24 08:58:22.877998	t
4042	894	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-15 08:50:31.974352	t
4043	58	Âm nhạc và cuộc sống	{review,coffee}	2025-10-16 09:48:19.696575	t
4044	646	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-11-03 17:03:10.968915	f
4045	399	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-07 06:38:10.344879	t
4046	644	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-09 05:26:42.975335	t
4047	924	Review các quán cà phê nổi tiếng	{general}	2025-10-30 05:33:41.928529	t
4048	668	Học lập trình Python cơ bản	{tech,python}	2025-11-10 18:48:57.960417	t
4049	392	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-13 12:03:31.502443	t
4050	856	Học lập trình Python cơ bản	{travel,vietnam}	2025-10-03 13:44:58.760773	t
4051	621	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-12 15:07:49.357694	t
4052	379	Âm nhạc và cuộc sống	{general}	2025-11-04 05:49:12.347864	t
4053	265	Âm nhạc và cuộc sống	{tech,python}	2025-11-04 09:20:44.354366	t
4054	159	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-09 03:22:11.112095	t
4055	987	Học lập trình Python cơ bản	{review,coffee}	2025-09-28 10:36:03.239663	t
4056	98	Review các quán cà phê nổi tiếng	{general}	2025-10-26 09:04:28.149638	t
4057	393	Học lập trình Python cơ bản	{tech,python}	2025-11-09 10:41:27.997892	t
4058	943	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-11-12 02:34:45.358319	t
4059	682	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-12 14:37:20.707979	f
4060	34	Học lập trình Python cơ bản	{food,vietnam}	2025-10-07 22:07:22.9658	t
4061	479	Học lập trình Python cơ bản	{food,vietnam}	2025-10-08 01:37:20.798421	t
4062	880	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-10-26 12:24:59.750905	t
4063	984	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-10-09 11:15:45.424481	t
4064	377	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-10-31 22:24:43.176768	t
4065	655	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-26 16:19:46.732723	t
4066	201	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-09-28 22:02:08.155836	t
4067	162	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-09-29 13:31:53.883809	f
4068	364	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-28 06:16:08.343518	t
4069	40	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-05 10:44:59.093631	t
4070	658	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-25 06:24:39.021059	f
4071	623	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-14 14:46:58.283316	f
4072	582	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-10 18:15:54.065921	f
4073	378	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-05 04:11:34.73817	t
4074	48	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-27 02:29:12.292305	t
4075	895	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-02 14:54:09.217135	f
4076	101	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-11-07 15:15:02.562987	t
4077	414	Học lập trình Python cơ bản	{tech,python}	2025-11-03 04:29:23.884061	t
4078	140	Học lập trình Python cơ bản	{tech,python}	2025-10-29 22:27:04.43868	t
4079	634	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-01 13:22:22.818103	t
4080	842	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-23 20:01:03.759711	t
4081	626	Học lập trình Python cơ bản	{general}	2025-10-19 22:36:10.852522	t
4082	975	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-30 13:41:24.968145	t
4083	388	Học lập trình Python cơ bản	{tech,python}	2025-11-01 05:53:34.900336	t
4084	970	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-11-02 19:26:17.107856	t
4085	643	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-11-02 09:13:59.830475	t
4086	302	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-09-30 15:52:31.716747	t
4087	231	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-04 06:27:09.704856	t
4088	891	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-11-11 00:35:11.197549	t
4089	931	Học lập trình Python cơ bản	{tech,python}	2025-10-04 22:01:07.989888	f
4090	889	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-27 07:58:26.659102	t
4091	666	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-07 07:32:28.451842	t
4092	962	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-04 08:28:54.408062	t
4093	546	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-22 23:44:58.835517	t
4094	320	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-01 14:58:57.790774	f
4095	679	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-18 07:08:07.152054	t
4096	537	Khám phá du lịch Việt Nam	{general}	2025-10-26 19:17:11.589852	f
4097	902	Khám phá du lịch Việt Nam	{review,coffee}	2025-11-08 12:22:59.08265	t
4098	904	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-07 05:12:43.891457	t
4099	109	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-29 22:40:00.898693	t
4100	940	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-23 16:40:35.768344	t
4101	262	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-11-08 05:14:59.498533	t
4102	405	Âm nhạc và cuộc sống	{review,coffee}	2025-11-06 17:36:24.035851	t
4103	8	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-19 16:17:53.646066	f
4104	57	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-11 11:29:28.209388	t
4105	177	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-10-02 21:26:40.967526	t
4106	419	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-09-29 16:25:31.364684	t
4107	624	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-03 19:43:17.113681	t
4108	602	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-05 00:33:30.076367	f
4109	347	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-09-30 12:32:34.374653	t
4110	824	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-11-07 10:55:41.800511	t
4111	30	Học lập trình Python cơ bản	{tech,python}	2025-10-18 23:59:25.600167	t
4112	167	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-12 07:34:17.049846	t
4113	187	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-03 08:22:02.54563	t
4114	687	Học lập trình Python cơ bản	{food,vietnam}	2025-10-22 09:26:46.115967	t
4115	243	Học lập trình Python cơ bản	{review,coffee}	2025-11-05 09:20:58.975676	f
4116	223	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-12 12:19:36.976159	t
4117	749	Thể thao và sức khỏe mỗi ngày	{general}	2025-11-04 05:19:00.156943	t
4118	49	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-10-03 10:23:55.354615	t
4119	655	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-18 05:53:41.686165	t
4120	938	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-17 16:09:49.6613	t
4121	388	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-06 01:16:34.652551	t
4122	458	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-11-05 02:43:53.315631	t
4123	517	Âm nhạc và cuộc sống	{tech,python}	2025-11-12 06:51:50.880224	t
4124	197	Âm nhạc và cuộc sống	{food,vietnam}	2025-11-10 20:34:29.345111	t
4125	841	Học lập trình Python cơ bản	{tech,python}	2025-10-21 04:29:37.131017	t
4126	427	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-18 11:56:20.321889	t
4127	25	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-11-04 02:25:35.616321	t
4128	971	Âm nhạc và cuộc sống	{general}	2025-10-13 14:02:42.691515	t
4129	379	Học lập trình Python cơ bản	{food,vietnam}	2025-10-22 16:15:05.265967	t
4130	879	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-15 01:43:33.741119	t
4131	778	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-06 07:10:56.672851	t
4132	792	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-15 08:48:03.221433	t
4133	534	Học lập trình Python cơ bản	{food,vietnam}	2025-11-12 05:50:52.361431	t
4134	397	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-03 16:43:35.442715	f
4135	650	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-03 01:56:36.220865	t
4136	155	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-25 22:14:51.490978	t
4137	121	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-10-14 13:59:23.259673	t
4138	195	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-28 22:07:54.999219	t
4139	730	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-06 21:05:52.627261	t
4140	226	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-28 16:52:35.256032	t
4141	443	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-04 10:01:47.984417	t
4142	150	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-11-03 21:38:47.38145	f
4143	265	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-14 05:11:52.445544	t
4144	879	Khám phá du lịch Việt Nam	{food,vietnam}	2025-11-11 00:06:43.78153	t
4145	719	Âm nhạc và cuộc sống	{tech,python}	2025-11-01 06:43:56.542909	f
4146	879	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-25 21:13:14.179353	t
4147	780	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-09 21:48:21.049125	t
4148	513	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-27 14:18:29.86481	t
4149	809	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-16 23:54:51.174086	t
4150	644	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-07 04:13:58.212563	t
4151	572	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-09-30 16:10:39.918512	t
4152	878	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-07 17:24:04.304858	t
4153	75	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-30 23:41:37.576719	f
4154	284	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-11-01 02:06:45.592306	t
4155	68	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-10-10 22:38:45.81174	t
4156	166	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-11-03 18:23:15.286422	t
4157	194	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-11-07 15:25:32.3382	t
4158	599	Học lập trình Python cơ bản	{food,vietnam}	2025-10-17 05:54:12.64986	t
4159	840	Review các quán cà phê nổi tiếng	{review,coffee}	2025-11-08 09:38:30.193631	t
4160	730	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-31 05:52:18.735406	t
4161	724	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-19 09:15:51.393558	t
4162	691	Học lập trình Python cơ bản	{review,coffee}	2025-11-11 09:38:58.684146	t
4163	100	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-10-11 11:59:26.444167	f
4164	94	Âm nhạc và cuộc sống	{review,coffee}	2025-10-15 01:02:35.196062	t
4165	25	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-02 08:43:29.129908	t
4166	353	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-11-08 09:44:16.643261	t
4167	227	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-19 00:35:43.457742	f
4168	564	Âm nhạc và cuộc sống	{tech,python}	2025-11-10 20:13:51.767344	t
4169	652	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-04 15:36:37.86005	t
4170	570	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-26 16:44:36.374696	t
4171	852	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-15 16:04:26.454361	t
4172	867	Review các quán cà phê nổi tiếng	{tech,python}	2025-09-29 20:40:24.580276	t
4173	774	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-23 06:55:36.0154	t
4174	801	Khám phá du lịch Việt Nam	{tech,python}	2025-10-20 02:43:57.631568	t
4175	504	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-24 15:27:14.049551	t
4176	642	Học lập trình Python cơ bản	{tech,python}	2025-11-03 20:03:00.94426	t
4177	746	Học lập trình Python cơ bản	{food,vietnam}	2025-10-24 07:37:36.274518	t
4178	783	Âm nhạc và cuộc sống	{review,coffee}	2025-11-02 20:29:25.823121	t
4179	131	Học lập trình Python cơ bản	{food,vietnam}	2025-10-22 06:01:15.575594	t
4180	190	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-13 01:24:41.793271	t
4181	470	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-11-04 09:14:53.627835	t
4182	356	Khám phá du lịch Việt Nam	{food,vietnam}	2025-10-25 09:12:13.088815	f
4183	899	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-09-28 16:05:36.156992	t
4184	232	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-30 17:20:03.29241	t
4185	277	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-14 05:53:21.489161	t
4186	694	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-07 07:11:09.19091	t
4187	92	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-28 22:03:39.575132	t
4188	977	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-08 09:13:44.84367	t
4189	859	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-09-29 16:04:58.93657	t
4190	452	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-11-02 23:31:29.676431	t
4191	489	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-23 14:38:53.030835	f
4192	375	Review các quán cà phê nổi tiếng	{review,coffee}	2025-11-09 06:57:13.558591	t
4193	856	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-18 22:39:31.947263	t
4194	989	Học lập trình Python cơ bản	{tech,python}	2025-10-06 14:41:26.31361	t
4195	504	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-26 11:43:23.636602	t
4196	732	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-10-12 18:07:39.495437	t
4197	369	Âm nhạc và cuộc sống	{general}	2025-10-13 20:54:51.851836	t
4198	929	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-16 09:01:53.727477	t
4199	102	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-21 02:36:57.666234	t
4200	14	Học lập trình Python cơ bản	{food,vietnam}	2025-10-06 01:24:31.615748	t
4201	659	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-01 09:25:20.029915	t
4202	680	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-11 16:00:15.637653	t
4203	206	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-03 16:49:38.985546	t
4204	180	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-24 09:27:34.715883	t
4205	340	Review các quán cà phê nổi tiếng	{general}	2025-10-09 03:59:38.686748	t
4206	38	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-11-06 06:10:08.42561	f
4207	399	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-23 01:44:44.228209	t
4208	507	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-26 17:59:53.079182	f
4209	230	Học lập trình Python cơ bản	{tech,python}	2025-09-28 15:30:16.849647	t
4210	802	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-28 04:55:21.455659	t
4211	299	Âm nhạc và cuộc sống	{general}	2025-11-08 15:51:32.570542	t
4212	295	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-10-16 19:41:42.755599	t
4213	285	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-11-02 00:25:24.811313	f
4214	47	Âm nhạc và cuộc sống	{tech,python}	2025-11-02 18:45:47.288177	t
4215	728	Học lập trình Python cơ bản	{ai,machinelearning}	2025-09-30 09:28:29.51051	t
4216	919	Học lập trình Python cơ bản	{review,coffee}	2025-11-03 21:12:49.585151	f
4217	904	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-16 01:37:18.127867	t
4218	60	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-11 05:54:21.991268	t
4219	924	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-05 04:28:15.746921	f
4220	461	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-12 20:39:11.424651	f
4221	620	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-24 14:00:33.731254	t
4222	339	Khám phá du lịch Việt Nam	{travel,vietnam}	2025-10-30 20:15:34.763539	f
4223	281	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-11-10 09:15:01.498634	t
4224	701	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-09 07:57:55.236629	t
4225	387	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-31 05:31:17.150769	t
4226	738	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-19 12:42:57.629749	t
4227	436	Review các quán cà phê nổi tiếng	{review,coffee}	2025-11-07 11:39:26.430959	t
4228	208	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-25 22:52:52.820803	t
4229	250	Âm nhạc và cuộc sống	{tech,python}	2025-11-05 16:18:43.571662	t
4230	292	Khám phá du lịch Việt Nam	{travel,vietnam}	2025-11-07 18:34:22.656448	t
4231	374	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-11-11 17:29:17.928542	t
4232	197	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-31 03:44:13.751762	t
4233	211	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-11-03 02:19:59.523893	t
4234	950	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-29 10:50:14.239691	t
4235	776	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-22 18:46:52.098183	t
4236	23	Âm nhạc và cuộc sống	{travel,vietnam}	2025-11-06 18:23:45.920731	t
4237	454	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-08 20:19:33.250311	t
4238	857	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-14 19:34:28.314097	t
4239	564	Review các quán cà phê nổi tiếng	{general}	2025-10-27 20:01:09.572513	f
4240	599	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-11-03 03:46:13.383119	t
4241	950	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-11-08 13:26:15.518101	t
4242	679	Khám phá du lịch Việt Nam	{food,vietnam}	2025-09-30 00:40:04.852922	t
4243	225	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-24 00:52:48.323425	t
4244	150	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-09 14:52:35.760454	f
4245	829	Âm nhạc và cuộc sống	{food,vietnam}	2025-11-04 12:23:14.410949	t
4246	595	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-23 23:39:24.950968	t
4247	789	Học lập trình Python cơ bản	{food,vietnam}	2025-09-28 16:30:57.541618	t
4248	189	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-03 13:27:49.86951	t
4249	11	Học lập trình Python cơ bản	{general}	2025-11-05 09:25:37.858767	t
4250	71	Khám phá du lịch Việt Nam	{food,vietnam}	2025-10-21 13:00:44.874021	t
4251	695	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-05 15:31:42.519847	t
4252	355	Khám phá du lịch Việt Nam	{food,vietnam}	2025-10-10 15:58:41.122728	t
4253	621	Học lập trình Python cơ bản	{travel,vietnam}	2025-11-05 05:59:23.352835	t
4254	814	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-07 09:16:04.710933	t
4255	406	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-07 00:46:32.835136	t
4256	416	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-06 18:27:19.579932	t
4257	64	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-11 01:42:23.33138	t
4258	672	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-11-03 06:24:44.65347	t
4259	287	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-23 07:22:36.40447	t
4260	19	Học lập trình Python cơ bản	{travel,vietnam}	2025-11-02 18:04:13.013286	t
4261	323	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-03 03:19:46.082005	f
4262	916	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-10-17 08:20:28.580946	t
4263	404	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-26 23:13:19.407386	t
4264	939	Học lập trình Python cơ bản	{food,vietnam}	2025-10-19 02:09:23.908171	t
4265	975	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-31 07:57:58.331258	t
4266	67	Học lập trình Python cơ bản	{review,coffee}	2025-11-06 01:29:50.626048	f
4267	386	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-08 20:43:09.394293	t
4268	474	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-12 09:20:42.440698	t
4269	974	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-07 19:20:08.210032	t
4270	740	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-26 05:54:36.303476	t
4271	602	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-02 02:54:01.658636	t
4272	931	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-14 15:48:45.521113	f
4273	934	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-10-01 16:45:12.647441	t
4274	282	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-07 17:11:58.876763	t
4275	393	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-12 16:56:50.853143	t
4276	397	Học lập trình Python cơ bản	{review,coffee}	2025-11-05 07:14:10.760346	f
4277	857	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-10-08 04:08:04.544873	t
4278	583	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-26 15:50:27.989726	t
4279	602	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-10-10 01:32:21.985307	t
4280	154	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-07 18:08:24.747639	t
4281	789	Khám phá du lịch Việt Nam	{tech,python}	2025-11-09 02:45:38.538485	f
4282	14	Học lập trình Python cơ bản	{review,coffee}	2025-09-28 10:55:51.21809	t
4283	436	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-11 13:54:13.016406	t
4284	700	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-10-10 11:14:42.194534	f
4285	879	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-06 03:24:29.635467	t
4286	692	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-20 03:57:42.691365	f
4287	253	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-30 05:36:30.372793	t
4288	239	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-04 10:52:52.823803	t
4289	716	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-11-07 03:14:01.565381	t
4290	137	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-03 09:14:41.534507	t
4291	413	Âm nhạc và cuộc sống	{general}	2025-11-06 04:56:20.921002	t
4292	818	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-31 09:54:37.091733	t
4293	957	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-18 22:47:51.922578	t
4294	849	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-04 12:22:33.606556	t
4295	605	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-09-28 18:53:16.130442	t
4296	977	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-11-09 09:09:59.523574	t
4297	886	Review các quán cà phê nổi tiếng	{tech,python}	2025-11-11 04:42:58.734637	t
4298	958	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-11-10 22:52:25.810905	t
4299	956	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-22 13:11:08.926669	f
4300	712	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-19 18:32:33.352144	t
4301	349	Khám phá du lịch Việt Nam	{general}	2025-11-06 18:12:48.40374	t
4302	970	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-11-11 02:27:14.150188	f
4303	913	Học lập trình Python cơ bản	{travel,vietnam}	2025-10-05 01:35:22.974361	f
4304	784	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-11-06 20:12:30.06801	t
4305	333	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-30 00:59:50.750966	t
4306	519	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-17 16:41:52.936771	t
4307	428	Âm nhạc và cuộc sống	{tech,python}	2025-09-30 07:13:21.946884	t
4308	93	Khám phá du lịch Việt Nam	{food,vietnam}	2025-10-13 03:57:21.390342	t
4309	233	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-05 17:02:20.811724	f
4310	495	Âm nhạc và cuộc sống	{tech,python}	2025-11-09 08:40:40.648328	t
4311	274	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-11-07 01:03:33.982579	t
4312	422	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-08 22:07:44.855591	t
4313	964	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-11-12 03:43:22.543722	t
4314	385	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-31 06:20:22.887767	t
4315	752	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-05 14:59:19.427694	t
4316	974	Học lập trình Python cơ bản	{tech,python}	2025-10-23 09:17:34.929735	f
4317	654	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-11-11 04:18:57.91835	t
4318	134	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-31 16:51:13.411583	f
4319	371	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-07 01:47:22.280819	t
4320	152	Âm nhạc và cuộc sống	{review,coffee}	2025-10-10 18:37:48.424356	f
4321	442	Học lập trình Python cơ bản	{review,coffee}	2025-10-16 16:14:15.204208	t
4322	447	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-09 02:52:19.800021	t
4323	645	Âm nhạc và cuộc sống	{tech,python}	2025-10-13 13:08:30.053056	t
4324	574	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-13 06:10:49.063637	t
4325	88	Học lập trình Python cơ bản	{general}	2025-10-13 18:06:34.629458	t
4326	480	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-04 23:22:47.916043	t
4327	157	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-11 01:00:44.981923	t
4328	474	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-15 02:18:10.973322	t
4329	257	Học lập trình Python cơ bản	{ai,machinelearning}	2025-11-06 12:09:41.586413	t
4330	425	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-29 04:43:43.860666	t
4331	399	Review các quán cà phê nổi tiếng	{general}	2025-09-30 07:11:57.249024	t
4332	603	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-03 05:05:09.928275	t
4333	444	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-02 16:04:02.840834	t
4334	798	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-19 19:25:14.676098	t
4335	503	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-11-08 20:30:40.106242	t
4336	713	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-11-11 15:32:47.501545	t
4337	360	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-01 09:35:13.28151	t
4338	486	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-10 07:57:27.961563	f
4339	554	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-28 23:58:22.282341	t
4340	611	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-26 23:08:58.838114	f
4341	149	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-31 03:29:48.730076	t
4342	643	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-23 01:57:41.8509	t
4343	306	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-11-09 22:23:37.872863	f
4344	258	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-29 23:57:52.852156	t
4345	889	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-11-09 01:50:58.98734	t
4346	664	Thể thao và sức khỏe mỗi ngày	{general}	2025-11-06 08:10:11.263326	t
4347	856	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-11-10 07:05:02.288766	t
4348	337	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-27 07:30:01.709805	t
4349	625	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-11-01 20:58:36.219301	t
4350	719	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-16 02:06:25.3476	t
4351	981	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-24 02:16:04.276806	t
4352	567	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-08 21:32:17.056991	t
4353	275	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-11-05 17:08:57.368378	t
4354	592	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-11-04 05:35:24.937123	t
4355	16	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-31 05:49:23.578457	f
4356	102	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-03 14:53:45.417834	t
4357	79	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-11 00:30:13.618103	t
4358	259	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-03 08:01:54.67862	t
4359	408	Khám phá du lịch Việt Nam	{food,vietnam}	2025-10-11 10:22:58.552727	t
4360	113	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-11 11:35:36.937336	t
4361	468	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-31 04:06:42.512699	t
4362	325	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-23 15:50:47.686053	f
4363	987	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-17 23:53:52.34386	f
4364	114	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-05 20:36:15.740342	t
4365	115	Review các quán cà phê nổi tiếng	{general}	2025-10-23 12:43:48.9191	t
4366	409	Học lập trình Python cơ bản	{review,coffee}	2025-10-18 12:46:00.463426	t
4367	59	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-21 06:59:20.837894	t
4368	223	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-07 20:37:41.048773	t
4369	305	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-29 21:36:31.281243	t
4370	446	Review các quán cà phê nổi tiếng	{review,coffee}	2025-11-06 12:03:41.834331	t
4371	684	Review các quán cà phê nổi tiếng	{general}	2025-10-04 05:58:14.465223	t
4372	665	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-24 17:10:19.016146	t
4373	280	Học lập trình Python cơ bản	{general}	2025-10-16 22:44:56.435572	t
4374	452	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-09-30 11:11:20.986826	t
4375	108	Âm nhạc và cuộc sống	{travel,vietnam}	2025-10-24 00:14:14.735949	f
4376	460	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-11-08 02:21:14.247099	t
4377	552	Review các quán cà phê nổi tiếng	{general}	2025-09-30 20:18:59.220628	t
4378	595	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-09 17:12:13.414722	f
4379	936	Âm nhạc và cuộc sống	{travel,vietnam}	2025-10-25 23:59:51.901375	t
4380	470	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-29 00:56:30.06064	t
4381	345	Khám phá du lịch Việt Nam	{tech,python}	2025-11-07 06:15:47.083325	f
4382	292	Khám phá du lịch Việt Nam	{review,coffee}	2025-11-05 15:39:06.646375	f
4383	467	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-04 19:44:31.944431	f
4384	349	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-11-08 17:13:16.221463	t
4385	81	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-05 23:07:51.12509	t
4386	291	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-10-03 15:04:59.026921	t
4387	646	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-04 08:06:32.159565	t
4388	268	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-25 14:13:07.361359	t
4389	264	Thể thao và sức khỏe mỗi ngày	{general}	2025-11-04 01:30:16.755894	f
4390	122	Học lập trình Python cơ bản	{general}	2025-10-22 03:46:49.617767	t
4391	777	Âm nhạc và cuộc sống	{review,coffee}	2025-10-25 07:47:52.343944	t
4392	417	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-11-08 10:17:52.582996	t
4393	91	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-30 15:29:47.576573	t
4394	857	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-11-02 16:37:27.777347	t
4395	919	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-11-10 10:39:22.32101	t
4396	219	Học lập trình Python cơ bản	{tech,python}	2025-10-01 19:14:33.560455	t
4397	757	Học lập trình Python cơ bản	{tech,python}	2025-10-05 11:45:41.372476	t
4398	155	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-11-03 09:19:35.869318	t
4399	56	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-10 18:06:14.749004	t
4400	49	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-08 00:51:29.884314	f
4401	743	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-24 19:15:14.580831	t
4402	820	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-20 05:40:20.276531	t
4403	932	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-01 14:14:05.599088	t
4404	381	Học lập trình Python cơ bản	{tech,python}	2025-10-21 09:16:01.483086	t
4405	583	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-16 02:59:08.363108	t
4406	223	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-26 18:07:35.890958	t
4407	753	Âm nhạc và cuộc sống	{review,coffee}	2025-10-20 23:59:36.733662	f
4408	17	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-24 14:52:59.493144	f
4409	543	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-11-10 22:36:26.120276	t
4410	855	Học lập trình Python cơ bản	{food,vietnam}	2025-10-03 13:37:21.05405	t
4411	317	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-09-30 12:47:16.153645	t
4412	792	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-11-11 10:37:32.586084	t
4413	488	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-11-05 17:20:55.161169	t
4414	275	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-10-28 03:59:42.107523	t
4415	133	Âm nhạc và cuộc sống	{general}	2025-11-09 16:49:57.236802	t
4416	601	Học lập trình Python cơ bản	{food,vietnam}	2025-11-06 15:11:09.624193	t
4417	65	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-15 10:32:35.608531	t
4418	744	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-30 13:22:04.725953	t
4419	140	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-08 16:07:47.018169	t
4420	585	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-11-09 15:40:06.89532	t
4479	74	Âm nhạc và cuộc sống	{review,coffee}	2025-11-08 13:51:13.666351	f
4421	650	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-09-30 22:11:05.308251	t
4422	75	Review các quán cà phê nổi tiếng	{review,coffee}	2025-11-01 08:48:46.674523	t
4423	138	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-09-30 17:33:25.072245	f
4424	653	Thể thao và sức khỏe mỗi ngày	{general}	2025-11-06 16:04:36.045461	f
4425	555	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-11 14:11:56.094314	f
4426	333	Âm nhạc và cuộc sống	{travel,vietnam}	2025-10-27 13:49:09.609923	t
4427	745	Học lập trình Python cơ bản	{review,coffee}	2025-10-02 00:03:57.369945	t
4428	556	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-21 09:03:56.471959	t
4429	707	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-11-06 09:28:51.570432	t
4430	298	Âm nhạc và cuộc sống	{tech,python}	2025-10-16 10:09:58.307416	t
4431	514	Học lập trình Python cơ bản	{food,vietnam}	2025-09-30 11:55:16.748016	t
4432	758	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-20 22:51:59.217586	t
4433	86	Âm nhạc và cuộc sống	{travel,vietnam}	2025-10-16 07:06:24.378034	t
4434	363	Học lập trình Python cơ bản	{food,vietnam}	2025-10-03 23:48:12.216174	t
4435	942	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-10-05 08:52:36.321577	t
4436	798	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-31 08:23:44.435889	t
4437	76	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-03 04:52:26.505488	t
4438	9	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-11-12 05:27:53.3124	t
4439	193	Âm nhạc và cuộc sống	{review,coffee}	2025-11-02 07:07:15.777736	t
4440	603	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-29 01:33:31.681983	f
4441	369	Học lập trình Python cơ bản	{tech,python}	2025-10-25 07:21:54.277766	f
4442	659	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-26 09:27:36.778826	t
4443	618	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-11-07 20:50:30.231855	t
4444	4	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-06 06:08:51.918462	t
4445	671	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-07 13:04:27.536519	t
4446	997	Review các quán cà phê nổi tiếng	{general}	2025-09-29 20:05:47.564888	t
4447	74	Học lập trình Python cơ bản	{general}	2025-09-30 12:32:50.531366	t
4448	653	Khám phá du lịch Việt Nam	{tech,python}	2025-10-07 00:50:53.31658	t
4449	893	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-12 15:04:35.343979	t
4450	789	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-16 03:18:13.314543	t
4451	696	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-31 20:59:28.145346	t
4452	813	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-12 11:03:12.826144	f
4453	887	Âm nhạc và cuộc sống	{tech,python}	2025-10-29 06:22:01.696232	t
4454	5	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-10-17 22:13:12.212922	t
4455	382	Âm nhạc và cuộc sống	{review,coffee}	2025-10-29 15:30:27.154361	t
4456	104	Học lập trình Python cơ bản	{food,vietnam}	2025-10-27 07:16:16.133716	t
4457	641	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-13 06:48:47.836049	t
4458	980	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-11-05 07:58:54.03803	f
4459	473	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-31 18:18:15.925219	t
4460	778	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-21 12:23:02.010397	t
4461	491	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-07 13:45:49.816924	t
4462	371	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-07 22:58:54.729121	t
4463	216	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-10-27 21:39:04.754059	t
4464	999	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-22 22:37:52.846782	t
4465	640	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-11-06 10:25:24.258303	t
4466	1000	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-02 18:26:48.144843	t
4467	413	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-07 01:02:15.57777	t
4468	543	Âm nhạc và cuộc sống	{general}	2025-09-30 11:22:56.380684	f
4469	167	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-09-29 10:26:06.924443	f
4470	583	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-29 12:48:13.151864	t
4471	344	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-02 14:12:39.702924	f
4472	646	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-01 17:58:56.340716	t
4473	318	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-21 20:05:21.202328	t
4474	725	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-09-30 04:10:36.83979	t
4475	818	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-08 11:09:20.914389	t
4476	698	Học lập trình Python cơ bản	{general}	2025-11-08 20:01:41.849563	t
4477	274	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-11-03 12:57:38.317836	t
4478	743	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-19 09:45:21.919957	t
4480	50	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-26 13:45:27.639173	t
4481	477	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-29 17:14:35.500982	t
4482	314	Âm nhạc và cuộc sống	{travel,vietnam}	2025-10-13 09:14:14.083409	t
4483	999	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-09-30 11:53:36.016349	t
4484	279	Khám phá du lịch Việt Nam	{food,vietnam}	2025-10-04 15:25:25.153318	t
4485	62	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-08 01:47:22.645914	t
4486	342	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-10-10 23:18:34.366346	t
4487	722	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-10-02 18:39:05.051976	t
4488	1	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-13 06:29:59.765162	t
4489	850	Âm nhạc và cuộc sống	{review,coffee}	2025-09-30 03:36:44.207603	t
4490	273	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-14 06:07:31.610937	t
4491	922	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-09 14:15:15.737166	t
4492	713	Học lập trình Python cơ bản	{food,vietnam}	2025-11-12 00:33:07.111499	t
4493	890	Học lập trình Python cơ bản	{travel,vietnam}	2025-09-29 05:30:47.024336	t
4494	622	Khám phá du lịch Việt Nam	{general}	2025-10-10 18:27:16.700131	t
4495	365	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-10-09 19:55:37.18142	t
4496	316	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-14 14:32:20.51662	f
4497	526	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-10-07 13:58:57.880407	t
4498	685	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-07 09:15:11.942385	t
4499	754	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-10-12 20:23:47.459906	t
4500	85	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-28 08:15:09.269273	t
4501	875	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-09-30 15:07:05.670707	t
4502	976	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-10 06:46:37.40412	f
4503	234	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-04 09:25:29.327914	t
4504	110	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-11-02 21:15:37.023013	t
4505	79	Học lập trình Python cơ bản	{food,vietnam}	2025-10-04 04:28:14.799138	t
4506	987	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-06 18:31:38.324231	f
4507	569	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-19 20:32:58.396878	t
4508	486	Review các quán cà phê nổi tiếng	{general}	2025-10-27 12:16:55.982213	t
4509	569	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-14 04:09:54.805901	t
4510	646	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-09-29 21:47:32.752746	t
4511	644	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-11-02 08:32:49.842728	t
4512	477	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-11-04 21:59:36.238495	t
4513	971	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-20 00:23:38.008229	f
4514	356	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-11-06 11:58:51.264477	t
4515	779	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-23 20:59:39.613178	t
4516	588	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-07 00:42:35.94198	t
4517	303	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-10-26 00:44:20.210842	t
4518	680	Học lập trình Python cơ bản	{travel,vietnam}	2025-10-31 11:25:29.488516	t
4519	780	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-09 18:15:42.809097	t
4520	139	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-23 06:37:43.136763	f
4521	245	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-10 17:12:50.18798	f
4522	126	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-12 05:07:42.521647	f
4523	671	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-04 23:01:34.024818	t
4524	348	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-09 09:11:59.465246	t
4525	6	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-16 03:20:51.357346	f
4526	42	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-10 17:05:56.13584	t
4527	621	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-24 13:11:58.221489	t
4528	89	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-16 03:20:33.653963	t
4529	429	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-13 08:02:11.800266	t
4530	69	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-11-09 02:14:06.141659	t
4531	486	Âm nhạc và cuộc sống	{general}	2025-10-03 21:51:28.589601	t
4532	873	Âm nhạc và cuộc sống	{review,coffee}	2025-10-06 11:22:38.663701	f
4533	625	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-11-09 16:46:29.460239	t
4534	766	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-23 04:32:39.613808	t
4535	809	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-04 02:33:23.665594	t
4536	352	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-11-09 11:00:20.942195	t
4537	873	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-28 12:20:30.119047	t
4538	81	Review các quán cà phê nổi tiếng	{review,coffee}	2025-11-07 19:01:09.662458	f
4539	719	Khám phá du lịch Việt Nam	{food,vietnam}	2025-10-07 19:37:32.596017	t
4540	955	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-04 13:21:09.481287	f
4541	85	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-01 09:05:02.071408	t
4542	589	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-07 00:15:50.342685	t
4543	238	Âm nhạc và cuộc sống	{tech,python}	2025-10-22 07:29:59.430082	t
4544	796	Học lập trình Python cơ bản	{food,vietnam}	2025-10-05 18:31:47.070074	f
4545	545	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-25 22:28:13.291223	t
4546	13	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-07 19:16:02.145844	t
4547	383	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-02 20:57:55.661045	t
4548	922	Học lập trình Python cơ bản	{tech,python}	2025-11-03 03:24:08.608963	t
4549	763	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-05 07:20:35.929787	t
4550	371	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-11-11 11:53:43.974489	t
4551	304	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-10-06 17:45:52.409763	t
4552	598	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-28 00:02:53.595548	f
4553	978	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-10 23:54:34.648275	t
4554	354	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-03 11:14:50.596487	t
4555	415	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-09 06:41:00.354382	t
4556	641	Âm nhạc và cuộc sống	{tech,python}	2025-10-24 19:55:07.58446	t
4557	907	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-06 03:45:26.407442	t
4558	591	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-11-10 06:16:01.475376	t
4559	768	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-20 21:46:57.682687	t
4560	447	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-14 17:48:47.712977	t
4561	51	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-05 18:23:34.409068	t
4562	621	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-10-28 15:10:02.900067	t
4563	957	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-11-03 05:27:19.104482	f
4564	358	Học lập trình Python cơ bản	{review,coffee}	2025-10-06 02:32:33.486028	t
4565	723	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-11-01 09:49:01.636367	t
4566	98	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-04 13:52:38.099791	t
4567	183	Học lập trình Python cơ bản	{tech,python}	2025-11-02 06:10:34.382069	t
4568	364	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-01 00:26:41.265324	t
4569	942	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-13 04:05:26.713297	f
4570	564	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-11-07 06:38:51.468821	t
4571	131	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-25 11:22:03.443009	t
4572	171	Âm nhạc và cuộc sống	{review,coffee}	2025-10-27 02:36:13.028755	t
4573	128	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-11-02 13:32:09.138781	f
4574	675	Học lập trình Python cơ bản	{review,coffee}	2025-11-04 12:28:46.945719	t
4575	956	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-11-04 16:05:02.786911	t
4576	860	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-18 02:00:24.264803	f
4577	80	Khám phá du lịch Việt Nam	{food,vietnam}	2025-10-18 11:32:33.351413	t
4578	145	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-28 16:21:36.614263	t
4579	156	Học lập trình Python cơ bản	{review,coffee}	2025-10-22 04:56:15.893292	t
4580	573	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-03 13:47:58.694582	t
4581	22	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-17 22:32:38.549083	t
4582	483	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-11 06:30:47.152117	t
4583	230	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-31 07:21:41.621644	t
4584	90	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-29 14:21:26.469896	f
4585	929	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-14 08:19:58.928829	f
4586	386	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-19 00:17:12.409126	t
4587	314	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-23 12:38:32.170443	t
4588	6	Âm nhạc và cuộc sống	{travel,vietnam}	2025-11-07 02:15:15.298675	t
4589	401	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-09 04:00:09.776043	t
4590	843	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-04 14:55:42.466824	t
4591	144	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-10 08:28:29.581971	t
4592	732	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-03 10:18:31.659427	t
4593	337	Khám phá du lịch Việt Nam	{review,coffee}	2025-11-03 09:33:54.837183	f
4594	535	Âm nhạc và cuộc sống	{review,coffee}	2025-11-04 01:55:39.686761	t
4595	274	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-02 15:14:16.645156	t
4596	749	Khám phá du lịch Việt Nam	{food,vietnam}	2025-10-14 08:55:54.733009	t
4597	754	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-12 14:09:17.330062	f
4598	263	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-14 18:06:41.32058	f
4599	611	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-09-29 21:04:29.713632	t
4600	423	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-13 11:25:42.309154	t
4601	362	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-31 20:24:35.141868	t
4602	641	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-13 16:16:03.902456	t
4603	167	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-11-06 10:11:02.544497	t
4604	341	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-11 07:34:16.461434	f
4605	43	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-11-01 13:19:06.016081	t
4606	958	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-30 18:52:48.220721	t
4607	672	Âm nhạc và cuộc sống	{review,coffee}	2025-10-17 20:22:21.14136	t
4608	199	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-08 08:39:30.123192	t
4609	709	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-11-11 05:54:47.531649	t
4610	758	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-02 17:17:47.116537	f
4611	499	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-19 15:28:12.469316	t
4612	965	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-11 19:17:00.020432	t
4613	315	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-09 11:02:13.014021	t
4614	843	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-03 23:16:15.332578	t
4615	949	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-17 20:28:50.016064	t
4616	573	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-09 12:14:16.483264	t
4617	402	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-10-14 23:07:45.919687	t
4618	41	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-03 00:33:49.135428	t
4619	736	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-10-09 18:18:24.068278	t
4620	339	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-09-29 12:34:21.196661	t
4621	666	Học lập trình Python cơ bản	{ai,machinelearning}	2025-11-06 06:30:01.632587	t
4622	847	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-18 16:21:34.327837	t
4623	549	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-26 18:24:21.909131	t
4624	293	Học lập trình Python cơ bản	{review,coffee}	2025-10-29 22:02:14.565803	t
4625	591	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-24 20:44:17.152922	t
4626	15	Khám phá du lịch Việt Nam	{general}	2025-11-08 11:39:39.145948	t
4627	386	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-23 11:17:37.269617	f
4628	585	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-22 04:50:11.935062	t
4629	280	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-18 09:56:07.984462	t
4630	864	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-09-28 14:52:01.488371	t
4631	297	Âm nhạc và cuộc sống	{review,coffee}	2025-10-07 14:29:37.976478	t
4632	933	Học lập trình Python cơ bản	{tech,python}	2025-10-29 03:03:05.661989	t
4633	340	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-17 20:42:58.224474	f
4634	747	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-31 12:15:13.061171	f
4635	980	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-22 20:04:35.48616	t
4636	765	Âm nhạc và cuộc sống	{tech,python}	2025-10-17 15:31:24.281905	t
4637	687	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-11-01 11:46:25.643391	t
4638	779	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-14 22:34:25.942403	t
4639	160	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-09 10:41:10.02037	t
4640	704	Học lập trình Python cơ bản	{tech,python}	2025-10-22 18:53:06.661531	t
4641	819	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-11-09 01:30:34.542356	f
4642	344	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-30 02:01:41.629741	t
4643	755	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-10-13 16:14:31.877122	t
4644	399	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-04 07:24:34.083564	t
4645	316	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-13 19:34:01.21645	t
4646	975	Giới thiệu công nghệ AI hiện đại	{general}	2025-10-31 18:23:14.6929	f
4647	215	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-07 16:16:23.233657	t
4648	62	Học lập trình Python cơ bản	{tech,python}	2025-10-28 10:49:11.661879	t
4649	451	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-08 21:13:43.936203	t
4650	323	Khám phá du lịch Việt Nam	{tech,python}	2025-10-24 06:21:37.632318	t
4651	210	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-04 15:14:11.001155	t
4652	924	Review các quán cà phê nổi tiếng	{tech,python}	2025-11-04 11:48:52.774689	t
4653	701	Học lập trình Python cơ bản	{food,vietnam}	2025-10-14 22:07:47.947998	t
4654	117	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-09 17:13:48.482534	t
4655	520	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-10-24 12:15:16.018981	t
4656	428	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-23 09:57:21.303333	t
4657	77	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-23 01:59:28.394804	t
4658	496	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-11-03 19:27:54.555809	t
4659	458	Học lập trình Python cơ bản	{food,vietnam}	2025-10-01 06:47:00.785785	t
4660	446	Thể thao và sức khỏe mỗi ngày	{general}	2025-11-03 23:38:17.775211	t
4661	268	Học lập trình Python cơ bản	{tech,python}	2025-10-08 02:25:39.987687	t
4662	399	Khám phá du lịch Việt Nam	{food,vietnam}	2025-10-07 13:02:09.714747	t
4663	443	Học lập trình Python cơ bản	{tech,python}	2025-10-17 10:41:51.021477	t
4664	854	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-10-19 00:18:10.630845	t
4665	43	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-11-10 01:25:29.470565	t
4666	706	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-27 05:47:46.043561	t
4667	167	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-11-03 19:10:26.358944	f
4668	264	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-17 22:41:32.423843	t
4669	893	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-05 14:50:25.18862	t
4670	550	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-15 16:31:00.811627	t
4671	22	Học lập trình Python cơ bản	{general}	2025-10-14 21:09:40.747808	t
4672	433	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-11-10 02:09:27.30836	f
4673	685	Học lập trình Python cơ bản	{review,coffee}	2025-09-29 04:22:29.196269	t
4674	662	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-11-10 13:38:27.597694	t
4675	88	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-29 22:42:46.104718	t
4676	520	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-08 12:34:53.797483	t
4677	114	Học lập trình Python cơ bản	{review,coffee}	2025-10-29 02:13:03.093081	t
4678	117	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-11-05 13:08:07.239963	t
4679	271	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-08 01:48:39.765397	t
4680	248	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-11 03:17:19.837321	t
4681	678	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-09-30 16:04:11.248442	t
4682	676	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-02 14:50:38.361114	t
4683	32	Học lập trình Python cơ bản	{food,vietnam}	2025-11-11 03:01:11.028632	t
4684	18	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-02 13:58:20.580214	t
4685	204	Học lập trình Python cơ bản	{food,vietnam}	2025-10-14 23:21:02.823162	t
4686	295	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-25 19:38:08.806395	t
4687	668	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-10-25 23:45:37.469709	t
4688	600	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-22 07:18:41.299225	t
4689	523	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-11-08 06:32:45.384152	t
4690	140	Học lập trình Python cơ bản	{review,coffee}	2025-11-01 02:11:57.962381	t
4691	666	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-10-07 12:08:22.046434	f
4692	128	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-11-05 02:35:20.435034	t
4693	473	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-06 21:34:52.12304	f
4694	748	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-12 19:00:10.881992	t
4695	407	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-09 21:06:40.147917	f
4696	860	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-11-06 13:45:28.199429	t
4697	448	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-09 03:37:56.046027	t
4698	667	Thể thao và sức khỏe mỗi ngày	{general}	2025-11-08 10:11:52.478225	t
4699	900	Khám phá du lịch Việt Nam	{tech,python}	2025-11-08 12:04:28.059096	t
4700	969	Âm nhạc và cuộc sống	{general}	2025-10-06 13:27:17.45991	t
4701	695	Âm nhạc và cuộc sống	{tech,python}	2025-10-24 15:02:06.296672	t
4702	494	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-08 03:26:18.474384	t
4703	30	Âm nhạc và cuộc sống	{general}	2025-10-09 00:47:32.357091	t
4704	824	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-19 10:00:43.432232	f
4705	183	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-12 16:13:48.130339	f
4706	990	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-12 21:07:03.534393	t
4707	594	Học lập trình Python cơ bản	{review,coffee}	2025-10-28 09:33:36.51217	f
4708	284	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-19 22:04:07.089686	t
4709	636	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-03 01:58:36.572152	t
4710	114	Âm nhạc và cuộc sống	{food,vietnam}	2025-11-01 03:18:11.272209	f
4711	74	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-11-08 02:20:17.210802	f
4712	319	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-21 12:50:22.592942	f
4713	789	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-06 17:53:39.443592	t
4714	82	Học lập trình Python cơ bản	{review,coffee}	2025-11-05 01:49:43.232738	t
4715	276	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-28 05:22:51.358181	t
4716	321	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-10 23:17:13.997259	t
4717	489	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-25 04:05:49.602689	t
4718	969	Review các quán cà phê nổi tiếng	{general}	2025-11-02 23:36:57.376163	t
4719	817	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-24 20:40:35.467052	t
4720	527	Review các quán cà phê nổi tiếng	{general}	2025-10-20 19:34:08.324169	t
4721	602	Học lập trình Python cơ bản	{travel,vietnam}	2025-10-08 15:08:57.49517	t
4722	41	Âm nhạc và cuộc sống	{tech,python}	2025-10-04 15:53:41.646379	t
4723	686	Review các quán cà phê nổi tiếng	{general}	2025-10-15 19:35:59.291626	t
4724	214	Khám phá du lịch Việt Nam	{travel,vietnam}	2025-11-03 06:38:32.896989	t
4725	108	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-11-08 15:28:29.530785	t
4726	993	Review các quán cà phê nổi tiếng	{review,coffee}	2025-11-05 16:52:55.065998	t
4727	217	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-10-22 15:49:25.689503	t
4728	825	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-11-04 02:58:56.398662	t
4729	438	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-26 14:30:06.528052	f
4730	971	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-28 16:33:05.610275	t
4731	598	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-25 21:27:12.028833	t
4732	226	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-11-10 17:21:41.442238	t
4733	403	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-10-01 14:51:27.775949	t
4734	528	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-15 20:15:31.647586	t
4735	817	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-27 14:12:51.596055	f
4736	220	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-11-06 14:39:55.269975	t
4737	500	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-11-03 20:53:04.109538	t
4738	959	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-10-14 11:09:43.554375	t
4739	185	Âm nhạc và cuộc sống	{tech,python}	2025-11-09 04:20:32.495572	t
4740	633	Khám phá du lịch Việt Nam	{food,vietnam}	2025-11-09 10:10:23.656802	t
4741	446	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-10 06:40:11.899513	t
4742	288	Âm nhạc và cuộc sống	{review,coffee}	2025-10-05 10:37:44.325163	t
4743	382	Âm nhạc và cuộc sống	{tech,python}	2025-10-06 03:11:10.957715	t
4744	195	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-13 14:06:29.518079	f
4745	177	Âm nhạc và cuộc sống	{review,coffee}	2025-10-05 00:49:53.550236	f
4746	859	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-18 00:33:28.597265	t
4747	705	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-03 06:16:10.413328	t
4748	485	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-11-05 05:36:19.11853	t
4749	314	Review các quán cà phê nổi tiếng	{general}	2025-10-12 11:31:45.5256	t
4750	957	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-06 06:16:17.750349	t
4751	358	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-14 03:48:54.572687	t
4752	651	Học lập trình Python cơ bản	{general}	2025-10-08 03:43:31.643952	t
4753	259	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-17 11:51:19.459017	t
4754	501	Học lập trình Python cơ bản	{food,vietnam}	2025-10-06 07:11:30.354429	t
4755	455	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-21 06:27:54.058104	t
4756	932	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-11-11 16:20:59.476302	f
4757	522	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-30 18:11:19.72557	t
4758	658	Khám phá du lịch Việt Nam	{food,vietnam}	2025-11-05 14:05:05.890862	t
4759	905	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-17 22:06:53.413962	f
4760	178	Thể thao và sức khỏe mỗi ngày	{general}	2025-11-08 23:50:43.764129	t
4761	404	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-09-29 21:26:00.892592	t
4762	709	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-22 05:22:33.019408	t
4763	758	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-19 20:42:49.483814	t
4764	311	Review các quán cà phê nổi tiếng	{general}	2025-10-26 01:52:11.651275	t
4765	227	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-10-18 05:19:51.294769	t
4766	466	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-11-01 08:25:44.257797	t
4767	614	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-31 22:35:55.782142	f
4768	244	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-11-09 15:14:13.000673	t
4769	854	Âm nhạc và cuộc sống	{food,vietnam}	2025-11-02 12:22:22.996804	t
4770	974	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-11-02 08:50:36.403551	t
4771	798	Học lập trình Python cơ bản	{ai,machinelearning}	2025-11-09 02:47:43.520518	t
4772	271	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-09-29 22:17:39.398092	t
4773	57	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-30 07:50:33.646373	t
4774	820	Học lập trình Python cơ bản	{food,vietnam}	2025-10-20 21:04:42.266336	f
4775	280	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-11-12 03:09:27.477732	f
4776	134	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-04 09:10:11.056406	t
4777	955	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-29 02:30:45.33902	t
4778	358	Âm nhạc và cuộc sống	{review,coffee}	2025-11-09 17:24:25.429637	t
4779	881	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-11-04 23:19:30.110865	t
4780	186	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-09-28 20:46:49.505888	t
4781	270	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-30 03:18:52.949014	f
4782	976	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-27 17:01:07.283839	t
4783	876	Review các quán cà phê nổi tiếng	{tech,python}	2025-11-09 18:49:31.196354	t
4784	604	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-08 02:15:10.885508	t
4785	156	Review các quán cà phê nổi tiếng	{general}	2025-10-10 08:37:55.641282	t
4786	319	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-16 06:57:41.039509	t
4787	765	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-16 11:10:27.135761	t
4788	355	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-04 15:20:30.234221	t
4789	120	Âm nhạc và cuộc sống	{review,coffee}	2025-10-22 23:07:46.496523	t
4790	422	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-06 15:48:54.833927	t
4791	188	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-16 13:51:07.7918	t
4792	266	Âm nhạc và cuộc sống	{tech,python}	2025-10-01 05:27:38.144432	f
4793	712	Âm nhạc và cuộc sống	{food,vietnam}	2025-11-11 10:12:27.569927	t
4794	57	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-31 15:33:09.321102	t
4795	664	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-17 16:28:48.792502	t
4796	391	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-26 03:28:12.919309	t
4797	450	Âm nhạc và cuộc sống	{travel,vietnam}	2025-09-28 15:35:00.335227	t
4798	312	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-06 09:48:24.684613	t
4799	644	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-10-14 15:51:02.604562	t
4800	153	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-10 13:38:32.969309	f
4801	448	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-11-08 05:06:41.5363	f
4802	558	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-18 21:40:21.948739	t
4803	369	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-10-24 21:28:35.593223	t
4804	27	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-15 04:20:44.173478	f
4805	701	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-15 17:48:25.898268	t
4806	155	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-11 11:16:00.390812	t
4807	642	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-19 14:57:02.221194	t
4808	148	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-06 06:24:20.433389	t
4809	81	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-12 02:28:09.19584	t
4810	31	Học lập trình Python cơ bản	{tech,python}	2025-11-01 15:09:12.117217	t
4811	545	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-26 02:22:44.877993	t
4812	785	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-11-07 21:27:03.669543	t
4813	186	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-11-10 13:56:28.410485	t
4814	431	Review các quán cà phê nổi tiếng	{review,coffee}	2025-09-30 10:51:13.137323	t
4815	690	Học lập trình Python cơ bản	{travel,vietnam}	2025-09-30 12:44:59.772243	f
4816	216	Âm nhạc và cuộc sống	{general}	2025-10-26 06:02:05.39634	t
4817	920	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-03 22:56:37.851748	t
4818	741	Âm nhạc và cuộc sống	{travel,vietnam}	2025-10-05 02:58:19.446732	t
4819	248	Khám phá du lịch Việt Nam	{travel,vietnam}	2025-10-22 07:58:30.611016	t
4820	331	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-10 03:17:07.834017	t
4821	952	Âm nhạc và cuộc sống	{review,coffee}	2025-10-30 20:37:39.822632	t
4822	392	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-06 06:51:34.582894	t
4823	50	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-11-11 11:33:49.897612	t
4824	364	Học lập trình Python cơ bản	{tech,python}	2025-10-13 22:34:52.737581	t
4825	1	Học lập trình Python cơ bản	{general}	2025-10-24 16:04:01.659043	t
4826	579	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-04 05:58:27.360241	t
4827	290	Học lập trình Python cơ bản	{tech,python}	2025-10-12 05:50:39.322718	t
4828	388	Học lập trình Python cơ bản	{tech,python}	2025-10-29 01:31:57.540255	f
4829	871	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-27 12:45:39.450951	t
4830	264	Học lập trình Python cơ bản	{food,vietnam}	2025-10-22 20:57:16.151001	t
4831	55	Học lập trình Python cơ bản	{ai,machinelearning}	2025-11-11 00:26:08.910177	t
4832	473	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-12 12:28:03.094967	f
4833	813	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-15 10:05:31.327332	f
4834	414	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-15 12:21:57.765151	t
4835	290	Âm nhạc và cuộc sống	{food,vietnam}	2025-11-08 22:59:27.963657	t
4836	464	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-17 05:10:17.907592	t
4837	938	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-10 13:06:50.1482	t
4838	512	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-09-29 17:52:02.764271	t
4839	933	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-01 00:44:06.608426	t
4840	262	Học lập trình Python cơ bản	{tech,python}	2025-11-03 04:09:35.440553	t
4841	996	Khám phá du lịch Việt Nam	{travel,vietnam}	2025-10-26 00:19:54.412748	t
4842	536	Học lập trình Python cơ bản	{general}	2025-10-24 01:25:06.335706	t
4843	143	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-11 21:31:34.991197	t
4844	320	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-26 08:38:01.248494	t
4845	894	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-13 22:39:25.079796	f
4846	147	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-09-28 19:48:31.84148	t
4847	243	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-13 14:07:22.154223	f
4848	76	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-30 09:25:30.199533	t
4849	462	Âm nhạc và cuộc sống	{travel,vietnam}	2025-09-28 13:01:33.185202	f
4850	103	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-03 06:21:51.650144	t
4851	73	Học lập trình Python cơ bản	{review,coffee}	2025-10-23 11:01:52.942731	t
4852	758	Âm nhạc và cuộc sống	{review,coffee}	2025-11-11 03:40:37.208888	t
4853	402	Review các quán cà phê nổi tiếng	{tech,python}	2025-11-08 03:10:12.054255	t
4854	974	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-05 04:04:55.020078	t
4855	632	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-22 18:07:54.082107	t
4856	75	Review các quán cà phê nổi tiếng	{review,coffee}	2025-11-07 14:43:12.485778	f
4857	638	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-06 09:21:13.136358	t
4858	485	Âm nhạc và cuộc sống	{review,coffee}	2025-10-29 20:44:07.136731	t
4859	984	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-09 11:08:52.918971	t
4860	479	Học lập trình Python cơ bản	{food,vietnam}	2025-10-26 09:52:02.663864	t
4861	848	Âm nhạc và cuộc sống	{review,coffee}	2025-10-16 07:01:56.020801	t
4862	197	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-21 20:02:30.715558	t
4863	629	Âm nhạc và cuộc sống	{food,vietnam}	2025-11-03 04:53:24.895976	t
4864	109	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-14 04:36:01.383556	t
4865	846	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-09 23:20:47.142625	t
4866	334	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-21 19:56:57.494617	t
4867	405	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-31 23:35:55.430543	t
4868	587	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-28 07:17:53.208473	t
4869	395	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-09 22:22:22.77315	f
4870	124	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-17 21:12:14.168871	t
4871	166	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-30 22:09:14.495052	t
4872	259	Âm nhạc và cuộc sống	{travel,vietnam}	2025-11-10 00:54:19.351932	t
4873	37	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-20 21:56:38.383851	t
4874	11	Học lập trình Python cơ bản	{food,vietnam}	2025-11-10 00:32:10.128011	f
4875	546	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-22 19:35:35.177094	t
4876	177	Khám phá du lịch Việt Nam	{travel,vietnam}	2025-10-25 02:54:41.786966	t
4877	612	Học lập trình Python cơ bản	{general}	2025-10-06 18:15:38.331685	t
4878	231	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-11-04 00:26:24.334841	t
4879	482	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-16 12:40:14.59481	t
4880	845	Âm nhạc và cuộc sống	{travel,vietnam}	2025-10-31 01:38:40.27756	t
4881	174	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-15 07:23:32.951737	t
4882	432	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-04 01:36:30.07466	t
4883	373	Học lập trình Python cơ bản	{tech,python}	2025-10-14 19:15:48.894116	t
4884	983	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-10-29 11:24:54.332982	f
4885	806	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-02 03:36:21.665561	t
4886	24	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-11-11 13:20:07.139759	t
4887	591	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-09-30 20:33:34.533491	t
4888	133	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-11-04 02:55:40.311975	t
4889	434	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-11-05 21:23:20.421602	t
4890	730	Học lập trình Python cơ bản	{review,coffee}	2025-11-10 17:14:34.213864	t
4891	12	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-11-02 22:04:47.315663	t
4892	767	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-01 01:27:44.305846	t
4893	8	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-19 01:22:00.653417	t
4894	942	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-24 06:40:43.324892	f
4895	462	Review các quán cà phê nổi tiếng	{review,coffee}	2025-11-04 12:10:56.205117	t
4896	89	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-11-04 07:28:45.275809	t
4897	957	Học lập trình Python cơ bản	{tech,python}	2025-11-11 15:18:50.247338	t
4898	46	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-11-02 20:49:49.731441	t
4899	821	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-02 18:26:48.555294	t
4900	27	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-11 21:06:00.282582	t
4901	644	Giới thiệu công nghệ AI hiện đại	{general}	2025-10-10 06:50:46.701505	f
4902	643	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-11-08 15:36:06.123423	t
4903	286	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-21 10:01:38.081044	t
4904	215	Học lập trình Python cơ bản	{review,coffee}	2025-11-09 14:27:28.427168	t
4905	920	Học lập trình Python cơ bản	{food,vietnam}	2025-10-19 10:03:53.024895	t
4906	407	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-06 09:36:59.038837	t
4907	415	Âm nhạc và cuộc sống	{review,coffee}	2025-10-17 12:30:38.053802	t
4908	603	Khám phá du lịch Việt Nam	{travel,vietnam}	2025-09-29 17:53:22.120154	t
4909	723	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-10 04:38:13.172888	t
4910	781	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-08 19:32:02.22566	t
4911	325	Âm nhạc và cuộc sống	{review,coffee}	2025-10-18 20:54:05.527917	t
4912	479	Học lập trình Python cơ bản	{general}	2025-10-06 16:32:40.210412	t
4913	29	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-15 11:47:36.309141	t
4914	887	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-06 04:33:18.431251	f
4915	372	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-11-07 06:18:47.449797	t
4916	336	Khám phá du lịch Việt Nam	{food,vietnam}	2025-10-27 11:37:22.421638	t
4917	688	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-20 13:33:21.624164	t
4918	833	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-19 15:30:01.730365	t
4919	983	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-11 11:43:57.388769	t
4920	215	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-07 04:50:28.688953	t
4921	768	Review các quán cà phê nổi tiếng	{general}	2025-10-01 01:32:30.976836	f
4922	764	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-15 19:29:31.931386	t
4923	736	Học lập trình Python cơ bản	{general}	2025-10-06 09:57:17.754102	t
4924	667	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-09-28 16:24:06.491602	t
4925	107	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-10-07 07:55:03.353269	t
4926	549	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-14 07:10:12.70393	f
4927	539	Âm nhạc và cuộc sống	{tech,python}	2025-11-11 22:18:57.279742	t
4928	849	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-11-05 22:01:55.10585	t
4929	907	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-27 20:29:47.418	t
4930	695	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-27 21:34:56.339856	t
4931	217	Âm nhạc và cuộc sống	{food,vietnam}	2025-11-05 10:50:57.070875	t
4932	603	Học lập trình Python cơ bản	{food,vietnam}	2025-11-09 15:33:29.085875	t
4933	114	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-17 02:35:12.429096	t
4934	241	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-27 10:50:15.286386	f
4935	193	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-21 11:07:16.267217	t
4936	684	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-10 15:23:48.414188	t
4937	573	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-05 15:15:10.25455	t
4938	434	Học lập trình Python cơ bản	{review,coffee}	2025-10-07 00:25:12.509903	t
4939	99	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-29 15:25:17.712246	t
4940	930	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-16 19:58:37.937067	t
4941	419	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-22 00:49:34.223085	t
4942	383	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-09-28 11:31:41.01311	t
4943	223	Âm nhạc và cuộc sống	{travel,vietnam}	2025-11-07 09:06:39.710294	t
4944	982	Học lập trình Python cơ bản	{review,coffee}	2025-10-16 22:14:15.888196	f
4945	272	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-07 17:39:39.426101	t
4946	924	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-11-03 13:54:37.183584	t
4947	166	Âm nhạc và cuộc sống	{general}	2025-10-31 00:20:19.270893	t
4948	427	Âm nhạc và cuộc sống	{tech,python}	2025-10-04 06:15:33.214532	t
4949	156	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-08 13:59:35.654625	f
4950	230	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-11-03 19:39:26.477977	t
4951	940	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-21 01:06:06.42013	f
4952	812	Âm nhạc và cuộc sống	{tech,python}	2025-11-04 00:03:12.949492	t
4953	511	Học lập trình Python cơ bản	{food,vietnam}	2025-10-13 02:57:18.585475	t
4954	458	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-25 12:53:08.197661	f
4955	870	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-13 08:44:03.470452	t
4956	379	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-03 08:31:38.673186	t
4957	420	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-18 02:56:48.512306	t
4958	539	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-10-14 00:00:04.544194	f
4959	997	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-12 08:44:40.13682	t
4960	847	Âm nhạc và cuộc sống	{travel,vietnam}	2025-10-27 08:49:50.309538	t
4961	186	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-16 10:14:41.097796	t
4962	893	Review các quán cà phê nổi tiếng	{general}	2025-10-26 22:42:18.904791	f
4963	741	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-07 17:13:42.494763	f
4964	781	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-11 05:39:50.536493	t
4965	412	Âm nhạc và cuộc sống	{tech,python}	2025-10-15 06:47:41.712418	t
4966	391	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-10-05 13:44:09.807752	t
4967	307	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-28 04:34:26.463199	t
4968	678	Âm nhạc và cuộc sống	{review,coffee}	2025-11-08 17:00:48.058906	f
4969	595	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-21 01:46:42.791065	t
4970	615	Học lập trình Python cơ bản	{tech,python}	2025-10-11 20:43:55.408065	t
4971	218	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-08 09:54:45.672305	t
4972	105	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-09-29 07:08:21.666547	t
4973	192	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-05 15:46:10.80244	t
4974	420	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-02 08:22:11.285059	t
4975	888	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-15 16:35:01.011941	f
4976	246	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-09-30 14:49:31.815849	t
4977	83	Review các quán cà phê nổi tiếng	{general}	2025-10-03 15:27:36.5765	f
4978	722	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-31 05:12:17.120581	t
4979	915	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-01 14:16:33.876852	t
4980	488	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-11-05 23:01:05.410655	t
4981	39	Âm nhạc và cuộc sống	{tech,python}	2025-10-22 15:51:35.404789	t
4982	514	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-07 22:35:23.507705	t
4983	835	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-10-20 18:50:30.651656	f
4984	10	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-10-15 21:22:23.250077	t
4985	352	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-05 17:12:03.109346	t
4986	59	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-01 15:45:42.261592	t
4987	81	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-20 04:07:21.641381	t
4988	962	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-07 14:06:18.427829	t
4989	924	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-19 22:26:48.150344	t
4990	347	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-10-16 00:21:49.928661	t
4991	547	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-02 22:01:34.473886	t
4992	621	Khám phá du lịch Việt Nam	{tech,python}	2025-09-29 16:45:15.486783	f
4993	304	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-13 18:41:11.195152	t
4994	411	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-31 16:37:27.693026	t
4995	695	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-11 18:13:21.424095	f
4996	972	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-15 07:21:24.074246	t
4997	974	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-01 23:12:22.870204	t
4998	109	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-15 10:37:53.877862	f
4999	332	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-07 15:26:35.640723	t
5000	350	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-10-07 15:10:25.916195	f
5001	81	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-25 23:48:13.517651	t
5002	819	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-28 03:18:12.603748	t
5003	5	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-19 02:26:40.574086	t
5004	30	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-21 02:32:25.336032	t
5005	276	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-19 14:26:19.289753	t
5006	936	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-02 20:32:49.201367	t
5007	227	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-29 06:29:14.519143	t
5008	806	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-10-03 08:57:43.951499	f
5009	226	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-11-05 02:57:40.954198	t
5010	298	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-11-02 04:17:17.887668	f
5011	647	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-11-02 08:57:25.047176	t
5012	346	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-08 03:42:34.105631	t
5013	621	Review các quán cà phê nổi tiếng	{general}	2025-10-01 04:15:54.355418	t
5014	780	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-05 17:58:52.873247	t
5015	917	Học lập trình Python cơ bản	{tech,python}	2025-10-02 06:49:28.396583	f
5016	750	Học lập trình Python cơ bản	{food,vietnam}	2025-10-30 10:54:45.855964	t
5017	770	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-21 00:22:40.369687	t
5018	186	Học lập trình Python cơ bản	{food,vietnam}	2025-10-14 18:57:38.819325	t
5019	953	Học lập trình Python cơ bản	{tech,python}	2025-11-02 13:12:07.600126	t
5020	363	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-29 08:21:24.693944	t
5021	224	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-11-03 04:16:01.326477	t
5022	277	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-18 15:20:33.481347	f
5023	14	Học lập trình Python cơ bản	{tech,python}	2025-11-03 10:30:52.622419	t
5024	460	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-29 14:51:57.710469	t
5025	217	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-19 05:32:46.792847	t
5026	133	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-05 07:32:25.105747	t
5027	637	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-10-31 16:55:03.095991	t
5028	912	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-11-09 02:34:59.90632	t
5029	844	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-14 21:36:50.286183	t
5030	511	Học lập trình Python cơ bản	{review,coffee}	2025-10-13 23:19:33.375791	t
5031	425	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-20 14:14:03.223491	t
5032	918	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-13 08:14:59.121175	t
5033	586	Học lập trình Python cơ bản	{ai,machinelearning}	2025-09-30 04:21:43.992436	t
5034	583	Âm nhạc và cuộc sống	{review,coffee}	2025-11-05 21:07:59.942697	t
5035	269	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-11-05 11:46:33.210771	t
5036	602	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-29 15:59:12.57532	t
5037	224	Giới thiệu công nghệ AI hiện đại	{general}	2025-11-04 22:45:26.747178	f
5038	700	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-11-05 09:24:18.613898	f
5039	562	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-26 20:22:48.720694	t
5040	186	Khám phá du lịch Việt Nam	{general}	2025-10-29 22:58:04.95244	t
5041	709	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-18 01:11:13.81148	t
5042	777	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-11-10 18:00:09.871806	t
5043	553	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-14 01:31:48.874949	t
5044	110	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-15 12:39:36.488549	t
5045	5	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-28 20:05:22.373445	f
5046	189	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-15 15:02:14.385791	t
5047	343	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-09-30 11:32:20.557906	t
5048	750	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-09-29 01:46:26.508316	t
5049	607	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-10 19:54:03.944228	t
5050	975	Khám phá du lịch Việt Nam	{general}	2025-10-24 21:37:45.28208	t
5051	119	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-08 20:43:43.635226	t
5052	99	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-02 01:39:07.648569	t
5053	279	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-07 22:30:00.702433	t
5054	528	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-28 01:22:23.849183	t
5055	617	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-04 23:03:00.170807	t
5056	976	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-29 10:19:54.483311	t
5057	525	Khám phá du lịch Việt Nam	{tech,python}	2025-10-23 00:30:05.979558	t
5058	758	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-29 06:31:37.634332	t
5059	469	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-11-05 00:37:40.453697	t
5060	421	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-05 04:16:01.404253	t
5061	179	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-11-03 08:03:26.347627	t
5062	325	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-10-07 12:47:33.000893	f
5063	805	Khám phá du lịch Việt Nam	{general}	2025-10-30 11:19:09.583836	t
5064	19	Học lập trình Python cơ bản	{tech,python}	2025-09-30 07:04:04.428196	t
5065	24	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-14 09:42:31.135445	t
5066	353	Review các quán cà phê nổi tiếng	{review,coffee}	2025-09-30 02:26:07.606436	t
5067	111	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-24 09:37:39.905638	t
5068	637	Review các quán cà phê nổi tiếng	{review,coffee}	2025-11-08 10:19:50.916312	t
5069	594	Âm nhạc và cuộc sống	{tech,python}	2025-11-04 20:37:28.685636	t
5070	446	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-11-05 23:10:09.178231	t
5071	808	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-03 05:57:56.008284	t
5072	128	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-28 05:33:52.59842	t
5073	53	Review các quán cà phê nổi tiếng	{tech,python}	2025-11-03 08:55:24.346428	t
5074	523	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-09 09:19:05.942843	t
5075	258	Học lập trình Python cơ bản	{tech,python}	2025-10-26 16:19:25.811882	t
5076	933	Âm nhạc và cuộc sống	{travel,vietnam}	2025-10-09 08:49:43.751456	t
5077	221	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-15 09:53:47.160171	t
5078	88	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-22 23:28:27.217211	t
5079	468	Âm nhạc và cuộc sống	{general}	2025-09-30 00:32:32.207428	t
5080	732	Khám phá du lịch Việt Nam	{review,coffee}	2025-11-06 00:03:28.118764	t
5081	792	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-08 02:08:00.662257	t
5082	948	Review các quán cà phê nổi tiếng	{general}	2025-10-28 08:00:37.83459	t
5083	449	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-19 14:01:46.048794	t
5084	5	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-08 16:00:32.191892	f
5085	983	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-01 03:58:51.366999	t
5086	872	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-07 19:06:17.243128	t
5087	933	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-09 18:11:15.06473	t
5088	45	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-14 18:07:47.677681	t
5089	213	Review các quán cà phê nổi tiếng	{tech,python}	2025-11-09 22:28:06.177717	t
5090	600	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-05 13:13:54.932445	t
5091	463	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-11-05 16:31:26.109043	t
5092	26	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-03 09:20:03.934349	t
5093	323	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-08 10:07:50.450562	t
5094	1000	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-27 10:03:17.660291	t
5095	283	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-12 04:29:09.831925	t
5096	564	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-10-19 03:46:33.798874	t
5097	264	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-30 14:04:03.728262	t
5098	292	Học lập trình Python cơ bản	{food,vietnam}	2025-10-25 06:42:43.783807	t
5099	173	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-20 21:45:16.858711	t
5100	299	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-10-11 20:27:56.877489	t
5101	297	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-17 09:12:39.50823	t
5102	207	Học lập trình Python cơ bản	{food,vietnam}	2025-10-08 03:47:25.177353	t
5103	309	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-11 19:36:23.455274	f
5104	304	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-13 08:03:00.793047	t
5105	584	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-17 05:13:31.648143	t
5106	773	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-11 17:32:25.503107	f
5107	659	Âm nhạc và cuộc sống	{food,vietnam}	2025-11-01 18:16:38.801451	t
5108	885	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-09 17:45:53.247984	t
5109	728	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-25 20:04:39.662491	t
5110	584	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-26 12:48:11.370953	t
5111	405	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-30 18:34:11.390442	t
5112	764	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-11-06 15:24:03.298219	t
5113	242	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-25 10:53:24.328561	t
5114	320	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-07 21:49:20.556801	t
5115	715	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-06 11:07:45.952811	f
5116	31	Giới thiệu công nghệ AI hiện đại	{general}	2025-11-12 09:37:43.064654	t
5117	708	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-15 06:47:13.551799	t
5118	45	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-19 12:52:02.457807	t
5119	541	Âm nhạc và cuộc sống	{tech,python}	2025-10-24 08:05:48.34979	t
5120	728	Học lập trình Python cơ bản	{food,vietnam}	2025-10-28 02:24:02.693591	t
5121	560	Học lập trình Python cơ bản	{review,coffee}	2025-11-07 18:43:50.608434	t
5122	290	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-16 07:31:43.798905	t
5123	134	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-11 13:10:09.09056	t
5124	404	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-23 17:28:14.243446	t
5125	832	Giới thiệu công nghệ AI hiện đại	{general}	2025-11-06 06:42:35.014512	t
5126	874	Học lập trình Python cơ bản	{general}	2025-10-22 18:11:02.803477	f
5127	990	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-09 17:21:53.195038	t
5128	265	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-11-05 11:55:39.885465	t
5129	733	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-21 08:01:23.24791	t
5130	897	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-10-14 22:30:29.758803	t
5131	213	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-13 04:46:56.070978	t
5132	93	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-31 03:02:03.411106	t
5133	912	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-16 09:44:29.601246	t
5134	177	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-10-05 16:59:10.741025	f
5135	21	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-17 15:08:13.794998	f
5136	803	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-11-07 09:45:51.60863	f
5137	723	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-08 03:00:29.9858	t
5138	335	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-02 02:40:42.192845	t
5139	891	Khám phá du lịch Việt Nam	{review,coffee}	2025-11-03 13:17:40.310406	t
5140	84	Review các quán cà phê nổi tiếng	{tech,python}	2025-11-07 10:04:26.415898	t
5141	47	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-30 23:31:45.330396	t
5142	632	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-08 07:55:21.368619	f
5143	945	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-11-06 15:34:07.0559	t
5144	414	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-12 19:00:56.123425	f
5145	729	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-23 04:24:17.766882	t
5146	177	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-30 22:03:29.692618	t
5147	412	Học lập trình Python cơ bản	{food,vietnam}	2025-10-31 03:50:37.528466	t
5148	814	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-26 23:19:52.723365	t
5149	136	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-11 05:37:20.386345	t
5150	713	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-03 15:16:08.501341	t
5151	764	Thể thao và sức khỏe mỗi ngày	{general}	2025-11-10 19:08:11.054415	t
5152	469	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-09-28 17:07:49.803578	t
5153	489	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-28 02:17:42.657683	t
5154	97	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-10 16:54:32.52467	t
5155	211	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-01 07:12:43.16739	t
5156	770	Âm nhạc và cuộc sống	{travel,vietnam}	2025-10-12 15:34:12.027479	f
5157	395	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-10-18 12:31:08.447476	t
5158	985	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-21 04:24:06.899911	t
5159	292	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-01 02:33:26.186518	t
5160	284	Học lập trình Python cơ bản	{general}	2025-10-31 21:46:10.407323	t
5161	326	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-13 22:22:21.345139	t
5162	519	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-08 16:03:36.996958	t
5163	26	Âm nhạc và cuộc sống	{general}	2025-10-23 15:07:23.822106	t
5164	937	Review các quán cà phê nổi tiếng	{tech,python}	2025-11-05 12:10:55.061052	t
5165	720	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-04 16:45:30.359662	t
5166	968	Khám phá du lịch Việt Nam	{review,coffee}	2025-11-07 14:52:55.31152	t
5167	6	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-11-01 01:25:56.912699	t
5168	211	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-16 20:01:43.215297	f
5169	44	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-18 20:51:11.020759	t
5170	902	Âm nhạc và cuộc sống	{travel,vietnam}	2025-10-20 13:59:29.552112	t
5171	679	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-10-17 04:53:22.855744	t
5172	604	Học lập trình Python cơ bản	{food,vietnam}	2025-10-26 06:29:34.981085	t
5173	474	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-06 04:28:13.798686	t
5174	721	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-23 17:53:31.097898	t
5175	844	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-11-04 20:20:13.881313	t
5176	932	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-30 14:33:08.255085	t
5177	715	Thể thao và sức khỏe mỗi ngày	{general}	2025-11-01 22:57:06.659011	t
5178	840	Âm nhạc và cuộc sống	{general}	2025-10-01 03:19:32.743664	t
5179	837	Khám phá du lịch Việt Nam	{tech,python}	2025-10-26 11:45:56.006453	t
5180	928	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-10 01:19:29.234092	t
5181	440	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-13 10:00:54.206619	t
5182	648	Âm nhạc và cuộc sống	{travel,vietnam}	2025-11-03 14:34:00.803802	f
5183	620	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-11 12:19:17.949442	t
5184	289	Học lập trình Python cơ bản	{tech,python}	2025-11-06 10:31:30.68528	t
5185	972	Học lập trình Python cơ bản	{tech,python}	2025-10-02 15:25:07.240193	t
5186	662	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-08 04:12:14.168722	t
5187	984	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-03 08:07:24.841828	t
5188	710	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-09-30 13:08:59.775384	t
5189	692	Âm nhạc và cuộc sống	{travel,vietnam}	2025-10-27 02:03:37.118427	t
5190	23	Khám phá du lịch Việt Nam	{food,vietnam}	2025-10-31 03:22:18.486098	t
5191	957	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-11 15:34:21.041124	t
5192	102	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-10-04 12:23:03.496424	t
5193	332	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-11-12 07:24:29.755358	f
5194	155	Học lập trình Python cơ bản	{food,vietnam}	2025-09-29 21:39:19.122144	t
5195	502	Review các quán cà phê nổi tiếng	{review,coffee}	2025-11-04 21:00:32.003254	t
5196	412	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-05 17:34:35.231662	t
5197	506	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-11-09 22:30:27.194425	t
5198	303	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-10-24 16:02:09.453716	t
5199	820	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-19 07:42:00.08075	f
5200	439	Review các quán cà phê nổi tiếng	{tech,python}	2025-11-10 08:31:07.379146	t
5201	714	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-11-11 21:19:14.799573	t
5202	45	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-04 06:38:07.585083	t
5203	827	Học lập trình Python cơ bản	{travel,vietnam}	2025-10-09 12:46:39.702627	t
5204	676	Âm nhạc và cuộc sống	{review,coffee}	2025-10-06 06:31:09.560125	t
5205	0	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-22 02:29:01.32951	t
5206	580	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-10 03:56:15.369136	t
5207	950	Âm nhạc và cuộc sống	{tech,python}	2025-10-03 00:35:33.727199	t
5208	140	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-10-21 01:06:38.042612	t
5209	827	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-12 12:36:26.38824	t
5210	695	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-04 22:08:29.416662	t
5211	392	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-18 12:01:43.623886	t
5212	549	Học lập trình Python cơ bản	{tech,python}	2025-10-03 11:50:24.853873	t
5213	412	Âm nhạc và cuộc sống	{food,vietnam}	2025-11-12 07:57:21.577232	t
5214	671	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-31 16:29:08.827063	t
5215	986	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-07 15:02:14.573458	t
5216	393	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-29 00:56:24.148092	t
5217	672	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-09 01:21:20.276058	t
5218	163	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-12 05:56:21.668662	t
5219	863	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-08 13:33:18.414991	t
5220	430	Thể thao và sức khỏe mỗi ngày	{general}	2025-11-04 19:22:56.81792	t
5221	590	Học lập trình Python cơ bản	{review,coffee}	2025-10-12 12:55:56.55334	t
5222	649	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-01 11:21:23.608049	t
5223	892	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-04 20:36:18.399459	t
5224	996	Review các quán cà phê nổi tiếng	{general}	2025-10-10 22:58:25.248261	t
5225	751	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-15 10:06:57.989256	t
5226	463	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-12 10:59:16.401341	t
5227	329	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-22 03:45:06.010432	t
5228	583	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-11-11 21:34:49.347098	t
5229	816	Âm nhạc và cuộc sống	{tech,python}	2025-10-03 23:05:59.51995	t
5230	492	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-24 21:03:28.208383	t
5231	250	Âm nhạc và cuộc sống	{travel,vietnam}	2025-10-22 14:03:20.216259	f
5232	907	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-01 19:25:14.510648	t
5233	346	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-30 14:03:49.52037	t
5234	200	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-16 02:25:22.650179	t
5235	889	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-09 03:26:14.38763	t
5236	399	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-18 13:29:38.650494	t
5237	815	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-27 05:54:47.077477	t
5238	56	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-09 19:32:36.160681	t
5239	410	Học lập trình Python cơ bản	{general}	2025-10-19 17:49:29.049348	t
5240	855	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-19 09:13:12.217705	t
5241	798	Review các quán cà phê nổi tiếng	{general}	2025-11-02 14:34:35.029407	t
5242	845	Âm nhạc và cuộc sống	{tech,python}	2025-10-30 03:11:21.45401	t
5243	431	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-11-10 19:02:00.033508	t
5244	845	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-26 07:32:21.536601	f
5245	560	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-27 01:16:49.960318	t
5246	25	Âm nhạc và cuộc sống	{review,coffee}	2025-10-02 09:21:15.235234	t
5247	218	Âm nhạc và cuộc sống	{food,vietnam}	2025-11-08 14:16:28.670769	t
5248	201	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-10-03 01:15:34.920116	f
5249	551	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-12 01:52:55.777079	t
5250	519	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-01 15:20:13.290595	t
5251	582	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-10-26 13:07:08.758691	t
5252	624	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-11-11 13:21:25.895566	t
5253	15	Review các quán cà phê nổi tiếng	{review,coffee}	2025-09-30 21:06:38.971481	t
5254	564	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-11-08 04:00:44.09207	t
5255	652	Khám phá du lịch Việt Nam	{tech,python}	2025-10-15 19:52:35.836151	t
5256	430	Âm nhạc và cuộc sống	{review,coffee}	2025-10-14 20:18:26.254445	t
5257	102	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-31 14:02:11.133046	t
5258	246	Khám phá du lịch Việt Nam	{travel,vietnam}	2025-10-11 02:24:04.146958	t
5259	811	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-11 09:06:01.478091	f
5260	486	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-11-06 07:19:18.988618	t
5261	632	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-06 19:41:27.67886	t
5262	560	Học lập trình Python cơ bản	{tech,python}	2025-10-27 15:29:36.433944	t
5263	768	Review các quán cà phê nổi tiếng	{review,coffee}	2025-11-04 03:34:06.206053	t
5264	553	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-08 06:53:22.8607	t
5265	122	Âm nhạc và cuộc sống	{food,vietnam}	2025-11-02 20:00:16.463737	t
5266	594	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-09-28 20:08:40.70979	t
5267	356	Khám phá du lịch Việt Nam	{tech,python}	2025-11-10 04:26:54.226765	t
5268	107	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-11-07 04:30:40.676209	t
5269	297	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-06 00:58:04.649843	t
5270	363	Review các quán cà phê nổi tiếng	{general}	2025-10-10 10:35:57.630696	t
5271	438	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-10-10 07:35:05.326089	t
5272	807	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-11-03 06:20:05.302803	t
5273	43	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-16 09:02:23.396294	f
5274	371	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-18 21:16:43.667996	t
5275	786	Học lập trình Python cơ bản	{food,vietnam}	2025-11-07 06:02:39.867548	t
5276	676	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-26 14:54:17.94752	t
5277	993	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-27 16:30:12.818333	t
5278	406	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-29 06:19:05.769983	t
5279	387	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-01 01:28:08.337641	t
5280	514	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-17 22:59:18.29467	t
5281	434	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-11-07 03:46:08.955574	t
5282	658	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-05 23:35:58.423955	t
5283	322	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-10-21 23:55:38.373403	t
5284	311	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-11-03 00:54:17.638599	t
5285	963	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-30 11:44:37.244782	f
5286	166	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-15 07:08:04.916208	t
5287	494	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-26 05:34:24.888118	f
5288	94	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-13 14:45:46.426781	t
5289	806	Âm nhạc và cuộc sống	{tech,python}	2025-11-01 19:54:14.999188	t
5290	487	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-08 20:26:51.782837	t
5291	589	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-10-20 18:07:22.382677	f
5292	879	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-07 07:18:49.525155	t
5293	522	Học lập trình Python cơ bản	{general}	2025-10-25 01:58:18.498043	t
5294	818	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-09 23:01:26.585336	f
5295	568	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-11-06 19:10:43.132744	t
5296	322	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-03 08:30:55.33953	t
5297	313	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-10-27 06:10:03.766768	t
5298	65	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-11-11 13:41:54.558332	t
5299	648	Âm nhạc và cuộc sống	{tech,python}	2025-10-02 21:39:21.40475	t
5300	412	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-01 12:59:06.687169	t
5301	48	Học lập trình Python cơ bản	{review,coffee}	2025-10-19 12:49:36.21284	t
5302	609	Học lập trình Python cơ bản	{review,coffee}	2025-10-22 14:14:38.304938	t
5303	97	Âm nhạc và cuộc sống	{tech,python}	2025-10-14 22:10:18.332019	f
5304	383	Thể thao và sức khỏe mỗi ngày	{general}	2025-11-08 08:29:53.281838	f
5305	471	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-19 04:06:56.051722	t
5306	1000	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-06 06:56:29.277797	t
5307	435	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-25 18:55:36.696451	f
5308	236	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-11-03 03:04:07.234997	t
5309	933	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-23 18:01:38.283166	t
5310	992	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-02 21:29:38.044975	t
5311	28	Âm nhạc và cuộc sống	{tech,python}	2025-11-08 11:52:18.724106	t
5312	725	Âm nhạc và cuộc sống	{travel,vietnam}	2025-10-26 17:32:07.251778	t
5313	974	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-13 09:29:23.388242	t
5314	867	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-12 12:20:06.929704	t
5315	425	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-11-11 00:34:21.717976	t
5316	786	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-16 08:39:01.488832	f
5317	679	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-06 04:27:47.949903	t
5318	847	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-07 00:29:48.662017	t
5319	108	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-19 20:39:10.487513	t
5320	51	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-11-05 19:44:32.954944	t
5321	855	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-01 22:30:12.889847	t
5322	142	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-07 10:05:44.644991	t
5323	497	Âm nhạc và cuộc sống	{review,coffee}	2025-10-26 19:01:51.511321	t
5324	296	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-24 07:43:09.036771	t
5325	431	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-10-22 15:49:32.37313	t
5326	991	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-09 19:29:07.732776	t
5327	470	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-11-11 23:40:48.842116	t
5328	250	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-04 21:16:58.731119	t
5329	800	Học lập trình Python cơ bản	{tech,python}	2025-11-11 04:01:00.063729	f
5330	492	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-12 04:46:10.876192	f
5331	253	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-11 15:23:51.40781	t
5332	232	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-31 09:46:40.757012	f
5333	901	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-20 13:38:36.390447	t
5334	58	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-11 15:37:14.939666	t
5335	771	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-11-09 04:58:15.48376	t
5336	388	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-28 22:07:05.76891	t
5337	235	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-16 01:37:18.384866	t
5338	273	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-30 10:47:00.415642	t
5339	854	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-09-30 22:41:05.401861	t
5340	540	Học lập trình Python cơ bản	{tech,python}	2025-10-24 02:41:33.043358	t
5341	405	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-11 19:45:35.218729	t
5342	523	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-02 20:50:20.750825	t
5343	936	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-17 21:16:16.80478	t
5344	287	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-11-11 06:22:04.735276	t
5345	774	Âm nhạc và cuộc sống	{tech,python}	2025-10-18 03:07:41.201763	t
5346	311	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-11-04 05:09:42.135367	t
5347	371	Giới thiệu công nghệ AI hiện đại	{general}	2025-10-05 02:53:34.691066	t
5348	944	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-11 10:23:20.149014	t
5349	496	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-10 05:54:44.00661	t
5350	887	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-10 08:53:13.381374	t
5351	337	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-30 18:46:19.608832	t
5352	810	Học lập trình Python cơ bản	{general}	2025-10-05 23:58:38.427348	t
5353	832	Âm nhạc và cuộc sống	{food,vietnam}	2025-11-07 03:23:37.777307	t
5354	1	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-07 22:34:03.190219	t
5355	279	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-09-28 14:21:10.111371	t
5356	734	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-08 10:49:41.680256	f
5357	217	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-14 07:35:17.852576	t
5358	262	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-19 09:57:46.861475	t
5359	134	Học lập trình Python cơ bản	{review,coffee}	2025-10-20 18:20:52.817377	t
5360	689	Giới thiệu công nghệ AI hiện đại	{general}	2025-11-01 23:57:32.727019	t
5361	356	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-05 04:48:43.708575	t
5362	885	Âm nhạc và cuộc sống	{food,vietnam}	2025-11-02 18:08:18.059322	t
5363	186	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-19 12:30:28.640041	t
5364	879	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-28 20:53:22.413364	f
5365	11	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-08 16:15:17.689798	t
5366	148	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-09 17:30:05.262777	t
5367	295	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-03 20:49:32.847216	t
5368	239	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-03 04:49:39.1765	t
5369	202	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-27 15:24:33.425064	f
5370	945	Khám phá du lịch Việt Nam	{travel,vietnam}	2025-10-28 08:35:01.101658	t
5371	146	Học lập trình Python cơ bản	{review,coffee}	2025-10-07 04:51:24.601199	t
5372	510	Khám phá du lịch Việt Nam	{tech,python}	2025-11-04 02:03:13.142556	t
5373	999	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-08 12:57:50.813052	t
5374	835	Âm nhạc và cuộc sống	{food,vietnam}	2025-09-30 18:08:33.540581	f
5375	53	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-15 22:18:17.108281	t
5376	665	Âm nhạc và cuộc sống	{tech,python}	2025-11-03 20:07:58.133972	t
5377	167	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-09-28 16:42:47.288445	t
5378	500	Âm nhạc và cuộc sống	{tech,python}	2025-10-10 06:23:45.094528	f
5379	998	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-11-04 12:44:50.462806	t
5380	887	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-10-07 03:08:44.135161	f
5381	733	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-14 02:25:22.616734	t
5382	814	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-09-29 10:28:00.821248	t
5383	552	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-22 22:07:08.217832	t
5384	413	Âm nhạc và cuộc sống	{tech,python}	2025-10-13 11:53:40.803833	t
5385	121	Review các quán cà phê nổi tiếng	{general}	2025-09-28 22:34:24.134978	t
5386	383	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-11-06 18:34:00.781453	t
5387	972	Khám phá du lịch Việt Nam	{tech,python}	2025-10-17 12:37:20.50924	t
5388	78	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-09-30 04:53:51.780025	t
5389	175	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-01 11:45:13.316604	t
5390	724	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-13 05:15:05.270427	t
5391	319	Âm nhạc và cuộc sống	{general}	2025-10-13 04:06:00.834339	t
5392	174	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-24 08:15:55.064441	t
5393	850	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-09-28 11:21:43.12539	t
5394	535	Review các quán cà phê nổi tiếng	{tech,python}	2025-09-29 05:28:40.077081	t
5395	253	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-05 11:33:02.933264	t
5396	643	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-06 12:36:08.611339	t
5397	367	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-14 02:22:06.887693	t
5398	421	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-10-09 17:26:43.731115	t
5399	508	Học lập trình Python cơ bản	{general}	2025-10-23 01:19:33.709054	t
5400	335	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-11-07 01:25:48.913048	t
5401	702	Học lập trình Python cơ bản	{general}	2025-11-03 03:53:28.876089	t
5402	519	Khám phá du lịch Việt Nam	{food,vietnam}	2025-10-12 11:31:06.053746	t
5403	231	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-04 13:54:17.414428	f
5404	914	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-03 06:01:15.514313	t
5405	188	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-21 05:33:19.71384	t
5406	907	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-11-07 02:05:17.151098	t
5407	309	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-03 07:54:34.172981	t
5408	25	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-04 07:23:15.510507	t
5409	612	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-11 15:44:56.628108	t
5410	390	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-11-08 10:20:22.004277	t
5411	119	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-17 02:19:09.333673	t
5470	371	Khám phá du lịch Việt Nam	{food,vietnam}	2025-10-26 14:41:48.05747	t
5412	815	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-10-01 05:18:03.201831	t
5413	659	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-26 05:17:31.449108	t
5414	719	Âm nhạc và cuộc sống	{tech,python}	2025-10-29 08:04:23.752928	t
5415	674	Âm nhạc và cuộc sống	{review,coffee}	2025-10-15 16:19:13.594703	t
5416	376	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-22 01:51:58.863198	f
5417	792	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-25 10:30:28.3802	t
5418	77	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-03 10:54:59.021081	t
5419	958	Âm nhạc và cuộc sống	{travel,vietnam}	2025-10-22 10:40:46.328299	t
5420	598	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-04 01:58:42.32706	t
5421	696	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-23 17:37:12.715999	t
5422	771	Học lập trình Python cơ bản	{general}	2025-10-11 12:19:08.606371	t
5423	109	Khám phá du lịch Việt Nam	{tech,python}	2025-10-28 06:57:49.679358	t
5424	687	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-11-08 13:53:25.269182	t
5425	6	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-05 04:46:27.483132	t
5426	598	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-11-04 03:57:29.389915	t
5427	687	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-03 12:45:00.129291	f
5428	883	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-10 16:51:44.753189	t
5429	507	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-27 10:42:35.88496	t
5430	25	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-28 13:13:58.671771	t
5431	161	Âm nhạc và cuộc sống	{general}	2025-10-18 15:39:18.376859	t
5432	88	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-10-11 13:11:52.409882	t
5433	111	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-27 03:46:28.701899	f
5434	943	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-01 21:49:18.25569	f
5435	866	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-22 23:13:01.66147	t
5436	764	Âm nhạc và cuộc sống	{tech,python}	2025-10-06 17:58:30.67167	t
5437	17	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-18 20:41:01.483067	t
5438	415	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-15 16:56:54.058973	t
5439	578	Review các quán cà phê nổi tiếng	{review,coffee}	2025-11-09 06:03:41.453383	t
5440	264	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-05 11:51:49.674981	t
5441	796	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-03 05:07:28.059248	t
5442	761	Học lập trình Python cơ bản	{food,vietnam}	2025-11-02 04:30:26.500974	t
5443	702	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-11-10 15:13:07.785169	t
5444	348	Thể thao và sức khỏe mỗi ngày	{general}	2025-11-04 09:31:43.694747	t
5445	842	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-31 07:35:38.015842	f
5446	578	Học lập trình Python cơ bản	{food,vietnam}	2025-10-22 20:39:24.674082	t
5447	583	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-17 03:02:36.284837	t
5448	197	Âm nhạc và cuộc sống	{general}	2025-10-08 14:58:31.18749	f
5449	621	Âm nhạc và cuộc sống	{tech,python}	2025-10-07 05:43:46.108426	t
5450	227	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-10-03 06:09:53.615399	t
5451	197	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-02 18:11:11.900835	t
5452	696	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-02 09:25:42.980071	f
5453	956	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-11-06 19:44:32.757488	t
5454	621	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-10-14 23:45:12.287697	t
5455	760	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-30 03:36:30.05707	t
5456	168	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-19 11:45:12.558865	t
5457	811	Học lập trình Python cơ bản	{review,coffee}	2025-11-09 20:22:23.710261	t
5458	630	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-17 21:52:07.183951	t
5459	575	Học lập trình Python cơ bản	{travel,vietnam}	2025-10-10 12:05:30.46607	t
5460	26	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-18 23:16:21.872697	t
5461	181	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-07 09:48:25.149999	t
5462	112	Học lập trình Python cơ bản	{tech,python}	2025-10-21 09:48:25.443182	t
5463	972	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-11-12 09:08:40.278159	f
5464	472	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-26 00:35:54.100989	f
5465	291	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-02 08:48:49.125614	t
5466	334	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-11-09 02:25:50.919963	t
5467	433	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-14 14:52:26.821456	f
5468	209	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-30 03:28:08.64896	t
5469	249	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-11-09 14:49:51.922161	t
5471	804	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-02 02:11:14.645089	f
5472	986	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-14 22:48:14.885422	t
5473	803	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-28 15:07:00.117864	t
5474	255	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-30 19:17:29.588081	f
5475	603	Review các quán cà phê nổi tiếng	{review,coffee}	2025-11-11 06:08:47.004709	t
5476	281	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-23 16:01:12.49874	t
5477	495	Âm nhạc và cuộc sống	{review,coffee}	2025-11-07 03:08:08.413533	f
5478	73	Âm nhạc và cuộc sống	{travel,vietnam}	2025-10-26 04:48:53.944327	t
5479	872	Học lập trình Python cơ bản	{ai,machinelearning}	2025-11-06 10:19:58.765056	t
5480	951	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-06 12:15:13.940125	t
5481	292	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-24 22:14:47.533314	t
5482	475	Khám phá du lịch Việt Nam	{travel,vietnam}	2025-10-30 11:25:42.945956	t
5483	953	Khám phá du lịch Việt Nam	{food,vietnam}	2025-10-27 17:57:04.623862	t
5484	543	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-10-14 20:13:51.801343	t
5485	52	Thể thao và sức khỏe mỗi ngày	{general}	2025-11-05 13:29:16.913591	t
5486	700	Âm nhạc và cuộc sống	{tech,python}	2025-10-16 10:55:20.289037	t
5487	631	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-16 08:39:48.713921	t
5488	310	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-06 15:06:50.687316	t
5489	114	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-11 17:06:38.306436	t
5490	670	Âm nhạc và cuộc sống	{general}	2025-10-19 21:14:04.341481	t
5491	518	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-11-11 09:55:53.759899	t
5492	932	Học lập trình Python cơ bản	{travel,vietnam}	2025-09-30 23:10:12.839272	f
5493	270	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-25 10:17:10.743233	t
5494	751	Âm nhạc và cuộc sống	{travel,vietnam}	2025-09-28 12:56:23.875826	t
5495	511	Học lập trình Python cơ bản	{tech,python}	2025-10-06 18:09:28.791703	t
5496	160	Học lập trình Python cơ bản	{review,coffee}	2025-10-26 20:24:52.258599	t
5497	649	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-14 10:06:51.982095	t
5498	711	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-20 08:12:34.87949	f
5499	108	Khám phá du lịch Việt Nam	{tech,python}	2025-10-31 12:08:28.69446	f
5500	39	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-09-28 20:19:18.379775	t
5501	304	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-09-29 10:05:27.51551	t
5502	378	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-23 08:16:25.094354	f
5503	482	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-28 04:43:51.01508	t
5504	186	Âm nhạc và cuộc sống	{food,vietnam}	2025-09-29 10:53:33.916199	t
5505	484	Học lập trình Python cơ bản	{tech,python}	2025-10-21 00:19:32.611081	t
5506	518	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-11-04 13:05:03.268869	t
5507	862	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-29 09:57:32.726563	t
5508	661	Học lập trình Python cơ bản	{food,vietnam}	2025-10-07 02:54:46.856641	t
5509	541	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-19 20:51:07.251687	t
5510	606	Review các quán cà phê nổi tiếng	{general}	2025-10-24 07:49:05.157013	t
5511	256	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-16 23:15:00.724958	t
5512	702	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-11-05 00:17:42.054072	t
5513	543	Âm nhạc và cuộc sống	{review,coffee}	2025-10-21 16:44:12.586729	t
5514	841	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-12 08:40:46.524046	t
5515	719	Âm nhạc và cuộc sống	{general}	2025-10-08 17:04:34.106687	t
5516	724	Khám phá du lịch Việt Nam	{food,vietnam}	2025-11-11 15:57:57.495382	t
5517	528	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-10-29 23:12:16.305923	f
5518	522	Review các quán cà phê nổi tiếng	{general}	2025-10-09 01:26:22.252246	t
5519	705	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-04 15:20:27.937804	t
5520	358	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-11-11 22:11:52.844818	t
5521	2	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-11-02 06:34:08.964728	t
5522	201	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-11 17:06:45.549061	t
5523	141	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-10-11 09:26:03.025795	t
5524	272	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-09 18:59:30.096567	t
5525	35	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-19 12:31:29.018613	t
5526	975	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-09-29 07:59:22.088252	t
5527	306	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-09-30 14:45:11.328964	t
5528	874	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-08 03:37:15.773125	t
5529	568	Học lập trình Python cơ bản	{travel,vietnam}	2025-10-03 00:43:31.242091	t
5530	552	Review các quán cà phê nổi tiếng	{tech,python}	2025-11-07 00:15:25.135923	t
5531	190	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-11-06 21:05:53.096356	t
5532	210	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-11-07 21:44:16.70423	t
5533	450	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-11-11 16:01:47.105875	t
5534	783	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-14 18:05:58.421235	t
5535	185	Review các quán cà phê nổi tiếng	{tech,python}	2025-11-05 15:03:33.194619	f
5536	115	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-19 17:03:46.315328	t
5537	952	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-04 17:30:19.240404	t
5538	451	Giới thiệu công nghệ AI hiện đại	{general}	2025-11-10 14:07:31.648754	t
5539	370	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-11 17:54:09.429822	f
5540	193	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-23 03:03:41.731069	t
5541	682	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-30 16:45:11.236758	t
5542	830	Âm nhạc và cuộc sống	{tech,python}	2025-09-29 07:41:32.683883	t
5543	881	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-29 19:16:01.658957	t
5544	639	Học lập trình Python cơ bản	{food,vietnam}	2025-11-04 14:53:25.701593	t
5545	523	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-24 12:52:31.847507	t
5546	217	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-09-29 21:18:31.160422	t
5547	773	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-21 03:06:29.816946	t
5548	12	Học lập trình Python cơ bản	{tech,python}	2025-10-15 05:58:21.629705	t
5549	528	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-11-06 15:07:37.653392	t
5550	801	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-23 23:25:15.380303	t
5551	342	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-09 21:05:46.051628	f
5552	361	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-30 07:09:11.429572	t
5553	196	Thể thao và sức khỏe mỗi ngày	{general}	2025-11-11 19:08:36.863025	t
5554	61	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-10-26 06:05:47.752835	t
5555	31	Âm nhạc và cuộc sống	{tech,python}	2025-10-15 21:47:41.038844	t
5556	323	Khám phá du lịch Việt Nam	{review,coffee}	2025-11-04 23:11:16.218798	t
5557	626	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-10 01:04:18.187942	t
5558	101	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-11-10 02:53:45.245211	t
5559	238	Học lập trình Python cơ bản	{food,vietnam}	2025-10-17 05:24:49.554341	t
5560	634	Học lập trình Python cơ bản	{tech,python}	2025-10-07 09:08:58.372189	f
5561	118	Review các quán cà phê nổi tiếng	{tech,python}	2025-11-05 11:43:37.469253	t
5562	746	Giới thiệu công nghệ AI hiện đại	{general}	2025-10-05 04:59:30.776126	f
5563	510	Âm nhạc và cuộc sống	{tech,python}	2025-10-14 00:23:28.178786	t
5564	52	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-11-04 08:48:21.399195	t
5565	14	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-18 09:46:10.33448	t
5566	986	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-10 18:22:43.864562	f
5567	672	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-10 10:48:44.488323	t
5568	206	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-06 18:51:39.023935	f
5569	188	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-06 02:42:34.968766	t
5570	185	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-01 17:12:13.288855	t
5571	836	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-20 01:52:59.110883	t
5572	605	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-06 00:35:21.626978	t
5573	243	Học lập trình Python cơ bản	{general}	2025-10-29 14:04:02.339448	t
5574	648	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-08 06:44:28.63111	t
5575	551	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-28 10:15:27.585815	t
5576	904	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-21 07:18:05.415759	t
5577	954	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-11-04 16:46:31.045533	t
5578	891	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-09-30 20:22:44.348216	t
5579	286	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-29 14:47:44.059974	t
5580	631	Khám phá du lịch Việt Nam	{review,coffee}	2025-11-09 14:53:02.372638	t
5581	601	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-26 06:46:42.099419	t
5582	436	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-07 07:59:08.009261	t
5583	576	Review các quán cà phê nổi tiếng	{general}	2025-10-10 23:26:53.979825	f
5584	510	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-09-28 22:50:57.303567	f
5585	810	Khám phá du lịch Việt Nam	{review,coffee}	2025-11-10 13:26:59.155693	t
5586	322	Thể thao và sức khỏe mỗi ngày	{general}	2025-11-11 08:27:48.151643	f
5587	646	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-30 20:40:38.177295	t
5588	143	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-21 17:29:22.258881	t
5589	175	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-20 00:10:56.478491	t
5590	222	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-24 04:30:57.851796	t
5591	551	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-19 19:45:40.037964	t
5592	563	Review các quán cà phê nổi tiếng	{review,coffee}	2025-09-30 11:57:40.076106	t
5593	45	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-27 00:32:02.422363	t
5594	666	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-08 10:55:31.178566	t
5595	957	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-11-05 19:43:20.423402	t
5596	678	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-25 02:05:45.597406	f
5597	451	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-08 08:00:28.459494	t
5598	798	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-11 13:42:08.604484	f
5599	603	Học lập trình Python cơ bản	{tech,python}	2025-10-09 11:44:41.320672	t
5600	30	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-09-29 20:54:15.600562	t
5601	45	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-11-12 07:20:14.593217	t
5602	111	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-13 18:16:44.926819	t
5603	322	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-06 07:51:55.303606	t
5604	963	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-20 07:28:17.394904	t
5605	36	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-20 12:42:22.797688	t
5606	962	Khám phá du lịch Việt Nam	{food,vietnam}	2025-10-25 11:53:01.491737	t
5607	593	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-20 07:04:13.975376	t
5608	606	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-22 20:22:20.12271	t
5609	500	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-11-09 11:50:49.569509	t
5610	364	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-12 16:29:52.320964	t
5611	517	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-28 02:55:50.598049	t
5612	98	Học lập trình Python cơ bản	{tech,python}	2025-11-02 02:53:25.427913	t
5613	452	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-31 15:35:27.465683	f
5614	68	Review các quán cà phê nổi tiếng	{tech,python}	2025-11-04 03:59:51.599701	t
5615	194	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-12 23:34:43.589498	t
5616	494	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-01 15:32:10.642497	t
5617	709	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-12 23:05:17.263736	t
5618	888	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-11-05 06:33:12.688634	t
5619	577	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-19 05:42:39.951714	t
5620	83	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-11-07 09:52:23.667485	t
5621	889	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-10-31 18:18:19.322006	f
5622	634	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-14 20:42:02.605465	t
5623	67	Học lập trình Python cơ bản	{general}	2025-11-03 10:16:08.464571	t
5624	488	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-14 15:45:09.234601	t
5625	260	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-01 12:09:33.985476	t
5626	235	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-15 19:19:03.725513	f
5627	212	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-31 10:38:28.980384	t
5628	565	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-18 01:38:41.448969	t
5629	961	Học lập trình Python cơ bản	{review,coffee}	2025-10-29 20:49:33.986742	t
5630	942	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-11 18:57:13.051328	t
5631	575	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-02 08:30:28.049841	t
5632	868	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-01 20:57:30.036333	t
5633	874	Âm nhạc và cuộc sống	{tech,python}	2025-10-24 21:49:52.917691	t
5634	421	Review các quán cà phê nổi tiếng	{general}	2025-11-04 14:51:47.770124	t
5635	38	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-31 06:08:40.447184	t
5636	190	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-27 09:17:37.65426	t
5637	900	Âm nhạc và cuộc sống	{tech,python}	2025-10-29 02:37:58.956574	t
5638	558	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-10-12 21:36:48.524388	t
5639	586	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-02 01:00:01.413802	f
5640	321	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-11-04 22:52:46.698765	t
5641	45	Review các quán cà phê nổi tiếng	{general}	2025-10-01 13:44:16.032941	t
5642	764	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-08 19:14:58.455093	t
5643	566	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-29 13:26:35.576867	t
5644	438	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-21 16:11:38.43252	t
5645	88	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-11-04 10:05:33.644037	t
5646	865	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-21 02:06:47.166965	t
5647	160	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-23 23:59:08.81845	t
5648	585	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-10-28 20:21:20.928631	t
5649	267	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-10-07 00:04:13.316127	t
5650	662	Âm nhạc và cuộc sống	{travel,vietnam}	2025-09-28 17:21:02.035903	f
5651	714	Âm nhạc và cuộc sống	{travel,vietnam}	2025-10-30 13:27:31.492106	t
5652	377	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-07 00:39:19.117384	t
5653	722	Học lập trình Python cơ bản	{review,coffee}	2025-10-05 23:57:41.354884	t
5654	900	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-10-04 07:48:41.348454	t
5655	513	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-31 00:31:58.741359	t
5656	96	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-22 09:58:19.782739	t
5657	147	Review các quán cà phê nổi tiếng	{review,coffee}	2025-11-05 16:55:15.927118	f
5658	149	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-30 19:34:47.057143	t
5659	35	Review các quán cà phê nổi tiếng	{tech,python}	2025-11-03 14:34:33.847075	t
5660	856	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-11-01 05:08:11.560331	t
5661	327	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-07 04:02:32.897053	t
5662	222	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-07 06:10:24.310546	t
5663	513	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-24 01:11:25.540632	t
5664	562	Học lập trình Python cơ bản	{tech,python}	2025-10-20 03:01:15.38768	t
5665	943	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-25 14:03:31.130694	t
5666	906	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-11-05 00:10:35.750966	t
5667	782	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-10-09 17:28:25.727473	t
5668	694	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-13 15:26:31.637322	t
5669	962	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-03 15:26:47.58733	t
5670	935	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-11-07 00:45:38.909477	t
5671	588	Học lập trình Python cơ bản	{tech,python}	2025-11-05 13:36:08.173866	t
5672	699	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-09 07:00:12.206191	t
5673	486	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-22 08:58:39.824626	t
5674	180	Khám phá du lịch Việt Nam	{travel,vietnam}	2025-10-26 14:39:33.114677	t
5675	808	Review các quán cà phê nổi tiếng	{review,coffee}	2025-09-30 00:20:02.004586	t
5676	818	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-14 19:02:06.672857	t
5677	241	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-27 09:03:31.454122	t
5678	242	Âm nhạc và cuộc sống	{review,coffee}	2025-10-14 09:15:48.53472	t
5679	268	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-16 06:37:16.435733	f
5680	753	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-06 14:16:24.03334	t
5681	468	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-09 09:17:30.441176	f
5682	464	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-11 18:37:28.312827	f
5683	407	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-09-29 20:41:24.044674	t
5684	528	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-11-08 07:08:19.508154	t
5685	924	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-20 14:36:31.791216	t
5686	612	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-02 07:35:31.264552	t
5687	219	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-11-02 06:05:01.26876	t
5688	100	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-29 01:31:14.121267	f
5689	466	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-26 06:26:37.605649	t
5690	714	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-10-30 05:45:16.238265	t
5691	480	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-31 01:33:16.513816	t
5692	854	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-11-07 19:07:03.527944	t
5693	142	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-11-06 14:52:11.438491	t
5694	312	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-02 16:51:53.51091	t
5695	36	Học lập trình Python cơ bản	{general}	2025-10-21 07:02:07.250672	t
5696	832	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-01 14:54:36.246321	f
5697	488	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-09 17:11:31.186246	t
5698	777	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-11-06 09:05:26.813404	t
5699	596	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-10-18 23:19:20.101351	t
5700	991	Học lập trình Python cơ bản	{review,coffee}	2025-10-12 19:57:38.878202	f
5701	421	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-11-04 15:19:29.286213	t
5702	195	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-11-09 17:36:44.454939	t
5703	307	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-10-26 17:29:56.142041	t
5704	211	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-17 00:12:31.397998	t
5705	698	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-12 18:18:47.231051	f
5706	351	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-08 11:36:29.922498	t
5707	825	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-06 19:11:50.561533	t
5708	824	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-19 04:05:37.095037	t
5709	375	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-01 10:04:04.234622	t
5710	562	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-19 18:04:15.934842	t
5711	759	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-08 04:26:49.809341	f
5712	322	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-05 04:51:32.348491	f
5713	353	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-09-29 07:22:57.420779	t
5714	721	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-03 00:46:59.781679	t
5715	72	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-24 22:31:49.038926	t
5716	832	Khám phá du lịch Việt Nam	{tech,python}	2025-10-24 21:12:59.419816	f
5717	704	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-19 04:49:52.062904	t
5718	271	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-09-29 14:35:04.370994	t
5719	920	Âm nhạc và cuộc sống	{travel,vietnam}	2025-10-26 12:13:44.283161	t
5720	483	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-13 11:51:20.739572	t
5721	391	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-11 06:57:28.462403	t
5722	647	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-20 17:57:29.706811	f
5723	787	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-03 14:54:42.617262	t
5724	183	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-11-01 16:44:44.110624	t
5725	796	Khám phá du lịch Việt Nam	{tech,python}	2025-11-08 14:07:25.695778	t
5726	523	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-06 18:51:39.674879	t
5727	428	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-14 14:25:12.464987	t
5728	881	Âm nhạc và cuộc sống	{review,coffee}	2025-10-16 23:13:27.321345	f
5729	20	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-19 21:09:32.809031	t
5730	177	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-10-18 11:41:03.533381	f
5731	948	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-23 22:30:49.354225	t
5732	535	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-09-29 05:54:32.576509	t
5733	50	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-01 00:00:36.564568	t
5734	516	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-04 10:24:56.107184	t
5735	992	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-15 18:24:52.222202	t
5736	917	Học lập trình Python cơ bản	{general}	2025-10-27 05:55:37.228769	f
5737	90	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-06 19:49:45.374615	t
5738	649	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-12 11:58:42.615417	t
5739	680	Học lập trình Python cơ bản	{tech,python}	2025-10-08 22:54:56.869381	t
5740	154	Học lập trình Python cơ bản	{ai,machinelearning}	2025-11-05 00:22:05.203758	t
5741	355	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-05 23:15:35.971295	t
5742	177	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-09 00:15:04.69017	t
5743	273	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-26 22:51:45.185652	f
5744	607	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-20 05:57:08.845794	t
5745	327	Học lập trình Python cơ bản	{review,coffee}	2025-10-20 21:58:08.477434	t
5746	123	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-19 16:32:41.192777	t
5747	443	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-11-10 02:32:24.360209	t
5748	695	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-09-29 17:47:07.157047	t
5749	318	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-05 18:51:46.808916	f
5750	292	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-10-16 10:49:09.141643	t
5751	831	Giới thiệu công nghệ AI hiện đại	{general}	2025-10-13 02:07:45.982371	t
5752	593	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-11-08 02:08:08.590989	t
5753	313	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-10-22 07:31:45.293585	t
5754	54	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-08 02:12:02.306702	t
5755	129	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-20 22:19:31.864406	t
5756	586	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-13 10:35:39.849827	t
5757	58	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-31 14:01:29.757098	f
5758	46	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-26 06:19:06.238344	t
5759	545	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-01 16:17:11.36201	t
5760	27	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-10 22:35:02.870941	t
5761	976	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-30 23:51:24.143022	t
5762	755	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-27 20:31:52.087502	t
5763	596	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-13 07:24:10.688608	t
5764	506	Học lập trình Python cơ bản	{review,coffee}	2025-10-12 16:05:19.499706	t
5765	52	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-01 02:18:08.646609	t
5766	261	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-09-28 13:36:13.456142	t
5767	759	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-27 06:35:57.454181	t
5768	193	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-09-30 14:34:11.736757	t
5769	381	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-31 17:27:03.545179	t
5770	851	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-15 16:19:32.641384	f
5771	590	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-09-30 22:58:09.890879	t
5772	916	Giới thiệu công nghệ AI hiện đại	{general}	2025-11-08 15:28:34.226843	t
5773	678	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-10 20:10:19.41651	t
5774	452	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-27 11:47:43.045166	t
5775	787	Khám phá du lịch Việt Nam	{travel,vietnam}	2025-11-04 04:21:40.166802	t
5776	622	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-11-08 17:25:31.627076	f
5777	353	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-02 04:22:06.636119	t
5778	226	Khám phá du lịch Việt Nam	{tech,python}	2025-11-11 11:58:01.95108	t
5779	985	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-10-20 07:44:42.505837	t
5780	310	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-18 13:25:56.612309	t
5781	991	Học lập trình Python cơ bản	{food,vietnam}	2025-10-22 08:18:31.299292	t
5782	112	Âm nhạc và cuộc sống	{general}	2025-11-04 00:02:20.910246	t
5783	246	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-28 16:59:12.572764	f
5784	486	Giới thiệu công nghệ AI hiện đại	{general}	2025-10-05 18:02:20.621817	t
5785	309	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-30 02:51:45.236804	t
5786	782	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-06 05:39:32.124999	t
5787	496	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-06 13:40:02.103786	t
5788	800	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-15 15:37:49.523588	t
5789	721	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-11-05 04:49:43.220709	t
5790	153	Học lập trình Python cơ bản	{review,coffee}	2025-10-09 14:22:34.594344	t
5791	854	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-11-08 12:01:26.94111	t
5792	169	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-29 15:27:02.092698	t
5793	372	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-14 22:30:54.838698	f
5794	994	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-09 16:48:08.996276	t
5795	372	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-23 02:08:17.214333	t
5796	143	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-30 06:30:38.283269	t
5797	136	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-11-02 22:13:52.367488	t
5798	73	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-11-04 16:00:17.304905	f
5799	589	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-10-09 15:59:55.376792	t
5800	648	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-21 02:26:05.052302	t
5801	781	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-15 18:18:17.190792	t
5802	713	Review các quán cà phê nổi tiếng	{review,coffee}	2025-11-11 20:20:01.995262	t
5803	753	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-09-29 17:04:18.015147	t
5804	437	Âm nhạc và cuộc sống	{general}	2025-10-27 03:09:32.369521	t
5805	216	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-27 03:09:38.847692	t
5806	784	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-03 07:48:10.596383	t
5807	102	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-12 10:08:14.541988	t
5808	90	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-11-07 23:57:45.902481	f
5809	51	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-11-06 02:16:28.200696	t
5810	684	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-31 23:13:18.851904	f
5811	331	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-11-10 15:50:54.407292	t
5812	470	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-11-04 05:50:03.599685	t
5813	532	Học lập trình Python cơ bản	{tech,python}	2025-10-28 04:42:41.363703	t
5814	502	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-24 10:21:18.630815	t
5815	360	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-26 22:31:05.574364	t
5816	226	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-11-10 14:28:09.448945	t
5817	164	Khám phá du lịch Việt Nam	{food,vietnam}	2025-10-30 12:58:03.998052	t
5818	704	Âm nhạc và cuộc sống	{general}	2025-11-09 13:40:33.177112	t
5819	384	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-30 06:42:03.557056	t
5820	244	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-11-01 18:22:22.894297	t
5821	298	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-24 17:56:44.991207	t
5822	244	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-25 00:56:10.48302	t
5823	176	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-11-07 06:29:05.591281	t
5824	104	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-17 04:05:24.966719	t
5825	630	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-20 04:10:52.801388	t
5826	772	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-19 10:12:28.558673	t
5827	203	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-07 15:08:37.799705	f
5828	290	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-03 11:54:17.415849	t
5829	465	Review các quán cà phê nổi tiếng	{review,coffee}	2025-09-29 17:09:21.006803	t
5830	628	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-23 16:36:09.459969	t
5831	37	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-24 13:29:32.027528	f
5832	814	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-04 14:53:19.928865	f
5833	762	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-17 08:34:56.993014	t
5834	411	Học lập trình Python cơ bản	{review,coffee}	2025-10-24 18:56:24.612918	t
5835	487	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-06 21:25:30.977613	t
5836	601	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-11-09 21:29:48.730031	t
5837	349	Khám phá du lịch Việt Nam	{travel,vietnam}	2025-11-05 03:53:41.998957	t
5838	83	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-11 11:52:46.219347	t
5839	653	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-27 08:17:37.398633	t
5840	647	Âm nhạc và cuộc sống	{travel,vietnam}	2025-10-07 17:49:37.823057	f
5841	307	Review các quán cà phê nổi tiếng	{general}	2025-10-24 06:29:30.448119	f
5842	22	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-01 16:28:08.881835	t
5843	702	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-03 21:35:45.432318	t
5844	345	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-13 20:05:31.934807	t
5845	4	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-29 12:56:12.408021	t
5846	936	Học lập trình Python cơ bản	{food,vietnam}	2025-09-29 07:22:31.70668	t
5847	770	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-11 07:28:48.830871	t
5848	596	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-11-11 13:37:28.429682	t
5849	100	Review các quán cà phê nổi tiếng	{general}	2025-10-30 02:16:42.598147	t
5850	241	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-11-10 18:22:44.804103	t
5851	660	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-09-29 10:31:29.441514	t
5852	451	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-18 12:35:58.879263	t
5853	738	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-06 18:26:09.451922	t
5854	534	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-26 00:11:44.123848	t
5855	231	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-20 11:45:37.709786	t
5856	886	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-15 01:56:29.20959	t
5857	990	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-11-10 23:07:21.22271	t
5858	333	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-11-07 01:47:23.684037	t
5859	479	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-11-01 17:04:50.207325	f
5860	551	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-24 06:32:58.098311	t
5861	351	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-09 10:33:57.585209	t
5862	908	Âm nhạc và cuộc sống	{food,vietnam}	2025-09-29 16:27:11.70732	t
5863	923	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-10 05:04:37.684419	t
5864	830	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-15 03:52:09.863717	t
5865	535	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-16 20:56:44.987519	t
5866	290	Học lập trình Python cơ bản	{travel,vietnam}	2025-10-10 06:38:40.430562	t
5867	563	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-23 23:12:40.538527	t
5868	188	Học lập trình Python cơ bản	{ai,machinelearning}	2025-11-06 12:59:55.476263	t
5869	154	Học lập trình Python cơ bản	{food,vietnam}	2025-11-08 07:57:56.438678	t
5870	319	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-04 01:41:11.558791	t
5871	928	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-11-02 00:00:58.154651	t
5872	321	Review các quán cà phê nổi tiếng	{general}	2025-09-29 09:52:00.906173	f
5873	170	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-26 07:38:16.483181	t
5874	364	Học lập trình Python cơ bản	{tech,python}	2025-11-05 15:16:14.922983	t
5875	884	Âm nhạc và cuộc sống	{tech,python}	2025-10-24 00:00:00.121058	f
5876	935	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-30 05:46:07.786934	t
5877	46	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-29 13:09:33.90536	t
5878	305	Review các quán cà phê nổi tiếng	{review,coffee}	2025-11-05 07:09:03.654986	t
5879	368	Review các quán cà phê nổi tiếng	{general}	2025-10-08 00:06:25.573275	t
5880	272	Khám phá du lịch Việt Nam	{general}	2025-10-22 06:12:58.020371	t
5881	590	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-11-01 08:27:04.73839	t
5882	289	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-26 01:27:37.866303	t
5883	191	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-29 21:59:17.800008	t
5884	980	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-11-01 23:11:17.578007	f
5885	77	Học lập trình Python cơ bản	{review,coffee}	2025-11-01 11:05:41.084497	t
5886	497	Âm nhạc và cuộc sống	{tech,python}	2025-11-04 04:28:40.441428	t
5887	260	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-11 08:57:03.991504	t
5888	492	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-09-28 10:57:02.047026	f
5889	261	Review các quán cà phê nổi tiếng	{review,coffee}	2025-11-12 02:25:29.334361	t
5890	206	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-01 21:43:10.440551	t
5891	142	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-11-11 10:05:52.278929	f
5892	143	Học lập trình Python cơ bản	{ai,machinelearning}	2025-11-10 21:12:11.440293	f
5893	729	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-03 07:27:58.97836	t
5894	503	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-21 00:48:52.989554	t
5895	57	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-23 20:38:31.514426	f
5896	836	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-09-29 04:18:44.053468	t
5897	619	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-07 21:24:36.546977	t
5898	417	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-20 11:27:47.420727	t
5899	17	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-09-29 02:06:31.786018	t
5900	311	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-04 23:20:28.012275	t
5901	823	Âm nhạc và cuộc sống	{food,vietnam}	2025-11-05 01:23:23.877772	t
5902	812	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-15 08:53:10.744088	t
5903	518	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-29 09:14:29.450543	t
5904	978	Học lập trình Python cơ bản	{tech,python}	2025-10-26 07:40:26.455945	t
5905	647	Âm nhạc và cuộc sống	{review,coffee}	2025-10-30 02:06:43.075231	t
5906	518	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-20 17:27:41.511121	t
5907	305	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-08 14:47:57.85748	f
5908	116	Âm nhạc và cuộc sống	{tech,python}	2025-10-12 15:53:16.093704	t
5909	314	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-03 07:37:54.777897	t
5910	968	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-11-05 01:37:22.376272	t
5911	92	Học lập trình Python cơ bản	{review,coffee}	2025-10-17 04:04:33.835114	f
5912	404	Âm nhạc và cuộc sống	{travel,vietnam}	2025-10-03 03:48:49.506655	f
5913	317	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-26 19:26:20.868592	t
5914	699	Học lập trình Python cơ bản	{travel,vietnam}	2025-11-02 17:27:04.448214	t
5915	123	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-18 12:29:43.357117	t
5916	908	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-11-02 08:53:42.094692	t
5917	850	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-21 10:44:57.643132	f
5918	501	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-11-10 00:21:04.226659	t
5919	140	Học lập trình Python cơ bản	{food,vietnam}	2025-11-01 15:18:58.376321	t
5920	592	Âm nhạc và cuộc sống	{food,vietnam}	2025-11-05 00:21:39.783602	t
5921	833	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-28 01:40:05.154507	t
5922	503	Âm nhạc và cuộc sống	{review,coffee}	2025-10-08 02:24:46.762149	t
5923	387	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-12 04:17:37.414607	t
5924	314	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-11-09 04:46:38.288606	t
5925	375	Học lập trình Python cơ bản	{food,vietnam}	2025-11-02 21:19:03.375254	t
5926	355	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-02 01:33:23.816019	t
5927	952	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-10-15 02:40:00.728138	t
5928	552	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-11-03 14:44:54.150426	t
5929	905	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-08 03:53:49.753805	t
5930	238	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-27 22:48:12.048852	t
5931	368	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-12 03:27:57.812527	t
5932	402	Học lập trình Python cơ bản	{review,coffee}	2025-10-09 08:10:46.477292	t
5933	760	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-11-04 03:29:32.158473	t
5934	551	Học lập trình Python cơ bản	{tech,python}	2025-11-07 19:30:34.491119	t
5935	94	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-11-11 23:44:54.452572	t
5936	357	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-11-07 17:48:21.931157	t
5937	601	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-14 07:37:32.416333	t
5938	401	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-21 09:39:41.90149	t
5939	507	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-13 02:24:16.677901	t
5940	599	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-11 16:42:14.942215	t
5941	947	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-28 19:50:58.905319	t
5942	859	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-19 05:44:56.543206	f
5943	544	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-10 14:48:39.70168	t
5944	204	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-10 20:10:34.960112	t
5945	275	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-04 19:29:36.60168	t
5946	733	Học lập trình Python cơ bản	{review,coffee}	2025-11-10 08:05:15.796275	f
5947	636	Âm nhạc và cuộc sống	{tech,python}	2025-10-17 03:56:26.737632	t
5948	589	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-10 11:18:05.203293	t
5949	284	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-11-01 22:28:54.652348	f
5950	875	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-28 00:00:47.486751	t
5951	110	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-23 18:26:20.319269	t
5952	729	Giới thiệu công nghệ AI hiện đại	{general}	2025-10-05 06:51:51.137537	f
5953	135	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-05 00:04:34.424664	t
5954	942	Âm nhạc và cuộc sống	{general}	2025-10-10 01:29:38.545755	t
5955	431	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-11-08 11:46:37.81382	f
5956	600	Khám phá du lịch Việt Nam	{food,vietnam}	2025-10-02 00:29:54.644294	f
5957	225	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-08 10:19:28.633577	t
5958	784	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-01 20:48:35.962152	t
5959	384	Âm nhạc và cuộc sống	{travel,vietnam}	2025-11-05 07:56:42.711357	t
5960	836	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-11-06 07:40:39.933556	t
5961	114	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-15 10:36:45.603762	t
5962	267	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-08 11:44:24.754441	t
5963	130	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-04 00:04:01.314688	t
5964	548	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-12 20:55:34.484612	t
5965	859	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-02 08:57:25.09658	t
5966	408	Review các quán cà phê nổi tiếng	{general}	2025-10-27 05:27:32.974706	t
5967	266	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-14 08:46:12.92933	f
5968	663	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-04 19:41:22.669868	t
5969	544	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-19 16:26:24.591886	t
5970	431	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-29 04:13:11.49268	t
5971	630	Âm nhạc và cuộc sống	{travel,vietnam}	2025-10-29 02:27:22.440348	t
5972	606	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-10 21:21:07.147639	t
5973	818	Review các quán cà phê nổi tiếng	{review,coffee}	2025-11-09 04:36:15.57952	t
5974	76	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-21 20:40:49.141491	t
5975	392	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-11-08 13:22:22.332786	t
5976	948	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-12 08:23:39.861759	t
5977	753	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-10 09:19:11.673372	t
5978	679	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-11-02 08:28:48.617799	t
5979	810	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-25 18:26:44.892013	t
5980	162	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-09-30 14:50:54.425468	f
5981	411	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-02 18:05:09.619978	t
5982	674	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-30 11:59:59.659042	t
5983	875	Học lập trình Python cơ bản	{food,vietnam}	2025-10-12 18:27:41.20293	t
5984	211	Âm nhạc và cuộc sống	{review,coffee}	2025-10-21 04:26:26.498253	t
5985	124	Review các quán cà phê nổi tiếng	{tech,python}	2025-11-12 00:02:02.135491	t
5986	523	Khám phá du lịch Việt Nam	{food,vietnam}	2025-10-10 06:11:23.290527	t
5987	925	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-03 07:10:31.330415	t
5988	263	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-09-29 06:55:47.508985	t
5989	968	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-01 12:50:47.124593	f
5990	206	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-04 09:37:28.736359	f
5991	578	Học lập trình Python cơ bản	{tech,python}	2025-11-11 17:20:35.903414	t
5992	366	Âm nhạc và cuộc sống	{tech,python}	2025-10-25 11:53:15.546117	t
5993	597	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-15 05:44:11.961625	f
5994	292	Học lập trình Python cơ bản	{food,vietnam}	2025-10-20 01:41:48.948423	t
5995	418	Âm nhạc và cuộc sống	{review,coffee}	2025-10-22 22:56:35.368865	t
5996	921	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-08 03:02:18.22117	t
5997	78	Review các quán cà phê nổi tiếng	{tech,python}	2025-11-08 04:42:04.906723	t
5998	138	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-11-08 14:46:18.10162	t
5999	515	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-09 02:18:31.804734	t
6000	527	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-05 20:58:03.354682	t
6001	964	Thể thao và sức khỏe mỗi ngày	{general}	2025-11-02 05:37:11.393996	t
6002	849	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-10 21:20:45.709159	t
6003	617	Khám phá du lịch Việt Nam	{general}	2025-10-29 07:27:09.229186	t
6004	107	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-09-29 20:50:24.354564	t
6005	341	Học lập trình Python cơ bản	{tech,python}	2025-10-21 12:48:34.142447	t
6006	651	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-26 18:47:05.070523	f
6007	778	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-10-14 03:11:20.929144	t
6008	501	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-22 09:04:22.042235	t
6009	430	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-20 01:41:51.599611	f
6010	685	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-31 11:14:23.615916	t
6011	619	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-10-23 17:28:53.74672	t
6012	839	Học lập trình Python cơ bản	{tech,python}	2025-10-10 16:05:13.755805	f
6013	122	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-27 06:39:56.629204	t
6014	286	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-10-19 17:16:02.407416	t
6015	315	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-10-19 11:04:57.07793	t
6016	381	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-11-03 06:17:04.890394	t
6017	572	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-29 12:35:51.477477	t
6018	668	Âm nhạc và cuộc sống	{tech,python}	2025-10-17 18:33:23.074048	t
6019	391	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-13 13:31:42.680337	t
6020	286	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-28 22:33:57.823425	t
6021	974	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-04 02:28:23.709804	t
6022	607	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-21 02:40:24.218408	t
6023	124	Học lập trình Python cơ bản	{tech,python}	2025-10-21 09:15:18.531311	t
6024	941	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-21 20:59:14.798454	t
6025	658	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-19 04:04:35.160662	f
6026	842	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-11-11 22:16:42.746526	t
6027	725	Âm nhạc và cuộc sống	{tech,python}	2025-10-11 06:39:36.493382	t
6028	107	Khám phá du lịch Việt Nam	{general}	2025-10-13 10:43:26.536264	t
6029	416	Âm nhạc và cuộc sống	{travel,vietnam}	2025-10-22 19:58:02.941798	t
6030	91	Học lập trình Python cơ bản	{ai,machinelearning}	2025-11-05 16:38:24.495497	t
6031	211	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-17 07:20:56.725176	t
6032	818	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-12 15:14:12.037074	t
6033	412	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-16 11:49:35.51638	t
6034	24	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-10-14 06:25:15.626392	f
6035	295	Học lập trình Python cơ bản	{review,coffee}	2025-11-10 12:46:37.880421	t
6036	152	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-10 02:00:11.134874	t
6037	480	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-08 19:25:17.399066	t
6038	294	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-11-07 05:19:16.083383	t
6039	626	Học lập trình Python cơ bản	{tech,python}	2025-10-30 04:28:30.657403	t
6040	330	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-18 10:02:18.408058	f
6041	296	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-22 03:22:14.643028	t
6042	54	Âm nhạc và cuộc sống	{review,coffee}	2025-10-25 22:37:32.9745	t
6043	318	Review các quán cà phê nổi tiếng	{review,coffee}	2025-11-01 09:36:58.661564	t
6044	850	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-30 23:13:47.708595	t
6045	989	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-11-01 17:00:32.269334	t
6046	586	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-09-29 03:57:55.581876	f
6047	466	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-20 11:50:26.22285	t
6048	741	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-11-03 03:10:38.709848	t
6049	997	Âm nhạc và cuộc sống	{review,coffee}	2025-11-02 12:12:47.642587	t
6050	687	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-11-10 15:38:55.667518	t
6109	784	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-11-03 14:29:06.352329	t
6051	646	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-04 21:02:49.051573	t
6052	404	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-05 06:51:05.417567	t
6053	467	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-10-24 13:33:26.014565	t
6054	689	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-28 14:31:13.016851	t
6055	286	Âm nhạc và cuộc sống	{tech,python}	2025-10-16 20:25:11.828351	f
6056	910	Âm nhạc và cuộc sống	{review,coffee}	2025-10-04 18:32:21.981473	t
6057	662	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-06 22:55:09.876439	t
6058	663	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-05 06:06:50.843547	t
6059	266	Học lập trình Python cơ bản	{food,vietnam}	2025-10-24 20:55:17.386197	t
6060	130	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-16 22:38:28.520645	t
6061	496	Học lập trình Python cơ bản	{tech,python}	2025-10-18 07:24:45.995949	t
6062	293	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-11-02 08:19:34.308111	t
6063	874	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-04 19:44:49.16255	t
6064	541	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-31 23:56:13.436753	t
6065	564	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-11-05 01:11:47.902479	f
6066	944	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-02 14:31:02.555121	t
6067	749	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-29 20:30:20.007754	t
6068	885	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-07 01:13:26.335628	t
6069	204	Học lập trình Python cơ bản	{tech,python}	2025-09-30 20:25:07.166269	t
6070	368	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-15 12:29:22.028031	t
6071	909	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-08 23:09:53.765546	f
6072	90	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-24 20:28:13.441113	f
6073	820	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-29 17:35:56.622321	t
6074	436	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-11-04 03:04:47.467626	t
6075	11	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-10-21 12:09:43.216418	t
6076	756	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-20 23:37:32.396124	t
6077	732	Review các quán cà phê nổi tiếng	{tech,python}	2025-09-29 20:00:02.742814	t
6078	941	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-15 19:08:04.709172	t
6079	633	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-19 19:29:21.976136	t
6080	137	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-02 18:55:01.623401	f
6081	559	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-08 00:27:26.800615	t
6082	251	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-04 17:13:43.092623	t
6083	820	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-24 17:42:00.742616	t
6084	635	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-31 06:00:28.56172	f
6085	467	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-23 10:39:25.138336	t
6086	701	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-27 11:33:14.344485	f
6087	650	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-11-10 00:36:37.924412	t
6088	138	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-05 17:05:55.451417	t
6089	130	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-06 16:44:13.199639	t
6090	929	Review các quán cà phê nổi tiếng	{tech,python}	2025-11-02 12:03:05.651404	t
6091	521	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-17 10:50:53.280567	t
6092	429	Âm nhạc và cuộc sống	{review,coffee}	2025-10-03 01:38:53.978076	t
6093	148	Thể thao và sức khỏe mỗi ngày	{general}	2025-11-03 19:43:49.11228	t
6094	61	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-09-30 21:32:22.390765	t
6095	49	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-04 02:58:29.221443	t
6096	980	Âm nhạc và cuộc sống	{general}	2025-11-12 07:51:49.843148	t
6097	329	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-27 05:12:09.540677	t
6098	785	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-12 10:08:25.190941	t
6099	699	Học lập trình Python cơ bản	{review,coffee}	2025-10-21 18:07:34.188191	t
6100	860	Review các quán cà phê nổi tiếng	{tech,python}	2025-11-01 13:22:04.445318	t
6101	911	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-21 16:01:03.984849	t
6102	291	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-25 08:14:09.692714	t
6103	961	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-24 09:17:24.070835	f
6104	233	Khám phá du lịch Việt Nam	{review,coffee}	2025-09-30 20:37:06.888838	t
6105	97	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-16 19:24:39.111303	t
6106	284	Học lập trình Python cơ bản	{review,coffee}	2025-10-25 20:48:03.970535	t
6107	926	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-10-11 04:52:20.451842	t
6108	98	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-11-01 05:47:35.542277	t
6110	785	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-15 00:16:56.903165	t
6111	482	Học lập trình Python cơ bản	{food,vietnam}	2025-11-08 20:33:55.899621	t
6112	644	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-26 10:54:24.920653	t
6113	847	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-31 00:54:32.081632	t
6114	651	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-13 14:31:19.185392	t
6115	61	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-09 23:53:13.340243	t
6116	920	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-11 16:52:01.208556	f
6117	337	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-02 11:47:36.03862	t
6118	70	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-09-29 09:05:42.625528	t
6119	896	Review các quán cà phê nổi tiếng	{general}	2025-09-29 06:53:35.965671	t
6120	94	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-09-29 07:35:14.329563	f
6121	939	Học lập trình Python cơ bản	{tech,python}	2025-11-02 04:25:16.442748	t
6122	581	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-09-30 15:44:25.316707	t
6123	632	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-11-10 10:49:29.779673	t
6124	108	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-01 11:01:03.947689	f
6125	727	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-09-30 05:50:12.940791	t
6126	614	Học lập trình Python cơ bản	{review,coffee}	2025-10-28 12:59:25.678042	t
6127	556	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-28 17:29:59.634077	t
6128	1000	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-11-03 16:32:45.71593	t
6129	798	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-22 03:36:22.263021	t
6130	282	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-19 15:09:19.753839	t
6131	245	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-06 23:50:06.197098	t
6132	847	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-10-24 15:59:36.440308	t
6133	742	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-11-08 13:49:38.866166	t
6134	45	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-05 17:59:51.324973	t
6135	274	Học lập trình Python cơ bản	{tech,python}	2025-10-01 00:52:04.159955	t
6136	681	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-16 08:10:04.286077	t
6137	538	Học lập trình Python cơ bản	{tech,python}	2025-10-24 00:20:00.867196	f
6138	476	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-05 02:48:18.152505	t
6139	880	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-16 12:26:47.52197	t
6140	260	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-29 22:31:00.585346	f
6141	266	Học lập trình Python cơ bản	{food,vietnam}	2025-11-11 01:15:23.621056	t
6142	820	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-19 13:12:31.940894	t
6143	535	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-15 20:49:13.307907	t
6144	569	Review các quán cà phê nổi tiếng	{review,coffee}	2025-11-03 05:34:42.146062	t
6145	993	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-10-27 08:00:36.637524	t
6146	599	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-12 16:48:06.723592	t
6147	673	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-08 20:51:07.599001	t
6148	102	Âm nhạc và cuộc sống	{food,vietnam}	2025-09-28 14:29:41.463749	t
6149	59	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-17 21:15:17.291166	f
6150	567	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-08 21:58:10.440446	t
6151	678	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-11-09 17:16:49.677676	t
6152	790	Học lập trình Python cơ bản	{food,vietnam}	2025-10-14 01:59:03.867643	t
6153	11	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-09 12:50:10.143466	t
6154	732	Học lập trình Python cơ bản	{food,vietnam}	2025-11-01 14:49:56.99285	t
6155	6	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-01 14:12:01.478382	t
6156	687	Âm nhạc và cuộc sống	{review,coffee}	2025-10-01 11:28:47.417141	t
6157	689	Học lập trình Python cơ bản	{travel,vietnam}	2025-10-14 20:51:42.477978	t
6158	916	Âm nhạc và cuộc sống	{review,coffee}	2025-09-29 04:29:10.951885	f
6159	509	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-10-27 19:07:40.170286	t
6160	237	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-24 06:39:11.772177	t
6161	926	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-14 19:42:03.636599	t
6162	46	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-13 07:10:24.562692	t
6163	246	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-09 15:35:03.526558	t
6164	319	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-10-15 08:45:50.454087	t
6165	773	Học lập trình Python cơ bản	{tech,python}	2025-10-24 04:54:05.789012	f
6166	169	Khám phá du lịch Việt Nam	{food,vietnam}	2025-11-08 22:12:38.692628	t
6167	882	Học lập trình Python cơ bản	{tech,python}	2025-10-25 04:08:34.241954	t
6168	257	Học lập trình Python cơ bản	{tech,python}	2025-10-21 05:27:07.571961	t
6169	113	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-03 00:46:22.714245	t
6170	256	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-16 00:15:24.824261	t
6171	694	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-11-07 03:42:06.262298	f
6172	166	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-02 02:44:09.967643	t
6173	35	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-11-08 06:09:03.100213	t
6174	461	Review các quán cà phê nổi tiếng	{general}	2025-09-28 13:42:54.408287	t
6175	707	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-10-28 13:09:39.512873	f
6176	507	Âm nhạc và cuộc sống	{tech,python}	2025-10-20 20:12:13.587423	t
6177	323	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-30 13:01:34.023599	f
6178	923	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-23 20:46:01.271202	t
6179	342	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-09-30 01:00:06.850809	t
6180	489	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-22 21:39:26.275186	t
6181	198	Âm nhạc và cuộc sống	{food,vietnam}	2025-11-05 08:41:16.989969	t
6182	394	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-10 12:05:21.691768	t
6183	550	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-28 10:44:41.65553	t
6184	746	Học lập trình Python cơ bản	{food,vietnam}	2025-10-17 01:58:57.361698	t
6185	864	Khám phá du lịch Việt Nam	{tech,python}	2025-09-29 13:32:08.533104	t
6186	796	Học lập trình Python cơ bản	{travel,vietnam}	2025-11-08 17:32:23.351535	t
6187	972	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-12 10:49:58.434336	t
6188	955	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-10 03:44:09.325661	f
6189	918	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-11-10 19:45:33.482178	t
6190	965	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-27 06:46:36.705169	t
6191	931	Học lập trình Python cơ bản	{travel,vietnam}	2025-11-08 13:32:19.392599	t
6192	406	Học lập trình Python cơ bản	{tech,python}	2025-11-08 18:54:15.372772	t
6193	667	Học lập trình Python cơ bản	{tech,python}	2025-10-10 18:47:56.130921	t
6194	563	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-10-20 16:07:54.832861	f
6195	275	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-11-12 00:32:10.945736	t
6196	197	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-25 23:27:19.944093	t
6197	595	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-29 03:53:02.847938	t
6198	892	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-11 20:19:43.272576	t
6199	45	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-22 13:53:52.472836	t
6200	392	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-17 19:28:00.436007	t
6201	562	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-10-21 08:20:22.203052	t
6202	80	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-06 15:56:52.570855	f
6203	935	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-04 00:45:47.422293	t
6204	625	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-19 13:07:06.688978	t
6205	141	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-26 10:47:05.217711	t
6206	223	Âm nhạc và cuộc sống	{review,coffee}	2025-10-21 08:50:57.757177	t
6207	880	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-26 12:04:59.798205	t
6208	52	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-25 09:59:24.845187	f
6209	541	Học lập trình Python cơ bản	{ai,machinelearning}	2025-11-05 19:48:00.11975	t
6210	580	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-11-11 14:20:16.940032	t
6211	386	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-10 05:05:18.10263	t
6212	519	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-08 23:24:45.331281	f
6213	120	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-31 19:12:40.566338	t
6214	926	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-11 22:49:39.229233	f
6215	136	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-20 15:44:46.929652	t
6216	866	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-20 12:42:57.487666	t
6217	522	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-24 04:06:21.09681	t
6218	654	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-08 21:45:03.805005	f
6219	354	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-15 13:53:17.172707	f
6220	160	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-11-07 11:08:04.902471	t
6221	426	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-09 08:34:57.071164	t
6222	603	Học lập trình Python cơ bản	{travel,vietnam}	2025-10-11 10:53:05.574768	t
6223	564	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-25 18:44:34.054306	t
6224	602	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-18 10:55:27.834534	t
6225	244	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-15 19:48:27.298456	t
6458	404	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-11-01 22:40:03.408861	t
6226	478	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-12 14:22:31.116558	t
6227	333	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-03 23:27:05.052879	t
6228	684	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-11-07 07:48:51.929942	t
6229	509	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-07 02:45:07.211108	t
6230	174	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-24 23:21:03.734841	t
6231	890	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-07 11:25:07.070791	t
6232	584	Âm nhạc và cuộc sống	{food,vietnam}	2025-11-11 14:49:36.388781	t
6233	165	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-22 04:58:52.366994	f
6234	866	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-08 14:25:08.608607	t
6235	767	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-13 21:43:03.992787	t
6236	134	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-22 09:04:06.878954	t
6237	494	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-28 17:30:11.729658	t
6238	30	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-23 12:28:23.937482	t
6239	234	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-01 10:13:27.902068	t
6240	419	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-16 00:07:49.6319	f
6241	718	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-04 00:24:37.481587	t
6242	616	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-11-10 02:34:33.432277	t
6243	277	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-14 16:22:10.378784	t
6244	34	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-24 03:27:13.632617	t
6245	78	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-30 08:04:57.380121	t
6246	744	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-11-04 23:48:46.313931	t
6247	699	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-21 13:24:47.63688	t
6248	611	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-09-30 19:51:01.416453	f
6249	116	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-04 23:31:53.769954	t
6250	773	Khám phá du lịch Việt Nam	{travel,vietnam}	2025-11-06 14:29:47.175595	t
6251	229	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-19 01:17:23.995061	t
6252	417	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-04 11:07:32.053005	f
6253	40	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-10-10 12:28:11.955214	t
6254	922	Giới thiệu công nghệ AI hiện đại	{general}	2025-10-12 03:49:08.779709	t
6255	655	Review các quán cà phê nổi tiếng	{review,coffee}	2025-11-05 10:07:00.099982	t
6256	169	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-10-29 02:42:39.495442	t
6257	306	Khám phá du lịch Việt Nam	{tech,python}	2025-10-14 11:13:53.698414	t
6258	354	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-08 02:33:47.652245	t
6259	375	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-09-30 12:51:18.46748	t
6260	560	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-08 08:45:02.600843	t
6261	492	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-11-01 00:43:22.19152	t
6262	836	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-04 10:09:18.924295	t
6263	763	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-19 08:17:15.842207	t
6264	407	Học lập trình Python cơ bản	{food,vietnam}	2025-10-17 05:12:22.812397	t
6265	870	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-06 06:14:50.596372	t
6266	567	Âm nhạc và cuộc sống	{general}	2025-10-21 11:38:20.972798	t
6267	63	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-04 23:00:19.691671	t
6268	177	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-18 12:17:35.117675	t
6269	59	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-13 07:49:56.625077	t
6270	958	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-11-08 17:11:34.24661	t
6271	842	Giới thiệu công nghệ AI hiện đại	{general}	2025-10-06 00:58:21.402145	t
6272	902	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-05 17:52:28.474737	t
6273	837	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-03 14:48:47.286539	t
6274	283	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-10-14 18:15:43.500494	f
6275	672	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-09 23:43:59.418608	t
6276	254	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-14 15:27:59.276282	t
6277	970	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-04 02:44:22.093336	t
6278	959	Review các quán cà phê nổi tiếng	{tech,python}	2025-11-08 11:55:13.196221	f
6279	162	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-10-31 20:12:42.039238	t
6280	487	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-10-06 12:59:07.533271	t
6281	90	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-05 20:03:22.077691	t
6282	273	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-11-04 19:49:32.965883	t
6283	481	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-10-30 04:42:26.126891	t
6284	855	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-12 03:58:26.732437	f
6285	439	Khám phá du lịch Việt Nam	{general}	2025-10-27 17:49:31.798409	t
6286	399	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-09-30 08:40:06.012524	t
6287	767	Học lập trình Python cơ bản	{tech,python}	2025-10-28 20:29:04.490947	t
6288	191	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-04 08:45:38.514737	t
6289	725	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-06 21:37:40.309666	t
6290	942	Review các quán cà phê nổi tiếng	{tech,python}	2025-09-29 03:00:56.65653	f
6291	942	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-25 19:38:24.107468	t
6292	216	Học lập trình Python cơ bản	{tech,python}	2025-11-05 20:58:31.645675	t
6293	97	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-15 01:01:52.919416	t
6294	272	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-11-12 00:50:04.917463	t
6295	537	Thể thao và sức khỏe mỗi ngày	{general}	2025-11-07 03:13:43.640643	t
6296	591	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-11-01 10:14:01.125392	t
6297	835	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-11-07 12:04:58.267105	t
6298	39	Âm nhạc và cuộc sống	{tech,python}	2025-10-28 06:25:47.064289	t
6299	569	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-19 08:03:48.293766	t
6300	378	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-09-29 12:35:56.39605	t
6301	286	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-11-03 23:24:46.20426	t
6302	487	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-06 16:23:07.042263	t
6303	549	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-07 22:42:49.652193	t
6304	529	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-06 07:23:47.42013	t
6305	173	Học lập trình Python cơ bản	{food,vietnam}	2025-10-15 18:56:46.501292	t
6306	154	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-11-04 15:45:53.115273	t
6307	516	Âm nhạc và cuộc sống	{tech,python}	2025-11-04 03:07:19.398202	t
6308	354	Học lập trình Python cơ bản	{travel,vietnam}	2025-09-29 08:57:14.435333	t
6309	31	Âm nhạc và cuộc sống	{review,coffee}	2025-10-12 20:35:36.892626	t
6310	241	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-05 16:11:16.210558	f
6311	971	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-31 21:27:13.805132	t
6312	107	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-21 07:20:32.315767	f
6313	129	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-29 20:00:43.11142	t
6314	731	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-30 16:15:53.233214	f
6315	123	Âm nhạc và cuộc sống	{food,vietnam}	2025-11-06 11:27:57.210079	t
6316	204	Học lập trình Python cơ bản	{food,vietnam}	2025-10-19 01:07:17.748531	t
6317	898	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-30 20:13:48.75451	f
6318	102	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-16 18:11:11.25073	t
6319	590	Học lập trình Python cơ bản	{food,vietnam}	2025-11-11 21:53:32.702604	t
6320	352	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-11 06:20:26.306957	f
6321	390	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-30 23:25:11.876186	t
6322	855	Khám phá du lịch Việt Nam	{general}	2025-10-25 10:23:43.059115	t
6323	677	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-10-23 04:41:31.353891	t
6324	208	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-20 02:26:59.543022	t
6325	623	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-11-08 08:06:57.639518	t
6326	792	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-09-29 02:39:21.276608	t
6327	540	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-28 08:44:24.80338	t
6328	663	Học lập trình Python cơ bản	{tech,python}	2025-11-12 01:27:53.871489	t
6329	142	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-10-27 06:40:43.098874	t
6330	237	Học lập trình Python cơ bản	{general}	2025-11-12 06:10:17.815617	t
6331	357	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-02 11:11:04.414429	t
6332	815	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-09-29 22:33:18.962095	f
6333	562	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-11-12 05:00:23.143124	t
6334	225	Review các quán cà phê nổi tiếng	{tech,python}	2025-11-03 14:33:53.678218	t
6335	85	Review các quán cà phê nổi tiếng	{review,coffee}	2025-11-04 08:34:33.530049	t
6336	95	Học lập trình Python cơ bản	{food,vietnam}	2025-10-10 08:36:55.461114	t
6337	633	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-10-18 08:40:57.067865	f
6338	602	Âm nhạc và cuộc sống	{review,coffee}	2025-10-06 09:59:20.42749	f
6339	1000	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-10-09 14:25:48.430202	f
6340	529	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-29 09:59:57.386543	t
6341	823	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-03 02:40:49.358373	t
6342	44	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-22 23:23:30.271119	t
6343	472	Review các quán cà phê nổi tiếng	{general}	2025-10-21 15:40:09.210406	t
6344	684	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-04 12:11:04.191593	t
6345	260	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-21 06:32:58.3802	f
6346	974	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-23 23:44:17.557077	t
6347	470	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-03 20:32:26.073273	t
6348	978	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-11-06 08:19:01.719333	t
6349	31	Âm nhạc và cuộc sống	{food,vietnam}	2025-11-01 21:45:50.560639	t
6350	39	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-11-11 04:20:03.594343	t
6351	848	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-11-02 07:24:19.416709	t
6352	914	Âm nhạc và cuộc sống	{tech,python}	2025-11-03 11:56:19.481971	f
6353	975	Review các quán cà phê nổi tiếng	{general}	2025-11-05 09:13:11.81379	t
6354	78	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-14 17:26:07.28832	t
6355	814	Học lập trình Python cơ bản	{review,coffee}	2025-10-01 07:28:11.997626	t
6356	799	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-01 04:56:26.187639	t
6357	899	Học lập trình Python cơ bản	{review,coffee}	2025-11-07 11:22:55.407657	t
6358	32	Giới thiệu công nghệ AI hiện đại	{general}	2025-10-14 01:51:09.071992	t
6359	196	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-09-30 20:27:59.876606	t
6360	794	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-23 01:15:03.93606	t
6361	41	Khám phá du lịch Việt Nam	{general}	2025-11-01 18:58:51.164023	t
6362	485	Học lập trình Python cơ bản	{review,coffee}	2025-11-06 20:46:23.435801	t
6363	656	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-12 13:44:34.61402	t
6364	828	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-11-05 04:19:37.811698	f
6365	273	Học lập trình Python cơ bản	{travel,vietnam}	2025-11-03 09:20:46.569698	f
6366	700	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-10 19:21:03.71579	f
6367	115	Review các quán cà phê nổi tiếng	{general}	2025-09-30 04:21:20.639573	t
6368	312	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-24 22:32:39.352243	t
6369	816	Review các quán cà phê nổi tiếng	{tech,python}	2025-11-05 19:55:43.7952	t
6370	30	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-22 22:34:17.47069	t
6371	449	Khám phá du lịch Việt Nam	{food,vietnam}	2025-10-23 14:01:07.296922	t
6372	30	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-24 03:44:04.46898	t
6373	9	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-03 09:32:16.77666	t
6374	397	Khám phá du lịch Việt Nam	{tech,python}	2025-11-01 13:58:04.517393	t
6375	758	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-11-04 11:44:43.421069	t
6376	608	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-20 03:22:41.010024	t
6377	91	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-11-03 23:07:04.599941	t
6378	364	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-09 22:11:13.641964	t
6379	984	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-19 17:16:20.262429	t
6380	517	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-10-15 14:17:29.964598	t
6381	438	Khám phá du lịch Việt Nam	{tech,python}	2025-11-09 03:09:28.117374	t
6382	165	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-10 21:43:20.48462	f
6383	302	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-10 05:27:34.496547	t
6384	715	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-13 15:00:10.733851	t
6385	670	Học lập trình Python cơ bản	{food,vietnam}	2025-10-30 13:03:20.329365	t
6386	380	Âm nhạc và cuộc sống	{general}	2025-10-14 13:47:47.44817	t
6387	376	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-30 10:38:52.676479	t
6388	359	Khám phá du lịch Việt Nam	{general}	2025-10-11 09:45:05.817339	f
6389	423	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-07 16:35:44.348013	t
6390	979	Review các quán cà phê nổi tiếng	{general}	2025-11-02 04:34:42.142864	t
6391	567	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-11-10 20:34:44.471649	t
6392	3	Học lập trình Python cơ bản	{tech,python}	2025-10-11 03:13:34.713373	t
6393	723	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-09-28 22:50:50.202477	t
6394	198	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-21 23:08:51.053341	t
6395	6	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-04 23:23:13.362551	t
6396	121	Âm nhạc và cuộc sống	{tech,python}	2025-10-10 19:20:26.966028	f
6397	143	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-11-07 16:42:33.080943	t
6398	46	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-02 16:54:02.732888	t
6399	842	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-01 10:39:17.216536	t
6400	318	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-06 10:08:16.581316	f
6401	211	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-11-07 19:37:36.085947	t
6402	491	Học lập trình Python cơ bản	{review,coffee}	2025-11-07 22:46:19.225828	t
6403	91	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-11-02 13:42:45.473846	t
6404	835	Âm nhạc và cuộc sống	{travel,vietnam}	2025-11-08 15:42:14.067365	f
6405	274	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-14 09:53:14.540704	t
6406	671	Học lập trình Python cơ bản	{review,coffee}	2025-10-07 20:21:16.488813	t
6407	866	Âm nhạc và cuộc sống	{tech,python}	2025-11-11 21:30:06.539708	f
6408	841	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-12 03:30:16.982297	t
6409	694	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-04 03:15:54.649991	t
6410	955	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-18 05:00:18.074027	t
6411	812	Học lập trình Python cơ bản	{ai,machinelearning}	2025-11-05 02:02:52.906542	t
6412	70	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-11-05 05:55:20.499539	t
6413	861	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-11-08 18:46:31.277559	t
6414	135	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-20 05:18:10.222566	t
6415	966	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-08 16:32:55.869512	t
6416	465	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-11-03 08:04:21.50624	t
6417	712	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-11-06 23:35:41.573068	t
6418	627	Review các quán cà phê nổi tiếng	{general}	2025-11-05 06:22:12.538762	t
6419	589	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-08 09:11:23.831229	t
6420	583	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-11 14:25:22.476605	t
6421	515	Khám phá du lịch Việt Nam	{general}	2025-11-03 17:45:42.49633	t
6422	646	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-02 01:48:00.152916	t
6423	189	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-16 20:41:31.840493	t
6424	948	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-20 21:46:47.848268	t
6425	330	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-11 23:57:53.472525	t
6426	670	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-11-06 20:52:57.180332	t
6427	925	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-05 16:52:40.649162	t
6428	267	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-23 13:50:31.428454	t
6429	180	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-19 20:49:03.291732	t
6430	455	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-09-29 09:27:33.668176	t
6431	831	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-31 01:18:22.154619	t
6432	116	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-26 08:17:00.261435	f
6433	594	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-11-03 06:11:58.880243	t
6434	472	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-10-14 06:05:50.642543	t
6435	369	Học lập trình Python cơ bản	{travel,vietnam}	2025-10-06 11:37:29.841268	f
6436	311	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-04 21:06:48.416127	t
6437	284	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-14 22:41:40.233746	t
6438	690	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-11-05 10:09:49.815853	t
6439	861	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-14 18:03:47.087514	t
6440	755	Khám phá du lịch Việt Nam	{tech,python}	2025-11-10 03:48:27.020647	t
6441	647	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-09-30 04:54:10.983234	t
6442	282	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-11-08 21:35:31.394237	t
6443	857	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-29 14:20:42.643252	t
6444	952	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-11 19:09:29.959083	t
6445	846	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-20 06:21:58.748172	t
6446	459	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-25 03:09:11.807129	t
6447	405	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-06 12:29:42.553583	f
6448	115	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-20 03:03:45.367964	f
6449	228	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-21 20:59:22.69565	t
6450	438	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-20 12:46:52.141289	t
6451	749	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-10-02 23:05:29.572359	t
6452	206	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-11-05 17:47:20.841552	t
6453	678	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-10 07:59:57.585088	t
6454	835	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-27 11:02:46.639106	f
6455	298	Học lập trình Python cơ bản	{food,vietnam}	2025-10-01 12:55:18.165301	t
6456	40	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-11-01 22:29:59.630696	f
6457	613	Học lập trình Python cơ bản	{general}	2025-10-03 03:01:53.544665	f
6459	563	Học lập trình Python cơ bản	{review,coffee}	2025-11-03 02:14:54.068463	t
6460	745	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-14 01:13:30.183479	f
6461	749	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-26 09:43:44.242128	t
6462	664	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-27 11:33:32.443874	t
6463	338	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-28 03:11:38.732789	t
6464	660	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-16 10:43:02.912401	t
6465	881	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-06 00:50:30.658892	t
6466	558	Âm nhạc và cuộc sống	{food,vietnam}	2025-11-09 07:26:03.838574	t
6467	143	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-10-30 19:20:42.982277	t
6468	486	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-12 01:49:16.082012	t
6469	505	Học lập trình Python cơ bản	{food,vietnam}	2025-10-02 19:24:03.901019	t
6470	72	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-26 09:53:15.951441	t
6471	72	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-11-10 09:26:52.124671	f
6472	100	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-05 10:01:38.103009	f
6473	23	Âm nhạc và cuộc sống	{tech,python}	2025-11-01 15:20:38.410987	t
6474	46	Review các quán cà phê nổi tiếng	{tech,python}	2025-11-08 03:00:59.144087	t
6475	527	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-06 17:32:11.57203	t
6476	253	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-12 11:40:16.338034	t
6477	288	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-16 10:31:07.005385	t
6478	156	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-29 19:48:07.778015	t
6479	618	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-10-08 04:24:22.462798	t
6480	392	Khám phá du lịch Việt Nam	{travel,vietnam}	2025-10-23 14:41:12.681162	t
6481	233	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-19 00:32:52.034573	t
6482	858	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-11 21:37:10.307798	t
6483	467	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-19 10:26:19.689216	t
6484	77	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-11-03 23:13:22.459228	t
6485	208	Học lập trình Python cơ bản	{travel,vietnam}	2025-10-05 02:50:16.402273	f
6486	246	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-11-02 04:27:31.048321	t
6487	991	Âm nhạc và cuộc sống	{review,coffee}	2025-09-29 08:46:15.331196	f
6488	258	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-20 18:40:44.294384	t
6489	839	Khám phá du lịch Việt Nam	{general}	2025-10-08 21:11:13.999914	t
6490	293	Âm nhạc và cuộc sống	{tech,python}	2025-10-28 14:03:49.329858	t
6491	33	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-09-29 06:49:36.515046	t
6492	677	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-31 00:07:11.043606	t
6493	366	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-20 05:00:31.221833	t
6494	311	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-14 11:54:26.613203	t
6495	100	Thể thao và sức khỏe mỗi ngày	{general}	2025-09-29 04:31:50.495766	t
6496	522	Âm nhạc và cuộc sống	{general}	2025-10-10 11:19:59.424702	t
6497	634	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-15 01:03:07.370242	t
6498	830	Review các quán cà phê nổi tiếng	{general}	2025-10-06 22:49:09.489683	t
6499	978	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-10-07 20:34:42.373301	t
6500	636	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-06 08:42:02.683437	t
6501	967	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-14 11:30:36.711287	t
6502	183	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-23 23:23:45.307625	t
6503	246	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-14 02:59:28.033336	t
6504	496	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-09-28 13:24:23.120915	t
6505	128	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-05 07:06:31.170537	f
6506	513	Âm nhạc và cuộc sống	{tech,python}	2025-11-12 06:29:30.69495	t
6507	817	Học lập trình Python cơ bản	{food,vietnam}	2025-11-06 23:14:55.717386	f
6508	797	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-11-05 03:07:39.495771	f
6509	644	Học lập trình Python cơ bản	{review,coffee}	2025-10-12 01:37:57.983522	t
6510	25	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-11-03 05:53:45.516627	t
6511	324	Âm nhạc và cuộc sống	{tech,python}	2025-10-08 12:02:14.444947	t
6512	662	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-10-27 23:05:36.56015	t
6513	983	Học lập trình Python cơ bản	{food,vietnam}	2025-09-28 11:57:53.597689	t
6514	331	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-07 06:31:14.792577	t
6515	126	Âm nhạc và cuộc sống	{food,vietnam}	2025-09-30 08:47:19.217574	t
6516	289	Âm nhạc và cuộc sống	{food,vietnam}	2025-09-29 20:42:00.419056	t
6517	92	Âm nhạc và cuộc sống	{tech,python}	2025-10-04 11:51:04.300692	t
6518	745	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-06 15:18:00.95219	t
6519	307	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-25 12:50:10.563965	t
6520	911	Âm nhạc và cuộc sống	{review,coffee}	2025-10-31 23:59:54.819527	t
6521	945	Âm nhạc và cuộc sống	{review,coffee}	2025-10-26 08:59:03.969982	t
6522	22	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-01 10:48:21.691365	t
6523	575	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-11-03 09:21:24.050658	t
6524	556	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-12 04:33:51.646362	t
6525	932	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-15 20:24:19.346121	t
6526	980	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-10-01 10:17:56.34711	t
6527	112	Học lập trình Python cơ bản	{food,vietnam}	2025-10-27 07:10:31.856918	t
6528	139	Review các quán cà phê nổi tiếng	{review,coffee}	2025-09-30 23:40:31.434026	t
6529	339	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-12 07:23:06.405694	t
6530	888	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-03 01:28:59.353548	t
6531	499	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-02 05:10:10.063577	t
6532	944	Review các quán cà phê nổi tiếng	{review,coffee}	2025-11-04 22:12:35.767181	t
6533	963	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-10-04 03:07:47.473366	t
6534	426	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-10 02:02:23.488087	t
6535	25	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-09-29 09:46:58.53433	t
6536	243	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-06 17:36:07.640193	t
6537	715	Khám phá du lịch Việt Nam	{tech,python}	2025-10-13 12:29:14.85482	t
6538	769	Âm nhạc và cuộc sống	{review,coffee}	2025-10-21 18:37:45.627808	f
6539	765	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-05 18:38:22.533258	t
6540	54	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-03 11:22:48.810971	t
6541	959	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-09-30 00:24:12.94729	t
6542	478	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-19 23:09:24.759263	t
6543	621	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-23 16:19:40.29221	t
6544	851	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-11 15:36:49.63525	t
6545	14	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-11-05 09:54:15.36167	f
6546	465	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-25 16:08:09.123488	t
6547	66	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-22 19:27:11.185944	t
6548	913	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-17 23:18:08.250051	t
6549	121	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-10-06 19:16:50.482363	t
6550	345	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-23 07:53:12.771657	t
6551	646	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-27 03:16:32.397747	t
6552	72	Học lập trình Python cơ bản	{travel,vietnam}	2025-10-06 12:49:48.42833	f
6553	442	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-04 22:17:41.134283	f
6554	616	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-09-29 06:14:05.369894	t
6555	325	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-05 05:52:01.026373	f
6556	688	Học lập trình Python cơ bản	{tech,python}	2025-10-31 04:07:59.121764	t
6557	350	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-30 12:40:41.399946	f
6558	718	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-22 19:13:42.70457	t
6559	870	Học lập trình Python cơ bản	{food,vietnam}	2025-10-26 05:29:19.60827	t
6560	365	Học lập trình Python cơ bản	{food,vietnam}	2025-10-17 01:33:53.658526	t
6561	200	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-09-30 03:03:12.846941	t
6562	186	Âm nhạc và cuộc sống	{food,vietnam}	2025-11-09 22:36:42.085305	t
6563	124	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-07 23:11:18.089745	t
6564	871	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-25 15:13:15.065093	t
6565	919	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-27 12:19:30.406694	t
6566	284	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-11-02 01:38:09.497696	t
6567	629	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-11 06:43:32.958053	t
6568	92	Thể thao và sức khỏe mỗi ngày	{general}	2025-11-09 22:38:47.182443	t
6569	166	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-11-02 01:01:28.432213	t
6570	557	Học lập trình Python cơ bản	{food,vietnam}	2025-10-06 03:57:54.403529	t
6571	103	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-10-14 20:17:47.127017	t
6572	327	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-11-10 22:29:10.019206	t
6573	287	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-21 23:48:38.502085	t
6574	757	Học lập trình Python cơ bản	{food,vietnam}	2025-11-10 08:12:16.533569	f
6575	835	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-29 05:39:51.772105	t
6576	617	Khám phá du lịch Việt Nam	{general}	2025-10-05 16:25:51.22963	t
6577	441	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-03 19:01:46.924014	t
6578	209	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-10-07 10:16:20.200508	t
6579	605	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-11 09:39:48.918689	f
6580	171	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-05 21:28:52.566353	t
6581	326	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-11 16:59:07.466663	t
6582	155	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-05 11:28:20.039031	t
6583	419	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-08 07:22:50.009719	t
6584	126	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-22 14:24:53.349814	t
6585	642	Học lập trình Python cơ bản	{review,coffee}	2025-10-13 03:10:09.900001	f
6586	897	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-08 10:29:14.045379	t
6587	564	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-22 20:17:13.204973	t
6588	705	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-17 01:29:43.981203	t
6589	341	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-10-11 16:38:23.424301	t
6590	702	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-07 10:56:00.296104	t
6591	185	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-03 15:29:21.515557	t
6592	376	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-08 11:21:51.821261	f
6593	2	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-25 07:02:25.532231	t
6594	990	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-03 20:25:48.931565	t
6595	865	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-04 12:00:47.065417	t
6596	507	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-23 11:05:20.432249	f
6597	300	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-21 21:15:12.568265	t
6598	905	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-28 10:52:13.899709	f
6599	643	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-24 18:18:26.272641	t
6600	355	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-20 12:19:16.883111	f
6601	550	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-09-28 22:28:55.699186	t
6602	311	Học lập trình Python cơ bản	{review,coffee}	2025-10-08 12:11:09.822224	t
6603	549	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-05 17:46:23.681867	t
6604	7	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-11 11:43:15.201201	t
6605	49	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-31 01:26:48.92386	t
6606	632	Học lập trình Python cơ bản	{ai,machinelearning}	2025-11-01 01:27:54.129981	t
6607	76	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-30 15:13:28.425284	f
6608	331	Học lập trình Python cơ bản	{tech,python}	2025-11-10 16:14:14.667503	t
6609	259	Học lập trình Python cơ bản	{food,vietnam}	2025-10-14 22:02:19.07151	f
6610	139	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-01 05:40:06.669202	t
6611	748	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-06 11:41:26.702656	t
6612	331	Khám phá du lịch Việt Nam	{tech,python}	2025-09-28 11:53:07.820756	t
6613	900	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-05 19:57:52.578845	t
6614	142	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-09-30 06:00:22.998435	t
6615	198	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-10-18 06:53:43.189685	t
6616	544	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-09 20:27:06.728877	t
6617	969	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-02 22:43:49.862365	t
6618	985	Học lập trình Python cơ bản	{ai,machinelearning}	2025-11-07 23:41:01.924823	t
6619	339	Thể thao và sức khỏe mỗi ngày	{general}	2025-11-02 00:52:37.744999	t
6620	916	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-08 15:47:49.335832	t
6621	986	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-04 17:37:22.712324	t
6622	116	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-11-07 20:42:52.437863	t
6623	3	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-24 00:00:48.674404	t
6624	189	Âm nhạc và cuộc sống	{tech,python}	2025-11-02 21:14:46.203222	f
6625	899	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-03 08:28:51.210374	t
6626	920	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-11-08 11:27:21.107278	t
6627	898	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-12 17:39:42.569711	t
6628	469	Giới thiệu công nghệ AI hiện đại	{general}	2025-10-09 21:59:38.251482	t
6629	721	Review các quán cà phê nổi tiếng	{general}	2025-11-10 10:04:51.430404	t
6630	190	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-07 06:15:01.664682	t
6631	955	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-06 00:41:23.635058	t
6632	765	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-11-06 06:25:40.99369	t
6633	259	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-09-29 21:15:00.909868	t
6634	642	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-23 10:38:06.168108	f
6635	657	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-24 02:02:20.928555	t
6636	829	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-13 20:28:37.660207	t
6637	350	Review các quán cà phê nổi tiếng	{tech,python}	2025-11-06 20:52:13.552766	f
6638	425	Âm nhạc và cuộc sống	{travel,vietnam}	2025-11-11 00:08:09.951747	f
6639	827	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-11-08 15:55:17.501589	t
6640	605	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-11 18:04:00.08066	t
6641	685	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-06 02:37:13.113619	t
6642	649	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-11-07 16:49:03.438072	t
6643	930	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-21 17:31:56.193983	t
6644	932	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-20 22:14:27.783839	t
6645	132	Âm nhạc và cuộc sống	{tech,python}	2025-10-12 19:42:45.329281	t
6646	679	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-06 06:06:41.75056	f
6647	577	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-29 22:44:39.56445	t
6648	417	Học lập trình Python cơ bản	{food,vietnam}	2025-10-23 01:35:30.048443	t
6649	217	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-29 15:59:34.639563	t
6650	301	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-11-05 23:32:15.429797	t
6651	601	Học lập trình Python cơ bản	{travel,vietnam}	2025-10-25 09:39:27.011134	t
6652	921	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-28 23:47:28.316253	t
6653	138	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-25 15:30:03.925381	t
6654	205	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-11-11 17:36:13.315381	t
6655	741	Khám phá du lịch Việt Nam	{food,vietnam}	2025-11-07 09:16:05.293574	t
6656	725	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-04 06:35:40.865876	t
6657	992	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-26 18:02:44.687063	t
6658	6	Học lập trình Python cơ bản	{general}	2025-11-04 12:42:15.677478	t
6659	238	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-23 19:38:43.073672	t
6660	177	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-10-25 04:46:35.839309	f
6661	892	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-11-02 19:49:25.382794	t
6662	195	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-10 23:43:05.700546	t
6663	270	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-01 01:42:25.741539	t
6664	503	Thể thao và sức khỏe mỗi ngày	{general}	2025-11-07 04:21:39.989212	t
6665	238	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-17 04:26:48.434062	t
6666	719	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-14 09:22:58.557404	f
6667	341	Âm nhạc và cuộc sống	{tech,python}	2025-10-05 05:10:30.009638	t
6668	549	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-19 18:53:12.620461	t
6669	33	Khám phá du lịch Việt Nam	{tech,python}	2025-11-07 16:12:45.08489	t
6670	164	Review các quán cà phê nổi tiếng	{tech,python}	2025-11-01 07:35:37.298117	t
6671	57	Review các quán cà phê nổi tiếng	{review,coffee}	2025-11-11 06:49:40.255124	t
6672	982	Review các quán cà phê nổi tiếng	{general}	2025-11-03 07:33:38.332731	t
6673	303	Học lập trình Python cơ bản	{review,coffee}	2025-10-19 10:34:51.593363	t
6674	996	Âm nhạc và cuộc sống	{general}	2025-10-03 23:05:23.704238	t
6675	523	Học lập trình Python cơ bản	{food,vietnam}	2025-10-10 12:19:54.302634	t
6676	544	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-27 18:27:54.796744	t
6677	52	Âm nhạc và cuộc sống	{food,vietnam}	2025-09-28 19:13:42.27221	t
6678	110	Review các quán cà phê nổi tiếng	{general}	2025-10-14 14:09:35.043121	t
6679	365	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-06 00:09:45.347825	t
6680	91	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-11-01 07:19:28.263212	t
6681	719	Review các quán cà phê nổi tiếng	{tech,python}	2025-11-08 00:47:27.818411	t
6682	484	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-11-05 01:37:08.344908	t
6683	779	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-24 00:40:27.145633	t
6684	177	Khám phá du lịch Việt Nam	{tech,python}	2025-10-05 12:59:19.376082	f
6685	145	Khám phá du lịch Việt Nam	{general}	2025-10-14 17:58:25.78217	t
6686	804	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-11-03 15:26:29.56804	f
6687	488	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-20 19:15:47.158176	t
6688	761	Âm nhạc và cuộc sống	{travel,vietnam}	2025-10-16 04:03:55.289418	t
6689	487	Học lập trình Python cơ bản	{tech,python}	2025-10-21 15:30:12.670676	t
6690	454	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-29 11:35:23.141458	t
6691	127	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-08 03:07:41.066803	t
6692	566	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-11-04 01:03:49.717117	f
6693	436	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-26 23:20:11.439091	t
6694	14	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-20 09:22:00.905086	t
6695	90	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-31 23:48:39.119642	t
6696	384	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-14 14:37:15.367214	t
6697	840	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-27 12:55:53.624193	t
6698	664	Âm nhạc và cuộc sống	{tech,python}	2025-10-29 11:04:10.351954	t
6699	935	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-29 17:25:56.821876	f
6700	698	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-10 03:07:57.258607	t
6701	786	Âm nhạc và cuộc sống	{tech,python}	2025-11-04 04:53:01.798796	t
6702	642	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-09-28 19:16:15.921854	t
6703	623	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-29 13:11:57.045343	t
6704	733	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-14 23:25:12.010777	t
6705	869	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-17 08:27:16.188254	t
6706	660	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-05 11:59:20.98083	t
6707	348	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-23 04:07:04.741615	t
6708	35	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-27 13:06:30.585379	f
6709	852	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-20 00:17:05.076691	f
6710	82	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-09 07:09:17.799249	t
6711	15	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-09-29 11:31:49.264661	t
6712	475	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-22 07:13:12.497703	t
6713	55	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-09-29 08:52:51.357856	t
6714	267	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-10-21 01:32:07.511698	t
6715	404	Review các quán cà phê nổi tiếng	{general}	2025-10-17 03:18:37.981746	t
6716	488	Review các quán cà phê nổi tiếng	{general}	2025-10-23 15:11:27.657482	f
6717	424	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-10-28 04:26:06.276009	t
6718	48	Review các quán cà phê nổi tiếng	{tech,python}	2025-09-28 16:13:01.74626	t
6719	56	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-14 06:00:13.403823	t
6720	985	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-06 10:09:00.257453	t
6721	291	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-18 02:37:09.622796	t
6722	938	Âm nhạc và cuộc sống	{review,coffee}	2025-10-19 11:59:11.119816	t
6723	428	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-22 11:26:35.034212	t
6724	226	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-04 05:59:47.257721	f
6725	499	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-12 05:11:18.634835	t
6726	332	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-22 07:40:10.490816	t
6727	661	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-01 02:30:03.693111	t
6728	787	Học lập trình Python cơ bản	{ai,machinelearning}	2025-11-12 06:48:57.343879	t
6729	14	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-09-29 08:29:59.189146	f
6730	17	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-16 15:22:34.577735	t
6731	968	Học lập trình Python cơ bản	{review,coffee}	2025-11-08 16:43:56.306221	t
6732	531	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-11-01 03:32:44.348875	t
6733	855	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-11 10:15:30.22782	t
6734	773	Review các quán cà phê nổi tiếng	{review,coffee}	2025-11-11 18:45:13.575565	t
6735	623	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-28 06:35:07.961704	t
6736	859	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-11-07 00:45:06.690149	t
6737	75	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-10-25 12:31:04.44069	t
6738	853	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-20 07:50:23.705274	t
6739	519	Review các quán cà phê nổi tiếng	{general}	2025-09-28 21:14:46.191465	t
6740	30	Âm nhạc và cuộc sống	{review,coffee}	2025-10-05 21:01:21.192426	t
6741	178	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-18 16:07:52.004551	t
6742	717	Review các quán cà phê nổi tiếng	{general}	2025-10-14 04:26:02.510897	t
6743	596	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-31 09:13:09.099282	t
6744	402	Âm nhạc và cuộc sống	{review,coffee}	2025-10-26 10:43:16.625872	t
6745	887	Âm nhạc và cuộc sống	{tech,python}	2025-09-29 13:38:44.18556	t
6746	342	Học lập trình Python cơ bản	{tech,python}	2025-11-06 15:17:53.187447	t
6747	217	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-22 12:01:06.103246	t
6748	894	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-24 05:22:23.612174	f
6749	732	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-10-07 13:44:38.11725	t
6750	477	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-11-01 15:58:05.329986	t
6751	70	Thể thao và sức khỏe mỗi ngày	{general}	2025-09-30 23:52:27.249789	f
6752	518	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-09-29 23:51:53.514174	t
6753	761	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-22 03:02:31.987692	t
6754	249	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-11-02 07:17:12.339772	t
6755	953	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-20 12:51:43.717747	t
6756	520	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-11-10 16:14:51.567876	t
6757	313	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-08 14:32:33.004666	t
6758	405	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-19 18:21:35.71729	t
6759	638	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-24 18:38:24.143129	t
6760	810	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-23 01:48:48.821194	t
6761	880	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-10-27 22:37:00.916658	t
6762	148	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-31 15:22:44.040762	t
6763	947	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-07 09:10:46.344148	t
6764	915	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-05 17:26:53.009613	t
6765	209	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-09-29 11:30:03.185476	f
6766	107	Học lập trình Python cơ bản	{tech,python}	2025-10-03 03:59:42.274312	t
6767	837	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-21 06:50:42.692301	t
6768	792	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-20 08:27:55.964881	t
6769	15	Học lập trình Python cơ bản	{review,coffee}	2025-10-13 10:32:58.475116	t
6770	577	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-09-28 14:17:05.763917	f
6771	755	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-11-04 10:30:09.534708	t
6772	300	Âm nhạc và cuộc sống	{general}	2025-10-15 05:33:52.842234	f
6773	305	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-07 05:56:40.146409	t
6774	874	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-20 04:09:55.134292	f
6775	882	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-30 12:31:43.357811	f
6776	510	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-24 07:39:20.468634	f
6777	937	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-07 01:01:15.291421	t
6778	303	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-31 09:07:20.707535	t
6779	644	Review các quán cà phê nổi tiếng	{tech,python}	2025-11-05 00:13:19.734099	f
6780	830	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-11 06:10:43.978544	t
6781	672	Giới thiệu công nghệ AI hiện đại	{general}	2025-10-24 02:25:27.83312	t
6782	543	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-19 16:02:23.915711	t
6783	175	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-09 00:13:56.286015	t
6784	476	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-22 22:38:47.991514	t
6785	583	Giới thiệu công nghệ AI hiện đại	{general}	2025-11-02 15:14:39.471214	t
6786	887	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-11-05 04:14:22.658265	t
6787	660	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-26 00:16:45.885253	t
6788	187	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-21 02:53:39.493622	t
6789	203	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-11 20:17:17.598897	t
6790	830	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-19 11:08:51.50985	t
6791	396	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-11-11 23:00:34.312096	f
6792	602	Học lập trình Python cơ bản	{food,vietnam}	2025-10-06 00:16:30.990766	t
6793	41	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-10-21 16:49:59.481058	t
6794	291	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-03 18:14:00.014655	t
6795	12	Học lập trình Python cơ bản	{travel,vietnam}	2025-09-30 06:13:15.206802	t
6796	439	Review các quán cà phê nổi tiếng	{general}	2025-10-28 11:21:17.4628	t
6797	107	Học lập trình Python cơ bản	{review,coffee}	2025-10-04 09:06:37.796208	f
6798	271	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-09-28 22:38:58.581329	t
6799	18	Review các quán cà phê nổi tiếng	{review,coffee}	2025-11-05 11:24:11.075975	t
6800	705	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-02 14:34:21.646982	t
6801	32	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-21 23:24:52.466589	t
6802	181	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-10-27 09:43:50.406963	t
6803	157	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-07 21:21:05.977359	t
6804	108	Học lập trình Python cơ bản	{review,coffee}	2025-10-08 14:54:29.348093	t
6805	924	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-09 17:24:06.013585	f
6806	157	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-20 05:13:44.081283	t
6807	693	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-12 04:39:47.275923	t
6808	590	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-03 00:36:41.403042	t
6809	879	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-10 03:14:55.176468	t
6810	97	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-13 14:36:35.012226	t
6811	776	Âm nhạc và cuộc sống	{review,coffee}	2025-10-13 16:59:09.28128	t
6812	324	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-07 23:00:34.093557	t
6813	916	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-28 07:44:44.496432	t
6814	656	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-02 11:58:48.076391	t
6815	925	Học lập trình Python cơ bản	{review,coffee}	2025-09-30 05:28:07.250668	t
6816	94	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-12 21:55:34.27647	t
6817	890	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-16 17:36:19.340939	f
6818	421	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-23 22:28:13.100912	t
6819	331	Học lập trình Python cơ bản	{general}	2025-10-13 15:57:54.023467	f
6820	865	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-07 16:14:51.536449	t
6821	944	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-11-10 09:35:09.918431	f
6822	387	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-08 17:01:55.779591	t
6823	700	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-04 18:56:44.358132	t
6824	732	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-28 08:51:46.464882	t
6825	912	Âm nhạc và cuộc sống	{travel,vietnam}	2025-10-13 17:50:25.756895	t
6826	293	Khám phá du lịch Việt Nam	{tech,python}	2025-10-29 01:18:38.339969	f
6827	920	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-06 23:04:39.650219	t
6828	157	Học lập trình Python cơ bản	{food,vietnam}	2025-09-30 03:01:01.708981	f
6829	559	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-22 04:23:22.549745	t
6830	55	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-23 07:04:23.376633	f
6831	904	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-31 22:18:16.442799	t
6832	863	Khám phá du lịch Việt Nam	{general}	2025-11-10 04:33:52.351648	t
6833	844	Học lập trình Python cơ bản	{travel,vietnam}	2025-10-02 05:50:57.267344	t
6834	324	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-10 14:41:27.897099	f
6835	513	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-26 02:37:23.243542	t
6836	150	Học lập trình Python cơ bản	{tech,python}	2025-11-02 00:24:39.651964	t
6837	317	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-10 15:42:13.118594	t
6838	925	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-10-16 13:29:55.018292	t
6839	87	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-04 16:47:27.914166	t
6840	406	Học lập trình Python cơ bản	{review,coffee}	2025-10-28 10:52:11.497546	t
6841	116	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-06 09:27:49.342799	t
6842	959	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-13 12:09:29.97487	t
6843	500	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-09-28 17:03:34.568763	t
6844	718	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-11-02 03:58:21.947269	f
6845	749	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-31 15:56:46.578706	t
6846	178	Âm nhạc và cuộc sống	{food,vietnam}	2025-11-07 03:12:37.949719	t
6847	968	Âm nhạc và cuộc sống	{tech,python}	2025-10-09 12:10:00.464542	t
6848	930	Học lập trình Python cơ bản	{general}	2025-11-02 15:22:15.61734	t
6849	286	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-04 21:12:15.974321	t
6850	104	Âm nhạc và cuộc sống	{tech,python}	2025-09-30 09:23:07.125154	f
6851	878	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-16 11:14:38.265353	f
6852	341	Âm nhạc và cuộc sống	{tech,python}	2025-11-06 05:38:07.363861	t
6853	99	Học lập trình Python cơ bản	{food,vietnam}	2025-10-08 07:09:07.3324	t
6854	520	Âm nhạc và cuộc sống	{travel,vietnam}	2025-10-03 11:46:42.537413	t
6855	10	Âm nhạc và cuộc sống	{review,coffee}	2025-10-01 17:20:53.188348	t
6856	583	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-11-11 10:43:11.325538	f
6857	927	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-19 18:03:05.546772	t
6858	718	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-31 21:00:06.283775	t
6859	263	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-27 06:42:33.552034	t
6860	176	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-29 02:10:28.603204	t
6861	466	Học lập trình Python cơ bản	{tech,python}	2025-10-20 05:45:07.987442	t
6862	691	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-15 01:17:53.261618	t
6863	978	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-02 08:10:07.25243	t
6864	201	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-27 06:19:31.491059	t
6865	957	Giới thiệu công nghệ AI hiện đại	{general}	2025-10-01 10:55:57.019427	t
6866	264	Âm nhạc và cuộc sống	{tech,python}	2025-10-05 18:47:25.687876	t
6867	471	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-02 23:05:29.647338	t
6868	753	Review các quán cà phê nổi tiếng	{general}	2025-10-19 21:38:03.273166	f
6869	889	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-03 14:51:19.778836	t
6870	461	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-11-06 21:05:11.183477	t
6871	579	Học lập trình Python cơ bản	{travel,vietnam}	2025-10-03 09:52:23.845336	t
6872	500	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-10-10 15:15:16.212469	t
6873	320	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-11-10 00:03:46.585447	t
6874	771	Thể thao và sức khỏe mỗi ngày	{general}	2025-11-08 14:58:29.066601	f
6875	36	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-22 05:00:08.179926	f
6876	541	Review các quán cà phê nổi tiếng	{general}	2025-10-03 07:58:16.115933	t
6877	973	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-20 15:48:03.659748	t
6878	151	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-06 19:11:38.8601	t
6879	115	Khám phá du lịch Việt Nam	{food,vietnam}	2025-10-05 10:04:34.968992	t
6880	665	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-11-04 11:59:31.7263	f
6881	768	Khám phá du lịch Việt Nam	{tech,python}	2025-11-07 17:41:07.626524	t
6882	747	Review các quán cà phê nổi tiếng	{general}	2025-10-27 16:05:09.399792	t
6883	953	Học lập trình Python cơ bản	{review,coffee}	2025-10-31 20:41:21.09361	t
6884	105	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-09-30 01:59:44.518366	f
6885	977	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-08 23:03:13.466332	t
6886	699	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-14 12:23:35.397782	t
6887	912	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-07 20:44:31.44803	t
6888	114	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-26 07:38:37.820257	t
6889	280	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-10-22 11:18:13.262199	t
6890	325	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-30 20:56:41.13123	f
6891	638	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-17 17:00:15.088278	t
6892	273	Giới thiệu công nghệ AI hiện đại	{general}	2025-10-14 18:50:42.575878	t
6893	418	Học lập trình Python cơ bản	{food,vietnam}	2025-11-04 19:22:03.835636	t
6894	575	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-13 00:49:04.790261	t
6895	848	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-05 10:47:43.640202	t
6896	586	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-29 18:43:46.103945	t
6897	735	Âm nhạc và cuộc sống	{general}	2025-11-04 12:48:59.519555	t
6898	274	Review các quán cà phê nổi tiếng	{tech,python}	2025-11-10 23:35:01.448144	t
6899	710	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-03 11:38:39.835214	t
6900	478	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-20 21:49:06.222067	f
6901	546	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-27 12:44:01.410281	t
6902	288	Khám phá du lịch Việt Nam	{tech,python}	2025-10-04 02:37:23.947075	t
6903	99	Khám phá du lịch Việt Nam	{food,vietnam}	2025-10-07 22:37:09.505018	f
6904	766	Học lập trình Python cơ bản	{general}	2025-10-02 08:38:23.79056	t
6905	903	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-09 07:58:17.039065	t
6906	804	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-03 11:45:15.095814	t
6907	964	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-09-29 14:16:15.469056	t
6908	934	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-17 21:10:13.107641	f
6909	377	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-15 13:50:15.733237	t
6910	353	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-29 20:25:48.607606	t
6911	252	Âm nhạc và cuộc sống	{tech,python}	2025-10-18 06:40:40.856315	t
6912	320	Học lập trình Python cơ bản	{food,vietnam}	2025-11-05 09:20:10.924351	t
6913	86	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-11-08 11:49:53.436985	t
6914	179	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-11-07 12:06:38.603927	f
6915	216	Âm nhạc và cuộc sống	{general}	2025-10-29 03:39:22.070738	f
6916	716	Review các quán cà phê nổi tiếng	{tech,python}	2025-11-10 19:29:37.467418	t
6917	796	Học lập trình Python cơ bản	{food,vietnam}	2025-10-28 23:43:26.378259	f
6918	720	Âm nhạc và cuộc sống	{tech,python}	2025-10-06 00:14:14.393393	t
6919	487	Âm nhạc và cuộc sống	{review,coffee}	2025-10-06 15:22:49.769874	t
6920	900	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-17 20:52:59.028478	t
6921	27	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-07 23:53:09.947296	t
6922	287	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-06 19:58:52.026561	t
6923	280	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-25 18:55:05.173244	t
6924	559	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-17 15:20:25.006158	t
6925	172	Học lập trình Python cơ bản	{review,coffee}	2025-10-16 18:01:38.741324	t
6926	654	Học lập trình Python cơ bản	{travel,vietnam}	2025-11-11 01:28:38.413223	t
6927	679	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-11-01 16:04:01.83218	f
6928	60	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-26 08:59:47.490245	t
6929	479	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-07 09:53:57.587576	t
6930	959	Khám phá du lịch Việt Nam	{food,vietnam}	2025-11-02 04:10:28.28619	f
6931	219	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-10-16 22:22:34.334976	f
6932	98	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-09 22:03:51.977626	t
6933	474	Khám phá du lịch Việt Nam	{food,vietnam}	2025-11-08 09:34:13.619204	t
6934	400	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-11 00:24:07.72841	t
6935	89	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-17 08:25:42.3766	t
6936	65	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-07 07:11:01.943168	t
6937	499	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-13 09:52:32.233693	t
6938	472	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-17 14:56:08.129879	t
6939	597	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-18 17:15:59.638228	t
6940	744	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-30 11:49:40.376268	t
6941	135	Âm nhạc và cuộc sống	{tech,python}	2025-10-08 13:29:55.196665	t
6942	515	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-22 13:53:58.354693	t
6943	583	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-05 09:59:27.816424	f
6944	214	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-25 04:00:25.212042	t
6945	891	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-26 12:30:29.981713	t
6946	950	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-29 01:06:01.109424	t
6947	632	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-10-13 10:57:50.004007	t
6948	751	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-15 07:15:43.949856	t
6949	392	Học lập trình Python cơ bản	{ai,machinelearning}	2025-11-02 13:41:42.890527	t
6950	721	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-12 10:04:22.643916	t
6951	486	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-03 23:35:58.078241	t
6952	523	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-10-19 07:25:08.698166	t
6953	182	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-08 08:50:34.231662	t
6954	654	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-22 14:34:27.37607	t
6955	294	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-10-07 17:30:09.241944	t
6956	368	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-02 20:28:23.034963	f
6957	357	Review các quán cà phê nổi tiếng	{general}	2025-09-29 09:44:54.338375	t
6958	973	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-01 05:56:37.139247	t
6959	497	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-26 19:09:17.225742	t
6960	4	Review các quán cà phê nổi tiếng	{review,coffee}	2025-11-11 04:55:28.776088	f
6961	649	Học lập trình Python cơ bản	{food,vietnam}	2025-10-04 09:09:05.855908	f
6962	692	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-09-30 08:03:20.232551	f
6963	522	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-09-30 08:37:52.387368	t
6964	288	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-09 03:59:30.367805	t
6965	589	Khám phá du lịch Việt Nam	{food,vietnam}	2025-10-16 22:39:40.693964	t
6966	927	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-22 05:44:59.521171	t
6967	68	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-26 12:26:39.025813	t
6968	419	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-22 04:39:07.806387	f
6969	398	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-06 19:23:31.569937	t
6970	723	Học lập trình Python cơ bản	{general}	2025-10-01 20:46:19.982178	f
6971	701	Học lập trình Python cơ bản	{review,coffee}	2025-11-11 01:20:28.437692	f
6972	693	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-27 14:44:47.270932	t
6973	898	Khám phá du lịch Việt Nam	{tech,python}	2025-10-08 23:59:43.345322	t
6974	772	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-08 09:04:53.861137	f
6975	497	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-01 14:07:20.695823	f
6976	229	Khám phá du lịch Việt Nam	{food,vietnam}	2025-10-12 10:18:09.789952	t
6977	579	Học lập trình Python cơ bản	{ai,machinelearning}	2025-09-29 03:31:04.901043	t
6978	409	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-03 23:10:26.5155	t
6979	935	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-06 22:16:03.484825	t
6980	243	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-04 10:15:44.819055	t
6981	774	Học lập trình Python cơ bản	{tech,python}	2025-10-09 01:20:54.849396	f
6982	204	Học lập trình Python cơ bản	{travel,vietnam}	2025-10-14 13:49:44.55179	t
6983	434	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-27 06:04:58.92521	t
6984	701	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-13 12:40:21.613434	t
6985	635	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-31 04:28:44.341582	t
6986	733	Âm nhạc và cuộc sống	{review,coffee}	2025-10-17 10:23:50.870615	t
6987	332	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-16 23:31:29.773372	t
6988	107	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-14 00:33:10.503058	t
6989	435	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-26 06:10:37.94337	f
6990	453	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-09 23:33:05.281636	f
6991	171	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-11-07 02:20:38.781756	t
6992	266	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-10 16:22:13.457059	t
6993	715	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-09-30 07:54:47.742273	t
6994	808	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-05 17:59:53.195721	t
6995	860	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-15 18:49:39.857318	t
6996	115	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-31 12:05:25.862385	f
6997	881	Review các quán cà phê nổi tiếng	{general}	2025-10-16 08:20:33.331206	t
6998	357	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-10-14 16:32:49.046261	f
6999	63	Khám phá du lịch Việt Nam	{general}	2025-11-10 15:44:44.681027	t
7000	702	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-31 08:39:37.371813	t
7001	248	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-11-10 23:20:00.569967	t
7002	342	Học lập trình Python cơ bản	{general}	2025-10-03 16:21:49.405723	f
7003	147	Âm nhạc và cuộc sống	{general}	2025-09-29 17:13:47.838751	f
7004	323	Âm nhạc và cuộc sống	{tech,python}	2025-10-07 01:53:47.705405	t
7005	691	Âm nhạc và cuộc sống	{review,coffee}	2025-10-14 00:09:27.99179	t
7006	343	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-24 03:55:04.398024	t
7007	358	Học lập trình Python cơ bản	{ai,machinelearning}	2025-11-12 02:26:02.999972	t
7008	537	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-02 21:16:54.11194	t
7009	77	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-11-03 20:56:42.459625	t
7010	783	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-24 18:58:34.777277	t
7011	185	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-26 03:15:26.079666	t
7012	818	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-23 14:36:29.946377	t
7013	193	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-24 05:42:36.025587	f
7014	328	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-11 22:19:38.185249	t
7015	421	Giới thiệu công nghệ AI hiện đại	{general}	2025-10-16 20:28:26.403265	t
7016	874	Học lập trình Python cơ bản	{tech,python}	2025-10-03 15:51:21.540491	t
7017	752	Khám phá du lịch Việt Nam	{food,vietnam}	2025-10-14 01:14:58.975967	f
7018	716	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-06 10:35:50.898143	f
7019	591	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-10 16:03:49.268338	t
7020	823	Học lập trình Python cơ bản	{tech,python}	2025-11-01 23:43:31.504854	t
7021	204	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-07 20:10:18.577511	t
7022	547	Âm nhạc và cuộc sống	{tech,python}	2025-11-01 00:43:44.608256	f
7023	22	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-23 13:58:15.100178	t
7024	250	Âm nhạc và cuộc sống	{tech,python}	2025-10-13 10:47:06.473072	t
7025	861	Khám phá du lịch Việt Nam	{review,coffee}	2025-11-09 12:36:35.726901	f
7026	531	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-24 21:36:12.274457	t
7027	557	Âm nhạc và cuộc sống	{tech,python}	2025-10-13 09:01:47.368347	t
7028	148	Âm nhạc và cuộc sống	{tech,python}	2025-10-06 03:28:42.017834	t
7029	286	Học lập trình Python cơ bản	{tech,python}	2025-10-21 02:00:01.553883	t
7030	519	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-16 15:00:35.677887	f
7031	893	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-11-02 09:09:54.874705	t
7032	593	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-11 22:25:00.339875	t
7033	234	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-02 05:28:53.09123	f
7034	528	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-07 08:15:16.374529	t
7035	882	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-29 13:00:57.635467	t
7036	386	Khám phá du lịch Việt Nam	{general}	2025-10-26 21:46:56.26493	f
7037	151	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-10-03 02:52:45.509205	t
7038	184	Âm nhạc và cuộc sống	{tech,python}	2025-10-17 23:48:42.139697	t
7039	618	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-27 03:19:51.703735	t
7040	745	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-16 18:21:38.356628	t
7041	914	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-29 16:22:20.338384	t
7042	577	Giới thiệu công nghệ AI hiện đại	{general}	2025-10-26 04:47:13.61882	t
7043	342	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-12 03:18:41.524233	t
7044	934	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-30 00:53:27.688833	t
7045	217	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-10 06:18:35.991772	t
7046	339	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-02 05:18:35.44985	t
7047	754	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-11 12:52:23.470978	t
7048	510	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-10-28 07:25:25.246895	f
7049	0	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-11-04 14:39:07.964732	t
7050	406	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-22 08:42:48.118534	f
7051	261	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-06 13:16:51.232447	t
7052	727	Giới thiệu công nghệ AI hiện đại	{general}	2025-10-17 01:18:04.332287	t
7053	458	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-01 13:04:56.359263	t
7054	573	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-22 04:29:21.422912	t
7055	131	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-04 10:48:24.124614	t
7056	341	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-11-01 18:49:11.308811	t
7057	217	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-03 01:01:42.4061	t
7058	391	Học lập trình Python cơ bản	{food,vietnam}	2025-11-05 00:53:34.845374	t
7059	157	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-03 09:11:03.710207	f
7060	363	Học lập trình Python cơ bản	{tech,python}	2025-11-12 02:47:30.084877	t
7061	452	Học lập trình Python cơ bản	{food,vietnam}	2025-10-22 10:41:39.676727	f
7062	628	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-10-23 10:41:06.488947	t
7063	332	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-03 11:25:12.204907	f
7064	400	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-16 18:22:45.747659	f
7065	595	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-10 14:12:57.575375	t
7066	414	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-11-04 13:27:29.301347	t
7067	955	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-10-28 23:51:53.821689	t
7068	640	Âm nhạc và cuộc sống	{tech,python}	2025-10-19 22:03:21.855746	t
7069	914	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-23 22:46:47.563714	t
7070	780	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-19 14:59:17.47082	f
7071	160	Học lập trình Python cơ bản	{review,coffee}	2025-11-10 03:05:36.760258	t
7072	474	Học lập trình Python cơ bản	{travel,vietnam}	2025-10-11 19:59:28.157311	t
7073	310	Review các quán cà phê nổi tiếng	{tech,python}	2025-11-09 15:25:18.253308	t
7074	363	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-11-07 20:09:03.331825	t
7075	226	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-08 13:24:10.262371	f
7076	908	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-26 18:09:28.22053	f
7077	140	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-06 00:36:56.957481	f
7078	484	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-29 07:45:37.969417	t
7079	395	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-04 02:00:01.498286	f
7080	986	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-11-12 05:36:14.233747	t
7081	945	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-17 03:39:46.325104	t
7082	491	Âm nhạc và cuộc sống	{tech,python}	2025-11-04 21:46:42.327321	t
7083	356	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-02 23:28:15.815852	t
7084	526	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-09 06:02:44.948246	t
7085	759	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-30 11:59:40.780701	t
7086	515	Khám phá du lịch Việt Nam	{tech,python}	2025-10-07 10:51:49.531509	t
7087	636	Khám phá du lịch Việt Nam	{general}	2025-10-24 18:30:32.802759	f
7088	692	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-09-30 12:08:50.163626	t
7089	583	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-11-11 02:35:50.113764	t
7090	562	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-10-13 18:14:21.903952	t
7091	699	Học lập trình Python cơ bản	{general}	2025-11-07 16:06:20.774184	t
7092	985	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-11 09:55:53.318006	t
7093	545	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-01 05:05:46.219311	t
7094	858	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-11-01 10:06:31.594274	t
7095	786	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-11-02 11:33:39.693507	t
7096	60	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-30 03:29:33.558352	t
7097	753	Âm nhạc và cuộc sống	{tech,python}	2025-10-05 03:01:59.067263	t
7098	583	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-12 18:17:22.653096	t
7099	636	Review các quán cà phê nổi tiếng	{review,coffee}	2025-11-12 01:49:57.588528	f
7100	361	Âm nhạc và cuộc sống	{travel,vietnam}	2025-10-05 16:25:17.420816	t
7101	565	Khám phá du lịch Việt Nam	{general}	2025-10-14 02:06:24.540947	f
7102	735	Học lập trình Python cơ bản	{review,coffee}	2025-10-20 03:11:31.502516	t
7103	283	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-11 10:35:03.733552	t
7104	206	Khám phá du lịch Việt Nam	{food,vietnam}	2025-09-29 02:33:24.919671	t
7105	175	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-02 10:14:24.892651	t
7106	912	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-10-31 11:18:43.364879	t
7107	721	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-04 12:48:07.813649	t
7108	79	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-09 19:34:18.130049	t
7109	592	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-22 03:01:08.214366	t
7110	497	Học lập trình Python cơ bản	{ai,machinelearning}	2025-11-05 20:58:44.422616	t
7111	997	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-19 02:56:00.604311	t
7112	749	Âm nhạc và cuộc sống	{review,coffee}	2025-10-24 12:12:38.000833	t
7113	277	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-10-02 01:15:24.541586	t
7114	21	Giới thiệu công nghệ AI hiện đại	{general}	2025-10-24 14:23:36.520353	t
7115	139	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-15 01:10:17.026188	f
7116	332	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-17 20:34:58.14388	t
7117	348	Âm nhạc và cuộc sống	{travel,vietnam}	2025-11-10 06:56:24.288692	t
7118	566	Âm nhạc và cuộc sống	{general}	2025-10-28 00:22:14.018623	t
7119	480	Học lập trình Python cơ bản	{review,coffee}	2025-10-14 10:28:15.267498	t
7120	808	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-22 06:03:47.711468	t
7121	943	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-17 11:50:07.952853	t
7122	292	Học lập trình Python cơ bản	{review,coffee}	2025-10-25 00:44:17.295947	f
7123	558	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-11-09 00:26:29.22161	t
7124	496	Âm nhạc và cuộc sống	{travel,vietnam}	2025-10-15 00:33:47.473147	t
7125	847	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-28 22:19:29.069843	t
7126	622	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-12 13:50:01.761185	t
7127	675	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-21 23:33:18.981392	t
7128	466	Học lập trình Python cơ bản	{food,vietnam}	2025-11-10 16:42:48.84985	t
7129	207	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-30 13:42:48.178958	t
7130	571	Khám phá du lịch Việt Nam	{general}	2025-10-24 05:22:16.275036	t
7131	0	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-12 18:39:54.431247	f
7132	734	Học lập trình Python cơ bản	{tech,python}	2025-11-07 02:47:44.417527	t
7133	52	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-10-07 09:16:11.749527	t
7134	535	Review các quán cà phê nổi tiếng	{review,coffee}	2025-11-04 04:19:56.061845	t
7135	123	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-08 22:14:13.937029	t
7136	986	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-28 13:46:38.094072	t
7137	472	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-19 08:52:58.263044	t
7138	309	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-08 23:57:08.108506	t
7139	700	Học lập trình Python cơ bản	{food,vietnam}	2025-11-10 13:51:34.334059	t
7140	211	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-16 13:16:39.409766	t
7141	994	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-02 18:37:47.55389	t
7142	637	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-08 06:40:57.08154	t
7143	201	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-07 03:06:01.209863	t
7144	860	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-11-02 09:15:24.250471	t
7145	347	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-21 22:52:19.048034	t
7146	595	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-10-21 15:18:44.781983	t
7147	425	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-19 10:42:17.163446	t
7148	961	Khám phá du lịch Việt Nam	{travel,vietnam}	2025-11-08 16:02:50.867731	t
7149	62	Âm nhạc và cuộc sống	{travel,vietnam}	2025-10-08 22:01:11.639523	t
7150	328	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-26 01:11:59.013847	t
7151	815	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-02 17:31:34.634856	t
7152	782	Học lập trình Python cơ bản	{travel,vietnam}	2025-10-23 12:08:13.188666	t
7153	63	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-03 14:16:14.31975	t
7154	421	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-20 22:10:47.468516	t
7155	548	Âm nhạc và cuộc sống	{general}	2025-10-10 10:50:11.266025	t
7156	983	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-24 01:06:56.437952	t
7157	639	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-11 18:41:53.744109	t
7158	829	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-19 17:10:01.023207	t
7159	881	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-11-11 13:20:35.05247	t
7160	842	Âm nhạc và cuộc sống	{travel,vietnam}	2025-10-26 16:46:23.548294	t
7161	584	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-01 08:01:19.154896	t
7162	86	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-11-03 10:09:54.171977	t
7163	30	Âm nhạc và cuộc sống	{tech,python}	2025-11-02 09:28:03.459687	t
7164	892	Khám phá du lịch Việt Nam	{food,vietnam}	2025-10-17 05:17:26.516246	t
7165	47	Khám phá du lịch Việt Nam	{food,vietnam}	2025-10-12 20:13:05.792366	t
7166	654	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-31 09:42:57.345261	t
7167	570	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-29 01:13:46.903858	t
7168	728	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-09-30 23:54:07.862272	t
7169	913	Âm nhạc và cuộc sống	{general}	2025-11-07 00:36:45.034026	f
7170	94	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-29 09:10:37.040266	t
7171	582	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-02 07:53:46.166393	t
7172	15	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-09 19:45:42.103207	t
7173	767	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-26 17:08:13.504071	t
7174	373	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-30 13:02:18.815518	t
7175	509	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-21 21:07:36.861254	t
7176	517	Âm nhạc và cuộc sống	{general}	2025-10-13 05:50:24.781048	t
7177	476	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-12 23:55:52.275477	t
7178	931	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-11 08:10:09.760769	t
7179	445	Học lập trình Python cơ bản	{review,coffee}	2025-09-29 00:14:01.369482	f
7180	444	Âm nhạc và cuộc sống	{review,coffee}	2025-11-05 14:01:51.867915	t
7181	43	Học lập trình Python cơ bản	{review,coffee}	2025-10-03 01:13:28.497734	t
7182	298	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-11-06 02:03:04.696838	t
7183	836	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-09-29 21:45:34.549996	t
7184	943	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-11-11 12:03:37.851598	t
7185	271	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-12 09:55:42.890928	f
7186	134	Học lập trình Python cơ bản	{ai,machinelearning}	2025-11-04 18:03:52.431049	t
7187	948	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-09-29 10:57:21.872781	t
7188	768	Học lập trình Python cơ bản	{food,vietnam}	2025-11-05 17:04:55.250806	t
7189	541	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-19 00:04:19.005718	t
7190	424	Học lập trình Python cơ bản	{travel,vietnam}	2025-10-21 12:11:51.041966	t
7191	810	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-02 19:05:31.481747	t
7192	550	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-10 01:05:32.299381	t
7193	131	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-09-30 13:39:56.926918	t
7194	768	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-09 08:50:04.361232	t
7195	488	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-31 18:41:57.995303	t
7196	707	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-27 08:18:33.174496	t
7197	283	Khám phá du lịch Việt Nam	{food,vietnam}	2025-10-18 02:43:39.144238	t
7198	721	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-14 09:43:41.305711	t
7199	664	Học lập trình Python cơ bản	{tech,python}	2025-10-26 01:56:11.367121	t
7200	411	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-11-08 12:17:56.02471	t
7201	456	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-06 14:11:22.567006	t
7202	541	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-31 08:22:20.802982	t
7203	165	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-10-13 20:44:53.362419	t
7204	392	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-03 06:30:12.867038	t
7205	442	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-13 23:57:45.758383	t
7206	520	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-25 02:47:46.709707	t
7207	845	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-03 17:35:54.783949	t
7208	186	Review các quán cà phê nổi tiếng	{general}	2025-10-15 16:48:38.429895	t
7209	592	Khám phá du lịch Việt Nam	{food,vietnam}	2025-10-05 22:03:18.98406	t
7210	617	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-05 08:46:41.089181	t
7211	156	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-09-29 08:10:20.080305	f
7212	610	Âm nhạc và cuộc sống	{travel,vietnam}	2025-11-06 09:52:46.762519	f
7213	234	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-15 14:16:13.49743	f
7214	145	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-14 13:35:41.880622	t
7215	583	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-09-30 20:16:08.629585	t
7216	440	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-05 06:55:22.701134	t
7448	494	Học lập trình Python cơ bản	{general}	2025-11-11 03:20:22.422653	t
7217	609	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-01 15:15:29.03682	f
7218	338	Khám phá du lịch Việt Nam	{food,vietnam}	2025-10-25 18:28:07.195079	t
7219	383	Âm nhạc và cuộc sống	{food,vietnam}	2025-11-10 03:51:52.58811	t
7220	688	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-10 06:02:36.518287	t
7221	996	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-01 22:51:20.038075	t
7222	280	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-10-13 01:26:47.095457	t
7223	429	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-26 07:28:16.223625	t
7224	708	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-09 02:45:54.112008	t
7225	188	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-09 22:55:27.216267	t
7226	204	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-05 17:00:55.402973	t
7227	499	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-15 11:57:10.684407	t
7228	515	Âm nhạc và cuộc sống	{travel,vietnam}	2025-10-25 12:17:46.849025	f
7229	267	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-11-09 03:46:19.870959	f
7230	366	Âm nhạc và cuộc sống	{general}	2025-10-24 22:39:43.363645	t
7231	139	Review các quán cà phê nổi tiếng	{tech,python}	2025-11-02 09:59:58.106886	f
7232	854	Review các quán cà phê nổi tiếng	{review,coffee}	2025-09-30 07:39:21.768476	t
7233	416	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-31 13:46:19.945422	t
7234	727	Khám phá du lịch Việt Nam	{food,vietnam}	2025-10-22 18:17:18.155679	t
7235	668	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-02 14:18:02.186978	t
7236	171	Khám phá du lịch Việt Nam	{tech,python}	2025-10-23 10:00:07.971685	t
7237	406	Khám phá du lịch Việt Nam	{tech,python}	2025-11-07 16:25:15.523769	f
7238	720	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-11-02 16:37:26.952331	f
7239	587	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-11-05 06:43:05.401743	t
7240	579	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-10-21 20:03:55.820068	t
7241	46	Học lập trình Python cơ bản	{travel,vietnam}	2025-09-30 01:26:06.795132	f
7242	963	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-22 00:58:11.668633	t
7243	580	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-11 12:51:22.001375	t
7244	56	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-29 02:27:58.717717	t
7245	805	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-04 08:39:11.762175	t
7246	274	Khám phá du lịch Việt Nam	{tech,python}	2025-10-17 07:27:50.058604	t
7247	968	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-07 23:38:59.31347	t
7248	143	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-24 10:04:12.214321	f
7249	734	Âm nhạc và cuộc sống	{review,coffee}	2025-10-09 14:27:17.15622	t
7250	880	Âm nhạc và cuộc sống	{food,vietnam}	2025-11-10 17:30:03.631805	t
7251	419	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-04 18:05:19.318608	f
7252	576	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-17 03:50:28.443399	t
7253	490	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-05 14:38:20.047014	f
7254	73	Học lập trình Python cơ bản	{general}	2025-11-07 05:24:18.746873	f
7255	909	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-12 00:05:20.094671	t
7256	493	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-30 12:56:08.086217	t
7257	625	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-11-08 22:24:13.445898	t
7258	582	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-23 20:44:07.995136	t
7259	429	Review các quán cà phê nổi tiếng	{review,coffee}	2025-09-28 15:43:20.331477	t
7260	858	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-11-03 03:02:00.486554	t
7261	168	Khám phá du lịch Việt Nam	{review,coffee}	2025-11-07 15:17:23.450774	t
7262	610	Âm nhạc và cuộc sống	{tech,python}	2025-10-24 23:13:45.912222	t
7263	601	Thể thao và sức khỏe mỗi ngày	{general}	2025-11-09 07:49:04.044541	t
7264	47	Review các quán cà phê nổi tiếng	{general}	2025-11-03 14:51:28.437716	t
7265	771	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-20 10:23:15.250698	t
7266	596	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-06 16:47:43.569833	t
7267	521	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-17 02:17:13.149594	t
7268	373	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-23 17:14:41.943051	t
7269	382	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-11 19:38:51.315549	t
7270	409	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-10-15 14:24:40.053421	t
7271	471	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-09 21:29:12.910878	t
7272	24	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-24 09:24:42.157484	t
7273	595	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-18 00:43:45.415092	t
7274	18	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-11 02:14:52.23955	t
7275	582	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-02 04:02:54.276324	t
7276	349	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-05 07:25:38.611438	t
7277	65	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-16 02:45:28.365598	t
7278	436	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-01 19:03:57.126144	t
7279	764	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-11-07 01:22:35.298717	f
7280	669	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-04 12:23:00.826848	t
7281	957	Học lập trình Python cơ bản	{review,coffee}	2025-10-01 09:21:22.260541	t
7282	23	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-14 10:22:05.178245	t
7283	375	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-11-05 09:29:45.476573	t
7284	105	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-11 22:04:13.440257	t
7285	600	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-10-24 07:07:57.84035	t
7286	636	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-11 04:32:18.518877	f
7287	689	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-28 15:45:50.421457	f
7288	674	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-11-01 06:56:26.296327	t
7289	435	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-29 00:44:17.472032	t
7290	994	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-09 22:38:51.757952	t
7291	240	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-01 08:48:37.664591	t
7292	371	Âm nhạc và cuộc sống	{food,vietnam}	2025-11-02 10:30:32.64766	t
7293	467	Học lập trình Python cơ bản	{food,vietnam}	2025-11-05 16:16:06.045314	t
7294	2	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-27 07:47:37.136482	t
7295	555	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-23 05:51:44.79751	f
7296	768	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-07 05:31:24.501895	t
7297	709	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-05 17:03:23.872059	t
7298	774	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-09-30 06:25:11.870521	t
7299	332	Học lập trình Python cơ bản	{tech,python}	2025-10-16 18:07:53.883822	t
7300	165	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-06 20:58:50.958994	t
7301	969	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-20 19:58:57.061018	f
7302	150	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-11-02 21:53:11.210865	t
7303	873	Review các quán cà phê nổi tiếng	{tech,python}	2025-11-07 07:24:02.06907	t
7304	225	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-22 03:58:12.147122	t
7305	577	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-08 00:04:10.46776	t
7306	726	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-31 15:27:42.84333	t
7307	936	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-09 02:28:26.791927	t
7308	324	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-18 20:42:48.403495	t
7309	915	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-10-02 21:27:09.929584	t
7310	500	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-16 21:02:46.781466	t
7311	768	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-08 15:26:19.167528	t
7312	603	Học lập trình Python cơ bản	{food,vietnam}	2025-10-04 15:08:15.491728	t
7313	44	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-11-01 22:03:58.416198	f
7314	483	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-03 21:23:05.545568	t
7315	148	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-30 06:25:58.042574	t
7316	452	Khám phá du lịch Việt Nam	{general}	2025-11-05 17:02:47.865374	t
7317	121	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-02 14:22:53.319422	t
7318	981	Học lập trình Python cơ bản	{food,vietnam}	2025-10-05 09:15:22.320316	t
7319	365	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-27 18:25:56.440498	t
7320	518	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-28 09:14:12.497122	t
7321	895	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-10 15:48:33.496192	t
7322	541	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-11-04 08:30:08.78056	t
7323	214	Âm nhạc và cuộc sống	{review,coffee}	2025-10-10 05:19:14.93297	t
7324	134	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-10-21 22:38:04.951231	t
7325	165	Học lập trình Python cơ bản	{review,coffee}	2025-10-10 19:31:32.723578	t
7326	272	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-12 23:56:48.601369	f
7327	566	Giới thiệu công nghệ AI hiện đại	{general}	2025-10-29 18:35:32.493793	t
7328	340	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-06 22:16:28.4492	t
7329	310	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-11-08 20:00:25.530703	t
7330	618	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-13 09:19:27.252041	t
7331	331	Học lập trình Python cơ bản	{food,vietnam}	2025-10-13 19:27:14.067023	t
7332	174	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-04 18:26:11.071536	f
7333	228	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-08 15:02:03.849453	t
7334	30	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-29 17:22:51.511088	f
7335	532	Học lập trình Python cơ bản	{review,coffee}	2025-11-04 12:22:53.719412	t
7336	304	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-23 15:58:16.442427	f
7337	99	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-10 03:39:48.975122	t
7338	600	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-20 06:01:44.56387	t
7339	986	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-11-04 16:54:46.324158	f
7340	585	Âm nhạc và cuộc sống	{general}	2025-10-27 00:17:16.154685	f
7341	891	Review các quán cà phê nổi tiếng	{general}	2025-10-29 19:32:17.49751	t
7342	629	Học lập trình Python cơ bản	{tech,python}	2025-10-03 15:02:31.457751	t
7343	835	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-05 23:29:31.110257	f
7344	911	Học lập trình Python cơ bản	{tech,python}	2025-10-15 08:54:51.787039	t
7345	774	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-03 03:27:43.003925	f
7346	754	Khám phá du lịch Việt Nam	{tech,python}	2025-10-12 03:35:46.96076	t
7347	106	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-11-09 18:05:17.713484	t
7348	584	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-10-23 06:57:59.29118	f
7349	302	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-04 12:34:26.831294	t
7350	485	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-20 03:54:26.845996	t
7351	93	Học lập trình Python cơ bản	{travel,vietnam}	2025-10-28 07:45:09.04921	t
7352	414	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-24 03:15:59.321042	t
7353	249	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-27 04:18:11.456631	t
7354	875	Học lập trình Python cơ bản	{review,coffee}	2025-10-15 19:22:28.982788	t
7355	316	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-22 21:55:59.493597	t
7356	434	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-11-08 23:44:11.900734	f
7357	481	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-09-30 06:37:23.675511	t
7358	260	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-14 05:23:54.680663	t
7359	977	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-21 09:45:17.280255	t
7360	960	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-25 14:23:40.573501	f
7361	803	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-13 21:37:48.69767	t
7362	490	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-28 20:28:53.185887	f
7363	948	Âm nhạc và cuộc sống	{tech,python}	2025-11-06 03:45:32.682689	f
7364	536	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-11-08 21:54:11.633135	t
7365	216	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-05 04:52:22.450638	t
7366	124	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-11-05 22:31:37.657217	t
7367	229	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-11-03 06:44:42.694115	t
7368	52	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-20 03:13:08.5643	t
7369	24	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-24 12:15:31.071581	t
7370	133	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-14 15:07:01.499944	t
7371	105	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-24 04:10:26.303117	t
7372	990	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-11-10 06:20:57.734727	t
7373	154	Khám phá du lịch Việt Nam	{tech,python}	2025-11-09 13:28:52.951767	t
7374	647	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-23 11:07:46.0458	t
7375	207	Học lập trình Python cơ bản	{travel,vietnam}	2025-10-27 08:27:23.817808	t
7376	70	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-19 16:14:48.531979	t
7377	299	Học lập trình Python cơ bản	{food,vietnam}	2025-11-08 16:22:36.153689	t
7378	444	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-16 01:49:37.596901	f
7379	458	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-16 10:03:35.477451	t
7380	720	Âm nhạc và cuộc sống	{general}	2025-11-09 23:33:21.645255	t
7381	831	Khám phá du lịch Việt Nam	{review,coffee}	2025-11-06 10:39:43.890249	t
7382	474	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-21 10:09:26.207643	t
7383	90	Âm nhạc và cuộc sống	{travel,vietnam}	2025-11-10 09:46:12.306086	f
7384	310	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-09 17:22:11.392498	t
7385	953	Thể thao và sức khỏe mỗi ngày	{general}	2025-11-07 13:23:13.324895	t
7386	208	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-11-10 15:08:30.374472	f
7387	476	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-22 07:18:35.282037	f
7388	53	Học lập trình Python cơ bản	{food,vietnam}	2025-11-11 20:39:38.452006	t
7389	207	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-31 13:03:37.069834	t
7390	189	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-23 22:35:52.105304	t
7391	649	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-07 20:47:39.625231	t
7392	274	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-11-07 08:01:54.892164	f
7393	856	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-02 11:58:43.719987	t
7394	855	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-11-10 20:39:33.573379	t
7395	256	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-07 23:14:32.017446	t
7396	752	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-11-04 03:21:04.731595	t
7397	354	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-08 03:37:44.066809	t
7398	787	Học lập trình Python cơ bản	{review,coffee}	2025-10-08 12:22:59.41762	t
7399	351	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-11-03 22:14:20.284177	t
7400	272	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-11-06 23:17:44.50162	t
7401	726	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-19 03:18:07.351284	f
7402	490	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-25 06:58:57.445439	t
7403	684	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-21 19:05:40.098388	t
7404	274	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-04 10:01:50.306542	t
7405	15	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-31 07:54:00.153517	f
7406	490	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-21 10:03:39.168827	t
7407	792	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-28 15:47:03.878305	f
7408	101	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-30 19:03:25.237217	f
7409	635	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-27 08:37:38.014534	f
7410	199	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-22 08:59:31.036358	t
7411	673	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-11 00:49:39.219709	t
7412	717	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-13 23:10:52.286677	t
7413	499	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-09 03:02:37.029517	t
7414	285	Học lập trình Python cơ bản	{review,coffee}	2025-10-24 16:46:30.500626	t
7415	51	Review các quán cà phê nổi tiếng	{general}	2025-11-06 15:45:54.995554	t
7416	989	Âm nhạc và cuộc sống	{travel,vietnam}	2025-10-19 23:04:06.335	t
7417	682	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-10-15 20:31:24.082193	t
7418	300	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-11-08 18:59:22.316894	t
7419	605	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-18 09:25:34.127377	t
7420	446	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-08 12:40:26.50298	t
7421	625	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-05 09:22:24.117887	f
7422	880	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-17 05:21:35.607695	t
7423	628	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-11-10 17:37:54.26458	t
7424	674	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-03 21:09:21.868927	t
7425	101	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-11-09 20:58:44.238686	t
7426	577	Khám phá du lịch Việt Nam	{general}	2025-10-23 01:21:12.799108	t
7427	433	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-12 10:27:31.87639	t
7428	810	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-19 23:19:05.87579	t
7429	459	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-10-08 14:56:03.591054	t
7430	458	Học lập trình Python cơ bản	{travel,vietnam}	2025-11-02 19:45:10.666131	t
7431	929	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-22 09:42:43.065067	t
7432	454	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-11-06 12:48:13.283814	t
7433	152	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-01 14:51:48.743554	f
7434	755	Âm nhạc và cuộc sống	{review,coffee}	2025-09-30 22:25:30.38037	t
7435	37	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-13 15:30:32.637254	t
7436	446	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-09 15:40:22.799624	t
7437	648	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-14 22:44:24.962541	t
7438	117	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-10-09 20:38:43.47146	t
7439	180	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-10 18:37:08.64086	t
7440	667	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-06 16:23:13.694112	t
7441	71	Review các quán cà phê nổi tiếng	{general}	2025-10-31 12:45:08.152752	t
7442	516	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-11-08 14:03:54.384206	t
7443	613	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-11 09:45:58.505045	t
7444	575	Âm nhạc và cuộc sống	{review,coffee}	2025-10-17 22:11:03.181445	t
7445	629	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-11-01 14:26:13.881218	f
7446	301	Âm nhạc và cuộc sống	{food,vietnam}	2025-09-29 14:17:05.409939	f
7447	245	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-11-05 20:44:31.808481	f
7449	933	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-11-02 08:41:44.276786	t
7450	565	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-12 16:24:34.010312	t
7451	245	Âm nhạc và cuộc sống	{tech,python}	2025-10-03 12:22:03.79879	t
7452	548	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-27 17:49:16.66299	t
7453	811	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-06 20:39:24.072956	f
7454	698	Học lập trình Python cơ bản	{food,vietnam}	2025-10-23 22:20:20.395776	f
7455	169	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-08 19:55:21.159491	t
7456	54	Âm nhạc và cuộc sống	{review,coffee}	2025-11-02 08:24:34.835773	f
7457	74	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-16 05:31:57.945763	t
7458	443	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-23 20:16:07.972934	t
7459	996	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-11-08 07:32:21.012859	t
7460	372	Âm nhạc và cuộc sống	{general}	2025-10-01 10:57:18.087346	f
7461	960	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-20 21:33:15.140469	t
7462	758	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-11-06 02:39:42.719793	t
7463	535	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-09 10:37:06.066763	t
7464	385	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-06 19:30:31.668653	t
7465	56	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-05 10:32:18.299159	t
7466	297	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-09 05:23:48.758152	f
7467	59	Âm nhạc và cuộc sống	{tech,python}	2025-10-12 07:16:37.877056	t
7468	721	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-09-28 23:17:55.202722	t
7469	258	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-01 08:39:20.660155	t
7470	524	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-08 02:04:19.064692	t
7471	323	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-10-15 18:12:39.011519	t
7472	232	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-18 23:02:56.035237	t
7473	367	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-21 18:18:09.517817	t
7474	0	Khám phá du lịch Việt Nam	{tech,python}	2025-10-15 19:30:43.321942	t
7475	427	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-13 06:26:29.110145	t
7476	730	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-07 22:23:31.657013	t
7477	571	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-02 19:39:23.362248	t
7478	122	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-25 21:07:24.026043	t
7479	708	Học lập trình Python cơ bản	{food,vietnam}	2025-11-07 05:32:15.706426	t
7480	937	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-08 12:01:05.0116	t
7481	535	Học lập trình Python cơ bản	{food,vietnam}	2025-11-03 02:20:00.563613	t
7482	54	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-30 12:00:48.881952	t
7483	482	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-07 19:49:18.880623	t
7484	42	Học lập trình Python cơ bản	{tech,python}	2025-11-09 21:23:49.189892	t
7485	204	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-15 05:57:16.207856	t
7486	841	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-01 19:53:56.451892	t
7487	641	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-10 06:19:51.939771	t
7488	143	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-14 13:25:49.32588	t
7489	792	Học lập trình Python cơ bản	{tech,python}	2025-10-31 04:16:37.485368	t
7490	731	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-02 07:04:57.825502	t
7491	283	Học lập trình Python cơ bản	{food,vietnam}	2025-11-10 10:41:45.761106	t
7492	299	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-12 09:59:31.80952	t
7493	800	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-01 19:40:56.308196	t
7494	644	Khám phá du lịch Việt Nam	{travel,vietnam}	2025-10-09 20:11:55.730252	t
7495	416	Học lập trình Python cơ bản	{food,vietnam}	2025-10-11 21:41:47.918326	t
7496	761	Âm nhạc và cuộc sống	{food,vietnam}	2025-09-30 22:00:27.109408	f
7497	260	Học lập trình Python cơ bản	{tech,python}	2025-09-30 23:08:18.429326	t
7498	592	Học lập trình Python cơ bản	{general}	2025-11-09 22:58:24.74285	t
7499	341	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-30 03:40:20.465533	t
7500	202	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-09 11:52:39.948868	t
7501	899	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-17 06:43:14.157227	t
7502	157	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-31 05:38:27.731291	f
7503	791	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-10-02 23:19:59.858601	t
7504	159	Âm nhạc và cuộc sống	{general}	2025-11-07 12:44:33.430454	t
7505	921	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-11-09 10:06:07.255132	t
7506	13	Khám phá du lịch Việt Nam	{food,vietnam}	2025-11-06 06:49:12.972479	t
7507	269	Âm nhạc và cuộc sống	{tech,python}	2025-10-22 19:04:34.827021	t
7508	505	Khám phá du lịch Việt Nam	{tech,python}	2025-10-03 07:08:53.852642	t
7509	903	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-22 17:16:16.91267	t
7510	121	Học lập trình Python cơ bản	{food,vietnam}	2025-10-08 18:09:14.32837	t
7511	477	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-06 09:52:18.477006	f
7512	974	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-28 09:42:54.406203	t
7513	655	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-11-02 17:01:49.975394	f
7514	760	Âm nhạc và cuộc sống	{travel,vietnam}	2025-10-09 05:24:41.73209	t
7515	930	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-04 06:19:46.40495	t
7516	304	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-11 18:58:14.337731	t
7517	736	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-21 19:11:05.186648	t
7518	836	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-09 09:14:47.126271	t
7519	777	Khám phá du lịch Việt Nam	{tech,python}	2025-10-25 01:48:19.64937	t
7520	181	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-11 20:15:14.340498	f
7521	282	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-11-06 01:06:33.389938	t
7522	749	Học lập trình Python cơ bản	{travel,vietnam}	2025-10-27 20:54:53.804084	t
7523	882	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-03 01:36:41.52057	t
7524	911	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-10-02 07:11:29.424608	t
7525	688	Âm nhạc và cuộc sống	{travel,vietnam}	2025-10-22 22:13:32.222515	t
7526	69	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-29 10:30:29.15428	t
7527	404	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-10-25 22:50:16.003071	t
7528	329	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-11 10:23:33.771002	f
7529	378	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-03 00:08:52.537119	t
7530	558	Âm nhạc và cuộc sống	{general}	2025-11-07 01:26:50.744783	t
7531	392	Giới thiệu công nghệ AI hiện đại	{general}	2025-10-04 17:39:37.748873	t
7532	685	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-28 22:24:09.176653	t
7533	38	Học lập trình Python cơ bản	{review,coffee}	2025-10-20 14:56:49.460084	f
7534	175	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-17 00:20:04.371949	t
7535	791	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-02 18:00:54.768959	t
7536	255	Review các quán cà phê nổi tiếng	{tech,python}	2025-09-29 06:47:38.071555	t
7537	208	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-27 03:30:45.315205	t
7538	819	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-11 08:38:09.990415	t
7539	358	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-31 10:28:26.089707	t
7540	506	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-27 09:06:33.489904	t
7541	12	Học lập trình Python cơ bản	{general}	2025-10-19 21:18:55.280145	t
7542	185	Review các quán cà phê nổi tiếng	{tech,python}	2025-11-05 08:37:24.399626	t
7543	489	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-14 06:48:25.009389	t
7544	328	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-02 13:00:45.398968	f
7545	329	Học lập trình Python cơ bản	{travel,vietnam}	2025-10-10 20:35:37.539258	t
7546	999	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-26 01:01:34.563874	t
7547	551	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-10-09 19:06:40.667744	t
7548	787	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-02 00:04:04.476498	t
7549	849	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-23 08:14:28.911963	t
7550	702	Review các quán cà phê nổi tiếng	{general}	2025-10-15 08:30:06.130534	t
7551	834	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-09-29 15:39:17.618518	t
7552	303	Học lập trình Python cơ bản	{tech,python}	2025-11-06 23:02:34.011668	t
7553	900	Âm nhạc và cuộc sống	{review,coffee}	2025-09-30 19:17:09.169471	f
7554	135	Âm nhạc và cuộc sống	{general}	2025-10-20 19:15:41.17384	t
7555	336	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-12 05:37:12.525926	t
7556	978	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-09 05:21:49.41192	t
7557	790	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-01 04:15:15.055454	t
7558	197	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-25 16:13:22.181487	t
7559	163	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-07 05:25:51.416499	f
7560	16	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-11 09:14:57.78541	t
7561	124	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-10-11 05:00:15.269365	t
7562	240	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-14 07:53:42.094009	t
7563	739	Âm nhạc và cuộc sống	{review,coffee}	2025-10-18 02:40:49.927627	t
7564	490	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-29 12:46:42.86243	f
7565	356	Học lập trình Python cơ bản	{review,coffee}	2025-10-24 02:44:58.521598	t
7566	395	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-20 00:13:23.833305	t
7567	351	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-11-04 07:51:15.024502	f
7568	331	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-22 03:15:10.00744	t
7569	61	Học lập trình Python cơ bản	{review,coffee}	2025-10-17 17:45:00.901515	t
7570	302	Giới thiệu công nghệ AI hiện đại	{general}	2025-10-31 18:29:28.197766	t
7571	37	Thể thao và sức khỏe mỗi ngày	{general}	2025-11-05 23:26:44.54349	t
7572	167	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-26 23:56:03.807752	t
7573	680	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-11-04 16:46:18.699667	t
7574	439	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-23 07:51:07.219133	t
7575	829	Review các quán cà phê nổi tiếng	{general}	2025-09-29 16:18:34.704291	t
7576	436	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-27 22:22:04.035188	t
7577	498	Khám phá du lịch Việt Nam	{tech,python}	2025-10-11 12:13:30.392762	t
7578	414	Học lập trình Python cơ bản	{food,vietnam}	2025-10-01 02:04:06.775033	t
7579	14	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-27 06:28:50.811469	f
7580	232	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-08 19:20:43.787613	t
7581	663	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-19 09:49:33.28023	t
7582	786	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-06 18:03:38.739691	t
7583	587	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-31 05:17:01.365485	t
7584	710	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-05 03:55:32.834131	t
7585	463	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-11 16:27:20.93136	t
7586	229	Review các quán cà phê nổi tiếng	{general}	2025-11-09 07:50:35.497306	t
7587	454	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-11-04 03:03:40.570554	t
7588	231	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-17 06:01:06.181229	t
7589	557	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-10 06:52:17.087775	t
7590	886	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-02 06:13:10.563927	t
7591	880	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-27 22:54:42.269784	t
7592	959	Giới thiệu công nghệ AI hiện đại	{general}	2025-09-30 16:21:55.236763	t
7593	747	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-08 10:50:17.743845	t
7594	834	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-09-28 12:43:31.607476	t
7595	615	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-20 23:52:29.258294	t
7596	575	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-06 01:09:02.988979	t
7597	711	Khám phá du lịch Việt Nam	{food,vietnam}	2025-10-26 10:45:15.088864	t
7598	874	Review các quán cà phê nổi tiếng	{general}	2025-10-18 17:17:39.966031	t
7599	271	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-14 08:07:46.339568	t
7600	156	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-15 00:01:07.915719	t
7601	665	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-10-29 01:11:40.224994	t
7602	594	Học lập trình Python cơ bản	{food,vietnam}	2025-11-05 13:43:33.849549	t
7603	114	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-21 13:50:44.853405	t
7604	489	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-18 00:14:48.572631	t
7605	578	Âm nhạc và cuộc sống	{tech,python}	2025-11-01 15:54:06.670992	t
7606	471	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-16 07:05:06.410829	t
7607	543	Giới thiệu công nghệ AI hiện đại	{general}	2025-10-13 02:41:03.506896	t
7608	920	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-06 09:43:33.05059	t
7609	771	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-23 11:31:12.663011	t
7610	847	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-24 03:56:09.610132	t
7611	85	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-09-30 10:30:14.980136	t
7612	234	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-30 04:35:35.15008	t
7613	357	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-28 15:49:48.131116	f
7614	590	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-24 00:40:43.497232	t
7615	662	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-23 03:05:37.254999	t
7616	392	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-14 10:39:31.403337	t
7617	887	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-20 12:02:38.542781	f
7618	821	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-11-11 03:36:44.922221	t
7619	177	Âm nhạc và cuộc sống	{general}	2025-10-30 20:13:51.164752	t
7620	997	Học lập trình Python cơ bản	{food,vietnam}	2025-09-29 18:26:08.2435	t
7621	696	Âm nhạc và cuộc sống	{travel,vietnam}	2025-10-24 20:33:12.876724	t
7622	177	Âm nhạc và cuộc sống	{review,coffee}	2025-10-01 22:29:48.456033	t
7623	501	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-19 07:03:01.357239	t
7624	531	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-05 10:21:37.674436	f
7625	842	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-01 10:34:35.167764	f
7626	34	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-23 19:04:44.880691	t
7627	976	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-20 04:00:49.803009	t
7628	879	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-10 12:55:02.754773	t
7629	411	Học lập trình Python cơ bản	{general}	2025-10-08 12:23:27.264657	f
7630	91	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-10-02 04:44:01.295122	t
7631	179	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-10 18:20:15.844652	t
7632	694	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-10-17 05:06:40.894133	f
7633	426	Khám phá du lịch Việt Nam	{general}	2025-11-11 17:33:13.980526	f
7634	990	Học lập trình Python cơ bản	{food,vietnam}	2025-10-15 10:42:41.764325	t
7635	336	Âm nhạc và cuộc sống	{review,coffee}	2025-10-29 11:49:27.045398	t
7636	51	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-10-13 15:02:28.41652	t
7637	205	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-26 19:51:39.47251	t
7638	13	Review các quán cà phê nổi tiếng	{tech,python}	2025-11-03 10:40:59.399089	f
7639	2	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-14 11:29:25.487925	t
7640	977	Học lập trình Python cơ bản	{tech,python}	2025-10-19 06:27:34.870841	t
7641	87	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-31 11:08:13.609887	t
7642	138	Khám phá du lịch Việt Nam	{tech,python}	2025-10-30 19:16:59.215274	f
7643	587	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-01 07:05:59.376532	t
7644	195	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-09-29 17:55:56.449803	t
7645	382	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-10-25 05:36:44.922043	t
7646	898	Âm nhạc và cuộc sống	{review,coffee}	2025-10-27 03:40:41.740244	t
7647	190	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-09 12:02:46.96151	t
7648	307	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-11-06 14:38:42.366702	t
7649	786	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-11 15:07:50.260591	t
7650	701	Học lập trình Python cơ bản	{food,vietnam}	2025-11-07 19:58:27.160721	f
7651	609	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-11-05 21:29:55.644416	t
7652	757	Âm nhạc và cuộc sống	{tech,python}	2025-10-12 20:07:43.222732	t
7653	735	Âm nhạc và cuộc sống	{general}	2025-11-08 14:50:51.946246	t
7654	844	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-18 22:43:23.65399	t
7655	436	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-28 23:46:56.39706	f
7656	274	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-06 10:14:29.724267	t
7657	917	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-27 17:39:51.925233	t
7658	653	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-11-11 09:46:22.881157	t
7659	997	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-16 17:11:43.082303	f
7660	506	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-29 23:08:37.138481	f
7661	348	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-11-04 06:06:38.420474	t
7662	352	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-09 05:32:29.255903	t
7663	268	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-04 04:03:20.152445	t
7664	175	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-23 00:12:21.347144	t
7665	439	Âm nhạc và cuộc sống	{travel,vietnam}	2025-10-17 17:45:07.150096	t
7666	87	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-22 13:15:52.134236	t
7667	179	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-11-03 09:01:55.800047	t
7668	28	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-09 14:46:09.887645	t
7669	161	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-28 10:44:05.209313	t
7670	773	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-22 23:30:05.314236	t
7671	944	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-11 21:11:00.219932	t
7672	400	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-11-07 09:04:09.970031	t
7673	307	Âm nhạc và cuộc sống	{travel,vietnam}	2025-10-27 01:07:22.714449	t
7674	641	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-11-03 07:40:03.451155	t
7675	321	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-09-29 00:27:51.48415	t
7676	593	Âm nhạc và cuộc sống	{review,coffee}	2025-10-05 06:07:13.732184	t
7677	969	Học lập trình Python cơ bản	{general}	2025-09-30 19:41:46.384603	t
7678	150	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-06 18:00:15.09114	t
7679	421	Học lập trình Python cơ bản	{food,vietnam}	2025-11-04 06:27:35.540729	t
7680	607	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-08 15:11:19.512008	t
7681	182	Âm nhạc và cuộc sống	{review,coffee}	2025-10-05 17:01:21.398721	f
7682	106	Âm nhạc và cuộc sống	{tech,python}	2025-11-03 17:24:46.934455	f
7683	525	Âm nhạc và cuộc sống	{tech,python}	2025-10-11 16:51:41.186013	f
7684	656	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-01 00:15:46.133488	t
7685	255	Âm nhạc và cuộc sống	{tech,python}	2025-10-08 10:58:45.833716	t
7686	81	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-27 06:00:03.345702	t
7687	888	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-19 13:38:04.269792	t
7688	374	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-11-02 01:25:24.029188	t
7689	375	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-19 17:34:04.070659	t
7690	413	Học lập trình Python cơ bản	{food,vietnam}	2025-10-25 13:16:03.61389	t
7691	868	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-09 04:35:06.703591	t
7692	79	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-23 12:10:50.244712	t
7693	901	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-18 03:02:26.441429	t
7694	431	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-06 22:35:00.491757	t
7695	147	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-30 11:26:26.012768	f
7696	275	Âm nhạc và cuộc sống	{tech,python}	2025-10-25 10:48:21.359311	t
7697	868	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-21 15:55:02.957319	t
7698	694	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-24 22:48:03.544844	t
7699	868	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-09 16:57:28.447182	t
7700	446	Âm nhạc và cuộc sống	{food,vietnam}	2025-11-02 05:06:21.377627	t
7701	142	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-06 04:37:45.44286	t
7702	995	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-10 19:21:36.943456	f
7703	499	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-18 04:47:03.741922	t
7704	40	Thể thao và sức khỏe mỗi ngày	{general}	2025-09-28 23:56:59.230359	t
7705	979	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-11-11 22:12:30.241836	t
7706	697	Âm nhạc và cuộc sống	{food,vietnam}	2025-11-07 10:09:59.307254	t
7707	257	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-31 04:49:55.876786	f
7708	165	Học lập trình Python cơ bản	{tech,python}	2025-09-30 23:08:07.869947	t
7709	819	Âm nhạc và cuộc sống	{tech,python}	2025-10-14 17:02:47.644678	t
7710	85	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-14 07:22:36.108151	f
7711	77	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-06 08:09:54.147485	t
7712	819	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-06 12:59:21.881563	t
7713	300	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-20 23:29:41.02299	t
7714	180	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-15 07:36:47.364597	t
7715	19	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-02 03:08:11.494729	t
7716	104	Học lập trình Python cơ bản	{food,vietnam}	2025-10-30 15:12:44.073718	t
7717	721	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-18 08:05:37.271753	t
7718	687	Học lập trình Python cơ bản	{review,coffee}	2025-11-02 06:35:49.474683	t
7719	280	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-15 01:30:44.484361	t
7720	256	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-11-11 04:33:42.032667	f
7721	498	Học lập trình Python cơ bản	{ai,machinelearning}	2025-11-04 23:31:13.80108	t
7722	803	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-07 08:10:05.260004	t
7723	801	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-04 00:21:07.103198	t
7724	340	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-29 22:57:38.46357	t
7725	60	Học lập trình Python cơ bản	{tech,python}	2025-10-07 09:13:39.957918	f
7726	353	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-04 11:57:58.476012	t
7727	92	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-11 03:50:41.120903	t
7728	764	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-09-29 20:42:23.417748	t
7729	85	Học lập trình Python cơ bản	{food,vietnam}	2025-10-06 17:03:43.048632	t
7730	598	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-21 23:26:38.247336	t
7731	616	Học lập trình Python cơ bản	{food,vietnam}	2025-10-13 18:54:39.716974	t
7732	324	Học lập trình Python cơ bản	{review,coffee}	2025-10-25 01:24:44.015071	t
7733	290	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-06 13:13:01.687715	t
7734	222	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-11-12 02:07:05.595634	f
7735	41	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-11-04 16:03:03.166659	t
7736	948	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-24 09:12:26.252229	t
7737	446	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-10-04 15:15:21.513214	t
7738	764	Âm nhạc và cuộc sống	{general}	2025-10-02 02:12:09.572443	t
7739	665	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-30 11:40:25.064032	f
7740	427	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-27 19:48:48.082899	t
7741	385	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-09-28 23:39:27.560383	t
7742	5	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-11-12 06:05:33.079474	t
7743	969	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-06 06:12:13.339115	t
7744	667	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-07 03:10:44.621822	t
7745	401	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-11-07 16:14:09.026939	t
7746	574	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-05 03:19:00.459325	t
7747	703	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-17 00:44:54.137467	t
7748	495	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-13 20:53:02.729099	t
7749	981	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-01 17:03:42.583399	t
7750	475	Âm nhạc và cuộc sống	{general}	2025-10-31 00:23:02.721554	t
7751	181	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-27 21:10:11.525087	t
7752	174	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-11-09 08:53:07.069291	f
7753	807	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-10-27 02:47:10.754907	t
7754	179	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-09 19:43:52.970554	t
7755	160	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-05 03:11:49.161724	t
7756	826	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-10-22 18:18:26.135712	t
7757	480	Học lập trình Python cơ bản	{review,coffee}	2025-10-13 11:44:04.18792	t
7758	484	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-11-05 18:16:19.846299	t
7759	272	Học lập trình Python cơ bản	{travel,vietnam}	2025-10-25 04:18:32.463222	t
7760	160	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-19 03:52:22.226859	f
7761	893	Review các quán cà phê nổi tiếng	{general}	2025-10-03 05:54:15.949423	t
7762	464	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-27 19:06:57.70357	t
7763	847	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-11-07 16:08:30.858696	t
7764	660	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-09-30 05:02:33.435503	t
7765	296	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-12 15:23:49.338047	t
7766	778	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-14 16:53:18.175105	t
7767	555	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-03 14:37:54.280346	t
7768	235	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-21 00:00:20.309863	t
7769	252	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-20 01:48:03.627402	t
7770	229	Âm nhạc và cuộc sống	{review,coffee}	2025-10-04 13:26:12.334165	t
7771	206	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-11-04 01:24:42.897642	t
7772	215	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-13 03:26:53.561784	t
7773	89	Âm nhạc và cuộc sống	{tech,python}	2025-10-24 19:48:51.459191	t
7774	404	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-10-05 01:52:14.887771	t
7775	320	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-07 00:41:08.973171	f
7776	734	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-09-28 16:54:11.028398	f
7777	625	Âm nhạc và cuộc sống	{tech,python}	2025-10-04 20:34:05.355183	t
7778	600	Âm nhạc và cuộc sống	{review,coffee}	2025-11-12 04:01:45.999102	t
7779	882	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-10 05:31:37.242067	t
7780	125	Học lập trình Python cơ bản	{tech,python}	2025-10-08 10:58:45.250006	t
7781	283	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-11-03 16:50:19.7069	t
7782	937	Âm nhạc và cuộc sống	{review,coffee}	2025-11-02 21:40:14.64417	t
7783	824	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-24 19:32:44.641524	t
7784	276	Khám phá du lịch Việt Nam	{food,vietnam}	2025-10-14 19:06:06.781049	t
7785	424	Khám phá du lịch Việt Nam	{tech,python}	2025-10-05 14:10:34.296321	t
7786	949	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-04 10:10:10.616349	f
7787	507	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-12 10:24:30.927209	t
7788	186	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-16 10:56:01.782033	t
7789	949	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-11-02 23:48:04.326423	t
7790	572	Học lập trình Python cơ bản	{general}	2025-10-15 16:39:31.097131	t
7791	581	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-10-15 09:54:47.939928	t
7792	951	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-07 01:37:45.111675	t
7793	783	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-11-05 08:17:21.529342	f
7794	963	Học lập trình Python cơ bản	{review,coffee}	2025-11-05 20:18:50.526994	f
7795	896	Âm nhạc và cuộc sống	{review,coffee}	2025-10-10 05:38:37.602811	t
7796	484	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-02 11:07:54.308446	t
7797	386	Học lập trình Python cơ bản	{food,vietnam}	2025-10-02 08:51:38.100043	t
7798	341	Âm nhạc và cuộc sống	{food,vietnam}	2025-09-28 21:57:52.46889	t
7799	803	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-09 23:57:15.682088	f
7800	409	Review các quán cà phê nổi tiếng	{review,coffee}	2025-11-03 09:42:04.579338	t
7801	975	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-08 21:07:04.240732	t
7802	61	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-15 20:57:50.071421	t
7803	316	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-11-03 20:38:33.834858	t
7804	289	Âm nhạc và cuộc sống	{food,vietnam}	2025-11-03 11:29:04.388503	t
7805	703	Học lập trình Python cơ bản	{tech,python}	2025-10-26 16:22:48.22601	t
7806	51	Âm nhạc và cuộc sống	{tech,python}	2025-10-15 19:46:51.725061	f
7807	38	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-01 08:08:19.509637	t
7808	348	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-11 02:22:59.987747	t
7809	280	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-02 17:19:06.765672	t
7810	798	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-11-06 21:53:05.096754	t
7811	719	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-21 08:15:50.214989	f
7812	844	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-07 17:54:16.840451	t
7813	839	Khám phá du lịch Việt Nam	{tech,python}	2025-10-09 04:21:59.165916	t
7814	445	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-11-11 17:49:36.288937	f
7815	865	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-31 06:34:18.378781	t
7816	857	Âm nhạc và cuộc sống	{tech,python}	2025-10-05 21:08:31.919101	t
7817	112	Học lập trình Python cơ bản	{food,vietnam}	2025-10-08 08:29:09.486979	t
7818	57	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-28 08:47:41.834728	t
7819	230	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-15 17:34:04.803807	f
7820	50	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-11-06 20:40:24.486795	t
7821	194	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-08 21:59:57.771627	t
7822	229	Học lập trình Python cơ bản	{review,coffee}	2025-11-06 01:52:34.990214	f
7823	899	Học lập trình Python cơ bản	{review,coffee}	2025-10-14 19:32:40.800561	t
7824	81	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-11-12 00:45:13.451957	t
7825	672	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-09-30 14:35:07.985807	t
7826	20	Âm nhạc và cuộc sống	{food,vietnam}	2025-11-12 06:15:31.030072	t
7827	403	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-19 04:57:21.980676	t
7828	383	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-11-04 03:39:54.51611	t
7829	627	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-09 15:55:48.509949	t
7830	347	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-11-01 03:14:20.890089	t
7831	660	Khám phá du lịch Việt Nam	{food,vietnam}	2025-10-30 03:16:16.982573	t
7832	907	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-02 08:25:05.468589	t
7833	725	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-25 14:45:40.520122	t
7834	814	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-08 12:09:00.233175	t
7835	915	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-28 18:16:14.669931	t
7836	781	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-25 13:02:41.280393	t
7837	643	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-05 01:58:12.226191	t
7838	569	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-18 18:25:44.485716	t
7839	803	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-25 05:19:25.051048	t
7840	519	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-23 10:48:56.338287	t
7841	337	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-10-09 07:48:02.403306	t
7842	403	Âm nhạc và cuộc sống	{tech,python}	2025-10-01 01:08:31.897291	f
7843	312	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-06 20:53:56.720534	t
7844	70	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-10 12:41:07.002142	t
7845	779	Học lập trình Python cơ bản	{food,vietnam}	2025-10-29 04:17:25.819363	t
7846	347	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-10-09 03:48:35.457455	t
7847	819	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-11 11:09:45.500598	t
7848	533	Âm nhạc và cuộc sống	{tech,python}	2025-10-25 18:45:01.183928	f
7849	223	Học lập trình Python cơ bản	{review,coffee}	2025-11-05 06:12:07.457469	t
7850	353	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-23 10:22:12.75831	f
7851	801	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-02 12:20:38.002149	t
7852	44	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-11-02 09:00:38.789042	t
7853	854	Khám phá du lịch Việt Nam	{general}	2025-10-06 08:51:10.193536	t
7854	106	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-11-06 15:02:41.571093	t
7855	938	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-20 02:11:44.905314	t
7856	677	Âm nhạc và cuộc sống	{review,coffee}	2025-10-03 17:36:00.459027	t
7857	386	Học lập trình Python cơ bản	{tech,python}	2025-11-03 07:17:23.95685	t
7858	377	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-16 15:58:01.949116	t
7859	61	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-11-11 08:40:00.339003	t
7860	449	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-28 07:18:31.047473	t
7861	55	Khám phá du lịch Việt Nam	{food,vietnam}	2025-10-05 21:59:48.120785	t
7862	697	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-28 08:33:55.598547	t
7863	864	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-27 19:23:29.789442	f
7864	28	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-03 02:50:19.200475	t
7865	953	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-28 09:01:53.25227	t
7866	164	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-05 23:12:30.772644	t
7867	897	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-25 15:05:02.61962	t
7868	9	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-13 09:43:24.972139	t
7869	149	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-31 14:05:43.561539	t
7870	323	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-25 21:59:51.544695	t
7871	828	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-16 20:17:25.438488	t
7872	364	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-29 17:20:34.475661	f
7873	66	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-24 07:26:47.981201	t
7874	292	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-11-11 09:18:36.18875	t
7875	255	Khám phá du lịch Việt Nam	{travel,vietnam}	2025-10-19 05:41:00.03817	t
7876	478	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-02 05:32:29.380077	t
7877	531	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-10-09 23:47:46.995384	t
7878	97	Âm nhạc và cuộc sống	{review,coffee}	2025-11-05 19:05:25.883332	t
7879	255	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-06 08:20:58.290853	t
7880	532	Khám phá du lịch Việt Nam	{tech,python}	2025-11-06 03:47:38.737637	t
7881	564	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-11-07 20:19:47.389338	t
7882	721	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-10 21:57:21.717274	t
7883	187	Âm nhạc và cuộc sống	{tech,python}	2025-10-31 08:40:31.025965	t
7884	461	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-22 23:52:40.217298	t
7885	983	Học lập trình Python cơ bản	{review,coffee}	2025-10-26 07:04:44.401942	t
7886	410	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-09 13:08:50.193739	t
7887	902	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-03 05:20:54.706924	t
7888	569	Âm nhạc và cuộc sống	{travel,vietnam}	2025-10-10 15:35:33.488555	t
7889	778	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-27 11:02:47.882039	t
7890	892	Học lập trình Python cơ bản	{general}	2025-11-01 20:41:04.545656	t
7891	22	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-11-04 15:43:32.838977	t
7892	411	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-21 04:41:19.687584	t
7893	656	Âm nhạc và cuộc sống	{general}	2025-11-05 04:00:34.223629	t
7894	273	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-22 05:09:34.783278	t
7895	254	Review các quán cà phê nổi tiếng	{tech,python}	2025-11-01 13:21:36.015973	t
7896	779	Khám phá du lịch Việt Nam	{tech,python}	2025-10-04 20:15:12.089419	t
7897	705	Âm nhạc và cuộc sống	{review,coffee}	2025-10-18 13:20:34.739716	t
7898	314	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-10-22 03:08:59.462003	t
7899	763	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-05 04:25:36.187562	t
7900	892	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-22 06:33:38.242482	t
7901	253	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-02 17:34:36.751949	t
7902	605	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-10-09 13:16:35.709203	t
7903	328	Học lập trình Python cơ bản	{review,coffee}	2025-11-05 01:26:39.191455	f
7904	450	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-15 11:12:34.282103	t
7905	70	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-11-04 03:55:26.028982	t
7906	420	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-11-06 00:34:23.66346	t
7907	949	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-28 08:17:50.709247	f
7908	672	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-11-06 21:52:56.985275	t
7909	333	Học lập trình Python cơ bản	{travel,vietnam}	2025-10-28 16:26:39.853716	t
7910	527	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-10 02:01:05.496158	f
7911	585	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-20 23:55:05.580812	f
7912	172	Học lập trình Python cơ bản	{travel,vietnam}	2025-10-09 07:44:57.246998	t
7913	695	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-22 15:09:21.231444	t
7914	204	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-13 09:44:46.310936	t
7915	85	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-31 15:59:40.191389	t
7916	844	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-12 08:45:34.992149	t
7917	205	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-14 18:16:18.118819	t
7918	17	Âm nhạc và cuộc sống	{travel,vietnam}	2025-10-15 12:13:49.839787	t
7919	474	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-01 12:28:38.342462	t
7920	983	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-02 20:11:35.042863	t
7921	826	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-20 11:21:07.493517	t
7922	624	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-05 05:50:14.514196	t
7923	35	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-10-16 05:29:25.585114	t
7924	917	Học lập trình Python cơ bản	{tech,python}	2025-11-07 17:15:56.95722	t
7925	558	Âm nhạc và cuộc sống	{tech,python}	2025-10-27 20:58:44.607151	t
7926	70	Khám phá du lịch Việt Nam	{tech,python}	2025-11-12 08:23:19.725892	t
7927	379	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-10-11 06:15:30.73262	t
7928	432	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-09-29 23:47:01.475194	t
7929	228	Khám phá du lịch Việt Nam	{travel,vietnam}	2025-11-06 08:00:14.287538	t
7930	120	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-10-22 10:22:59.408919	t
7931	642	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-08 19:18:12.711946	t
7932	1	Âm nhạc và cuộc sống	{travel,vietnam}	2025-10-27 19:21:00.534145	t
7933	954	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-11-10 16:17:02.197541	t
7934	384	Học lập trình Python cơ bản	{general}	2025-10-26 03:05:50.826679	f
7935	256	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-18 03:44:43.320319	t
7936	99	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-28 15:58:04.471699	t
7937	922	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-26 00:19:49.931489	t
7938	675	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-16 03:35:45.458964	t
7939	998	Âm nhạc và cuộc sống	{tech,python}	2025-10-02 05:59:15.117642	t
7940	948	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-11-08 00:21:27.440227	t
7941	933	Học lập trình Python cơ bản	{general}	2025-10-25 20:15:07.244679	t
7942	967	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-02 10:02:43.294976	t
7943	611	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-05 12:39:06.81452	f
7944	505	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-11 21:45:43.581212	t
7945	305	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-22 02:00:43.035468	t
7946	748	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-23 23:05:07.207703	t
7947	127	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-22 01:06:49.108902	t
7948	860	Khám phá du lịch Việt Nam	{food,vietnam}	2025-10-26 17:26:44.073102	t
7949	798	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-11-03 22:10:16.757786	t
7950	269	Âm nhạc và cuộc sống	{general}	2025-10-30 03:48:58.708622	t
7951	643	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-31 19:22:02.505368	t
7952	516	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-09-29 00:17:10.195963	t
7953	611	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-11-02 13:11:33.777548	t
7954	614	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-27 22:51:43.327555	t
7955	781	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-23 06:33:04.428678	t
7956	650	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-11-07 12:24:02.315461	t
7957	918	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-06 04:57:28.597803	t
7958	159	Học lập trình Python cơ bản	{general}	2025-10-12 07:51:08.152304	t
7959	552	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-22 19:42:53.603432	f
7960	857	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-09-28 23:03:11.756789	f
7961	692	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-11-05 11:51:06.57178	f
7962	64	Học lập trình Python cơ bản	{travel,vietnam}	2025-11-11 04:45:48.106756	t
7963	299	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-26 21:20:29.777729	t
7964	633	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-05 21:35:19.245574	t
7965	177	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-11-03 02:28:54.49058	f
7966	334	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-25 16:07:15.760707	t
7967	192	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-29 13:28:27.990157	f
7968	418	Khám phá du lịch Việt Nam	{food,vietnam}	2025-11-06 19:37:20.500156	t
7969	703	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-28 14:58:52.656859	t
7970	67	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-01 04:29:31.371247	t
7971	621	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-11-09 18:44:36.050315	f
7972	979	Âm nhạc và cuộc sống	{review,coffee}	2025-10-27 11:45:46.16507	t
7973	23	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-18 10:17:25.071819	f
7974	51	Khám phá du lịch Việt Nam	{tech,python}	2025-11-01 20:10:26.153659	t
7975	151	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-28 21:31:29.076336	t
7976	868	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-25 00:32:05.254974	t
7977	599	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-28 18:25:01.842389	t
7978	70	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-11-05 22:53:57.094806	t
7979	549	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-02 11:25:15.115102	t
7980	974	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-11-09 03:16:05.023831	t
7981	167	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-09-28 12:53:24.528036	t
7982	597	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-11-02 17:30:16.543989	t
7983	557	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-06 21:32:37.299443	t
7984	674	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-04 10:09:30.420535	t
7985	535	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-12 21:35:07.684198	t
7986	403	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-18 08:27:01.146624	t
7987	180	Review các quán cà phê nổi tiếng	{tech,python}	2025-11-04 02:54:08.42606	t
7988	367	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-05 03:47:16.680269	t
7989	496	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-02 10:43:43.173582	f
7990	814	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-09-30 20:18:03.81435	t
7991	836	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-21 01:13:44.906546	t
7992	271	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-02 02:13:20.88562	t
7993	55	Âm nhạc và cuộc sống	{review,coffee}	2025-10-14 23:08:36.016186	t
7994	835	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-23 11:47:51.471485	t
7995	699	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-30 15:00:06.88051	t
7996	709	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-23 18:40:50.860336	t
7997	461	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-11-09 07:47:46.408534	t
7998	436	Học lập trình Python cơ bản	{food,vietnam}	2025-11-03 16:54:41.466884	t
7999	154	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-18 14:34:52.955949	t
8000	191	Âm nhạc và cuộc sống	{review,coffee}	2025-11-01 17:11:03.456372	t
8001	470	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-21 23:31:01.124619	t
8002	626	Thể thao và sức khỏe mỗi ngày	{general}	2025-11-04 16:53:18.288527	t
8003	498	Học lập trình Python cơ bản	{travel,vietnam}	2025-10-01 19:02:04.41648	t
8004	241	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-11-10 11:12:42.840112	f
8005	245	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-16 21:49:27.746176	t
8006	497	Âm nhạc và cuộc sống	{tech,python}	2025-09-30 19:55:16.616097	t
8007	630	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-11 10:26:28.157567	f
8008	816	Học lập trình Python cơ bản	{ai,machinelearning}	2025-11-05 15:40:03.664818	t
8009	963	Âm nhạc và cuộc sống	{food,vietnam}	2025-11-05 06:11:55.85599	t
8010	177	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-03 06:54:19.34327	f
8011	0	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-10-16 19:32:25.355589	f
8012	466	Âm nhạc và cuộc sống	{review,coffee}	2025-09-28 21:27:02.418519	t
8013	855	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-09 19:38:23.808563	t
8014	56	Khám phá du lịch Việt Nam	{food,vietnam}	2025-10-29 16:31:10.890055	t
8015	936	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-11-03 19:01:30.905158	f
8016	924	Học lập trình Python cơ bản	{tech,python}	2025-11-03 06:48:34.447205	f
8017	387	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-11-04 16:56:09.066764	t
8018	424	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-03 19:37:10.389642	t
8019	932	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-10-05 03:14:26.167106	t
8020	955	Khám phá du lịch Việt Nam	{general}	2025-10-05 14:18:25.964813	t
8021	266	Giới thiệu công nghệ AI hiện đại	{general}	2025-10-15 16:14:07.751408	t
8022	771	Học lập trình Python cơ bản	{food,vietnam}	2025-10-13 08:53:02.415909	t
8023	774	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-23 17:08:13.914358	f
8024	99	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-28 14:55:23.670525	t
8025	25	Âm nhạc và cuộc sống	{general}	2025-10-30 20:20:02.793265	t
8026	9	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-11-09 15:10:49.2884	t
8027	939	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-24 07:14:00.394118	t
8028	775	Học lập trình Python cơ bản	{food,vietnam}	2025-09-30 15:05:08.628217	t
8029	267	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-11-11 08:10:27.230417	f
8030	811	Giới thiệu công nghệ AI hiện đại	{general}	2025-09-30 07:27:02.289439	t
8031	689	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-11 18:28:40.937519	t
8032	95	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-09-30 04:08:42.995537	t
8033	542	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-28 23:54:34.318528	t
8034	377	Khám phá du lịch Việt Nam	{general}	2025-10-15 16:06:19.785792	t
8035	931	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-11-01 13:02:15.170446	t
8036	253	Khám phá du lịch Việt Nam	{travel,vietnam}	2025-10-26 04:17:09.537997	t
8037	321	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-03 16:45:17.60529	t
8038	224	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-10 12:28:04.890793	t
8039	271	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-10 20:31:26.414659	t
8040	451	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-11-10 05:28:00.157385	t
8041	28	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-25 05:13:04.754052	t
8042	122	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-07 21:24:16.576383	t
8043	20	Âm nhạc và cuộc sống	{food,vietnam}	2025-11-07 06:09:49.922826	t
8044	210	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-31 12:06:40.213937	t
8045	888	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-09-29 07:38:30.983985	t
8046	519	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-06 17:00:36.719249	t
8047	950	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-11-04 06:21:44.322387	t
8048	504	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-10-05 14:49:51.675128	f
8049	277	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-17 00:53:00.019689	t
8050	173	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-29 09:19:21.57543	t
8051	761	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-18 15:34:12.834125	t
8052	710	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-15 02:03:52.899853	f
8053	12	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-07 03:07:03.398317	t
8054	205	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-11 14:54:41.997504	t
8055	552	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-25 16:38:43.862443	t
8056	426	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-02 23:32:34.794451	t
8057	702	Âm nhạc và cuộc sống	{food,vietnam}	2025-09-30 16:45:36.636136	t
8058	607	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-03 09:37:19.970538	t
8059	74	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-16 13:01:21.047206	f
8060	810	Âm nhạc và cuộc sống	{review,coffee}	2025-11-09 19:22:46.34994	t
8061	451	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-09 00:52:32.405033	t
8062	825	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-07 23:33:56.09012	t
8063	349	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-28 04:07:40.161221	t
8064	316	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-11-11 08:32:50.713485	t
8065	666	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-16 13:05:37.903485	f
8066	749	Review các quán cà phê nổi tiếng	{general}	2025-10-20 12:38:23.023994	t
8067	118	Khám phá du lịch Việt Nam	{tech,python}	2025-11-09 07:38:34.06759	t
8068	812	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-04 05:36:40.157115	t
8069	314	Khám phá du lịch Việt Nam	{food,vietnam}	2025-11-01 07:57:32.004904	t
8070	772	Âm nhạc và cuộc sống	{travel,vietnam}	2025-10-24 17:20:06.956861	f
8071	110	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-10-27 01:22:22.187243	t
8072	479	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-21 14:49:10.27621	t
8073	761	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-14 21:29:55.736074	t
8074	651	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-30 18:14:37.821581	t
8075	295	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-10 08:39:55.725368	t
8076	69	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-13 12:15:20.026998	t
8077	54	Học lập trình Python cơ bản	{travel,vietnam}	2025-10-23 17:24:46.26377	f
8078	586	Khám phá du lịch Việt Nam	{travel,vietnam}	2025-10-22 15:01:13.009437	t
8079	427	Âm nhạc và cuộc sống	{travel,vietnam}	2025-10-14 07:24:20.049253	t
8080	962	Học lập trình Python cơ bản	{food,vietnam}	2025-10-24 07:08:29.825087	t
8081	716	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-13 08:40:32.024122	t
8082	950	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-31 04:05:03.16028	f
8083	882	Khám phá du lịch Việt Nam	{food,vietnam}	2025-10-02 22:14:28.003167	t
8084	795	Âm nhạc và cuộc sống	{tech,python}	2025-11-11 12:18:51.023101	f
8085	731	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-11-05 19:50:55.409442	t
8086	279	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-27 23:28:04.425711	f
8087	999	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-28 02:40:43.044107	t
8088	259	Học lập trình Python cơ bản	{tech,python}	2025-11-01 05:56:24.826366	t
8089	446	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-31 17:38:41.244467	t
8090	812	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-19 22:33:05.824591	t
8091	628	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-26 23:54:57.758687	t
8092	61	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-10-25 00:53:17.88455	t
8093	689	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-31 12:21:48.292622	t
8094	237	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-05 02:12:11.01067	f
8095	743	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-11 03:55:14.402091	t
8096	152	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-10 04:33:57.867164	t
8097	709	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-05 07:03:17.235792	t
8098	242	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-01 14:39:41.081176	t
8099	932	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-04 15:06:26.967526	t
8100	121	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-11-01 02:06:17.647807	t
8101	725	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-26 00:00:28.061743	t
8102	459	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-10 19:28:48.373866	t
8103	178	Khám phá du lịch Việt Nam	{tech,python}	2025-10-14 08:34:41.959739	t
8104	735	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-15 18:19:38.606909	t
8105	692	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-02 08:45:24.940268	t
8106	252	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-11-01 01:46:31.020707	t
8107	209	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-06 12:52:21.371308	f
8108	714	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-03 08:44:50.127988	t
8109	702	Khám phá du lịch Việt Nam	{tech,python}	2025-10-05 06:09:35.632216	t
8110	631	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-14 05:54:21.092666	t
8111	538	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-28 08:46:35.944215	t
8112	652	Giới thiệu công nghệ AI hiện đại	{general}	2025-10-12 01:34:17.535381	t
8113	381	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-09 19:23:32.255168	t
8114	217	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-05 15:58:52.991939	t
8115	248	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-04 01:05:00.640001	t
8116	79	Học lập trình Python cơ bản	{review,coffee}	2025-11-05 23:48:46.123708	t
8117	128	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-26 19:53:21.293443	t
8118	765	Học lập trình Python cơ bản	{food,vietnam}	2025-11-04 11:16:05.130693	t
8119	531	Giới thiệu công nghệ AI hiện đại	{general}	2025-10-02 00:24:34.608954	t
8120	333	Học lập trình Python cơ bản	{travel,vietnam}	2025-10-22 10:00:26.976689	t
8121	673	Học lập trình Python cơ bản	{tech,python}	2025-11-04 09:47:16.38452	t
8122	582	Khám phá du lịch Việt Nam	{review,coffee}	2025-11-06 17:10:55.579253	t
8123	976	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-11-01 17:39:39.420736	t
8124	866	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-10-07 20:44:11.103279	t
8125	718	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-16 08:02:41.067578	t
8126	608	Âm nhạc và cuộc sống	{review,coffee}	2025-10-05 21:29:47.797698	t
8127	928	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-19 13:26:44.478923	t
8128	613	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-09-28 18:09:09.924189	t
8129	490	Review các quán cà phê nổi tiếng	{general}	2025-11-05 19:48:12.199784	t
8130	707	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-11-06 15:41:58.795621	t
8131	836	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-15 02:13:20.300323	t
8132	606	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-23 20:48:27.10357	t
8133	581	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-19 09:47:42.058812	f
8134	328	Khám phá du lịch Việt Nam	{tech,python}	2025-10-22 08:30:35.082153	t
8135	955	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-31 08:09:43.586557	f
8136	198	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-11-09 00:42:15.55997	t
8137	682	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-20 02:00:50.9082	t
8138	559	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-02 12:35:53.676398	t
8139	288	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-10-29 21:10:20.526485	t
8140	988	Khám phá du lịch Việt Nam	{tech,python}	2025-11-05 18:56:01.551508	t
8141	59	Âm nhạc và cuộc sống	{review,coffee}	2025-11-04 08:52:53.906202	t
8142	258	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-06 04:31:21.330799	t
8143	932	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-18 00:05:47.077741	f
8144	497	Học lập trình Python cơ bản	{travel,vietnam}	2025-10-30 14:17:40.817046	t
8145	715	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-11-03 18:03:57.523419	t
8146	952	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-31 01:47:27.001295	t
8147	94	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-28 12:57:23.28929	t
8148	253	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-10-13 20:40:01.119625	t
8149	550	Âm nhạc và cuộc sống	{travel,vietnam}	2025-10-25 23:02:24.559908	t
8150	675	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-07 23:33:34.717656	t
8151	362	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-22 09:09:55.001272	t
8152	571	Học lập trình Python cơ bản	{food,vietnam}	2025-11-08 11:51:23.621691	f
8153	600	Khám phá du lịch Việt Nam	{food,vietnam}	2025-10-11 14:09:02.519445	t
8154	743	Review các quán cà phê nổi tiếng	{general}	2025-10-19 11:36:26.260285	t
8155	765	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-02 06:03:53.151752	t
8156	400	Âm nhạc và cuộc sống	{review,coffee}	2025-10-21 12:01:09.714929	t
8157	340	Âm nhạc và cuộc sống	{tech,python}	2025-10-22 12:12:44.963121	t
8158	479	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-20 10:20:06.845317	f
8159	986	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-12 12:05:54.652407	t
8160	723	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-15 19:11:29.96389	t
8161	203	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-11 16:46:28.213844	t
8162	600	Âm nhạc và cuộc sống	{tech,python}	2025-11-08 15:14:52.723013	t
8163	371	Học lập trình Python cơ bản	{tech,python}	2025-10-10 14:41:26.871581	f
8164	83	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-09-30 11:06:47.793362	t
8165	455	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-25 08:58:24.840151	t
8166	454	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-18 03:58:35.630993	t
8167	218	Âm nhạc và cuộc sống	{review,coffee}	2025-10-31 20:28:45.252951	t
8168	596	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-01 03:37:18.552734	t
8169	418	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-11-09 10:50:19.777497	t
8170	941	Khám phá du lịch Việt Nam	{tech,python}	2025-11-08 03:25:00.876738	t
8171	295	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-11-08 15:17:01.659517	t
8172	366	Học lập trình Python cơ bản	{food,vietnam}	2025-10-18 05:25:35.563164	t
8173	939	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-02 13:16:14.847437	t
8174	512	Âm nhạc và cuộc sống	{review,coffee}	2025-11-05 17:39:47.75393	t
8175	917	Âm nhạc và cuộc sống	{tech,python}	2025-10-09 12:50:10.287121	t
8176	83	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-08 15:09:00.045382	t
8177	912	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-03 07:18:36.642034	t
8178	184	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-08 04:44:13.836545	t
8179	296	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-12 01:01:41.058905	t
8180	938	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-06 14:07:10.573704	t
8181	127	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-10-08 19:43:57.435976	t
8182	56	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-31 14:51:12.211313	t
8183	633	Âm nhạc và cuộc sống	{review,coffee}	2025-10-31 14:19:26.455758	t
8184	20	Khám phá du lịch Việt Nam	{tech,python}	2025-10-21 13:03:37.692364	f
8185	728	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-20 23:14:04.549995	t
8186	527	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-10-04 05:50:18.176395	t
8187	885	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-10-29 14:34:40.356038	t
8188	759	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-11-01 16:30:56.751933	t
8189	297	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-07 02:53:06.322387	t
8190	821	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-29 01:22:02.062977	t
8191	847	Học lập trình Python cơ bản	{review,coffee}	2025-10-11 15:36:29.894443	t
8192	606	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-08 03:02:03.570073	t
8193	584	Học lập trình Python cơ bản	{food,vietnam}	2025-11-02 06:55:02.003572	t
8194	250	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-21 12:51:26.135311	t
8195	205	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-10-08 03:02:06.683972	t
8196	414	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-01 13:42:35.063835	t
8197	350	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-19 10:48:22.751822	t
8198	754	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-11-02 20:48:29.315311	f
8199	397	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-15 18:07:33.627313	t
8200	780	Học lập trình Python cơ bản	{food,vietnam}	2025-10-18 18:53:35.060976	t
8201	242	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-10 15:38:35.505	t
8202	808	Khám phá du lịch Việt Nam	{general}	2025-10-06 10:29:56.062252	t
8203	315	Review các quán cà phê nổi tiếng	{general}	2025-11-05 18:43:29.289585	f
8204	489	Âm nhạc và cuộc sống	{tech,python}	2025-09-29 11:38:49.393568	t
8205	974	Review các quán cà phê nổi tiếng	{general}	2025-09-28 10:38:36.872081	t
8206	167	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-11-11 11:30:50.383273	f
8207	92	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-01 15:40:26.757687	t
8208	869	Học lập trình Python cơ bản	{food,vietnam}	2025-11-10 23:03:01.216597	t
8209	987	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-06 04:23:29.088287	t
8210	467	Âm nhạc và cuộc sống	{general}	2025-10-17 15:51:43.218811	t
8211	957	Học lập trình Python cơ bản	{tech,python}	2025-10-07 02:21:36.554176	t
8212	822	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-11-05 15:25:57.076525	t
8213	884	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-11-12 06:26:46.588694	t
8214	136	Review các quán cà phê nổi tiếng	{review,coffee}	2025-09-28 19:30:10.003499	t
8215	82	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-10-12 16:43:44.390175	f
8216	636	Âm nhạc và cuộc sống	{tech,python}	2025-10-27 03:04:36.796511	t
8217	785	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-15 07:16:45.011407	t
8218	199	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-09-28 15:16:16.364935	t
8219	58	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-11-06 20:35:50.525435	t
8220	701	Học lập trình Python cơ bản	{food,vietnam}	2025-10-11 12:27:06.332007	t
8221	374	Review các quán cà phê nổi tiếng	{general}	2025-11-02 07:32:32.101322	t
8222	60	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-10-17 14:03:41.37004	t
8223	696	Âm nhạc và cuộc sống	{review,coffee}	2025-11-11 16:24:51.651128	f
8224	769	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-12 05:58:38.853235	t
8225	392	Khám phá du lịch Việt Nam	{general}	2025-11-11 08:01:52.996128	t
8226	673	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-09-29 08:51:02.704542	t
8227	406	Âm nhạc và cuộc sống	{general}	2025-09-30 08:43:25.655967	f
8228	943	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-11-09 20:41:55.963187	f
8229	743	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-10 08:19:03.205965	t
8230	297	Âm nhạc và cuộc sống	{general}	2025-10-07 01:04:06.26944	t
8231	744	Âm nhạc và cuộc sống	{review,coffee}	2025-10-14 18:11:11.453029	f
8232	677	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-09 06:00:43.330289	t
8233	728	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-09-30 12:12:58.142969	t
8234	14	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-09 22:12:16.173065	t
8235	410	Khám phá du lịch Việt Nam	{food,vietnam}	2025-10-07 09:14:30.54752	t
8236	348	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-25 17:37:36.009984	t
8237	351	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-04 09:40:28.105976	f
8238	414	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-28 21:12:25.582814	t
8239	848	Khám phá du lịch Việt Nam	{general}	2025-10-05 04:49:54.801029	t
8240	331	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-12 20:03:43.356475	f
8241	419	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-11-03 10:23:52.518218	t
8242	134	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-30 17:43:51.985266	f
8243	593	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-26 03:58:02.062522	t
8244	745	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-10 17:31:27.996769	t
8245	622	Giới thiệu công nghệ AI hiện đại	{general}	2025-10-24 10:40:25.132375	f
8246	728	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-25 17:18:24.967629	t
8247	548	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-15 10:03:06.995743	t
8248	943	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-07 19:00:26.808376	f
8249	666	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-10-10 12:44:38.16621	t
8250	166	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-10 14:57:25.834885	t
8251	837	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-20 01:37:40.387761	t
8252	77	Học lập trình Python cơ bản	{travel,vietnam}	2025-10-06 21:56:15.39391	f
8253	932	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-02 16:42:59.423286	t
8254	105	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-10-25 17:55:58.902161	t
8255	611	Học lập trình Python cơ bản	{ai,machinelearning}	2025-11-10 07:02:24.079412	t
8256	54	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-16 14:17:48.536426	t
8257	33	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-04 14:33:09.149169	f
8258	364	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-02 11:44:05.666029	t
8259	418	Học lập trình Python cơ bản	{tech,python}	2025-10-18 22:27:24.088817	t
8260	793	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-10 23:49:51.375174	t
8261	612	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-23 11:48:37.86135	t
8262	156	Khám phá du lịch Việt Nam	{general}	2025-09-28 18:35:27.409335	t
8263	45	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-13 18:05:54.679178	t
8264	685	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-11 20:37:53.012108	t
8265	965	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-10-19 20:12:30.018443	t
8266	153	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-11-03 12:46:25.165749	t
8267	273	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-03 02:09:03.578048	t
8268	504	Học lập trình Python cơ bản	{review,coffee}	2025-11-12 09:40:49.289206	t
8269	947	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-11-01 14:34:10.951699	f
8270	590	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-11 06:22:57.061058	t
8271	694	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-11-09 06:41:03.319157	t
8272	783	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-06 18:14:19.310889	t
8273	407	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-20 01:51:01.942098	t
8274	205	Review các quán cà phê nổi tiếng	{general}	2025-10-20 04:51:38.992617	t
8275	119	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-23 21:52:04.285647	t
8276	562	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-11-07 18:51:34.293106	t
8277	324	Học lập trình Python cơ bản	{general}	2025-09-29 09:13:09.257781	t
8278	316	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-28 21:46:48.098979	t
8279	690	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-18 15:08:12.560322	t
8280	556	Học lập trình Python cơ bản	{food,vietnam}	2025-11-06 13:00:12.442958	t
8281	289	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-11-01 02:42:17.799078	t
8282	805	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-20 14:56:58.886577	t
8283	758	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-14 01:37:29.331246	f
8284	980	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-14 08:43:47.279558	t
8285	118	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-25 11:23:46.339837	t
8286	588	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-15 09:34:27.740594	t
8287	418	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-10-27 20:11:54.027343	t
8288	818	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-10-05 13:26:15.839522	t
8289	900	Học lập trình Python cơ bản	{food,vietnam}	2025-10-25 19:53:32.295886	f
8290	759	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-01 22:50:31.934402	t
8291	124	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-16 18:45:00.761248	t
8292	263	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-10-16 22:40:15.332765	t
8293	641	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-06 04:04:30.929434	t
8294	464	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-11-08 07:36:10.581401	t
8295	906	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-07 01:52:38.33057	t
8296	985	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-23 23:08:04.787656	t
8297	538	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-10-09 07:24:40.120637	t
8298	613	Học lập trình Python cơ bản	{tech,python}	2025-11-08 10:23:07.061981	f
8299	696	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-03 04:55:46.118107	f
8300	980	Thể thao và sức khỏe mỗi ngày	{general}	2025-11-04 09:09:41.532777	t
8301	165	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-03 19:17:28.515023	t
8302	709	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-11-03 16:17:52.006891	t
8303	71	Học lập trình Python cơ bản	{tech,python}	2025-10-24 10:30:45.735271	t
8304	618	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-12 00:16:17.208036	f
8305	12	Âm nhạc và cuộc sống	{travel,vietnam}	2025-10-29 21:49:11.129393	f
8306	321	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-27 10:50:43.01368	t
8307	18	Âm nhạc và cuộc sống	{food,vietnam}	2025-11-10 08:29:42.343641	t
8308	870	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-26 13:21:36.505493	t
8309	155	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-11-09 09:18:33.225681	t
8310	345	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-10-27 08:01:59.66966	t
8311	133	Học lập trình Python cơ bản	{general}	2025-10-12 03:16:14.406606	f
8312	698	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-13 18:07:15.198185	t
8313	196	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-30 13:56:15.622311	f
8314	49	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-10-05 07:45:09.73517	t
8315	746	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-11-12 05:28:35.732023	t
8316	750	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-09-28 14:48:52.665934	t
8317	283	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-04 19:36:28.566514	t
8318	706	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-01 23:37:05.285625	f
8319	206	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-24 07:52:46.028769	t
8320	713	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-02 22:36:08.172424	t
8321	826	Học lập trình Python cơ bản	{general}	2025-10-24 03:22:48.664257	f
8322	137	Review các quán cà phê nổi tiếng	{tech,python}	2025-11-01 01:50:44.264714	f
8323	976	Học lập trình Python cơ bản	{ai,machinelearning}	2025-11-01 14:56:05.166933	t
8324	799	Học lập trình Python cơ bản	{food,vietnam}	2025-11-10 10:52:10.063058	t
8325	654	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-12 15:45:13.962214	t
8326	361	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-11-05 16:53:43.925483	t
8327	278	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-11 03:33:39.822752	t
8328	173	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-28 09:43:45.062884	t
8329	310	Âm nhạc và cuộc sống	{tech,python}	2025-11-02 19:13:03.672912	f
8330	375	Học lập trình Python cơ bản	{ai,machinelearning}	2025-11-01 22:50:09.400524	t
8331	862	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-09 11:28:43.982546	t
8332	316	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-10-29 20:19:28.232176	t
8333	303	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-11 01:37:20.408055	t
8334	331	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-29 10:50:16.718566	t
8335	243	Review các quán cà phê nổi tiếng	{general}	2025-09-28 21:32:59.434409	t
8336	259	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-02 04:56:12.622635	t
8337	428	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-31 14:55:31.143086	t
8338	149	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-10-12 23:29:29.338854	t
8339	496	Âm nhạc và cuộc sống	{general}	2025-11-10 20:55:50.912363	t
8340	952	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-08 11:54:35.77974	t
8341	212	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-11-06 01:06:05.999071	t
8342	852	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-08 01:36:22.506911	t
8343	408	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-11-03 13:32:28.454055	f
8344	863	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-12 05:53:37.479536	t
8345	34	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-08 08:49:05.921117	t
8346	46	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-09-29 23:39:02.408095	f
8347	384	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-11-02 11:27:50.094752	t
8348	984	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-11-03 12:01:25.581495	t
8349	660	Review các quán cà phê nổi tiếng	{general}	2025-10-27 09:59:23.502454	t
8350	784	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-04 17:47:49.978692	t
8351	222	Học lập trình Python cơ bản	{review,coffee}	2025-10-05 01:38:53.377664	t
8352	517	Học lập trình Python cơ bản	{food,vietnam}	2025-10-23 16:42:34.998466	f
8353	394	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-30 14:50:49.599633	t
8354	601	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-01 13:40:10.89934	t
8355	512	Review các quán cà phê nổi tiếng	{tech,python}	2025-11-08 04:36:59.470583	f
8356	856	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-11-10 21:28:50.734496	t
8357	884	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-08 11:52:42.085574	t
8358	428	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-26 07:33:56.063753	f
8359	737	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-06 11:31:27.956766	t
8360	579	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-11 04:31:19.624943	t
8361	672	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-11-03 14:04:24.087503	t
8362	594	Khám phá du lịch Việt Nam	{tech,python}	2025-10-02 16:59:49.069121	t
8363	789	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-11-09 23:03:19.865821	t
8364	947	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-12 04:21:40.845187	t
8365	913	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-05 22:33:33.378434	t
8366	343	Học lập trình Python cơ bản	{review,coffee}	2025-10-28 00:47:57.011307	t
8367	574	Giới thiệu công nghệ AI hiện đại	{general}	2025-10-19 15:22:30.712848	t
8368	622	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-11-01 07:50:58.764214	f
8369	551	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-30 16:43:37.876293	t
8370	348	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-11-09 01:19:25.292633	t
8371	511	Khám phá du lịch Việt Nam	{travel,vietnam}	2025-11-07 09:23:28.647824	t
8372	215	Học lập trình Python cơ bản	{general}	2025-11-10 16:07:39.798508	t
8373	535	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-10-19 10:27:47.131448	t
8374	263	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-11-10 12:12:46.455418	t
8375	452	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-02 21:43:50.027729	t
8376	441	Học lập trình Python cơ bản	{food,vietnam}	2025-10-21 20:41:23.801536	t
8377	114	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-13 00:29:02.331722	f
8378	432	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-09-29 08:13:21.559004	t
8379	620	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-08 19:57:40.23908	t
8380	576	Âm nhạc và cuộc sống	{general}	2025-10-15 11:12:02.210078	t
8381	851	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-11-04 03:11:52.53321	t
8382	797	Học lập trình Python cơ bản	{food,vietnam}	2025-10-16 14:04:35.754987	t
8383	790	Học lập trình Python cơ bản	{review,coffee}	2025-10-01 13:25:51.573481	t
8384	460	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-10 17:16:26.024745	t
8385	357	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-10-07 17:08:05.473067	f
8386	889	Review các quán cà phê nổi tiếng	{general}	2025-11-02 15:53:46.688646	t
8387	464	Khám phá du lịch Việt Nam	{tech,python}	2025-10-29 11:18:19.177473	f
8388	883	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-21 05:51:43.840165	t
8389	91	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-10-13 09:33:59.672085	t
8390	340	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-30 11:24:05.255334	t
8391	891	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-05 18:26:46.713829	t
8392	861	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-10-20 08:11:44.857235	f
8393	118	Học lập trình Python cơ bản	{tech,python}	2025-10-09 17:43:17.617428	t
8394	55	Âm nhạc và cuộc sống	{review,coffee}	2025-10-17 08:17:09.669519	f
8395	803	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-18 23:20:54.503061	f
8396	202	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-10-17 04:46:21.065232	f
8397	962	Khám phá du lịch Việt Nam	{food,vietnam}	2025-10-01 01:41:15.237112	t
8398	648	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-18 17:34:10.739822	f
8399	731	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-10-21 20:06:39.593893	t
8400	876	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-11-07 03:21:14.698847	t
8401	530	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-05 01:24:28.791514	t
8402	996	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-18 22:40:31.839314	t
8403	56	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-06 17:30:33.476709	t
8404	472	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-11 02:34:35.130198	t
8405	447	Review các quán cà phê nổi tiếng	{general}	2025-11-05 15:40:31.176332	t
8406	762	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-21 00:47:12.024191	t
8407	852	Review các quán cà phê nổi tiếng	{tech,python}	2025-09-29 17:20:02.273025	t
8408	898	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-03 03:19:33.020366	t
8409	683	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-29 00:54:50.949933	f
8410	717	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-21 08:41:48.715798	f
8411	259	Âm nhạc và cuộc sống	{review,coffee}	2025-11-06 20:26:40.090501	t
8412	456	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-09 09:39:09.962927	t
8413	392	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-10-14 16:10:10.73593	t
8414	997	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-11-10 04:54:04.533798	t
8415	81	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-30 14:26:03.850805	t
8416	858	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-26 10:55:29.890154	f
8417	146	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-17 23:01:07.491485	t
8418	119	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-07 22:33:52.574912	t
8419	2	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-03 12:12:43.823062	t
8420	119	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-12 00:09:03.067024	t
8421	628	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-25 14:11:21.788922	t
8422	869	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-23 07:13:08.377291	t
8423	681	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-03 23:59:32.424182	f
8424	594	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-11-09 12:57:41.718	t
8425	477	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-09 03:01:16.746266	t
8426	829	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-14 05:17:53.828999	t
8427	76	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-06 18:33:09.503321	f
8428	779	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-09 20:22:48.486573	t
8429	10	Học lập trình Python cơ bản	{travel,vietnam}	2025-10-23 14:30:21.351371	f
8430	834	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-19 12:31:29.779152	t
8431	555	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-16 22:46:26.704396	t
8432	482	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-21 12:02:03.399193	t
8433	77	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-18 16:52:41.143554	t
8434	628	Khám phá du lịch Việt Nam	{food,vietnam}	2025-10-04 17:25:30.828509	t
8435	883	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-07 12:37:17.623514	t
8436	738	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-02 21:50:28.810368	t
8437	210	Học lập trình Python cơ bản	{review,coffee}	2025-11-12 01:18:25.545138	t
8438	447	Học lập trình Python cơ bản	{review,coffee}	2025-10-27 19:42:11.875188	t
8439	868	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-09-29 02:52:29.341185	t
8440	286	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-18 23:26:10.363584	t
8441	245	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-11-10 03:31:01.703706	f
8442	363	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-08 21:07:57.711136	t
8443	645	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-09-28 18:44:58.599611	t
8444	677	Âm nhạc và cuộc sống	{review,coffee}	2025-10-31 21:42:34.56957	t
8445	759	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-11-08 08:13:27.708268	t
8446	578	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-22 04:06:32.522005	t
8447	77	Giới thiệu công nghệ AI hiện đại	{general}	2025-11-02 17:01:18.830233	t
8448	548	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-09-29 21:49:56.802348	t
8449	889	Khám phá du lịch Việt Nam	{food,vietnam}	2025-10-06 19:44:52.897834	t
8450	996	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-10 08:44:37.151318	t
8451	362	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-11-01 00:43:12.021198	t
8452	1	Âm nhạc và cuộc sống	{review,coffee}	2025-11-02 09:00:41.123994	t
8453	996	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-10-04 23:36:59.580179	t
8454	315	Âm nhạc và cuộc sống	{travel,vietnam}	2025-09-29 01:02:26.220861	t
8455	894	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-09 04:45:24.104878	t
8456	301	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-29 16:09:32.694484	t
8457	985	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-17 02:27:10.29803	t
8458	913	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-10-12 16:42:11.600314	t
8459	634	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-10-19 23:32:17.161489	f
8460	200	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-17 06:00:03.824466	t
8461	32	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-09 11:28:26.85511	t
8462	447	Học lập trình Python cơ bản	{tech,python}	2025-10-19 14:14:12.826465	t
8463	355	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-10-18 10:46:57.599432	t
8464	379	Âm nhạc và cuộc sống	{review,coffee}	2025-10-19 06:05:03.068741	t
8465	421	Âm nhạc và cuộc sống	{tech,python}	2025-10-25 09:50:27.517617	t
8466	462	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-11-07 06:41:11.70816	t
8467	704	Giới thiệu công nghệ AI hiện đại	{general}	2025-10-04 15:57:45.094478	t
8468	432	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-06 23:30:05.638995	t
8469	581	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-02 19:18:44.229618	t
8470	322	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-11-01 20:45:27.875765	t
8471	335	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-06 16:35:55.333997	t
8472	166	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-11-03 06:38:55.648463	t
8473	64	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-25 07:19:14.326138	f
8474	729	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-30 19:38:29.550079	t
8475	639	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-19 14:57:06.414802	t
8476	226	Âm nhạc và cuộc sống	{travel,vietnam}	2025-10-01 04:43:08.303864	t
8477	79	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-13 03:21:54.959921	t
8478	391	Review các quán cà phê nổi tiếng	{tech,python}	2025-11-01 03:22:28.205319	t
8479	542	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-07 02:34:28.647352	t
8480	84	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-15 16:51:27.141463	t
8481	91	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-05 10:51:57.90661	t
8482	469	Review các quán cà phê nổi tiếng	{general}	2025-10-14 02:39:37.457184	t
8483	798	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-17 11:57:57.487269	t
8484	617	Thể thao và sức khỏe mỗi ngày	{general}	2025-11-06 23:09:06.022145	f
8485	202	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-10-11 17:19:02.010894	t
8486	772	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-11-06 00:57:45.694738	t
8487	322	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-09 05:57:46.096279	t
8488	963	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-11 12:43:34.8246	t
8489	761	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-08 05:22:56.561967	f
8490	254	Âm nhạc và cuộc sống	{general}	2025-10-06 11:07:00.208502	t
8491	414	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-26 16:32:56.34248	t
8492	27	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-08 19:15:06.231635	t
8493	342	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-11 17:40:07.484226	t
8494	320	Học lập trình Python cơ bản	{travel,vietnam}	2025-10-14 16:23:25.810842	t
8495	66	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-08 11:49:42.505386	t
8496	40	Khám phá du lịch Việt Nam	{general}	2025-10-14 03:55:11.091895	t
8497	61	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-10 05:34:50.066283	t
8498	164	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-29 09:42:26.03225	f
8499	762	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-11 17:01:46.533303	f
8500	764	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-28 06:10:41.549954	t
8501	719	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-27 14:42:17.258228	t
8502	438	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-03 20:22:59.469702	t
8503	886	Giới thiệu công nghệ AI hiện đại	{general}	2025-10-05 16:34:54.168906	t
8504	777	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-11-10 05:22:23.004213	t
8505	929	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-07 03:50:26.845927	t
8506	582	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-24 06:55:12.938986	t
8507	67	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-10-18 05:55:41.094481	t
8508	867	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-06 22:36:13.258639	t
8509	268	Học lập trình Python cơ bản	{ai,machinelearning}	2025-11-08 07:28:45.532313	t
8510	982	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-11-01 11:36:37.129631	t
8511	73	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-30 03:18:24.426391	f
8512	20	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-09-30 15:26:28.839817	f
8513	469	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-11-01 06:24:43.934234	t
8514	86	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-11-06 17:06:20.424203	t
8515	472	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-23 17:00:07.804442	t
8516	718	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-10 09:03:08.253378	t
8517	153	Âm nhạc và cuộc sống	{review,coffee}	2025-10-09 11:40:53.772243	t
8518	318	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-05 18:55:40.877164	f
8519	55	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-27 08:52:54.387948	t
8520	732	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-21 00:18:13.736352	t
8521	820	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-14 19:13:50.518162	t
8522	269	Âm nhạc và cuộc sống	{food,vietnam}	2025-11-04 08:32:45.576468	f
8523	606	Khám phá du lịch Việt Nam	{food,vietnam}	2025-10-14 06:10:25.27427	t
8524	796	Học lập trình Python cơ bản	{review,coffee}	2025-10-28 03:45:44.536622	t
8525	958	Khám phá du lịch Việt Nam	{travel,vietnam}	2025-10-23 15:14:54.515165	t
8526	466	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-10 18:30:47.228047	t
8527	681	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-23 18:28:22.465703	t
8528	644	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-01 12:05:03.767194	t
8529	436	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-02 04:31:27.121852	t
8530	642	Khám phá du lịch Việt Nam	{food,vietnam}	2025-10-20 00:14:29.125436	t
8531	828	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-02 03:16:50.68628	t
8532	682	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-12 01:34:09.174909	t
8533	783	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-21 09:08:18.766241	t
8534	428	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-11-02 06:58:53.095478	t
8535	540	Giới thiệu công nghệ AI hiện đại	{general}	2025-10-05 00:24:46.680827	t
8536	402	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-11-03 13:42:14.593006	t
8537	43	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-05 06:34:33.231647	t
8538	880	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-01 15:09:18.682417	f
8539	618	Học lập trình Python cơ bản	{tech,python}	2025-10-20 11:40:25.784396	t
8540	376	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-11-11 13:25:45.459101	t
8541	150	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-27 16:52:20.707194	t
8542	932	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-07 05:32:51.002981	t
8543	343	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-18 03:24:28.524366	t
8544	727	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-28 00:08:17.2585	t
8545	354	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-12 13:31:53.618883	t
8546	406	Học lập trình Python cơ bản	{tech,python}	2025-10-01 23:06:46.560128	t
8547	342	Âm nhạc và cuộc sống	{travel,vietnam}	2025-10-13 12:29:04.693751	t
8548	863	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-06 10:01:21.584391	t
8549	59	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-18 08:38:00.846811	t
8550	856	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-01 08:44:38.623375	t
8551	854	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-13 09:37:46.808042	t
8552	753	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-22 19:24:09.637854	f
8553	988	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-20 21:00:16.463821	f
8554	974	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-09-30 12:13:31.611502	t
8555	508	Học lập trình Python cơ bản	{travel,vietnam}	2025-10-07 14:10:49.096641	t
8556	690	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-02 18:08:09.552042	t
8557	751	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-10-27 23:17:36.633793	t
8558	680	Học lập trình Python cơ bản	{travel,vietnam}	2025-10-27 02:55:23.673833	f
8559	807	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-10-31 14:35:02.661497	t
8560	451	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-05 13:07:19.133398	t
8561	932	Âm nhạc và cuộc sống	{review,coffee}	2025-10-16 08:38:06.902859	t
8562	383	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-11-04 20:33:49.718515	t
8563	324	Học lập trình Python cơ bản	{travel,vietnam}	2025-11-08 18:19:25.775917	t
8564	3	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-01 21:58:08.784097	t
8565	277	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-24 03:44:57.085417	f
8566	260	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-06 08:20:24.772139	t
8567	845	Âm nhạc và cuộc sống	{tech,python}	2025-10-11 15:26:01.833447	f
8568	212	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-15 17:45:48.383417	t
8569	15	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-11 00:42:15.660847	t
8570	214	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-06 19:47:29.067701	t
8571	632	Âm nhạc và cuộc sống	{tech,python}	2025-10-27 12:22:07.352093	t
8572	169	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-22 02:11:47.921597	t
8573	175	Học lập trình Python cơ bản	{review,coffee}	2025-10-02 05:28:28.511068	t
8574	123	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-27 15:54:18.751566	t
8575	130	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-11 10:16:53.400279	f
8576	941	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-14 07:28:25.380843	t
8577	618	Âm nhạc và cuộc sống	{tech,python}	2025-10-06 05:22:49.992251	t
8578	86	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-11 16:45:03.447356	f
8579	560	Âm nhạc và cuộc sống	{food,vietnam}	2025-09-29 14:35:35.204031	t
8580	521	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-10-10 00:18:55.798493	t
8581	501	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-11-12 08:30:28.607542	t
8582	673	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-11-02 17:06:11.103487	t
8583	677	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-13 00:56:31.995238	t
8584	524	Âm nhạc và cuộc sống	{review,coffee}	2025-10-15 12:01:45.643889	t
8585	788	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-13 19:34:20.276539	t
8586	119	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-03 22:35:04.603298	t
8587	312	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-09-29 11:07:04.007923	t
8588	808	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-12 21:51:19.447868	t
8589	733	Khám phá du lịch Việt Nam	{food,vietnam}	2025-11-09 06:09:26.872062	t
8590	948	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-11-07 02:57:56.304508	t
8591	480	Âm nhạc và cuộc sống	{tech,python}	2025-11-02 03:56:05.29205	t
8592	994	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-10-10 23:48:16.75449	t
8593	24	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-11-08 15:24:59.675117	t
8594	183	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-15 17:06:11.630889	t
8595	627	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-14 22:13:25.043414	t
8596	974	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-09-28 13:45:57.078205	t
8597	458	Khám phá du lịch Việt Nam	{tech,python}	2025-10-01 10:18:43.172081	t
8598	560	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-11-04 00:33:37.108553	t
8599	749	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-30 07:36:26.702756	t
8600	188	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-28 22:30:51.828237	t
8601	971	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-11-06 06:09:09.671374	t
8602	654	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-11-01 10:36:56.450019	f
8603	544	Âm nhạc và cuộc sống	{tech,python}	2025-10-01 06:32:12.87855	f
8604	951	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-16 02:22:38.158327	t
8605	858	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-28 13:08:53.298167	t
8606	478	Học lập trình Python cơ bản	{travel,vietnam}	2025-11-08 22:59:26.944017	t
8607	713	Âm nhạc và cuộc sống	{tech,python}	2025-11-10 08:21:33.109339	t
8608	477	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-12 07:37:10.217805	f
8609	639	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-11 16:20:02.369019	t
8610	94	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-12 08:45:15.479073	f
8611	611	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-11-09 22:46:21.77361	t
8612	926	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-10 16:49:45.898412	t
8613	363	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-12 14:42:57.696944	t
8614	839	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-10-15 05:45:39.571101	t
8615	100	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-28 00:56:49.6466	t
8616	950	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-26 11:33:41.857352	f
8617	864	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-10-03 01:28:47.372706	f
8618	452	Âm nhạc và cuộc sống	{tech,python}	2025-10-13 05:56:54.067459	t
8619	474	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-24 09:45:27.542713	t
8620	573	Học lập trình Python cơ bản	{food,vietnam}	2025-11-11 05:56:43.950853	t
8621	406	Học lập trình Python cơ bản	{tech,python}	2025-10-02 14:49:54.195529	t
8622	382	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-02 12:13:09.256184	t
8623	670	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-23 16:47:10.061176	t
8624	180	Review các quán cà phê nổi tiếng	{general}	2025-10-17 11:14:55.349227	t
8625	195	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-14 14:04:14.755094	t
8626	483	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-11-01 03:21:15.996234	f
8627	915	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-22 00:35:48.550843	t
8628	401	Học lập trình Python cơ bản	{tech,python}	2025-11-06 13:53:11.897437	t
8629	875	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-09-29 09:39:44.369542	t
8630	632	Học lập trình Python cơ bản	{review,coffee}	2025-11-04 12:59:00.543668	t
8631	599	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-27 10:12:57.486691	f
8632	672	Âm nhạc và cuộc sống	{review,coffee}	2025-10-22 00:49:16.348047	t
8633	339	Âm nhạc và cuộc sống	{travel,vietnam}	2025-10-24 16:52:13.970973	t
8634	614	Học lập trình Python cơ bản	{travel,vietnam}	2025-10-17 19:39:28.885157	t
8635	99	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-16 17:57:56.611226	t
8636	666	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-11-09 15:23:13.326369	t
8637	227	Học lập trình Python cơ bản	{review,coffee}	2025-09-29 09:31:45.144917	t
8638	95	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-10-29 03:57:31.695692	t
8639	465	Âm nhạc và cuộc sống	{food,vietnam}	2025-11-07 04:12:59.855775	t
8640	803	Học lập trình Python cơ bản	{review,coffee}	2025-10-16 18:56:34.332035	t
8641	345	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-11-02 19:22:35.969235	t
8642	579	Giới thiệu công nghệ AI hiện đại	{general}	2025-10-28 16:20:52.700885	f
8643	702	Học lập trình Python cơ bản	{food,vietnam}	2025-10-21 15:46:53.796497	t
8644	315	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-02 08:16:28.499691	t
8645	570	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-18 20:53:33.432793	t
8646	123	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-09-29 22:11:14.751676	t
8647	678	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-19 06:41:39.705183	t
8648	379	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-03 22:59:46.358555	t
8649	849	Âm nhạc và cuộc sống	{review,coffee}	2025-10-11 06:22:09.972931	t
8650	814	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-29 03:35:46.525175	t
8651	102	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-11-06 08:37:05.58906	t
8652	179	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-03 08:40:43.611503	t
8653	531	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-19 04:04:43.173426	t
8654	780	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-12 23:28:21.700637	t
8655	150	Review các quán cà phê nổi tiếng	{review,coffee}	2025-09-30 19:27:27.946393	t
8656	104	Âm nhạc và cuộc sống	{tech,python}	2025-10-28 20:21:51.834495	t
8657	395	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-03 03:58:22.007835	t
8658	631	Khám phá du lịch Việt Nam	{travel,vietnam}	2025-10-10 02:48:32.748738	t
8659	132	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-30 11:38:37.479795	t
8660	107	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-11-07 15:00:13.680588	t
8661	280	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-04 19:37:01.602356	t
8662	156	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-19 10:59:23.66324	t
8663	62	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-24 00:00:05.888106	t
8664	115	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-16 10:18:14.969076	t
8665	911	Học lập trình Python cơ bản	{food,vietnam}	2025-11-11 12:17:05.888806	t
8666	143	Học lập trình Python cơ bản	{tech,python}	2025-10-28 06:12:46.776243	t
8667	50	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-13 20:09:55.496019	t
8668	131	Âm nhạc và cuộc sống	{review,coffee}	2025-11-05 00:40:10.278116	t
8669	260	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-09-30 23:28:34.701228	t
8670	306	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-31 18:19:02.524157	t
8671	226	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-07 04:41:29.919642	t
8672	384	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-19 09:29:41.202069	t
8673	584	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-02 16:57:00.036501	t
8674	750	Âm nhạc và cuộc sống	{review,coffee}	2025-09-30 04:59:41.592804	t
8675	934	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-11-12 00:18:29.681289	t
8676	365	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-06 18:11:11.596472	t
8677	469	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-16 06:27:27.467005	t
8678	555	Học lập trình Python cơ bản	{food,vietnam}	2025-10-27 09:38:04.890098	f
8679	689	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-10-12 17:46:50.551793	t
8680	208	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-26 19:14:06.299876	t
8681	517	Giới thiệu công nghệ AI hiện đại	{general}	2025-10-30 07:07:18.569973	t
8682	14	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-21 02:34:28.527994	t
8683	376	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-10-09 16:28:00.662717	t
8684	571	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-27 14:54:17.129685	t
8685	598	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-10-04 15:27:52.157717	t
8686	503	Âm nhạc và cuộc sống	{review,coffee}	2025-10-26 18:44:53.077233	t
8687	855	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-02 04:04:53.871781	t
8688	584	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-30 14:25:04.943927	t
8689	334	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-02 14:19:40.325512	f
8690	625	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-21 14:11:08.963971	t
8691	545	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-07 07:48:25.712825	t
8692	695	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-25 14:23:33.084294	f
8693	376	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-08 21:27:43.490045	t
8694	862	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-14 17:04:38.970411	t
8695	564	Khám phá du lịch Việt Nam	{tech,python}	2025-11-12 10:00:02.510641	t
8696	334	Âm nhạc và cuộc sống	{review,coffee}	2025-11-10 12:14:03.411916	t
8697	721	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-09-28 17:34:09.123512	t
8698	220	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-09-30 15:02:40.605147	t
8699	850	Thể thao và sức khỏe mỗi ngày	{general}	2025-09-29 21:42:50.79153	t
8700	345	Học lập trình Python cơ bản	{tech,python}	2025-10-10 22:31:24.753531	t
8701	822	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-11-09 20:56:59.700209	t
8702	985	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-10-03 04:32:17.400261	t
8703	784	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-02 01:02:26.817619	t
8704	969	Học lập trình Python cơ bản	{food,vietnam}	2025-10-21 19:24:55.477625	f
8705	652	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-24 01:14:20.65979	t
8706	645	Review các quán cà phê nổi tiếng	{general}	2025-11-02 23:48:28.242958	t
8707	870	Âm nhạc và cuộc sống	{general}	2025-11-10 08:47:43.78372	t
8708	181	Khám phá du lịch Việt Nam	{tech,python}	2025-11-01 21:27:10.343262	f
8709	371	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-04 00:29:30.295091	t
8710	609	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-28 13:41:32.136667	t
8711	12	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-10-31 17:40:32.537885	t
8712	940	Khám phá du lịch Việt Nam	{tech,python}	2025-10-14 08:36:09.593319	t
8713	583	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-16 09:42:08.581536	t
8714	542	Giới thiệu công nghệ AI hiện đại	{general}	2025-11-02 10:11:15.080196	t
8715	32	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-31 04:39:14.865532	t
8716	809	Âm nhạc và cuộc sống	{review,coffee}	2025-10-23 21:16:19.496478	f
8717	650	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-11-11 07:23:34.841579	t
8718	267	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-26 15:42:12.039856	t
8719	219	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-09 16:02:30.0636	t
8720	570	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-01 02:35:33.110492	t
8721	696	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-05 12:48:02.981428	f
8722	337	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-11-10 04:28:19.184115	t
8723	560	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-20 02:21:58.098245	t
8724	924	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-28 05:09:23.310067	t
8725	949	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-08 12:16:31.470952	t
8726	833	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-03 08:13:18.011095	t
8727	672	Thể thao và sức khỏe mỗi ngày	{general}	2025-11-06 17:12:01.988217	t
8728	182	Khám phá du lịch Việt Nam	{tech,python}	2025-10-13 00:04:23.492817	t
8729	629	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-11-07 10:41:13.509812	t
8730	710	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-24 19:32:08.482497	t
8731	863	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-11-08 02:07:00.911447	t
8732	857	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-19 01:45:27.644522	t
8733	478	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-08 18:49:14.813338	t
8734	329	Review các quán cà phê nổi tiếng	{general}	2025-10-19 23:43:55.162518	t
8735	618	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-11-03 10:57:50.027805	t
8736	554	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-25 03:56:43.552228	t
8737	695	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-16 05:18:26.135615	t
8738	428	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-08 18:37:34.423602	t
8739	976	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-16 08:12:59.515922	t
8740	424	Khám phá du lịch Việt Nam	{tech,python}	2025-10-27 01:44:57.088198	t
8741	6	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-17 05:20:29.50123	t
8742	721	Học lập trình Python cơ bản	{review,coffee}	2025-10-15 08:08:12.142573	f
8743	521	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-18 07:44:19.159191	t
8744	389	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-11-04 23:52:56.225785	t
8745	63	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-15 06:25:49.250625	t
8746	22	Âm nhạc và cuộc sống	{review,coffee}	2025-10-08 12:37:45.321729	t
8747	125	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-04 18:13:19.014298	t
8748	126	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-14 02:12:21.033037	t
8749	624	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-29 19:31:02.054766	t
8750	408	Âm nhạc và cuộc sống	{tech,python}	2025-10-01 09:33:02.019792	t
8751	412	Học lập trình Python cơ bản	{travel,vietnam}	2025-11-04 12:00:57.885319	t
8752	249	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-25 17:20:10.54571	t
8753	367	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-11-08 12:47:54.6456	f
8754	952	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-14 08:52:53.783048	t
8755	10	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-03 18:16:36.918966	t
8756	730	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-07 17:44:28.381033	t
8757	978	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-22 17:19:37.452108	t
8758	856	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-10-04 14:07:44.596645	t
8759	605	Học lập trình Python cơ bản	{review,coffee}	2025-10-05 05:14:07.867066	t
8760	68	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-12 10:48:02.464313	t
8761	922	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-07 01:24:24.292901	t
8762	97	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-26 11:20:01.869899	t
8763	233	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-28 18:30:19.202057	t
8764	71	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-01 02:54:45.479194	t
8765	839	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-09-29 09:43:45.179522	t
8766	762	Khám phá du lịch Việt Nam	{tech,python}	2025-11-05 04:03:15.400126	t
8767	365	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-11-06 06:41:24.705178	f
8768	422	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-09-29 18:49:10.491928	f
8769	562	Học lập trình Python cơ bản	{review,coffee}	2025-09-29 17:03:45.144606	f
8770	32	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-10-10 00:08:54.390655	t
8771	753	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-10-28 22:46:06.315111	t
8772	118	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-30 12:11:18.59319	t
8773	316	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-21 20:27:49.378208	t
8774	914	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-01 19:19:47.47327	t
8775	755	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-10-04 13:18:16.424629	t
8776	578	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-04 13:49:47.662379	t
8777	816	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-01 01:42:15.028052	t
8778	358	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-17 11:19:49.334794	t
8779	960	Âm nhạc và cuộc sống	{tech,python}	2025-10-06 15:24:37.215047	t
8780	593	Âm nhạc và cuộc sống	{tech,python}	2025-09-28 23:20:20.071746	t
8781	404	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-26 01:02:27.597859	t
8782	737	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-12 07:30:16.587677	t
8783	155	Âm nhạc và cuộc sống	{tech,python}	2025-11-03 12:41:59.148765	f
8784	973	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-09-29 18:02:13.664231	t
8785	550	Âm nhạc và cuộc sống	{review,coffee}	2025-11-07 05:00:10.812825	t
8786	79	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-10-08 00:44:35.195314	t
8787	254	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-05 20:04:12.901311	t
8788	150	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-13 13:35:05.605348	t
8789	593	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-24 08:19:59.175401	t
8790	827	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-11-10 03:38:29.529065	t
8791	995	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-09-29 17:14:41.616681	t
8792	269	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-08 06:08:16.211465	t
8793	140	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-10 00:50:20.62559	t
8794	155	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-20 11:12:48.079585	t
8795	0	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-30 18:50:03.799408	t
8796	67	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-11-11 03:13:08.170443	f
8797	343	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-24 15:55:16.430409	t
8798	821	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-23 20:12:34.272194	t
8799	921	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-05 03:17:12.934306	t
8800	865	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-08 10:26:18.384442	t
8801	922	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-05 06:29:40.495777	t
8802	552	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-09-30 21:16:16.849674	t
8803	634	Học lập trình Python cơ bản	{food,vietnam}	2025-10-30 17:38:35.586943	t
8804	556	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-31 08:42:15.195358	f
8805	369	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-07 09:58:22.597756	t
8806	1000	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-31 23:33:43.838745	t
8807	76	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-31 08:38:44.404212	t
8808	228	Học lập trình Python cơ bản	{ai,machinelearning}	2025-11-03 13:34:01.025156	f
8809	513	Học lập trình Python cơ bản	{tech,python}	2025-10-25 21:24:15.881588	t
8810	676	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-11-08 08:20:03.921012	t
8811	830	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-23 04:20:08.909895	f
8812	61	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-18 01:17:31.004879	f
8813	641	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-03 23:37:29.518113	t
8814	470	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-06 17:06:44.557842	t
8815	924	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-13 23:56:46.095225	t
8816	1	Học lập trình Python cơ bản	{tech,python}	2025-10-27 18:10:09.545625	t
8817	950	Học lập trình Python cơ bản	{review,coffee}	2025-11-02 03:15:18.297092	f
8818	40	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-11 07:53:59.954371	t
8819	736	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-27 08:28:55.170809	t
8820	678	Học lập trình Python cơ bản	{general}	2025-11-06 12:18:33.456852	f
8821	566	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-09-29 01:44:12.343103	t
8822	857	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-11-06 02:39:27.25166	t
8823	632	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-10-28 15:53:51.665201	t
8824	483	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-26 11:45:51.352107	f
8825	406	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-03 13:12:01.32456	t
8826	447	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-25 14:13:41.855714	t
8827	132	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-11-09 01:55:51.36252	f
8828	681	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-18 01:14:35.604572	t
8829	635	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-11-08 06:07:27.891829	t
8830	548	Học lập trình Python cơ bản	{travel,vietnam}	2025-10-10 10:08:20.660662	t
8831	149	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-08 13:29:54.291897	f
8832	530	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-11-09 23:55:11.507178	t
8833	527	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-10-10 02:09:36.340681	t
8834	509	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-16 01:20:56.804927	f
8835	426	Âm nhạc và cuộc sống	{review,coffee}	2025-10-04 01:46:45.229271	t
8836	288	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-11-10 23:40:22.034525	t
8837	682	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-11 06:14:52.390519	t
8838	918	Học lập trình Python cơ bản	{food,vietnam}	2025-10-19 18:19:17.298953	t
8839	775	Review các quán cà phê nổi tiếng	{general}	2025-10-25 23:55:43.249635	t
8840	136	Âm nhạc và cuộc sống	{tech,python}	2025-10-10 14:30:54.496064	t
8841	448	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-10-21 22:44:30.482301	t
8842	597	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-12 09:46:52.834788	t
8843	905	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-28 04:24:40.252777	t
8844	832	Âm nhạc và cuộc sống	{travel,vietnam}	2025-09-30 15:30:09.488527	t
8845	934	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-16 03:56:07.727278	t
8846	562	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-21 02:30:35.414678	t
8847	272	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-10-03 12:20:29.726933	t
8848	384	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-04 11:50:37.092924	t
8849	433	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-13 04:09:56.333856	t
8850	647	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-22 06:22:05.294399	f
8851	835	Âm nhạc và cuộc sống	{tech,python}	2025-10-17 11:24:25.881699	f
8852	706	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-09-28 12:19:46.095275	t
8853	919	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-13 06:06:08.345307	t
8854	319	Học lập trình Python cơ bản	{review,coffee}	2025-09-29 17:16:20.691232	t
8855	987	Học lập trình Python cơ bản	{food,vietnam}	2025-10-20 09:49:58.745201	t
8856	424	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-17 04:40:49.760313	f
8857	392	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-09-30 16:20:35.578702	t
8858	919	Học lập trình Python cơ bản	{tech,python}	2025-10-31 12:21:12.564902	t
8859	200	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-20 23:14:01.590403	f
8860	698	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-27 19:19:51.886368	t
8861	338	Học lập trình Python cơ bản	{tech,python}	2025-10-30 19:11:23.58042	t
8862	78	Giới thiệu công nghệ AI hiện đại	{general}	2025-10-25 07:31:22.783901	t
8863	285	Âm nhạc và cuộc sống	{tech,python}	2025-10-11 07:27:08.05398	t
8864	297	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-14 17:04:46.193422	t
8865	695	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-25 21:30:27.811848	t
8866	917	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-21 08:51:45.543306	t
8867	753	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-09-28 23:44:57.878998	f
8868	799	Âm nhạc và cuộc sống	{tech,python}	2025-11-09 05:43:42.448793	t
8869	866	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-13 07:44:57.045528	t
8870	623	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-10-06 14:24:55.775525	t
8871	988	Học lập trình Python cơ bản	{general}	2025-10-05 19:57:00.968722	f
8872	558	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-09-29 05:56:25.967825	t
8873	464	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-13 21:20:47.037026	t
8874	906	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-21 06:49:56.427288	f
8875	288	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-06 11:36:03.909358	t
8876	841	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-14 13:06:01.076657	t
8877	284	Học lập trình Python cơ bản	{general}	2025-11-05 06:44:47.12716	t
8878	971	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-11-05 16:06:19.678664	t
8879	326	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-10 10:28:07.726445	t
8880	724	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-21 20:41:12.140081	t
8881	694	Âm nhạc và cuộc sống	{review,coffee}	2025-10-28 09:51:52.565729	t
8882	857	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-13 20:28:45.028546	t
8883	361	Khám phá du lịch Việt Nam	{tech,python}	2025-11-01 00:34:30.960742	f
8884	701	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-11-04 00:56:29.678768	f
8885	468	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-11-03 17:33:02.663721	t
8886	21	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-31 22:12:36.494216	t
8887	361	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-23 04:44:34.292544	t
8888	860	Học lập trình Python cơ bản	{travel,vietnam}	2025-10-21 16:30:09.955957	t
8889	566	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-10 19:15:28.388747	t
8890	524	Học lập trình Python cơ bản	{travel,vietnam}	2025-10-15 19:58:06.604885	t
8891	220	Học lập trình Python cơ bản	{travel,vietnam}	2025-10-23 06:10:43.872976	t
8892	445	Âm nhạc và cuộc sống	{food,vietnam}	2025-11-07 04:21:57.950882	t
8893	393	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-13 09:08:06.242228	t
8894	996	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-15 04:01:46.03241	f
8895	375	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-18 08:47:05.248163	t
8896	148	Học lập trình Python cơ bản	{general}	2025-10-03 16:33:43.239675	f
8897	353	Học lập trình Python cơ bản	{general}	2025-10-22 14:37:55.935883	t
8898	954	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-11-01 16:13:42.685185	t
8899	63	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-03 00:42:50.142463	t
8900	713	Học lập trình Python cơ bản	{review,coffee}	2025-11-02 00:26:27.242514	t
8901	579	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-08 02:27:09.33643	t
8902	851	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-19 16:52:59.137726	f
8903	775	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-12 05:10:03.67284	t
8904	921	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-28 04:04:09.891667	t
8905	217	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-11 13:44:28.317184	t
8964	366	Học lập trình Python cơ bản	{tech,python}	2025-10-16 10:45:44.296338	t
8906	174	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-01 17:48:26.233134	t
8907	433	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-28 18:36:07.325651	t
8908	777	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-11-02 15:03:18.366381	t
8909	27	Âm nhạc và cuộc sống	{food,vietnam}	2025-11-05 07:04:18.304095	f
8910	565	Khám phá du lịch Việt Nam	{tech,python}	2025-10-01 22:58:21.425027	t
8911	621	Âm nhạc và cuộc sống	{travel,vietnam}	2025-09-29 02:44:17.623262	t
8912	770	Âm nhạc và cuộc sống	{review,coffee}	2025-11-01 17:06:16.420146	t
8913	427	Học lập trình Python cơ bản	{ai,machinelearning}	2025-11-06 01:19:21.333206	t
8914	426	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-10-21 00:00:54.006913	t
8915	182	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-05 13:10:39.808144	t
8916	85	Khám phá du lịch Việt Nam	{tech,python}	2025-10-16 07:28:33.586298	t
8917	574	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-19 06:38:08.05254	t
8918	487	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-30 11:21:56.171239	t
8919	669	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-05 08:58:37.604936	t
8920	121	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-14 05:34:35.058362	t
8921	508	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-10-05 18:37:47.643061	f
8922	469	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-05 05:52:40.587185	t
8923	274	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-01 07:02:33.810897	t
8924	80	Khám phá du lịch Việt Nam	{general}	2025-11-06 05:58:01.192918	t
8925	906	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-26 20:14:01.483223	t
8926	339	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-20 04:36:44.660576	t
8927	837	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-25 21:21:29.447152	t
8928	110	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-15 19:07:20.577378	t
8929	696	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-11 02:39:53.690985	t
8930	8	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-15 21:54:34.23741	t
8931	657	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-11-07 09:30:40.698628	t
8932	453	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-04 07:56:46.419876	t
8933	84	Học lập trình Python cơ bản	{food,vietnam}	2025-10-17 23:31:46.493626	t
8934	436	Học lập trình Python cơ bản	{tech,python}	2025-10-17 11:27:23.186049	t
8935	863	Học lập trình Python cơ bản	{review,coffee}	2025-10-24 04:25:40.545023	f
8936	119	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-22 19:37:11.421348	t
8937	767	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-11 01:32:06.977346	t
8938	271	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-14 22:55:10.208336	t
8939	279	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-19 11:21:16.075915	t
8940	595	Học lập trình Python cơ bản	{tech,python}	2025-10-13 03:09:17.115911	t
8941	398	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-09-29 10:24:55.096684	f
8942	375	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-09 08:32:04.533045	t
8943	56	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-01 12:26:36.995368	t
8944	88	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-11 04:14:34.209044	t
8945	709	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-10-27 08:08:34.115962	t
8946	765	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-29 23:42:32.303725	t
8947	799	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-31 19:09:31.206985	t
8948	954	Khám phá du lịch Việt Nam	{travel,vietnam}	2025-11-11 03:24:18.139205	t
8949	726	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-02 19:35:59.939833	t
8950	96	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-15 15:46:15.460016	t
8951	634	Học lập trình Python cơ bản	{travel,vietnam}	2025-10-14 06:49:31.793594	t
8952	373	Âm nhạc và cuộc sống	{review,coffee}	2025-10-22 10:08:36.003466	t
8953	936	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-10-13 23:43:15.585646	t
8954	836	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-01 02:26:49.965502	t
8955	23	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-11-09 16:13:33.520582	t
8956	458	Học lập trình Python cơ bản	{food,vietnam}	2025-11-06 22:33:38.935194	t
8957	862	Âm nhạc và cuộc sống	{tech,python}	2025-10-15 22:32:48.810344	t
8958	99	Học lập trình Python cơ bản	{general}	2025-10-11 13:42:25.797443	t
8959	316	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-10 03:29:29.515388	t
8960	656	Học lập trình Python cơ bản	{review,coffee}	2025-10-26 05:17:59.285252	t
8961	927	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-28 08:03:05.686639	t
8962	56	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-11-06 01:50:54.759988	t
8963	886	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-23 05:34:23.051289	f
8965	757	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-30 14:44:50.235393	t
8966	842	Học lập trình Python cơ bản	{food,vietnam}	2025-10-07 23:34:29.610251	t
8967	64	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-08 12:14:04.040452	t
8968	420	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-03 15:44:32.974011	t
8969	485	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-10-29 16:49:30.153675	t
8970	164	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-08 02:34:51.239674	t
8971	62	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-21 04:48:57.291168	t
8972	183	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-11-12 10:25:56.037784	t
8973	589	Học lập trình Python cơ bản	{review,coffee}	2025-10-17 18:13:03.49247	t
8974	950	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-10-21 22:16:09.2084	t
8975	360	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-11-01 05:26:30.052478	t
8976	923	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-11-11 20:23:49.538621	f
8977	761	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-02 14:28:14.422274	f
8978	935	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-06 05:20:13.304903	t
8979	158	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-28 08:25:14.394836	t
8980	670	Âm nhạc và cuộc sống	{travel,vietnam}	2025-10-14 22:47:46.04095	t
8981	144	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-30 01:30:57.588916	t
8982	409	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-23 04:54:21.332643	t
8983	580	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-19 02:58:49.447872	f
8984	195	Học lập trình Python cơ bản	{tech,python}	2025-11-09 14:49:18.502649	t
8985	23	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-11-12 01:45:22.025203	t
8986	368	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-11-09 18:20:25.447483	t
8987	468	Âm nhạc và cuộc sống	{travel,vietnam}	2025-10-02 08:30:52.567214	t
8988	45	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-04 22:39:21.306817	t
8989	966	Âm nhạc và cuộc sống	{tech,python}	2025-10-10 23:10:21.422175	t
8990	905	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-17 01:44:14.863109	t
8991	917	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-25 18:57:52.186847	t
8992	314	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-11-09 10:19:41.560501	t
8993	515	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-01 12:30:59.234706	t
8994	624	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-09-30 17:04:02.552276	f
8995	560	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-15 21:00:41.680614	t
8996	720	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-10-08 13:55:55.092644	t
8997	621	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-11-08 20:59:11.488637	t
8998	652	Học lập trình Python cơ bản	{tech,python}	2025-09-30 21:25:11.809771	t
8999	32	Âm nhạc và cuộc sống	{review,coffee}	2025-10-14 12:40:08.226332	t
9000	843	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-30 23:25:10.951119	t
9001	387	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-28 00:10:41.236741	t
9002	476	Học lập trình Python cơ bản	{tech,python}	2025-11-01 15:26:13.228149	t
9003	171	Học lập trình Python cơ bản	{food,vietnam}	2025-11-08 07:02:07.230669	t
9004	607	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-31 14:41:42.635632	t
9005	921	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-29 12:47:58.469779	t
9006	233	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-29 07:33:18.864408	t
9007	371	Khám phá du lịch Việt Nam	{tech,python}	2025-10-25 20:19:33.443994	t
9008	585	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-25 13:43:56.221932	t
9009	561	Âm nhạc và cuộc sống	{tech,python}	2025-10-13 06:53:40.572575	t
9010	559	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-19 10:45:01.776462	t
9011	417	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-22 05:16:13.46925	t
9012	835	Học lập trình Python cơ bản	{review,coffee}	2025-11-07 20:43:42.553878	t
9013	704	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-26 12:27:20.534767	t
9014	629	Khám phá du lịch Việt Nam	{travel,vietnam}	2025-10-13 21:47:16.894599	f
9015	259	Âm nhạc và cuộc sống	{tech,python}	2025-10-16 02:51:14.905278	t
9016	891	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-13 02:35:01.843527	f
9017	631	Học lập trình Python cơ bản	{tech,python}	2025-10-03 07:17:28.0196	t
9018	93	Học lập trình Python cơ bản	{tech,python}	2025-10-09 10:57:54.72417	t
9019	32	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-22 20:11:09.329717	t
9020	796	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-08 04:41:33.607297	t
9021	575	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-05 06:24:13.414318	t
9022	612	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-02 19:24:34.052346	t
9023	7	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-11-10 23:31:26.894701	f
9024	535	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-11 13:37:22.751164	t
9025	655	Học lập trình Python cơ bản	{general}	2025-10-14 03:17:17.815453	t
9026	982	Âm nhạc và cuộc sống	{review,coffee}	2025-10-09 10:12:33.665181	t
9027	300	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-26 11:50:51.913174	t
9028	323	Học lập trình Python cơ bản	{food,vietnam}	2025-09-29 12:04:57.495455	t
9029	710	Học lập trình Python cơ bản	{general}	2025-10-23 23:20:03.422431	t
9030	498	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-28 17:34:38.801491	t
9031	270	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-10-02 06:59:41.690824	t
9032	796	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-11-11 23:59:01.273748	t
9033	34	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-10-08 17:28:15.917161	t
9034	79	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-25 17:28:29.084837	t
9035	752	Học lập trình Python cơ bản	{review,coffee}	2025-10-01 05:00:49.485836	f
9036	511	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-09-30 12:43:22.238989	t
9037	387	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-09-28 12:40:41.317695	t
9038	58	Học lập trình Python cơ bản	{ai,machinelearning}	2025-09-30 19:08:30.787568	t
9039	962	Âm nhạc và cuộc sống	{tech,python}	2025-10-18 13:52:35.071346	t
9040	211	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-15 22:55:29.354862	t
9041	431	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-07 07:43:39.672507	t
9042	11	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-09-29 20:33:03.40266	f
9043	419	Học lập trình Python cơ bản	{tech,python}	2025-10-06 07:26:52.757528	t
9044	222	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-29 23:44:27.410238	t
9045	516	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-27 08:23:57.696042	t
9046	286	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-11-05 01:02:12.108957	t
9047	653	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-10-07 03:21:58.652999	t
9048	132	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-29 22:30:45.896482	t
9049	380	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-10-20 02:21:42.729563	t
9050	790	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-17 07:55:54.538971	t
9051	767	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-03 02:35:02.090055	t
9052	528	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-27 03:49:17.26511	f
9053	674	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-10-21 05:51:29.012134	t
9054	933	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-16 09:52:22.432722	f
9055	688	Học lập trình Python cơ bản	{tech,python}	2025-09-30 06:03:42.603493	f
9056	571	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-31 18:52:21.907693	f
9057	939	Review các quán cà phê nổi tiếng	{general}	2025-10-18 20:33:10.264347	t
9058	780	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-10-26 10:31:12.468416	t
9059	79	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-11-11 16:20:14.808211	f
9060	857	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-09 14:00:23.196735	t
9061	852	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-11-09 11:47:58.601591	t
9062	66	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-05 16:59:16.66548	t
9063	472	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-11-02 14:48:11.790641	t
9064	709	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-11-10 21:57:04.215148	t
9065	194	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-22 06:16:43.73724	t
9066	772	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-20 05:20:24.307193	t
9067	759	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-06 02:02:10.126706	f
9068	956	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-09-28 16:59:46.651686	t
9069	187	Âm nhạc và cuộc sống	{tech,python}	2025-11-08 20:26:20.446304	t
9070	856	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-19 05:41:10.235156	t
9071	287	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-26 16:06:48.869276	t
9072	27	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-08 01:19:09.154613	t
9073	351	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-09-30 06:26:09.826263	t
9074	81	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-06 10:34:28.601618	t
9075	552	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-22 13:27:29.243828	f
9076	506	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-11-09 20:15:29.581387	t
9077	969	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-19 07:42:06.060206	t
9078	216	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-09-30 08:35:27.613626	t
9079	860	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-07 17:59:20.653353	f
9080	722	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-04 16:20:12.210232	t
9081	958	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-03 18:57:54.919321	t
9082	852	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-11-07 16:50:01.581029	f
9083	429	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-08 23:42:46.476962	t
9084	830	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-04 14:20:33.100805	t
9085	927	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-31 05:28:16.477263	f
9086	120	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-31 12:07:53.473688	t
9087	55	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-11-04 01:52:53.808858	t
9088	158	Học lập trình Python cơ bản	{food,vietnam}	2025-11-07 14:26:21.459358	f
9089	693	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-03 21:14:55.069568	t
9090	477	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-29 00:05:24.026359	t
9091	445	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-05 12:12:04.22772	f
9092	442	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-11-12 03:16:28.18775	f
9093	773	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-11-04 06:35:09.450904	t
9094	817	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-29 23:24:24.633743	t
9095	788	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-12 13:33:06.016856	f
9096	331	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-10 01:03:30.206274	f
9097	161	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-11-08 05:27:25.752904	f
9098	531	Học lập trình Python cơ bản	{travel,vietnam}	2025-10-21 10:08:22.806931	t
9099	86	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-09-28 19:22:41.269698	t
9100	966	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-11-07 06:05:38.50242	t
9101	375	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-10-16 17:09:22.250366	t
9102	66	Khám phá du lịch Việt Nam	{food,vietnam}	2025-10-03 08:06:12.903393	t
9103	522	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-09-29 01:43:35.817653	t
9104	720	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-10-01 00:24:48.582219	t
9105	737	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-04 08:50:30.98166	t
9106	154	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-06 09:07:57.760058	t
9107	268	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-21 21:25:14.277937	t
9108	930	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-18 21:29:24.829663	t
9109	567	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-09 05:57:05.603006	t
9110	514	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-25 11:51:14.078356	t
9111	338	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-11-09 13:47:21.584483	t
9112	673	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-19 01:22:11.385667	f
9113	167	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-18 02:38:11.499379	t
9114	527	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-03 09:06:01.594458	t
9115	968	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-11-01 11:42:23.070008	t
9116	678	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-12 00:39:08.246461	t
9117	604	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-29 22:47:58.342209	t
9118	456	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-19 11:36:00.622921	f
9119	405	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-14 16:13:01.808481	f
9120	176	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-11-09 10:45:02.063997	t
9121	768	Khám phá du lịch Việt Nam	{tech,python}	2025-10-12 19:54:51.338537	t
9122	702	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-12 06:13:34.065419	t
9123	864	Âm nhạc và cuộc sống	{review,coffee}	2025-10-15 17:49:28.864015	t
9124	353	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-11 09:16:23.674869	t
9125	538	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-06 15:45:20.222003	t
9126	105	Âm nhạc và cuộc sống	{review,coffee}	2025-10-27 01:56:59.016557	t
9127	989	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-11-07 19:37:48.654992	t
9128	449	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-05 07:53:39.820151	t
9129	899	Học lập trình Python cơ bản	{food,vietnam}	2025-10-29 21:07:07.49006	t
9130	598	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-11-11 23:28:16.560853	t
9131	208	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-11-06 05:34:51.520874	t
9132	466	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-29 05:37:53.919698	t
9133	475	Học lập trình Python cơ bản	{review,coffee}	2025-09-28 23:35:27.088113	t
9134	36	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-11-02 04:59:48.748453	f
9135	641	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-27 18:07:21.990739	t
9136	73	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-11-09 15:34:33.108517	f
9137	702	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-19 01:09:08.059701	t
9138	803	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-07 17:08:03.113269	f
9139	725	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-18 22:06:38.913784	t
9140	668	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-22 13:32:30.792729	t
9141	75	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-11-05 14:59:39.602321	t
9142	982	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-11 14:33:45.554207	t
9143	841	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-09 04:35:53.302012	t
9144	6	Âm nhạc và cuộc sống	{food,vietnam}	2025-09-30 15:19:54.634345	f
9145	721	Âm nhạc và cuộc sống	{travel,vietnam}	2025-11-04 07:54:43.626273	t
9146	708	Học lập trình Python cơ bản	{review,coffee}	2025-10-27 11:32:54.006561	f
9147	709	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-06 20:06:29.1115	t
9148	448	Âm nhạc và cuộc sống	{review,coffee}	2025-11-06 21:38:34.895285	t
9149	228	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-11-09 07:13:33.049355	f
9150	168	Âm nhạc và cuộc sống	{review,coffee}	2025-10-20 14:18:08.455415	t
9151	665	Học lập trình Python cơ bản	{food,vietnam}	2025-10-27 09:17:59.766915	t
9152	213	Âm nhạc và cuộc sống	{general}	2025-10-14 15:32:38.380567	t
9153	20	Học lập trình Python cơ bản	{food,vietnam}	2025-10-08 00:14:30.773396	t
9154	175	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-11-11 01:50:04.828225	f
9155	905	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-10-11 05:52:38.797077	t
9156	837	Giới thiệu công nghệ AI hiện đại	{general}	2025-10-18 06:07:18.978554	t
9157	504	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-11 09:50:01.809621	t
9158	351	Âm nhạc và cuộc sống	{tech,python}	2025-10-02 19:47:24.433647	t
9159	98	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-11-09 22:00:35.113405	t
9160	542	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-20 10:49:10.206539	t
9161	576	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-20 16:35:09.761097	t
9162	405	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-11-08 19:32:55.085991	t
9163	293	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-22 23:37:00.555591	t
9164	812	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-18 18:42:21.239695	t
9165	190	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-06 12:26:47.960523	t
9166	959	Âm nhạc và cuộc sống	{tech,python}	2025-10-08 07:00:17.95892	t
9167	988	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-10-11 06:34:43.471393	t
9168	516	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-05 05:26:21.972616	t
9169	21	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-10-16 22:09:30.426	t
9170	419	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-21 04:24:00.914933	t
9171	860	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-02 11:17:30.372503	t
9172	634	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-11-05 08:29:04.703088	t
9173	362	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-02 18:53:44.443131	t
9174	383	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-28 19:20:35.815442	t
9175	676	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-11-09 14:04:25.082366	t
9176	678	Giới thiệu công nghệ AI hiện đại	{general}	2025-10-02 09:55:30.652546	t
9177	798	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-22 18:29:44.755696	t
9178	734	Âm nhạc và cuộc sống	{review,coffee}	2025-10-30 13:58:03.954197	t
9179	25	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-16 00:19:25.114904	t
9180	15	Học lập trình Python cơ bản	{general}	2025-11-05 22:47:13.833961	t
9181	28	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-24 10:48:17.760125	t
9182	975	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-25 17:57:28.11225	t
9183	511	Học lập trình Python cơ bản	{travel,vietnam}	2025-11-04 06:07:54.040143	t
9184	262	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-14 20:40:01.615322	t
9185	29	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-09-29 14:16:31.124342	t
9186	368	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-11-03 09:34:37.588677	t
9187	245	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-27 09:43:58.1923	t
9188	291	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-05 10:15:44.922578	f
9189	317	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-10 02:50:35.638598	t
9190	258	Khám phá du lịch Việt Nam	{review,coffee}	2025-11-01 12:13:21.429285	t
9191	487	Âm nhạc và cuộc sống	{review,coffee}	2025-10-10 04:39:39.896363	t
9192	129	Giới thiệu công nghệ AI hiện đại	{general}	2025-10-07 04:39:14.863285	t
9193	885	Âm nhạc và cuộc sống	{tech,python}	2025-11-04 03:51:58.083594	f
9194	953	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-23 12:34:01.070692	f
9195	427	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-28 05:32:43.127865	t
9196	935	Âm nhạc và cuộc sống	{tech,python}	2025-11-09 02:22:01.797096	t
9197	776	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-18 05:45:00.711749	t
9198	314	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-31 03:58:15.140033	f
9199	378	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-10 00:17:39.826034	t
9200	773	Khám phá du lịch Việt Nam	{food,vietnam}	2025-10-19 16:23:12.289628	t
9201	456	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-04 17:59:41.860286	t
9202	105	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-23 01:34:52.587809	t
9203	538	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-18 04:00:42.334607	f
9204	818	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-10-19 16:44:50.629259	t
9205	827	Học lập trình Python cơ bản	{review,coffee}	2025-10-04 04:35:46.248001	t
9206	684	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-16 05:42:32.264522	t
9207	403	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-11-06 18:04:27.447624	t
9208	726	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-05 03:48:50.561621	t
9209	758	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-27 15:43:30.006897	t
9210	536	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-09-29 19:20:35.041717	t
9211	818	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-11-02 19:22:41.454378	f
9212	736	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-24 19:15:21.949356	t
9213	508	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-01 19:06:37.647101	t
9214	895	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-18 12:22:50.987882	t
9215	281	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-15 11:53:45.575736	t
9216	356	Review các quán cà phê nổi tiếng	{review,coffee}	2025-11-02 14:31:55.601562	t
9217	840	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-17 18:15:54.155079	t
9218	723	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-11-07 10:23:25.819639	f
9219	474	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-09 10:34:05.274175	t
9220	889	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-03 13:53:01.118703	t
9221	262	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-09-30 12:41:31.565195	t
9222	315	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-25 14:52:12.895804	t
9223	120	Thể thao và sức khỏe mỗi ngày	{general}	2025-11-10 18:11:48.669311	t
9224	716	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-09-30 19:07:37.18679	t
9225	708	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-31 19:06:38.660659	t
9226	101	Âm nhạc và cuộc sống	{review,coffee}	2025-10-06 15:17:29.224586	t
9227	704	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-06 14:01:20.328234	t
9228	636	Âm nhạc và cuộc sống	{review,coffee}	2025-11-10 16:32:52.638788	f
9229	122	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-05 01:17:39.195311	f
9230	782	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-30 06:29:26.484339	t
9231	782	Giới thiệu công nghệ AI hiện đại	{general}	2025-10-22 20:28:36.926756	t
9232	899	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-10-13 13:10:05.101989	f
9233	885	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-05 05:34:42.369497	t
9234	882	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-22 20:10:37.519664	f
9235	289	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-11 19:48:30.052257	f
9236	631	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-09-29 21:19:05.811014	t
9237	183	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-12 06:24:53.877869	t
9238	812	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-17 05:10:36.44932	t
9239	171	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-26 06:45:34.276245	t
9240	30	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-11-07 18:17:13.196268	t
9241	528	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-10 04:08:11.099743	f
9242	981	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-07 03:27:44.297531	t
9243	404	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-13 04:28:29.643603	t
9244	802	Review các quán cà phê nổi tiếng	{review,coffee}	2025-11-04 03:14:15.712496	t
9245	186	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-11 04:06:31.731873	t
9246	455	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-29 11:36:02.233355	t
9247	656	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-11-11 08:55:25.275361	t
9248	818	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-10 06:30:00.737518	t
9249	506	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-13 21:31:32.30812	t
9250	571	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-18 06:03:02.439949	t
9251	800	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-07 11:20:47.931864	f
9252	79	Âm nhạc và cuộc sống	{general}	2025-11-01 23:58:51.614939	t
9253	680	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-28 15:50:12.319813	t
9254	220	Học lập trình Python cơ bản	{general}	2025-11-02 06:46:19.242874	t
9255	707	Học lập trình Python cơ bản	{tech,python}	2025-09-30 23:54:27.879199	t
9256	178	Học lập trình Python cơ bản	{tech,python}	2025-10-06 23:36:06.68881	t
9257	308	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-21 06:06:39.597382	t
9258	180	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-19 04:25:54.024191	t
9259	790	Học lập trình Python cơ bản	{travel,vietnam}	2025-10-17 04:46:57.896157	t
9260	866	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-27 05:30:35.783845	t
9261	233	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-17 00:56:29.561546	t
9262	626	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-11-06 04:44:36.03763	t
9263	285	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-21 03:20:07.798613	t
9264	987	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-20 17:11:25.963753	t
9265	764	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-11-08 04:14:30.977437	f
9266	849	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-11-07 21:32:05.108422	f
9267	330	Âm nhạc và cuộc sống	{general}	2025-09-29 10:21:36.412845	f
9268	541	Học lập trình Python cơ bản	{review,coffee}	2025-10-10 02:56:31.902687	t
9269	109	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-18 23:07:38.220232	t
9270	776	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-30 12:32:01.732896	t
9271	188	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-11-06 11:00:21.878101	f
9272	892	Học lập trình Python cơ bản	{food,vietnam}	2025-10-06 04:33:05.828144	t
9273	85	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-28 19:07:04.454437	t
9274	232	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-26 17:40:38.478291	f
9275	842	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-13 00:18:34.973846	t
9276	563	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-21 19:07:04.673086	t
9277	92	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-10-28 15:47:37.827481	t
9278	221	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-18 16:10:41.946823	t
9279	829	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-21 15:22:47.004135	t
9280	864	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-01 19:10:47.260752	t
9281	675	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-19 05:58:18.879112	t
9282	588	Giới thiệu công nghệ AI hiện đại	{general}	2025-10-07 08:02:52.869595	t
9283	134	Học lập trình Python cơ bản	{tech,python}	2025-10-16 10:29:58.026208	t
9284	670	Khám phá du lịch Việt Nam	{general}	2025-10-06 23:51:55.681546	t
9285	359	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-21 06:11:10.311474	t
9286	538	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-25 23:51:23.614076	f
9287	812	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-11-10 23:04:57.806768	t
9288	424	Học lập trình Python cơ bản	{tech,python}	2025-10-20 05:12:01.039046	t
9289	783	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-11-10 18:03:31.584094	t
9290	290	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-31 11:50:39.573617	t
9291	864	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-10-06 02:48:52.106068	t
9292	64	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-09-29 15:38:02.380984	f
9293	520	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-03 16:32:20.692322	t
9294	233	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-04 00:37:07.748068	t
9295	642	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-06 09:28:50.920245	t
9296	922	Giới thiệu công nghệ AI hiện đại	{general}	2025-10-08 04:26:26.586359	t
9297	593	Khám phá du lịch Việt Nam	{tech,python}	2025-10-21 09:54:28.991735	f
9298	273	Học lập trình Python cơ bản	{food,vietnam}	2025-11-01 14:23:02.707841	t
9299	736	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-11 12:59:48.507643	t
9300	381	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-11-10 20:19:29.885462	t
9301	615	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-02 06:33:22.321171	t
9302	835	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-08 00:33:42.007297	t
9303	624	Học lập trình Python cơ bản	{ai,machinelearning}	2025-11-07 01:55:14.373092	t
9304	794	Khám phá du lịch Việt Nam	{general}	2025-10-09 23:17:36.884591	t
9305	757	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-10 13:41:06.126561	t
9306	360	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-31 06:44:31.066357	t
9307	890	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-27 23:44:53.994822	t
9308	58	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-01 19:53:26.660252	t
9309	911	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-02 06:14:56.807274	t
9310	983	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-03 04:28:15.155508	t
9311	424	Học lập trình Python cơ bản	{ai,machinelearning}	2025-11-05 16:13:54.579847	t
9312	509	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-06 04:33:26.623379	f
9313	579	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-11-11 08:48:27.066483	t
9314	79	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-10-02 17:17:57.85618	t
9315	567	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-10-22 17:11:37.737248	f
9316	5	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-20 20:04:04.51004	f
9317	531	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-23 04:59:07.067904	f
9318	379	Học lập trình Python cơ bản	{tech,python}	2025-10-22 08:39:42.483897	t
9319	835	Học lập trình Python cơ bản	{tech,python}	2025-10-12 22:57:30.194706	t
9320	54	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-05 03:23:01.743494	t
9321	52	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-24 01:24:02.557364	t
9322	871	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-09-30 00:40:51.822258	t
9323	932	Âm nhạc và cuộc sống	{general}	2025-11-10 09:33:23.982417	t
9324	452	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-18 07:48:26.114475	f
9325	797	Học lập trình Python cơ bản	{food,vietnam}	2025-10-06 09:27:55.879711	t
9326	401	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-10-25 19:11:20.775059	t
9327	114	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-08 03:11:40.377271	t
9328	676	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-09-30 15:44:22.922204	t
9329	695	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-22 03:04:40.560146	t
9330	531	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-10 10:19:17.6753	t
9331	969	Học lập trình Python cơ bản	{review,coffee}	2025-10-19 11:58:36.469192	t
9332	572	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-22 02:33:03.792868	t
9333	599	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-10-21 21:31:16.99387	t
9334	995	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-11-03 02:56:49.742395	t
9335	177	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-29 11:57:28.157689	t
9336	759	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-27 20:57:40.555121	t
9337	900	Âm nhạc và cuộc sống	{food,vietnam}	2025-11-09 05:16:45.047449	t
9338	72	Khám phá du lịch Việt Nam	{tech,python}	2025-10-20 12:41:31.704094	t
9339	456	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-11-06 08:55:53.178893	t
9340	975	Học lập trình Python cơ bản	{ai,machinelearning}	2025-11-09 20:50:48.149188	t
9341	398	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-13 21:37:56.401478	t
9342	191	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-09-30 10:32:28.560058	t
9343	312	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-11-04 15:38:35.659085	t
9344	304	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-12 22:38:21.966498	t
9345	835	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-09-29 08:10:49.788192	t
9346	868	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-11-02 12:44:52.050512	t
9347	344	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-14 06:45:38.862702	t
9348	122	Học lập trình Python cơ bản	{tech,python}	2025-10-23 16:51:51.842826	t
9349	258	Giới thiệu công nghệ AI hiện đại	{general}	2025-11-11 09:42:04.53613	t
9350	709	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-09-30 22:51:23.720191	f
9351	813	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-11-08 07:36:49.742267	t
9352	983	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-30 21:00:00.899628	t
9353	723	Âm nhạc và cuộc sống	{review,coffee}	2025-11-03 00:02:11.511893	t
9354	724	Khám phá du lịch Việt Nam	{tech,python}	2025-10-29 22:53:51.966521	f
9355	367	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-09-30 13:58:49.335263	t
9356	533	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-11 21:00:44.00227	t
9357	585	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-04 14:08:15.402268	t
9358	702	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-07 10:06:25.809356	t
9359	165	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-11-07 22:31:10.816968	f
9360	899	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-31 10:25:30.262565	f
9361	192	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-29 20:47:21.669149	t
9362	238	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-19 06:13:42.083444	t
9363	188	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-30 13:19:03.171643	t
9364	812	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-11-11 02:16:17.820202	t
9365	877	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-11-07 20:54:54.328098	t
9366	333	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-08 07:22:51.438183	t
9367	812	Học lập trình Python cơ bản	{travel,vietnam}	2025-10-31 15:39:05.438889	t
9368	130	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-01 07:29:55.735506	f
9369	34	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-10 01:33:38.518911	t
9370	811	Âm nhạc và cuộc sống	{tech,python}	2025-10-15 08:57:20.231239	t
9371	918	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-18 05:37:58.307051	t
9372	374	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-31 13:22:04.637315	t
9373	593	Thể thao và sức khỏe mỗi ngày	{general}	2025-11-08 04:39:42.971984	t
9374	118	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-12 13:28:48.315976	t
9375	185	Review các quán cà phê nổi tiếng	{review,coffee}	2025-11-09 06:36:57.021737	t
9376	235	Khám phá du lịch Việt Nam	{tech,python}	2025-10-10 02:02:25.169583	t
9377	515	Học lập trình Python cơ bản	{general}	2025-10-06 00:37:15.452538	t
9378	66	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-19 13:54:05.539439	f
9379	798	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-24 20:31:18.097774	t
9380	292	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-15 03:37:18.913725	t
9381	405	Học lập trình Python cơ bản	{general}	2025-10-16 03:09:42.250068	f
9382	557	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-20 07:25:53.817982	t
9383	361	Khám phá du lịch Việt Nam	{food,vietnam}	2025-10-03 00:15:48.720044	f
9384	817	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-11-05 05:00:01.010833	t
9385	7	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-18 15:26:19.325945	t
9386	39	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-10 12:07:27.225989	f
9387	176	Học lập trình Python cơ bản	{food,vietnam}	2025-10-31 08:15:06.72901	t
9388	466	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-02 05:56:43.911861	t
9389	388	Âm nhạc và cuộc sống	{review,coffee}	2025-10-10 14:05:26.904263	t
9390	252	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-12 20:47:04.904805	t
9391	322	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-22 09:34:02.861917	f
9392	429	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-16 19:13:46.341815	t
9393	798	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-11-07 22:17:57.815712	t
9394	571	Âm nhạc và cuộc sống	{travel,vietnam}	2025-10-14 09:21:11.456258	t
9395	885	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-11-06 09:19:59.787743	t
9396	215	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-12 00:19:34.323097	t
9397	796	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-13 01:58:29.414034	t
9398	649	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-17 19:47:54.039995	t
9399	459	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-12 10:43:45.31989	t
9400	119	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-01 00:21:45.999724	f
9401	892	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-22 12:07:40.496555	t
9402	381	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-09 19:17:50.051999	f
9403	52	Âm nhạc và cuộc sống	{tech,python}	2025-11-09 04:51:00.81403	t
9404	725	Âm nhạc và cuộc sống	{food,vietnam}	2025-11-10 02:53:30.122462	t
9405	585	Khám phá du lịch Việt Nam	{tech,python}	2025-11-09 04:06:30.538101	t
9406	658	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-11-10 06:35:58.768602	t
9407	298	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-14 03:24:03.459297	t
9408	52	Âm nhạc và cuộc sống	{general}	2025-10-12 02:42:18.821655	t
9409	782	Học lập trình Python cơ bản	{general}	2025-10-28 13:14:18.808557	t
9410	634	Âm nhạc và cuộc sống	{tech,python}	2025-10-07 22:59:10.978953	f
9411	882	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-13 18:39:41.212799	t
9412	467	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-19 06:28:20.439801	t
9413	879	Giới thiệu công nghệ AI hiện đại	{general}	2025-10-17 15:26:49.663473	t
9414	956	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-12 04:15:57.761503	t
9415	847	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-28 23:23:03.094492	t
9416	440	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-10 00:45:50.553757	t
9417	276	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-11-06 20:01:29.501589	t
9418	641	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-20 13:59:26.778048	t
9419	606	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-09 05:27:48.133272	t
9420	15	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-24 08:16:40.88067	t
9421	595	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-21 01:06:19.381591	t
9422	443	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-11-07 10:35:57.330375	t
9423	335	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-10-22 11:59:58.945196	t
9424	968	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-11-03 11:51:50.997306	t
9425	778	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-04 17:21:54.580548	t
9426	976	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-09-29 05:51:23.497309	t
9427	792	Âm nhạc và cuộc sống	{tech,python}	2025-10-31 09:27:54.291366	t
9428	515	Review các quán cà phê nổi tiếng	{general}	2025-11-11 03:21:56.337106	t
9429	209	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-11-05 20:08:15.408841	f
9430	737	Giới thiệu công nghệ AI hiện đại	{general}	2025-10-23 13:33:22.0809	t
9431	53	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-09-30 00:34:13.916315	t
9432	902	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-25 02:18:21.832667	t
9433	909	Âm nhạc và cuộc sống	{review,coffee}	2025-10-08 15:08:02.011335	t
9434	496	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-29 07:51:48.572247	t
9435	215	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-02 01:50:05.613291	t
9436	4	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-11-11 16:59:45.764086	t
9437	859	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-13 01:41:57.585415	t
9438	581	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-09-29 00:24:19.893338	f
9439	635	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-20 11:42:57.242113	t
9440	382	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-06 10:01:49.881783	t
9441	864	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-14 06:12:48.423217	t
9442	272	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-11-02 06:56:23.376162	f
9443	430	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-09-29 17:06:11.66567	f
9444	156	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-26 05:06:03.570709	t
9445	742	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-11-05 15:45:30.667343	t
9446	553	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-07 15:17:38.191511	t
9447	133	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-10 12:53:24.422152	f
9448	913	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-09-29 12:28:26.061799	t
9449	270	Review các quán cà phê nổi tiếng	{tech,python}	2025-11-01 19:58:42.768532	f
9450	405	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-02 23:37:50.542295	t
9451	168	Âm nhạc và cuộc sống	{review,coffee}	2025-11-07 03:13:56.172016	t
9452	463	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-04 19:21:31.977231	t
9453	467	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-29 13:04:13.196503	t
9454	131	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-26 05:00:17.198288	t
9455	823	Học lập trình Python cơ bản	{review,coffee}	2025-10-24 20:55:48.106014	f
9456	594	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-12 02:57:05.635017	f
9457	316	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-09-30 17:39:31.472114	t
9458	501	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-18 04:26:27.902177	t
9459	446	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-13 06:24:48.232058	t
9460	416	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-09 14:19:45.284288	t
9461	698	Âm nhạc và cuộc sống	{food,vietnam}	2025-11-08 03:03:07.438235	t
9462	634	Review các quán cà phê nổi tiếng	{review,coffee}	2025-09-28 23:22:09.941216	t
9463	971	Khám phá du lịch Việt Nam	{travel,vietnam}	2025-10-30 02:04:50.385021	t
9464	543	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-08 15:32:42.810176	t
9465	77	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-12 10:50:42.770531	t
9466	555	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-22 13:20:11.073564	t
9467	294	Học lập trình Python cơ bản	{general}	2025-10-24 13:24:16.320386	f
9468	2	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-18 08:57:31.824299	t
9469	382	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-11-05 03:14:10.913126	t
9470	559	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-11-01 17:10:13.271101	t
9471	969	Âm nhạc và cuộc sống	{tech,python}	2025-10-18 12:29:40.581001	t
9472	999	Học lập trình Python cơ bản	{review,coffee}	2025-10-14 07:25:53.808324	t
9473	500	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-13 07:57:08.314564	f
9474	850	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-16 06:51:37.697312	f
9475	689	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-06 15:50:48.251684	f
9476	846	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-20 18:01:54.23866	f
9477	630	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-11-03 20:55:28.883705	t
9478	763	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-14 02:29:11.55095	f
9479	703	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-21 14:41:37.93031	t
9480	115	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-01 10:54:04.235617	t
9481	641	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-25 02:19:37.297823	t
9482	65	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-27 22:57:21.233077	t
9483	54	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-09-29 20:44:44.636423	t
9484	602	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-06 15:47:18.735313	f
9485	879	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-09 21:41:23.683103	t
9486	490	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-04 22:51:16.186304	t
9487	277	Review các quán cà phê nổi tiếng	{review,coffee}	2025-11-11 14:49:17.118154	t
9488	68	Học lập trình Python cơ bản	{ai,machinelearning}	2025-09-30 13:34:30.592905	t
9489	294	Âm nhạc và cuộc sống	{tech,python}	2025-10-24 16:55:37.035368	t
9490	772	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-06 18:03:54.599991	f
9491	611	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-11-07 16:56:16.241659	t
9492	825	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-14 19:08:36.860734	t
9493	428	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-04 23:25:16.909675	t
9494	920	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-10-16 18:36:43.37778	t
9495	695	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-06 01:16:00.482418	t
9496	939	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-11-09 20:52:38.93475	t
9497	209	Âm nhạc và cuộc sống	{food,vietnam}	2025-11-04 20:49:05.716497	t
9498	261	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-06 13:47:12.173952	t
9499	674	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-14 00:52:23.85291	t
9500	279	Âm nhạc và cuộc sống	{general}	2025-09-29 08:17:44.907551	t
9501	331	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-10 21:16:44.439253	t
9502	776	Âm nhạc và cuộc sống	{tech,python}	2025-10-17 03:02:52.976589	t
9503	953	Học lập trình Python cơ bản	{tech,python}	2025-11-02 19:02:45.225987	t
9504	946	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-28 22:47:18.094902	t
9505	920	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-30 08:09:31.381406	f
9506	259	Học lập trình Python cơ bản	{general}	2025-11-04 21:52:54.691746	t
9507	460	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-09-30 00:57:23.100304	f
9508	622	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-05 04:20:14.949657	t
9509	578	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-22 18:04:15.828373	t
9510	255	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-29 19:01:36.956907	t
9511	291	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-26 01:34:03.85194	t
9512	741	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-11-10 20:40:46.489833	t
9513	329	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-01 21:49:11.982606	t
9514	484	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-16 08:28:37.2022	t
9515	548	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-07 04:11:56.217404	t
9516	829	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-03 06:32:55.243361	t
9517	87	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-15 08:45:19.993492	t
9518	786	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-02 14:57:32.020001	t
9519	21	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-11-06 22:08:29.889029	t
9520	365	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-10-22 10:28:50.728744	t
9521	127	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-03 05:38:20.540897	t
9522	605	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-15 08:06:23.887691	t
9523	742	Học lập trình Python cơ bản	{ai,machinelearning}	2025-11-02 22:23:48.604268	t
9524	388	Khám phá du lịch Việt Nam	{review,coffee}	2025-09-29 14:41:24.835573	f
9525	131	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-15 05:49:08.382958	f
9526	717	Học lập trình Python cơ bản	{review,coffee}	2025-10-05 01:13:12.234341	t
9527	454	Học lập trình Python cơ bản	{food,vietnam}	2025-11-12 00:42:32.488974	t
9528	232	Giới thiệu công nghệ AI hiện đại	{general}	2025-10-19 23:15:19.293231	t
9529	529	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-05 14:14:41.62707	f
9530	646	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-04 17:33:08.308724	t
9531	59	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-11-04 23:58:35.875079	t
9532	687	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-21 11:36:29.919883	t
9533	906	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-22 06:00:24.659508	f
9534	489	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-19 23:29:55.309597	t
9535	554	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-31 05:35:37.751341	t
9536	916	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-22 00:51:46.94602	t
9537	475	Review các quán cà phê nổi tiếng	{tech,python}	2025-09-29 22:28:41.802123	t
9538	438	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-10-16 19:20:02.469118	t
9539	780	Âm nhạc và cuộc sống	{tech,python}	2025-11-06 08:39:46.760882	t
9540	420	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-10 00:31:49.027554	t
9541	372	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-14 02:30:47.075038	t
9542	27	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-11-06 18:09:02.964078	t
9543	984	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-23 10:22:15.284199	t
9544	558	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-10-08 15:08:42.287114	t
9545	632	Khám phá du lịch Việt Nam	{general}	2025-10-12 13:34:11.074498	t
9546	266	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-11-05 02:42:26.635267	t
9547	386	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-29 01:10:20.125673	t
9548	211	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-09-30 22:43:22.797051	t
9549	421	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-11-01 13:31:22.799647	t
9550	756	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-31 14:09:05.849269	t
9551	438	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-08 22:18:23.173372	t
9552	384	Âm nhạc và cuộc sống	{food,vietnam}	2025-11-09 14:17:05.701471	t
9553	207	Giới thiệu công nghệ AI hiện đại	{general}	2025-10-30 06:23:26.122424	t
9554	266	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-13 15:57:58.391402	t
9555	278	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-12 23:27:39.502935	t
9556	241	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-11-02 13:14:47.502912	f
9557	752	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-05 09:01:47.285818	t
9558	434	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-31 19:20:02.852554	t
9559	50	Giới thiệu công nghệ AI hiện đại	{general}	2025-11-07 12:43:53.914368	t
9560	616	Âm nhạc và cuộc sống	{travel,vietnam}	2025-11-02 04:47:10.716275	t
9561	853	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-02 09:20:10.567194	t
9562	534	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-09-28 19:55:04.817878	t
9563	880	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-11-02 17:05:24.959943	t
9564	636	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-13 21:56:50.280807	t
9565	163	Review các quán cà phê nổi tiếng	{tech,python}	2025-09-30 01:21:52.336713	t
9566	852	Khám phá du lịch Việt Nam	{tech,python}	2025-09-30 21:33:23.293605	t
9567	980	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-22 22:38:55.420855	t
9568	470	Khám phá du lịch Việt Nam	{food,vietnam}	2025-10-05 08:14:27.018561	t
9569	136	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-04 07:31:38.502107	t
9570	945	Học lập trình Python cơ bản	{tech,python}	2025-10-26 15:27:00.109478	t
9571	234	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-11-11 04:42:20.668482	t
9572	69	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-11-10 18:11:58.417431	t
9573	235	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-11 14:38:49.841549	f
9574	97	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-20 14:57:17.066956	t
9575	747	Giới thiệu công nghệ AI hiện đại	{general}	2025-10-02 17:31:59.604977	t
9576	821	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-14 07:16:54.619742	t
9577	753	Âm nhạc và cuộc sống	{review,coffee}	2025-10-07 18:27:31.644344	t
9578	659	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-13 13:06:35.54322	t
9579	27	Âm nhạc và cuộc sống	{review,coffee}	2025-10-04 14:46:14.654343	t
9580	959	Học lập trình Python cơ bản	{review,coffee}	2025-11-07 11:00:37.748418	t
9581	457	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-29 10:12:16.310865	f
9582	561	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-11 03:04:26.312916	t
9583	100	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-26 13:56:52.408468	t
9584	643	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-11-09 17:01:17.457699	t
9585	18	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-01 06:33:15.819516	t
9586	827	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-09-28 21:37:22.925399	t
9587	707	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-19 15:08:10.499146	t
9588	978	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-24 03:53:38.541426	t
9589	80	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-28 11:19:51.770119	t
9590	797	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-09-28 19:17:57.484909	f
9591	189	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-11-01 17:18:50.428592	t
9592	464	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-24 14:42:07.726295	t
9593	435	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-09 07:58:22.758854	t
9594	512	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-10-14 12:11:04.76971	t
9595	174	Âm nhạc và cuộc sống	{travel,vietnam}	2025-10-24 23:53:57.597974	f
9596	317	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-27 05:24:01.374739	t
9597	752	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-10-29 10:08:48.940495	t
9598	202	Học lập trình Python cơ bản	{general}	2025-10-19 10:56:43.340036	t
9599	167	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-08 19:03:00.599938	t
9600	588	Học lập trình Python cơ bản	{review,coffee}	2025-10-16 13:06:15.214507	t
9601	164	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-05 13:38:36.590205	t
9602	561	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-14 22:14:53.352088	t
9603	73	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-26 06:26:46.556717	t
9604	175	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-11-11 02:07:28.857371	f
9605	73	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-09-30 10:42:31.463946	t
9606	637	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-19 05:40:30.436221	f
9607	76	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-10-16 22:56:11.504603	t
9608	613	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-09-29 12:48:25.17406	t
9609	406	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-10-23 15:04:46.663934	t
9610	163	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-03 15:47:39.804078	t
9611	885	Khám phá du lịch Việt Nam	{review,coffee}	2025-11-08 14:16:23.200358	t
9612	692	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-10-12 23:58:55.198119	t
9613	249	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-29 07:41:26.615453	t
9614	207	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-13 21:27:59.797499	t
9615	814	Âm nhạc và cuộc sống	{review,coffee}	2025-11-04 06:24:30.691876	t
9616	482	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-18 13:01:58.852668	t
9617	17	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-26 04:05:18.093559	t
9618	923	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-13 02:55:51.867228	t
9619	844	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-18 16:16:03.75526	t
9620	452	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-08 17:25:58.711922	t
9621	898	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-08 09:32:30.75884	t
9622	264	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-24 04:30:26.516749	t
9623	815	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-09-30 04:36:26.314312	t
9624	105	Khám phá du lịch Việt Nam	{tech,python}	2025-09-30 00:37:40.131639	t
9625	551	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-16 09:04:20.250354	t
9626	558	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-12 06:00:45.930128	t
9627	229	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-10 16:03:45.644466	t
9628	976	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-27 04:51:34.520833	t
9629	729	Âm nhạc và cuộc sống	{review,coffee}	2025-10-22 00:43:30.391486	t
9630	48	Học lập trình Python cơ bản	{review,coffee}	2025-10-24 02:51:26.038475	f
9631	430	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-21 08:37:24.795453	t
9632	42	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-21 02:47:33.07575	t
9633	312	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-29 23:14:46.989247	t
9634	747	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-13 15:01:53.007775	f
9635	941	Âm nhạc và cuộc sống	{review,coffee}	2025-10-18 01:38:15.885302	t
9636	354	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-24 10:57:12.014575	t
9637	851	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-11 02:07:44.688642	t
9638	728	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-26 23:41:16.279117	t
9639	594	Khám phá du lịch Việt Nam	{tech,python}	2025-09-30 09:13:07.671231	t
9640	370	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-31 00:15:23.454265	t
9641	15	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-31 15:23:12.553754	f
9642	488	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-30 00:54:54.079167	t
9643	317	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-21 16:51:32.862767	t
9644	299	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-03 21:23:26.115981	t
9645	827	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-20 08:49:46.917466	t
9646	628	Học lập trình Python cơ bản	{travel,vietnam}	2025-10-03 11:09:30.037991	t
9647	839	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-20 18:26:42.925407	f
9648	772	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-10-09 13:50:57.633261	t
9649	985	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-11-09 11:11:47.197227	t
9650	163	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-10-07 02:59:12.279296	t
9651	986	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-11-10 09:59:48.072085	t
9652	982	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-14 18:27:44.390499	t
9653	906	Review các quán cà phê nổi tiếng	{general}	2025-10-12 07:13:39.211287	t
9654	268	Học lập trình Python cơ bản	{tech,python}	2025-10-26 09:41:21.139332	t
9655	258	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-30 22:24:36.770791	t
9656	174	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-09-29 06:07:07.462423	t
9657	318	Thể thao và sức khỏe mỗi ngày	{general}	2025-11-01 05:51:37.681682	t
9658	632	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-03 03:57:37.324222	t
9659	400	Âm nhạc và cuộc sống	{review,coffee}	2025-10-30 14:33:56.188131	t
9660	74	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-16 00:09:54.786481	f
9661	132	Học lập trình Python cơ bản	{food,vietnam}	2025-09-30 18:29:14.199148	t
9662	367	Học lập trình Python cơ bản	{tech,python}	2025-11-07 08:14:09.750553	f
9663	934	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-11-01 18:14:16.791343	t
9664	785	Khám phá du lịch Việt Nam	{general}	2025-11-04 04:30:56.674636	t
9665	841	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-02 13:48:38.897068	t
9666	749	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-11 03:27:30.58666	t
9667	274	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-11-08 08:45:52.572995	t
9668	83	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-20 00:15:41.343857	f
9669	257	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-08 19:46:20.608443	t
9670	983	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-11-04 21:13:31.579083	t
9671	199	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-11-04 19:26:10.042648	t
9672	265	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-09-30 16:40:21.080945	t
9673	849	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-10-20 10:03:26.778894	f
9674	55	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-09-30 06:30:57.869567	t
9675	416	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-11-07 14:24:42.163442	t
9676	338	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-09-28 19:07:44.700695	t
9677	99	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-22 07:57:39.444146	t
9678	833	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-25 05:10:39.092529	t
9679	265	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-24 16:40:40.713323	f
9680	438	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-11-01 00:41:06.991323	t
9681	404	Học lập trình Python cơ bản	{review,coffee}	2025-10-31 03:35:48.550079	t
9682	159	Học lập trình Python cơ bản	{review,coffee}	2025-10-30 21:42:52.140072	t
9683	555	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-10-04 18:55:02.111724	t
9684	926	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-09 11:59:50.447011	t
9685	768	Khám phá du lịch Việt Nam	{tech,python}	2025-10-05 22:51:27.792189	t
9686	430	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-25 02:19:27.18931	t
9687	335	Review các quán cà phê nổi tiếng	{review,coffee}	2025-09-30 04:51:21.135379	t
9688	974	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-10-27 06:33:13.544363	t
9689	807	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-22 14:50:36.698249	t
9690	595	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-09 16:11:56.202977	t
9691	597	Giới thiệu công nghệ AI hiện đại	{general}	2025-10-31 15:46:21.12391	t
9692	219	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-07 11:51:55.676937	t
9693	523	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-11-10 13:35:50.047189	t
9694	976	Học lập trình Python cơ bản	{food,vietnam}	2025-11-09 21:14:33.939612	t
9695	244	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-08 17:04:31.960556	f
9696	417	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-30 22:19:55.319635	t
9697	365	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-27 11:06:39.292379	t
9698	439	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-22 22:20:23.186983	t
9699	407	Học lập trình Python cơ bản	{review,coffee}	2025-10-10 16:11:37.255884	t
9700	338	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-10-30 17:27:32.592285	f
9701	97	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-11-09 20:12:58.866106	t
9702	498	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-10 03:48:23.326837	t
9703	248	Học lập trình Python cơ bản	{food,vietnam}	2025-10-23 07:37:07.765767	t
9704	854	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-07 18:47:00.302805	t
9705	156	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-10 06:15:23.942477	t
9706	52	Khám phá du lịch Việt Nam	{general}	2025-10-25 14:20:55.844332	f
9707	555	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-05 07:53:38.649645	t
9708	21	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-22 06:15:10.944303	t
9709	647	Khám phá du lịch Việt Nam	{general}	2025-10-26 01:05:37.390119	t
9710	114	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-11-03 08:56:46.066031	t
9711	18	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-18 06:16:52.817182	t
9712	413	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-12 22:27:06.141772	f
9713	195	Học lập trình Python cơ bản	{travel,vietnam}	2025-10-20 05:19:10.533723	t
9714	959	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-02 08:53:21.848363	f
9715	267	Học lập trình Python cơ bản	{tech,python}	2025-10-25 14:51:27.623034	t
9716	215	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-10 08:32:34.319191	t
9717	354	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-31 00:46:50.539247	t
9718	348	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-11-10 04:48:09.366938	t
9719	173	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-28 17:20:35.470038	t
9720	579	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-09-29 13:09:18.979866	t
9721	63	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-10-25 03:04:01.603588	f
9722	980	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-20 23:32:09.546849	t
9723	239	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-18 02:25:47.664415	f
9724	251	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-09-29 19:53:12.527904	t
9725	362	Du lịch Đà Nẵng cùng bạn bè	{general}	2025-10-02 16:22:15.96285	t
9726	532	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-11-03 03:42:39.234	t
9727	804	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-11-05 07:19:45.483169	t
9728	199	Âm nhạc và cuộc sống	{tech,python}	2025-10-19 07:42:07.914586	t
9729	363	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-14 04:00:37.216784	t
9730	534	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-20 10:27:36.062733	t
9731	194	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-18 22:46:13.863898	t
9732	897	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-13 07:39:28.817233	t
9733	660	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-21 18:13:50.099178	t
9734	690	Review các quán cà phê nổi tiếng	{tech,python}	2025-11-11 11:26:22.05747	t
9735	191	Thể thao và sức khỏe mỗi ngày	{general}	2025-11-07 18:50:03.533753	t
9736	915	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-16 15:26:29.96016	t
9737	146	Review các quán cà phê nổi tiếng	{general}	2025-10-03 21:08:20.712609	t
9738	735	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-24 15:09:15.422906	t
9739	704	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-01 03:42:28.116966	t
9740	448	Review các quán cà phê nổi tiếng	{review,coffee}	2025-11-04 17:59:34.924078	t
9741	426	Âm nhạc và cuộc sống	{general}	2025-10-30 13:51:50.642645	t
9742	380	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-31 22:23:28.287397	t
9743	767	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-09 11:39:17.698606	t
9744	444	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-10-30 03:10:10.740349	t
9745	567	Review các quán cà phê nổi tiếng	{general}	2025-10-06 02:41:52.995058	t
9746	721	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-27 09:09:33.532317	t
9747	993	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-27 02:28:11.318708	t
9748	913	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-11 16:21:49.097902	t
9749	820	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-11-06 14:32:56.42584	t
9750	570	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-15 09:25:13.745075	t
9751	69	Học lập trình Python cơ bản	{travel,vietnam}	2025-09-28 19:03:18.951597	t
9752	799	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-10-09 01:38:52.229698	t
9753	59	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-26 00:32:53.08098	t
9754	376	Khám phá du lịch Việt Nam	{tech,python}	2025-09-29 03:29:24.068598	t
9755	88	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-29 07:38:39.898557	t
9756	495	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-02 10:07:43.337496	t
9757	461	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-10 06:39:53.793263	t
9758	959	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-10 16:02:52.341372	t
9759	314	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-01 14:05:52.656296	t
9760	859	Âm nhạc và cuộc sống	{tech,python}	2025-11-09 11:27:59.53635	t
9761	695	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-29 12:03:43.972814	t
9762	47	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-22 02:44:55.903776	t
9763	587	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-11-07 00:40:41.377011	t
9764	352	Giới thiệu công nghệ AI hiện đại	{general}	2025-10-14 05:37:46.468446	f
9765	511	Học lập trình Python cơ bản	{ai,machinelearning}	2025-11-12 04:06:43.623819	t
9766	153	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-21 15:56:54.16463	t
9767	537	Âm nhạc và cuộc sống	{general}	2025-10-20 14:45:28.652798	t
9768	664	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-25 20:11:11.848381	t
9769	431	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-09-30 00:01:50.023643	t
9770	609	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-08 13:59:00.019975	t
9771	399	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-09-28 17:20:13.127497	t
9772	430	Học lập trình Python cơ bản	{travel,vietnam}	2025-10-23 23:05:41.086355	t
9773	544	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-10 13:58:02.94785	t
9774	18	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-11-08 03:50:47.033955	t
9775	525	Học lập trình Python cơ bản	{food,vietnam}	2025-10-19 06:05:37.985013	t
9776	709	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-09 08:11:02.046343	t
9777	459	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-10-08 08:04:37.503836	f
9778	34	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-11-05 06:17:08.934684	t
9779	729	Giới thiệu công nghệ AI hiện đại	{general}	2025-11-07 03:21:28.783424	t
9780	772	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-11-09 07:32:54.179298	t
9781	890	Khám phá du lịch Việt Nam	{tech,python}	2025-09-29 14:11:45.906422	t
9782	146	Học lập trình Python cơ bản	{review,coffee}	2025-10-31 12:32:36.362826	t
9783	973	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-09-29 07:52:45.82752	t
9784	989	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-21 07:57:35.053931	t
9785	789	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-11-04 10:58:26.228904	t
9786	443	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-11-04 16:25:38.652538	f
9787	290	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-26 10:25:23.765729	f
9788	249	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-13 22:55:21.690857	t
9789	762	Âm nhạc và cuộc sống	{tech,python}	2025-09-28 21:40:34.545953	t
9790	895	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-28 03:44:25.497551	t
9791	883	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-10-20 10:11:40.694088	f
9792	263	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-09-29 03:46:46.553752	t
9793	242	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-05 02:57:54.693101	t
9794	513	Học lập trình Python cơ bản	{general}	2025-09-29 06:50:19.33907	t
9795	298	Âm nhạc và cuộc sống	{tech,python}	2025-10-10 21:39:20.802393	t
9796	282	Khám phá du lịch Việt Nam	{food,vietnam}	2025-10-08 06:10:03.436833	t
9797	515	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-22 20:57:43.818888	t
9798	472	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-02 09:18:32.886433	t
9799	839	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-24 19:54:31.258688	t
9800	177	Âm nhạc và cuộc sống	{food,vietnam}	2025-09-30 13:15:12.525697	t
9801	431	Âm nhạc và cuộc sống	{travel,vietnam}	2025-10-22 00:11:04.949147	t
9802	556	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-25 12:15:14.84518	t
9803	865	Review các quán cà phê nổi tiếng	{general}	2025-10-17 02:12:51.689863	t
9804	570	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-18 03:03:58.086066	f
9805	806	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-09-29 13:00:56.679394	t
9806	509	Review các quán cà phê nổi tiếng	{tech,python}	2025-11-08 06:42:43.006406	f
9807	857	Âm nhạc và cuộc sống	{general}	2025-11-06 11:46:32.956228	t
9808	528	Học lập trình Python cơ bản	{review,coffee}	2025-10-16 09:31:17.225739	t
9809	809	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-10-07 00:32:32.002979	t
9810	511	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-27 07:24:42.969209	t
9811	606	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-24 11:59:35.922067	t
9812	958	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-16 13:09:02.264943	t
9813	494	Giới thiệu công nghệ AI hiện đại	{general}	2025-10-26 19:45:54.930534	t
9814	481	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-21 01:24:56.011918	t
9815	761	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-24 04:04:38.088135	t
9816	972	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-12 16:25:07.607024	t
9817	64	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-11-06 21:25:34.014468	t
9818	277	Giới thiệu công nghệ AI hiện đại	{food,vietnam}	2025-11-09 01:09:11.526336	t
9819	951	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-10-03 15:03:08.766142	t
9820	546	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-11-02 11:55:24.880628	t
9821	346	Giới thiệu công nghệ AI hiện đại	{travel,vietnam}	2025-10-11 05:46:27.984418	f
9822	720	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-25 02:54:03.774859	t
9823	989	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-04 17:51:39.449169	t
9824	25	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-21 10:33:59.917505	t
9825	78	Thể thao và sức khỏe mỗi ngày	{general}	2025-11-11 14:21:18.992148	t
9826	554	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-09-30 03:52:00.862573	t
9827	327	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-15 13:32:51.8537	t
9828	180	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-18 21:57:48.203437	t
9829	611	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-03 02:34:47.444038	t
9830	138	Học lập trình Python cơ bản	{travel,vietnam}	2025-11-02 12:57:54.345249	t
9831	545	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-10-31 02:20:05.559936	t
9832	728	Thể thao và sức khỏe mỗi ngày	{general}	2025-11-10 22:42:23.388541	t
9833	324	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-08 00:32:58.717988	t
9834	600	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-29 20:52:12.517731	t
9835	283	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-11-10 08:32:19.426584	t
9836	291	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-11-03 18:13:12.808837	t
9837	282	Học lập trình Python cơ bản	{review,coffee}	2025-10-28 11:06:12.859572	f
9838	459	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-30 05:47:07.167739	t
9839	728	Khám phá du lịch Việt Nam	{review,coffee}	2025-09-30 15:48:30.494237	t
9840	418	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-08 08:28:24.304064	t
9841	873	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-11-10 00:39:30.440165	t
9842	248	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-10-30 19:18:02.912297	t
9843	115	Học lập trình Python cơ bản	{tech,python}	2025-10-18 02:44:59.495729	t
9844	277	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-11-10 23:27:38.8993	t
9845	86	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-11-02 04:38:44.642745	t
9846	406	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-15 00:34:18.637254	t
9847	389	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-24 17:36:44.964112	f
9848	48	Học lập trình Python cơ bản	{food,vietnam}	2025-10-13 00:14:28.079353	t
9849	166	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-07 09:38:23.391095	f
9850	244	Khám phá du lịch Việt Nam	{tech,python}	2025-10-29 05:01:07.647287	t
9851	203	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-21 02:10:36.197119	t
9852	16	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-09-28 15:46:42.838559	t
9853	30	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-11 12:00:26.44691	t
9854	671	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-11-09 00:59:40.320958	t
9855	143	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-28 10:55:29.107602	t
9856	435	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-21 06:11:36.310166	t
9857	91	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-11-08 12:43:57.162671	t
9858	516	Review các quán cà phê nổi tiếng	{general}	2025-09-29 22:40:25.807189	f
9859	133	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-11-11 11:54:34.421921	t
9860	75	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-18 21:06:28.994902	f
9861	395	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-04 08:29:36.635744	f
9862	559	Khám phá du lịch Việt Nam	{food,vietnam}	2025-11-11 14:12:27.253633	t
9863	176	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-09 16:45:58.666416	t
9864	513	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-11 16:27:51.753062	f
9865	54	Giới thiệu công nghệ AI hiện đại	{general}	2025-11-10 16:58:14.937381	t
9866	659	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-05 10:31:37.598402	t
9867	465	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-13 07:42:15.118377	f
9868	101	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-17 10:11:08.428268	f
9869	743	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-11-04 12:49:08.983419	t
9870	539	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-25 09:05:24.320189	t
9871	555	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-09-30 23:01:50.872861	t
9872	543	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-29 12:56:56.860702	t
9873	458	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-28 15:23:36.871599	f
9874	625	Học lập trình Python cơ bản	{food,vietnam}	2025-10-10 17:31:21.112045	t
9875	809	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-05 23:14:53.974942	f
9876	45	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-10-13 03:57:01.283343	t
9877	728	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-05 08:53:14.159442	t
9878	781	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-09-28 11:47:59.146794	t
9879	226	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-20 04:46:15.383907	t
9880	689	Âm nhạc và cuộc sống	{tech,python}	2025-11-01 17:52:38.750789	t
9881	467	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-11-04 08:35:45.335291	t
9882	461	Âm nhạc và cuộc sống	{travel,vietnam}	2025-11-02 11:13:10.320569	t
9883	113	Âm nhạc và cuộc sống	{tech,python}	2025-10-19 01:52:36.96127	t
9884	706	Giới thiệu công nghệ AI hiện đại	{tech,python}	2025-10-12 03:42:01.01756	t
9885	176	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-11-08 16:07:24.573721	t
9886	73	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-06 14:23:37.162716	f
9887	640	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-14 11:22:23.029584	t
9888	760	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-16 10:29:01.496497	t
9889	623	Âm nhạc và cuộc sống	{food,vietnam}	2025-11-06 22:50:59.804369	f
9890	244	Học lập trình Python cơ bản	{food,vietnam}	2025-10-18 14:13:15.232651	t
9891	742	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-27 14:07:11.684557	t
9892	339	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-11-03 10:32:16.522066	f
9893	750	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-10-27 08:56:39.735924	t
9894	707	Khám phá du lịch Việt Nam	{tech,python}	2025-10-24 12:11:28.173847	t
9895	95	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-02 09:28:00.940282	t
9896	932	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-02 12:57:04.664997	t
9897	107	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-11-10 03:31:15.3676	t
9898	978	Âm nhạc và cuộc sống	{food,vietnam}	2025-09-29 01:30:27.565825	t
9899	122	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-21 16:34:55.337436	t
9900	209	Khám phá du lịch Việt Nam	{food,vietnam}	2025-11-03 09:15:46.149113	t
9901	329	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-30 14:03:56.33305	t
9902	536	Âm nhạc và cuộc sống	{general}	2025-11-05 06:50:57.574998	t
9903	433	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-11-12 05:44:43.547461	t
9904	560	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-11 10:45:04.381371	t
9905	975	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-18 21:48:10.932762	t
9906	545	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-09-28 11:13:14.611273	t
9907	360	Học lập trình Python cơ bản	{review,coffee}	2025-10-04 22:44:57.879731	f
9908	676	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-18 07:28:15.538137	t
9909	928	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-24 21:46:41.284251	t
9910	712	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-16 18:49:59.831471	t
9911	185	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-31 02:54:00.94536	t
9912	282	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-29 08:43:36.131072	t
9913	747	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-03 16:49:27.178295	t
9914	255	Âm nhạc và cuộc sống	{review,coffee}	2025-11-10 13:10:17.0685	t
9915	54	Học lập trình Python cơ bản	{general}	2025-10-24 23:01:37.808578	t
9916	604	Học lập trình Python cơ bản	{tech,python}	2025-11-10 07:34:36.738748	f
9917	735	Học lập trình Python cơ bản	{ai,machinelearning}	2025-10-16 20:07:05.179602	t
9918	485	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-21 01:45:54.133923	t
9919	703	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-12 16:55:32.382308	t
9920	691	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-24 03:34:50.648133	t
9921	368	Ẩm thực Hà Nội và Sài Gòn	{review,coffee}	2025-10-29 14:43:29.023204	t
9922	145	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-27 19:32:20.452087	t
9923	65	Du lịch Đà Nẵng cùng bạn bè	{tech,python}	2025-10-09 18:25:29.652032	t
9924	926	Du lịch Đà Nẵng cùng bạn bè	{travel,vietnam}	2025-10-30 11:33:56.032104	t
9925	663	Âm nhạc và cuộc sống	{tech,python}	2025-10-23 03:44:36.595958	t
9926	201	Âm nhạc và cuộc sống	{tech,python}	2025-10-02 17:01:59.765098	t
9927	210	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-23 18:40:37.111353	t
9928	880	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-24 00:58:39.128363	t
9929	380	Review các quán cà phê nổi tiếng	{ai,machinelearning}	2025-11-06 09:37:01.627956	t
9930	655	Khám phá du lịch Việt Nam	{review,coffee}	2025-10-19 11:52:03.362702	t
9931	210	Học lập trình Python cơ bản	{ai,machinelearning}	2025-11-01 09:58:25.602373	f
9932	517	Khám phá du lịch Việt Nam	{tech,python}	2025-10-29 14:39:23.785181	t
9933	802	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-10-13 19:06:24.350031	t
9934	140	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-10-28 17:10:02.843275	t
9935	373	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-13 16:01:51.125514	t
9936	163	Review các quán cà phê nổi tiếng	{general}	2025-11-01 22:02:56.140227	t
9937	10	Du lịch Đà Nẵng cùng bạn bè	{review,coffee}	2025-11-10 22:59:36.326312	t
9938	772	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-11-10 01:33:50.421461	t
9939	724	Thể thao và sức khỏe mỗi ngày	{review,coffee}	2025-10-03 00:38:20.03551	t
9940	635	Học lập trình Python cơ bản	{tech,python}	2025-10-19 17:26:41.595952	t
9941	580	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-11-01 11:21:42.788523	t
9942	953	Học lập trình Python cơ bản	{travel,vietnam}	2025-11-11 07:36:07.688072	t
9943	683	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-11-02 04:51:45.493774	t
9944	300	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-16 13:37:33.145082	t
9945	788	Du lịch Đà Nẵng cùng bạn bè	{ai,machinelearning}	2025-10-07 04:20:32.969575	t
9946	969	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-11-04 13:09:21.524962	t
9947	250	Khám phá du lịch Việt Nam	{food,vietnam}	2025-11-11 19:02:09.874473	t
9948	388	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-18 22:21:41.940467	t
9949	800	Âm nhạc và cuộc sống	{tech,python}	2025-11-09 14:04:04.195006	t
9950	685	Học lập trình Python cơ bản	{travel,vietnam}	2025-10-17 17:01:22.857828	t
9951	680	Giới thiệu công nghệ AI hiện đại	{review,coffee}	2025-11-04 12:48:23.560463	t
9952	306	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-19 19:07:30.612882	t
9953	691	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-11-01 02:23:10.797352	t
9954	728	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-09-30 02:04:38.427081	t
9955	2	Thể thao và sức khỏe mỗi ngày	{tech,python}	2025-10-03 04:04:51.92303	t
9956	613	Âm nhạc và cuộc sống	{review,coffee}	2025-11-04 13:00:36.003887	t
9957	215	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-07 02:14:11.694772	t
9958	661	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-12 21:57:52.538181	f
9959	562	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-10-16 11:48:12.540394	t
9960	242	Ẩm thực Hà Nội và Sài Gòn	{general}	2025-10-12 23:48:05.196648	t
9961	285	Review các quán cà phê nổi tiếng	{food,vietnam}	2025-10-18 15:44:50.55841	t
9962	642	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-05 07:13:33.754137	t
9963	835	Review các quán cà phê nổi tiếng	{tech,python}	2025-11-10 00:28:27.395039	t
9964	933	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-10-28 13:28:41.579177	t
9965	90	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-24 19:11:59.905202	t
9966	235	Khám phá du lịch Việt Nam	{food,vietnam}	2025-11-11 05:52:01.779654	t
9967	324	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-10-08 08:00:48.560619	t
9968	432	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-09-28 21:14:43.144381	t
9969	564	Âm nhạc và cuộc sống	{travel,vietnam}	2025-11-10 06:44:32.967554	f
9970	257	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-15 07:10:38.773261	t
9971	115	Học lập trình Python cơ bản	{review,coffee}	2025-11-08 15:40:34.583081	t
9972	402	Âm nhạc và cuộc sống	{general}	2025-11-11 05:16:10.241977	t
9973	467	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-04 07:23:14.41618	t
9974	822	Ẩm thực Hà Nội và Sài Gòn	{food,vietnam}	2025-10-31 22:11:03.679189	t
9975	15	Ẩm thực Hà Nội và Sài Gòn	{travel,vietnam}	2025-10-08 05:35:38.209054	t
9976	366	Review các quán cà phê nổi tiếng	{travel,vietnam}	2025-10-25 07:06:59.793225	t
9977	693	Du lịch Đà Nẵng cùng bạn bè	{food,vietnam}	2025-10-06 02:44:56.715667	t
9978	577	Khám phá du lịch Việt Nam	{travel,vietnam}	2025-11-04 14:24:34.800723	f
9979	451	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-11-01 01:27:55.65671	f
9980	480	Âm nhạc và cuộc sống	{review,coffee}	2025-11-08 22:28:44.161481	t
9981	803	Thể thao và sức khỏe mỗi ngày	{ai,machinelearning}	2025-10-28 18:56:05.360487	t
9982	894	Thể thao và sức khỏe mỗi ngày	{general}	2025-11-09 05:35:57.43015	f
9983	531	Học lập trình Python cơ bản	{food,vietnam}	2025-10-02 10:43:45.79802	t
9984	245	Review các quán cà phê nổi tiếng	{tech,python}	2025-10-10 17:18:02.813521	f
9985	480	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-03 03:34:57.956243	t
9986	740	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-09-29 22:49:12.690875	t
9987	610	Âm nhạc và cuộc sống	{ai,machinelearning}	2025-10-08 22:35:47.001378	f
9988	77	Học lập trình Python cơ bản	{review,coffee}	2025-10-15 22:40:18.875888	t
9989	321	Âm nhạc và cuộc sống	{travel,vietnam}	2025-10-23 10:35:46.515793	f
9990	753	Khám phá du lịch Việt Nam	{ai,machinelearning}	2025-10-06 05:23:01.963725	t
9991	913	Học lập trình Python cơ bản	{general}	2025-10-31 13:32:48.393628	t
9992	353	Ẩm thực Hà Nội và Sài Gòn	{ai,machinelearning}	2025-10-02 07:18:40.635051	t
9993	533	Thể thao và sức khỏe mỗi ngày	{general}	2025-10-09 16:36:58.959307	t
9994	764	Review các quán cà phê nổi tiếng	{review,coffee}	2025-10-24 21:28:31.053787	t
9995	489	Âm nhạc và cuộc sống	{food,vietnam}	2025-10-02 01:49:37.004841	f
9996	315	Giới thiệu công nghệ AI hiện đại	{ai,machinelearning}	2025-10-13 10:55:37.413404	t
9997	514	Thể thao và sức khỏe mỗi ngày	{travel,vietnam}	2025-10-14 22:26:26.991429	t
9998	809	Ẩm thực Hà Nội và Sài Gòn	{tech,python}	2025-11-09 13:16:26.170941	t
9999	257	Thể thao và sức khỏe mỗi ngày	{food,vietnam}	2025-10-31 13:25:43.785672	f
10000	65	Khám phá du lịch Việt Nam	{tech,python}	2025-10-21 05:47:30.536965	t
\.


--
-- TOC entry 5089 (class 0 OID 18322)
-- Dependencies: 232
-- Data for Name: post_like; Type: TABLE DATA; Schema: social; Owner: postgres
--

COPY social.post_like (user_id, post_id, liked_at) FROM stdin;
\.


--
-- TOC entry 5096 (class 0 OID 0)
-- Dependencies: 230
-- Name: post_post_id_seq; Type: SEQUENCE SET; Schema: social; Owner: postgres
--

SELECT pg_catalog.setval('social.post_post_id_seq', 10000, true);


--
-- TOC entry 4938 (class 2606 OID 18329)
-- Name: post_like post_like_pkey; Type: CONSTRAINT; Schema: social; Owner: postgres
--

ALTER TABLE ONLY social.post_like
    ADD CONSTRAINT post_like_pkey PRIMARY KEY (user_id, post_id);


--
-- TOC entry 4936 (class 2606 OID 18321)
-- Name: post post_pkey; Type: CONSTRAINT; Schema: social; Owner: postgres
--

ALTER TABLE ONLY social.post
    ADD CONSTRAINT post_pkey PRIMARY KEY (post_id);


--
-- TOC entry 4930 (class 1259 OID 18330)
-- Name: idx_lower_content; Type: INDEX; Schema: social; Owner: postgres
--

CREATE INDEX idx_lower_content ON social.post USING btree (lower(content));


--
-- TOC entry 4931 (class 1259 OID 18334)
-- Name: idx_post_content_trgm; Type: INDEX; Schema: social; Owner: postgres
--

CREATE INDEX idx_post_content_trgm ON social.post USING gin (content public.gin_trgm_ops);


--
-- TOC entry 4932 (class 1259 OID 18332)
-- Name: idx_post_recent_public; Type: INDEX; Schema: social; Owner: postgres
--

CREATE INDEX idx_post_recent_public ON social.post USING btree (created_at DESC) WHERE (is_public = true);


--
-- TOC entry 4933 (class 1259 OID 18331)
-- Name: idx_post_tags_gin; Type: INDEX; Schema: social; Owner: postgres
--

CREATE INDEX idx_post_tags_gin ON social.post USING gin (tags);


--
-- TOC entry 4934 (class 1259 OID 18333)
-- Name: idx_post_user_created; Type: INDEX; Schema: social; Owner: postgres
--

CREATE INDEX idx_post_user_created ON social.post USING btree (user_id, created_at DESC);


-- Completed on 2025-11-12 10:33:38

--
-- PostgreSQL database dump complete
--

\unrestrict TDNYVrJXlQm8bMVm0NcPEB7TYW7wIdzYHTGqHCfj4gbtlQAcCfCc1ABOftFHxKD

