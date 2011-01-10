--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: sastre1_cgwords; Type: TABLE; Schema: public; Owner: kevin; Tablespace: 
--

CREATE TABLE sastre1_cgwords (
    word_id integer NOT NULL,
    utterance_id integer,
    location integer,
    surface character varying(100),
    auto character varying(250),
    com character varying(250),
    speaker character varying(10),
    langid character varying(10),
    filename character varying(50)
);


ALTER TABLE public.sastre1_cgwords OWNER TO kevin;

--
-- Name: sastre1_cgwords_word_id_seq; Type: SEQUENCE; Schema: public; Owner: kevin
--

CREATE SEQUENCE sastre1_cgwords_word_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.sastre1_cgwords_word_id_seq OWNER TO kevin;

--
-- Name: sastre1_cgwords_word_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kevin
--

ALTER SEQUENCE sastre1_cgwords_word_id_seq OWNED BY sastre1_cgwords.word_id;


--
-- Name: sastre1_cgwords_word_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kevin
--

SELECT pg_catalog.setval('sastre1_cgwords_word_id_seq', 6959, true);


--
-- Name: word_id; Type: DEFAULT; Schema: public; Owner: kevin
--

ALTER TABLE sastre1_cgwords ALTER COLUMN word_id SET DEFAULT nextval('sastre1_cgwords_word_id_seq'::regclass);


--
-- Data for Name: sastre1_cgwords; Type: TABLE DATA; Schema: public; Owner: kevin
--

COPY sastre1_cgwords (word_id, utterance_id, location, surface, auto, com, speaker, langid, filename) FROM stdin;
2	1	2	y	\N	\N	KEV	3	sastre1
3	1	3	qué	\N	\N	KEV	3	sastre1
4	1	4	tú	\N	\N	KEV	3	sastre1
5	1	5	crees	\N	\N	KEV	3	sastre1
6	1	6	de	\N	\N	KEV	3	sastre1
7	1	7	aquí	\N	\N	KEV	3	sastre1
8	1	8	la	\N	\N	KEV	3	sastre1
9	1	9	cuadra	\N	\N	KEV	3	sastre1
10	1	10	lo	\N	\N	KEV	3	sastre1
11	1	11	que	\N	\N	KEV	3	sastre1
12	1	12	están	\N	\N	KEV	3	sastre1
13	1	13	haciendo	\N	\N	KEV	3	sastre1
14	1	14	?	\N	\N	KEV	999	sastre1
1	1	1	bueno	\N		KEV	3	sastre1
16	2	2	rotondita	\N	\N	KEV	3	sastre1
17	2	3	esa	\N	\N	KEV	3	sastre1
18	2	4	do	\N	\N	KEV	2	sastre1
19	2	5	you	\N	\N	KEV	2	sastre1
20	2	6	like	\N	\N	KEV	2	sastre1
21	2	7	that	\N	\N	KEV	2	sastre1
22	2	8	?	\N	\N	KEV	999	sastre1
15	2	1	la	\N		KEV	3	sastre1
24	3	2	that's	\N	\N	SOF	2	sastre1
25	3	3	illegal	\N	\N	SOF	2	sastre1
26	3	4	.	\N	\N	SOF	999	sastre1
23	3	1	pero	\N		SOF	3	sastre1
28	4	2	rotonda	\N	\N	SOF	3	sastre1
29	4	3	es	\N	\N	SOF	3	sastre1
30	4	4	illegal	\N	\N	SOF	2	sastre1
31	4	5	.	\N	\N	SOF	999	sastre1
27	4	1	esa	\N		SOF	3	sastre1
33	5	2	what	\N	\N	SOF	2	sastre1
34	5	3	I	\N	\N	SOF	2	sastre1
35	5	4	know	\N	\N	SOF	2	sastre1
36	5	5	.	\N	\N	SOF	999	sastre1
32	5	1	from	\N		SOF	2	sastre1
38	6	2	de	\N	\N	SOF	3	sastre1
39	6	3	eso	\N	\N	SOF	3	sastre1
40	6	4	es	\N	\N	SOF	3	sastre1
41	6	5	illegal	\N	\N	SOF	2	sastre1
42	6	6	.	\N	\N	SOF	999	sastre1
37	6	1	supuesto	\N		SOF	3	sastre1
44	7	2	si	\N	\N	SOF	3	sastre1
45	7	3	entra	\N	\N	SOF	3	sastre1
46	7	4	algún	\N	\N	SOF	3	sastre1
47	7	5	camión	\N	\N	SOF	3	sastre1
48	7	6	ahí	\N	\N	SOF	3	sastre1
49	7	7	por	\N	\N	SOF	3	sastre1
50	7	8	ejemplo	\N	\N	SOF	3	sastre1
51	7	9	a	\N	\N	SOF	3	sastre1
52	7	10	dejar	\N	\N	SOF	3	sastre1
53	7	11	muebles	\N	\N	SOF	3	sastre1
54	7	12	o	\N	\N	SOF	3	sastre1
55	7	13	cualquier	\N	\N	SOF	3	sastre1
56	7	14	cosa	\N	\N	SOF	3	sastre1
57	7	15	.	\N	\N	SOF	999	sastre1
43	7	1	y	\N		SOF	3	sastre1
59	8	2	no	\N	\N	SOF	3	sastre1
60	8	3	sé	\N	\N	SOF	3	sastre1
61	8	4	.	\N	\N	SOF	999	sastre1
58	8	1	yo	\N		SOF	3	sastre1
63	9	2	va	\N	\N	SOF	3	sastre1
64	9	3	a	\N	\N	SOF	3	sastre1
65	9	4	doblar	\N	\N	SOF	3	sastre1
66	9	5	esa	\N	\N	SOF	3	sastre1
67	9	6	rotondita	\N	\N	SOF	3	sastre1
68	9	7	?	\N	\N	SOF	999	sastre1
62	9	1	cómo	\N		SOF	3	sastre1
70	10	2	no	\N	\N	SOF	3	sastre1
71	10	3	está	\N	\N	SOF	3	sastre1
72	10	4	fácil	\N	\N	SOF	3	sastre1
73	10	5	para	\N	\N	SOF	3	sastre1
74	10	6	los	\N	\N	SOF	3	sastre1
75	10	7	carros	\N	\N	SOF	3	sastre1
76	10	8	de	\N	\N	SOF	3	sastre1
77	10	9	uno	\N	\N	SOF	3	sastre1
78	10	10	.	\N	\N	SOF	999	sastre1
69	10	1	porque	\N		SOF	3	sastre1
80	11	2	.	\N	\N	KEV	999	sastre1
79	11	1	no	\N		KEV	0	sastre1
82	12	2	pero	\N	\N	KEV	3	sastre1
83	12	3	.	\N	\N	KEV	999	sastre1
81	12	1	no	\N		KEV	3	sastre1
85	13	2	tanto	\N	\N	SOF	3	sastre1
86	13	3	este	\N	\N	SOF	3	sastre1
87	13	4	lado	\N	\N	SOF	3	sastre1
88	13	5	sino	\N	\N	SOF	3	sastre1
89	13	6	el	\N	\N	SOF	3	sastre1
90	13	7	lado	\N	\N	SOF	3	sastre1
91	13	8	izquierdo	\N	\N	SOF	3	sastre1
92	13	9	.	\N	\N	SOF	999	sastre1
84	13	1	no	\N		SOF	3	sastre1
94	14	2	de	\N	\N	KEV	3	sastre1
95	14	3	entrar	\N	\N	KEV	3	sastre1
96	14	4	o	\N	\N	KEV	3	sastre1
97	14	5	el	\N	\N	KEV	3	sastre1
98	14	6	de	\N	\N	KEV	3	sastre1
99	14	7	salir	\N	\N	KEV	3	sastre1
100	14	8	?	\N	\N	KEV	999	sastre1
93	14	1	el	\N		KEV	3	sastre1
102	15	2	tú	\N	\N	SOF	3	sastre1
103	15	3	entras	\N	\N	SOF	3	sastre1
104	15	4	.	\N	\N	SOF	999	sastre1
101	15	1	cuando	\N		SOF	3	sastre1
106	16	2	.	\N	\N	KEV	999	sastre1
105	16	1	mmhm	\N		KEV	0	sastre1
108	17	2	ese	\N	\N	KEV	3	sastre1
109	17	3	está	\N	\N	KEV	3	sastre1
110	17	4	en	\N	\N	KEV	3	sastre1
111	17	5	la	\N	\N	KEV	3	sastre1
112	17	6	intersección	\N	\N	KEV	3	sastre1
113	17	7	.	\N	\N	KEV	999	sastre1
107	17	1	bueno	\N		KEV	3	sastre1
115	18	2	tiene	\N	\N	KEV	3	sastre1
116	18	3	bastante	\N	\N	KEV	3	sastre1
117	18	4	espacio	\N	\N	KEV	3	sastre1
118	18	5	.	\N	\N	KEV	999	sastre1
114	18	1	ese	\N		KEV	3	sastre1
120	19	2	otro	\N	\N	KEV	3	sastre1
121	19	3	yo	\N	\N	KEV	3	sastre1
122	19	4	lo	\N	\N	KEV	3	sastre1
123	19	5	veo	\N	\N	KEV	3	sastre1
124	19	6	más	\N	\N	KEV	3	sastre1
125	19	7	difícil	\N	\N	KEV	3	sastre1
126	19	8	porque	\N	\N	KEV	3	sastre1
127	19	9	es	\N	\N	KEV	3	sastre1
128	19	10	más	\N	\N	KEV	3	sastre1
129	19	11	estrechito	\N	\N	KEV	3	sastre1
130	19	12	.	\N	\N	KEV	999	sastre1
119	19	1	el	\N		KEV	3	sastre1
132	20	2	viste	\N	\N	SOF	3	sastre1
133	20	3	las	\N	\N	SOF	3	sastre1
134	20	4	cositas	\N	\N	SOF	3	sastre1
135	20	5	que	\N	\N	SOF	3	sastre1
136	20	6	compraron	\N	\N	SOF	3	sastre1
137	20	7	para	\N	\N	SOF	3	sastre1
138	20	8	los	\N	\N	SOF	3	sastre1
139	20	9	speed	\N	\N	SOF	2	sastre1
140	20	10	bumps	\N	\N	SOF	2	sastre1
141	20	11	?	\N	\N	SOF	999	sastre1
131	20	1	pero	\N		SOF	3	sastre1
143	21	2	viste	\N	\N	SOF	3	sastre1
144	21	3	lo	\N	\N	SOF	3	sastre1
145	21	4	que	\N	\N	SOF	3	sastre1
146	21	5	van	\N	\N	SOF	3	sastre1
147	21	6	a	\N	\N	SOF	3	sastre1
148	21	7	hacer	\N	\N	SOF	3	sastre1
149	21	8	?	\N	\N	SOF	999	sastre1
142	21	1	tú	\N		SOF	3	sastre1
151	22	2	.	\N	\N	KEV	999	sastre1
150	22	1	no	\N		KEV	3	sastre1
153	23	2	no	\N	\N	SOF	3	sastre1
154	23	3	has	\N	\N	SOF	3	sastre1
155	23	4	visto	\N	\N	SOF	3	sastre1
156	23	5	una	\N	\N	SOF	3	sastre1
157	23	6	.	\N	\N	SOF	999	sastre1
152	23	1	tú	\N		SOF	3	sastre1
159	24	2	los	\N	\N	KEV	3	sastre1
160	24	3	bloquecitos	\N	\N	KEV	3	sastre1
161	24	4	esos	\N	\N	KEV	3	sastre1
162	24	5	.	\N	\N	KEV	999	sastre1
158	24	1	sí	\N		KEV	3	sastre1
164	25	2	bloquecitos	\N	\N	SOF	3	sastre1
165	25	3	esos	\N	\N	SOF	3	sastre1
166	25	4	para	\N	\N	SOF	3	sastre1
167	25	5	ponerlos	\N	\N	SOF	3	sastre1
168	25	6	en	\N	\N	SOF	3	sastre1
169	25	7	el	\N	\N	SOF	3	sastre1
170	25	8	medio	\N	\N	SOF	3	sastre1
171	25	9	.	\N	\N	SOF	999	sastre1
163	25	1	los	\N		SOF	3	sastre1
173	26	2	.	\N	\N	KEV	999	sastre1
172	26	1	sí	\N		KEV	3	sastre1
175	27	2	estaban	\N	\N	SOF	3	sastre1
176	27	3	las	\N	\N	SOF	3	sastre1
177	27	4	tablitas	\N	\N	SOF	3	sastre1
178	27	5	esas	\N	\N	SOF	3	sastre1
179	27	6	.	\N	\N	SOF	999	sastre1
174	27	1	donde	\N		SOF	3	sastre1
181	28	2	lo	\N	\N	KEV	3	sastre1
182	28	3	que	\N	\N	KEV	3	sastre1
183	28	4	hicieron	\N	\N	KEV	3	sastre1
184	28	5	de	\N	\N	KEV	3	sastre1
185	28	6	concreto	\N	\N	KEV	3	sastre1
186	28	7	.	\N	\N	KEV	999	sastre1
180	28	1	en	\N		KEV	3	sastre1
188	29	2	.	\N	\N	SOF	999	sastre1
187	29	1	ajá	\N		SOF	3	sastre1
190	30	2	pero	\N	\N	KEV	3	sastre1
191	30	3	eso	\N	\N	KEV	3	sastre1
192	30	4	lo	\N	\N	KEV	3	sastre1
193	30	5	que	\N	\N	KEV	3	sastre1
194	30	6	va	\N	\N	KEV	3	sastre1
195	30	7	a	\N	\N	KEV	3	sastre1
196	30	8	ser	\N	\N	KEV	3	sastre1
197	30	9	como	\N	\N	KEV	3	sastre1
198	30	10	un	\N	\N	KEV	3	sastre1
199	30	11	pedacito	\N	\N	KEV	3	sastre1
200	30	12	de	\N	\N	KEV	3	sastre1
201	30	13	tile	\N	\N	KEV	2	sastre1
202	30	14	ahí	\N	\N	KEV	3	sastre1
203	30	15	.	\N	\N	KEV	999	sastre1
189	30	1	y	\N		KEV	3	sastre1
205	31	2	pero	\N	\N	SOF	3	sastre1
206	31	3	a	\N	\N	SOF	3	sastre1
207	31	4	lo	\N	\N	SOF	3	sastre1
208	31	5	mejor	\N	\N	SOF	3	sastre1
209	31	6	.	\N	\N	SOF	999	sastre1
204	31	1	sí	\N		SOF	3	sastre1
211	32	2	yo	\N	\N	KEV	3	sastre1
212	32	3	no	\N	\N	KEV	3	sastre1
213	32	4	creo	\N	\N	KEV	3	sastre1
214	32	5	que	\N	\N	KEV	3	sastre1
215	32	6	eso	\N	\N	KEV	3	sastre1
216	32	7	sea	\N	\N	KEV	3	sastre1
217	32	8	mucho	\N	\N	KEV	3	sastre1
218	32	9	speed	\N	\N	KEV	2	sastre1
219	32	10	bump	\N	\N	KEV	2	sastre1
220	32	11	.	\N	\N	KEV	999	sastre1
210	32	1	pero	\N		KEV	3	sastre1
222	33	2	.	\N	\N	SOF	999	sastre1
221	33	1	bueno	\N		SOF	3	sastre1
224	34	2	más	\N	\N	KEV	3	sastre1
225	34	3	bien	\N	\N	KEV	3	sastre1
226	34	4	yo	\N	\N	KEV	3	sastre1
227	34	5	creo	\N	\N	KEV	3	sastre1
228	34	6	que	\N	\N	KEV	3	sastre1
229	34	7	lo	\N	\N	KEV	3	sastre1
230	34	8	que	\N	\N	KEV	3	sastre1
231	34	9	va	\N	\N	KEV	3	sastre1
232	34	10	a	\N	\N	KEV	3	sastre1
233	34	11	hacer	\N	\N	KEV	3	sastre1
234	34	12	es	\N	\N	KEV	3	sastre1
235	34	13	como	\N	\N	KEV	3	sastre1
223	34	1	eso	\N		KEV	3	sastre1
236	34	14	un	\N	\N	KEV	3	sastre1
237	34	15	adorno	\N	\N	KEV	3	sastre1
238	34	16	pero	\N	\N	KEV	3	sastre1
239	34	17	.	\N	\N	KEV	999	sastre1
241	35	2	la	\N	\N	KEV	3	sastre1
242	35	3	velocidad	\N	\N	KEV	3	sastre1
243	35	4	ahí	\N	\N	KEV	3	sastre1
244	35	5	?	\N	\N	KEV	999	sastre1
240	35	1	baja	\N		KEV	3	sastre1
246	36	2	la	\N	\N	SOF	3	sastre1
247	36	3	calle	\N	\N	SOF	3	sastre1
248	36	4	no	\N	\N	SOF	3	sastre1
249	36	5	la	\N	\N	SOF	3	sastre1
250	36	6	van	\N	\N	SOF	3	sastre1
251	36	7	a	\N	\N	SOF	3	sastre1
252	36	8	hacer	\N	\N	SOF	3	sastre1
253	36	9	no	\N	\N	SOF	3	sastre1
254	36	10	?	\N	\N	SOF	999	sastre1
245	36	1	pero	\N		SOF	3	sastre1
256	37	2	la	\N	\N	KEV	3	sastre1
257	37	3	van	\N	\N	KEV	3	sastre1
258	37	4	a	\N	\N	KEV	3	sastre1
259	37	5	asfaltar	\N	\N	KEV	3	sastre1
260	37	6	.	\N	\N	KEV	999	sastre1
255	37	1	sí	\N		KEV	3	sastre1
262	38	2	es	\N	\N	SOF	3	sastre1
263	38	3	que	\N	\N	SOF	3	sastre1
264	38	4	yo	\N	\N	SOF	3	sastre1
265	38	5	no	\N	\N	SOF	3	sastre1
266	38	6	entiendo	\N	\N	SOF	3	sastre1
267	38	7	.	\N	\N	SOF	999	sastre1
261	38	1	pero	\N		SOF	3	sastre1
269	39	2	primero	\N	\N	SOF	3	sastre1
270	39	3	se	\N	\N	SOF	3	sastre1
271	39	4	asfalta	\N	\N	SOF	3	sastre1
272	39	5	antes	\N	\N	SOF	3	sastre1
273	39	6	de	\N	\N	SOF	3	sastre1
274	39	7	poner	\N	\N	SOF	3	sastre1
275	39	8	la	\N	\N	SOF	3	sastre1
276	39	9	hierba	\N	\N	SOF	3	sastre1
277	39	10	.	\N	\N	SOF	999	sastre1
268	39	1	porque	\N		SOF	3	sastre1
279	40	2	.	\N	\N	KEV	999	sastre1
278	40	1	bueno	\N		KEV	3	sastre1
281	41	2	que	\N	\N	SOF	3	sastre1
282	41	3	yo	\N	\N	SOF	3	sastre1
283	41	4	sepa	\N	\N	SOF	3	sastre1
284	41	5	.	\N	\N	SOF	999	sastre1
280	41	1	no	\N		SOF	3	sastre1
286	42	2	sí	\N	\N	KEV	3	sastre1
287	42	3	sí	\N	\N	KEV	3	sastre1
288	42	4	no	\N	\N	KEV	3	sastre1
289	42	5	tienes	\N	\N	KEV	3	sastre1
290	42	6	razón	\N	\N	KEV	3	sastre1
291	42	7	.	\N	\N	KEV	999	sastre1
285	42	1	sí	\N		KEV	3	sastre1
293	43	2	asfalto	\N	\N	KEV	3	sastre1
294	43	3	era	\N	\N	KEV	3	sastre1
295	43	4	.	\N	\N	KEV	999	sastre1
292	43	1	el	\N		KEV	3	sastre1
297	44	2	gastando	\N	\N	SOF	3	sastre1
298	44	3	doble	\N	\N	SOF	3	sastre1
299	44	4	dinero	\N	\N	SOF	3	sastre1
300	44	5	ahí	\N	\N	SOF	3	sastre1
301	44	6	.	\N	\N	SOF	999	sastre1
296	44	1	están	\N		SOF	3	sastre1
303	45	2	asfalto	\N	\N	KEV	3	sastre1
304	45	3	era	\N	\N	KEV	3	sastre1
305	45	4	para	\N	\N	KEV	3	sastre1
306	45	5	que	\N	\N	KEV	3	sastre1
307	45	6	lo	\N	\N	KEV	3	sastre1
308	45	7	hubieran	\N	\N	KEV	3	sastre1
309	45	8	hecho	\N	\N	KEV	3	sastre1
310	45	9	primero	\N	\N	KEV	3	sastre1
311	45	10	.	\N	\N	KEV	999	sastre1
302	45	1	el	\N		KEV	3	sastre1
313	46	2	limpiado	\N	\N	KEV	3	sastre1
314	46	3	todos	\N	\N	KEV	3	sastre1
315	46	4	los	\N	\N	KEV	3	sastre1
316	46	5	leftovers	\N	\N	KEV	2	sastre1
317	46	6	de	\N	\N	KEV	3	sastre1
318	46	7	asfalto	\N	\N	KEV	3	sastre1
319	46	8	y	\N	\N	KEV	3	sastre1
320	46	9	toda	\N	\N	KEV	3	sastre1
321	46	10	esa	\N	\N	KEV	3	sastre1
322	46	11	cosa	\N	\N	KEV	3	sastre1
323	46	12	.	\N	\N	KEV	999	sastre1
312	46	1	hubieran	\N		KEV	3	sastre1
325	47	2	después	\N	\N	KEV	3	sastre1
326	47	3	haber	\N	\N	KEV	3	sastre1
327	47	4	sembrado	\N	\N	KEV	3	sastre1
328	47	5	la	\N	\N	KEV	3	sastre1
329	47	6	hierba	\N	\N	KEV	3	sastre1
330	47	7	.	\N	\N	KEV	999	sastre1
324	47	1	entonces	\N		KEV	3	sastre1
332	48	2	recogido	\N	\N	KEV	3	sastre1
333	48	3	.	\N	\N	KEV	999	sastre1
331	48	1	haber	\N		KEV	3	sastre1
335	49	2	.	\N	\N	KEV	999	sastre1
334	49	1	limpiado	\N		KEV	3	sastre1
337	50	2	ya	\N	\N	KEV	3	sastre1
338	50	3	acabado	\N	\N	KEV	3	sastre1
339	50	4	y	\N	\N	KEV	3	sastre1
340	50	5	eso	\N	\N	KEV	3	sastre1
341	50	6	.	\N	\N	KEV	999	sastre1
336	50	1	y	\N		KEV	3	sastre1
343	51	2	bueno	\N	\N	KEV	3	sastre1
344	51	3	ellos	\N	\N	KEV	3	sastre1
345	51	4	tendrán	\N	\N	KEV	3	sastre1
346	51	5	su	\N	\N	KEV	3	sastre1
347	51	6	idea	\N	\N	KEV	3	sastre1
348	51	7	.	\N	\N	KEV	999	sastre1
342	51	1	pero	\N		KEV	3	sastre1
350	52	2	el	\N	\N	SOF	3	sastre1
351	52	3	parquecito	\N	\N	SOF	3	sastre1
352	52	4	viste	\N	\N	SOF	3	sastre1
353	52	5	que	\N	\N	SOF	3	sastre1
354	52	6	van	\N	\N	SOF	3	sastre1
355	52	7	a	\N	\N	SOF	3	sastre1
356	52	8	hacer	\N	\N	SOF	3	sastre1
357	52	9	?	\N	\N	SOF	999	sastre1
349	52	1	y	\N		SOF	3	sastre1
358	53	1	aquí	\N		KEV	3	sastre1
359	53	2	atrás	\N	\N	KEV	3	sastre1
360	53	3	?	\N	\N	KEV	999	sastre1
362	54	2	parquecito	\N	\N	SOF	3	sastre1
363	54	3	.	\N	\N	SOF	999	sastre1
361	54	1	el	\N		SOF	3	sastre1
365	55	2	no	\N	\N	KEV	3	sastre1
366	55	3	me	\N	\N	KEV	3	sastre1
367	55	4	he	\N	\N	KEV	3	sastre1
368	55	5	fijado	\N	\N	KEV	3	sastre1
369	55	6	.	\N	\N	KEV	999	sastre1
364	55	1	no	\N		KEV	3	sastre1
371	56	2	viste	\N	\N	SOF	3	sastre1
372	56	3	que	\N	\N	SOF	3	sastre1
373	56	4	te	\N	\N	SOF	3	sastre1
374	56	5	mandaron	\N	\N	SOF	3	sastre1
375	56	6	una	\N	\N	SOF	3	sastre1
376	56	7	hoja	\N	\N	SOF	3	sastre1
377	56	8	hoy	\N	\N	SOF	3	sastre1
378	56	9	con	\N	\N	SOF	3	sastre1
379	56	10	todo	\N	\N	SOF	3	sastre1
380	56	11	lo	\N	\N	SOF	3	sastre1
381	56	12	del	\N	\N	SOF	3	sastre1
382	56	13	meeting	\N	\N	SOF	2	sastre1
383	56	14	?	\N	\N	SOF	999	sastre1
370	56	1	no	\N		SOF	3	sastre1
385	57	2	no	\N	\N	KEV	3	sastre1
386	57	3	no	\N	\N	KEV	3	sastre1
387	57	4	estaba	\N	\N	KEV	3	sastre1
388	57	5	en	\N	\N	KEV	3	sastre1
389	57	6	la	\N	\N	KEV	3	sastre1
390	57	7	puerta	\N	\N	KEV	3	sastre1
391	57	8	.	\N	\N	KEV	999	sastre1
384	57	1	no	\N		KEV	3	sastre1
393	58	2	salimos	\N	\N	KEV	3	sastre1
394	58	3	que	\N	\N	KEV	3	sastre1
395	58	4	nos	\N	\N	KEV	3	sastre1
396	58	5	íbamos	\N	\N	KEV	3	sastre1
397	58	6	pal	\N	\N	KEV	3	sastre1
398	58	7	bicycle	\N	\N	KEV	2	sastre1
399	58	8	shop	\N	\N	KEV	2	sastre1
400	58	9	.	\N	\N	KEV	999	sastre1
392	58	1	cuando	\N		KEV	3	sastre1
402	59	2	.	\N	\N	SOF	999	sastre1
401	59	1	mmhm	\N		SOF	0	sastre1
404	60	2	puesto	\N	\N	KEV	3	sastre1
405	60	3	en	\N	\N	KEV	3	sastre1
406	60	4	la	\N	\N	KEV	3	sastre1
407	60	5	puerta	\N	\N	KEV	3	sastre1
408	60	6	y	\N	\N	KEV	3	sastre1
409	60	7	yo	\N	\N	KEV	3	sastre1
410	60	8	lo	\N	\N	KEV	3	sastre1
411	60	9	tiré	\N	\N	KEV	3	sastre1
412	60	10	para	\N	\N	KEV	3	sastre1
413	60	11	dentro	\N	\N	KEV	3	sastre1
414	60	12	de	\N	\N	KEV	3	sastre1
415	60	13	la	\N	\N	KEV	3	sastre1
416	60	14	casa	\N	\N	KEV	3	sastre1
417	60	15	y	\N	\N	KEV	3	sastre1
418	60	16	nos	\N	\N	KEV	3	sastre1
419	60	17	fuimos	\N	\N	KEV	3	sastre1
420	60	18	.	\N	\N	KEV	999	sastre1
403	60	1	estaba	\N		KEV	3	sastre1
422	61	2	ahora	\N	\N	KEV	3	sastre1
423	61	3	ya	\N	\N	KEV	3	sastre1
424	61	4	vi	\N	\N	KEV	3	sastre1
425	61	5	que	\N	\N	KEV	3	sastre1
426	61	6	lo	\N	\N	KEV	3	sastre1
427	61	7	había	\N	\N	KEV	3	sastre1
428	61	8	sacado	\N	\N	KEV	3	sastre1
429	61	9	de	\N	\N	KEV	3	sastre1
430	61	10	la	\N	\N	KEV	3	sastre1
431	61	11	maleta	\N	\N	KEV	3	sastre1
432	61	12	.	\N	\N	KEV	999	sastre1
421	61	1	y	\N		KEV	3	sastre1
434	62	2	no	\N	\N	KEV	3	sastre1
435	62	3	me	\N	\N	KEV	3	sastre1
436	62	4	he	\N	\N	KEV	3	sastre1
437	62	5	fijado	\N	\N	KEV	3	sastre1
438	62	6	qué	\N	\N	KEV	3	sastre1
439	62	7	cosa	\N	\N	KEV	3	sastre1
440	62	8	hay	\N	\N	KEV	3	sastre1
441	62	9	dentro	\N	\N	KEV	3	sastre1
442	62	10	.	\N	\N	KEV	999	sastre1
433	62	1	pero	\N		KEV	3	sastre1
443	63	1	.	\N		SOF	999	sastre1
445	64	2	está	\N	\N	KEV	3	sastre1
446	64	3	rico	\N	\N	KEV	3	sastre1
447	64	4	el	\N	\N	KEV	3	sastre1
448	64	5	tiempo	\N	\N	KEV	3	sastre1
449	64	6	.	\N	\N	KEV	999	sastre1
444	64	1	y	\N		KEV	3	sastre1
451	65	2	beautiful	\N	\N	SOF	2	sastre1
452	65	3	.	\N	\N	SOF	999	sastre1
450	65	1	it's	\N		SOF	2	sastre1
454	66	2	mmhm	\N	\N	KEV	0	sastre1
455	66	3	mmhm	\N	\N	KEV	0	sastre1
456	66	4	.	\N	\N	KEV	999	sastre1
453	66	1	mmhm	\N		KEV	0	sastre1
458	67	2	tan	\N	\N	SOF	3	sastre1
459	67	3	lindo	\N	\N	SOF	3	sastre1
460	67	4	.	\N	\N	SOF	999	sastre1
457	67	1	está	\N		SOF	3	sastre1
462	68	2	.	\N	\N	KEV	999	sastre1
461	68	1	sí	\N		KEV	3	sastre1
463	69	1	.	\N		SOF	999	sastre1
465	70	2	terraza	\N	\N	KEV	3	sastre1
466	70	3	déjame	\N	\N	KEV	3	sastre1
467	70	4	decirte	\N	\N	KEV	3	sastre1
468	70	5	que	\N	\N	KEV	3	sastre1
469	70	6	vale	\N	\N	KEV	3	sastre1
470	70	7	el	\N	\N	KEV	3	sastre1
471	70	8	precio	\N	\N	KEV	3	sastre1
472	70	9	de	\N	\N	KEV	3	sastre1
473	70	10	la	\N	\N	KEV	3	sastre1
474	70	11	casa	\N	\N	KEV	3	sastre1
475	70	12	.	\N	\N	KEV	999	sastre1
464	70	1	esta	\N		KEV	3	sastre1
477	71	2	.	\N	\N	KEV	999	sastre1
476	71	1	espacio	\N		KEV	3	sastre1
479	72	2	eso	\N	\N	SOF	3	sastre1
480	72	3	que	\N	\N	SOF	3	sastre1
481	72	4	no	\N	\N	SOF	3	sastre1
478	72	1	y	\N		SOF	3	sastre1
482	72	5	la	\N	\N	SOF	3	sastre1
483	72	6	has	\N	\N	SOF	3	sastre1
484	72	7	puesto	\N	\N	SOF	3	sastre1
485	72	8	en	\N	\N	SOF	3	sastre1
486	72	9	una	\N	\N	SOF	3	sastre1
487	72	10	cómo	\N	\N	SOF	3	sastre1
488	72	11	se	\N	\N	SOF	3	sastre1
489	72	12	llama	\N	\N	SOF	3	sastre1
490	72	13	esto	\N	\N	SOF	3	sastre1
491	72	14	una	\N	\N	SOF	3	sastre1
492	72	15	un	\N	\N	SOF	3	sastre1
493	72	16	hammock	\N	\N	SOF	2	sastre1
494	72	17	de	\N	\N	SOF	3	sastre1
495	72	18	esos	\N	\N	SOF	3	sastre1
496	72	19	.	\N	\N	SOF	999	sastre1
498	73	2	hamaca	\N	\N	KEV	3	sastre1
499	73	3	?	\N	\N	KEV	999	sastre1
497	73	1	una	\N		KEV	3	sastre1
501	74	2	hamaca	\N	\N	SOF	3	sastre1
502	74	3	.	\N	\N	SOF	999	sastre1
500	74	1	una	\N		SOF	3	sastre1
504	75	2	.	\N	\N	KEV	999	sastre1
503	75	1	no	\N		KEV	3	sastre1
506	76	2	te	\N	\N	SOF	3	sastre1
507	76	3	ha	\N	\N	SOF	3	sastre1
508	76	4	dado	\N	\N	SOF	3	sastre1
509	76	5	por	\N	\N	SOF	3	sastre1
510	76	6	eso	\N	\N	SOF	3	sastre1
511	76	7	?	\N	\N	SOF	999	sastre1
505	76	1	no	\N		SOF	3	sastre1
513	77	2	mira	\N	\N	SOF	3	sastre1
514	77	3	entre	\N	\N	SOF	3	sastre1
515	77	4	las	\N	\N	SOF	3	sastre1
516	77	5	dos	\N	\N	SOF	3	sastre1
517	77	6	palmas	\N	\N	SOF	3	sastre1
518	77	7	las	\N	\N	SOF	3	sastre1
519	77	8	puede	\N	\N	SOF	3	sastre1
520	77	9	poner	\N	\N	SOF	3	sastre1
521	77	10	ahí	\N	\N	SOF	3	sastre1
522	77	11	.	\N	\N	SOF	999	sastre1
512	77	1	ahí	\N		SOF	3	sastre1
524	78	2	se	\N	\N	KEV	3	sastre1
525	78	3	pudiera	\N	\N	KEV	3	sastre1
526	78	4	poner	\N	\N	KEV	3	sastre1
527	78	5	sí	\N	\N	KEV	3	sastre1
528	78	6	.	\N	\N	KEV	999	sastre1
523	78	1	ahí	\N		KEV	3	sastre1
530	79	2	tengo	\N	\N	KEV	3	sastre1
531	79	3	una	\N	\N	KEV	3	sastre1
532	79	4	que	\N	\N	KEV	3	sastre1
533	79	5	cada	\N	\N	KEV	3	sastre1
534	79	6	vez	\N	\N	KEV	3	sastre1
535	79	7	que	\N	\N	KEV	3	sastre1
536	79	8	nos	\N	\N	KEV	3	sastre1
537	79	9	vamos	\N	\N	KEV	3	sastre1
538	79	10	camping	\N	\N	KEV	2	sastre1
539	79	11	we	\N	\N	KEV	2	sastre1
540	79	12	take	\N	\N	KEV	2	sastre1
541	79	13	it	\N	\N	KEV	2	sastre1
542	79	14	.	\N	\N	KEV	999	sastre1
529	79	1	yo	\N		KEV	3	sastre1
544	80	2	I	\N	\N	KEV	2	sastre1
545	80	3	set	\N	\N	KEV	2	sastre1
546	80	4	it	\N	\N	KEV	2	sastre1
547	80	5	up	\N	\N	KEV	2	sastre1
548	80	6	in	\N	\N	KEV	2	sastre1
549	80	7	the	\N	\N	KEV	2	sastre1
550	80	8	campground	\N	\N	KEV	2	sastre1
551	80	9	.	\N	\N	KEV	999	sastre1
543	80	1	and	\N		KEV	2	sastre1
553	81	2	no	\N	\N	KEV	3	sastre1
554	81	3	aquí	\N	\N	KEV	3	sastre1
555	81	4	no	\N	\N	KEV	3	sastre1
556	81	5	se	\N	\N	KEV	3	sastre1
557	81	6	nos	\N	\N	KEV	3	sastre1
558	81	7	ha	\N	\N	KEV	3	sastre1
559	81	8	ocurrido	\N	\N	KEV	3	sastre1
560	81	9	como	\N	\N	KEV	3	sastre1
561	81	10	aquí	\N	\N	KEV	3	sastre1
562	81	11	lo	\N	\N	KEV	3	sastre1
563	81	12	que	\N	\N	KEV	3	sastre1
564	81	13	pasa	\N	\N	KEV	3	sastre1
565	81	14	es	\N	\N	KEV	3	sastre1
566	81	15	que	\N	\N	KEV	3	sastre1
567	81	16	the	\N	\N	KEV	2	sastre1
568	81	17	ground	\N	\N	KEV	2	sastre1
569	81	18	in	\N	\N	KEV	2	sastre1
570	81	19	the	\N	\N	KEV	2	sastre1
571	81	20	back	\N	\N	KEV	2	sastre1
572	81	21	it's	\N	\N	KEV	2	sastre1
573	81	22	slanted	\N	\N	KEV	2	sastre1
574	81	23	.	\N	\N	KEV	999	sastre1
552	81	1	pero	\N		KEV	3	sastre1
576	82	2	.	\N	\N	SOF	999	sastre1
575	82	1	yeah	\N		SOF	2	sastre1
578	83	2	not	\N	\N	KEV	2	sastre1
579	83	3	even	\N	\N	KEV	2	sastre1
580	83	4	.	\N	\N	KEV	999	sastre1
577	83	1	it's	\N		KEV	2	sastre1
582	84	2	that's	\N	\N	KEV	2	sastre1
583	84	3	something	\N	\N	KEV	2	sastre1
584	84	4	to	\N	\N	KEV	2	sastre1
585	84	5	.	\N	\N	KEV	999	sastre1
581	84	1	so	\N		KEV	2	sastre1
587	85	2	sí	\N	\N	KEV	3	sastre1
588	85	3	se	\N	\N	KEV	3	sastre1
589	85	4	pudieran	\N	\N	KEV	3	sastre1
590	85	5	poner	\N	\N	KEV	3	sastre1
591	85	6	un	\N	\N	KEV	3	sastre1
592	85	7	par	\N	\N	KEV	3	sastre1
593	85	8	de	\N	\N	KEV	3	sastre1
594	85	9	tubos	\N	\N	KEV	3	sastre1
595	85	10	o	\N	\N	KEV	3	sastre1
596	85	11	algo	\N	\N	KEV	3	sastre1
597	85	12	so	\N	\N	KEV	2	sastre1
598	85	13	we	\N	\N	KEV	2	sastre1
599	85	14	could	\N	\N	KEV	2	sastre1
600	85	15	uh	\N	\N	KEV	0	sastre1
601	85	16	install	\N	\N	KEV	2	sastre1
602	85	17	the	\N	\N	KEV	2	sastre1
603	85	18	hammock	\N	\N	KEV	2	sastre1
604	85	19	.	\N	\N	KEV	999	sastre1
586	85	1	pero	\N		KEV	3	sastre1
605	86	1	this	\N		SOF	2	sastre1
606	86	2	is	\N	\N	SOF	2	sastre1
607	86	3	great	\N	\N	SOF	2	sastre1
608	86	4	back	\N	\N	SOF	2	sastre1
609	86	5	here	\N	\N	SOF	2	sastre1
610	86	6	.	\N	\N	SOF	999	sastre1
612	87	2	yeah	\N	\N	KEV	2	sastre1
613	87	3	.	\N	\N	KEV	999	sastre1
611	87	1	mmhm	\N		KEV	0	sastre1
615	88	2	this	\N	\N	SOF	2	sastre1
616	88	3	month	\N	\N	SOF	2	sastre1
617	88	4	that	\N	\N	SOF	2	sastre1
618	88	5	is	\N	\N	SOF	2	sastre1
619	88	6	pretty	\N	\N	SOF	2	sastre1
620	88	7	cool	\N	\N	SOF	2	sastre1
621	88	8	.	\N	\N	SOF	999	sastre1
614	88	1	and	\N		SOF	2	sastre1
623	89	2	really	\N	\N	KEV	2	sastre1
624	89	3	really	\N	\N	KEV	2	sastre1
625	89	4	nice	\N	\N	KEV	2	sastre1
626	89	5	.	\N	\N	KEV	999	sastre1
622	89	1	it's	\N		KEV	2	sastre1
628	90	2	it	\N	\N	KEV	2	sastre1
629	90	3	gets	\N	\N	KEV	2	sastre1
630	90	4	to	\N	\N	KEV	2	sastre1
631	90	5	July	\N	\N	KEV	2	sastre1
632	90	6	and	\N	\N	KEV	2	sastre1
633	90	7	August	\N	\N	KEV	2	sastre1
634	90	8	it	\N	\N	KEV	2	sastre1
635	90	9	gets	\N	\N	KEV	2	sastre1
636	90	10	hot	\N	\N	KEV	2	sastre1
637	90	11	.	\N	\N	KEV	999	sastre1
627	90	1	when	\N		KEV	2	sastre1
639	91	2	gotta	\N	\N	KEV	2	sastre1
640	91	3	wait	\N	\N	KEV	2	sastre1
641	91	4	until	\N	\N	KEV	2	sastre1
642	91	5	almost	\N	\N	KEV	2	sastre1
643	91	6	the	\N	\N	KEV	2	sastre1
644	91	7	end	\N	\N	KEV	2	sastre1
645	91	8	of	\N	\N	KEV	2	sastre1
646	91	9	the	\N	\N	KEV	2	sastre1
647	91	10	day	\N	\N	KEV	2	sastre1
648	91	11	.	\N	\N	KEV	999	sastre1
638	91	1	you	\N		KEV	2	sastre1
650	92	2	starts	\N	\N	KEV	2	sastre1
651	92	3	cooling	\N	\N	KEV	2	sastre1
652	92	4	off	\N	\N	KEV	2	sastre1
653	92	5	a	\N	\N	KEV	2	sastre1
654	92	6	little	\N	\N	KEV	2	sastre1
655	92	7	bit	\N	\N	KEV	2	sastre1
656	92	8	to	\N	\N	KEV	2	sastre1
657	92	9	be	\N	\N	KEV	2	sastre1
658	92	10	out	\N	\N	KEV	2	sastre1
659	92	11	here	\N	\N	KEV	2	sastre1
660	92	12	.	\N	\N	KEV	999	sastre1
649	92	1	that	\N		KEV	2	sastre1
662	93	2	three	\N	\N	KEV	2	sastre1
663	93	3	thirty	\N	\N	KEV	2	sastre1
664	93	4	four	\N	\N	KEV	2	sastre1
665	93	5	o'clock	\N	\N	KEV	2	sastre1
666	93	6	it's	\N	\N	KEV	2	sastre1
667	93	7	fine	\N	\N	KEV	2	sastre1
668	93	8	.	\N	\N	KEV	999	sastre1
661	93	1	at	\N		KEV	2	sastre1
670	94	2	but	\N	\N	SOF	2	sastre1
671	94	3	thank	\N	\N	SOF	2	sastre1
672	94	4	God	\N	\N	SOF	2	sastre1
673	94	5	you	\N	\N	SOF	2	sastre1
674	94	6	don't	\N	\N	SOF	2	sastre1
675	94	7	have	\N	\N	SOF	2	sastre1
676	94	8	to	\N	\N	SOF	2	sastre1
677	94	9	worry	\N	\N	SOF	2	sastre1
678	94	10	about	\N	\N	SOF	2	sastre1
679	94	11	a	\N	\N	SOF	2	sastre1
680	94	12	pool	\N	\N	SOF	2	sastre1
681	94	13	.	\N	\N	SOF	999	sastre1
669	94	1	ah	\N		SOF	2	sastre1
683	95	2	we	\N	\N	KEV	2	sastre1
684	95	3	.	\N	\N	KEV	999	sastre1
682	95	1	bueno	\N		KEV	3	sastre1
686	96	2	pools	\N	\N	SOF	2	sastre1
687	96	3	are	\N	\N	SOF	2	sastre1
688	96	4	good	\N	\N	SOF	2	sastre1
689	96	5	for	\N	\N	SOF	2	sastre1
690	96	6	when	\N	\N	SOF	2	sastre1
691	96	7	you	\N	\N	SOF	2	sastre1
692	96	8	have	\N	\N	SOF	2	sastre1
693	96	9	smaller	\N	\N	SOF	2	sastre1
694	96	10	kids	\N	\N	SOF	2	sastre1
695	96	11	but	\N	\N	SOF	2	sastre1
696	96	12	already	\N	\N	SOF	2	sastre1
697	96	13	.	\N	\N	SOF	999	sastre1
685	96	1	because	\N		SOF	2	sastre1
699	97	2	don't	\N	\N	SOF	2	sastre1
700	97	3	even	\N	\N	SOF	2	sastre1
701	97	4	wanna	\N	\N	SOF	2	sastre1
702	97	5	jump	\N	\N	SOF	2	sastre1
703	97	6	in	\N	\N	SOF	2	sastre1
704	97	7	it	\N	\N	SOF	2	sastre1
705	97	8	.	\N	\N	SOF	999	sastre1
698	97	1	they	\N		SOF	2	sastre1
707	98	2	we	\N	\N	KEV	2	sastre1
708	98	3	had	\N	\N	KEV	2	sastre1
709	98	4	a	\N	\N	KEV	2	sastre1
710	98	5	hard	\N	\N	KEV	2	sastre1
711	98	6	time	\N	\N	KEV	2	sastre1
712	98	7	finding	\N	\N	KEV	2	sastre1
713	98	8	the	\N	\N	KEV	2	sastre1
714	98	9	house	\N	\N	KEV	2	sastre1
715	98	10	.	\N	\N	KEV	999	sastre1
706	98	1	eh	\N		KEV	0	sastre1
717	99	2	we	\N	\N	KEV	2	sastre1
718	99	3	were	\N	\N	KEV	2	sastre1
719	99	4	looking	\N	\N	KEV	2	sastre1
720	99	5	for	\N	\N	KEV	2	sastre1
721	99	6	a	\N	\N	KEV	2	sastre1
722	99	7	house	\N	\N	KEV	2	sastre1
723	99	8	in	\N	\N	KEV	2	sastre1
724	99	9	Miami	\N	\N	KEV	2	sastre1
725	99	10	Lakes	\N	\N	KEV	2	sastre1
726	99	11	on	\N	\N	KEV	2	sastre1
727	99	12	the	\N	\N	KEV	2	sastre1
728	99	13	lake	\N	\N	KEV	2	sastre1
729	99	14	without	\N	\N	KEV	2	sastre1
730	99	15	the	\N	\N	KEV	2	sastre1
731	99	16	pool	\N	\N	KEV	2	sastre1
732	99	17	.	\N	\N	KEV	999	sastre1
716	99	1	because	\N		KEV	2	sastre1
734	100	2	that	\N	\N	KEV	2	sastre1
735	100	3	made	\N	\N	KEV	2	sastre1
736	100	4	it	\N	\N	KEV	2	sastre1
737	100	5	very	\N	\N	KEV	2	sastre1
738	100	6	difficult	\N	\N	KEV	2	sastre1
739	100	7	in	\N	\N	KEV	2	sastre1
740	100	8	nineteen	\N	\N	KEV	2	sastre1
741	100	9	ninety	\N	\N	KEV	2	sastre1
742	100	10	eight	\N	\N	KEV	2	sastre1
743	100	11	when	\N	\N	KEV	2	sastre1
744	100	12	we	\N	\N	KEV	2	sastre1
745	100	13	bought	\N	\N	KEV	2	sastre1
746	100	14	here	\N	\N	KEV	2	sastre1
747	100	15	finding	\N	\N	KEV	2	sastre1
748	100	16	that	\N	\N	KEV	2	sastre1
749	100	17	.	\N	\N	KEV	999	sastre1
733	100	1	and	\N		KEV	2	sastre1
751	101	2	couldn't	\N	\N	KEV	2	sastre1
752	101	3	find	\N	\N	KEV	2	sastre1
753	101	4	it	\N	\N	KEV	2	sastre1
754	101	5	.	\N	\N	KEV	999	sastre1
750	101	1	we	\N		KEV	2	sastre1
756	102	2	couldn't	\N	\N	KEV	2	sastre1
757	102	3	find	\N	\N	KEV	2	sastre1
758	102	4	any	\N	\N	KEV	2	sastre1
759	102	5	house	\N	\N	KEV	2	sastre1
760	102	6	.	\N	\N	KEV	999	sastre1
755	102	1	we	\N		KEV	2	sastre1
762	103	2	of	\N	\N	SOF	2	sastre1
763	103	3	the	\N	\N	SOF	2	sastre1
764	103	4	houses	\N	\N	SOF	2	sastre1
765	103	5	have	\N	\N	SOF	2	sastre1
766	103	6	pool	\N	\N	SOF	2	sastre1
767	103	7	.	\N	\N	SOF	999	sastre1
761	103	1	most	\N		SOF	2	sastre1
769	104	2	all	\N	\N	KEV	2	sastre1
770	104	3	have	\N	\N	KEV	2	sastre1
771	104	4	pools	\N	\N	KEV	2	sastre1
772	104	5	.	\N	\N	KEV	999	sastre1
768	104	1	they	\N		KEV	2	sastre1
774	105	2	then	\N	\N	KEV	2	sastre1
775	105	3	we	\N	\N	KEV	2	sastre1
776	105	4	came	\N	\N	KEV	2	sastre1
777	105	5	across	\N	\N	KEV	2	sastre1
778	105	6	this	\N	\N	KEV	2	sastre1
779	105	7	one	\N	\N	KEV	2	sastre1
780	105	8	.	\N	\N	KEV	999	sastre1
773	105	1	and	\N		KEV	2	sastre1
781	106	1	.	\N		SOF	999	sastre1
783	107	2	la	\N	\N	KEV	3	sastre1
784	107	3	estaban	\N	\N	KEV	3	sastre1
785	107	4	vendiendo	\N	\N	KEV	3	sastre1
786	107	5	desde	\N	\N	KEV	3	sastre1
787	107	6	abril	\N	\N	KEV	3	sastre1
788	107	7	.	\N	\N	KEV	999	sastre1
782	107	1	que	\N		KEV	3	sastre1
790	108	2	viejito	\N	\N	KEV	3	sastre1
791	108	3	se	\N	\N	KEV	3	sastre1
792	108	4	había	\N	\N	KEV	3	sastre1
793	108	5	muerto	\N	\N	KEV	3	sastre1
794	108	6	.	\N	\N	KEV	999	sastre1
789	108	1	el	\N		KEV	3	sastre1
796	109	2	estaban	\N	\N	KEV	3	sastre1
797	109	3	vendiendo	\N	\N	KEV	3	sastre1
798	109	4	desde	\N	\N	KEV	3	sastre1
799	109	5	abril	\N	\N	KEV	3	sastre1
800	109	6	.	\N	\N	KEV	999	sastre1
795	109	1	la	\N		KEV	3	sastre1
802	110	2	yo	\N	\N	SOF	3	sastre1
803	110	3	me	\N	\N	SOF	3	sastre1
804	110	4	recuerdo	\N	\N	SOF	3	sastre1
805	110	5	.	\N	\N	SOF	999	sastre1
801	110	1	ya	\N		SOF	3	sastre1
807	111	2	bajado	\N	\N	KEV	3	sastre1
808	111	3	el	\N	\N	KEV	3	sastre1
809	111	4	precio	\N	\N	KEV	3	sastre1
810	111	5	un	\N	\N	KEV	3	sastre1
811	111	6	viaje	\N	\N	KEV	3	sastre1
812	111	7	.	\N	\N	KEV	999	sastre1
806	111	1	habían	\N		KEV	3	sastre1
814	112	2	entonces	\N	\N	KEV	3	sastre1
815	112	3	como	\N	\N	KEV	3	sastre1
816	112	4	en	\N	\N	KEV	3	sastre1
817	112	5	agosto	\N	\N	KEV	3	sastre1
818	112	6	que	\N	\N	KEV	3	sastre1
819	112	7	nosotros	\N	\N	KEV	3	sastre1
820	112	8	encontramos	\N	\N	KEV	3	sastre1
821	112	9	la	\N	\N	KEV	3	sastre1
822	112	10	casa	\N	\N	KEV	3	sastre1
823	112	11	habían	\N	\N	KEV	3	sastre1
824	112	12	vuelto	\N	\N	KEV	3	sastre1
825	112	13	a	\N	\N	KEV	3	sastre1
826	112	14	bajar	\N	\N	KEV	3	sastre1
827	112	15	el	\N	\N	KEV	3	sastre1
828	112	16	precio	\N	\N	KEV	3	sastre1
829	112	17	.	\N	\N	KEV	999	sastre1
813	112	1	y	\N		KEV	3	sastre1
831	113	2	entonces	\N	\N	KEV	3	sastre1
832	113	3	negociamos	\N	\N	KEV	3	sastre1
833	113	4	con	\N	\N	KEV	3	sastre1
834	113	5	la	\N	\N	KEV	3	sastre1
835	113	6	hija	\N	\N	KEV	3	sastre1
836	113	7	de	\N	\N	KEV	3	sastre1
837	113	8	Lucía	\N	\N	KEV	3	sastre1
838	113	9	la	\N	\N	KEV	3	sastre1
839	113	10	señora	\N	\N	KEV	3	sastre1
840	113	11	que	\N	\N	KEV	3	sastre1
841	113	12	vive	\N	\N	KEV	3	sastre1
830	113	1	y	\N		KEV	3	sastre1
842	113	13	aquí	\N	\N	KEV	3	sastre1
843	113	14	.	\N	\N	KEV	999	sastre1
845	114	2	.	\N	\N	SOF	999	sastre1
844	114	1	mmhm	\N		SOF	0	sastre1
847	115	2	we	\N	\N	KEV	2	sastre1
848	115	3	got	\N	\N	KEV	2	sastre1
849	115	4	it	\N	\N	KEV	2	sastre1
850	115	5	pero	\N	\N	KEV	3	sastre1
851	115	6	.	\N	\N	KEV	999	sastre1
846	115	1	and	\N		KEV	2	sastre1
853	116	2	house	\N	\N	KEV	2	sastre1
854	116	3	on	\N	\N	KEV	2	sastre1
855	116	4	the	\N	\N	KEV	2	sastre1
856	116	5	lake	\N	\N	KEV	2	sastre1
857	116	6	without	\N	\N	KEV	2	sastre1
858	116	7	a	\N	\N	KEV	2	sastre1
859	116	8	pool	\N	\N	KEV	2	sastre1
860	116	9	is	\N	\N	KEV	2	sastre1
861	116	10	almost	\N	\N	KEV	2	sastre1
862	116	11	impossible	\N	\N	KEV	2	sastre1
863	116	12	to	\N	\N	KEV	2	sastre1
864	116	13	find	\N	\N	KEV	2	sastre1
865	116	14	.	\N	\N	KEV	999	sastre1
852	116	1	a	\N		KEV	2	sastre1
867	117	2	you've	\N	\N	SOF	2	sastre1
868	117	3	done	\N	\N	SOF	2	sastre1
869	117	4	a	\N	\N	SOF	2	sastre1
870	117	5	lot	\N	\N	SOF	2	sastre1
871	117	6	to	\N	\N	SOF	2	sastre1
872	117	7	this	\N	\N	SOF	2	sastre1
873	117	8	house	\N	\N	SOF	2	sastre1
874	117	9	.	\N	\N	SOF	999	sastre1
866	117	1	but	\N		SOF	2	sastre1
876	118	2	yeah	\N	\N	KEV	2	sastre1
877	118	3	.	\N	\N	KEV	999	sastre1
875	118	1	mmhm	\N		KEV	0	sastre1
879	119	2	have	\N	\N	SOF	2	sastre1
880	119	3	done	\N	\N	SOF	2	sastre1
881	119	4	so	\N	\N	SOF	2	sastre1
882	119	5	much	\N	\N	SOF	2	sastre1
883	119	6	.	\N	\N	SOF	999	sastre1
878	119	1	you	\N		SOF	2	sastre1
885	120	2	incredible	\N	\N	SOF	2	sastre1
886	120	3	.	\N	\N	SOF	999	sastre1
884	120	1	it's	\N		SOF	2	sastre1
888	121	2	.	\N	\N	KEV	999	sastre1
887	121	1	yeah	\N		KEV	2	sastre1
890	122	2	ahora	\N	\N	KEV	3	sastre1
891	122	3	vamos	\N	\N	KEV	3	sastre1
892	122	4	a	\N	\N	KEV	3	sastre1
893	122	5	hacerle	\N	\N	KEV	3	sastre1
894	122	6	el	\N	\N	KEV	3	sastre1
895	122	7	baño	\N	\N	KEV	3	sastre1
896	122	8	.	\N	\N	KEV	999	sastre1
889	122	1	y	\N		KEV	3	sastre1
898	123	2	.	\N	\N	SOF	999	sastre1
897	123	1	yeah	\N		SOF	2	sastre1
900	124	2	el	\N	\N	KEV	3	sastre1
901	124	3	baño	\N	\N	KEV	3	sastre1
902	124	4	está	\N	\N	KEV	3	sastre1
903	124	5	el	\N	\N	KEV	3	sastre1
904	124	6	baño	\N	\N	KEV	3	sastre1
905	124	7	original	\N	\N	KEV	3	sastre1
906	124	8	.	\N	\N	KEV	999	sastre1
899	124	1	porque	\N		KEV	3	sastre1
908	125	2	we	\N	\N	KEV	2	sastre1
909	125	3	are	\N	\N	KEV	2	sastre1
910	125	4	gonna	\N	\N	KEV	2	sastre1
911	125	5	redo	\N	\N	KEV	2	sastre1
912	125	6	the	\N	\N	KEV	2	sastre1
913	125	7	bathroom	\N	\N	KEV	2	sastre1
914	125	8	.	\N	\N	KEV	999	sastre1
907	125	1	eh	\N		KEV	0	sastre1
916	126	2	my	\N	\N	KEV	2	sastre1
917	126	3	idea	\N	\N	KEV	2	sastre1
918	126	4	originally	\N	\N	KEV	2	sastre1
919	126	5	was	\N	\N	KEV	2	sastre1
920	126	6	just	\N	\N	KEV	2	sastre1
921	126	7	to	\N	\N	KEV	2	sastre1
922	126	8	leave	\N	\N	KEV	2	sastre1
923	126	9	the	\N	\N	KEV	2	sastre1
924	126	10	tub	\N	\N	KEV	2	sastre1
925	126	11	.	\N	\N	KEV	999	sastre1
915	126	1	ah	\N		KEV	0	sastre1
927	127	2	change	\N	\N	KEV	2	sastre1
928	127	3	everything	\N	\N	KEV	2	sastre1
929	127	4	else	\N	\N	KEV	2	sastre1
930	127	5	.	\N	\N	KEV	999	sastre1
926	127	1	y	\N		KEV	3	sastre1
932	128	2	ahora	\N	\N	KEV	3	sastre1
933	128	3	the	\N	\N	KEV	2	sastre1
934	128	4	new	\N	\N	KEV	2	sastre1
935	128	5	idea	\N	\N	KEV	2	sastre1
936	128	6	is	\N	\N	KEV	2	sastre1
937	128	7	gonna	\N	\N	KEV	2	sastre1
938	128	8	be	\N	\N	KEV	2	sastre1
939	128	9	that	\N	\N	KEV	2	sastre1
940	128	10	we	\N	\N	KEV	2	sastre1
941	128	11	are	\N	\N	KEV	2	sastre1
942	128	12	gonna	\N	\N	KEV	2	sastre1
943	128	13	to	\N	\N	KEV	2	sastre1
944	128	14	replace	\N	\N	KEV	2	sastre1
945	128	15	everything	\N	\N	KEV	2	sastre1
946	128	16	.	\N	\N	KEV	999	sastre1
931	128	1	pero	\N		KEV	3	sastre1
948	129	2	.	\N	\N	KEV	999	sastre1
947	129	1	change	\N		KEV	2	sastre1
950	130	2	it	\N	\N	SOF	2	sastre1
951	130	3	a	\N	\N	SOF	2	sastre1
952	130	4	shower	\N	\N	SOF	2	sastre1
953	130	5	.	\N	\N	SOF	999	sastre1
949	130	1	make	\N		SOF	2	sastre1
955	131	2	don't	\N	\N	SOF	2	sastre1
956	131	3	like	\N	\N	SOF	2	sastre1
957	131	4	showers	\N	\N	SOF	2	sastre1
958	131	5	?	\N	\N	SOF	999	sastre1
954	131	1	you	\N		SOF	2	sastre1
960	132	2	tub	\N	\N	KEV	2	sastre1
961	132	3	but	\N	\N	KEV	2	sastre1
962	132	4	a	\N	\N	KEV	2	sastre1
963	132	5	new	\N	\N	KEV	2	sastre1
964	132	6	tub	\N	\N	KEV	2	sastre1
965	132	7	.	\N	\N	KEV	999	sastre1
959	132	1	a	\N		KEV	2	sastre1
967	133	2	ok	\N	\N	SOF	0	sastre1
968	133	3	.	\N	\N	SOF	999	sastre1
966	133	1	oh	\N		SOF	0	sastre1
970	134	2	it's	\N	\N	KEV	2	sastre1
971	134	3	gonna	\N	\N	KEV	2	sastre1
972	134	4	be	\N	\N	KEV	2	sastre1
973	134	5	very	\N	\N	KEV	2	sastre1
974	134	6	hard	\N	\N	KEV	2	sastre1
975	134	7	to	\N	\N	KEV	2	sastre1
976	134	8	leave	\N	\N	KEV	2	sastre1
977	134	9	an	\N	\N	KEV	2	sastre1
978	134	10	old	\N	\N	KEV	2	sastre1
979	134	11	tub	\N	\N	KEV	2	sastre1
980	134	12	.	\N	\N	KEV	999	sastre1
969	134	1	because	\N		KEV	2	sastre1
982	135	2	then	\N	\N	KEV	2	sastre1
983	135	3	match	\N	\N	KEV	2	sastre1
984	135	4	everything	\N	\N	KEV	2	sastre1
985	135	5	else	\N	\N	KEV	2	sastre1
986	135	6	to	\N	\N	KEV	2	sastre1
987	135	7	the	\N	\N	KEV	2	sastre1
988	135	8	old	\N	\N	KEV	2	sastre1
989	135	9	tub	\N	\N	KEV	2	sastre1
990	135	10	.	\N	\N	KEV	999	sastre1
981	135	1	and	\N		KEV	2	sastre1
992	136	2	kind	\N	\N	KEV	2	sastre1
993	136	3	of	\N	\N	KEV	2	sastre1
994	136	4	a	\N	\N	KEV	2	sastre1
995	136	5	.	\N	\N	KEV	999	sastre1
991	136	1	so	\N		KEV	2	sastre1
997	137	2	are	\N	\N	KEV	2	sastre1
998	137	3	gonna	\N	\N	KEV	2	sastre1
999	137	4	redo	\N	\N	KEV	2	sastre1
1000	137	5	the	\N	\N	KEV	2	sastre1
1001	137	6	whole	\N	\N	KEV	2	sastre1
1002	137	7	thing	\N	\N	KEV	2	sastre1
1003	137	8	.	\N	\N	KEV	999	sastre1
996	137	1	we	\N		KEV	2	sastre1
1005	138	2	las	\N	\N	KEV	3	sastre1
1006	138	3	paredes	\N	\N	KEV	3	sastre1
1007	138	4	poner	\N	\N	KEV	3	sastre1
1008	138	5	los	\N	\N	KEV	3	sastre1
1009	138	6	dry	\N	\N	KEV	2	sastre1
1010	138	7	walls	\N	\N	KEV	2	sastre1
1011	138	8	esos	\N	\N	KEV	3	sastre1
1012	138	9	nuevos	\N	\N	KEV	3	sastre1
1013	138	10	.	\N	\N	KEV	999	sastre1
1004	138	1	quitar	\N		KEV	3	sastre1
1015	139	2	no	\N	\N	KEV	3	sastre1
1016	139	3	deja	\N	\N	KEV	3	sastre1
1017	139	4	que	\N	\N	KEV	3	sastre1
1018	139	5	no	\N	\N	KEV	3	sastre1
1019	139	6	asome	\N	\N	KEV	3	sastre1
1020	139	7	la	\N	\N	KEV	3	sastre1
1021	139	8	humedad	\N	\N	KEV	3	sastre1
1022	139	9	.	\N	\N	KEV	999	sastre1
1014	139	1	que	\N		KEV	3	sastre1
1024	140	2	.	\N	\N	SOF	999	sastre1
1023	140	1	humidity	\N		SOF	2	sastre1
1026	141	2	ah	\N	\N	KEV	0	sastre1
1027	141	3	eh	\N	\N	KEV	0	sastre1
1028	141	4	eh	\N	\N	KEV	0	sastre1
1029	141	5	son	\N	\N	KEV	3	sastre1
1030	141	6	como	\N	\N	KEV	3	sastre1
1031	141	7	waterproof	\N	\N	KEV	2	sastre1
1032	141	8	.	\N	\N	KEV	999	sastre1
1025	141	1	que	\N		KEV	3	sastre1
1034	142	2	.	\N	\N	SOF	999	sastre1
1033	142	1	mmhm	\N		SOF	0	sastre1
1036	143	2	entonces	\N	\N	KEV	3	sastre1
1037	143	3	también	\N	\N	KEV	3	sastre1
1038	143	4	.	\N	\N	KEV	999	sastre1
1035	143	1	y	\N		KEV	3	sastre1
1040	144	2	llevan	\N	\N	KEV	3	sastre1
1041	144	3	las	\N	\N	KEV	3	sastre1
1042	144	4	losas	\N	\N	KEV	3	sastre1
1043	144	5	los	\N	\N	KEV	3	sastre1
1044	144	6	ladrillos	\N	\N	KEV	3	sastre1
1045	144	7	los	\N	\N	KEV	3	sastre1
1046	144	8	.	\N	\N	KEV	999	sastre1
1039	144	1	eh	\N		KEV	0	sastre1
1048	145	2	arriba	\N	\N	SOF	3	sastre1
1049	145	3	.	\N	\N	SOF	999	sastre1
1047	145	1	para	\N		SOF	3	sastre1
1051	146	2	arriba	\N	\N	KEV	3	sastre1
1052	146	3	hasta	\N	\N	KEV	3	sastre1
1053	146	4	el	\N	\N	KEV	3	sastre1
1054	146	5	techo	\N	\N	KEV	3	sastre1
1055	146	6	.	\N	\N	KEV	999	sastre1
1050	146	1	hasta	\N		KEV	3	sastre1
1057	147	2	aquí	\N	\N	SOF	3	sastre1
1058	147	3	antes	\N	\N	SOF	3	sastre1
1059	147	4	was	\N	\N	SOF	2	sastre1
1060	147	5	half	\N	\N	SOF	2	sastre1
1061	147	6	way	\N	\N	SOF	2	sastre1
1062	147	7	.	\N	\N	SOF	999	sastre1
1056	147	1	y	\N		SOF	3	sastre1
1064	148	2	ahora	\N	\N	KEV	3	sastre1
1065	148	3	están	\N	\N	KEV	3	sastre1
1066	148	4	eh	\N	\N	KEV	0	sastre1
1067	148	5	más	\N	\N	KEV	3	sastre1
1068	148	6	o	\N	\N	KEV	3	sastre1
1069	148	7	menos	\N	\N	KEV	3	sastre1
1070	148	8	al	\N	\N	KEV	3	sastre1
1071	148	9	nivel	\N	\N	KEV	3	sastre1
1072	148	10	de	\N	\N	KEV	3	sastre1
1073	148	11	la	\N	\N	KEV	3	sastre1
1074	148	12	ventana	\N	\N	KEV	3	sastre1
1075	148	13	.	\N	\N	KEV	999	sastre1
1063	148	1	sí	\N		KEV	3	sastre1
1076	149	1	.	\N		SOF	999	sastre1
1078	150	2	.	\N	\N	KEV	999	sastre1
1077	150	1	mmhm	\N		KEV	0	sastre1
1080	151	2	hay	\N	\N	KEV	3	sastre1
1081	151	3	lugares	\N	\N	KEV	3	sastre1
1082	151	4	que	\N	\N	KEV	3	sastre1
1083	151	5	alrededor	\N	\N	KEV	3	sastre1
1084	151	6	del	\N	\N	KEV	3	sastre1
1085	151	7	inodoro	\N	\N	KEV	3	sastre1
1086	151	8	que	\N	\N	KEV	3	sastre1
1087	151	9	están	\N	\N	KEV	3	sastre1
1088	151	10	bajitos	\N	\N	KEV	3	sastre1
1089	151	11	bajitos	\N	\N	KEV	3	sastre1
1079	151	1	y	\N		KEV	3	sastre1
1090	151	12	.	\N	\N	KEV	999	sastre1
1092	152	2	llevarlo	\N	\N	KEV	3	sastre1
1093	152	3	hasta	\N	\N	KEV	3	sastre1
1094	152	4	arriba	\N	\N	KEV	3	sastre1
1095	152	5	.	\N	\N	KEV	999	sastre1
1091	152	1	entonces	\N		KEV	3	sastre1
1097	153	2	que	\N	\N	KEV	3	sastre1
1098	153	3	hagamos	\N	\N	KEV	3	sastre1
1099	153	4	uno	\N	\N	KEV	3	sastre1
1100	153	5	posiblemente	\N	\N	KEV	3	sastre1
1101	153	6	hagamos	\N	\N	KEV	3	sastre1
1102	153	7	el	\N	\N	KEV	3	sastre1
1103	153	8	otro	\N	\N	KEV	3	sastre1
1104	153	9	.	\N	\N	KEV	999	sastre1
1096	153	1	después	\N		KEV	3	sastre1
1106	154	2	ya	\N	\N	KEV	3	sastre1
1107	154	3	entonces	\N	\N	KEV	3	sastre1
1108	154	4	ahora	\N	\N	KEV	3	sastre1
1109	154	5	quiero	\N	\N	KEV	3	sastre1
1110	154	6	eh	\N	\N	KEV	0	sastre1
1111	154	7	los	\N	\N	KEV	3	sastre1
1112	154	8	the	\N	\N	KEV	2	sastre1
1113	154	9	sprinkler	\N	\N	KEV	2	sastre1
1114	154	10	system	\N	\N	KEV	2	sastre1
1115	154	11	arreglarlos	\N	\N	KEV	3	sastre1
1116	154	12	y	\N	\N	KEV	3	sastre1
1117	154	13	.	\N	\N	KEV	999	sastre1
1105	154	1	y	\N		KEV	3	sastre1
1119	155	2	por	\N	\N	KEV	3	sastre1
1120	155	3	retirarnos	\N	\N	KEV	3	sastre1
1121	155	4	.	\N	\N	KEV	999	sastre1
1118	155	1	empezar	\N		KEV	3	sastre1
1122	156	1	.	\N		KEV	999	sastre1
1124	157	2	fuimos	\N	\N	KEV	3	sastre1
1125	157	3	a	\N	\N	KEV	3	sastre1
1126	157	4	ver	\N	\N	KEV	3	sastre1
1127	157	5	un	\N	\N	KEV	3	sastre1
1128	157	6	camper	\N	\N	KEV	2	sastre1
1129	157	7	un	\N	\N	KEV	3	sastre1
1130	157	8	R_V	\N	\N	KEV	3	sastre1
1131	157	9	.	\N	\N	KEV	999	sastre1
1123	157	1	hoy	\N		KEV	3	sastre1
1133	158	2	.	\N	\N	SOF	999	sastre1
1132	158	1	yeah	\N		SOF	2	sastre1
1135	159	2	.	\N	\N	KEV	999	sastre1
1134	159	1	sí	\N		KEV	3	sastre1
1137	160	2	porque	\N	\N	KEV	3	sastre1
1138	160	3	este	\N	\N	KEV	3	sastre1
1139	160	4	the	\N	\N	KEV	2	sastre1
1140	160	5	one	\N	\N	KEV	2	sastre1
1141	160	6	we	\N	\N	KEV	2	sastre1
1142	160	7	have	\N	\N	KEV	2	sastre1
1143	160	8	is	\N	\N	KEV	2	sastre1
1144	160	9	nice	\N	\N	KEV	2	sastre1
1145	160	10	.	\N	\N	KEV	999	sastre1
1136	160	1	sí	\N		KEV	3	sastre1
1147	161	2	it's	\N	\N	KEV	2	sastre1
1148	161	3	fairly	\N	\N	KEV	2	sastre1
1149	161	4	small	\N	\N	KEV	2	sastre1
1150	161	5	.	\N	\N	KEV	999	sastre1
1146	161	1	but	\N		KEV	2	sastre1
1152	162	2	when	\N	\N	KEV	2	sastre1
1153	162	3	you	\N	\N	KEV	2	sastre1
1154	162	4	get	\N	\N	KEV	2	sastre1
1155	162	5	to	\N	\N	KEV	2	sastre1
1156	162	6	the	\N	\N	KEV	2	sastre1
1157	162	7	place	\N	\N	KEV	2	sastre1
1158	162	8	you	\N	\N	KEV	2	sastre1
1159	162	9	have	\N	\N	KEV	2	sastre1
1160	162	10	to	\N	\N	KEV	2	sastre1
1161	162	11	actually	\N	\N	KEV	2	sastre1
1162	162	12	put	\N	\N	KEV	2	sastre1
1163	162	13	it	\N	\N	KEV	2	sastre1
1164	162	14	up	\N	\N	KEV	2	sastre1
1165	162	15	.	\N	\N	KEV	999	sastre1
1151	162	1	and	\N		KEV	2	sastre1
1167	163	2	.	\N	\N	SOF	999	sastre1
1166	163	1	up	\N		SOF	2	sastre1
1169	164	2	open	\N	\N	KEV	2	sastre1
1170	164	3	it	\N	\N	KEV	2	sastre1
1171	164	4	and	\N	\N	KEV	2	sastre1
1172	164	5	put	\N	\N	KEV	2	sastre1
1173	164	6	it	\N	\N	KEV	2	sastre1
1174	164	7	together	\N	\N	KEV	2	sastre1
1175	164	8	.	\N	\N	KEV	999	sastre1
1168	164	1	and	\N		KEV	2	sastre1
1177	165	2	other	\N	\N	KEV	2	sastre1
1178	165	3	one	\N	\N	KEV	2	sastre1
1179	165	4	no	\N	\N	KEV	2	sastre1
1180	165	5	.	\N	\N	KEV	999	sastre1
1176	165	1	the	\N		KEV	2	sastre1
1182	166	2	other	\N	\N	KEV	2	sastre1
1183	166	3	one	\N	\N	KEV	2	sastre1
1184	166	4	everything	\N	\N	KEV	2	sastre1
1185	166	5	is	\N	\N	KEV	2	sastre1
1186	166	6	in	\N	\N	KEV	2	sastre1
1187	166	7	place	\N	\N	KEV	2	sastre1
1188	166	8	.	\N	\N	KEV	999	sastre1
1181	166	1	the	\N		KEV	2	sastre1
1190	167	2	just	\N	\N	KEV	2	sastre1
1191	167	3	get	\N	\N	KEV	2	sastre1
1192	167	4	there	\N	\N	KEV	2	sastre1
1193	167	5	.	\N	\N	KEV	999	sastre1
1189	167	1	you	\N		KEV	2	sastre1
1195	168	2	press	\N	\N	SOF	2	sastre1
1196	168	3	the	\N	\N	SOF	2	sastre1
1197	168	4	button	\N	\N	SOF	2	sastre1
1198	168	5	.	\N	\N	SOF	999	sastre1
1194	168	1	and	\N		SOF	2	sastre1
1200	169	2	the	\N	\N	KEV	2	sastre1
1201	169	3	.	\N	\N	KEV	999	sastre1
1199	169	1	press	\N		KEV	2	sastre1
1203	170	2	.	\N	\N	SOF	999	sastre1
1202	170	1	right	\N		SOF	2	sastre1
1205	171	2	.	\N	\N	KEV	999	sastre1
1204	171	1	and	\N		KEV	2	sastre1
1207	172	2	everything	\N	\N	SOF	2	sastre1
1208	172	3	opens	\N	\N	SOF	2	sastre1
1209	172	4	up	\N	\N	SOF	2	sastre1
1210	172	5	.	\N	\N	SOF	999	sastre1
1206	172	1	and	\N		SOF	2	sastre1
1212	173	2	don't	\N	\N	KEV	2	sastre1
1211	173	1	you	\N		KEV	2	sastre1
1213	173	3	even	\N	\N	KEV	2	sastre1
1214	173	4	have	\N	\N	KEV	2	sastre1
1215	173	5	mmhm	\N	\N	KEV	0	sastre1
1216	173	6	.	\N	\N	KEV	999	sastre1
1218	174	2	friend	\N	\N	SOF	2	sastre1
1219	174	3	has	\N	\N	SOF	2	sastre1
1220	174	4	an	\N	\N	SOF	2	sastre1
1221	174	5	R_V	\N	\N	SOF	2	sastre1
1222	174	6	.	\N	\N	SOF	999	sastre1
1217	174	1	my	\N		SOF	2	sastre1
1224	175	2	beautiful	\N	\N	SOF	2	sastre1
1225	175	3	.	\N	\N	SOF	999	sastre1
1223	175	1	it's	\N		SOF	2	sastre1
1227	176	2	my	\N	\N	SOF	2	sastre1
1228	176	3	god	\N	\N	SOF	2	sastre1
1229	176	4	it	\N	\N	SOF	2	sastre1
1230	176	5	looks	\N	\N	SOF	2	sastre1
1231	176	6	like	\N	\N	SOF	2	sastre1
1232	176	7	a	\N	\N	SOF	2	sastre1
1233	176	8	house	\N	\N	SOF	2	sastre1
1234	176	9	.	\N	\N	SOF	999	sastre1
1226	176	1	oh	\N		SOF	0	sastre1
1236	177	2	.	\N	\N	KEV	999	sastre1
1235	177	1	mmhm	\N		KEV	0	sastre1
1238	178	2	.	\N	\N	KEV	999	sastre1
1237	178	1	mmhm	\N		KEV	0	sastre1
1240	179	2	it's	\N	\N	SOF	2	sastre1
1241	179	3	big	\N	\N	SOF	2	sastre1
1242	179	4	.	\N	\N	SOF	999	sastre1
1239	179	1	but	\N		SOF	2	sastre1
1244	180	2	know	\N	\N	SOF	2	sastre1
1245	180	3	.	\N	\N	SOF	999	sastre1
1243	180	1	you	\N		SOF	2	sastre1
1247	181	2	.	\N	\N	KEV	999	sastre1
1246	181	1	mmhm	\N		KEV	0	sastre1
1249	182	2	he	\N	\N	SOF	2	sastre1
1250	182	3	takes	\N	\N	SOF	2	sastre1
1251	182	4	it	\N	\N	SOF	2	sastre1
1252	182	5	with	\N	\N	SOF	2	sastre1
1253	182	6	him	\N	\N	SOF	2	sastre1
1254	182	7	.	\N	\N	SOF	999	sastre1
1248	182	1	and	\N		SOF	2	sastre1
1256	183	2	mean	\N	\N	SOF	2	sastre1
1257	183	3	it's	\N	\N	SOF	2	sastre1
1258	183	4	wow	\N	\N	SOF	2	sastre1
1259	183	5	.	\N	\N	SOF	999	sastre1
1255	183	1	I	\N		SOF	2	sastre1
1261	184	2	presses	\N	\N	SOF	2	sastre1
1262	184	3	the	\N	\N	SOF	2	sastre1
1263	184	4	button	\N	\N	SOF	2	sastre1
1264	184	5	.	\N	\N	SOF	999	sastre1
1260	184	1	he	\N		SOF	2	sastre1
1266	185	2	.	\N	\N	KEV	999	sastre1
1265	185	1	mmhm	\N		KEV	0	sastre1
1268	186	2	whole	\N	\N	SOF	2	sastre1
1269	186	3	thing	\N	\N	SOF	2	sastre1
1270	186	4	like	\N	\N	SOF	2	sastre1
1271	186	5	opens	\N	\N	SOF	2	sastre1
1272	186	6	up	\N	\N	SOF	2	sastre1
1273	186	7	.	\N	\N	SOF	999	sastre1
1267	186	1	that	\N		SOF	2	sastre1
1275	187	2	got	\N	\N	SOF	2	sastre1
1276	187	3	a	\N	\N	SOF	2	sastre1
1277	187	4	master	\N	\N	SOF	2	sastre1
1278	187	5	bedroom	\N	\N	SOF	2	sastre1
1279	187	6	.	\N	\N	SOF	999	sastre1
1274	187	1	it's	\N		SOF	2	sastre1
1281	188	2	.	\N	\N	KEV	999	sastre1
1280	188	1	yeah	\N		KEV	2	sastre1
1283	189	2	a	\N	\N	SOF	2	sastre1
1284	189	3	.	\N	\N	SOF	999	sastre1
1282	189	1	and	\N		SOF	2	sastre1
1286	190	2	.	\N	\N	KEV	999	sastre1
1285	190	1	mmhm	\N		KEV	0	sastre1
1288	191	2	two	\N	\N	SOF	2	sastre1
1289	191	3	other	\N	\N	SOF	2	sastre1
1290	191	4	bedrooms	\N	\N	SOF	2	sastre1
1291	191	5	with	\N	\N	SOF	2	sastre1
1292	191	6	a	\N	\N	SOF	2	sastre1
1293	191	7	bathroom	\N	\N	SOF	2	sastre1
1294	191	8	pretty	\N	\N	SOF	2	sastre1
1295	191	9	big	\N	\N	SOF	2	sastre1
1296	191	10	.	\N	\N	SOF	999	sastre1
1287	191	1	and	\N		SOF	2	sastre1
1298	192	2	.	\N	\N	KEV	999	sastre1
1297	192	1	mmhm	\N		KEV	0	sastre1
1300	193	2	mean	\N	\N	SOF	2	sastre1
1301	193	3	it's	\N	\N	SOF	2	sastre1
1302	193	4	really	\N	\N	SOF	2	sastre1
1303	193	5	nice	\N	\N	SOF	2	sastre1
1304	193	6	.	\N	\N	SOF	999	sastre1
1299	193	1	I	\N		SOF	2	sastre1
1306	194	2	.	\N	\N	KEV	999	sastre1
1305	194	1	mmhm	\N		KEV	0	sastre1
1308	195	2	kitchen	\N	\N	SOF	2	sastre1
1309	195	3	is	\N	\N	SOF	2	sastre1
1310	195	4	beautiful	\N	\N	SOF	2	sastre1
1311	195	5	.	\N	\N	SOF	999	sastre1
1307	195	1	the	\N		SOF	2	sastre1
1313	196	2	.	\N	\N	KEV	999	sastre1
1312	196	1	yeah	\N		KEV	2	sastre1
1315	197	2	.	\N	\N	KEV	999	sastre1
1314	197	1	yeah	\N		KEV	2	sastre1
1317	198	2	screen	\N	\N	SOF	2	sastre1
1318	198	3	tvs	\N	\N	SOF	0	sastre1
1319	198	4	I	\N	\N	SOF	2	sastre1
1320	198	5	mean	\N	\N	SOF	2	sastre1
1321	198	6	he's	\N	\N	SOF	2	sastre1
1322	198	7	got	\N	\N	SOF	2	sastre1
1323	198	8	it	\N	\N	SOF	2	sastre1
1324	198	9	.	\N	\N	SOF	999	sastre1
1316	198	1	flat	\N		SOF	2	sastre1
1326	199	2	.	\N	\N	KEV	999	sastre1
1325	199	1	mmhm	\N		KEV	0	sastre1
1328	200	2	.	\N	\N	KEV	999	sastre1
1327	200	1	yeah	\N		KEV	0	sastre1
1330	201	2	he	\N	\N	SOF	2	sastre1
1331	201	3	likes	\N	\N	SOF	2	sastre1
1332	201	4	to	\N	\N	SOF	2	sastre1
1333	201	5	go	\N	\N	SOF	2	sastre1
1334	201	6	to	\N	\N	SOF	2	sastre1
1335	201	7	the	\N	\N	SOF	2	sastre1
1336	201	8	Keys	\N	\N	SOF	0	sastre1
1329	201	1	because	\N		SOF	2	sastre1
1337	201	9	a	\N	\N	SOF	2	sastre1
1338	201	10	lot	\N	\N	SOF	2	sastre1
1339	201	11	.	\N	\N	SOF	999	sastre1
1341	202	2	the	\N	\N	KEV	2	sastre1
1342	202	3	Keys	\N	\N	KEV	0	sastre1
1343	202	4	are	\N	\N	KEV	2	sastre1
1344	202	5	getting	\N	\N	KEV	2	sastre1
1345	202	6	very	\N	\N	KEV	2	sastre1
1346	202	7	.	\N	\N	KEV	999	sastre1
1340	202	1	yah	\N		KEV	2	sastre1
1348	203	2	.	\N	\N	SOF	999	sastre1
1347	203	1	expensive	\N		SOF	2	sastre1
1350	204	2	difficult	\N	\N	KEV	2	sastre1
1351	204	3	expensive	\N	\N	KEV	2	sastre1
1352	204	4	and	\N	\N	KEV	2	sastre1
1353	204	5	difficult	\N	\N	KEV	2	sastre1
1354	204	6	with	\N	\N	KEV	2	sastre1
1355	204	7	.	\N	\N	KEV	999	sastre1
1349	204	1	right	\N		KEV	2	sastre1
1357	205	2	very	\N	\N	KEV	2	sastre1
1358	205	3	hard	\N	\N	KEV	2	sastre1
1359	205	4	to	\N	\N	KEV	2	sastre1
1360	205	5	find	\N	\N	KEV	2	sastre1
1361	205	6	a	\N	\N	KEV	2	sastre1
1362	205	7	camping	\N	\N	KEV	2	sastre1
1363	205	8	spot	\N	\N	KEV	2	sastre1
1364	205	9	over	\N	\N	KEV	2	sastre1
1365	205	10	there	\N	\N	KEV	2	sastre1
1366	205	11	.	\N	\N	KEV	999	sastre1
1356	205	1	it's	\N		KEV	2	sastre1
1368	206	2	now	\N	\N	SOF	2	sastre1
1369	206	3	.	\N	\N	SOF	999	sastre1
1367	206	1	space	\N		SOF	2	sastre1
1371	207	2	because	\N	\N	SOF	2	sastre1
1372	207	3	what	\N	\N	SOF	2	sastre1
1373	207	4	they	\N	\N	SOF	2	sastre1
1374	207	5	do	\N	\N	SOF	2	sastre1
1375	207	6	is	\N	\N	SOF	2	sastre1
1376	207	7	they	\N	\N	SOF	2	sastre1
1377	207	8	build	\N	\N	SOF	2	sastre1
1378	207	9	now	\N	\N	SOF	2	sastre1
1379	207	10	on	\N	\N	SOF	2	sastre1
1380	207	11	them	\N	\N	SOF	2	sastre1
1381	207	12	instead	\N	\N	SOF	2	sastre1
1382	207	13	of	\N	\N	SOF	2	sastre1
1383	207	14	.	\N	\N	SOF	999	sastre1
1370	207	1	yeah	\N		SOF	2	sastre1
1385	208	2	they	\N	\N	KEV	2	sastre1
1386	208	3	close	\N	\N	KEV	2	sastre1
1387	208	4	them	\N	\N	KEV	2	sastre1
1388	208	5	.	\N	\N	KEV	999	sastre1
1384	208	1	right	\N		KEV	2	sastre1
1390	209	2	close	\N	\N	KEV	2	sastre1
1391	209	3	American_Outdoors	\N	\N	KEV	2	sastre1
1392	209	4	they	\N	\N	KEV	2	sastre1
1393	209	5	close	\N	\N	KEV	2	sastre1
1394	209	6	a	\N	\N	KEV	2	sastre1
1395	209	7	bunch	\N	\N	KEV	2	sastre1
1396	209	8	of	\N	\N	KEV	2	sastre1
1397	209	9	them	\N	\N	KEV	2	sastre1
1398	209	10	.	\N	\N	KEV	999	sastre1
1389	209	1	they	\N		KEV	2	sastre1
1400	210	2	because	\N	\N	SOF	2	sastre1
1401	210	3	people	\N	\N	SOF	2	sastre1
1402	210	4	are	\N	\N	SOF	2	sastre1
1403	210	5	making	\N	\N	SOF	2	sastre1
1404	210	6	money	\N	\N	SOF	2	sastre1
1405	210	7	selling	\N	\N	SOF	2	sastre1
1406	210	8	the	\N	\N	SOF	2	sastre1
1407	210	9	property	\N	\N	SOF	2	sastre1
1408	210	10	so	\N	\N	SOF	2	sastre1
1409	210	11	.	\N	\N	SOF	999	sastre1
1399	210	1	yes	\N		SOF	2	sastre1
1411	211	2	.	\N	\N	KEV	999	sastre1
1410	211	1	mmhm	\N		KEV	0	sastre1
1413	212	2	.	\N	\N	KEV	999	sastre1
1412	212	1	yeah	\N		KEV	2	sastre1
1415	213	2	don't	\N	\N	SOF	2	sastre1
1416	213	3	make	\N	\N	SOF	2	sastre1
1417	213	4	as	\N	\N	SOF	2	sastre1
1418	213	5	much	\N	\N	SOF	2	sastre1
1419	213	6	renting	\N	\N	SOF	2	sastre1
1420	213	7	as	\N	\N	SOF	2	sastre1
1421	213	8	they	\N	\N	SOF	2	sastre1
1422	213	9	do	\N	\N	SOF	2	sastre1
1423	213	10	selling	\N	\N	SOF	2	sastre1
1424	213	11	.	\N	\N	SOF	999	sastre1
1414	213	1	they	\N		SOF	2	sastre1
1426	214	2	.	\N	\N	KEV	999	sastre1
1425	214	1	yeah	\N		KEV	2	sastre1
1428	215	2	the	\N	\N	KEV	2	sastre1
1429	215	3	campgrounds	\N	\N	KEV	2	sastre1
1430	215	4	were	\N	\N	KEV	2	sastre1
1431	215	5	beautiful	\N	\N	KEV	2	sastre1
1432	215	6	places	\N	\N	KEV	2	sastre1
1433	215	7	to	\N	\N	KEV	2	sastre1
1434	215	8	build	\N	\N	KEV	2	sastre1
1435	215	9	on	\N	\N	KEV	2	sastre1
1436	215	10	.	\N	\N	KEV	999	sastre1
1427	215	1	and	\N		KEV	2	sastre1
1438	216	2	they	\N	\N	KEV	2	sastre1
1439	216	3	were	\N	\N	KEV	2	sastre1
1440	216	4	huge	\N	\N	KEV	2	sastre1
1441	216	5	pieces	\N	\N	KEV	2	sastre1
1442	216	6	of	\N	\N	KEV	2	sastre1
1443	216	7	property	\N	\N	KEV	2	sastre1
1444	216	8	a	\N	\N	KEV	2	sastre1
1445	216	9	lot	\N	\N	KEV	2	sastre1
1446	216	10	of	\N	\N	KEV	2	sastre1
1447	216	11	them	\N	\N	KEV	2	sastre1
1448	216	12	right	\N	\N	KEV	2	sastre1
1437	216	1	because	\N		KEV	2	sastre1
1449	216	13	on	\N	\N	KEV	2	sastre1
1450	216	14	the	\N	\N	KEV	2	sastre1
1451	216	15	ocean	\N	\N	KEV	2	sastre1
1452	216	16	on	\N	\N	KEV	2	sastre1
1453	216	17	the	\N	\N	KEV	2	sastre1
1454	216	18	water	\N	\N	KEV	2	sastre1
1455	216	19	.	\N	\N	KEV	999	sastre1
1457	217	2	you	\N	\N	KEV	2	sastre1
1458	217	3	know	\N	\N	KEV	2	sastre1
1459	217	4	it	\N	\N	KEV	2	sastre1
1460	217	5	was	\N	\N	KEV	2	sastre1
1461	217	6	a	\N	\N	KEV	2	sastre1
1462	217	7	good	\N	\N	KEV	2	sastre1
1463	217	8	deal	\N	\N	KEV	2	sastre1
1464	217	9	.	\N	\N	KEV	999	sastre1
1456	217	1	so	\N		KEV	2	sastre1
1466	218	2	.	\N	\N	SOF	999	sastre1
1465	218	1	yes	\N		SOF	2	sastre1
1468	219	2	they	\N	\N	KEV	2	sastre1
1469	219	3	closed	\N	\N	KEV	2	sastre1
1470	219	4	them	\N	\N	KEV	2	sastre1
1471	219	5	.	\N	\N	KEV	999	sastre1
1467	219	1	so	\N		KEV	2	sastre1
1472	220	1	.	\N		SOF	999	sastre1
1474	221	2	was	\N	\N	KEV	2	sastre1
1475	221	3	a	\N	\N	KEV	2	sastre1
1476	221	4	beautiful	\N	\N	KEV	2	sastre1
1477	221	5	place	\N	\N	KEV	2	sastre1
1478	221	6	.	\N	\N	KEV	999	sastre1
1473	221	1	American_Outdoors	\N		KEV	2	sastre1
1480	222	2	they	\N	\N	KEV	2	sastre1
1481	222	3	just	\N	\N	KEV	2	sastre1
1482	222	4	closed	\N	\N	KEV	2	sastre1
1483	222	5	it	\N	\N	KEV	2	sastre1
1484	222	6	down	\N	\N	KEV	2	sastre1
1485	222	7	.	\N	\N	KEV	999	sastre1
1479	222	1	and	\N		KEV	2	sastre1
1487	223	2	.	\N	\N	KEV	999	sastre1
1486	223	1	mmhm	\N		KEV	0	sastre1
1489	224	2	.	\N	\N	SOF	999	sastre1
1488	224	1	wow	\N		SOF	0	sastre1
1491	225	2	.	\N	\N	KEV	999	sastre1
1490	225	1	mmhm	\N		KEV	0	sastre1
1493	226	2	.	\N	\N	KEV	999	sastre1
1492	226	1	viste	\N		KEV	3	sastre1
1495	227	2	look	\N	\N	SOF	2	sastre1
1496	227	3	at	\N	\N	SOF	2	sastre1
1497	227	4	the	\N	\N	SOF	2	sastre1
1498	227	5	little	\N	\N	SOF	2	sastre1
1499	227	6	.	\N	\N	SOF	999	sastre1
1494	227	1	oh	\N		SOF	0	sastre1
1501	228	2	coneja	\N	\N	KEV	3	sastre1
1502	228	3	de	\N	\N	KEV	3	sastre1
1503	228	4	Pepita	\N	\N	KEV	0	sastre1
1504	228	5	.	\N	\N	KEV	999	sastre1
1500	228	1	la	\N		KEV	3	sastre1
1506	229	2	una	\N	\N	SOF	3	sastre1
1507	229	3	conejita	\N	\N	SOF	3	sastre1
1508	229	4	?	\N	\N	SOF	999	sastre1
1505	229	1	es	\N		SOF	3	sastre1
1510	230	2	yeah	\N	\N	KEV	2	sastre1
1511	230	3	.	\N	\N	KEV	999	sastre1
1509	230	1	Cleopatra	\N		KEV	0	sastre1
1513	231	2	that's	\N	\N	KEV	2	sastre1
1514	231	3	.	\N	\N	KEV	999	sastre1
1512	231	1	yeah	\N		KEV	2	sastre1
1516	232	2	my	\N	\N	SOF	2	sastre1
1517	232	3	god	\N	\N	SOF	2	sastre1
1518	232	4	.	\N	\N	SOF	999	sastre1
1515	232	1	oh	\N		SOF	0	sastre1
1520	233	2	Pepita	\N	\N	KEV	0	sastre1
1521	233	3	moved	\N	\N	KEV	2	sastre1
1522	233	4	to	\N	\N	KEV	2	sastre1
1523	233	5	Tampa	\N	\N	KEV	0	sastre1
1524	233	6	she	\N	\N	KEV	2	sastre1
1525	233	7	acquired	\N	\N	KEV	2	sastre1
1526	233	8	the	\N	\N	KEV	2	sastre1
1527	233	9	rabbit	\N	\N	KEV	2	sastre1
1528	233	10	.	\N	\N	KEV	999	sastre1
1519	233	1	when	\N		KEV	2	sastre1
1530	234	2	.	\N	\N	SOF	999	sastre1
1529	234	1	wow	\N		SOF	0	sastre1
1532	235	2	that	\N	\N	KEV	2	sastre1
1533	235	3	was	\N	\N	KEV	2	sastre1
1534	235	4	her	\N	\N	KEV	2	sastre1
1535	235	5	companion	\N	\N	KEV	2	sastre1
1536	235	6	.	\N	\N	KEV	999	sastre1
1531	235	1	y	\N		KEV	3	sastre1
1538	236	2	it	\N	\N	SOF	2	sastre1
1539	236	3	a	\N	\N	SOF	2	sastre1
1540	236	4	miniature	\N	\N	SOF	2	sastre1
1541	236	5	?	\N	\N	SOF	999	sastre1
1537	236	1	is	\N		SOF	2	sastre1
1543	237	2	.	\N	\N	KEV	999	sastre1
1542	237	1	no	\N		KEV	2	sastre1
1545	238	2	a	\N	\N	KEV	2	sastre1
1546	238	3	Dutch	\N	\N	KEV	2	sastre1
1547	238	4	.	\N	\N	KEV	999	sastre1
1544	238	1	it's	\N		KEV	2	sastre1
1549	239	2	.	\N	\N	SOF	999	sastre1
1548	239	1	no	\N		SOF	2	sastre1
1551	240	2	don't	\N	\N	KEV	2	sastre1
1552	240	3	know	\N	\N	KEV	2	sastre1
1553	240	4	something	\N	\N	KEV	2	sastre1
1554	240	5	Dutch	\N	\N	KEV	2	sastre1
1555	240	6	.	\N	\N	KEV	999	sastre1
1550	240	1	I	\N		KEV	2	sastre1
1556	241	1	xxx.	\N		SOF	999	sastre1
1558	242	2	how	\N	\N	SOF	2	sastre1
1559	242	3	pretty	\N	\N	SOF	2	sastre1
1560	242	4	.	\N	\N	SOF	999	sastre1
1557	242	1	ay	\N		SOF	3	sastre1
1562	243	2	.	\N	\N	KEV	999	sastre1
1561	243	1	mmhm	\N		KEV	0	sastre1
1564	244	2	have	\N	\N	SOF	2	sastre1
1565	244	3	a	\N	\N	SOF	2	sastre1
1566	244	4	friend	\N	\N	SOF	2	sastre1
1567	244	5	of	\N	\N	SOF	2	sastre1
1568	244	6	mine	\N	\N	SOF	2	sastre1
1569	244	7	that	\N	\N	SOF	2	sastre1
1570	244	8	has	\N	\N	SOF	2	sastre1
1571	244	9	two	\N	\N	SOF	2	sastre1
1563	244	1	I	\N		SOF	2	sastre1
1572	244	10	miniature	\N	\N	SOF	2	sastre1
1573	244	11	rabbits	\N	\N	SOF	2	sastre1
1574	244	12	.	\N	\N	SOF	999	sastre1
1576	245	2	.	\N	\N	KEV	999	sastre1
1575	245	1	yeah	\N		KEV	2	sastre1
1578	246	2	keep	\N	\N	SOF	2	sastre1
1579	246	3	he	\N	\N	SOF	2	sastre1
1580	246	4	has	\N	\N	SOF	2	sastre1
1581	246	5	them	\N	\N	SOF	2	sastre1
1582	246	6	as	\N	\N	SOF	2	sastre1
1583	246	7	pets	\N	\N	SOF	2	sastre1
1584	246	8	.	\N	\N	SOF	999	sastre1
1577	246	1	he	\N		SOF	2	sastre1
1586	247	2	they	\N	\N	SOF	2	sastre1
1587	247	3	are	\N	\N	SOF	2	sastre1
1588	247	4	little	\N	\N	SOF	2	sastre1
1589	247	5	.	\N	\N	SOF	999	sastre1
1585	247	1	and	\N		SOF	2	sastre1
1591	248	2	.	\N	\N	KEV	999	sastre1
1590	248	1	mmhm	\N		KEV	0	sastre1
1593	249	2	don't	\N	\N	SOF	2	sastre1
1594	249	3	grow	\N	\N	SOF	2	sastre1
1595	249	4	much	\N	\N	SOF	2	sastre1
1596	249	5	.	\N	\N	SOF	999	sastre1
1592	249	1	they	\N		SOF	2	sastre1
1597	250	1	yeah	\N	background	KEV	2	sastre1
1598	250	2	.	\N	noise-something	KEV	999	sastre1
1599	251	1	.	\N		SOF	999	sastre1
1601	252	2	she	\N	\N	KEV	2	sastre1
1602	252	3	got	\N	\N	KEV	2	sastre1
1603	252	4	it	\N	\N	KEV	2	sastre1
1604	252	5	.	\N	\N	KEV	999	sastre1
1600	252	1	esta	\N		KEV	3	sastre1
1606	253	2	I	\N	\N	SOF	2	sastre1
1607	253	3	have	\N	\N	SOF	2	sastre1
1608	253	4	another	\N	\N	SOF	2	sastre1
1609	253	5	doctor	\N	\N	SOF	2	sastre1
1610	253	6	over	\N	\N	SOF	2	sastre1
1611	253	7	there	\N	\N	SOF	2	sastre1
1612	253	8	that	\N	\N	SOF	2	sastre1
1613	253	9	has	\N	\N	SOF	2	sastre1
1614	253	10	a	\N	\N	SOF	2	sastre1
1615	253	11	miniature	\N	\N	SOF	2	sastre1
1616	253	12	pig	\N	\N	SOF	2	sastre1
1617	253	13	.	\N	\N	SOF	999	sastre1
1605	253	1	and	\N		SOF	2	sastre1
1619	254	2	.	\N	\N	KEV	999	sastre1
1618	254	1	yeah	\N		KEV	2	sastre1
1621	255	2	the	\N	\N	SOF	2	sastre1
1622	255	3	daughter's	\N	\N	SOF	2	sastre1
1623	255	4	pet	\N	\N	SOF	2	sastre1
1624	255	5	.	\N	\N	SOF	999	sastre1
1620	255	1	that's	\N		SOF	2	sastre1
1626	256	2	a	\N	\N	SOF	2	sastre1
1627	256	3	pig	\N	\N	SOF	2	sastre1
1628	256	4	.	\N	\N	SOF	999	sastre1
1625	256	1	it's	\N		SOF	2	sastre1
1630	257	2	that	\N	\N	KEV	2	sastre1
1631	257	3	real	\N	\N	KEV	2	sastre1
1632	257	4	real	\N	\N	KEV	2	sastre1
1633	257	5	pig	\N	\N	KEV	2	sastre1
1634	257	6	los	\N	\N	KEV	3	sastre1
1635	257	7	los	\N	\N	KEV	3	sastre1
1636	257	8	los	\N	\N	KEV	3	sastre1
1637	257	9	with	\N	\N	KEV	2	sastre1
1638	257	10	with	\N	\N	KEV	2	sastre1
1639	257	11	a	\N	\N	KEV	2	sastre1
1640	257	12	big	\N	\N	KEV	2	sastre1
1641	257	13	belly	\N	\N	KEV	2	sastre1
1642	257	14	?	\N	\N	KEV	999	sastre1
1629	257	1	that	\N		KEV	2	sastre1
1644	258	2	but	\N	\N	SOF	2	sastre1
1645	258	3	the	\N	\N	SOF	2	sastre1
1646	258	4	little	\N	\N	SOF	2	sastre1
1647	258	5	ones	\N	\N	SOF	2	sastre1
1648	258	6	the	\N	\N	SOF	2	sastre1
1649	258	7	miniature	\N	\N	SOF	2	sastre1
1650	258	8	ones	\N	\N	SOF	2	sastre1
1651	258	9	.	\N	\N	SOF	999	sastre1
1643	258	1	mmhm	\N		SOF	0	sastre1
1653	259	2	.	\N	\N	SOF	999	sastre1
1652	259	1	yeah	\N		SOF	2	sastre1
1655	260	2	.	\N	\N	KEV	999	sastre1
1654	260	1	yeah	\N		KEV	2	sastre1
1657	261	2	cute	\N	\N	KEV	2	sastre1
1658	261	3	.	\N	\N	KEV	999	sastre1
1656	261	1	how	\N		KEV	2	sastre1
1660	262	2	has	\N	\N	SOF	2	sastre1
1661	262	3	their	\N	\N	SOF	2	sastre1
1662	262	4	own	\N	\N	SOF	2	sastre1
1663	262	5	pet	\N	\N	SOF	2	sastre1
1664	262	6	.	\N	\N	SOF	999	sastre1
1659	262	1	everybody	\N		SOF	2	sastre1
1666	263	2	.	\N	\N	KEV	999	sastre1
1665	263	1	mmhm	\N		KEV	0	sastre1
1668	264	2	is	\N	\N	KEV	2	sastre1
1669	264	3	everything	\N	\N	KEV	2	sastre1
1670	264	4	at	\N	\N	KEV	2	sastre1
1671	264	5	the	\N	\N	KEV	2	sastre1
1672	264	6	hospital	\N	\N	KEV	2	sastre1
1673	264	7	?	\N	\N	KEV	999	sastre1
1667	264	1	how	\N		KEV	2	sastre1
1675	265	2	.	\N	\N	SOF	999	sastre1
1674	265	1	good	\N		SOF	2	sastre1
1677	266	2	?	\N	\N	KEV	999	sastre1
1676	266	1	sí	\N		KEV	3	sastre1
1679	267	2	busy	\N	\N	SOF	2	sastre1
1680	267	3	but	\N	\N	SOF	2	sastre1
1681	267	4	it's	\N	\N	SOF	2	sastre1
1682	267	5	good	\N	\N	SOF	2	sastre1
1683	267	6	.	\N	\N	SOF	999	sastre1
1678	267	1	it's	\N		SOF	2	sastre1
1685	268	2	.	\N	\N	KEV	999	sastre1
1684	268	1	mmhm	\N		KEV	0	sastre1
1687	269	2	know	\N	\N	SOF	2	sastre1
1688	269	3	they	\N	\N	SOF	2	sastre1
1689	269	4	have	\N	\N	SOF	2	sastre1
1690	269	5	more	\N	\N	SOF	2	sastre1
1691	269	6	work	\N	\N	SOF	2	sastre1
1692	269	7	less	\N	\N	SOF	2	sastre1
1693	269	8	people	\N	\N	SOF	2	sastre1
1694	269	9	.	\N	\N	SOF	999	sastre1
1686	269	1	you	\N		SOF	2	sastre1
1696	270	2	and	\N	\N	KEV	2	sastre1
1697	270	3	less	\N	\N	KEV	2	sastre1
1698	270	4	money	\N	\N	KEV	2	sastre1
1699	270	5	.	\N	\N	KEV	999	sastre1
1695	270	1	yeah	\N		KEV	2	sastre1
1701	271	2	yeah	\N	\N	SOF	2	sastre1
1702	271	3	because	\N	\N	SOF	2	sastre1
1703	271	4	you	\N	\N	SOF	2	sastre1
1704	271	5	have	\N	\N	SOF	2	sastre1
1705	271	6	to	\N	\N	SOF	2	sastre1
1706	271	7	work	\N	\N	SOF	2	sastre1
1707	271	8	double	\N	\N	SOF	2	sastre1
1708	271	9	so	\N	\N	SOF	2	sastre1
1709	271	10	.	\N	\N	SOF	999	sastre1
1700	271	1	every	\N		SOF	2	sastre1
1711	272	2	.	\N	\N	KEV	999	sastre1
1710	272	1	yeah	\N		KEV	2	sastre1
1713	273	2	yeah	\N	\N	KEV	2	sastre1
1714	273	3	we've	\N	\N	KEV	2	sastre1
1715	273	4	been	\N	\N	KEV	2	sastre1
1716	273	5	three	\N	\N	KEV	2	sastre1
1717	273	6	years	\N	\N	KEV	2	sastre1
1718	273	7	without	\N	\N	KEV	2	sastre1
1719	273	8	a	\N	\N	KEV	2	sastre1
1720	273	9	raise	\N	\N	KEV	2	sastre1
1721	273	10	.	\N	\N	KEV	999	sastre1
1712	273	1	yeah	\N		KEV	2	sastre1
1723	274	2	.	\N	\N	KEV	999	sastre1
1722	274	1	because	\N		KEV	2	sastre1
1725	275	2	mean	\N	\N	SOF	2	sastre1
1726	275	3	what	\N	\N	SOF	2	sastre1
1727	275	4	we	\N	\N	SOF	2	sastre1
1728	275	5	do	\N	\N	SOF	2	sastre1
1729	275	6	is	\N	\N	SOF	2	sastre1
1730	275	7	they	\N	\N	SOF	2	sastre1
1731	275	8	give	\N	\N	SOF	2	sastre1
1732	275	9	us	\N	\N	SOF	2	sastre1
1733	275	10	like	\N	\N	SOF	2	sastre1
1734	275	11	a	\N	\N	SOF	2	sastre1
1735	275	12	raise	\N	\N	SOF	2	sastre1
1736	275	13	I	\N	\N	SOF	2	sastre1
1737	275	14	mean	\N	\N	SOF	2	sastre1
1738	275	15	is	\N	\N	SOF	2	sastre1
1739	275	16	it	\N	\N	SOF	2	sastre1
1740	275	17	depends	\N	\N	SOF	2	sastre1
1741	275	18	on	\N	\N	SOF	2	sastre1
1742	275	19	how	\N	\N	SOF	2	sastre1
1743	275	20	much	\N	\N	SOF	2	sastre1
1744	275	21	you	\N	\N	SOF	2	sastre1
1745	275	22	make	\N	\N	SOF	2	sastre1
1746	275	23	.	\N	\N	SOF	999	sastre1
1724	275	1	I	\N		SOF	2	sastre1
1748	276	2	basically	\N	\N	SOF	2	sastre1
1749	276	3	what	\N	\N	SOF	2	sastre1
1750	276	4	it	\N	\N	SOF	2	sastre1
1751	276	5	does	\N	\N	SOF	2	sastre1
1752	276	6	is	\N	\N	SOF	2	sastre1
1753	276	7	then	\N	\N	SOF	2	sastre1
1754	276	8	every	\N	\N	SOF	2	sastre1
1755	276	9	year	\N	\N	SOF	2	sastre1
1756	276	10	they	\N	\N	SOF	2	sastre1
1757	276	11	put	\N	\N	SOF	2	sastre1
1758	276	12	up	\N	\N	SOF	2	sastre1
1759	276	13	the	\N	\N	SOF	2	sastre1
1760	276	14	insurances	\N	\N	SOF	2	sastre1
1761	276	15	so	\N	\N	SOF	2	sastre1
1762	276	16	high	\N	\N	SOF	2	sastre1
1763	276	17	.	\N	\N	SOF	999	sastre1
1747	276	1	but	\N		SOF	2	sastre1
1765	277	2	.	\N	\N	KEV	999	sastre1
1764	277	1	mmhm	\N		KEV	0	sastre1
1767	278	2	the	\N	\N	SOF	2	sastre1
1768	278	3	little	\N	\N	SOF	2	sastre1
1769	278	4	money	\N	\N	SOF	2	sastre1
1770	278	5	that	\N	\N	SOF	2	sastre1
1771	278	6	you	\N	\N	SOF	2	sastre1
1772	278	7	are	\N	\N	SOF	2	sastre1
1773	278	8	making	\N	\N	SOF	2	sastre1
1774	278	9	.	\N	\N	SOF	999	sastre1
1766	278	1	that	\N		SOF	2	sastre1
1776	279	2	take	\N	\N	KEV	2	sastre1
1777	279	3	it	\N	\N	KEV	2	sastre1
1778	279	4	away	\N	\N	KEV	2	sastre1
1779	279	5	.	\N	\N	KEV	999	sastre1
1775	279	1	they	\N		KEV	2	sastre1
1781	280	2	they	\N	\N	SOF	2	sastre1
1782	280	3	take	\N	\N	SOF	2	sastre1
1783	280	4	it	\N	\N	SOF	2	sastre1
1784	280	5	away	\N	\N	SOF	2	sastre1
1785	280	6	with	\N	\N	SOF	2	sastre1
1786	280	7	the	\N	\N	SOF	2	sastre1
1787	280	8	insurance	\N	\N	SOF	2	sastre1
1788	280	9	so	\N	\N	SOF	2	sastre1
1789	280	10	really	\N	\N	SOF	2	sastre1
1790	280	11	you	\N	\N	SOF	2	sastre1
1791	280	12	are	\N	\N	SOF	2	sastre1
1792	280	13	not	\N	\N	SOF	2	sastre1
1793	280	14	seeing	\N	\N	SOF	2	sastre1
1794	280	15	much	\N	\N	SOF	2	sastre1
1795	280	16	.	\N	\N	SOF	999	sastre1
1780	280	1	it's	\N		SOF	2	sastre1
1797	281	2	.	\N	\N	KEV	999	sastre1
1796	281	1	sí	\N		KEV	3	sastre1
1799	282	2	just	\N	\N	SOF	2	sastre1
1800	282	3	like	\N	\N	SOF	2	sastre1
1801	282	4	there's	\N	\N	SOF	2	sastre1
1802	282	5	no	\N	\N	SOF	2	sastre1
1803	282	6	raise	\N	\N	SOF	2	sastre1
1804	282	7	.	\N	\N	SOF	999	sastre1
1798	282	1	it's	\N		SOF	2	sastre1
1806	283	2	mismo	\N	\N	KEV	3	sastre1
1807	283	3	nos	\N	\N	KEV	3	sastre1
1808	283	4	pasa	\N	\N	KEV	3	sastre1
1809	283	5	a	\N	\N	KEV	3	sastre1
1810	283	6	nosotros	\N	\N	KEV	3	sastre1
1811	283	7	.	\N	\N	KEV	999	sastre1
1805	283	1	así	\N		KEV	3	sastre1
1813	284	2	know	\N	\N	SOF	2	sastre1
1814	284	3	.	\N	\N	SOF	999	sastre1
1812	284	1	you	\N		SOF	2	sastre1
1816	285	2	I'm	\N	\N	SOF	2	sastre1
1817	285	3	the	\N	\N	SOF	2	sastre1
1818	285	4	one	\N	\N	SOF	2	sastre1
1819	285	5	that	\N	\N	SOF	2	sastre1
1820	285	6	pays	\N	\N	SOF	2	sastre1
1821	285	7	the	\N	\N	SOF	2	sastre1
1822	285	8	insurance	\N	\N	SOF	2	sastre1
1823	285	9	because	\N	\N	SOF	2	sastre1
1824	285	10	my	\N	\N	SOF	2	sastre1
1825	285	11	husband's	\N	\N	SOF	2	sastre1
1826	285	12	insurance	\N	\N	SOF	2	sastre1
1827	285	13	is	\N	\N	SOF	2	sastre1
1828	285	14	much	\N	\N	SOF	2	sastre1
1829	285	15	more	\N	\N	SOF	2	sastre1
1830	285	16	expensive	\N	\N	SOF	2	sastre1
1831	285	17	.	\N	\N	SOF	999	sastre1
1815	285	1	and	\N		SOF	2	sastre1
1833	286	2	it	\N	\N	KEV	2	sastre1
1834	286	3	yeah	\N	\N	KEV	2	sastre1
1835	286	4	.	\N	\N	KEV	999	sastre1
1832	286	1	that's	\N		KEV	2	sastre1
1837	287	2	because	\N	\N	SOF	2	sastre1
1838	287	3	since	\N	\N	SOF	2	sastre1
1839	287	4	I	\N	\N	SOF	2	sastre1
1840	287	5	work	\N	\N	SOF	2	sastre1
1841	287	6	for	\N	\N	SOF	2	sastre1
1842	287	7	you	\N	\N	SOF	2	sastre1
1843	287	8	know	\N	\N	SOF	2	sastre1
1844	287	9	they	\N	\N	SOF	2	sastre1
1845	287	10	have	\N	\N	SOF	2	sastre1
1846	287	11	a	\N	\N	SOF	2	sastre1
1847	287	12	lot	\N	\N	SOF	2	sastre1
1848	287	13	more	\N	\N	SOF	2	sastre1
1849	287	14	.	\N	\N	SOF	999	sastre1
1836	287	1	yeah	\N		SOF	2	sastre1
1851	288	2	.	\N	\N	KEV	999	sastre1
1850	288	1	yeah	\N		KEV	2	sastre1
1853	289	2	you	\N	\N	SOF	2	sastre1
1854	289	3	know	\N	\N	SOF	2	sastre1
1855	289	4	it's	\N	\N	SOF	2	sastre1
1856	289	5	.	\N	\N	SOF	999	sastre1
1852	289	1	so	\N		SOF	2	sastre1
1858	290	2	.	\N	\N	KEV	999	sastre1
1857	290	1	mmhm	\N		KEV	0	sastre1
1860	291	2	is	\N	\N	SOF	2	sastre1
1861	291	3	cheaper	\N	\N	SOF	2	sastre1
1862	291	4	but	\N	\N	SOF	2	sastre1
1863	291	5	still	\N	\N	SOF	2	sastre1
1864	291	6	.	\N	\N	SOF	999	sastre1
1859	291	1	insurance	\N		SOF	2	sastre1
1866	292	2	.	\N	\N	KEV	999	sastre1
1865	292	1	sí	\N		KEV	3	sastre1
1868	293	2	one	\N	\N	KEV	2	sastre1
1869	293	3	advantage	\N	\N	KEV	2	sastre1
1870	293	4	I	\N	\N	KEV	2	sastre1
1871	293	5	have	\N	\N	KEV	2	sastre1
1872	293	6	is	\N	\N	KEV	2	sastre1
1873	293	7	that	\N	\N	KEV	2	sastre1
1874	293	8	Pepita	\N	\N	KEV	0	sastre1
1875	293	9	since	\N	\N	KEV	2	sastre1
1876	293	10	she	\N	\N	KEV	2	sastre1
1877	293	11	is	\N	\N	KEV	2	sastre1
1878	293	12	working	\N	\N	KEV	2	sastre1
1879	293	13	for	\N	\N	KEV	2	sastre1
1880	293	14	the	\N	\N	KEV	2	sastre1
1881	293	15	county	\N	\N	KEV	2	sastre1
1882	293	16	she's	\N	\N	KEV	2	sastre1
1883	293	17	gonna	\N	\N	KEV	2	sastre1
1884	293	18	be	\N	\N	KEV	2	sastre1
1885	293	19	independent	\N	\N	KEV	2	sastre1
1886	293	20	.	\N	\N	KEV	999	sastre1
1867	293	1	ahora	\N		KEV	3	sastre1
1888	294	2	not	\N	\N	KEV	2	sastre1
1889	294	3	gonna	\N	\N	KEV	2	sastre1
1890	294	4	have	\N	\N	KEV	2	sastre1
1891	294	5	to	\N	\N	KEV	2	sastre1
1892	294	6	carry	\N	\N	KEV	2	sastre1
1893	294	7	her	\N	\N	KEV	2	sastre1
1894	294	8	in	\N	\N	KEV	2	sastre1
1895	294	9	my	\N	\N	KEV	2	sastre1
1896	294	10	insurance	\N	\N	KEV	2	sastre1
1897	294	11	any	\N	\N	KEV	2	sastre1
1898	294	12	more	\N	\N	KEV	2	sastre1
1899	294	13	.	\N	\N	KEV	999	sastre1
1887	294	1	I'm	\N		KEV	2	sastre1
1901	295	2	.	\N	\N	SOF	999	sastre1
1900	295	1	yeah	\N		SOF	2	sastre1
1903	296	2	she'll	\N	\N	KEV	2	sastre1
1904	296	3	have	\N	\N	KEV	2	sastre1
1905	296	4	her	\N	\N	KEV	2	sastre1
1906	296	5	own	\N	\N	KEV	2	sastre1
1907	296	6	insurance	\N	\N	KEV	2	sastre1
1908	296	7	and	\N	\N	KEV	2	sastre1
1909	296	8	for	\N	\N	KEV	2	sastre1
1910	296	9	her	\N	\N	KEV	2	sastre1
1911	296	10	working	\N	\N	KEV	2	sastre1
1912	296	11	for	\N	\N	KEV	2	sastre1
1913	296	12	the	\N	\N	KEV	2	sastre1
1914	296	13	county	\N	\N	KEV	2	sastre1
1915	296	14	the	\N	\N	KEV	2	sastre1
1916	296	15	insurance	\N	\N	KEV	2	sastre1
1917	296	16	is	\N	\N	KEV	2	sastre1
1918	296	17	free	\N	\N	KEV	2	sastre1
1919	296	18	.	\N	\N	KEV	999	sastre1
1902	296	1	because	\N		KEV	2	sastre1
1921	297	2	for	\N	\N	KEV	2	sastre1
1922	297	3	Pepa	\N	\N	KEV	0	sastre1
1923	297	4	is	\N	\N	KEV	2	sastre1
1924	297	5	free	\N	\N	KEV	2	sastre1
1925	297	6	.	\N	\N	KEV	999	sastre1
1920	297	1	and	\N		KEV	2	sastre1
1927	298	2	I	\N	\N	KEV	2	sastre1
1928	298	3	pay	\N	\N	KEV	2	sastre1
1929	298	4	if	\N	\N	KEV	2	sastre1
1930	298	5	it's	\N	\N	KEV	2	sastre1
1931	298	6	just	\N	\N	KEV	2	sastre1
1932	298	7	for	\N	\N	KEV	2	sastre1
1933	298	8	me	\N	\N	KEV	2	sastre1
1934	298	9	it's	\N	\N	KEV	2	sastre1
1935	298	10	just	\N	\N	KEV	2	sastre1
1936	298	11	like	\N	\N	KEV	2	sastre1
1937	298	12	thirty	\N	\N	KEV	2	sastre1
1938	298	13	dollars	\N	\N	KEV	2	sastre1
1939	298	14	a	\N	\N	KEV	2	sastre1
1940	298	15	month	\N	\N	KEV	2	sastre1
1941	298	16	.	\N	\N	KEV	999	sastre1
1926	298	1	and	\N		KEV	2	sastre1
1942	299	1	no	\N		SOF	2	sastre1
1943	299	2	that's	\N	\N	SOF	2	sastre1
1944	299	3	not	\N	\N	SOF	2	sastre1
1945	299	4	bad	\N	\N	SOF	2	sastre1
1946	299	5	.	\N	\N	SOF	999	sastre1
1948	300	2	that's	\N	\N	KEV	2	sastre1
1949	300	3	not	\N	\N	KEV	2	sastre1
1950	300	4	bad	\N	\N	KEV	2	sastre1
1951	300	5	pero	\N	\N	KEV	3	sastre1
1952	300	6	right	\N	\N	KEV	2	sastre1
1953	300	7	now	\N	\N	KEV	2	sastre1
1954	300	8	.	\N	\N	KEV	999	sastre1
1947	300	1	no	\N		KEV	2	sastre1
1956	301	2	isn't	\N	\N	SOF	2	sastre1
1957	301	3	it	\N	\N	SOF	2	sastre1
1958	301	4	better	\N	\N	SOF	2	sastre1
1959	301	5	for	\N	\N	SOF	2	sastre1
1960	301	6	you	\N	\N	SOF	2	sastre1
1961	301	7	to	\N	\N	SOF	2	sastre1
1962	301	8	go	\N	\N	SOF	2	sastre1
1963	301	9	with	\N	\N	SOF	2	sastre1
1964	301	10	her	\N	\N	SOF	2	sastre1
1965	301	11	with	\N	\N	SOF	2	sastre1
1966	301	12	the	\N	\N	SOF	2	sastre1
1967	301	13	county	\N	\N	SOF	2	sastre1
1968	301	14	no	\N	\N	SOF	2	sastre1
1969	301	15	?	\N	\N	SOF	999	sastre1
1955	301	1	and	\N		SOF	2	sastre1
1971	302	2	because	\N	\N	KEV	2	sastre1
1972	302	3	if	\N	\N	KEV	2	sastre1
1973	302	4	we	\N	\N	KEV	2	sastre1
1974	302	5	go	\N	\N	KEV	2	sastre1
1975	302	6	into	\N	\N	KEV	2	sastre1
1976	302	7	the	\N	\N	KEV	2	sastre1
1977	302	8	family	\N	\N	KEV	2	sastre1
1978	302	9	plan	\N	\N	KEV	2	sastre1
1979	302	10	her	\N	\N	KEV	2	sastre1
1980	302	11	plan	\N	\N	KEV	2	sastre1
1981	302	12	is	\N	\N	KEV	2	sastre1
1982	302	13	more	\N	\N	KEV	2	sastre1
1983	302	14	expensive	\N	\N	KEV	2	sastre1
1984	302	15	than	\N	\N	KEV	2	sastre1
1985	302	16	mine	\N	\N	KEV	2	sastre1
1986	302	17	.	\N	\N	KEV	999	sastre1
1970	302	1	no	\N		KEV	2	sastre1
1988	303	2	I	\N	\N	SOF	2	sastre1
1989	303	3	see	\N	\N	SOF	2	sastre1
1990	303	4	.	\N	\N	SOF	999	sastre1
1987	303	1	oh	\N		SOF	0	sastre1
1992	304	2	why	\N	\N	KEV	2	sastre1
1993	304	3	I	\N	\N	KEV	2	sastre1
1994	304	4	had	\N	\N	KEV	2	sastre1
1995	304	5	it	\N	\N	KEV	2	sastre1
1996	304	6	.	\N	\N	KEV	999	sastre1
1991	304	1	that's	\N		KEV	2	sastre1
1998	305	2	had	\N	\N	KEV	2	sastre1
1999	305	3	the	\N	\N	KEV	2	sastre1
2000	305	4	insurance	\N	\N	KEV	2	sastre1
2001	305	5	under	\N	\N	KEV	2	sastre1
2002	305	6	me	\N	\N	KEV	2	sastre1
2003	305	7	for	\N	\N	KEV	2	sastre1
2004	305	8	Pepita	\N	\N	KEV	0	sastre1
2005	305	9	.	\N	\N	KEV	999	sastre1
1997	305	1	I	\N		KEV	2	sastre1
2007	306	2	ok	\N	\N	SOF	0	sastre1
2008	306	3	.	\N	\N	SOF	999	sastre1
2006	306	1	oh	\N		SOF	0	sastre1
2010	307	2	me	\N	\N	KEV	2	sastre1
2011	307	3	because	\N	\N	KEV	2	sastre1
2012	307	4	Pepa	\N	\N	KEV	0	sastre1
2013	307	5	had	\N	\N	KEV	2	sastre1
2014	307	6	her	\N	\N	KEV	2	sastre1
2015	307	7	own	\N	\N	KEV	2	sastre1
2016	307	8	.	\N	\N	KEV	999	sastre1
2009	307	1	and	\N		KEV	2	sastre1
2018	308	2	now	\N	\N	KEV	2	sastre1
2019	308	3	that	\N	\N	KEV	2	sastre1
2020	308	4	Pepa	\N	\N	KEV	0	sastre1
2021	308	5	has	\N	\N	KEV	2	sastre1
2022	308	6	her	\N	\N	KEV	2	sastre1
2023	308	7	own	\N	\N	KEV	2	sastre1
2024	308	8	and	\N	\N	KEV	2	sastre1
2025	308	9	Pepita	\N	\N	KEV	0	sastre1
2026	308	10	is	\N	\N	KEV	2	sastre1
2027	308	11	gonna	\N	\N	KEV	2	sastre1
2028	308	12	get	\N	\N	KEV	2	sastre1
2029	308	13	her	\N	\N	KEV	2	sastre1
2030	308	14	own	\N	\N	KEV	2	sastre1
2031	308	15	then	\N	\N	KEV	2	sastre1
2032	308	16	I	\N	\N	KEV	2	sastre1
2033	308	17	can	\N	\N	KEV	2	sastre1
2034	308	18	get	\N	\N	KEV	2	sastre1
2035	308	19	mine	\N	\N	KEV	2	sastre1
2036	308	20	on	\N	\N	KEV	2	sastre1
2037	308	21	my	\N	\N	KEV	2	sastre1
2038	308	22	own	\N	\N	KEV	2	sastre1
2039	308	23	.	\N	\N	KEV	999	sastre1
2017	308	1	but	\N		KEV	2	sastre1
2041	309	2	thirty	\N	\N	KEV	2	sastre1
2042	309	3	some	\N	\N	KEV	2	sastre1
2043	309	4	dollars	\N	\N	KEV	2	sastre1
2044	309	5	which	\N	\N	KEV	2	sastre1
2045	309	6	is	\N	\N	KEV	2	sastre1
2046	309	7	not	\N	\N	KEV	2	sastre1
2047	309	8	a	\N	\N	KEV	2	sastre1
2048	309	9	bad	\N	\N	KEV	2	sastre1
2049	309	10	deal	\N	\N	KEV	2	sastre1
2050	309	11	.	\N	\N	KEV	999	sastre1
2040	309	1	it's	\N		KEV	2	sastre1
2052	310	2	my	\N	\N	SOF	2	sastre1
2053	310	3	brother	\N	\N	SOF	2	sastre1
2054	310	4	was	\N	\N	SOF	2	sastre1
2055	310	5	telling	\N	\N	SOF	2	sastre1
2056	310	6	me	\N	\N	SOF	2	sastre1
2057	310	7	that	\N	\N	SOF	2	sastre1
2058	310	8	law	\N	\N	SOF	2	sastre1
2059	310	9	that	\N	\N	SOF	2	sastre1
2060	310	10	came	\N	\N	SOF	2	sastre1
2061	310	11	about	\N	\N	SOF	2	sastre1
2062	310	12	with	\N	\N	SOF	2	sastre1
2063	310	13	the	\N	\N	SOF	2	sastre1
2064	310	14	homestead	\N	\N	SOF	2	sastre1
2065	310	15	exemption	\N	\N	SOF	2	sastre1
2066	310	16	.	\N	\N	SOF	999	sastre1
2051	310	1	but	\N		SOF	2	sastre1
2067	311	1	mmhm	\N		KEV	0	sastre1
2068	311	2	.	\N	\N	KEV	999	sastre1
2070	312	2	he	\N	\N	SOF	2	sastre1
2071	312	3	was	\N	\N	SOF	2	sastre1
2072	312	4	saying	\N	\N	SOF	2	sastre1
2073	312	5	that	\N	\N	SOF	2	sastre1
2074	312	6	you	\N	\N	SOF	2	sastre1
2075	312	7	know	\N	\N	SOF	2	sastre1
2076	312	8	that	\N	\N	SOF	2	sastre1
2077	312	9	it's	\N	\N	SOF	2	sastre1
2078	312	10	not	\N	\N	SOF	2	sastre1
2079	312	11	worth	\N	\N	SOF	2	sastre1
2080	312	12	it	\N	\N	SOF	2	sastre1
2081	312	13	.	\N	\N	SOF	999	sastre1
2069	312	1	that	\N		SOF	2	sastre1
2083	313	2	was	\N	\N	SOF	2	sastre1
2084	313	3	telling	\N	\N	SOF	2	sastre1
2085	313	4	me	\N	\N	SOF	2	sastre1
2086	313	5	that	\N	\N	SOF	2	sastre1
2087	313	6	so	\N	\N	SOF	2	sastre1
2088	313	7	many	\N	\N	SOF	2	sastre1
2089	313	8	people	\N	\N	SOF	2	sastre1
2090	313	9	from	\N	\N	SOF	2	sastre1
2091	313	10	the	\N	\N	SOF	2	sastre1
2092	313	11	county	\N	\N	SOF	2	sastre1
2093	313	12	are	\N	\N	SOF	2	sastre1
2094	313	13	gonna	\N	\N	SOF	2	sastre1
2095	313	14	lose	\N	\N	SOF	2	sastre1
2096	313	15	jobs	\N	\N	SOF	2	sastre1
2097	313	16	because	\N	\N	SOF	2	sastre1
2098	313	17	of	\N	\N	SOF	2	sastre1
2099	313	18	that	\N	\N	SOF	2	sastre1
2100	313	19	.	\N	\N	SOF	999	sastre1
2082	313	1	he	\N		SOF	2	sastre1
2102	314	2	are	\N	\N	SOF	2	sastre1
2103	314	3	gonna	\N	\N	SOF	2	sastre1
2104	314	4	take	\N	\N	SOF	2	sastre1
2105	314	5	you	\N	\N	SOF	2	sastre1
2106	314	6	know	\N	\N	SOF	2	sastre1
2107	314	7	they	\N	\N	SOF	2	sastre1
2108	314	8	are	\N	\N	SOF	2	sastre1
2109	314	9	gonna	\N	\N	SOF	2	sastre1
2110	314	10	the	\N	\N	SOF	2	sastre1
2111	314	11	cut	\N	\N	SOF	2	sastre1
2112	314	12	down	\N	\N	SOF	2	sastre1
2113	314	13	is	\N	\N	SOF	2	sastre1
2114	314	14	gonna	\N	\N	SOF	2	sastre1
2115	314	15	be	\N	\N	SOF	2	sastre1
2116	314	16	so	\N	\N	SOF	2	sastre1
2117	314	17	drastic	\N	\N	SOF	2	sastre1
2118	314	18	.	\N	\N	SOF	999	sastre1
2101	314	1	they	\N		SOF	2	sastre1
2120	315	2	the	\N	\N	SOF	2	sastre1
2121	315	3	people	\N	\N	SOF	2	sastre1
2122	315	4	what	\N	\N	SOF	2	sastre1
2123	315	5	they	\N	\N	SOF	2	sastre1
2124	315	6	are	\N	\N	SOF	2	sastre1
2125	315	7	gonna	\N	\N	SOF	2	sastre1
2126	315	8	save	\N	\N	SOF	2	sastre1
2127	315	9	for	\N	\N	SOF	2	sastre1
2128	315	10	the	\N	\N	SOF	2	sastre1
2129	315	11	homestead	\N	\N	SOF	2	sastre1
2130	315	12	is	\N	\N	SOF	2	sastre1
2131	315	13	so	\N	\N	SOF	2	sastre1
2132	315	14	minimal	\N	\N	SOF	2	sastre1
2133	315	15	that	\N	\N	SOF	2	sastre1
2134	315	16	it	\N	\N	SOF	2	sastre1
2135	315	17	wasn't	\N	\N	SOF	2	sastre1
2136	315	18	worth	\N	\N	SOF	2	sastre1
2137	315	19	it	\N	\N	SOF	2	sastre1
2138	315	20	.	\N	\N	SOF	999	sastre1
2119	315	1	and	\N		SOF	2	sastre1
2140	316	2	I	\N	\N	SOF	2	sastre1
2141	316	3	said	\N	\N	SOF	2	sastre1
2142	316	4	well	\N	\N	SOF	2	sastre1
2143	316	5	.	\N	\N	SOF	999	sastre1
2139	316	1	and	\N		SOF	2	sastre1
2145	317	2	.	\N	\N	KEV	999	sastre1
2144	317	1	yeah	\N		KEV	2	sastre1
2147	318	2	.	\N	\N	KEV	999	sastre1
2146	318	1	pero	\N		KEV	3	sastre1
2149	319	2	is	\N	\N	SOF	2	sastre1
2150	319	3	looking	\N	\N	SOF	2	sastre1
2151	319	4	for	\N	\N	SOF	2	sastre1
2152	319	5	a	\N	\N	SOF	2	sastre1
2153	319	6	buck	\N	\N	SOF	2	sastre1
2154	319	7	.	\N	\N	SOF	999	sastre1
2148	319	1	everybody	\N		SOF	2	sastre1
2156	320	2	you	\N	\N	KEV	2	sastre1
2157	320	3	know	\N	\N	KEV	2	sastre1
2158	320	4	I	\N	\N	KEV	2	sastre1
2159	320	5	don't	\N	\N	KEV	2	sastre1
2160	320	6	agree	\N	\N	KEV	2	sastre1
2161	320	7	with	\N	\N	KEV	2	sastre1
2162	320	8	him	\N	\N	KEV	2	sastre1
2163	320	9	.	\N	\N	KEV	999	sastre1
2155	320	1	pero	\N		KEV	3	sastre1
2165	321	2	?	\N	\N	SOF	999	sastre1
2164	321	1	no	\N		SOF	2	sastre1
2167	322	2	two	\N	\N	KEV	2	sastre1
2168	322	3	thousand	\N	\N	KEV	2	sastre1
2169	322	4	and	\N	\N	KEV	2	sastre1
2170	322	5	three	\N	\N	KEV	2	sastre1
2171	322	6	that	\N	\N	KEV	2	sastre1
2172	322	7	the	\N	\N	KEV	2	sastre1
2173	322	8	taxes	\N	\N	KEV	2	sastre1
2174	322	9	were	\N	\N	KEV	2	sastre1
2175	322	10	more	\N	\N	KEV	2	sastre1
2176	322	11	or	\N	\N	KEV	2	sastre1
2177	322	12	less	\N	\N	KEV	2	sastre1
2178	322	13	what	\N	\N	KEV	2	sastre1
2179	322	14	they	\N	\N	KEV	2	sastre1
2180	322	15	are	\N	\N	KEV	2	sastre1
2181	322	16	now	\N	\N	KEV	2	sastre1
2182	322	17	.	\N	\N	KEV	999	sastre1
2166	322	1	in	\N		KEV	2	sastre1
2184	323	2	.	\N	\N	SOF	999	sastre1
2183	323	1	mmhm	\N		SOF	0	sastre1
2186	324	2	?	\N	\N	KEV	999	sastre1
2185	324	1	right	\N		KEV	2	sastre1
2188	325	2	was	\N	\N	KEV	2	sastre1
2189	325	3	five	\N	\N	KEV	2	sastre1
2190	325	4	years	\N	\N	KEV	2	sastre1
2191	325	5	ago	\N	\N	KEV	2	sastre1
2192	325	6	.	\N	\N	KEV	999	sastre1
2187	325	1	that	\N		KEV	2	sastre1
2194	326	2	salaries	\N	\N	KEV	2	sastre1
2195	326	3	of	\N	\N	KEV	2	sastre1
2196	326	4	employees	\N	\N	KEV	2	sastre1
2197	326	5	and	\N	\N	KEV	2	sastre1
2198	326	6	the	\N	\N	KEV	2	sastre1
2199	326	7	hiring	\N	\N	KEV	2	sastre1
2200	326	8	of	\N	\N	KEV	2	sastre1
2201	326	9	employees	\N	\N	KEV	2	sastre1
2202	326	10	have	\N	\N	KEV	2	sastre1
2203	326	11	not	\N	\N	KEV	2	sastre1
2204	326	12	increased	\N	\N	KEV	2	sastre1
2205	326	13	what	\N	\N	KEV	2	sastre1
2206	326	14	they	\N	\N	KEV	2	sastre1
2207	326	15	increased	\N	\N	KEV	2	sastre1
2208	326	16	in	\N	\N	KEV	2	sastre1
2209	326	17	revenues	\N	\N	KEV	2	sastre1
2210	326	18	.	\N	\N	KEV	999	sastre1
2193	326	1	the	\N		KEV	2	sastre1
2212	327	2	where	\N	\N	KEV	2	sastre1
2213	327	3	is	\N	\N	KEV	2	sastre1
2214	327	4	all	\N	\N	KEV	2	sastre1
2215	327	5	that	\N	\N	KEV	2	sastre1
2216	327	6	extra	\N	\N	KEV	2	sastre1
2217	327	7	money	\N	\N	KEV	2	sastre1
2218	327	8	that	\N	\N	KEV	2	sastre1
2219	327	9	they	\N	\N	KEV	2	sastre1
2220	327	10	made	\N	\N	KEV	2	sastre1
2221	327	11	when	\N	\N	KEV	2	sastre1
2222	327	12	when	\N	\N	KEV	2	sastre1
2223	327	13	the	\N	\N	KEV	2	sastre1
2224	327	14	boom	\N	\N	KEV	2	sastre1
2225	327	15	was	\N	\N	KEV	2	sastre1
2226	327	16	going	\N	\N	KEV	2	sastre1
2227	327	17	on	\N	\N	KEV	2	sastre1
2228	327	18	?	\N	\N	KEV	999	sastre1
2211	327	1	so	\N		KEV	2	sastre1
2230	328	2	sabes	\N	\N	KEV	3	sastre1
2231	328	3	?	\N	\N	KEV	999	sastre1
2229	328	1	tú	\N		KEV	3	sastre1
2233	329	2	was	\N	\N	KEV	2	sastre1
2234	329	3	misspent	\N	\N	KEV	2	sastre1
2235	329	4	.	\N	\N	KEV	999	sastre1
2232	329	1	it	\N		KEV	2	sastre1
2237	330	2	they	\N	\N	KEV	2	sastre1
2238	330	3	bought	\N	\N	KEV	2	sastre1
2239	330	4	things	\N	\N	KEV	2	sastre1
2240	330	5	that	\N	\N	KEV	2	sastre1
2241	330	6	maybe	\N	\N	KEV	2	sastre1
2242	330	7	they	\N	\N	KEV	2	sastre1
2243	330	8	didn't	\N	\N	KEV	2	sastre1
2244	330	9	need	\N	\N	KEV	2	sastre1
2245	330	10	to	\N	\N	KEV	2	sastre1
2246	330	11	buy	\N	\N	KEV	2	sastre1
2247	330	12	.	\N	\N	KEV	999	sastre1
2236	330	1	ah	\N		KEV	0	sastre1
2249	331	2	made	\N	\N	KEV	2	sastre1
2250	331	3	.	\N	\N	KEV	999	sastre1
2248	331	1	they	\N		KEV	2	sastre1
2252	332	2	sabes	\N	\N	KEV	3	sastre1
2253	332	3	?	\N	\N	KEV	999	sastre1
2251	332	1	tú	\N		KEV	3	sastre1
2255	333	2	bring	\N	\N	KEV	2	sastre1
2256	333	3	it	\N	\N	KEV	2	sastre1
2257	333	4	back	\N	\N	KEV	2	sastre1
2258	333	5	to	\N	\N	KEV	2	sastre1
2259	333	6	where	\N	\N	KEV	2	sastre1
2260	333	7	we	\N	\N	KEV	2	sastre1
2261	333	8	donde	\N	\N	KEV	3	sastre1
2262	333	9	estamos	\N	\N	KEV	3	sastre1
2263	333	10	ahora	\N	\N	KEV	3	sastre1
2264	333	11	.	\N	\N	KEV	999	sastre1
2254	333	1	let's	\N		KEV	2	sastre1
2270	334	6	lo	\N	\N	KEV	3	sastre1
2271	334	7	necesario	\N	\N	KEV	3	sastre1
2272	334	8	.	\N	\N	KEV	999	sastre1
2265	334	1	tú	\N	A	KEV	3	sastre1
2266	334	2	sabes	\N	phone	KEV	3	sastre1
2267	334	3	una	\N	is	KEV	3	sastre1
2268	334	4	cosa	\N	ringing	KEV	3	sastre1
2269	334	5	básica	\N	.	KEV	3	sastre1
2274	335	2	si	\N	\N	KEV	3	sastre1
2275	335	3	quieres	\N	\N	KEV	3	sastre1
2276	335	4	.	\N	\N	KEV	999	sastre1
2273	335	1	contéstalo	\N		KEV	3	sastre1
2278	336	2	hablas	\N	\N	KEV	3	sastre1
2279	336	3	un	\N	\N	KEV	3	sastre1
2280	336	4	poco	\N	\N	KEV	3	sastre1
2281	336	5	.	\N	\N	KEV	999	sastre1
2277	336	1	así	\N		KEV	3	sastre1
2283	337	2	.	\N	\N	SOF	999	sastre1
2282	337	1	hello	\N		SOF	2	sastre1
2285	338	2	baby	\N	\N	SOF	2	sastre1
2286	338	3	are	\N	\N	SOF	2	sastre1
2287	338	4	you	\N	\N	SOF	2	sastre1
2288	338	5	back	\N	\N	SOF	2	sastre1
2289	338	6	?	\N	\N	SOF	999	sastre1
2284	338	1	hey	\N		SOF	2	sastre1
2290	339	1	oh	\N	you	SOF	0	sastre1
2291	339	2	but	\N	can	SOF	2	sastre1
2292	339	3	I'm	\N	hear	SOF	2	sastre1
2293	339	4	not	\N	the	SOF	2	sastre1
2294	339	5	home	\N	other	SOF	2	sastre1
2295	339	6	.	\N	person	SOF	999	sastre1
2297	340	2	in	\N	\N	SOF	2	sastre1
2298	340	3	the	\N	\N	SOF	2	sastre1
2299	340	4	.	\N	\N	SOF	999	sastre1
2296	340	1	I'm	\N		SOF	2	sastre1
2301	341	2	haciendo	\N	\N	SOF	3	sastre1
2302	341	3	una	\N	\N	SOF	3	sastre1
2303	341	4	cosa	\N	\N	SOF	3	sastre1
2304	341	5	ahí	\N	\N	SOF	3	sastre1
2305	341	6	que	\N	\N	SOF	3	sastre1
2306	341	7	necesitaba	\N	\N	SOF	3	sastre1
2307	341	8	mi	\N	\N	SOF	3	sastre1
2308	341	9	.	\N	\N	SOF	999	sastre1
2300	341	1	estoy	\N		SOF	3	sastre1
2310	342	2	se	\N	\N	SOF	3	sastre1
2311	342	3	llama	\N	\N	SOF	3	sastre1
2312	342	4	esto	\N	\N	SOF	3	sastre1
2313	342	5	cómo	\N	\N	SOF	3	sastre1
2314	342	6	es	\N	\N	SOF	3	sastre1
2309	342	1	cómo	\N		SOF	3	sastre1
2315	342	7	que	\N	\N	SOF	3	sastre1
2316	342	8	se	\N	\N	SOF	3	sastre1
2317	342	9	llama	\N	\N	SOF	3	sastre1
2318	342	10	esto	\N	\N	SOF	3	sastre1
2319	342	11	que	\N	\N	SOF	3	sastre1
2320	342	12	estamos	\N	\N	SOF	3	sastre1
2321	342	13	haciendo	\N	\N	SOF	3	sastre1
2322	342	14	aquí	\N	\N	SOF	3	sastre1
2323	342	15	un	\N	\N	SOF	3	sastre1
2324	342	16	.	\N	\N	SOF	999	sastre1
2326	343	2	un	\N	\N	KEV	3	sastre1
2327	343	3	estudio	\N	\N	KEV	3	sastre1
2328	343	4	para	\N	\N	KEV	3	sastre1
2329	343	5	la	\N	\N	KEV	3	sastre1
2330	343	6	universidad	\N	\N	KEV	3	sastre1
2331	343	7	.	\N	\N	KEV	999	sastre1
2325	343	1	es	\N		KEV	3	sastre1
2333	344	2	estudio	\N	\N	SOF	3	sastre1
2334	344	3	para	\N	\N	SOF	3	sastre1
2335	344	4	la	\N	\N	SOF	3	sastre1
2336	344	5	universidad	\N	\N	SOF	3	sastre1
2337	344	6	.	\N	\N	SOF	999	sastre1
2332	344	1	un	\N		SOF	3	sastre1
2339	345	2	necesitamos	\N	\N	SOF	3	sastre1
2340	345	3	hablar	\N	\N	SOF	3	sastre1
2341	345	4	por	\N	\N	SOF	3	sastre1
2342	345	5	thirty	\N	\N	SOF	2	sastre1
2343	345	6	minutes	\N	\N	SOF	2	sastre1
2344	345	7	.	\N	\N	SOF	999	sastre1
2338	345	1	y	\N		SOF	3	sastre1
2345	346	1	.	\N		KEV	999	sastre1
2347	347	2	ahorita	\N	\N	SOF	3	sastre1
2348	347	3	estamos	\N	\N	SOF	3	sastre1
2349	347	4	almost	\N	\N	SOF	2	sastre1
2350	347	5	over	\N	\N	SOF	2	sastre1
2351	347	6	.	\N	\N	SOF	999	sastre1
2346	347	1	ya	\N		SOF	3	sastre1
2352	348	1	ok	\N	phone	SOF	0	sastre1
2353	348	2	.	\N	conversation.	SOF	999	sastre1
2355	349	2	se	\N	\N	SOF	3	sastre1
2356	349	3	está	\N	\N	SOF	3	sastre1
2357	349	4	poniendo	\N	\N	SOF	3	sastre1
2358	349	5	dile	\N	\N	SOF	3	sastre1
2359	349	6	.	\N	\N	SOF	999	sastre1
2354	349	1	ah	\N		SOF	0	sastre1
2361	350	2	ya	\N	\N	SOF	3	sastre1
2362	350	3	empezó	\N	\N	SOF	3	sastre1
2363	350	4	los	\N	\N	SOF	3	sastre1
2364	350	5	síntomas	\N	\N	SOF	3	sastre1
2365	350	6	de	\N	\N	SOF	3	sastre1
2366	350	7	.	\N	\N	SOF	999	sastre1
2360	350	1	uhoh	\N		SOF	0	sastre1
2368	351	2	que	\N	\N	SOF	3	sastre1
2369	351	3	cuándo	\N	\N	SOF	3	sastre1
2370	351	4	se	\N	\N	SOF	3	sastre1
2371	351	5	va	\N	\N	SOF	3	sastre1
2372	351	6	a	\N	\N	SOF	3	sastre1
2373	351	7	comprar	\N	\N	SOF	3	sastre1
2374	351	8	la	\N	\N	SOF	3	sastre1
2375	351	9	motocicleta	\N	\N	SOF	3	sastre1
2376	351	10	.	\N	\N	SOF	999	sastre1
2367	351	1	dile	\N		SOF	3	sastre1
2378	352	2	I'll	\N	\N	SOF	2	sastre1
2379	352	3	talk	\N	\N	SOF	2	sastre1
2380	352	4	to	\N	\N	SOF	2	sastre1
2381	352	5	you	\N	\N	SOF	2	sastre1
2382	352	6	bye	\N	\N	SOF	2	sastre1
2383	352	7	.	\N	\N	SOF	999	sastre1
2377	352	1	alright	\N		SOF	2	sastre1
2385	353	2	.	\N	\N	SOF	999	sastre1
2384	353	1	home	\N		SOF	2	sastre1
2387	354	2	.	\N	\N	KEV	999	sastre1
2386	354	1	mmhm	\N		KEV	0	sastre1
2389	355	2	acabó	\N	\N	KEV	3	sastre1
2390	355	3	.	\N	\N	KEV	999	sastre1
2388	355	1	se	\N		KEV	3	sastre1
2392	356	2	finished	\N	\N	SOF	2	sastre1
2393	356	3	playing	\N	\N	SOF	2	sastre1
2394	356	4	golf	\N	\N	SOF	2	sastre1
2395	356	5	now	\N	\N	SOF	2	sastre1
2396	356	6	.	\N	\N	SOF	999	sastre1
2391	356	1	he	\N		SOF	2	sastre1
2398	357	2	are	\N	\N	KEV	2	sastre1
2399	357	3	still	\N	\N	KEV	2	sastre1
2400	357	4	playing	\N	\N	KEV	2	sastre1
2401	357	5	?	\N	\N	KEV	999	sastre1
2397	357	1	they	\N		KEV	2	sastre1
2403	358	2	no	\N	\N	SOF	3	sastre1
2404	358	3	he	\N	\N	SOF	2	sastre1
2405	358	4	is	\N	\N	SOF	2	sastre1
2406	358	5	coming	\N	\N	SOF	2	sastre1
2407	358	6	back	\N	\N	SOF	2	sastre1
2408	358	7	now	\N	\N	SOF	2	sastre1
2409	358	8	.	\N	\N	SOF	999	sastre1
2402	358	1	no	\N		SOF	3	sastre1
2410	359	1	.	\N		KEV	999	sastre1
2412	360	2	don't	\N	\N	SOF	2	sastre1
2413	360	3	think	\N	\N	SOF	2	sastre1
2414	360	4	they	\N	\N	SOF	2	sastre1
2415	360	5	played	\N	\N	SOF	2	sastre1
2416	360	6	all	\N	\N	SOF	2	sastre1
2417	360	7	eighteen	\N	\N	SOF	2	sastre1
2418	360	8	they	\N	\N	SOF	2	sastre1
2419	360	9	played	\N	\N	SOF	2	sastre1
2420	360	10	like	\N	\N	SOF	2	sastre1
2421	360	11	probably	\N	\N	SOF	2	sastre1
2422	360	12	half	\N	\N	SOF	2	sastre1
2423	360	13	.	\N	\N	SOF	999	sastre1
2411	360	1	I	\N		SOF	2	sastre1
2425	361	2	mitad	\N	\N	KEV	3	sastre1
2426	361	3	nueve	\N	\N	KEV	3	sastre1
2427	361	4	.	\N	\N	KEV	999	sastre1
2424	361	1	la	\N		KEV	3	sastre1
2429	362	2	.	\N	\N	KEV	999	sastre1
2428	362	1	mmhm	\N		KEV	0	sastre1
2431	363	2	my	\N	\N	SOF	2	sastre1
2432	363	3	friend	\N	\N	SOF	2	sastre1
2433	363	4	bought	\N	\N	SOF	2	sastre1
2434	363	5	a	\N	\N	SOF	2	sastre1
2435	363	6	B_M_W	\N	\N	SOF	2	sastre1
2436	363	7	and	\N	\N	SOF	2	sastre1
2437	363	8	I	\N	\N	SOF	2	sastre1
2430	363	1	pero	\N		SOF	3	sastre1
2438	363	9	bought	\N	\N	SOF	2	sastre1
2439	363	10	him	\N	\N	SOF	2	sastre1
2440	363	11	a	\N	\N	SOF	2	sastre1
2441	363	12	because	\N	\N	SOF	2	sastre1
2442	363	13	I	\N	\N	SOF	2	sastre1
2443	363	14	have	\N	\N	SOF	2	sastre1
2444	363	15	another	\N	\N	SOF	2	sastre1
2445	363	16	friend	\N	\N	SOF	2	sastre1
2446	363	17	at	\N	\N	SOF	2	sastre1
2447	363	18	work	\N	\N	SOF	2	sastre1
2448	363	19	that	\N	\N	SOF	2	sastre1
2449	363	20	he	\N	\N	SOF	2	sastre1
2450	363	21	is	\N	\N	SOF	2	sastre1
2451	363	22	like	\N	\N	SOF	2	sastre1
2452	363	23	oh	\N	\N	SOF	0	sastre1
2453	363	24	man	\N	\N	SOF	2	sastre1
2454	363	25	he	\N	\N	SOF	2	sastre1
2455	363	26	is	\N	\N	SOF	2	sastre1
2456	363	27	crazy	\N	\N	SOF	2	sastre1
2457	363	28	.	\N	\N	SOF	999	sastre1
2459	364	2	.	\N	\N	KEV	999	sastre1
2458	364	1	sí	\N		KEV	3	sastre1
2461	365	2	.	\N	\N	KEV	999	sastre1
2460	365	1	mmhm	\N		KEV	0	sastre1
2463	366	2	he	\N	\N	SOF	2	sastre1
2464	366	3	is	\N	\N	SOF	2	sastre1
2465	366	4	crazy	\N	\N	SOF	2	sastre1
2466	366	5	crazy	\N	\N	SOF	2	sastre1
2467	366	6	crazy	\N	\N	SOF	2	sastre1
2468	366	7	crazy	\N	\N	SOF	2	sastre1
2469	366	8	.	\N	\N	SOF	999	sastre1
2462	366	1	but	\N		SOF	2	sastre1
2471	367	2	don't	\N	\N	SOF	2	sastre1
2472	367	3	know	\N	\N	SOF	2	sastre1
2473	367	4	how	\N	\N	SOF	2	sastre1
2474	367	5	his	\N	\N	SOF	2	sastre1
2475	367	6	wife	\N	\N	SOF	2	sastre1
2476	367	7	puts	\N	\N	SOF	2	sastre1
2477	367	8	up	\N	\N	SOF	2	sastre1
2478	367	9	with	\N	\N	SOF	2	sastre1
2479	367	10	him	\N	\N	SOF	2	sastre1
2480	367	11	you	\N	\N	SOF	2	sastre1
2481	367	12	know	\N	\N	SOF	2	sastre1
2482	367	13	.	\N	\N	SOF	999	sastre1
2470	367	1	I	\N		SOF	2	sastre1
2483	368	1	.	\N		KEV	999	sastre1
2485	369	2	is	\N	\N	SOF	2	sastre1
2486	369	3	like	\N	\N	SOF	2	sastre1
2487	369	4	one	\N	\N	SOF	2	sastre1
2488	369	5	of	\N	\N	SOF	2	sastre1
2489	369	6	these	\N	\N	SOF	2	sastre1
2490	369	7	wild	\N	\N	SOF	2	sastre1
2491	369	8	guys	\N	\N	SOF	2	sastre1
2492	369	9	.	\N	\N	SOF	999	sastre1
2484	369	1	he	\N		SOF	2	sastre1
2494	370	2	he	\N	\N	SOF	2	sastre1
2495	370	3	loves	\N	\N	SOF	2	sastre1
2496	370	4	every	\N	\N	SOF	2	sastre1
2497	370	5	woman	\N	\N	SOF	2	sastre1
2498	370	6	every	\N	\N	SOF	2	sastre1
2499	370	7	woman	\N	\N	SOF	2	sastre1
2500	370	8	loves	\N	\N	SOF	2	sastre1
2501	370	9	him	\N	\N	SOF	2	sastre1
2502	370	10	.	\N	\N	SOF	999	sastre1
2493	370	1	think	\N		SOF	2	sastre1
2503	371	1	.	\N		KEV	999	sastre1
2505	372	2	he	\N	\N	SOF	2	sastre1
2506	372	3	bought	\N	\N	SOF	2	sastre1
2507	372	4	himself	\N	\N	SOF	2	sastre1
2508	372	5	a	\N	\N	SOF	2	sastre1
2509	372	6	Beamer	\N	\N	SOF	2	sastre1
2510	372	7	.	\N	\N	SOF	999	sastre1
2504	372	1	and	\N		SOF	2	sastre1
2512	373	2	now	\N	\N	SOF	2	sastre1
2513	373	3	he	\N	\N	SOF	2	sastre1
2514	373	4	bought	\N	\N	SOF	2	sastre1
2515	373	5	himself	\N	\N	SOF	2	sastre1
2516	373	6	a	\N	\N	SOF	2	sastre1
2517	373	7	motorcycle	\N	\N	SOF	2	sastre1
2518	373	8	.	\N	\N	SOF	999	sastre1
2511	373	1	and	\N		SOF	2	sastre1
2520	374	2	edad	\N	\N	KEV	3	sastre1
2521	374	3	tiene	\N	\N	KEV	3	sastre1
2522	374	4	cincuenta	\N	\N	KEV	3	sastre1
2523	374	5	?	\N	\N	KEV	999	sastre1
2519	374	1	qué	\N		KEV	3	sastre1
2525	375	2	en	\N	\N	SOF	3	sastre1
2526	375	3	los	\N	\N	SOF	3	sastre1
2527	375	4	cuarenta	\N	\N	SOF	3	sastre1
2528	375	5	y	\N	\N	SOF	3	sastre1
2529	375	6	pico	\N	\N	SOF	3	sastre1
2530	375	7	la	\N	\N	SOF	3	sastre1
2531	375	8	edad	\N	\N	SOF	3	sastre1
2532	375	9	mala	\N	\N	SOF	3	sastre1
2533	375	10	esa	\N	\N	SOF	3	sastre1
2534	375	11	.	\N	\N	SOF	999	sastre1
2524	375	1	está	\N		SOF	3	sastre1
2536	376	2	yeah	\N	\N	KEV	2	sastre1
2537	376	3	.	\N	\N	KEV	999	sastre1
2535	376	1	mmhm	\N		KEV	0	sastre1
2539	377	2	.	\N	\N	KEV	999	sastre1
2538	377	1	mmhm	\N		KEV	0	sastre1
2541	378	2	he	\N	\N	SOF	2	sastre1
2542	378	3	is	\N	\N	SOF	2	sastre1
2543	378	4	a	\N	\N	SOF	2	sastre1
2544	378	5	gigolo	\N	\N	SOF	2	sastre1
2545	378	6	you	\N	\N	SOF	2	sastre1
2546	378	7	know	\N	\N	SOF	2	sastre1
2547	378	8	.	\N	\N	SOF	999	sastre1
2540	378	1	and	\N		SOF	2	sastre1
2549	379	2	is	\N	\N	SOF	2	sastre1
2550	379	3	one	\N	\N	SOF	2	sastre1
2551	379	4	of	\N	\N	SOF	2	sastre1
2552	379	5	these	\N	\N	SOF	2	sastre1
2553	379	6	guys	\N	\N	SOF	2	sastre1
2554	379	7	that's	\N	\N	SOF	2	sastre1
2555	379	8	crazy	\N	\N	SOF	2	sastre1
2556	379	9	.	\N	\N	SOF	999	sastre1
2548	379	1	he	\N		SOF	2	sastre1
2557	380	1	.	\N		KEV	999	sastre1
2559	381	2	an	\N	\N	KEV	2	sastre1
2560	381	3	american	\N	\N	KEV	2	sastre1
2561	381	4	film	\N	\N	KEV	2	sastre1
2558	381	1	saw	\N		KEV	2	sastre1
2562	381	5	.	\N	\N	KEV	999	sastre1
2563	382	1	.	\N		SOF	999	sastre1
2565	383	2	.	\N	\N	SOF	999	sastre1
2564	383	1	yeah	\N		SOF	2	sastre1
2567	384	2	.	\N	\N	KEV	999	sastre1
2566	384	1	sí	\N		KEV	3	sastre1
2569	385	2	is	\N	\N	SOF	2	sastre1
2570	385	3	a	\N	\N	SOF	2	sastre1
2571	385	4	physician	\N	\N	SOF	2	sastre1
2572	385	5	from	\N	\N	SOF	2	sastre1
2573	385	6	Cuba	\N	\N	SOF	2	sastre1
2574	385	7	.	\N	\N	SOF	999	sastre1
2568	385	1	he	\N		SOF	2	sastre1
2576	386	2	he	\N	\N	SOF	2	sastre1
2577	386	3	is	\N	\N	SOF	2	sastre1
2578	386	4	er	\N	\N	SOF	0	sastre1
2579	386	5	working	\N	\N	SOF	2	sastre1
2580	386	6	with	\N	\N	SOF	2	sastre1
2581	386	7	us	\N	\N	SOF	2	sastre1
2582	386	8	over	\N	\N	SOF	2	sastre1
2583	386	9	there	\N	\N	SOF	2	sastre1
2584	386	10	and	\N	\N	SOF	2	sastre1
2585	386	11	as	\N	\N	SOF	2	sastre1
2586	386	12	a	\N	\N	SOF	2	sastre1
2587	386	13	case	\N	\N	SOF	2	sastre1
2588	386	14	manager	\N	\N	SOF	2	sastre1
2589	386	15	.	\N	\N	SOF	999	sastre1
2575	386	1	and	\N		SOF	2	sastre1
2591	387	2	he	\N	\N	SOF	2	sastre1
2592	387	3	is	\N	\N	SOF	2	sastre1
2593	387	4	studying	\N	\N	SOF	2	sastre1
2594	387	5	for	\N	\N	SOF	2	sastre1
2595	387	6	his	\N	\N	SOF	2	sastre1
2596	387	7	R_N	\N	\N	SOF	2	sastre1
2597	387	8	to	\N	\N	SOF	2	sastre1
2598	387	9	see	\N	\N	SOF	2	sastre1
2599	387	10	if	\N	\N	SOF	2	sastre1
2600	387	11	he	\N	\N	SOF	2	sastre1
2601	387	12	can	\N	\N	SOF	2	sastre1
2602	387	13	get	\N	\N	SOF	2	sastre1
2603	387	14	it	\N	\N	SOF	2	sastre1
2604	387	15	now	\N	\N	SOF	2	sastre1
2605	387	16	.	\N	\N	SOF	999	sastre1
2590	387	1	and	\N		SOF	2	sastre1
2607	388	2	.	\N	\N	KEV	999	sastre1
2606	388	1	sí	\N		KEV	3	sastre1
2609	389	2	are	\N	\N	KEV	2	sastre1
2610	389	3	still	\N	\N	KEV	2	sastre1
2611	389	4	at	\N	\N	KEV	2	sastre1
2612	389	5	hospital	\N	\N	KEV	2	sastre1
2613	389	6	right	\N	\N	KEV	2	sastre1
2614	389	7	?	\N	\N	KEV	999	sastre1
2608	389	1	you	\N		KEV	2	sastre1
2616	390	2	.	\N	\N	SOF	999	sastre1
2615	390	1	yeah	\N		SOF	2	sastre1
2618	391	2	.	\N	\N	KEV	999	sastre1
2617	391	1	mmhm	\N		KEV	0	sastre1
2620	392	2	haven't	\N	\N	SOF	2	sastre1
2621	392	3	moved	\N	\N	SOF	2	sastre1
2622	392	4	from	\N	\N	SOF	2	sastre1
2623	392	5	there	\N	\N	SOF	2	sastre1
2624	392	6	because	\N	\N	SOF	2	sastre1
2625	392	7	it's	\N	\N	SOF	2	sastre1
2626	392	8	so	\N	\N	SOF	2	sastre1
2627	392	9	convenient	\N	\N	SOF	2	sastre1
2628	392	10	.	\N	\N	SOF	999	sastre1
2619	392	1	I	\N		SOF	2	sastre1
2630	393	2	you	\N	\N	SOF	2	sastre1
2631	393	3	know	\N	\N	SOF	2	sastre1
2632	393	4	I	\N	\N	SOF	2	sastre1
2633	393	5	other	\N	\N	SOF	2	sastre1
2634	393	6	offers	\N	\N	SOF	2	sastre1
2635	393	7	.	\N	\N	SOF	999	sastre1
2629	393	1	and	\N		SOF	2	sastre1
2637	394	2	.	\N	\N	KEV	999	sastre1
2636	394	1	hmm	\N		KEV	0	sastre1
2639	395	2	don't	\N	\N	SOF	2	sastre1
2640	395	3	wanna	\N	\N	SOF	2	sastre1
2641	395	4	go	\N	\N	SOF	2	sastre1
2642	395	5	in	\N	\N	SOF	2	sastre1
2643	395	6	the	\N	\N	SOF	2	sastre1
2644	395	7	street	\N	\N	SOF	2	sastre1
2645	395	8	any_more	\N	\N	SOF	2	sastre1
2646	395	9	.	\N	\N	SOF	999	sastre1
2638	395	1	but	\N		SOF	2	sastre1
2648	396	2	.	\N	\N	KEV	999	sastre1
2647	396	1	yeah	\N		KEV	2	sastre1
2650	397	2	know	\N	\N	SOF	2	sastre1
2651	397	3	because	\N	\N	SOF	2	sastre1
2652	397	4	with	\N	\N	SOF	2	sastre1
2653	397	5	sales	\N	\N	SOF	2	sastre1
2654	397	6	you	\N	\N	SOF	2	sastre1
2655	397	7	can	\N	\N	SOF	2	sastre1
2656	397	8	do	\N	\N	SOF	2	sastre1
2657	397	9	a	\N	\N	SOF	2	sastre1
2658	397	10	lot	\N	\N	SOF	2	sastre1
2659	397	11	you	\N	\N	SOF	2	sastre1
2660	397	12	can	\N	\N	SOF	2	sastre1
2661	397	13	make	\N	\N	SOF	2	sastre1
2662	397	14	a	\N	\N	SOF	2	sastre1
2663	397	15	lot	\N	\N	SOF	2	sastre1
2664	397	16	more	\N	\N	SOF	2	sastre1
2665	397	17	money	\N	\N	SOF	2	sastre1
2666	397	18	.	\N	\N	SOF	999	sastre1
2649	397	1	you	\N		SOF	2	sastre1
2668	398	2	.	\N	\N	KEV	999	sastre1
2667	398	1	yeah	\N		KEV	2	sastre1
2670	399	2	the	\N	\N	SOF	2	sastre1
2671	399	3	industry	\N	\N	SOF	2	sastre1
2672	399	4	.	\N	\N	SOF	999	sastre1
2669	399	1	in	\N		SOF	2	sastre1
2674	400	2	.	\N	\N	KEV	999	sastre1
2673	400	1	mmhm	\N		KEV	0	sastre1
2676	401	2	it's	\N	\N	SOF	2	sastre1
2677	401	3	just	\N	\N	SOF	2	sastre1
2678	401	4	that	\N	\N	SOF	2	sastre1
2679	401	5	you	\N	\N	SOF	2	sastre1
2680	401	6	have	\N	\N	SOF	2	sastre1
2681	401	7	to	\N	\N	SOF	2	sastre1
2682	401	8	drive	\N	\N	SOF	2	sastre1
2683	401	9	around	\N	\N	SOF	2	sastre1
2684	401	10	so	\N	\N	SOF	2	sastre1
2685	401	11	much	\N	\N	SOF	2	sastre1
2675	401	1	but	\N		SOF	2	sastre1
2686	401	12	.	\N	\N	SOF	999	sastre1
2688	402	2	know	\N	\N	SOF	2	sastre1
2689	402	3	cars	\N	\N	SOF	2	sastre1
2690	402	4	everything	\N	\N	SOF	2	sastre1
2691	402	5	is	\N	\N	SOF	2	sastre1
2692	402	6	so	\N	\N	SOF	2	sastre1
2693	402	7	expensive	\N	\N	SOF	2	sastre1
2694	402	8	.	\N	\N	SOF	999	sastre1
2687	402	1	you	\N		SOF	2	sastre1
2696	403	2	no	\N	\N	KEV	2	sastre1
2697	403	3	y	\N	\N	KEV	3	sastre1
2698	403	4	.	\N	\N	KEV	999	sastre1
2695	403	1	no	\N		KEV	2	sastre1
2700	404	2	.	\N	\N	KEV	999	sastre1
2699	404	1	right	\N		KEV	2	sastre1
2702	405	2	not	\N	\N	KEV	2	sastre1
2703	405	3	worth	\N	\N	KEV	2	sastre1
2704	405	4	it	\N	\N	KEV	2	sastre1
2705	405	5	.	\N	\N	KEV	999	sastre1
2701	405	1	it's	\N		KEV	2	sastre1
2707	406	2	not	\N	\N	KEV	2	sastre1
2708	406	3	worth	\N	\N	KEV	2	sastre1
2709	406	4	it	\N	\N	KEV	2	sastre1
2710	406	5	being	\N	\N	KEV	2	sastre1
2711	406	6	on	\N	\N	KEV	2	sastre1
2712	406	7	the	\N	\N	KEV	2	sastre1
2713	406	8	streets	\N	\N	KEV	2	sastre1
2714	406	9	.	\N	\N	KEV	999	sastre1
2706	406	1	it's	\N		KEV	2	sastre1
2716	407	2	go	\N	\N	SOF	2	sastre1
2717	407	3	there	\N	\N	SOF	2	sastre1
2718	407	4	I	\N	\N	SOF	2	sastre1
2719	407	5	do	\N	\N	SOF	2	sastre1
2720	407	6	my	\N	\N	SOF	2	sastre1
2721	407	7	eight	\N	\N	SOF	2	sastre1
2722	407	8	hours	\N	\N	SOF	2	sastre1
2723	407	9	.	\N	\N	SOF	999	sastre1
2715	407	1	I	\N		SOF	2	sastre1
2725	408	2	I	\N	\N	SOF	2	sastre1
2726	408	3	get	\N	\N	SOF	2	sastre1
2727	408	4	out	\N	\N	SOF	2	sastre1
2728	408	5	and	\N	\N	SOF	2	sastre1
2729	408	6	I	\N	\N	SOF	2	sastre1
2730	408	7	go	\N	\N	SOF	2	sastre1
2731	408	8	pick	\N	\N	SOF	2	sastre1
2732	408	9	up	\N	\N	SOF	2	sastre1
2733	408	10	my	\N	\N	SOF	2	sastre1
2734	408	11	kid	\N	\N	SOF	2	sastre1
2735	408	12	and	\N	\N	SOF	2	sastre1
2736	408	13	that's	\N	\N	SOF	2	sastre1
2737	408	14	it	\N	\N	SOF	2	sastre1
2738	408	15	I'm	\N	\N	SOF	2	sastre1
2739	408	16	home	\N	\N	SOF	2	sastre1
2740	408	17	.	\N	\N	SOF	999	sastre1
2724	408	1	and	\N		SOF	2	sastre1
2742	409	2	.	\N	\N	KEV	999	sastre1
2741	409	1	mmhm	\N		KEV	0	sastre1
2744	410	2	know	\N	\N	SOF	2	sastre1
2745	410	3	.	\N	\N	SOF	999	sastre1
2743	410	1	you	\N		SOF	2	sastre1
2747	411	2	.	\N	\N	KEV	999	sastre1
2746	411	1	mmhm	\N		KEV	0	sastre1
2749	412	2	vale	\N	\N	KEV	3	sastre1
2750	412	3	la	\N	\N	KEV	3	sastre1
2751	412	4	pena	\N	\N	KEV	3	sastre1
2752	412	5	estar	\N	\N	KEV	3	sastre1
2753	412	6	en	\N	\N	KEV	3	sastre1
2754	412	7	la	\N	\N	KEV	3	sastre1
2755	412	8	calle	\N	\N	KEV	3	sastre1
2756	412	9	como	\N	\N	KEV	3	sastre1
2757	412	10	está	\N	\N	KEV	3	sastre1
2758	412	11	la	\N	\N	KEV	3	sastre1
2759	412	12	calle	\N	\N	KEV	3	sastre1
2760	412	13	hoy	\N	\N	KEV	3	sastre1
2761	412	14	.	\N	\N	KEV	999	sastre1
2748	412	1	no	\N		KEV	3	sastre1
2763	413	2	quieran	\N	\N	KEV	3	sastre1
2764	413	3	te	\N	\N	KEV	3	sastre1
2765	413	4	roban	\N	\N	KEV	3	sastre1
2766	413	5	.	\N	\N	KEV	999	sastre1
2762	413	1	donde	\N		KEV	3	sastre1
2768	414	2	.	\N	\N	SOF	999	sastre1
2767	414	1	no	\N		SOF	3	sastre1
2770	415	2	asaltan	\N	\N	SOF	3	sastre1
2771	415	3	te	\N	\N	SOF	3	sastre1
2772	415	4	matan	\N	\N	SOF	3	sastre1
2773	415	5	por	\N	\N	SOF	3	sastre1
2774	415	6	cualquier	\N	\N	SOF	3	sastre1
2775	415	7	cosa	\N	\N	SOF	3	sastre1
2776	415	8	.	\N	\N	SOF	999	sastre1
2769	415	1	te	\N		SOF	3	sastre1
2778	416	2	te	\N	\N	KEV	3	sastre1
2779	416	3	asaltan	\N	\N	KEV	3	sastre1
2780	416	4	exacto	\N	\N	KEV	3	sastre1
2781	416	5	.	\N	\N	KEV	999	sastre1
2777	416	1	er	\N		KEV	0	sastre1
2787	417	6	como	\N	\N	SOF	3	sastre1
2788	417	7	mataron	\N	\N	SOF	3	sastre1
2789	417	8	a	\N	\N	SOF	3	sastre1
2790	417	9	la	\N	\N	SOF	3	sastre1
2791	417	10	gente	\N	\N	SOF	3	sastre1
2792	417	11	esa	\N	\N	SOF	3	sastre1
2793	417	12	ahí	\N	\N	SOF	3	sastre1
2794	417	13	en	\N	\N	SOF	3	sastre1
2795	417	14	el	\N	\N	SOF	3	sastre1
2796	417	15	Chili's	\N	\N	SOF	0	sastre1
2797	417	16	.	\N	\N	SOF	999	sastre1
2782	417	1	mira	\N	Chili's	SOF	3	sastre1
2783	417	2	ahí	\N	is	SOF	3	sastre1
2784	417	3	el	\N	an	SOF	3	sastre1
2785	417	4	tú	\N	American	SOF	3	sastre1
2786	417	5	viste	\N	restaurant.	SOF	3	sastre1
2799	418	2	del	\N	\N	KEV	3	sastre1
2800	418	3	Chili's	\N	\N	KEV	3	sastre1
2801	418	4	sí	\N	\N	KEV	3	sastre1
2802	418	5	.	\N	\N	KEV	999	sastre1
2798	418	1	la	\N		KEV	3	sastre1
2804	419	2	.	\N	\N	KEV	999	sastre1
2803	419	1	sí	\N		KEV	3	sastre1
2806	420	2	la	\N	\N	SOF	3	sastre1
2807	420	3	gente	\N	\N	SOF	3	sastre1
2808	420	4	que	\N	\N	SOF	3	sastre1
2809	420	5	vive	\N	\N	SOF	3	sastre1
2805	420	1	pero	\N		SOF	3	sastre1
2810	420	6	aquí	\N	\N	SOF	3	sastre1
2811	420	7	en	\N	\N	SOF	3	sastre1
2812	420	8	Miami_Lakes	\N	\N	SOF	0	sastre1
2813	420	9	they	\N	\N	SOF	2	sastre1
2814	420	10	get	\N	\N	SOF	2	sastre1
2815	420	11	very	\N	\N	SOF	2	sastre1
2816	420	12	upset	\N	\N	SOF	2	sastre1
2817	420	13	because	\N	\N	SOF	2	sastre1
2818	420	14	of	\N	\N	SOF	2	sastre1
2819	420	15	that	\N	\N	SOF	2	sastre1
2820	420	16	because	\N	\N	SOF	2	sastre1
2821	420	17	they	\N	\N	SOF	2	sastre1
2822	420	18	say	\N	\N	SOF	2	sastre1
2823	420	19	que	\N	\N	SOF	3	sastre1
2824	420	20	Chili's	\N	\N	SOF	0	sastre1
2825	420	21	was	\N	\N	SOF	2	sastre1
2826	420	22	in	\N	\N	SOF	2	sastre1
2827	420	23	Miami_Lakes	\N	\N	SOF	0	sastre1
2828	420	24	.	\N	\N	SOF	999	sastre1
2830	421	2	Chili's	\N	\N	SOF	0	sastre1
2831	421	3	is	\N	\N	SOF	2	sastre1
2832	421	4	not	\N	\N	SOF	2	sastre1
2833	421	5	in	\N	\N	SOF	2	sastre1
2834	421	6	Miami_Lakes	\N	\N	SOF	0	sastre1
2835	421	7	.	\N	\N	SOF	999	sastre1
2829	421	1	and	\N		SOF	2	sastre1
2836	422	1	.	\N		KEV	999	sastre1
2838	423	2	cincuenta	\N	\N	SOF	3	sastre1
2839	423	3	y	\N	\N	SOF	3	sastre1
2840	423	4	siete	\N	\N	SOF	3	sastre1
2841	423	5	no	\N	\N	SOF	3	sastre1
2842	423	6	es	\N	\N	SOF	3	sastre1
2843	423	7	Miami_Lakes	\N	\N	SOF	0	sastre1
2844	423	8	entienden	\N	\N	SOF	3	sastre1
2845	423	9	?	\N	\N	SOF	999	sastre1
2837	423	1	la	\N		SOF	3	sastre1
2847	424	2	not	\N	\N	KEV	2	sastre1
2848	424	3	that's	\N	\N	KEV	2	sastre1
2849	424	4	actually	\N	\N	KEV	2	sastre1
2850	424	5	unincorporated	\N	\N	KEV	2	sastre1
2851	424	6	Dade_County	\N	\N	KEV	0	sastre1
2852	424	7	.	\N	\N	KEV	999	sastre1
2846	424	1	is	\N		KEV	2	sastre1
2854	425	2	Miramar	\N	\N	SOF	0	sastre1
2855	425	3	.	\N	\N	SOF	999	sastre1
2853	425	1	that's	\N		SOF	2	sastre1
2857	426	2	.	\N	\N	KEV	999	sastre1
2856	426	1	that's	\N		KEV	2	sastre1
2859	427	2	no	\N	\N	SOF	2	sastre1
2860	427	3	that's	\N	\N	SOF	2	sastre1
2861	427	4	er	\N	\N	SOF	0	sastre1
2862	427	5	Miami_Gardens	\N	\N	SOF	0	sastre1
2863	427	6	no	\N	\N	SOF	2	sastre1
2864	427	7	?	\N	\N	SOF	999	sastre1
2858	427	1	no	\N		SOF	2	sastre1
2866	428	2	that's	\N	\N	KEV	2	sastre1
2867	428	3	no	\N	\N	KEV	2	sastre1
2868	428	4	that's	\N	\N	KEV	2	sastre1
2869	428	5	incorporated	\N	\N	KEV	2	sastre1
2870	428	6	Dade_County	\N	\N	KEV	0	sastre1
2871	428	7	that's	\N	\N	KEV	2	sastre1
2872	428	8	Dade_County	\N	\N	KEV	0	sastre1
2873	428	9	.	\N	\N	KEV	999	sastre1
2865	428	1	no	\N		KEV	2	sastre1
2875	429	2	what	\N	\N	SOF	2	sastre1
2876	429	3	is	\N	\N	SOF	2	sastre1
2877	429	4	it	\N	\N	SOF	2	sastre1
2878	429	5	called	\N	\N	SOF	2	sastre1
2879	429	6	?	\N	\N	SOF	999	sastre1
2874	429	1	so	\N		SOF	2	sastre1
2881	430	2	unincorporated	\N	\N	KEV	2	sastre1
2882	430	3	Dade_County	\N	\N	KEV	0	sastre1
2883	430	4	.	\N	\N	KEV	999	sastre1
2880	430	1	Dade_County	\N		KEV	0	sastre1
2885	431	2	that's	\N	\N	SOF	2	sastre1
2886	431	3	Dade	\N	\N	SOF	0	sastre1
2887	431	4	.	\N	\N	SOF	999	sastre1
2884	431	1	so	\N		SOF	2	sastre1
2889	432	2	like	\N	\N	KEV	2	sastre1
2890	432	3	what	\N	\N	KEV	2	sastre1
2891	432	4	we	\N	\N	KEV	2	sastre1
2892	432	5	were	\N	\N	KEV	2	sastre1
2893	432	6	before	\N	\N	KEV	2	sastre1
2894	432	7	.	\N	\N	KEV	999	sastre1
2888	432	1	it's	\N		KEV	2	sastre1
2896	433	2	we	\N	\N	KEV	2	sastre1
2897	433	3	became	\N	\N	KEV	2	sastre1
2898	433	4	a	\N	\N	KEV	2	sastre1
2899	433	5	town	\N	\N	KEV	2	sastre1
2900	433	6	.	\N	\N	KEV	999	sastre1
2895	433	1	before	\N		KEV	2	sastre1
2902	434	2	.	\N	\N	SOF	999	sastre1
2901	434	1	yeah	\N		SOF	2	sastre1
2904	435	2	were	\N	\N	KEV	2	sastre1
2905	435	3	unincorporated	\N	\N	KEV	2	sastre1
2906	435	4	Dade_County	\N	\N	KEV	0	sastre1
2907	435	5	.	\N	\N	KEV	999	sastre1
2903	435	1	we	\N		KEV	2	sastre1
2909	436	2	subdivision	\N	\N	KEV	2	sastre1
2910	436	3	was	\N	\N	KEV	2	sastre1
2911	436	4	Miami_Lakes	\N	\N	KEV	0	sastre1
2912	436	5	pero	\N	\N	KEV	3	sastre1
2913	436	6	it	\N	\N	KEV	2	sastre1
2914	436	7	was	\N	\N	KEV	2	sastre1
2915	436	8	unincorporated	\N	\N	KEV	2	sastre1
2916	436	9	Dade_County	\N	\N	KEV	0	sastre1
2917	436	10	.	\N	\N	KEV	999	sastre1
2908	436	1	the	\N		KEV	2	sastre1
2919	437	2	we	\N	\N	KEV	2	sastre1
2920	437	3	became	\N	\N	KEV	2	sastre1
2921	437	4	a	\N	\N	KEV	2	sastre1
2922	437	5	town	\N	\N	KEV	2	sastre1
2923	437	6	.	\N	\N	KEV	999	sastre1
2918	437	1	then	\N		KEV	2	sastre1
2925	438	2	are	\N	\N	KEV	2	sastre1
2926	438	3	not	\N	\N	KEV	2	sastre1
2927	438	4	a	\N	\N	KEV	2	sastre1
2928	438	5	town	\N	\N	KEV	2	sastre1
2929	438	6	they	\N	\N	KEV	2	sastre1
2930	438	7	are	\N	\N	KEV	2	sastre1
2924	438	1	they	\N		KEV	2	sastre1
2931	438	8	not	\N	\N	KEV	2	sastre1
2932	438	9	a	\N	\N	KEV	2	sastre1
2933	438	10	city	\N	\N	KEV	2	sastre1
2934	438	11	.	\N	\N	KEV	999	sastre1
2936	439	2	are	\N	\N	KEV	2	sastre1
2937	439	3	just	\N	\N	KEV	2	sastre1
2938	439	4	unincorporated	\N	\N	KEV	2	sastre1
2939	439	5	Dade_County	\N	\N	KEV	0	sastre1
2940	439	6	.	\N	\N	KEV	999	sastre1
2935	439	1	they	\N		KEV	2	sastre1
2942	440	2	don't	\N	\N	SOF	2	sastre1
2943	440	3	they	\N	\N	SOF	2	sastre1
2944	440	4	call	\N	\N	SOF	2	sastre1
2945	440	5	that	\N	\N	SOF	2	sastre1
2946	440	6	area	\N	\N	SOF	2	sastre1
2947	440	7	a	\N	\N	SOF	2	sastre1
2948	440	8	certain	\N	\N	SOF	2	sastre1
2949	440	9	area	\N	\N	SOF	2	sastre1
2950	440	10	and	\N	\N	SOF	2	sastre1
2951	440	11	they	\N	\N	SOF	2	sastre1
2952	440	12	don't	\N	\N	SOF	2	sastre1
2953	440	13	they	\N	\N	SOF	2	sastre1
2954	440	14	have	\N	\N	SOF	2	sastre1
2955	440	15	a	\N	\N	SOF	2	sastre1
2956	440	16	name	\N	\N	SOF	2	sastre1
2957	440	17	.	\N	\N	SOF	999	sastre1
2941	440	1	but	\N		SOF	2	sastre1
2959	441	2	Carol_City	\N	\N	KEV	0	sastre1
2960	441	3	.	\N	\N	KEV	999	sastre1
2958	441	1	that's	\N		KEV	2	sastre1
2962	442	2	right	\N	\N	SOF	2	sastre1
2963	442	3	?	\N	\N	SOF	999	sastre1
2961	442	1	Carol_City	\N		SOF	0	sastre1
2965	443	2	pero	\N	\N	KEV	3	sastre1
2966	443	3	.	\N	\N	KEV	999	sastre1
2964	443	1	Carol_City	\N		KEV	0	sastre1
2968	444	2	.	\N	\N	SOF	999	sastre1
2967	444	1	ok	\N		SOF	0	sastre1
2970	445	2	is	\N	\N	KEV	2	sastre1
2971	445	3	not	\N	\N	KEV	2	sastre1
2972	445	4	a	\N	\N	KEV	2	sastre1
2973	445	5	city	\N	\N	KEV	2	sastre1
2974	445	6	or	\N	\N	KEV	2	sastre1
2975	445	7	a	\N	\N	KEV	2	sastre1
2976	445	8	town	\N	\N	KEV	2	sastre1
2977	445	9	.	\N	\N	KEV	999	sastre1
2969	445	1	Carol_City	\N		KEV	0	sastre1
2979	446	2	a	\N	\N	KEV	2	sastre1
2980	446	3	subdivision	\N	\N	KEV	2	sastre1
2981	446	4	.	\N	\N	KEV	999	sastre1
2978	446	1	it's	\N		KEV	2	sastre1
2983	447	2	like	\N	\N	SOF	2	sastre1
2984	447	3	we	\N	\N	SOF	2	sastre1
2985	447	4	were	\N	\N	SOF	2	sastre1
2986	447	5	.	\N	\N	SOF	999	sastre1
2982	447	1	ok	\N		SOF	0	sastre1
2988	448	2	Miami	\N	\N	KEV	0	sastre1
2989	448	3	like	\N	\N	KEV	2	sastre1
2990	448	4	we	\N	\N	KEV	2	sastre1
2991	448	5	were	\N	\N	KEV	2	sastre1
2992	448	6	.	\N	\N	KEV	999	sastre1
2987	448	1	como	\N		KEV	3	sastre1
2994	449	2	ok	\N	\N	SOF	0	sastre1
2995	449	3	.	\N	\N	SOF	999	sastre1
2993	449	1	ah	\N		SOF	0	sastre1
2997	450	2	.	\N	\N	KEV	999	sastre1
2996	450	1	right	\N		KEV	2	sastre1
2999	451	2	sabes	\N	\N	KEV	3	sastre1
3000	451	3	.	\N	\N	KEV	999	sastre1
2998	451	1	tú	\N		KEV	3	sastre1
3002	452	2	cuando	\N	\N	KEV	3	sastre1
3003	452	3	se	\N	\N	KEV	3	sastre1
3004	452	4	refiere	\N	\N	KEV	3	sastre1
3005	452	5	.	\N	\N	KEV	999	sastre1
3001	452	1	pero	\N		KEV	3	sastre1
3007	453	2	like	\N	\N	SOF	2	sastre1
3008	453	3	after	\N	\N	SOF	2	sastre1
3009	453	4	that	\N	\N	SOF	2	sastre1
3010	453	5	palmero	\N	\N	SOF	3	sastre1
3011	453	6	.	\N	\N	SOF	999	sastre1
3006	453	1	just	\N		SOF	2	sastre1
3013	454	2	not	\N	\N	SOF	2	sastre1
3014	454	3	Miami_Lakes	\N	\N	SOF	0	sastre1
3015	454	4	.	\N	\N	SOF	999	sastre1
3012	454	1	that's	\N		SOF	2	sastre1
3017	455	2	.	\N	\N	SOF	999	sastre1
3016	455	1	Navarro	\N		SOF	0	sastre1
3019	456	2	los	\N	\N	SOF	3	sastre1
3020	456	3	Burger_Kings	\N	\N	SOF	0	sastre1
3021	456	4	and	\N	\N	SOF	2	sastre1
3022	456	5	McDonalds	\N	\N	SOF	0	sastre1
3023	456	6	todo	\N	\N	SOF	3	sastre1
3024	456	7	eso	\N	\N	SOF	3	sastre1
3025	456	8	para	\N	\N	SOF	3	sastre1
3026	456	9	allá	\N	\N	SOF	3	sastre1
3027	456	10	es	\N	\N	SOF	3	sastre1
3028	456	11	.	\N	\N	SOF	999	sastre1
3018	456	1	er	\N		SOF	0	sastre1
3030	457	2	.	\N	\N	KEV	999	sastre1
3029	457	1	no	\N		KEV	3	sastre1
3032	458	2	Dade_County	\N	\N	KEV	0	sastre1
3033	458	3	.	\N	\N	KEV	999	sastre1
3031	458	1	unincorporated	\N		KEV	2	sastre1
3035	459	2	Miami_Gardens	\N	\N	SOF	0	sastre1
3036	459	3	.	\N	\N	SOF	999	sastre1
3034	459	1	is	\N		SOF	2	sastre1
3038	460	2	no	\N	\N	KEV	3	sastre1
3039	460	3	no	\N	\N	KEV	3	sastre1
3040	460	4	Miami_Gardens	\N	\N	KEV	0	sastre1
3041	460	5	doesn't	\N	\N	KEV	2	sastre1
3042	460	6	come	\N	\N	KEV	2	sastre1
3043	460	7	across	\N	\N	KEV	2	sastre1
3044	460	8	fifty	\N	\N	KEV	2	sastre1
3045	460	9	seventh	\N	\N	KEV	2	sastre1
3046	460	10	avenue	\N	\N	KEV	2	sastre1
3047	460	11	.	\N	\N	KEV	999	sastre1
3037	460	1	no	\N		KEV	3	sastre1
3049	461	2	.	\N	\N	SOF	999	sastre1
3048	461	1	tampoco	\N		SOF	3	sastre1
3051	462	2	sixty	\N	\N	KEV	2	sastre1
3052	462	3	seventh	\N	\N	KEV	2	sastre1
3050	462	1	that's	\N		KEV	2	sastre1
3053	462	4	avenue	\N	\N	KEV	2	sastre1
3054	462	5	.	\N	\N	KEV	999	sastre1
3056	463	2	you	\N	\N	KEV	2	sastre1
3057	463	3	are	\N	\N	KEV	2	sastre1
3058	463	4	gonna	\N	\N	KEV	2	sastre1
3059	463	5	call	\N	\N	KEV	2	sastre1
3060	463	6	that	\N	\N	KEV	2	sastre1
3061	463	7	anything	\N	\N	KEV	2	sastre1
3062	463	8	eso	\N	\N	KEV	3	sastre1
3063	463	9	es	\N	\N	KEV	3	sastre1
3064	463	10	la	\N	\N	KEV	3	sastre1
3065	463	11	zona	\N	\N	KEV	3	sastre1
3066	463	12	de	\N	\N	KEV	3	sastre1
3067	463	13	Palms_Springs_North	\N	\N	KEV	0	sastre1
3068	463	14	.	\N	\N	KEV	999	sastre1
3055	463	1	if	\N		KEV	2	sastre1
3070	464	2	.	\N	\N	SOF	999	sastre1
3069	464	1	ok	\N		SOF	0	sastre1
3072	465	2	es	\N	\N	KEV	3	sastre1
3073	465	3	lo	\N	\N	KEV	3	sastre1
3074	465	4	que	\N	\N	KEV	3	sastre1
3075	465	5	le	\N	\N	KEV	3	sastre1
3076	465	6	llaman	\N	\N	KEV	3	sastre1
3077	465	7	que	\N	\N	KEV	3	sastre1
3078	465	8	no	\N	\N	KEV	3	sastre1
3079	465	9	es	\N	\N	KEV	3	sastre1
3080	465	10	Palms_Springs_North	\N	\N	KEV	0	sastre1
3081	465	11	because	\N	\N	KEV	2	sastre1
3082	465	12	Palms_Springs_North	\N	\N	KEV	0	sastre1
3083	465	13	empieza	\N	\N	KEV	3	sastre1
3084	465	14	en	\N	\N	KEV	3	sastre1
3085	465	15	la	\N	\N	KEV	3	sastre1
3086	465	16	setenta	\N	\N	KEV	3	sastre1
3087	465	17	y	\N	\N	KEV	3	sastre1
3088	465	18	nueve	\N	\N	KEV	3	sastre1
3089	465	19	que	\N	\N	KEV	3	sastre1
3090	465	20	es	\N	\N	KEV	3	sastre1
3091	465	21	el	\N	\N	KEV	3	sastre1
3092	465	22	para	\N	\N	KEV	3	sastre1
3093	465	23	allá	\N	\N	KEV	3	sastre1
3094	465	24	.	\N	\N	KEV	999	sastre1
3071	465	1	eso	\N		KEV	3	sastre1
3096	466	2	que	\N	\N	KEV	3	sastre1
3097	466	3	esto	\N	\N	KEV	3	sastre1
3098	466	4	es	\N	\N	KEV	3	sastre1
3099	466	5	un	\N	\N	KEV	3	sastre1
3100	466	6	pequeño	\N	\N	KEV	3	sastre1
3101	466	7	pocket	\N	\N	KEV	2	sastre1
3102	466	8	que	\N	\N	KEV	3	sastre1
3103	466	9	hay	\N	\N	KEV	3	sastre1
3104	466	10	ahí	\N	\N	KEV	3	sastre1
3105	466	11	.	\N	\N	KEV	999	sastre1
3095	466	1	así	\N		KEV	3	sastre1
3107	467	2	.	\N	\N	SOF	999	sastre1
3106	467	1	que	\N		SOF	3	sastre1
3109	468	2	.	\N	\N	KEV	999	sastre1
3108	468	1	que	\N		KEV	3	sastre1
3111	469	2	entonces	\N	\N	SOF	3	sastre1
3112	469	3	por	\N	\N	SOF	3	sastre1
3113	469	4	eso	\N	\N	SOF	3	sastre1
3114	469	5	le	\N	\N	SOF	3	sastre1
3115	469	6	dicen	\N	\N	SOF	3	sastre1
3116	469	7	Miami_Lakes	\N	\N	SOF	0	sastre1
3117	469	8	.	\N	\N	SOF	999	sastre1
3110	469	1	y	\N		SOF	3	sastre1
3119	470	2	el	\N	\N	KEV	3	sastre1
3120	470	3	pueblo	\N	\N	KEV	3	sastre1
3121	470	4	o	\N	\N	KEV	3	sastre1
3122	470	5	la	\N	\N	KEV	3	sastre1
3123	470	6	ciudad	\N	\N	KEV	3	sastre1
3124	470	7	más	\N	\N	KEV	3	sastre1
3125	470	8	cerca	\N	\N	KEV	3	sastre1
3126	470	9	a	\N	\N	KEV	3	sastre1
3127	470	10	donde	\N	\N	KEV	3	sastre1
3128	470	11	está	\N	\N	KEV	3	sastre1
3129	470	12	le	\N	\N	KEV	3	sastre1
3130	470	13	dicen	\N	\N	KEV	3	sastre1
3131	470	14	Miami_Lakes	\N	\N	KEV	0	sastre1
3132	470	15	.	\N	\N	KEV	999	sastre1
3118	470	1	es	\N		KEV	3	sastre1
3134	471	2	sabes	\N	\N	KEV	3	sastre1
3135	471	3	?	\N	\N	KEV	999	sastre1
3133	471	1	tú	\N		KEV	3	sastre1
3137	472	2	fíjate	\N	\N	SOF	3	sastre1
3138	472	3	una	\N	\N	SOF	3	sastre1
3139	472	4	cosa	\N	\N	SOF	3	sastre1
3140	472	5	.	\N	\N	SOF	999	sastre1
3136	472	1	pero	\N		SOF	3	sastre1
3142	473	2	nosotros	\N	\N	SOF	3	sastre1
3143	473	3	Miami_Lakes	\N	\N	SOF	0	sastre1
3144	473	4	y	\N	\N	SOF	3	sastre1
3145	473	5	siendo	\N	\N	SOF	3	sastre1
3146	473	6	incorporados	\N	\N	SOF	3	sastre1
3147	473	7	tú	\N	\N	SOF	3	sastre1
3148	473	8	pones	\N	\N	SOF	3	sastre1
3149	473	9	.	\N	\N	SOF	999	sastre1
3141	473	1	siendo	\N		SOF	3	sastre1
3151	474	2	three	\N	\N	SOF	2	sastre1
3152	474	3	zero	\N	\N	SOF	2	sastre1
3153	474	4	one	\N	\N	SOF	2	sastre1
3154	474	5	four	\N	\N	SOF	2	sastre1
3155	474	6	y	\N	\N	SOF	3	sastre1
3156	474	7	sigues	\N	\N	SOF	3	sastre1
3157	474	8	saliendo	\N	\N	SOF	3	sastre1
3158	474	9	en	\N	\N	SOF	3	sastre1
3159	474	10	Hyaleah	\N	\N	SOF	2	sastre1
3160	474	11	.	\N	\N	SOF	999	sastre1
3150	474	1	three	\N		SOF	2	sastre1
3162	475	2	a	\N	\N	KEV	3	sastre1
3163	475	3	sales	\N	\N	KEV	3	sastre1
3164	475	4	a	\N	\N	KEV	3	sastre1
3165	475	5	Hyaleah	\N	\N	KEV	2	sastre1
3166	475	6	.	\N	\N	KEV	999	sastre1
3161	475	1	sales	\N		KEV	3	sastre1
3168	476	2	.	\N	\N	KEV	999	sastre1
3167	476	1	yeah	\N		KEV	2	sastre1
3170	477	2	don't	\N	\N	SOF	2	sastre1
3171	477	3	we	\N	\N	SOF	2	sastre1
3172	477	4	get	\N	\N	SOF	2	sastre1
3173	477	5	our	\N	\N	SOF	2	sastre1
3174	477	6	own	\N	\N	SOF	2	sastre1
3175	477	7	zip	\N	\N	SOF	2	sastre1
3169	477	1	why	\N		SOF	2	sastre1
3176	477	8	code	\N	\N	SOF	2	sastre1
3177	477	9	?	\N	\N	SOF	999	sastre1
3179	478	2	are	\N	\N	KEV	2	sastre1
3180	478	3	getting	\N	\N	KEV	2	sastre1
3181	478	4	our	\N	\N	KEV	2	sastre1
3182	478	5	own	\N	\N	KEV	2	sastre1
3183	478	6	zip	\N	\N	KEV	2	sastre1
3184	478	7	code	\N	\N	KEV	2	sastre1
3185	478	8	tres	\N	\N	KEV	3	sastre1
3186	478	9	tres	\N	\N	KEV	3	sastre1
3187	478	10	cero	\N	\N	KEV	3	sastre1
3188	478	11	cuatro	\N	\N	KEV	3	sastre1
3189	478	12	.	\N	\N	KEV	999	sastre1
3178	478	1	we	\N		KEV	2	sastre1
3191	479	2	tres	\N	\N	KEV	3	sastre1
3192	479	3	cero	\N	\N	KEV	3	sastre1
3193	479	4	uno	\N	\N	KEV	3	sastre1
3194	479	5	cuatro	\N	\N	KEV	3	sastre1
3195	479	6	.	\N	\N	KEV	999	sastre1
3190	479	1	tres	\N		KEV	3	sastre1
3197	480	2	porque	\N	\N	SOF	3	sastre1
3198	480	3	tres	\N	\N	SOF	3	sastre1
3199	480	4	tres	\N	\N	SOF	3	sastre1
3200	480	5	uno	\N	\N	SOF	3	sastre1
3201	480	6	cuatro	\N	\N	SOF	3	sastre1
3202	480	7	coge	\N	\N	SOF	3	sastre1
3203	480	8	mitad	\N	\N	SOF	3	sastre1
3204	480	9	de	\N	\N	SOF	3	sastre1
3205	480	10	Hyaleah	\N	\N	SOF	2	sastre1
3206	480	11	entonces	\N	\N	SOF	3	sastre1
3207	480	12	.	\N	\N	SOF	999	sastre1
3196	480	1	no	\N		SOF	3	sastre1
3209	481	2	pero	\N	\N	KEV	3	sastre1
3210	481	3	supuestamente	\N	\N	KEV	3	sastre1
3211	481	4	el	\N	\N	KEV	3	sastre1
3212	481	5	cambio	\N	\N	KEV	3	sastre1
3213	481	6	viene	\N	\N	KEV	3	sastre1
3214	481	7	en	\N	\N	KEV	3	sastre1
3215	481	8	que	\N	\N	KEV	3	sastre1
3216	481	9	er	\N	\N	KEV	0	sastre1
3217	481	10	tres	\N	\N	KEV	3	sastre1
3218	481	11	tres	\N	\N	KEV	3	sastre1
3219	481	12	cero	\N	\N	KEV	3	sastre1
3220	481	13	uno	\N	\N	KEV	3	sastre1
3221	481	14	cuatro	\N	\N	KEV	3	sastre1
3222	481	15	va	\N	\N	KEV	3	sastre1
3223	481	16	a	\N	\N	KEV	3	sastre1
3224	481	17	ser	\N	\N	KEV	3	sastre1
3225	481	18	Miami_Lakes	\N	\N	KEV	0	sastre1
3226	481	19	.	\N	\N	KEV	999	sastre1
3208	481	1	bueno	\N		KEV	3	sastre1
3228	482	2	cuándo	\N	\N	SOF	3	sastre1
3229	482	3	?	\N	\N	SOF	999	sastre1
3227	482	1	y	\N		SOF	3	sastre1
3231	483	2	sé	\N	\N	KEV	3	sastre1
3232	483	3	.	\N	\N	KEV	999	sastre1
3230	483	1	no	\N		KEV	3	sastre1
3234	484	2	eso	\N	\N	KEV	3	sastre1
3235	484	3	lo	\N	\N	KEV	3	sastre1
3236	484	4	dijo	\N	\N	KEV	3	sastre1
3237	484	5	.	\N	\N	KEV	999	sastre1
3233	484	1	pero	\N		KEV	3	sastre1
3239	485	2	I	\N	\N	SOF	2	sastre1
3240	485	3	keep	\N	\N	SOF	2	sastre1
3241	485	4	telling	\N	\N	SOF	2	sastre1
3242	485	5	like	\N	\N	SOF	2	sastre1
3243	485	6	if	\N	\N	SOF	2	sastre1
3244	485	7	you	\N	\N	SOF	2	sastre1
3245	485	8	call	\N	\N	SOF	2	sastre1
3246	485	9	a	\N	\N	SOF	2	sastre1
3247	485	10	credit	\N	\N	SOF	2	sastre1
3248	485	11	card	\N	\N	SOF	2	sastre1
3249	485	12	you	\N	\N	SOF	2	sastre1
3250	485	13	call	\N	\N	SOF	2	sastre1
3251	485	14	somebody	\N	\N	SOF	2	sastre1
3252	485	15	and	\N	\N	SOF	2	sastre1
3253	485	16	you	\N	\N	SOF	2	sastre1
3254	485	17	give	\N	\N	SOF	2	sastre1
3255	485	18	them	\N	\N	SOF	2	sastre1
3256	485	19	an	\N	\N	SOF	2	sastre1
3257	485	20	address	\N	\N	SOF	2	sastre1
3258	485	21	and	\N	\N	SOF	2	sastre1
3259	485	22	you	\N	\N	SOF	2	sastre1
3260	485	23	tell	\N	\N	SOF	2	sastre1
3261	485	24	them	\N	\N	SOF	2	sastre1
3262	485	25	Miami_Lakes	\N	\N	SOF	0	sastre1
3263	485	26	they	\N	\N	SOF	2	sastre1
3264	485	27	are	\N	\N	SOF	2	sastre1
3265	485	28	like	\N	\N	SOF	2	sastre1
3266	485	29	no	\N	\N	SOF	2	sastre1
3267	485	30	madam	\N	\N	SOF	2	sastre1
3268	485	31	and	\N	\N	SOF	2	sastre1
3269	485	32	ok	\N	\N	SOF	0	sastre1
3270	485	33	Hyaleah	\N	\N	SOF	0	sastre1
3271	485	34	.	\N	\N	SOF	999	sastre1
3238	485	1	because	\N		SOF	2	sastre1
3273	486	2	mmhm	\N	\N	KEV	0	sastre1
3274	486	3	.	\N	\N	KEV	999	sastre1
3272	486	1	er	\N		KEV	0	sastre1
3276	487	2	.	\N	\N	KEV	999	sastre1
3275	487	1	right	\N		KEV	2	sastre1
3278	488	2	if	\N	\N	SOF	2	sastre1
3279	488	3	not	\N	\N	SOF	2	sastre1
3280	488	4	they	\N	\N	SOF	2	sastre1
3281	488	5	don't	\N	\N	SOF	2	sastre1
3282	488	6	know	\N	\N	SOF	2	sastre1
3283	488	7	where	\N	\N	SOF	2	sastre1
3284	488	8	to	\N	\N	SOF	2	sastre1
3285	488	9	put	\N	\N	SOF	2	sastre1
3286	488	10	you	\N	\N	SOF	2	sastre1
3287	488	11	know	\N	\N	SOF	2	sastre1
3288	488	12	they	\N	\N	SOF	2	sastre1
3289	488	13	don't	\N	\N	SOF	2	sastre1
3290	488	14	know	\N	\N	SOF	2	sastre1
3291	488	15	where	\N	\N	SOF	2	sastre1
3277	488	1	because	\N		SOF	2	sastre1
3292	488	16	to	\N	\N	SOF	2	sastre1
3293	488	17	send	\N	\N	SOF	2	sastre1
3294	488	18	you	\N	\N	SOF	2	sastre1
3295	488	19	the	\N	\N	SOF	2	sastre1
3296	488	20	stuff	\N	\N	SOF	2	sastre1
3297	488	21	.	\N	\N	SOF	999	sastre1
3299	489	2	.	\N	\N	KEV	999	sastre1
3298	489	1	sí	\N		KEV	3	sastre1
3301	490	2	pero	\N	\N	KEV	3	sastre1
3302	490	3	fíjate	\N	\N	KEV	3	sastre1
3303	490	4	eso	\N	\N	KEV	3	sastre1
3304	490	5	no	\N	\N	KEV	3	sastre1
3305	490	6	es	\N	\N	KEV	3	sastre1
3306	490	7	una	\N	\N	KEV	3	sastre1
3307	490	8	cosa	\N	\N	KEV	3	sastre1
3308	490	9	que	\N	\N	KEV	3	sastre1
3309	490	10	tiene	\N	\N	KEV	3	sastre1
3310	490	11	que	\N	\N	KEV	3	sastre1
3311	490	12	hacer	\N	\N	KEV	3	sastre1
3312	490	13	el	\N	\N	KEV	3	sastre1
3313	490	14	town	\N	\N	KEV	2	sastre1
3314	490	15	of	\N	\N	KEV	2	sastre1
3315	490	16	Miami_Lakes	\N	\N	KEV	0	sastre1
3316	490	17	.	\N	\N	KEV	999	sastre1
3300	490	1	sí	\N		KEV	3	sastre1
3318	491	2	es	\N	\N	KEV	3	sastre1
3319	491	3	una	\N	\N	KEV	3	sastre1
3320	491	4	cosa	\N	\N	KEV	3	sastre1
3321	491	5	que	\N	\N	KEV	3	sastre1
3322	491	6	la	\N	\N	KEV	3	sastre1
3323	491	7	tiene	\N	\N	KEV	3	sastre1
3324	491	8	que	\N	\N	KEV	3	sastre1
3325	491	9	hacer	\N	\N	KEV	3	sastre1
3326	491	10	el	\N	\N	KEV	3	sastre1
3327	491	11	gobierno	\N	\N	KEV	3	sastre1
3328	491	12	federal	\N	\N	KEV	3	sastre1
3329	491	13	en	\N	\N	KEV	3	sastre1
3330	491	14	la	\N	\N	KEV	3	sastre1
3331	491	15	parte	\N	\N	KEV	3	sastre1
3332	491	16	del	\N	\N	KEV	3	sastre1
3333	491	17	post	\N	\N	KEV	2	sastre1
3334	491	18	del	\N	\N	KEV	3	sastre1
3335	491	19	correo	\N	\N	KEV	3	sastre1
3336	491	20	.	\N	\N	KEV	999	sastre1
3317	491	1	eso	\N		KEV	3	sastre1
3338	492	2	.	\N	\N	SOF	999	sastre1
3337	492	1	mmhm	\N		SOF	0	sastre1
3340	493	2	son	\N	\N	KEV	3	sastre1
3341	493	3	los	\N	\N	KEV	3	sastre1
3342	493	4	que	\N	\N	KEV	3	sastre1
3343	493	5	tienen	\N	\N	KEV	3	sastre1
3344	493	6	que	\N	\N	KEV	3	sastre1
3345	493	7	hacer	\N	\N	KEV	3	sastre1
3346	493	8	esos	\N	\N	KEV	3	sastre1
3347	493	9	cambios	\N	\N	KEV	3	sastre1
3348	493	10	.	\N	\N	KEV	999	sastre1
3339	493	1	ellos	\N		KEV	3	sastre1
3350	494	2	supuestamente	\N	\N	KEV	3	sastre1
3351	494	3	they	\N	\N	KEV	2	sastre1
3352	494	4	are	\N	\N	KEV	2	sastre1
3353	494	5	in	\N	\N	KEV	2	sastre1
3354	494	6	the	\N	\N	KEV	2	sastre1
3355	494	7	process	\N	\N	KEV	2	sastre1
3356	494	8	de	\N	\N	KEV	3	sastre1
3357	494	9	hacer	\N	\N	KEV	3	sastre1
3358	494	10	ese	\N	\N	KEV	3	sastre1
3359	494	11	cambio	\N	\N	KEV	3	sastre1
3360	494	12	.	\N	\N	KEV	999	sastre1
3349	494	1	y	\N		KEV	3	sastre1
3362	495	2	cambiar	\N	\N	KEV	3	sastre1
3363	495	3	del	\N	\N	KEV	3	sastre1
3364	495	4	correo	\N	\N	KEV	3	sastre1
3365	495	5	de	\N	\N	KEV	3	sastre1
3366	495	6	que	\N	\N	KEV	3	sastre1
3367	495	7	tres	\N	\N	KEV	3	sastre1
3368	495	8	tres	\N	\N	KEV	3	sastre1
3369	495	9	cero	\N	\N	KEV	3	sastre1
3370	495	10	uno	\N	\N	KEV	3	sastre1
3371	495	11	cuatro	\N	\N	KEV	3	sastre1
3372	495	12	va	\N	\N	KEV	3	sastre1
3373	495	13	a	\N	\N	KEV	3	sastre1
3374	495	14	ser	\N	\N	KEV	3	sastre1
3375	495	15	solamente	\N	\N	KEV	3	sastre1
3376	495	16	Miami_Lakes	\N	\N	KEV	0	sastre1
3377	495	17	todo	\N	\N	KEV	3	sastre1
3378	495	18	lo	\N	\N	KEV	3	sastre1
3379	495	19	que	\N	\N	KEV	3	sastre1
3380	495	20	es	\N	\N	KEV	3	sastre1
3381	495	21	Miami_Lakes	\N	\N	KEV	0	sastre1
3382	495	22	lo	\N	\N	KEV	3	sastre1
3383	495	23	que	\N	\N	KEV	3	sastre1
3384	495	24	está	\N	\N	KEV	3	sastre1
3385	495	25	dentro	\N	\N	KEV	3	sastre1
3386	495	26	de	\N	\N	KEV	3	sastre1
3387	495	27	el	\N	\N	KEV	3	sastre1
3388	495	28	town	\N	\N	KEV	2	sastre1
3389	495	29	de	\N	\N	KEV	3	sastre1
3390	495	30	Miami_Lakes	\N	\N	KEV	0	sastre1
3391	495	31	que	\N	\N	KEV	3	sastre1
3392	495	32	incluye	\N	\N	KEV	3	sastre1
3393	495	33	del	\N	\N	KEV	3	sastre1
3394	495	34	lado	\N	\N	KEV	3	sastre1
3395	495	35	de	\N	\N	KEV	3	sastre1
3396	495	36	allá	\N	\N	KEV	3	sastre1
3397	495	37	pal	\N	\N	KEV	3	sastre1
3398	495	38	metro	\N	\N	KEV	3	sastre1
3399	495	39	Royal_Oaks	\N	\N	KEV	0	sastre1
3400	495	40	ahora	\N	\N	KEV	3	sastre1
3401	495	41	es	\N	\N	KEV	3	sastre1
3402	495	42	Miami_Lakes	\N	\N	KEV	0	sastre1
3403	495	43	.	\N	\N	KEV	999	sastre1
3361	495	1	de	\N		KEV	3	sastre1
3405	496	2	.	\N	\N	SOF	999	sastre1
3404	496	1	ok	\N		SOF	0	sastre1
3407	497	2	.	\N	\N	SOF	999	sastre1
3406	497	1	right	\N		SOF	2	sastre1
3409	498	2	eso	\N	\N	KEV	3	sastre1
3410	498	3	ahora	\N	\N	KEV	3	sastre1
3411	498	4	no	\N	\N	KEV	3	sastre1
3412	498	5	es	\N	\N	KEV	3	sastre1
3413	498	6	tres	\N	\N	KEV	3	sastre1
3414	498	7	tres	\N	\N	KEV	3	sastre1
3415	498	8	cero	\N	\N	KEV	3	sastre1
3408	498	1	y	\N		KEV	3	sastre1
3416	498	9	uno	\N	\N	KEV	3	sastre1
3417	498	10	cuatro	\N	\N	KEV	3	sastre1
3418	498	11	eso	\N	\N	KEV	3	sastre1
3419	498	12	es	\N	\N	KEV	3	sastre1
3420	498	13	tres	\N	\N	KEV	3	sastre1
3421	498	14	tres	\N	\N	KEV	3	sastre1
3422	498	15	uno	\N	\N	KEV	3	sastre1
3423	498	16	cero	\N	\N	KEV	3	sastre1
3424	498	17	cinco	\N	\N	KEV	3	sastre1
3425	498	18	uno	\N	\N	KEV	3	sastre1
3426	498	19	quince	\N	\N	KEV	3	sastre1
3427	498	20	.	\N	\N	KEV	999	sastre1
3429	499	2	.	\N	\N	SOF	999	sastre1
3428	499	1	correcto	\N		SOF	3	sastre1
3431	500	2	otro	\N	\N	KEV	3	sastre1
3432	500	3	zip	\N	\N	KEV	2	sastre1
3433	500	4	code	\N	\N	KEV	2	sastre1
3434	500	5	.	\N	\N	KEV	999	sastre1
3430	500	1	es	\N		KEV	3	sastre1
3436	501	2	ese	\N	\N	KEV	3	sastre1
3437	501	3	zip	\N	\N	KEV	2	sastre1
3438	501	4	code	\N	\N	KEV	2	sastre1
3439	501	5	lo	\N	\N	KEV	3	sastre1
3440	501	6	van	\N	\N	KEV	3	sastre1
3441	501	7	a	\N	\N	KEV	3	sastre1
3442	501	8	cambiar	\N	\N	KEV	3	sastre1
3443	501	9	también	\N	\N	KEV	3	sastre1
3444	501	10	a	\N	\N	KEV	3	sastre1
3445	501	11	que	\N	\N	KEV	3	sastre1
3446	501	12	sea	\N	\N	KEV	3	sastre1
3447	501	13	tres	\N	\N	KEV	3	sastre1
3448	501	14	tres	\N	\N	KEV	3	sastre1
3449	501	15	cero	\N	\N	KEV	3	sastre1
3450	501	16	uno	\N	\N	KEV	3	sastre1
3451	501	17	cuatro	\N	\N	KEV	3	sastre1
3452	501	18	porque	\N	\N	KEV	3	sastre1
3453	501	19	va	\N	\N	KEV	3	sastre1
3454	501	20	a	\N	\N	KEV	3	sastre1
3455	501	21	ser	\N	\N	KEV	3	sastre1
3456	501	22	Miami	\N	\N	KEV	0	sastre1
3457	501	23	lo	\N	\N	KEV	3	sastre1
3458	501	24	que	\N	\N	KEV	3	sastre1
3459	501	25	está	\N	\N	KEV	3	sastre1
3460	501	26	dentro	\N	\N	KEV	3	sastre1
3461	501	27	de	\N	\N	KEV	3	sastre1
3462	501	28	la	\N	\N	KEV	3	sastre1
3463	501	29	ciudad	\N	\N	KEV	3	sastre1
3464	501	30	de	\N	\N	KEV	3	sastre1
3465	501	31	Miami_Lakes	\N	\N	KEV	0	sastre1
3466	501	32	.	\N	\N	KEV	999	sastre1
3435	501	1	entonces	\N		KEV	3	sastre1
3467	502	1	.	\N		KEV	999	sastre1
3469	503	2	fue	\N	\N	KEV	3	sastre1
3470	503	3	lo	\N	\N	KEV	3	sastre1
3471	503	4	que	\N	\N	KEV	3	sastre1
3472	503	5	yo	\N	\N	KEV	3	sastre1
3473	503	6	oí	\N	\N	KEV	3	sastre1
3474	503	7	y	\N	\N	KEV	3	sastre1
3475	503	8	lo	\N	\N	KEV	3	sastre1
3476	503	9	que	\N	\N	KEV	3	sastre1
3477	503	10	dijeron	\N	\N	KEV	3	sastre1
3478	503	11	.	\N	\N	KEV	999	sastre1
3468	503	1	eso	\N		KEV	3	sastre1
3480	504	2	lo	\N	\N	KEV	3	sastre1
3481	504	3	hacen	\N	\N	KEV	3	sastre1
3482	504	4	o	\N	\N	KEV	3	sastre1
3483	504	5	no	\N	\N	KEV	3	sastre1
3484	504	6	lo	\N	\N	KEV	3	sastre1
3485	504	7	hacen	\N	\N	KEV	3	sastre1
3486	504	8	.	\N	\N	KEV	999	sastre1
3479	504	1	si	\N		KEV	3	sastre1
3488	505	2	va	\N	\N	SOF	3	sastre1
3489	505	3	a	\N	\N	SOF	3	sastre1
3490	505	4	ser	\N	\N	SOF	3	sastre1
3491	505	5	tremendo	\N	\N	SOF	3	sastre1
3492	505	6	rollo	\N	\N	SOF	3	sastre1
3493	505	7	para	\N	\N	SOF	3	sastre1
3494	505	8	la	\N	\N	SOF	3	sastre1
3495	505	9	gente	\N	\N	SOF	3	sastre1
3496	505	10	.	\N	\N	SOF	999	sastre1
3487	505	1	pero	\N		SOF	3	sastre1
3498	506	2	.	\N	\N	KEV	999	sastre1
3497	506	1	sí	\N		KEV	3	sastre1
3499	507	1	.	\N		SOF	999	sastre1
3501	508	2	pero	\N	\N	KEV	3	sastre1
3502	508	3	bueno	\N	\N	KEV	3	sastre1
3503	508	4	.	\N	\N	KEV	999	sastre1
3500	508	1	er	\N		KEV	0	sastre1
3505	509	2	me	\N	\N	SOF	3	sastre1
3506	509	3	llegaron	\N	\N	SOF	3	sastre1
3507	509	4	las	\N	\N	SOF	3	sastre1
3508	509	5	planillas	\N	\N	SOF	3	sastre1
3509	509	6	para	\N	\N	SOF	3	sastre1
3510	509	7	el	\N	\N	SOF	3	sastre1
3511	509	8	W	\N	\N	SOF	0	sastre1
3512	509	9	ten	\N	\N	SOF	2	sastre1
3513	509	10	forty	\N	\N	SOF	2	sastre1
3514	509	11	.	\N	\N	SOF	999	sastre1
3504	509	1	hoy	\N		SOF	3	sastre1
3516	510	2	es	\N	\N	SOF	3	sastre1
3517	510	3	la	\N	\N	SOF	3	sastre1
3518	510	4	ten	\N	\N	SOF	2	sastre1
3519	510	5	forty	\N	\N	SOF	2	sastre1
3520	510	6	.	\N	\N	SOF	999	sastre1
3515	510	1	sabes	\N		SOF	3	sastre1
3521	511	1	.	\N		KEV	999	sastre1
3523	512	2	que	\N	\N	SOF	3	sastre1
3524	512	3	tienen	\N	\N	SOF	3	sastre1
3525	512	4	que	\N	\N	SOF	3	sastre1
3526	512	5	hacer	\N	\N	SOF	3	sastre1
3527	512	6	ahora	\N	\N	SOF	3	sastre1
3528	512	7	los	\N	\N	SOF	3	sastre1
3529	512	8	viejitos	\N	\N	SOF	3	sastre1
3530	512	9	que	\N	\N	SOF	3	sastre1
3531	512	10	están	\N	\N	SOF	3	sastre1
3532	512	11	retirados	\N	\N	SOF	3	sastre1
3533	512	12	.	\N	\N	SOF	999	sastre1
3522	512	1	la	\N		SOF	3	sastre1
3535	513	2	sí	\N	\N	KEV	3	sastre1
3536	513	3	.	\N	\N	KEV	999	sastre1
3534	513	1	ah	\N		KEV	0	sastre1
3538	514	2	que	\N	\N	SOF	3	sastre1
3539	514	3	sepan	\N	\N	SOF	3	sastre1
3537	514	1	para	\N		SOF	3	sastre1
3540	514	4	.	\N	\N	SOF	999	sastre1
3542	515	2	.	\N	\N	KEV	999	sastre1
3541	515	1	sí	\N		KEV	3	sastre1
3544	516	2	que	\N	\N	SOF	3	sastre1
3545	516	3	puedan	\N	\N	SOF	3	sastre1
3546	516	4	entonces	\N	\N	SOF	3	sastre1
3547	516	5	mandarles	\N	\N	SOF	3	sastre1
3548	516	6	los	\N	\N	SOF	3	sastre1
3549	516	7	trescientos	\N	\N	SOF	3	sastre1
3550	516	8	dólares	\N	\N	SOF	3	sastre1
3551	516	9	.	\N	\N	SOF	999	sastre1
3543	516	1	para	\N		SOF	3	sastre1
3553	517	2	que	\N	\N	KEV	3	sastre1
3554	517	3	le	\N	\N	KEV	3	sastre1
3555	517	4	den	\N	\N	KEV	3	sastre1
3556	517	5	los	\N	\N	KEV	3	sastre1
3557	517	6	quinientos	\N	\N	KEV	3	sastre1
3558	517	7	pesos	\N	\N	KEV	3	sastre1
3559	517	8	sí	\N	\N	KEV	3	sastre1
3560	517	9	.	\N	\N	KEV	999	sastre1
3552	517	1	para	\N		KEV	3	sastre1
3562	518	2	son	\N	\N	KEV	3	sastre1
3563	518	3	las	\N	\N	KEV	3	sastre1
3564	518	4	ten	\N	\N	KEV	2	sastre1
3565	518	5	forty	\N	\N	KEV	2	sastre1
3566	518	6	or	\N	\N	KEV	2	sastre1
3567	518	7	ten	\N	\N	KEV	2	sastre1
3568	518	8	ninety	\N	\N	KEV	2	sastre1
3569	518	9	nine	\N	\N	KEV	2	sastre1
3570	518	10	?	\N	\N	KEV	999	sastre1
3561	518	1	sí	\N		KEV	3	sastre1
3572	519	2	forty	\N	\N	SOF	2	sastre1
3573	519	3	.	\N	\N	SOF	999	sastre1
3571	519	1	ten	\N		SOF	2	sastre1
3575	520	2	la	\N	\N	SOF	3	sastre1
3576	520	3	tengo	\N	\N	SOF	3	sastre1
3577	520	4	ahí	\N	\N	SOF	3	sastre1
3578	520	5	en	\N	\N	SOF	3	sastre1
3579	520	6	la	\N	\N	SOF	3	sastre1
3580	520	7	casa	\N	\N	SOF	3	sastre1
3581	520	8	.	\N	\N	SOF	999	sastre1
3574	520	1	yo	\N		SOF	3	sastre1
3583	521	2	.	\N	\N	KEV	999	sastre1
3582	521	1	mmhm	\N		KEV	0	sastre1
3585	522	2	a	\N	\N	KEV	3	sastre1
3586	522	3	mi	\N	\N	KEV	3	sastre1
3587	522	4	hermano	\N	\N	KEV	3	sastre1
3588	522	5	se	\N	\N	KEV	3	sastre1
3589	522	6	lo	\N	\N	KEV	3	sastre1
3590	522	7	hizo	\N	\N	KEV	3	sastre1
3591	522	8	mi	\N	\N	KEV	3	sastre1
3592	522	9	padre	\N	\N	KEV	3	sastre1
3593	522	10	.	\N	\N	KEV	999	sastre1
3584	522	1	ya	\N		KEV	3	sastre1
3595	523	2	se	\N	\N	SOF	3	sastre1
3596	523	3	lo	\N	\N	SOF	3	sastre1
3597	523	4	hicieron	\N	\N	SOF	3	sastre1
3598	523	5	?	\N	\N	SOF	999	sastre1
3594	523	1	ya	\N		SOF	3	sastre1
3600	524	2	porque	\N	\N	KEV	3	sastre1
3601	524	3	ellos	\N	\N	KEV	3	sastre1
3602	524	4	normalmente	\N	\N	KEV	3	sastre1
3603	524	5	no	\N	\N	KEV	3	sastre1
3604	524	6	hacen	\N	\N	KEV	3	sastre1
3605	524	7	income	\N	\N	KEV	2	sastre1
3606	524	8	taxes	\N	\N	KEV	2	sastre1
3607	524	9	porque	\N	\N	KEV	3	sastre1
3608	524	10	están	\N	\N	KEV	3	sastre1
3609	524	11	retirados	\N	\N	KEV	3	sastre1
3610	524	12	.	\N	\N	KEV	999	sastre1
3599	524	1	sí	\N		KEV	3	sastre1
3612	525	2	tiene	\N	\N	SOF	3	sastre1
3613	525	3	que	\N	\N	SOF	3	sastre1
3614	525	4	.	\N	\N	SOF	999	sastre1
3611	525	1	porque	\N		SOF	3	sastre1
3616	526	2	pero	\N	\N	SOF	3	sastre1
3617	526	3	arriba	\N	\N	SOF	3	sastre1
3618	526	4	hay	\N	\N	SOF	3	sastre1
3619	526	5	que	\N	\N	SOF	3	sastre1
3620	526	6	ponerle	\N	\N	SOF	3	sastre1
3621	526	7	un	\N	\N	SOF	3	sastre1
3622	526	8	nombre	\N	\N	SOF	3	sastre1
3623	526	9	.	\N	\N	SOF	999	sastre1
3615	526	1	correcto	\N		SOF	3	sastre1
3625	527	2	.	\N	\N	KEV	999	sastre1
3624	527	1	mmhm	\N		KEV	0	sastre1
3627	528	2	.	\N	\N	KEV	999	sastre1
3626	528	1	sí	\N		KEV	3	sastre1
3629	529	2	que	\N	\N	SOF	3	sastre1
3630	529	3	ponerle	\N	\N	SOF	3	sastre1
3631	529	4	algo	\N	\N	SOF	3	sastre1
3632	529	5	arriba	\N	\N	SOF	3	sastre1
3633	529	6	de	\N	\N	SOF	3	sastre1
3634	529	7	la	\N	\N	SOF	3	sastre1
3635	529	8	planilla	\N	\N	SOF	3	sastre1
3636	529	9	para	\N	\N	SOF	3	sastre1
3637	529	10	que	\N	\N	SOF	3	sastre1
3638	529	11	sepan	\N	\N	SOF	3	sastre1
3639	529	12	que	\N	\N	SOF	3	sastre1
3640	529	13	es	\N	\N	SOF	3	sastre1
3641	529	14	para	\N	\N	SOF	3	sastre1
3642	529	15	eso	\N	\N	SOF	3	sastre1
3643	529	16	.	\N	\N	SOF	999	sastre1
3628	529	1	tienes	\N		SOF	3	sastre1
3645	530	2	.	\N	\N	KEV	999	sastre1
3644	530	1	exacto	\N		KEV	3	sastre1
3647	531	2	se	\N	\N	SOF	3	sastre1
3648	531	3	lo	\N	\N	SOF	3	sastre1
3649	531	4	hizo	\N	\N	SOF	3	sastre1
3650	531	5	?	\N	\N	SOF	999	sastre1
3646	531	1	ya	\N		SOF	3	sastre1
3652	532	2	ella	\N	\N	KEV	3	sastre1
3653	532	3	se	\N	\N	KEV	3	sastre1
3654	532	4	lo	\N	\N	KEV	3	sastre1
3655	532	5	está	\N	\N	KEV	3	sastre1
3656	532	6	haciendo	\N	\N	KEV	3	sastre1
3657	532	7	ese	\N	\N	KEV	3	sastre1
3658	532	8	es	\N	\N	KEV	3	sastre1
3659	532	9	el	\N	\N	KEV	3	sastre1
3660	532	10	campo	\N	\N	KEV	3	sastre1
3661	532	11	de	\N	\N	KEV	3	sastre1
3662	532	12	ella	\N	\N	KEV	3	sastre1
3651	532	1	mmhm	\N		KEV	0	sastre1
3663	532	13	.	\N	\N	KEV	999	sastre1
3665	533	2	ok	\N	\N	SOF	0	sastre1
3666	533	3	.	\N	\N	SOF	999	sastre1
3664	533	1	oh	\N		SOF	0	sastre1
3668	534	2	es	\N	\N	KEV	3	sastre1
3669	534	3	an	\N	\N	KEV	2	sastre1
3670	534	4	accountant	\N	\N	KEV	2	sastre1
3671	534	5	.	\N	\N	KEV	999	sastre1
3667	534	1	ella	\N		KEV	3	sastre1
3673	535	2	ella	\N	\N	KEV	3	sastre1
3674	535	3	es	\N	\N	KEV	3	sastre1
3675	535	4	la	\N	\N	KEV	3	sastre1
3676	535	5	que	\N	\N	KEV	3	sastre1
3677	535	6	le	\N	\N	KEV	3	sastre1
3678	535	7	hace	\N	\N	KEV	3	sastre1
3679	535	8	.	\N	\N	KEV	999	sastre1
3672	535	1	y	\N		KEV	3	sastre1
3681	536	2	porque	\N	\N	SOF	3	sastre1
3682	536	3	yo	\N	\N	SOF	3	sastre1
3683	536	4	te	\N	\N	SOF	3	sastre1
3684	536	5	dije	\N	\N	SOF	3	sastre1
3685	536	6	porque	\N	\N	SOF	3	sastre1
3686	536	7	como	\N	\N	SOF	3	sastre1
3687	536	8	la	\N	\N	SOF	3	sastre1
3688	536	9	prima	\N	\N	SOF	3	sastre1
3689	536	10	de	\N	\N	SOF	3	sastre1
3690	536	11	Manuel	\N	\N	SOF	0	sastre1
3691	536	12	trabaja	\N	\N	SOF	3	sastre1
3692	536	13	para	\N	\N	SOF	3	sastre1
3693	536	14	el	\N	\N	SOF	3	sastre1
3694	536	15	I_R_S	\N	\N	SOF	2	sastre1
3695	536	16	.	\N	\N	SOF	999	sastre1
3680	536	1	no	\N		SOF	3	sastre1
3697	537	2	nos	\N	\N	SOF	3	sastre1
3698	537	3	mandó	\N	\N	SOF	3	sastre1
3699	537	4	las	\N	\N	SOF	3	sastre1
3700	537	5	planillas	\N	\N	SOF	3	sastre1
3701	537	6	y	\N	\N	SOF	3	sastre1
3702	537	7	nos	\N	\N	SOF	3	sastre1
3703	537	8	mandó	\N	\N	SOF	3	sastre1
3704	537	9	las	\N	\N	SOF	3	sastre1
3705	537	10	copias	\N	\N	SOF	3	sastre1
3706	537	11	de	\N	\N	SOF	3	sastre1
3707	537	12	cómo	\N	\N	SOF	3	sastre1
3708	537	13	llenárselo	\N	\N	SOF	3	sastre1
3709	537	14	.	\N	\N	SOF	999	sastre1
3696	537	1	ella	\N		SOF	3	sastre1
3711	538	2	yo	\N	\N	SOF	3	sastre1
3712	538	3	tengo	\N	\N	SOF	3	sastre1
3713	538	4	las	\N	\N	SOF	3	sastre1
3714	538	5	dos	\N	\N	SOF	3	sastre1
3715	538	6	viejitas	\N	\N	SOF	3	sastre1
3716	538	7	mías	\N	\N	SOF	3	sastre1
3717	538	8	que	\N	\N	SOF	3	sastre1
3718	538	9	ya	\N	\N	SOF	3	sastre1
3719	538	10	ellas	\N	\N	SOF	3	sastre1
3720	538	11	no	\N	\N	SOF	3	sastre1
3721	538	12	hacen	\N	\N	SOF	3	sastre1
3722	538	13	.	\N	\N	SOF	999	sastre1
3710	538	1	porque	\N		SOF	3	sastre1
3724	539	2	acaso	\N	\N	KEV	3	sastre1
3725	539	3	hazme	\N	\N	KEV	3	sastre1
3726	539	4	cuando	\N	\N	KEV	3	sastre1
3727	539	5	tengas	\N	\N	KEV	3	sastre1
3728	539	6	un	\N	\N	KEV	3	sastre1
3729	539	7	chance	\N	\N	KEV	2	sastre1
3730	539	8	hazme	\N	\N	KEV	3	sastre1
3731	539	9	una	\N	\N	KEV	3	sastre1
3732	539	10	copia	\N	\N	KEV	3	sastre1
3733	539	11	.	\N	\N	KEV	999	sastre1
3723	539	1	si	\N		KEV	3	sastre1
3735	540	2	cómo	\N	\N	KEV	3	sastre1
3736	540	3	se	\N	\N	KEV	3	sastre1
3737	540	4	llena	\N	\N	KEV	3	sastre1
3738	540	5	.	\N	\N	KEV	999	sastre1
3734	540	1	de	\N		KEV	3	sastre1
3740	541	2	tengo	\N	\N	SOF	3	sastre1
3741	541	3	ahí	\N	\N	SOF	3	sastre1
3742	541	4	ella	\N	\N	SOF	3	sastre1
3743	541	5	me	\N	\N	SOF	3	sastre1
3744	541	6	él	\N	\N	SOF	3	sastre1
3745	541	7	él	\N	\N	SOF	3	sastre1
3746	541	8	me	\N	\N	SOF	3	sastre1
3747	541	9	dio	\N	\N	SOF	3	sastre1
3748	541	10	una	\N	\N	SOF	3	sastre1
3749	541	11	copia	\N	\N	SOF	3	sastre1
3750	541	12	que	\N	\N	SOF	3	sastre1
3751	541	13	ahora	\N	\N	SOF	3	sastre1
3752	541	14	yo	\N	\N	SOF	3	sastre1
3753	541	15	tengo	\N	\N	SOF	3	sastre1
3754	541	16	que	\N	\N	SOF	3	sastre1
3755	541	17	hacérsela	\N	\N	SOF	3	sastre1
3756	541	18	pero	\N	\N	SOF	3	sastre1
3757	541	19	yo	\N	\N	SOF	3	sastre1
3758	541	20	te	\N	\N	SOF	3	sastre1
3759	541	21	la	\N	\N	SOF	3	sastre1
3760	541	22	voy	\N	\N	SOF	3	sastre1
3761	541	23	a	\N	\N	SOF	3	sastre1
3762	541	24	hacer	\N	\N	SOF	3	sastre1
3763	541	25	una	\N	\N	SOF	3	sastre1
3764	541	26	copia	\N	\N	SOF	3	sastre1
3765	541	27	esa	\N	\N	SOF	3	sastre1
3766	541	28	.	\N	\N	SOF	999	sastre1
3739	541	1	yo	\N		SOF	3	sastre1
3767	542	1	.	\N		KEV	999	sastre1
3769	543	2	exacto	\N	\N	KEV	3	sastre1
3770	543	3	.	\N	\N	KEV	999	sastre1
3768	543	1	esa	\N		KEV	3	sastre1
3772	544	2	.	\N	\N	SOF	999	sastre1
3771	544	1	ok	\N		SOF	0	sastre1
3774	545	2	te	\N	\N	SOF	3	sastre1
3775	545	3	la	\N	\N	SOF	3	sastre1
3776	545	4	hago	\N	\N	SOF	3	sastre1
3777	545	5	mañana	\N	\N	SOF	3	sastre1
3778	545	6	en	\N	\N	SOF	3	sastre1
3779	545	7	el	\N	\N	SOF	3	sastre1
3780	545	8	trabajo	\N	\N	SOF	3	sastre1
3781	545	9	.	\N	\N	SOF	999	sastre1
3773	545	1	yo	\N		SOF	3	sastre1
3783	546	2	yo	\N	\N	KEV	3	sastre1
3784	546	3	sé	\N	\N	KEV	3	sastre1
3785	546	4	que	\N	\N	KEV	3	sastre1
3786	546	5	le	\N	\N	KEV	3	sastre1
3782	546	1	porque	\N		KEV	3	sastre1
3787	546	6	hace	\N	\N	KEV	3	sastre1
3788	546	7	.	\N	\N	KEV	999	sastre1
3790	547	2	yo	\N	\N	SOF	3	sastre1
3791	547	3	sé	\N	\N	SOF	3	sastre1
3792	547	4	que	\N	\N	SOF	3	sastre1
3793	547	5	hay	\N	\N	SOF	3	sastre1
3794	547	6	que	\N	\N	SOF	3	sastre1
3795	547	7	ponerle	\N	\N	SOF	3	sastre1
3796	547	8	algo	\N	\N	SOF	3	sastre1
3797	547	9	arriba	\N	\N	SOF	3	sastre1
3798	547	10	en	\N	\N	SOF	3	sastre1
3799	547	11	la	\N	\N	SOF	3	sastre1
3800	547	12	planilla	\N	\N	SOF	3	sastre1
3801	547	13	.	\N	\N	SOF	999	sastre1
3789	547	1	pero	\N		SOF	3	sastre1
3803	548	2	que	\N	\N	KEV	3	sastre1
3804	548	3	es	\N	\N	KEV	3	sastre1
3805	548	4	retirado	\N	\N	KEV	3	sastre1
3806	548	5	o	\N	\N	KEV	3	sastre1
3807	548	6	algo	\N	\N	KEV	3	sastre1
3808	548	7	de	\N	\N	KEV	3	sastre1
3809	548	8	eso	\N	\N	KEV	3	sastre1
3810	548	9	.	\N	\N	KEV	999	sastre1
3802	548	1	de	\N		KEV	3	sastre1
3812	549	2	un	\N	\N	SOF	3	sastre1
3813	549	3	nombre	\N	\N	SOF	3	sastre1
3814	549	4	ahora	\N	\N	SOF	3	sastre1
3815	549	5	se	\N	\N	SOF	3	sastre1
3816	549	6	me	\N	\N	SOF	3	sastre1
3817	549	7	olvidó	\N	\N	SOF	3	sastre1
3818	549	8	pero	\N	\N	SOF	3	sastre1
3819	549	9	tienes	\N	\N	SOF	3	sastre1
3820	549	10	que	\N	\N	SOF	3	sastre1
3821	549	11	ponerle	\N	\N	SOF	3	sastre1
3822	549	12	eso	\N	\N	SOF	3	sastre1
3823	549	13	arriba	\N	\N	SOF	3	sastre1
3824	549	14	porque	\N	\N	SOF	3	sastre1
3825	549	15	si	\N	\N	SOF	3	sastre1
3826	549	16	no	\N	\N	SOF	3	sastre1
3827	549	17	.	\N	\N	SOF	999	sastre1
3811	549	1	tiene	\N		SOF	3	sastre1
3829	550	2	.	\N	\N	KEV	999	sastre1
3828	550	1	sí	\N		KEV	3	sastre1
3831	551	2	igual	\N	\N	KEV	3	sastre1
3832	551	3	que	\N	\N	KEV	3	sastre1
3833	551	4	cuando	\N	\N	KEV	3	sastre1
3834	551	5	uno	\N	\N	KEV	3	sastre1
3835	551	6	manda	\N	\N	KEV	3	sastre1
3836	551	7	los	\N	\N	KEV	3	sastre1
3837	551	8	cheques	\N	\N	KEV	3	sastre1
3838	551	9	al	\N	\N	KEV	3	sastre1
3839	551	10	I_R_S	\N	\N	KEV	2	sastre1
3840	551	11	.	\N	\N	KEV	999	sastre1
3830	551	1	es	\N		KEV	3	sastre1
3842	552	2	.	\N	\N	SOF	999	sastre1
3841	552	1	mmhm	\N		SOF	0	sastre1
3844	553	2	que	\N	\N	KEV	3	sastre1
3845	553	3	poner	\N	\N	KEV	3	sastre1
3846	553	4	el	\N	\N	KEV	3	sastre1
3847	553	5	ten	\N	\N	KEV	2	sastre1
3848	553	6	ninety	\N	\N	KEV	2	sastre1
3849	553	7	nine	\N	\N	KEV	2	sastre1
3850	553	8	con	\N	\N	KEV	3	sastre1
3851	553	9	el	\N	\N	KEV	3	sastre1
3852	553	10	número	\N	\N	KEV	3	sastre1
3853	553	11	de	\N	\N	KEV	3	sastre1
3854	553	12	social	\N	\N	KEV	2	sastre1
3855	553	13	security	\N	\N	KEV	2	sastre1
3856	553	14	y	\N	\N	KEV	3	sastre1
3857	553	15	toda	\N	\N	KEV	3	sastre1
3858	553	16	esa	\N	\N	KEV	3	sastre1
3859	553	17	cosa	\N	\N	KEV	3	sastre1
3860	553	18	.	\N	\N	KEV	999	sastre1
3843	553	1	hay	\N		KEV	3	sastre1
3862	554	2	si	\N	\N	KEV	3	sastre1
3863	554	3	no	\N	\N	KEV	3	sastre1
3864	554	4	no	\N	\N	KEV	3	sastre1
3865	554	5	lo	\N	\N	KEV	3	sastre1
3866	554	6	aceptan	\N	\N	KEV	3	sastre1
3867	554	7	no	\N	\N	KEV	3	sastre1
3868	554	8	no	\N	\N	KEV	3	sastre1
3869	554	9	es	\N	\N	KEV	3	sastre1
3870	554	10	que	\N	\N	KEV	3	sastre1
3871	554	11	no	\N	\N	KEV	3	sastre1
3872	554	12	lo	\N	\N	KEV	3	sastre1
3873	554	13	acepten	\N	\N	KEV	3	sastre1
3874	554	14	si	\N	\N	KEV	3	sastre1
3875	554	15	no	\N	\N	KEV	3	sastre1
3876	554	16	no	\N	\N	KEV	3	sastre1
3877	554	17	te	\N	\N	KEV	3	sastre1
3878	554	18	lo	\N	\N	KEV	3	sastre1
3879	554	19	acreditan	\N	\N	KEV	3	sastre1
3880	554	20	los	\N	\N	KEV	3	sastre1
3881	554	21	tienen	\N	\N	KEV	3	sastre1
3882	554	22	que	\N	\N	KEV	3	sastre1
3883	554	23	acreditar	\N	\N	KEV	3	sastre1
3884	554	24	.	\N	\N	KEV	999	sastre1
3861	554	1	que	\N		KEV	3	sastre1
3886	555	2	tienen	\N	\N	SOF	3	sastre1
3887	555	3	que	\N	\N	SOF	3	sastre1
3888	555	4	acreditarlo	\N	\N	SOF	3	sastre1
3889	555	5	.	\N	\N	SOF	999	sastre1
3885	555	1	adonde	\N		SOF	3	sastre1
3891	556	2	.	\N	\N	KEV	999	sastre1
3890	556	1	mmhm	\N		KEV	0	sastre1
3893	557	2	creo	\N	\N	KEV	3	sastre1
3894	557	3	que	\N	\N	KEV	3	sastre1
3895	557	4	falta	\N	\N	KEV	3	sastre1
3896	557	5	poco	\N	\N	KEV	3	sastre1
3897	557	6	para	\N	\N	KEV	3	sastre1
3898	557	7	que	\N	\N	KEV	3	sastre1
3899	557	8	se	\N	\N	KEV	3	sastre1
3900	557	9	acaben	\N	\N	KEV	3	sastre1
3901	557	10	los	\N	\N	KEV	3	sastre1
3902	557	11	treinta	\N	\N	KEV	3	sastre1
3903	557	12	minutos	\N	\N	KEV	3	sastre1
3904	557	13	no	\N	\N	KEV	3	sastre1
3905	557	14	?	\N	\N	KEV	999	sastre1
3892	557	1	ya	\N		KEV	3	sastre1
3907	558	2	yo	\N	\N	SOF	3	sastre1
3908	558	3	no	\N	\N	SOF	3	sastre1
3909	558	4	sé	\N	\N	SOF	3	sastre1
3910	558	5	llevamos	\N	\N	SOF	3	sastre1
3906	558	1	bueno	\N		SOF	3	sastre1
3911	558	6	hablando	\N	\N	SOF	3	sastre1
3912	558	7	tiempo	\N	\N	SOF	3	sastre1
3913	558	8	.	\N	\N	SOF	999	sastre1
3915	559	2	sé	\N	\N	KEV	3	sastre1
3916	559	3	casi	\N	\N	KEV	3	sastre1
3917	559	4	casi	\N	\N	KEV	3	sastre1
3918	559	5	la	\N	\N	KEV	3	sastre1
3919	559	6	media	\N	\N	KEV	3	sastre1
3920	559	7	hora	\N	\N	KEV	3	sastre1
3921	559	8	ya	\N	\N	KEV	3	sastre1
3922	559	9	.	\N	\N	KEV	999	sastre1
3914	559	1	no	\N		KEV	3	sastre1
3924	560	2	.	\N	\N	KEV	999	sastre1
3923	560	1	mmhm	\N		KEV	0	sastre1
3926	561	2	ya	\N	\N	SOF	3	sastre1
3927	561	3	se	\N	\N	SOF	3	sastre1
3928	561	4	está	\N	\N	SOF	3	sastre1
3929	561	5	haciendo	\N	\N	SOF	3	sastre1
3930	561	6	de	\N	\N	SOF	3	sastre1
3931	561	7	noche	\N	\N	SOF	3	sastre1
3932	561	8	ya	\N	\N	SOF	3	sastre1
3933	561	9	mañana	\N	\N	SOF	3	sastre1
3934	561	10	hay	\N	\N	SOF	3	sastre1
3935	561	11	que	\N	\N	SOF	3	sastre1
3936	561	12	ir	\N	\N	SOF	3	sastre1
3937	561	13	a	\N	\N	SOF	3	sastre1
3938	561	14	trabajar	\N	\N	SOF	3	sastre1
3939	561	15	.	\N	\N	SOF	999	sastre1
3925	561	1	y	\N		SOF	3	sastre1
3941	562	2	sí	\N	\N	KEV	3	sastre1
3942	562	3	.	\N	\N	KEV	999	sastre1
3940	562	1	mmhm	\N		KEV	0	sastre1
3944	563	2	que	\N	\N	KEV	3	sastre1
3945	563	3	cocinar	\N	\N	KEV	3	sastre1
3946	563	4	.	\N	\N	KEV	999	sastre1
3943	563	1	hay	\N		KEV	3	sastre1
3948	564	2	yo	\N	\N	SOF	3	sastre1
3949	564	3	ya	\N	\N	SOF	3	sastre1
3950	564	4	cociné	\N	\N	SOF	3	sastre1
3951	564	5	.	\N	\N	SOF	999	sastre1
3947	564	1	no	\N		SOF	3	sastre1
3953	565	2	cocinaste	\N	\N	KEV	3	sastre1
3954	565	3	nosotros	\N	\N	KEV	3	sastre1
3955	565	4	comimos	\N	\N	KEV	3	sastre1
3956	565	5	nosotros	\N	\N	KEV	3	sastre1
3957	565	6	fuimos	\N	\N	KEV	3	sastre1
3958	565	7	a	\N	\N	KEV	3	sastre1
3959	565	8	Bass	\N	\N	KEV	2	sastre1
3960	565	9	Pro	\N	\N	KEV	2	sastre1
3961	565	10	shop	\N	\N	KEV	2	sastre1
3962	565	11	.	\N	\N	KEV	999	sastre1
3952	565	1	ya	\N		KEV	3	sastre1
3964	566	2	.	\N	\N	SOF	999	sastre1
3963	566	1	sí	\N		SOF	3	sastre1
3966	567	2	?	\N	\N	SOF	999	sastre1
3965	567	1	where	\N		SOF	2	sastre1
3968	568	2	Pro	\N	\N	KEV	2	sastre1
3969	568	3	shop	\N	\N	KEV	2	sastre1
3970	568	4	.	\N	\N	KEV	999	sastre1
3967	568	1	Bass	\N		KEV	2	sastre1
3972	569	2	ok	\N	\N	SOF	0	sastre1
3973	569	3	.	\N	\N	SOF	999	sastre1
3971	569	1	ah	\N		SOF	0	sastre1
3975	570	2	en	\N	\N	KEV	3	sastre1
3976	570	3	Grifeny	\N	\N	KEV	0	sastre1
3977	570	4	ninety	\N	\N	KEV	2	sastre1
3978	570	5	five	\N	\N	KEV	2	sastre1
3979	570	6	.	\N	\N	KEV	999	sastre1
3974	570	1	allá	\N		KEV	3	sastre1
3981	571	2	que	\N	\N	KEV	3	sastre1
3982	571	3	es	\N	\N	KEV	3	sastre1
3983	571	4	cuestión	\N	\N	KEV	3	sastre1
3984	571	5	de	\N	\N	KEV	3	sastre1
3985	571	6	casería	\N	\N	KEV	3	sastre1
3986	571	7	y	\N	\N	KEV	3	sastre1
3987	571	8	toda	\N	\N	KEV	3	sastre1
3988	571	9	esa	\N	\N	KEV	3	sastre1
3989	571	10	cosa	\N	\N	KEV	3	sastre1
3990	571	11	.	\N	\N	KEV	999	sastre1
3980	571	1	eso	\N		KEV	3	sastre1
3992	572	2	yo	\N	\N	SOF	3	sastre1
3993	572	3	he	\N	\N	SOF	3	sastre1
3994	572	4	estado	\N	\N	SOF	3	sastre1
3995	572	5	ahí	\N	\N	SOF	3	sastre1
3996	572	6	sí	\N	\N	SOF	3	sastre1
3997	572	7	.	\N	\N	SOF	999	sastre1
3991	572	1	uhhuh	\N		SOF	0	sastre1
3999	573	2	cuando	\N	\N	KEV	3	sastre1
4000	573	3	salimos	\N	\N	KEV	3	sastre1
4001	573	4	y	\N	\N	KEV	3	sastre1
4002	573	5	fuimos	\N	\N	KEV	3	sastre1
4003	573	6	a	\N	\N	KEV	3	sastre1
4004	573	7	county	\N	\N	KEV	2	sastre1
4005	573	8	a	\N	\N	KEV	3	sastre1
4006	573	9	ver	\N	\N	KEV	3	sastre1
4007	573	10	los	\N	\N	KEV	3	sastre1
4008	573	11	campers	\N	\N	KEV	0	sastre1
4009	573	12	.	\N	\N	KEV	999	sastre1
3998	573	1	y	\N		KEV	3	sastre1
4011	574	2	.	\N	\N	SOF	999	sastre1
4010	574	1	mmhm	\N		SOF	0	sastre1
4013	575	2	andamos	\N	\N	KEV	3	sastre1
4014	575	3	para	\N	\N	KEV	3	sastre1
4015	575	4	el	\N	\N	KEV	3	sastre1
4016	575	5	futuro	\N	\N	KEV	3	sastre1
4017	575	6	buscando	\N	\N	KEV	3	sastre1
4018	575	7	uno	\N	\N	KEV	3	sastre1
4019	575	8	más	\N	\N	KEV	3	sastre1
4020	575	9	grande	\N	\N	KEV	3	sastre1
4021	575	10	.	\N	\N	KEV	999	sastre1
4012	575	1	porque	\N		KEV	3	sastre1
4023	576	2	de	\N	\N	KEV	3	sastre1
4024	576	3	ahí	\N	\N	KEV	3	sastre1
4025	576	4	salimos	\N	\N	KEV	3	sastre1
4026	576	5	.	\N	\N	KEV	999	sastre1
4022	576	1	y	\N		KEV	3	sastre1
4028	577	2	nos	\N	\N	KEV	3	sastre1
4029	577	3	metimos	\N	\N	KEV	3	sastre1
4030	577	4	un	\N	\N	KEV	3	sastre1
4031	577	5	barbecue	\N	\N	KEV	2	sastre1
4032	577	6	place	\N	\N	KEV	2	sastre1
4033	577	7	que	\N	\N	KEV	3	sastre1
4034	577	8	hay	\N	\N	KEV	3	sastre1
4035	577	9	er	\N	\N	KEV	0	sastre1
4036	577	10	university	\N	\N	KEV	2	sastre1
4037	577	11	and	\N	\N	KEV	2	sastre1
4038	577	12	Pince	\N	\N	KEV	0	sastre1
4039	577	13	boulevard	\N	\N	KEV	2	sastre1
4040	577	14	.	\N	\N	KEV	999	sastre1
4027	577	1	y	\N		KEV	3	sastre1
4042	578	2	.	\N	\N	SOF	999	sastre1
4041	578	1	ok	\N		SOF	0	sastre1
4044	579	2	know	\N	\N	SOF	2	sastre1
4045	579	3	where	\N	\N	SOF	2	sastre1
4046	579	4	that	\N	\N	SOF	2	sastre1
4047	579	5	is	\N	\N	SOF	2	sastre1
4048	579	6	.	\N	\N	SOF	999	sastre1
4043	579	1	I	\N		SOF	2	sastre1
4050	580	2	traen	\N	\N	KEV	3	sastre1
4051	580	3	una	\N	\N	KEV	3	sastre1
4052	580	4	cosita	\N	\N	KEV	3	sastre1
4053	580	5	chiquitica	\N	\N	KEV	3	sastre1
4054	580	6	.	\N	\N	KEV	999	sastre1
4049	580	1	allá	\N		KEV	3	sastre1
4056	581	2	cocinan	\N	\N	KEV	3	sastre1
4057	581	3	tan	\N	\N	KEV	3	sastre1
4058	581	4	rico	\N	\N	KEV	3	sastre1
4059	581	5	.	\N	\N	KEV	999	sastre1
4055	581	1	pero	\N		KEV	3	sastre1
4061	582	2	.	\N	\N	SOF	999	sastre1
4060	582	1	yeah	\N		SOF	2	sastre1
4063	583	2	yeah	\N	\N	KEV	2	sastre1
4064	583	3	.	\N	\N	KEV	999	sastre1
4062	583	1	yeah	\N		KEV	2	sastre1
4066	584	2	ribs	\N	\N	SOF	2	sastre1
4067	584	3	and	\N	\N	SOF	2	sastre1
4068	584	4	chicken	\N	\N	SOF	2	sastre1
4069	584	5	and	\N	\N	SOF	2	sastre1
4070	584	6	all	\N	\N	SOF	2	sastre1
4071	584	7	.	\N	\N	SOF	999	sastre1
4065	584	1	what	\N		SOF	2	sastre1
4073	585	2	yeah	\N	\N	KEV	2	sastre1
4074	585	3	the	\N	\N	KEV	2	sastre1
4075	585	4	whole	\N	\N	KEV	2	sastre1
4076	585	5	barbecue	\N	\N	KEV	2	sastre1
4077	585	6	smoked	\N	\N	KEV	2	sastre1
4078	585	7	barbecue	\N	\N	KEV	2	sastre1
4079	585	8	so	\N	\N	KEV	2	sastre1
4080	585	9	.	\N	\N	KEV	999	sastre1
4072	585	1	yeah	\N		KEV	2	sastre1
4082	586	2	.	\N	\N	SOF	999	sastre1
4081	586	1	yeah	\N		SOF	2	sastre1
4084	587	2	delicious	\N	\N	KEV	2	sastre1
4085	587	3	.	\N	\N	KEV	999	sastre1
4083	587	1	it's	\N		KEV	2	sastre1
4087	588	2	that's	\N	\N	SOF	2	sastre1
4088	588	3	good	\N	\N	SOF	2	sastre1
4089	588	4	.	\N	\N	SOF	999	sastre1
4086	588	1	oh	\N		SOF	0	sastre1
4091	589	2	we	\N	\N	KEV	2	sastre1
4092	589	3	were	\N	\N	KEV	2	sastre1
4093	589	4	there	\N	\N	KEV	2	sastre1
4094	589	5	and	\N	\N	KEV	2	sastre1
4095	589	6	Pepita	\N	\N	KEV	0	sastre1
4096	589	7	asked	\N	\N	KEV	2	sastre1
4097	589	8	er	\N	\N	KEV	0	sastre1
4098	589	9	we	\N	\N	KEV	2	sastre1
4099	589	10	asked	\N	\N	KEV	2	sastre1
4100	589	11	her	\N	\N	KEV	2	sastre1
4101	589	12	what	\N	\N	KEV	2	sastre1
4102	589	13	she	\N	\N	KEV	2	sastre1
4103	589	14	wanted	\N	\N	KEV	2	sastre1
4104	589	15	for	\N	\N	KEV	2	sastre1
4105	589	16	dinner	\N	\N	KEV	2	sastre1
4106	589	17	.	\N	\N	KEV	999	sastre1
4090	589	1	y	\N		KEV	3	sastre1
4108	590	2	said	\N	\N	KEV	2	sastre1
4109	590	3	well	\N	\N	KEV	2	sastre1
4110	590	4	bring	\N	\N	KEV	2	sastre1
4111	590	5	me	\N	\N	KEV	2	sastre1
4112	590	6	some	\N	\N	KEV	2	sastre1
4113	590	7	ribs	\N	\N	KEV	2	sastre1
4114	590	8	.	\N	\N	KEV	999	sastre1
4107	590	1	she	\N		KEV	2	sastre1
4116	591	2	we	\N	\N	KEV	2	sastre1
4117	591	3	brought	\N	\N	KEV	2	sastre1
4118	591	4	her	\N	\N	KEV	2	sastre1
4119	591	5	some	\N	\N	KEV	2	sastre1
4120	591	6	ribs	\N	\N	KEV	2	sastre1
4121	591	7	so	\N	\N	KEV	2	sastre1
4122	591	8	.	\N	\N	KEV	999	sastre1
4115	591	1	so	\N		KEV	2	sastre1
4124	592	2	funny	\N	\N	SOF	2	sastre1
4125	592	3	.	\N	\N	SOF	999	sastre1
4123	592	1	that's	\N		SOF	2	sastre1
4127	593	2	said	\N	\N	KEV	2	sastre1
4128	593	3	I'll	\N	\N	KEV	2	sastre1
4129	593	4	have	\N	\N	KEV	2	sastre1
4130	593	5	them	\N	\N	KEV	2	sastre1
4131	593	6	for	\N	\N	KEV	2	sastre1
4132	593	7	dinner	\N	\N	KEV	2	sastre1
4133	593	8	.	\N	\N	KEV	999	sastre1
4126	593	1	she	\N		KEV	2	sastre1
4135	594	2	got	\N	\N	KEV	2	sastre1
4136	594	3	here	\N	\N	KEV	2	sastre1
4137	594	4	she	\N	\N	KEV	2	sastre1
4138	594	5	ate	\N	\N	KEV	2	sastre1
4139	594	6	them	\N	\N	KEV	2	sastre1
4140	594	7	.	\N	\N	KEV	999	sastre1
4134	594	1	so	\N		KEV	2	sastre1
4142	595	2	I	\N	\N	KEV	2	sastre1
4143	595	3	said	\N	\N	KEV	2	sastre1
4144	595	4	I	\N	\N	KEV	2	sastre1
4145	595	5	thought	\N	\N	KEV	2	sastre1
4146	595	6	you	\N	\N	KEV	2	sastre1
4147	595	7	were	\N	\N	KEV	2	sastre1
4148	595	8	gonna	\N	\N	KEV	2	sastre1
4149	595	9	wait	\N	\N	KEV	2	sastre1
4150	595	10	for	\N	\N	KEV	2	sastre1
4151	595	11	dinner	\N	\N	KEV	2	sastre1
4152	595	12	.	\N	\N	KEV	999	sastre1
4141	595	1	and	\N		KEV	2	sastre1
4154	596	2	dice	\N	\N	KEV	3	sastre1
4155	596	3	no	\N	\N	KEV	2	sastre1
4156	596	4	no	\N	\N	KEV	2	sastre1
4157	596	5	I'm	\N	\N	KEV	2	sastre1
4153	596	1	me	\N		KEV	3	sastre1
4158	596	6	hungry	\N	\N	KEV	2	sastre1
4159	596	7	I'm	\N	\N	KEV	2	sastre1
4160	596	8	gonna	\N	\N	KEV	2	sastre1
4161	596	9	eat	\N	\N	KEV	2	sastre1
4162	596	10	now	\N	\N	KEV	2	sastre1
4163	596	11	.	\N	\N	KEV	999	sastre1
4165	597	2	she	\N	\N	KEV	2	sastre1
4166	597	3	ate	\N	\N	KEV	2	sastre1
4167	597	4	so	\N	\N	KEV	2	sastre1
4168	597	5	.	\N	\N	KEV	999	sastre1
4164	597	1	so	\N		KEV	2	sastre1
4170	598	2	hoy	\N	\N	KEV	3	sastre1
4171	598	3	Pepa	\N	\N	KEV	0	sastre1
4172	598	4	no	\N	\N	KEV	3	sastre1
4173	598	5	tenía	\N	\N	KEV	3	sastre1
4174	598	6	que	\N	\N	KEV	3	sastre1
4175	598	7	cocinar	\N	\N	KEV	3	sastre1
4176	598	8	.	\N	\N	KEV	999	sastre1
4169	598	1	ya	\N		KEV	3	sastre1
4178	599	2	.	\N	\N	KEV	999	sastre1
4177	599	1	mmhm	\N		KEV	0	sastre1
4180	600	2	I	\N	\N	SOF	2	sastre1
4181	600	3	went	\N	\N	SOF	2	sastre1
4182	600	4	this	\N	\N	SOF	2	sastre1
4183	600	5	morning	\N	\N	SOF	2	sastre1
4184	600	6	I	\N	\N	SOF	2	sastre1
4185	600	7	Jennie	\N	\N	SOF	0	sastre1
4186	600	8	breakfast	\N	\N	SOF	2	sastre1
4187	600	9	and	\N	\N	SOF	2	sastre1
4188	600	10	then	\N	\N	SOF	2	sastre1
4189	600	11	we	\N	\N	SOF	2	sastre1
4190	600	12	haven't	\N	\N	SOF	2	sastre1
4191	600	13	eaten	\N	\N	SOF	2	sastre1
4192	600	14	anything	\N	\N	SOF	2	sastre1
4193	600	15	all	\N	\N	SOF	2	sastre1
4194	600	16	day	\N	\N	SOF	2	sastre1
4195	600	17	.	\N	\N	SOF	999	sastre1
4179	600	1	I	\N		SOF	2	sastre1
4197	601	2	is	\N	\N	KEV	2	sastre1
4198	601	3	the	\N	\N	KEV	2	sastre1
4199	601	4	little	\N	\N	KEV	2	sastre1
4200	601	5	one	\N	\N	KEV	2	sastre1
4201	601	6	.	\N	\N	KEV	999	sastre1
4196	601	1	Jennie	\N		KEV	0	sastre1
4203	602	2	Maria	\N	\N	SOF	0	sastre1
4204	602	3	is	\N	\N	SOF	2	sastre1
4205	602	4	working	\N	\N	SOF	2	sastre1
4206	602	5	tonight	\N	\N	SOF	2	sastre1
4207	602	6	.	\N	\N	SOF	999	sastre1
4202	602	1	yeah	\N		SOF	2	sastre1
4209	603	2	yeah	\N	\N	KEV	2	sastre1
4210	603	3	.	\N	\N	KEV	999	sastre1
4208	603	1	mmhm	\N		KEV	0	sastre1
4211	604	1	.	\N		SOF	999	sastre1
4213	605	2	she	\N	\N	SOF	2	sastre1
4214	605	3	is	\N	\N	SOF	2	sastre1
4215	605	4	off	\N	\N	SOF	2	sastre1
4216	605	5	already	\N	\N	SOF	2	sastre1
4217	605	6	for	\N	\N	SOF	2	sastre1
4218	605	7	er	\N	\N	SOF	0	sastre1
4219	605	8	.	\N	\N	SOF	999	sastre1
4212	605	1	and	\N		SOF	2	sastre1
4221	606	2	.	\N	\N	KEV	999	sastre1
4220	606	1	mmhm	\N		KEV	0	sastre1
4223	607	2	schools	\N	\N	SOF	2	sastre1
4224	607	3	are	\N	\N	SOF	2	sastre1
4225	607	4	off	\N	\N	SOF	2	sastre1
4226	607	5	for	\N	\N	SOF	2	sastre1
4227	607	6	easter	\N	\N	SOF	2	sastre1
4228	607	7	.	\N	\N	SOF	999	sastre1
4222	607	1	the	\N		SOF	2	sastre1
4230	608	2	.	\N	\N	KEV	999	sastre1
4229	608	1	sí	\N		KEV	3	sastre1
4232	609	2	universities	\N	\N	SOF	2	sastre1
4233	609	3	.	\N	\N	SOF	999	sastre1
4231	609	1	the	\N		SOF	2	sastre1
4235	610	2	.	\N	\N	KEV	999	sastre1
4234	610	1	yeah	\N		KEV	2	sastre1
4237	611	2	no	\N	\N	SOF	3	sastre1
4238	611	3	estaba	\N	\N	SOF	3	sastre1
4239	611	4	?	\N	\N	SOF	999	sastre1
4236	611	1	Pepita	\N		SOF	0	sastre1
4241	612	2	ahora	\N	\N	KEV	3	sastre1
4242	612	3	acaban	\N	\N	KEV	3	sastre1
4243	612	4	estos	\N	\N	KEV	3	sastre1
4244	612	5	días	\N	\N	KEV	3	sastre1
4245	612	6	.	\N	\N	KEV	999	sastre1
4240	612	1	todavía	\N		KEV	3	sastre1
4247	613	2	ahora	\N	\N	SOF	3	sastre1
4248	613	3	empezó	\N	\N	SOF	3	sastre1
4249	613	4	Jennie	\N	\N	SOF	0	sastre1
4250	613	5	Jennie	\N	\N	SOF	0	sastre1
4251	613	6	allá	\N	\N	SOF	3	sastre1
4252	613	7	.	\N	\N	SOF	999	sastre1
4246	613	1	ella	\N		SOF	3	sastre1
4254	614	2	empezó	\N	\N	KEV	3	sastre1
4255	614	3	el	\N	\N	KEV	3	sastre1
4256	614	4	spring	\N	\N	KEV	2	sastre1
4257	614	5	break	\N	\N	KEV	2	sastre1
4258	614	6	.	\N	\N	KEV	999	sastre1
4253	614	1	ya	\N		KEV	3	sastre1
4260	615	2	.	\N	\N	SOF	999	sastre1
4259	615	1	yeah	\N		SOF	2	sastre1
4262	616	2	yo	\N	\N	KEV	3	sastre1
4263	616	3	no	\N	\N	KEV	3	sastre1
4264	616	4	sé	\N	\N	KEV	3	sastre1
4265	616	5	qué	\N	\N	KEV	3	sastre1
4266	616	6	día	\N	\N	KEV	3	sastre1
4267	616	7	empieza	\N	\N	KEV	3	sastre1
4268	616	8	Pepita	\N	\N	KEV	0	sastre1
4269	616	9	pero	\N	\N	KEV	3	sastre1
4270	616	10	F_I_U	\N	\N	KEV	2	sastre1
4271	616	11	está	\N	\N	KEV	3	sastre1
4272	616	12	er	\N	\N	KEV	0	sastre1
4273	616	13	.	\N	\N	KEV	999	sastre1
4261	616	1	sí	\N		KEV	3	sastre1
4275	617	2	I	\N	\N	SOF	2	sastre1
4276	617	3	found	\N	\N	SOF	2	sastre1
4277	617	4	that	\N	\N	SOF	2	sastre1
4278	617	5	Saint	\N	\N	SOF	2	sastre1
4279	617	6	Thomas	\N	\N	SOF	2	sastre1
4280	617	7	started	\N	\N	SOF	2	sastre1
4274	617	1	look	\N		SOF	2	sastre1
4281	617	8	too	\N	\N	SOF	2	sastre1
4282	617	9	early	\N	\N	SOF	2	sastre1
4283	617	10	.	\N	\N	SOF	999	sastre1
4285	618	2	tried	\N	\N	KEV	2	sastre1
4286	618	3	to	\N	\N	KEV	2	sastre1
4287	618	4	stag	\N	\N	KEV	2	sastre1
4288	618	5	.	\N	\N	KEV	999	sastre1
4284	618	1	they	\N		KEV	2	sastre1
4290	619	2	sabes	\N	\N	KEV	3	sastre1
4291	619	3	.	\N	\N	KEV	999	sastre1
4289	619	1	tú	\N		KEV	3	sastre1
4293	620	2	not	\N	\N	KEV	2	sastre1
4294	620	3	all	\N	\N	KEV	2	sastre1
4295	620	4	the	\N	\N	KEV	2	sastre1
4296	620	5	kids	\N	\N	KEV	2	sastre1
4297	620	6	are	\N	\N	KEV	2	sastre1
4298	620	7	out	\N	\N	KEV	2	sastre1
4299	620	8	at	\N	\N	KEV	2	sastre1
4300	620	9	the	\N	\N	KEV	2	sastre1
4301	620	10	same	\N	\N	KEV	2	sastre1
4302	620	11	time	\N	\N	KEV	2	sastre1
4303	620	12	.	\N	\N	KEV	999	sastre1
4292	620	1	so	\N		KEV	2	sastre1
4305	621	2	the	\N	\N	SOF	2	sastre1
4306	621	3	same	\N	\N	SOF	2	sastre1
4307	621	4	time	\N	\N	SOF	2	sastre1
4308	621	5	yeah	\N	\N	SOF	2	sastre1
4309	621	6	because	\N	\N	SOF	2	sastre1
4310	621	7	it	\N	\N	SOF	2	sastre1
4311	621	8	would	\N	\N	SOF	2	sastre1
4312	621	9	be	\N	\N	SOF	2	sastre1
4313	621	10	atrocious	\N	\N	SOF	2	sastre1
4314	621	11	for	\N	\N	SOF	2	sastre1
4315	621	12	Miami	\N	\N	SOF	2	sastre1
4316	621	13	.	\N	\N	SOF	999	sastre1
4304	621	1	at	\N		SOF	2	sastre1
4318	622	2	yeah	\N	\N	KEV	2	sastre1
4319	622	3	.	\N	\N	KEV	999	sastre1
4317	622	1	mmhm	\N		KEV	0	sastre1
4321	623	2	.	\N	\N	SOF	999	sastre1
4320	623	1	beach	\N		SOF	2	sastre1
4323	624	2	.	\N	\N	KEV	999	sastre1
4322	624	1	yeah	\N		KEV	2	sastre1
4324	625	1	.	\N		SOF	999	sastre1
4326	626	2	we	\N	\N	KEV	2	sastre1
4327	626	3	get	\N	\N	KEV	2	sastre1
4328	626	4	a	\N	\N	KEV	2	sastre1
4329	626	5	lot	\N	\N	KEV	2	sastre1
4330	626	6	of	\N	\N	KEV	2	sastre1
4331	626	7	kids	\N	\N	KEV	2	sastre1
4332	626	8	from	\N	\N	KEV	2	sastre1
4333	626	9	the	\N	\N	KEV	2	sastre1
4334	626	10	outside	\N	\N	KEV	2	sastre1
4335	626	11	.	\N	\N	KEV	999	sastre1
4325	626	1	and	\N		KEV	2	sastre1
4337	627	2	.	\N	\N	SOF	999	sastre1
4336	627	1	yeah	\N		SOF	2	sastre1
4339	628	2	come	\N	\N	KEV	2	sastre1
4340	628	3	from	\N	\N	KEV	2	sastre1
4341	628	4	northern	\N	\N	KEV	2	sastre1
4342	628	5	states	\N	\N	KEV	2	sastre1
4343	628	6	er	\N	\N	KEV	0	sastre1
4344	628	7	.	\N	\N	KEV	999	sastre1
4338	628	1	that	\N		KEV	2	sastre1
4346	629	2	know	\N	\N	SOF	2	sastre1
4347	629	3	traffic	\N	\N	SOF	2	sastre1
4348	629	4	is	\N	\N	SOF	2	sastre1
4349	629	5	gonna	\N	\N	SOF	2	sastre1
4350	629	6	get	\N	\N	SOF	2	sastre1
4351	629	7	bad	\N	\N	SOF	2	sastre1
4352	629	8	all	\N	\N	SOF	2	sastre1
4353	629	9	these	\N	\N	SOF	2	sastre1
4354	629	10	days	\N	\N	SOF	2	sastre1
4355	629	11	now	\N	\N	SOF	2	sastre1
4356	629	12	.	\N	\N	SOF	999	sastre1
4345	629	1	you	\N		SOF	2	sastre1
4358	630	2	.	\N	\N	KEV	999	sastre1
4357	630	1	yeah	\N		KEV	2	sastre1
4360	631	2	before	\N	\N	KEV	2	sastre1
4361	631	3	it	\N	\N	KEV	2	sastre1
4362	631	4	used	\N	\N	KEV	2	sastre1
4363	631	5	to	\N	\N	KEV	2	sastre1
4364	631	6	be	\N	\N	KEV	2	sastre1
4365	631	7	Fort_Lauderdale	\N	\N	KEV	0	sastre1
4366	631	8	Miami	\N	\N	KEV	0	sastre1
4367	631	9	where	\N	\N	KEV	2	sastre1
4368	631	10	all	\N	\N	KEV	2	sastre1
4369	631	11	the	\N	\N	KEV	2	sastre1
4370	631	12	kids	\N	\N	KEV	2	sastre1
4371	631	13	came	\N	\N	KEV	2	sastre1
4372	631	14	down	\N	\N	KEV	2	sastre1
4373	631	15	to	\N	\N	KEV	2	sastre1
4374	631	16	.	\N	\N	KEV	999	sastre1
4359	631	1	although	\N		KEV	2	sastre1
4376	632	2	they	\N	\N	KEV	2	sastre1
4377	632	3	are	\N	\N	KEV	2	sastre1
4378	632	4	spread	\N	\N	KEV	2	sastre1
4379	632	5	all	\N	\N	KEV	2	sastre1
4380	632	6	over	\N	\N	KEV	2	sastre1
4381	632	7	the	\N	\N	KEV	2	sastre1
4382	632	8	place	\N	\N	KEV	2	sastre1
4383	632	9	.	\N	\N	KEV	999	sastre1
4375	632	1	now	\N		KEV	2	sastre1
4385	633	2	.	\N	\N	SOF	999	sastre1
4384	633	1	yeah	\N		SOF	2	sastre1
4387	634	2	go	\N	\N	KEV	2	sastre1
4388	634	3	to	\N	\N	KEV	2	sastre1
4389	634	4	Jacksonville	\N	\N	KEV	0	sastre1
4390	634	5	they	\N	\N	KEV	2	sastre1
4391	634	6	go	\N	\N	KEV	2	sastre1
4392	634	7	to	\N	\N	KEV	2	sastre1
4393	634	8	Panama_City	\N	\N	KEV	0	sastre1
4394	634	9	.	\N	\N	KEV	999	sastre1
4386	634	1	they	\N		KEV	2	sastre1
4396	635	2	sabes	\N	\N	KEV	3	sastre1
4397	635	3	different	\N	\N	KEV	2	sastre1
4398	635	4	places	\N	\N	KEV	2	sastre1
4399	635	5	.	\N	\N	KEV	999	sastre1
4395	635	1	tú	\N		KEV	3	sastre1
4401	636	2	.	\N	\N	KEV	999	sastre1
4400	636	1	mmhm	\N		KEV	0	sastre1
4403	637	2	Keys	\N	\N	SOF	0	sastre1
4404	637	3	a	\N	\N	SOF	2	sastre1
4402	637	1	the	\N		SOF	2	sastre1
4405	637	4	lot	\N	\N	SOF	2	sastre1
4406	637	5	of	\N	\N	SOF	2	sastre1
4407	637	6	them	\N	\N	SOF	2	sastre1
4408	637	7	like	\N	\N	SOF	2	sastre1
4409	637	8	to	\N	\N	SOF	2	sastre1
4410	637	9	go	\N	\N	SOF	2	sastre1
4411	637	10	down	\N	\N	SOF	2	sastre1
4412	637	11	there	\N	\N	SOF	2	sastre1
4413	637	12	too	\N	\N	SOF	2	sastre1
4414	637	13	.	\N	\N	SOF	999	sastre1
4416	638	2	the	\N	\N	KEV	2	sastre1
4417	638	3	Keys	\N	\N	KEV	0	sastre1
4418	638	4	.	\N	\N	KEV	999	sastre1
4415	638	1	the	\N		KEV	2	sastre1
4420	639	2	que	\N	\N	KEV	3	sastre1
4421	639	3	pasa	\N	\N	KEV	3	sastre1
4422	639	4	que	\N	\N	KEV	3	sastre1
4423	639	5	the	\N	\N	KEV	2	sastre1
4424	639	6	Keys	\N	\N	KEV	0	sastre1
4425	639	7	er	\N	\N	KEV	0	sastre1
4426	639	8	.	\N	\N	KEV	999	sastre1
4419	639	1	lo	\N		KEV	3	sastre1
4428	640	2	expensive	\N	\N	SOF	2	sastre1
4429	640	3	for	\N	\N	SOF	2	sastre1
4430	640	4	them	\N	\N	SOF	2	sastre1
4431	640	5	.	\N	\N	SOF	999	sastre1
4427	640	1	very	\N		SOF	2	sastre1
4433	641	2	er	\N	\N	KEV	0	sastre1
4434	641	3	er	\N	\N	KEV	0	sastre1
4435	641	4	er	\N	\N	KEV	0	sastre1
4436	641	5	college	\N	\N	KEV	2	sastre1
4437	641	6	kids	\N	\N	KEV	2	sastre1
4438	641	7	es	\N	\N	KEV	3	sastre1
4439	641	8	imposible	\N	\N	KEV	3	sastre1
4440	641	9	.	\N	\N	KEV	999	sastre1
4432	641	1	for	\N		KEV	2	sastre1
4442	642	2	let	\N	\N	SOF	2	sastre1
4443	642	3	me	\N	\N	SOF	2	sastre1
4444	642	4	tell	\N	\N	SOF	2	sastre1
4445	642	5	you	\N	\N	SOF	2	sastre1
4446	642	6	Miami_Beach	\N	\N	SOF	0	sastre1
4447	642	7	is	\N	\N	SOF	2	sastre1
4448	642	8	getting	\N	\N	SOF	2	sastre1
4449	642	9	to	\N	\N	SOF	2	sastre1
4450	642	10	be	\N	\N	SOF	2	sastre1
4451	642	11	the	\N	\N	SOF	2	sastre1
4452	642	12	same	\N	\N	SOF	2	sastre1
4453	642	13	way	\N	\N	SOF	2	sastre1
4454	642	14	.	\N	\N	SOF	999	sastre1
4441	642	1	pero	\N		SOF	3	sastre1
4456	643	2	.	\N	\N	KEV	999	sastre1
4455	643	1	yeah	\N		KEV	2	sastre1
4458	644	2	the	\N	\N	SOF	2	sastre1
4459	644	3	kids	\N	\N	SOF	2	sastre1
4460	644	4	used	\N	\N	SOF	2	sastre1
4461	644	5	to	\N	\N	SOF	2	sastre1
4462	644	6	come	\N	\N	SOF	2	sastre1
4463	644	7	to	\N	\N	SOF	2	sastre1
4464	644	8	Miami_Beach	\N	\N	SOF	0	sastre1
4465	644	9	and	\N	\N	SOF	2	sastre1
4466	644	10	hang	\N	\N	SOF	2	sastre1
4467	644	11	out	\N	\N	SOF	2	sastre1
4468	644	12	but	\N	\N	SOF	2	sastre1
4469	644	13	.	\N	\N	SOF	999	sastre1
4457	644	1	before	\N		SOF	2	sastre1
4471	645	2	.	\N	\N	KEV	999	sastre1
4470	645	1	yeah	\N		KEV	2	sastre1
4473	646	2	pero	\N	\N	KEV	3	sastre1
4474	646	3	.	\N	\N	KEV	999	sastre1
4472	646	1	ya	\N		KEV	3	sastre1
4476	647	2	of	\N	\N	SOF	2	sastre1
4477	647	3	all	\N	\N	SOF	2	sastre1
4478	647	4	they	\N	\N	SOF	2	sastre1
4479	647	5	are	\N	\N	SOF	2	sastre1
4480	647	6	not	\N	\N	SOF	2	sastre1
4481	647	7	renting	\N	\N	SOF	2	sastre1
4482	647	8	it	\N	\N	SOF	2	sastre1
4483	647	9	to	\N	\N	SOF	2	sastre1
4484	647	10	the	\N	\N	SOF	2	sastre1
4485	647	11	kids	\N	\N	SOF	2	sastre1
4486	647	12	any_more	\N	\N	SOF	2	sastre1
4487	647	13	you	\N	\N	SOF	2	sastre1
4488	647	14	got	\N	\N	SOF	2	sastre1
4489	647	15	to	\N	\N	SOF	2	sastre1
4490	647	16	have	\N	\N	SOF	2	sastre1
4491	647	17	an	\N	\N	SOF	2	sastre1
4492	647	18	adult	\N	\N	SOF	2	sastre1
4493	647	19	that	\N	\N	SOF	2	sastre1
4494	647	20	would	\N	\N	SOF	2	sastre1
4495	647	21	rent	\N	\N	SOF	2	sastre1
4496	647	22	the	\N	\N	SOF	2	sastre1
4497	647	23	place	\N	\N	SOF	2	sastre1
4498	647	24	.	\N	\N	SOF	999	sastre1
4475	647	1	first	\N		SOF	2	sastre1
4500	648	2	.	\N	\N	KEV	999	sastre1
4499	648	1	right	\N		KEV	2	sastre1
4502	649	2	we	\N	\N	SOF	2	sastre1
4503	649	3	are	\N	\N	SOF	2	sastre1
4504	649	4	talking	\N	\N	SOF	2	sastre1
4505	649	5	about	\N	\N	SOF	2	sastre1
4506	649	6	almost	\N	\N	SOF	2	sastre1
4507	649	7	two	\N	\N	SOF	2	sastre1
4508	649	8	hundred	\N	\N	SOF	2	sastre1
4509	649	9	dollars	\N	\N	SOF	2	sastre1
4510	649	10	a	\N	\N	SOF	2	sastre1
4511	649	11	night	\N	\N	SOF	2	sastre1
4512	649	12	minimum	\N	\N	SOF	2	sastre1
4513	649	13	to	\N	\N	SOF	2	sastre1
4514	649	14	find	\N	\N	SOF	2	sastre1
4515	649	15	anywhere	\N	\N	SOF	2	sastre1
4516	649	16	which	\N	\N	SOF	2	sastre1
4517	649	17	before	\N	\N	SOF	2	sastre1
4518	649	18	for	\N	\N	SOF	2	sastre1
4519	649	19	fifty	\N	\N	SOF	2	sastre1
4501	649	1	and	\N		SOF	2	sastre1
4520	649	20	something	\N	\N	SOF	2	sastre1
4521	649	21	dollars	\N	\N	SOF	2	sastre1
4522	649	22	you	\N	\N	SOF	2	sastre1
4523	649	23	can	\N	\N	SOF	2	sastre1
4524	649	24	rent	\N	\N	SOF	2	sastre1
4525	649	25	out	\N	\N	SOF	2	sastre1
4526	649	26	at	\N	\N	SOF	2	sastre1
4527	649	27	the	\N	\N	SOF	2	sastre1
4528	649	28	beach	\N	\N	SOF	2	sastre1
4529	649	29	spend	\N	\N	SOF	2	sastre1
4530	649	30	the	\N	\N	SOF	2	sastre1
4531	649	31	weekend	\N	\N	SOF	2	sastre1
4532	649	32	.	\N	\N	SOF	999	sastre1
4534	650	2	yeah	\N	\N	KEV	2	sastre1
4535	650	3	.	\N	\N	KEV	999	sastre1
4533	650	1	er	\N		KEV	0	sastre1
4537	651	2	.	\N	\N	KEV	999	sastre1
4536	651	1	yeah	\N		KEV	2	sastre1
4539	652	2	.	\N	\N	SOF	999	sastre1
4538	652	1	yeah	\N		SOF	2	sastre1
4541	653	2	everything	\N	\N	KEV	2	sastre1
4542	653	3	else	\N	\N	KEV	2	sastre1
4543	653	4	it's	\N	\N	KEV	2	sastre1
4544	653	5	cheaper	\N	\N	KEV	2	sastre1
4545	653	6	at	\N	\N	KEV	2	sastre1
4546	653	7	the	\N	\N	KEV	2	sastre1
4547	653	8	beach	\N	\N	KEV	2	sastre1
4548	653	9	than	\N	\N	KEV	2	sastre1
4549	653	10	in	\N	\N	KEV	2	sastre1
4550	653	11	the	\N	\N	KEV	2	sastre1
4551	653	12	Keys	\N	\N	KEV	0	sastre1
4552	653	13	.	\N	\N	KEV	999	sastre1
4540	653	1	pero	\N		KEV	3	sastre1
4554	654	2	.	\N	\N	SOF	999	sastre1
4553	654	1	yeah	\N		SOF	2	sastre1
4556	655	2	restaurants	\N	\N	KEV	2	sastre1
4557	655	3	transportation	\N	\N	KEV	2	sastre1
4558	655	4	you	\N	\N	KEV	2	sastre1
4559	655	5	know	\N	\N	KEV	2	sastre1
4560	655	6	.	\N	\N	KEV	999	sastre1
4555	655	1	like	\N		KEV	2	sastre1
4562	656	2	yeah	\N	\N	SOF	2	sastre1
4563	656	3	.	\N	\N	SOF	999	sastre1
4561	656	1	oh	\N		SOF	0	sastre1
4565	657	2	in	\N	\N	KEV	2	sastre1
4566	657	3	Miami_Beach	\N	\N	KEV	0	sastre1
4567	657	4	er	\N	\N	KEV	0	sastre1
4568	657	5	they	\N	\N	KEV	2	sastre1
4569	657	6	go	\N	\N	KEV	2	sastre1
4570	657	7	to	\N	\N	KEV	2	sastre1
4571	657	8	Burger_King	\N	\N	KEV	0	sastre1
4572	657	9	they	\N	\N	KEV	2	sastre1
4573	657	10	go	\N	\N	KEV	2	sastre1
4574	657	11	to	\N	\N	KEV	2	sastre1
4575	657	12	McDonalds	\N	\N	KEV	0	sastre1
4576	657	13	in	\N	\N	KEV	2	sastre1
4577	657	14	the	\N	\N	KEV	2	sastre1
4578	657	15	Keys	\N	\N	KEV	0	sastre1
4579	657	16	you	\N	\N	KEV	2	sastre1
4580	657	17	don't	\N	\N	KEV	2	sastre1
4581	657	18	find	\N	\N	KEV	2	sastre1
4582	657	19	that	\N	\N	KEV	2	sastre1
4583	657	20	much	\N	\N	KEV	2	sastre1
4584	657	21	that	\N	\N	KEV	2	sastre1
4585	657	22	too	\N	\N	KEV	2	sastre1
4586	657	23	often	\N	\N	KEV	2	sastre1
4587	657	24	.	\N	\N	KEV	999	sastre1
4564	657	1	ah	\N		KEV	0	sastre1
4589	658	2	yeah	\N	\N	SOF	2	sastre1
4590	658	3	.	\N	\N	SOF	999	sastre1
4588	658	1	oh	\N		SOF	0	sastre1
4592	659	2	if	\N	\N	KEV	2	sastre1
4593	659	3	they	\N	\N	KEV	2	sastre1
4594	659	4	have	\N	\N	KEV	2	sastre1
4595	659	5	to	\N	\N	KEV	2	sastre1
4596	659	6	go	\N	\N	KEV	2	sastre1
4597	659	7	to	\N	\N	KEV	2	sastre1
4598	659	8	regular	\N	\N	KEV	2	sastre1
4599	659	9	restaurants	\N	\N	KEV	2	sastre1
4600	659	10	es	\N	\N	KEV	3	sastre1
4601	659	11	caro	\N	\N	KEV	3	sastre1
4602	659	12	.	\N	\N	KEV	999	sastre1
4591	659	1	so	\N		KEV	2	sastre1
4604	660	2	sabes	\N	\N	KEV	3	sastre1
4605	660	3	algunos	\N	\N	KEV	3	sastre1
4606	660	4	de	\N	\N	KEV	3	sastre1
4607	660	5	los	\N	\N	KEV	3	sastre1
4608	660	6	restaurancitos	\N	\N	KEV	3	sastre1
4609	660	7	esos	\N	\N	KEV	3	sastre1
4610	660	8	um	\N	\N	KEV	0	sastre1
4611	660	9	er	\N	\N	KEV	0	sastre1
4612	660	10	in	\N	\N	KEV	2	sastre1
4613	660	11	the	\N	\N	KEV	2	sastre1
4614	660	12	Keys	\N	\N	KEV	0	sastre1
4615	660	13	er	\N	\N	KEV	0	sastre1
4616	660	14	no	\N	\N	KEV	3	sastre1
4617	660	15	son	\N	\N	KEV	3	sastre1
4618	660	16	nada	\N	\N	KEV	3	sastre1
4619	660	17	del	\N	\N	KEV	3	sastre1
4620	660	18	otro	\N	\N	KEV	3	sastre1
4621	660	19	mundo	\N	\N	KEV	3	sastre1
4622	660	20	pero	\N	\N	KEV	3	sastre1
4623	660	21	te	\N	\N	KEV	3	sastre1
4624	660	22	cobran	\N	\N	KEV	3	sastre1
4625	660	23	más	\N	\N	KEV	3	sastre1
4626	660	24	que	\N	\N	KEV	3	sastre1
4627	660	25	un	\N	\N	KEV	3	sastre1
4628	660	26	Burger_King	\N	\N	KEV	0	sastre1
4629	660	27	o	\N	\N	KEV	3	sastre1
4630	660	28	un	\N	\N	KEV	3	sastre1
4631	660	29	MacDonalds	\N	\N	KEV	0	sastre1
4632	660	30	so	\N	\N	KEV	2	sastre1
4633	660	31	for	\N	\N	KEV	2	sastre1
4634	660	32	kids	\N	\N	KEV	2	sastre1
4603	660	1	tú	\N		KEV	3	sastre1
4635	660	33	is	\N	\N	KEV	2	sastre1
4636	660	34	not	\N	\N	KEV	2	sastre1
4637	660	35	bien	\N	\N	KEV	3	sastre1
4638	660	36	bien	\N	\N	KEV	3	sastre1
4639	660	37	práctico	\N	\N	KEV	3	sastre1
4640	660	38	.	\N	\N	KEV	999	sastre1
4642	661	2	.	\N	\N	SOF	999	sastre1
4641	661	1	yeah	\N		SOF	2	sastre1
4644	662	2	.	\N	\N	KEV	999	sastre1
4643	662	1	mmhm	\N		KEV	0	sastre1
4645	663	1	.	\N	background	SOF	999	sastre1
4647	664	2	mirando	\N	\N	KEV	3	sastre1
4648	664	3	el	\N	\N	KEV	3	sastre1
4649	664	4	reloj	\N	\N	KEV	3	sastre1
4650	664	5	.	\N	\N	KEV	999	sastre1
4646	664	1	estoy	\N		KEV	3	sastre1
4651	665	1	.	\N		SOF	999	sastre1
4653	666	2	creo	\N	\N	KEV	3	sastre1
4654	666	3	que	\N	\N	KEV	3	sastre1
4655	666	4	hemos	\N	\N	KEV	3	sastre1
4656	666	5	hablado	\N	\N	KEV	3	sastre1
4657	666	6	bastante	\N	\N	KEV	3	sastre1
4658	666	7	.	\N	\N	KEV	999	sastre1
4652	666	1	yo	\N		KEV	3	sastre1
4660	667	2	bueno	\N	\N	KEV	3	sastre1
4661	667	3	el	\N	\N	KEV	3	sastre1
4662	667	4	aparatico	\N	\N	KEV	3	sastre1
4663	667	5	ese	\N	\N	KEV	3	sastre1
4664	667	6	que	\N	\N	KEV	3	sastre1
4665	667	7	tiene	\N	\N	KEV	3	sastre1
4666	667	8	la	\N	\N	KEV	3	sastre1
4667	667	9	grabadorecita	\N	\N	KEV	3	sastre1
4668	667	10	esa	\N	\N	KEV	3	sastre1
4669	667	11	.	\N	\N	KEV	999	sastre1
4659	667	1	está	\N		KEV	3	sastre1
4671	668	2	a	\N	\N	SOF	3	sastre1
4672	668	3	la	\N	\N	SOF	3	sastre1
4673	668	4	gente	\N	\N	SOF	3	sastre1
4674	668	5	cuando	\N	\N	SOF	3	sastre1
4675	668	6	te	\N	\N	SOF	3	sastre1
4676	668	7	hacen	\N	\N	SOF	3	sastre1
4677	668	8	algo	\N	\N	SOF	3	sastre1
4678	668	9	.	\N	\N	SOF	999	sastre1
4670	668	1	grabando	\N		SOF	3	sastre1
4680	669	2	.	\N	\N	KEV	999	sastre1
4679	669	1	sí	\N		KEV	3	sastre1
4682	670	2	here	\N	\N	SOF	2	sastre1
4683	670	3	you	\N	\N	SOF	2	sastre1
4684	670	4	go	\N	\N	SOF	2	sastre1
4685	670	5	.	\N	\N	SOF	999	sastre1
4681	670	1	hey	\N		SOF	2	sastre1
4687	671	2	los	\N	\N	KEV	3	sastre1
4688	671	3	otros	\N	\N	KEV	3	sastre1
4689	671	4	días	\N	\N	KEV	3	sastre1
4690	671	5	sacó	\N	\N	KEV	3	sastre1
4691	671	6	Office_Depot	\N	\N	KEV	0	sastre1
4692	671	7	unas	\N	\N	KEV	3	sastre1
4693	671	8	tarjeticas	\N	\N	KEV	3	sastre1
4694	671	9	en	\N	\N	KEV	3	sastre1
4695	671	10	venta	\N	\N	KEV	3	sastre1
4696	671	11	.	\N	\N	KEV	999	sastre1
4686	671	1	er	\N		KEV	0	sastre1
4698	672	2	de	\N	\N	KEV	3	sastre1
4699	672	3	esas	\N	\N	KEV	3	sastre1
4700	672	4	de	\N	\N	KEV	3	sastre1
4701	672	5	one	\N	\N	KEV	2	sastre1
4702	672	6	gig	\N	\N	KEV	2	sastre1
4703	672	7	two	\N	\N	KEV	2	sastre1
4704	672	8	gigs	\N	\N	KEV	2	sastre1
4705	672	9	.	\N	\N	KEV	999	sastre1
4697	672	1	las	\N		KEV	3	sastre1
4707	673	2	fui	\N	\N	KEV	3	sastre1
4708	673	3	y	\N	\N	KEV	3	sastre1
4709	673	4	compré	\N	\N	KEV	3	sastre1
4710	673	5	una	\N	\N	KEV	3	sastre1
4711	673	6	para	\N	\N	KEV	3	sastre1
4712	673	7	mi	\N	\N	KEV	3	sastre1
4713	673	8	cámara	\N	\N	KEV	3	sastre1
4714	673	9	.	\N	\N	KEV	999	sastre1
4706	673	1	yo	\N		KEV	3	sastre1
4716	674	2	yo	\N	\N	KEV	3	sastre1
4717	674	3	uso	\N	\N	KEV	3	sastre1
4718	674	4	la	\N	\N	KEV	3	sastre1
4719	674	5	regular	\N	\N	KEV	3	sastre1
4720	674	6	la	\N	\N	KEV	3	sastre1
4721	674	7	S_T	\N	\N	KEV	0	sastre1
4722	674	8	.	\N	\N	KEV	999	sastre1
4715	674	1	pero	\N		KEV	3	sastre1
4724	675	2	en	\N	\N	KEV	3	sastre1
4725	675	3	la	\N	\N	KEV	3	sastre1
4726	675	4	cámara	\N	\N	KEV	3	sastre1
4727	675	5	de	\N	\N	KEV	3	sastre1
4728	675	6	ella	\N	\N	KEV	3	sastre1
4729	675	7	usa	\N	\N	KEV	3	sastre1
4730	675	8	una	\N	\N	KEV	3	sastre1
4731	675	9	que	\N	\N	KEV	3	sastre1
4732	675	10	se	\N	\N	KEV	3	sastre1
4733	675	11	llama	\N	\N	KEV	3	sastre1
4734	675	12	dualpro	\N	\N	KEV	0	sastre1
4735	675	13	o	\N	\N	KEV	3	sastre1
4736	675	14	una	\N	\N	KEV	3	sastre1
4737	675	15	cosa	\N	\N	KEV	3	sastre1
4738	675	16	así	\N	\N	KEV	3	sastre1
4739	675	17	.	\N	\N	KEV	999	sastre1
4723	675	1	Pepita	\N		KEV	0	sastre1
4741	676	2	.	\N	\N	SOF	999	sastre1
4740	676	1	mmhm	\N		SOF	0	sastre1
4743	677	2	esa	\N	\N	KEV	3	sastre1
4744	677	3	nunca	\N	\N	KEV	3	sastre1
4745	677	4	la	\N	\N	KEV	3	sastre1
4746	677	5	habían	\N	\N	KEV	3	sastre1
4747	677	6	puesto	\N	\N	KEV	3	sastre1
4748	677	7	en	\N	\N	KEV	3	sastre1
4749	677	8	venta	\N	\N	KEV	3	sastre1
4750	677	9	pero	\N	\N	KEV	3	sastre1
4751	677	10	por	\N	\N	KEV	3	sastre1
4752	677	11	fin	\N	\N	KEV	3	sastre1
4753	677	12	Office_Depot	\N	\N	KEV	0	sastre1
4754	677	13	las	\N	\N	KEV	3	sastre1
4755	677	14	puso	\N	\N	KEV	3	sastre1
4756	677	15	en	\N	\N	KEV	3	sastre1
4757	677	16	venta	\N	\N	KEV	3	sastre1
4742	677	1	que	\N		KEV	3	sastre1
4758	677	17	.	\N	\N	KEV	999	sastre1
4760	678	2	ese	\N	\N	KEV	3	sastre1
4761	678	3	día	\N	\N	KEV	3	sastre1
4762	678	4	tenían	\N	\N	KEV	3	sastre1
4763	678	5	una	\N	\N	KEV	3	sastre1
4764	678	6	cosita	\N	\N	KEV	3	sastre1
4765	678	7	de	\N	\N	KEV	3	sastre1
4766	678	8	estas	\N	\N	KEV	3	sastre1
4767	678	9	en	\N	\N	KEV	3	sastre1
4768	678	10	venta	\N	\N	KEV	3	sastre1
4769	678	11	también	\N	\N	KEV	3	sastre1
4770	678	12	.	\N	\N	KEV	999	sastre1
4759	678	1	y	\N		KEV	3	sastre1
4772	679	2	Sandisk	\N	\N	KEV	0	sastre1
4773	679	3	que	\N	\N	KEV	3	sastre1
4774	679	4	es	\N	\N	KEV	3	sastre1
4775	679	5	un	\N	\N	KEV	3	sastre1
4776	679	6	M_P_three	\N	\N	KEV	2	sastre1
4777	679	7	player	\N	\N	KEV	2	sastre1
4778	679	8	con	\N	\N	KEV	3	sastre1
4779	679	9	un	\N	\N	KEV	3	sastre1
4780	679	10	recording	\N	\N	KEV	2	sastre1
4781	679	11	un	\N	\N	KEV	3	sastre1
4782	679	12	radiecito	\N	\N	KEV	3	sastre1
4783	679	13	F_M	\N	\N	KEV	3	sastre1
4784	679	14	todo	\N	\N	KEV	3	sastre1
4785	679	15	una	\N	\N	KEV	3	sastre1
4786	679	16	piececita	\N	\N	KEV	3	sastre1
4787	679	17	.	\N	\N	KEV	999	sastre1
4771	679	1	un	\N		KEV	3	sastre1
4789	680	2	bueno	\N	\N	KEV	3	sastre1
4790	680	3	.	\N	\N	KEV	999	sastre1
4788	680	1	estaba	\N		KEV	3	sastre1
4792	681	2	cuando	\N	\N	KEV	3	sastre1
4793	681	3	llegué	\N	\N	KEV	3	sastre1
4794	681	4	nada	\N	\N	KEV	3	sastre1
4795	681	5	más	\N	\N	KEV	3	sastre1
4796	681	6	que	\N	\N	KEV	3	sastre1
4797	681	7	tenían	\N	\N	KEV	3	sastre1
4798	681	8	el	\N	\N	KEV	3	sastre1
4799	681	9	de	\N	\N	KEV	3	sastre1
4800	681	10	muestra	\N	\N	KEV	3	sastre1
4801	681	11	.	\N	\N	KEV	999	sastre1
4791	681	1	pero	\N		KEV	3	sastre1
4803	682	2	tenían	\N	\N	KEV	3	sastre1
4804	682	3	ninguno	\N	\N	KEV	3	sastre1
4805	682	4	allí	\N	\N	KEV	3	sastre1
4806	682	5	.	\N	\N	KEV	999	sastre1
4802	682	1	no	\N		KEV	3	sastre1
4808	683	2	mira	\N	\N	SOF	3	sastre1
4809	683	3	before	\N	\N	SOF	2	sastre1
4810	683	4	you	\N	\N	SOF	2	sastre1
4811	683	5	used	\N	\N	SOF	2	sastre1
4812	683	6	to	\N	\N	SOF	2	sastre1
4813	683	7	go	\N	\N	SOF	2	sastre1
4814	683	8	to	\N	\N	SOF	2	sastre1
4815	683	9	the	\N	\N	SOF	2	sastre1
4816	683	10	classes	\N	\N	SOF	2	sastre1
4817	683	11	in	\N	\N	SOF	2	sastre1
4818	683	12	the	\N	\N	SOF	2	sastre1
4819	683	13	university	\N	\N	SOF	2	sastre1
4820	683	14	.	\N	\N	SOF	999	sastre1
4807	683	1	pero	\N		SOF	3	sastre1
4822	684	2	you	\N	\N	SOF	2	sastre1
4823	684	3	used	\N	\N	SOF	2	sastre1
4824	684	4	to	\N	\N	SOF	2	sastre1
4825	684	5	be	\N	\N	SOF	2	sastre1
4826	684	6	able	\N	\N	SOF	2	sastre1
4827	684	7	to	\N	\N	SOF	2	sastre1
4828	684	8	record	\N	\N	SOF	2	sastre1
4829	684	9	classes	\N	\N	SOF	2	sastre1
4830	684	10	.	\N	\N	SOF	999	sastre1
4821	684	1	and	\N		SOF	2	sastre1
4832	685	2	record	\N	\N	KEV	2	sastre1
4833	685	3	not	\N	\N	KEV	2	sastre1
4834	685	4	any_more	\N	\N	KEV	2	sastre1
4835	685	5	.	\N	\N	KEV	999	sastre1
4831	685	1	to	\N		KEV	2	sastre1
4837	686	2	guess	\N	\N	SOF	2	sastre1
4838	686	3	not	\N	\N	SOF	2	sastre1
4839	686	4	.	\N	\N	SOF	999	sastre1
4836	686	1	I	\N		SOF	2	sastre1
4841	687	2	the	\N	\N	SOF	2	sastre1
4842	687	3	teachers	\N	\N	SOF	2	sastre1
4843	687	4	are	\N	\N	SOF	2	sastre1
4844	687	5	not	\N	\N	SOF	2	sastre1
4845	687	6	.	\N	\N	SOF	999	sastre1
4840	687	1	maybe	\N		SOF	2	sastre1
4847	688	2	.	\N	\N	KEV	999	sastre1
4846	688	1	yeah	\N		KEV	2	sastre1
4848	689	1	.	\N		SOF	999	sastre1
4850	690	2	.	\N	\N	KEV	999	sastre1
4849	690	1	bueno	\N		KEV	3	sastre1
4852	691	2	are	\N	\N	SOF	2	sastre1
4853	691	3	teaching	\N	\N	SOF	2	sastre1
4854	691	4	so	\N	\N	SOF	2	sastre1
4855	691	5	properly	\N	\N	SOF	2	sastre1
4856	691	6	that	\N	\N	SOF	2	sastre1
4857	691	7	they	\N	\N	SOF	2	sastre1
4858	691	8	are	\N	\N	SOF	2	sastre1
4859	691	9	afraid	\N	\N	SOF	2	sastre1
4860	691	10	that	\N	\N	SOF	2	sastre1
4861	691	11	they	\N	\N	SOF	2	sastre1
4862	691	12	might	\N	\N	SOF	2	sastre1
4863	691	13	be	\N	\N	SOF	2	sastre1
4864	691	14	recorded	\N	\N	SOF	2	sastre1
4865	691	15	or	\N	\N	SOF	2	sastre1
4866	691	16	might	\N	\N	SOF	2	sastre1
4867	691	17	say	\N	\N	SOF	2	sastre1
4868	691	18	something	\N	\N	SOF	2	sastre1
4869	691	19	that	\N	\N	SOF	2	sastre1
4851	691	1	they	\N		SOF	2	sastre1
4870	691	20	they	\N	\N	SOF	2	sastre1
4871	691	21	shouldn't	\N	\N	SOF	2	sastre1
4872	691	22	say	\N	\N	SOF	2	sastre1
4873	691	23	and	\N	\N	SOF	2	sastre1
4874	691	24	they	\N	\N	SOF	2	sastre1
4875	691	25	could	\N	\N	SOF	2	sastre1
4876	691	26	.	\N	\N	SOF	999	sastre1
4878	692	2	er	\N	\N	KEV	0	sastre1
4879	692	3	.	\N	\N	KEV	999	sastre1
4877	692	1	that's	\N		KEV	2	sastre1
4881	693	2	know	\N	\N	SOF	2	sastre1
4882	693	3	banish	\N	\N	SOF	2	sastre1
4883	693	4	them	\N	\N	SOF	2	sastre1
4884	693	5	.	\N	\N	SOF	999	sastre1
4880	693	1	you	\N		SOF	2	sastre1
4886	694	2	sabes	\N	\N	KEV	3	sastre1
4887	694	3	opens	\N	\N	KEV	2	sastre1
4888	694	4	the	\N	\N	KEV	2	sastre1
4889	694	5	door	\N	\N	KEV	2	sastre1
4890	694	6	for	\N	\N	KEV	2	sastre1
4891	694	7	a	\N	\N	KEV	2	sastre1
4892	694	8	lawsuit	\N	\N	KEV	2	sastre1
4893	694	9	si	\N	\N	KEV	3	sastre1
4894	694	10	pasa	\N	\N	KEV	3	sastre1
4895	694	11	cualquier	\N	\N	KEV	3	sastre1
4896	694	12	cosa	\N	\N	KEV	3	sastre1
4897	694	13	.	\N	\N	KEV	999	sastre1
4885	694	1	tú	\N		KEV	3	sastre1
4899	695	2	.	\N	\N	SOF	999	sastre1
4898	695	1	yeah	\N		SOF	2	sastre1
4901	696	2	al	\N	\N	KEV	3	sastre1
4902	696	3	maestro	\N	\N	KEV	3	sastre1
4903	696	4	grabado	\N	\N	KEV	3	sastre1
4904	696	5	un	\N	\N	KEV	3	sastre1
4905	696	6	maestro	\N	\N	KEV	3	sastre1
4906	696	7	que	\N	\N	KEV	3	sastre1
4907	696	8	diga	\N	\N	KEV	3	sastre1
4908	696	9	cualquier	\N	\N	KEV	3	sastre1
4909	696	10	disparate	\N	\N	KEV	3	sastre1
4910	696	11	en	\N	\N	KEV	3	sastre1
4911	696	12	la	\N	\N	KEV	3	sastre1
4912	696	13	clase	\N	\N	KEV	3	sastre1
4913	696	14	sin	\N	\N	KEV	3	sastre1
4914	696	15	querer	\N	\N	KEV	3	sastre1
4915	696	16	o	\N	\N	KEV	3	sastre1
4916	696	17	queriendo	\N	\N	KEV	3	sastre1
4917	696	18	tú	\N	\N	KEV	3	sastre1
4918	696	19	sabes	\N	\N	KEV	3	sastre1
4919	696	20	lo	\N	\N	KEV	3	sastre1
4920	696	21	tienen	\N	\N	KEV	3	sastre1
4921	696	22	grabado	\N	\N	KEV	3	sastre1
4922	696	23	.	\N	\N	KEV	999	sastre1
4900	696	1	tienen	\N		KEV	3	sastre1
4924	697	2	.	\N	\N	KEV	999	sastre1
4923	697	1	mmhm	\N		KEV	0	sastre1
4926	698	2	this	\N	\N	SOF	2	sastre1
4927	698	3	country	\N	\N	SOF	2	sastre1
4928	698	4	has	\N	\N	SOF	2	sastre1
4929	698	5	gotten	\N	\N	SOF	2	sastre1
4930	698	6	.	\N	\N	SOF	999	sastre1
4925	698	1	pero	\N		SOF	3	sastre1
4932	699	2	todo	\N	\N	KEV	3	sastre1
4933	699	3	lawsuit	\N	\N	KEV	2	sastre1
4934	699	4	todo	\N	\N	KEV	3	sastre1
4935	699	5	lawsuit	\N	\N	KEV	2	sastre1
4936	699	6	.	\N	\N	KEV	999	sastre1
4931	699	1	es	\N		KEV	3	sastre1
4937	700	1	.	\N		SOF	999	sastre1
4939	701	2	es	\N	\N	KEV	3	sastre1
4940	701	3	un	\N	\N	KEV	3	sastre1
4941	701	4	problema	\N	\N	KEV	3	sastre1
4942	701	5	todo	\N	\N	KEV	3	sastre1
4943	701	6	.	\N	\N	KEV	999	sastre1
4938	701	1	todo	\N		KEV	3	sastre1
4945	702	2	the	\N	\N	SOF	2	sastre1
4946	702	3	lady	\N	\N	SOF	2	sastre1
4947	702	4	that	\N	\N	SOF	2	sastre1
4948	702	5	chocó	\N	\N	SOF	3	sastre1
4949	702	6	a	\N	\N	SOF	3	sastre1
4950	702	7	Myriam	\N	\N	SOF	0	sastre1
4951	702	8	because	\N	\N	SOF	2	sastre1
4952	702	9	ella	\N	\N	SOF	3	sastre1
4953	702	10	fue	\N	\N	SOF	3	sastre1
4954	702	11	la	\N	\N	SOF	3	sastre1
4955	702	12	que	\N	\N	SOF	3	sastre1
4956	702	13	la	\N	\N	SOF	3	sastre1
4957	702	14	chocó	\N	\N	SOF	3	sastre1
4958	702	15	you	\N	\N	SOF	2	sastre1
4959	702	16	know	\N	\N	SOF	2	sastre1
4960	702	17	.	\N	\N	SOF	999	sastre1
4944	702	1	like	\N		SOF	2	sastre1
4962	703	2	mmhm	\N	\N	KEV	0	sastre1
4963	703	3	.	\N	\N	KEV	999	sastre1
4961	703	1	mmhm	\N		KEV	0	sastre1
4965	704	2	lady	\N	\N	SOF	2	sastre1
4966	704	3	is	\N	\N	SOF	2	sastre1
4967	704	4	already	\N	\N	SOF	2	sastre1
4968	704	5	her	\N	\N	SOF	2	sastre1
4969	704	6	back	\N	\N	SOF	2	sastre1
4970	704	7	hurts	\N	\N	SOF	2	sastre1
4971	704	8	this	\N	\N	SOF	2	sastre1
4972	704	9	and	\N	\N	SOF	2	sastre1
4973	704	10	that	\N	\N	SOF	2	sastre1
4974	704	11	everything	\N	\N	SOF	2	sastre1
4975	704	12	hurts	\N	\N	SOF	2	sastre1
4976	704	13	and	\N	\N	SOF	2	sastre1
4977	704	14	I'm	\N	\N	SOF	2	sastre1
4978	704	15	like	\N	\N	SOF	2	sastre1
4979	704	16	.	\N	\N	SOF	999	sastre1
4964	704	1	the	\N		SOF	2	sastre1
4981	705	2	for	\N	\N	KEV	2	sastre1
4982	705	3	sure	\N	\N	KEV	2	sastre1
4983	705	4	mmhm	\N	\N	KEV	0	sastre1
4984	705	5	.	\N	\N	KEV	999	sastre1
4980	705	1	oh	\N		KEV	0	sastre1
4986	706	2	one	\N	\N	SOF	2	sastre1
4987	706	3	who	\N	\N	SOF	2	sastre1
4988	706	4	should	\N	\N	SOF	2	sastre1
4989	706	5	be	\N	\N	SOF	2	sastre1
4990	706	6	hurting	\N	\N	SOF	2	sastre1
4991	706	7	is	\N	\N	SOF	2	sastre1
4992	706	8	my	\N	\N	SOF	2	sastre1
4993	706	9	kid	\N	\N	SOF	2	sastre1
4985	706	1	the	\N		SOF	2	sastre1
4994	706	10	.	\N	\N	SOF	999	sastre1
4996	707	2	que	\N	\N	KEV	3	sastre1
4997	707	3	fue	\N	\N	KEV	3	sastre1
4998	707	4	la	\N	\N	KEV	3	sastre1
4999	707	5	que	\N	\N	KEV	3	sastre1
5000	707	6	le	\N	\N	KEV	3	sastre1
5001	707	7	dieron	\N	\N	KEV	3	sastre1
5002	707	8	de	\N	\N	KEV	3	sastre1
5003	707	9	lado	\N	\N	KEV	3	sastre1
5004	707	10	.	\N	\N	KEV	999	sastre1
4995	707	1	mmhm	\N		KEV	0	sastre1
5006	708	2	que	\N	\N	SOF	3	sastre1
5007	708	3	le	\N	\N	SOF	3	sastre1
5008	708	4	dieron	\N	\N	SOF	3	sastre1
5009	708	5	por	\N	\N	SOF	3	sastre1
5010	708	6	la	\N	\N	SOF	3	sastre1
5011	708	7	puerta	\N	\N	SOF	3	sastre1
5012	708	8	le	\N	\N	SOF	3	sastre1
5013	708	9	desbarató	\N	\N	SOF	3	sastre1
5014	708	10	la	\N	\N	SOF	3	sastre1
5015	708	11	puerta	\N	\N	SOF	3	sastre1
5016	708	12	.	\N	\N	SOF	999	sastre1
5005	708	1	no	\N		SOF	3	sastre1
5018	709	2	.	\N	\N	KEV	999	sastre1
5017	709	1	mmhm	\N		KEV	0	sastre1
5020	710	2	axel	\N	\N	SOF	2	sastre1
5021	710	3	de	\N	\N	SOF	3	sastre1
5022	710	4	de	\N	\N	SOF	3	sastre1
5023	710	5	la	\N	\N	SOF	3	sastre1
5024	710	6	goma	\N	\N	SOF	3	sastre1
5025	710	7	de	\N	\N	SOF	3	sastre1
5026	710	8	alante	\N	\N	SOF	3	sastre1
5027	710	9	se	\N	\N	SOF	3	sastre1
5028	710	10	la	\N	\N	SOF	3	sastre1
5029	710	11	partió	\N	\N	SOF	3	sastre1
5030	710	12	con	\N	\N	SOF	3	sastre1
5031	710	13	eso	\N	\N	SOF	3	sastre1
5032	710	14	yo	\N	\N	SOF	3	sastre1
5033	710	15	te	\N	\N	SOF	3	sastre1
5034	710	16	digo	\N	\N	SOF	3	sastre1
5035	710	17	el	\N	\N	SOF	3	sastre1
5036	710	18	golpe	\N	\N	SOF	3	sastre1
5037	710	19	tan	\N	\N	SOF	3	sastre1
5038	710	20	grande	\N	\N	SOF	3	sastre1
5039	710	21	que	\N	\N	SOF	3	sastre1
5040	710	22	le	\N	\N	SOF	3	sastre1
5041	710	23	dio	\N	\N	SOF	3	sastre1
5042	710	24	esa	\N	\N	SOF	3	sastre1
5043	710	25	mujer	\N	\N	SOF	3	sastre1
5044	710	26	.	\N	\N	SOF	999	sastre1
5019	710	1	el	\N		SOF	3	sastre1
5046	711	2	increíble	\N	\N	KEV	3	sastre1
5047	711	3	.	\N	\N	KEV	999	sastre1
5045	711	1	increíble	\N		KEV	3	sastre1
5049	712	2	just	\N	\N	SOF	2	sastre1
5050	712	3	got	\N	\N	SOF	2	sastre1
5051	712	4	one	\N	\N	SOF	2	sastre1
5052	712	5	of	\N	\N	SOF	2	sastre1
5053	712	6	these	\N	\N	SOF	2	sastre1
5054	712	7	nineteen	\N	\N	SOF	2	sastre1
5055	712	8	ninety	\N	\N	SOF	2	sastre1
5056	712	9	five	\N	\N	SOF	2	sastre1
5057	712	10	Toyotas	\N	\N	SOF	0	sastre1
5058	712	11	that	\N	\N	SOF	2	sastre1
5059	712	12	are	\N	\N	SOF	2	sastre1
5060	712	13	like	\N	\N	SOF	2	sastre1
5061	712	14	.	\N	\N	SOF	999	sastre1
5048	712	1	she's	\N		SOF	2	sastre1
5063	713	2	duro	\N	\N	KEV	3	sastre1
5064	713	3	.	\N	\N	KEV	999	sastre1
5062	713	1	mmhm	\N		KEV	0	sastre1
5066	714	2	those	\N	\N	SOF	2	sastre1
5067	714	3	Toyotas	\N	\N	SOF	0	sastre1
5068	714	4	really	\N	\N	SOF	2	sastre1
5069	714	5	heavy	\N	\N	SOF	2	sastre1
5070	714	6	?	\N	\N	SOF	999	sastre1
5065	714	1	remember	\N		SOF	2	sastre1
5072	715	2	.	\N	\N	KEV	999	sastre1
5071	715	1	mmhm	\N		KEV	0	sastre1
5074	716	2	the	\N	\N	SOF	2	sastre1
5075	716	3	bumper	\N	\N	SOF	2	sastre1
5076	716	4	used	\N	\N	SOF	2	sastre1
5077	716	5	to	\N	\N	SOF	2	sastre1
5078	716	6	be	\N	\N	SOF	2	sastre1
5079	716	7	a	\N	\N	SOF	2	sastre1
5080	716	8	different	\N	\N	SOF	2	sastre1
5081	716	9	color	\N	\N	SOF	2	sastre1
5082	716	10	that	\N	\N	SOF	2	sastre1
5083	716	11	they	\N	\N	SOF	2	sastre1
5084	716	12	used	\N	\N	SOF	2	sastre1
5085	716	13	to	\N	\N	SOF	2	sastre1
5086	716	14	.	\N	\N	SOF	999	sastre1
5073	716	1	and	\N		SOF	2	sastre1
5088	717	2	mmhm	\N	\N	KEV	0	sastre1
5089	717	3	.	\N	\N	KEV	999	sastre1
5087	717	1	mmhm	\N		KEV	0	sastre1
5091	718	2	tipo	\N	\N	KEV	3	sastre1
5092	718	3	S_U_V	\N	\N	KEV	2	sastre1
5093	718	4	o	\N	\N	KEV	3	sastre1
5094	718	5	.	\N	\N	KEV	999	sastre1
5090	718	1	pero	\N		KEV	3	sastre1
5096	719	2	no	\N	\N	SOF	3	sastre1
5097	719	3	it	\N	\N	SOF	2	sastre1
5098	719	4	was	\N	\N	SOF	2	sastre1
5099	719	5	a	\N	\N	SOF	2	sastre1
5100	719	6	car	\N	\N	SOF	2	sastre1
5101	719	7	.	\N	\N	SOF	999	sastre1
5095	719	1	no	\N		SOF	3	sastre1
5103	720	2	carrito	\N	\N	KEV	3	sastre1
5104	720	3	.	\N	\N	KEV	999	sastre1
5102	720	1	un	\N		KEV	3	sastre1
5106	721	2	.	\N	\N	KEV	999	sastre1
5105	721	1	mmhm	\N		KEV	0	sastre1
5108	722	2	God	\N	\N	SOF	2	sastre1
5109	722	3	.	\N	\N	SOF	999	sastre1
5107	722	1	Thank	\N		SOF	2	sastre1
5111	723	2	.	\N	\N	KEV	999	sastre1
5110	723	1	mmhm	\N		KEV	0	sastre1
5113	724	2	if	\N	\N	SOF	2	sastre1
5114	724	3	you	\N	\N	SOF	2	sastre1
5115	724	4	for	\N	\N	SOF	2	sastre1
5116	724	5	a	\N	\N	SOF	2	sastre1
5117	724	6	little	\N	\N	SOF	2	sastre1
5112	724	1	imagine	\N		SOF	2	sastre1
5118	724	7	PT_Cruiser	\N	\N	SOF	0	sastre1
5119	724	8	.	\N	\N	SOF	999	sastre1
5121	725	2	.	\N	\N	KEV	999	sastre1
5120	725	1	imagínate	\N		KEV	3	sastre1
5123	726	2	.	\N	\N	KEV	999	sastre1
5122	726	1	imagínate	\N		KEV	3	sastre1
5125	727	2	hubiera	\N	\N	SOF	3	sastre1
5126	727	3	matado	\N	\N	SOF	3	sastre1
5127	727	4	.	\N	\N	SOF	999	sastre1
5124	727	1	la	\N		SOF	3	sastre1
5129	728	2	yo	\N	\N	SOF	3	sastre1
5130	728	3	no	\N	\N	SOF	3	sastre1
5131	728	4	tenía	\N	\N	SOF	3	sastre1
5132	728	5	airbags	\N	\N	SOF	0	sastre1
5133	728	6	en	\N	\N	SOF	3	sastre1
5134	728	7	el	\N	\N	SOF	3	sastre1
5135	728	8	PT_Cruiser	\N	\N	SOF	0	sastre1
5136	728	9	.	\N	\N	SOF	999	sastre1
5128	728	1	porque	\N		SOF	3	sastre1
5138	729	2	.	\N	\N	KEV	999	sastre1
5137	729	1	no	\N		KEV	3	sastre1
5140	730	2	PT_Cruisers	\N	\N	KEV	0	sastre1
5141	730	3	no	\N	\N	KEV	3	sastre1
5142	730	4	vienen	\N	\N	KEV	3	sastre1
5143	730	5	con	\N	\N	KEV	3	sastre1
5144	730	6	airbag	\N	\N	KEV	0	sastre1
5145	730	7	?	\N	\N	KEV	999	sastre1
5139	730	1	los	\N		KEV	3	sastre1
5147	731	2	but	\N	\N	SOF	2	sastre1
5148	731	3	what	\N	\N	SOF	2	sastre1
5149	731	4	happened	\N	\N	SOF	2	sastre1
5150	731	5	was	\N	\N	SOF	2	sastre1
5151	731	6	my	\N	\N	SOF	2	sastre1
5152	731	7	husband	\N	\N	SOF	2	sastre1
5153	731	8	being	\N	\N	SOF	2	sastre1
5154	731	9	such	\N	\N	SOF	2	sastre1
5155	731	10	a	\N	\N	SOF	2	sastre1
5156	731	11	small	\N	\N	SOF	2	sastre1
5157	731	12	person	\N	\N	SOF	2	sastre1
5158	731	13	wanted	\N	\N	SOF	2	sastre1
5159	731	14	to	\N	\N	SOF	2	sastre1
5160	731	15	buy	\N	\N	SOF	2	sastre1
5161	731	16	her	\N	\N	SOF	2	sastre1
5162	731	17	a	\N	\N	SOF	2	sastre1
5163	731	18	car	\N	\N	SOF	2	sastre1
5164	731	19	a	\N	\N	SOF	2	sastre1
5165	731	20	used	\N	\N	SOF	2	sastre1
5166	731	21	car	\N	\N	SOF	2	sastre1
5167	731	22	didn't	\N	\N	SOF	2	sastre1
5168	731	23	want	\N	\N	SOF	2	sastre1
5169	731	24	her	\N	\N	SOF	2	sastre1
5170	731	25	to	\N	\N	SOF	2	sastre1
5171	731	26	have	\N	\N	SOF	2	sastre1
5172	731	27	a	\N	\N	SOF	2	sastre1
5173	731	28	new	\N	\N	SOF	2	sastre1
5174	731	29	car	\N	\N	SOF	2	sastre1
5175	731	30	like	\N	\N	SOF	2	sastre1
5176	731	31	I	\N	\N	SOF	2	sastre1
5177	731	32	told	\N	\N	SOF	2	sastre1
5178	731	33	him	\N	\N	SOF	2	sastre1
5179	731	34	.	\N	\N	SOF	999	sastre1
5146	731	1	yes	\N		SOF	2	sastre1
5181	732	2	the	\N	\N	SOF	2	sastre1
5182	732	3	kid	\N	\N	SOF	2	sastre1
5183	732	4	a	\N	\N	SOF	2	sastre1
5184	732	5	good	\N	\N	SOF	2	sastre1
5185	732	6	car	\N	\N	SOF	2	sastre1
5186	732	7	when	\N	\N	SOF	2	sastre1
5187	732	8	we	\N	\N	SOF	2	sastre1
5188	732	9	ended	\N	\N	SOF	2	sastre1
5189	732	10	up	\N	\N	SOF	2	sastre1
5190	732	11	finding	\N	\N	SOF	2	sastre1
5191	732	12	out	\N	\N	SOF	2	sastre1
5192	732	13	when	\N	\N	SOF	2	sastre1
5193	732	14	we	\N	\N	SOF	2	sastre1
5194	732	15	had	\N	\N	SOF	2	sastre1
5195	732	16	already	\N	\N	SOF	2	sastre1
5196	732	17	payed	\N	\N	SOF	2	sastre1
5197	732	18	everything	\N	\N	SOF	2	sastre1
5198	732	19	for	\N	\N	SOF	2	sastre1
5199	732	20	the	\N	\N	SOF	2	sastre1
5200	732	21	car	\N	\N	SOF	2	sastre1
5201	732	22	that	\N	\N	SOF	2	sastre1
5202	732	23	car	\N	\N	SOF	2	sastre1
5203	732	24	had	\N	\N	SOF	2	sastre1
5204	732	25	been	\N	\N	SOF	2	sastre1
5205	732	26	chocado	\N	\N	SOF	3	sastre1
5206	732	27	de	\N	\N	SOF	3	sastre1
5207	732	28	alante	\N	\N	SOF	3	sastre1
5208	732	29	completamente	\N	\N	SOF	3	sastre1
5209	732	30	.	\N	\N	SOF	999	sastre1
5180	732	1	get	\N		SOF	2	sastre1
5211	733	2	que	\N	\N	SOF	3	sastre1
5212	733	3	tiene	\N	\N	SOF	3	sastre1
5213	733	4	el	\N	\N	SOF	3	sastre1
5214	733	5	sticker	\N	\N	SOF	2	sastre1
5215	733	6	.	\N	\N	SOF	999	sastre1
5210	733	1	fíjate	\N		SOF	3	sastre1
5217	734	2	.	\N	\N	KEV	999	sastre1
5216	734	1	mmhm	\N		KEV	0	sastre1
5219	735	2	parece	\N	\N	SOF	3	sastre1
5220	735	3	que	\N	\N	SOF	3	sastre1
5221	735	4	it	\N	\N	SOF	2	sastre1
5222	735	5	wasn't	\N	\N	SOF	2	sastre1
5223	735	6	in	\N	\N	SOF	2	sastre1
5224	735	7	the	\N	\N	SOF	2	sastre1
5225	735	8	system	\N	\N	SOF	2	sastre1
5226	735	9	yet	\N	\N	SOF	2	sastre1
5227	735	10	because	\N	\N	SOF	2	sastre1
5228	735	11	it	\N	\N	SOF	2	sastre1
5229	735	12	had	\N	\N	SOF	2	sastre1
5230	735	13	just	\N	\N	SOF	2	sastre1
5231	735	14	happened	\N	\N	SOF	2	sastre1
5232	735	15	.	\N	\N	SOF	999	sastre1
5218	735	1	pero	\N		SOF	3	sastre1
5234	736	2	.	\N	\N	KEV	999	sastre1
5233	736	1	mmhm	\N		KEV	0	sastre1
5236	737	2	they	\N	\N	SOF	2	sastre1
5237	737	3	fixed	\N	\N	SOF	2	sastre1
5238	737	4	the	\N	\N	SOF	2	sastre1
5239	737	5	car	\N	\N	SOF	2	sastre1
5240	737	6	.	\N	\N	SOF	999	sastre1
5235	737	1	so	\N		SOF	2	sastre1
5242	738	2	they	\N	\N	SOF	2	sastre1
5243	738	3	sold	\N	\N	SOF	2	sastre1
5244	738	4	it	\N	\N	SOF	2	sastre1
5245	738	5	to	\N	\N	SOF	2	sastre1
5246	738	6	us	\N	\N	SOF	2	sastre1
5247	738	7	thinking	\N	\N	SOF	2	sastre1
5248	738	8	que	\N	\N	SOF	3	sastre1
5249	738	9	no	\N	\N	SOF	3	sastre1
5250	738	10	nada	\N	\N	SOF	3	sastre1
5251	738	11	tenía	\N	\N	SOF	3	sastre1
5252	738	12	el	\N	\N	SOF	3	sastre1
5253	738	13	carro	\N	\N	SOF	3	sastre1
5254	738	14	.	\N	\N	SOF	999	sastre1
5241	738	1	and	\N		SOF	2	sastre1
5256	739	2	we	\N	\N	SOF	2	sastre1
5257	739	3	went	\N	\N	SOF	2	sastre1
5258	739	4	to	\N	\N	SOF	2	sastre1
5259	739	5	trade	\N	\N	SOF	2	sastre1
5260	739	6	in	\N	\N	SOF	2	sastre1
5261	739	7	the	\N	\N	SOF	2	sastre1
5262	739	8	car	\N	\N	SOF	2	sastre1
5263	739	9	for	\N	\N	SOF	2	sastre1
5264	739	10	the	\N	\N	SOF	2	sastre1
5265	739	11	Honda	\N	\N	SOF	0	sastre1
5266	739	12	the	\N	\N	SOF	2	sastre1
5267	739	13	guy	\N	\N	SOF	2	sastre1
5268	739	14	told	\N	\N	SOF	2	sastre1
5269	739	15	me	\N	\N	SOF	2	sastre1
5270	739	16	that	\N	\N	SOF	2	sastre1
5271	739	17	he	\N	\N	SOF	2	sastre1
5272	739	18	couldn't	\N	\N	SOF	2	sastre1
5273	739	19	take	\N	\N	SOF	2	sastre1
5274	739	20	that	\N	\N	SOF	2	sastre1
5275	739	21	car	\N	\N	SOF	2	sastre1
5276	739	22	.	\N	\N	SOF	999	sastre1
5255	739	1	when	\N		SOF	2	sastre1
5278	740	2	we	\N	\N	SOF	2	sastre1
5279	740	3	say	\N	\N	SOF	2	sastre1
5280	740	4	why	\N	\N	SOF	2	sastre1
5281	740	5	can't	\N	\N	SOF	2	sastre1
5282	740	6	you	\N	\N	SOF	2	sastre1
5283	740	7	take	\N	\N	SOF	2	sastre1
5284	740	8	this	\N	\N	SOF	2	sastre1
5285	740	9	car	\N	\N	SOF	2	sastre1
5286	740	10	?	\N	\N	SOF	999	sastre1
5277	740	1	and	\N		SOF	2	sastre1
5288	741	2	that	\N	\N	SOF	2	sastre1
5289	741	3	car	\N	\N	SOF	2	sastre1
5290	741	4	is	\N	\N	SOF	2	sastre1
5291	741	5	no	\N	\N	SOF	2	sastre1
5292	741	6	good	\N	\N	SOF	2	sastre1
5293	741	7	.	\N	\N	SOF	999	sastre1
5287	741	1	because	\N		SOF	2	sastre1
5295	742	2	.	\N	\N	KEV	999	sastre1
5294	742	1	mmhm	\N		KEV	0	sastre1
5297	743	2	been	\N	\N	SOF	2	sastre1
5298	743	3	crashed	\N	\N	SOF	2	sastre1
5299	743	4	from	\N	\N	SOF	2	sastre1
5300	743	5	the	\N	\N	SOF	2	sastre1
5301	743	6	front	\N	\N	SOF	2	sastre1
5302	743	7	.	\N	\N	SOF	999	sastre1
5296	743	1	it's	\N		SOF	2	sastre1
5304	744	2	.	\N	\N	KEV	999	sastre1
5303	744	1	mmhm	\N		KEV	0	sastre1
5306	745	2	they	\N	\N	SOF	2	sastre1
5307	745	3	put	\N	\N	SOF	2	sastre1
5308	745	4	a	\N	\N	SOF	2	sastre1
5309	745	5	special	\N	\N	SOF	2	sastre1
5310	745	6	sticker	\N	\N	SOF	2	sastre1
5311	745	7	when	\N	\N	SOF	2	sastre1
5312	745	8	you	\N	\N	SOF	2	sastre1
5313	745	9	open	\N	\N	SOF	2	sastre1
5314	745	10	up	\N	\N	SOF	2	sastre1
5315	745	11	the	\N	\N	SOF	2	sastre1
5316	745	12	door	\N	\N	SOF	2	sastre1
5317	745	13	of	\N	\N	SOF	2	sastre1
5318	745	14	the	\N	\N	SOF	2	sastre1
5319	745	15	car	\N	\N	SOF	2	sastre1
5320	745	16	on	\N	\N	SOF	2	sastre1
5321	745	17	the	\N	\N	SOF	2	sastre1
5322	745	18	side	\N	\N	SOF	2	sastre1
5323	745	19	right	\N	\N	SOF	2	sastre1
5324	745	20	there	\N	\N	SOF	2	sastre1
5325	745	21	.	\N	\N	SOF	999	sastre1
5305	745	1	and	\N		SOF	2	sastre1
5327	746	2	put	\N	\N	SOF	2	sastre1
5328	746	3	a	\N	\N	SOF	2	sastre1
5329	746	4	sticker	\N	\N	SOF	2	sastre1
5330	746	5	when	\N	\N	SOF	2	sastre1
5331	746	6	a	\N	\N	SOF	2	sastre1
5332	746	7	car	\N	\N	SOF	2	sastre1
5333	746	8	has	\N	\N	SOF	2	sastre1
5334	746	9	been	\N	\N	SOF	2	sastre1
5335	746	10	crashed	\N	\N	SOF	2	sastre1
5336	746	11	from	\N	\N	SOF	2	sastre1
5337	746	12	the	\N	\N	SOF	2	sastre1
5338	746	13	front	\N	\N	SOF	2	sastre1
5339	746	14	.	\N	\N	SOF	999	sastre1
5326	746	1	they	\N		SOF	2	sastre1
5341	747	2	of	\N	\N	SOF	2	sastre1
5342	747	3	.	\N	\N	SOF	999	sastre1
5340	747	1	because	\N		SOF	2	sastre1
5344	748	2	un	\N	\N	KEV	3	sastre1
5345	748	3	rebuilt	\N	\N	KEV	2	sastre1
5346	748	4	.	\N	\N	KEV	999	sastre1
5343	748	1	como	\N		KEV	3	sastre1
5348	749	2	.	\N	\N	SOF	999	sastre1
5347	749	1	yes	\N		SOF	2	sastre1
5350	750	2	.	\N	\N	KEV	999	sastre1
5349	750	1	mmhm	\N		KEV	0	sastre1
5352	751	2	they	\N	\N	SOF	2	sastre1
5353	751	3	wouldn't	\N	\N	SOF	2	sastre1
5354	751	4	take	\N	\N	SOF	2	sastre1
5355	751	5	the	\N	\N	SOF	2	sastre1
5356	751	6	car	\N	\N	SOF	2	sastre1
5357	751	7	for	\N	\N	SOF	2	sastre1
5358	751	8	nothing	\N	\N	SOF	2	sastre1
5359	751	9	.	\N	\N	SOF	999	sastre1
5351	751	1	and	\N		SOF	2	sastre1
5361	752	2	tú	\N	\N	KEV	3	sastre1
5362	752	3	sabes	\N	\N	KEV	3	sastre1
5363	752	4	.	\N	\N	KEV	999	sastre1
5360	752	1	ya	\N		KEV	3	sastre1
5365	753	2	ni	\N	\N	SOF	3	sastre1
5364	753	1	no	\N		SOF	3	sastre1
5366	753	3	lo	\N	\N	SOF	3	sastre1
5367	753	4	querían	\N	\N	SOF	3	sastre1
5368	753	5	.	\N	\N	SOF	999	sastre1
5370	754	2	said	\N	\N	SOF	2	sastre1
5371	754	3	no	\N	\N	SOF	2	sastre1
5372	754	4	we	\N	\N	SOF	2	sastre1
5373	754	5	don't	\N	\N	SOF	2	sastre1
5374	754	6	want	\N	\N	SOF	2	sastre1
5375	754	7	this	\N	\N	SOF	2	sastre1
5376	754	8	.	\N	\N	SOF	999	sastre1
5369	754	1	they	\N		SOF	2	sastre1
5378	755	2	is	\N	\N	SOF	2	sastre1
5379	755	3	the	\N	\N	SOF	2	sastre1
5380	755	4	liability	\N	\N	SOF	2	sastre1
5381	755	5	for	\N	\N	SOF	2	sastre1
5382	755	6	us	\N	\N	SOF	2	sastre1
5383	755	7	.	\N	\N	SOF	999	sastre1
5377	755	1	this	\N		SOF	2	sastre1
5385	756	2	.	\N	\N	KEV	999	sastre1
5384	756	1	mmhm	\N		KEV	0	sastre1
5387	757	2	try	\N	\N	SOF	2	sastre1
5388	757	3	to	\N	\N	SOF	2	sastre1
5389	757	4	sell	\N	\N	SOF	2	sastre1
5390	757	5	it	\N	\N	SOF	2	sastre1
5391	757	6	the	\N	\N	SOF	2	sastre1
5392	757	7	best	\N	\N	SOF	2	sastre1
5393	757	8	way	\N	\N	SOF	2	sastre1
5394	757	9	you	\N	\N	SOF	2	sastre1
5395	757	10	can	\N	\N	SOF	2	sastre1
5396	757	11	.	\N	\N	SOF	999	sastre1
5386	757	1	you	\N		SOF	2	sastre1
5398	758	2	I	\N	\N	SOF	2	sastre1
5399	758	3	told	\N	\N	SOF	2	sastre1
5400	758	4	let's	\N	\N	SOF	2	sastre1
5401	758	5	sue	\N	\N	SOF	2	sastre1
5402	758	6	the	\N	\N	SOF	2	sastre1
5403	758	7	guy	\N	\N	SOF	2	sastre1
5404	758	8	who	\N	\N	SOF	2	sastre1
5405	758	9	sold	\N	\N	SOF	2	sastre1
5406	758	10	you	\N	\N	SOF	2	sastre1
5407	758	11	the	\N	\N	SOF	2	sastre1
5408	758	12	car	\N	\N	SOF	2	sastre1
5409	758	13	.	\N	\N	SOF	999	sastre1
5397	758	1	and	\N		SOF	2	sastre1
5411	759	2	no	\N	\N	SOF	2	sastre1
5412	759	3	no	\N	\N	SOF	2	sastre1
5413	759	4	no	\N	\N	SOF	2	sastre1
5414	759	5	I	\N	\N	SOF	2	sastre1
5415	759	6	don't	\N	\N	SOF	2	sastre1
5416	759	7	wanna	\N	\N	SOF	2	sastre1
5417	759	8	worry	\N	\N	SOF	2	sastre1
5418	759	9	.	\N	\N	SOF	999	sastre1
5410	759	1	no	\N		SOF	2	sastre1
5420	760	2	.	\N	\N	KEV	999	sastre1
5419	760	1	sí	\N		KEV	3	sastre1
5422	761	2	know	\N	\N	SOF	2	sastre1
5423	761	3	I	\N	\N	SOF	2	sastre1
5424	761	4	don't	\N	\N	SOF	2	sastre1
5425	761	5	wanna	\N	\N	SOF	2	sastre1
5426	761	6	deal	\N	\N	SOF	2	sastre1
5427	761	7	with	\N	\N	SOF	2	sastre1
5428	761	8	that	\N	\N	SOF	2	sastre1
5429	761	9	.	\N	\N	SOF	999	sastre1
5421	761	1	you	\N		SOF	2	sastre1
5431	762	2	.	\N	\N	KEV	999	sastre1
5430	762	1	sí	\N		KEV	3	sastre1
5433	763	2	ok	\N	\N	KEV	0	sastre1
5434	763	3	.	\N	\N	KEV	999	sastre1
5432	763	1	oh	\N		KEV	0	sastre1
5435	764	1	.	\N		SOF	999	sastre1
5437	765	2	mmhm	\N	\N	KEV	0	sastre1
5438	765	3	.	\N	\N	KEV	999	sastre1
5436	765	1	mmhm	\N		KEV	0	sastre1
5440	766	2	.	\N	\N	SOF	999	sastre1
5439	766	1	hello	\N		SOF	2	sastre1
5442	767	2	we	\N	\N	KEV	2	sastre1
5443	767	3	.	\N	\N	KEV	999	sastre1
5441	767	1	are	\N		KEV	2	sastre1
5445	768	2	don't	\N	\N	SOF	2	sastre1
5446	768	3	know	\N	\N	SOF	2	sastre1
5447	768	4	if	\N	\N	SOF	2	sastre1
5448	768	5	we	\N	\N	SOF	2	sastre1
5449	768	6	are	\N	\N	SOF	2	sastre1
5450	768	7	almost	\N	\N	SOF	2	sastre1
5451	768	8	over	\N	\N	SOF	2	sastre1
5452	768	9	.	\N	\N	SOF	999	sastre1
5444	768	1	I	\N		SOF	2	sastre1
5454	769	2	been	\N	\N	SOF	2	sastre1
5455	769	3	talking	\N	\N	SOF	2	sastre1
5456	769	4	so	\N	\N	SOF	2	sastre1
5457	769	5	much	\N	\N	SOF	2	sastre1
5458	769	6	already	\N	\N	SOF	2	sastre1
5459	769	7	.	\N	\N	SOF	999	sastre1
5453	769	1	we've	\N		SOF	2	sastre1
5461	770	2	we	\N	\N	KEV	2	sastre1
5462	770	3	on	\N	\N	KEV	2	sastre1
5463	770	4	time	\N	\N	KEV	2	sastre1
5464	770	5	?	\N	\N	KEV	999	sastre1
5460	770	1	are	\N		KEV	2	sastre1
5466	771	2	think	\N	\N	SOF	2	sastre1
5467	771	3	they	\N	\N	SOF	2	sastre1
5468	771	4	forgot	\N	\N	SOF	2	sastre1
5469	771	5	about	\N	\N	SOF	2	sastre1
5470	771	6	us	\N	\N	SOF	2	sastre1
5471	771	7	.	\N	\N	SOF	999	sastre1
5465	771	1	I	\N		SOF	2	sastre1
5473	772	2	talking	\N	\N	SOF	2	sastre1
5474	772	3	.	\N	\N	SOF	999	sastre1
5472	772	1	keep	\N		SOF	2	sastre1
5476	773	2	on	\N	\N	KEV	2	sastre1
5477	773	3	talking	\N	\N	KEV	2	sastre1
5478	773	4	.	\N	\N	KEV	999	sastre1
5475	773	1	keep	\N		KEV	2	sastre1
5480	774	2	more	\N	\N	KEV	2	sastre1
5481	774	3	minutes	\N	\N	KEV	2	sastre1
5482	774	4	five	\N	\N	KEV	2	sastre1
5483	774	5	more	\N	\N	KEV	2	sastre1
5484	774	6	minutes	\N	\N	KEV	2	sastre1
5485	774	7	.	\N	\N	KEV	999	sastre1
5479	774	1	four	\N		KEV	2	sastre1
5487	775	2	got	\N	\N	SOF	2	sastre1
5488	775	3	five	\N	\N	SOF	2	sastre1
5489	775	4	more	\N	\N	SOF	2	sastre1
5486	775	1	we	\N		SOF	2	sastre1
5490	775	5	minutes	\N	\N	SOF	2	sastre1
5491	775	6	.	\N	\N	SOF	999	sastre1
5493	776	2	.	\N	\N	KEV	999	sastre1
5492	776	1	mmhm	\N		KEV	0	sastre1
5494	777	1	.	\N		SOF	999	sastre1
5496	778	2	are	\N	\N	SOF	2	sastre1
5497	778	3	tired	\N	\N	SOF	2	sastre1
5498	778	4	talking	\N	\N	SOF	2	sastre1
5499	778	5	to	\N	\N	SOF	2	sastre1
5500	778	6	each	\N	\N	SOF	2	sastre1
5501	778	7	other	\N	\N	SOF	2	sastre1
5502	778	8	we	\N	\N	SOF	2	sastre1
5503	778	9	wanna	\N	\N	SOF	2	sastre1
5504	778	10	watch	\N	\N	SOF	2	sastre1
5505	778	11	the	\N	\N	SOF	2	sastre1
5506	778	12	news	\N	\N	SOF	2	sastre1
5507	778	13	and	\N	\N	SOF	2	sastre1
5508	778	14	the	\N	\N	SOF	2	sastre1
5509	778	15	tv	\N	\N	SOF	0	sastre1
5510	778	16	right	\N	\N	SOF	2	sastre1
5511	778	17	now	\N	\N	SOF	2	sastre1
5512	778	18	.	\N	\N	SOF	999	sastre1
5495	778	1	we	\N		SOF	2	sastre1
5514	779	2	.	\N	\N	KEV	999	sastre1
5513	779	1	mmhm	\N		KEV	0	sastre1
5515	780	1	.	\N		SOF	999	sastre1
5517	781	2	sí	\N	\N	KEV	3	sastre1
5518	781	3	lo	\N	\N	KEV	3	sastre1
5519	781	4	de	\N	\N	KEV	3	sastre1
5520	781	5	Chili's	\N	\N	KEV	0	sastre1
5521	781	6	está	\N	\N	KEV	3	sastre1
5522	781	7	impresionante	\N	\N	KEV	3	sastre1
5523	781	8	no	\N	\N	KEV	3	sastre1
5524	781	9	verdad	\N	\N	KEV	3	sastre1
5525	781	10	?	\N	\N	KEV	999	sastre1
5516	781	1	pues	\N		KEV	3	sastre1
5527	782	2	tiroteo	\N	\N	KEV	3	sastre1
5528	782	3	ese	\N	\N	KEV	3	sastre1
5529	782	4	ahí	\N	\N	KEV	3	sastre1
5530	782	5	en	\N	\N	KEV	3	sastre1
5531	782	6	Chili's	\N	\N	KEV	0	sastre1
5532	782	7	.	\N	\N	KEV	999	sastre1
5526	782	1	el	\N		KEV	3	sastre1
5534	783	2	.	\N	\N	SOF	999	sastre1
5533	783	1	yes	\N		SOF	2	sastre1
5536	784	2	los	\N	\N	KEV	3	sastre1
5537	784	3	otros	\N	\N	KEV	3	sastre1
5538	784	4	días	\N	\N	KEV	3	sastre1
5539	784	5	el	\N	\N	KEV	3	sastre1
5540	784	6	tiroteo	\N	\N	KEV	3	sastre1
5541	784	7	en	\N	\N	KEV	3	sastre1
5542	784	8	el	\N	\N	KEV	3	sastre1
5543	784	9	colegio	\N	\N	KEV	3	sastre1
5544	784	10	.	\N	\N	KEV	999	sastre1
5535	784	1	y	\N		KEV	3	sastre1
5546	785	2	.	\N	\N	SOF	999	sastre1
5545	785	1	yeah	\N		SOF	2	sastre1
5548	786	2	ayer	\N	\N	KEV	3	sastre1
5549	786	3	o	\N	\N	KEV	3	sastre1
5550	786	4	anteayer	\N	\N	KEV	3	sastre1
5551	786	5	el	\N	\N	KEV	3	sastre1
5552	786	6	riot	\N	\N	KEV	2	sastre1
5553	786	7	en	\N	\N	KEV	3	sastre1
5554	786	8	el	\N	\N	KEV	3	sastre1
5555	786	9	Edison	\N	\N	KEV	0	sastre1
5556	786	10	.	\N	\N	KEV	999	sastre1
5547	786	1	y	\N		KEV	3	sastre1
5557	787	1	.	\N		SOF	999	sastre1
5559	788	2	.	\N	\N	SOF	999	sastre1
5558	788	1	Edison	\N		SOF	0	sastre1
5561	789	2	el	\N	\N	KEV	3	sastre1
5562	789	3	otro	\N	\N	KEV	3	sastre1
5563	789	4	.	\N	\N	KEV	999	sastre1
5560	789	1	en	\N		KEV	3	sastre1
5565	790	2	está	\N	\N	KEV	3	sastre1
5566	790	3	calientica	\N	\N	KEV	3	sastre1
5567	790	4	la	\N	\N	KEV	3	sastre1
5568	790	5	calle	\N	\N	KEV	3	sastre1
5569	790	6	.	\N	\N	KEV	999	sastre1
5564	790	1	esto	\N		KEV	3	sastre1
5571	791	2	dónde	\N	\N	KEV	3	sastre1
5572	791	3	fue	\N	\N	KEV	3	sastre1
5573	791	4	otro	\N	\N	KEV	3	sastre1
5574	791	5	lugar	\N	\N	KEV	3	sastre1
5575	791	6	aquí	\N	\N	KEV	3	sastre1
5576	791	7	también	\N	\N	KEV	3	sastre1
5577	791	8	que	\N	\N	KEV	3	sastre1
5578	791	9	tirotearon	\N	\N	KEV	3	sastre1
5579	791	10	?	\N	\N	KEV	999	sastre1
5570	791	1	y	\N		KEV	3	sastre1
5581	792	2	otros	\N	\N	KEV	3	sastre1
5582	792	3	días	\N	\N	KEV	3	sastre1
5583	792	4	aquí	\N	\N	KEV	3	sastre1
5584	792	5	pegaditos	\N	\N	KEV	3	sastre1
5585	792	6	nosotros	\N	\N	KEV	3	sastre1
5586	792	7	.	\N	\N	KEV	999	sastre1
5580	792	1	los	\N		KEV	3	sastre1
5588	793	2	yo	\N	\N	SOF	3	sastre1
5589	793	3	pero	\N	\N	SOF	3	sastre1
5590	793	4	no	\N	\N	SOF	3	sastre1
5591	793	5	fue	\N	\N	SOF	3	sastre1
5592	793	6	four	\N	\N	SOF	2	sastre1
5593	793	7	forty	\N	\N	SOF	2	sastre1
5594	793	8	one	\N	\N	SOF	2	sastre1
5595	793	9	ahí	\N	\N	SOF	3	sastre1
5596	793	10	en	\N	\N	SOF	3	sastre1
5597	793	11	la	\N	\N	SOF	3	sastre1
5598	793	12	four	\N	\N	SOF	2	sastre1
5587	793	1	no	\N		SOF	3	sastre1
5599	793	13	forty	\N	\N	SOF	2	sastre1
5600	793	14	one	\N	\N	SOF	2	sastre1
5601	793	15	yo	\N	\N	SOF	3	sastre1
5602	793	16	creo	\N	\N	SOF	3	sastre1
5603	793	17	que	\N	\N	SOF	3	sastre1
5604	793	18	fue	\N	\N	SOF	3	sastre1
5605	793	19	un	\N	\N	SOF	3	sastre1
5606	793	20	poquito	\N	\N	SOF	3	sastre1
5607	793	21	más	\N	\N	SOF	3	sastre1
5608	793	22	para	\N	\N	SOF	3	sastre1
5609	793	23	allá	\N	\N	SOF	3	sastre1
5610	793	24	.	\N	\N	SOF	999	sastre1
5612	794	2	pero	\N	\N	KEV	3	sastre1
5613	794	3	er	\N	\N	KEV	0	sastre1
5614	794	4	estuvo	\N	\N	KEV	3	sastre1
5615	794	5	Chili's	\N	\N	KEV	0	sastre1
5616	794	6	.	\N	\N	KEV	999	sastre1
5611	794	1	no	\N		KEV	3	sastre1
5618	795	2	Chili's	\N	\N	KEV	0	sastre1
5619	795	3	habían	\N	\N	KEV	3	sastre1
5620	795	4	robado	\N	\N	KEV	3	sastre1
5621	795	5	y	\N	\N	KEV	3	sastre1
5622	795	6	habían	\N	\N	KEV	3	sastre1
5623	795	7	tiroteado	\N	\N	KEV	3	sastre1
5624	795	8	a	\N	\N	KEV	3	sastre1
5625	795	9	alguien	\N	\N	KEV	3	sastre1
5626	795	10	hace	\N	\N	KEV	3	sastre1
5627	795	11	unos	\N	\N	KEV	3	sastre1
5628	795	12	días	\N	\N	KEV	3	sastre1
5629	795	13	atrás	\N	\N	KEV	3	sastre1
5630	795	14	.	\N	\N	KEV	999	sastre1
5617	795	1	en	\N		KEV	3	sastre1
5632	796	2	ahora	\N	\N	KEV	3	sastre1
5633	796	3	se	\N	\N	KEV	3	sastre1
5634	796	4	formó	\N	\N	KEV	3	sastre1
5635	796	5	un	\N	\N	KEV	3	sastre1
5636	796	6	tiroteo	\N	\N	KEV	3	sastre1
5637	796	7	de	\N	\N	KEV	3	sastre1
5638	796	8	nuevo	\N	\N	KEV	3	sastre1
5639	796	9	.	\N	\N	KEV	999	sastre1
5631	796	1	y	\N		KEV	3	sastre1
5641	797	2	había	\N	\N	KEV	3	sastre1
5642	797	3	otro	\N	\N	KEV	3	sastre1
5643	797	4	lugar	\N	\N	KEV	3	sastre1
5644	797	5	más	\N	\N	KEV	3	sastre1
5645	797	6	que	\N	\N	KEV	3	sastre1
5646	797	7	había	\N	\N	KEV	3	sastre1
5647	797	8	habido	\N	\N	KEV	3	sastre1
5648	797	9	un	\N	\N	KEV	3	sastre1
5649	797	10	robo	\N	\N	KEV	3	sastre1
5650	797	11	un	\N	\N	KEV	3	sastre1
5651	797	12	tiroteo	\N	\N	KEV	3	sastre1
5652	797	13	.	\N	\N	KEV	999	sastre1
5640	797	1	pero	\N		KEV	3	sastre1
5654	798	2	calle	\N	\N	KEV	3	sastre1
5655	798	3	está	\N	\N	KEV	3	sastre1
5656	798	4	que	\N	\N	KEV	3	sastre1
5657	798	5	mete	\N	\N	KEV	3	sastre1
5658	798	6	miedo	\N	\N	KEV	3	sastre1
5659	798	7	.	\N	\N	KEV	999	sastre1
5653	798	1	la	\N		KEV	3	sastre1
5661	799	2	.	\N	\N	SOF	999	sastre1
5660	799	1	claro	\N		SOF	3	sastre1
5663	800	2	.	\N	\N	KEV	999	sastre1
5662	800	1	mmhm	\N		KEV	0	sastre1
5665	801	2	gente	\N	\N	SOF	3	sastre1
5666	801	3	está	\N	\N	SOF	3	sastre1
5667	801	4	desesperada	\N	\N	SOF	3	sastre1
5668	801	5	.	\N	\N	SOF	999	sastre1
5664	801	1	la	\N		SOF	3	sastre1
5670	802	2	.	\N	\N	KEV	999	sastre1
5669	802	1	sí	\N		KEV	3	sastre1
5672	803	2	gente	\N	\N	KEV	3	sastre1
5673	803	3	estaba	\N	\N	KEV	3	sastre1
5674	803	4	desesperada	\N	\N	KEV	3	sastre1
5675	803	5	para	\N	\N	KEV	3	sastre1
5676	803	6	tratar	\N	\N	KEV	3	sastre1
5677	803	7	de	\N	\N	KEV	3	sastre1
5678	803	8	resolverlo	\N	\N	KEV	3	sastre1
5679	803	9	a	\N	\N	KEV	3	sastre1
5680	803	10	cualquier	\N	\N	KEV	3	sastre1
5681	803	11	costo	\N	\N	KEV	3	sastre1
5682	803	12	.	\N	\N	KEV	999	sastre1
5671	803	1	la	\N		KEV	3	sastre1
5683	804	1	.	\N		SOF	999	sastre1
5685	805	2	mmhm	\N	\N	KEV	0	sastre1
5686	805	3	.	\N	\N	KEV	999	sastre1
5684	805	1	mmhm	\N		KEV	0	sastre1
5687	806	1	.	\N		SOF	999	sastre1
5689	807	2	muchachitos	\N	\N	KEV	3	sastre1
5690	807	3	se	\N	\N	KEV	3	sastre1
5691	807	4	han	\N	\N	KEV	3	sastre1
5692	807	5	pasado	\N	\N	KEV	3	sastre1
5693	807	6	todo	\N	\N	KEV	3	sastre1
5694	807	7	el	\N	\N	KEV	3	sastre1
5695	807	8	día	\N	\N	KEV	3	sastre1
5696	807	9	ahí	\N	\N	KEV	3	sastre1
5697	807	10	pescando	\N	\N	KEV	3	sastre1
5698	807	11	.	\N	\N	KEV	999	sastre1
5688	807	1	estos	\N		KEV	3	sastre1
5700	808	2	compran	\N	\N	KEV	3	sastre1
5701	808	3	.	\N	\N	KEV	999	sastre1
5699	808	1	y	\N		KEV	3	sastre1
5703	809	2	at	\N	\N	SOF	2	sastre1
5704	809	3	least	\N	\N	SOF	2	sastre1
5705	809	4	they	\N	\N	SOF	2	sastre1
5706	809	5	do	\N	\N	SOF	2	sastre1
5707	809	6	.	\N	\N	SOF	999	sastre1
5702	809	1	ay	\N		SOF	3	sastre1
5709	810	2	.	\N	\N	KEV	999	sastre1
5708	810	1	yeah	\N		KEV	2	sastre1
5711	811	2	are	\N	\N	SOF	2	sastre1
5712	811	3	doing	\N	\N	SOF	2	sastre1
5713	811	4	something	\N	\N	SOF	2	sastre1
5714	811	5	better	\N	\N	SOF	2	sastre1
5715	811	6	than	\N	\N	SOF	2	sastre1
5716	811	7	watching	\N	\N	SOF	2	sastre1
5717	811	8	er	\N	\N	SOF	0	sastre1
5718	811	9	tv	\N	\N	SOF	0	sastre1
5719	811	10	and	\N	\N	SOF	2	sastre1
5720	811	11	computers	\N	\N	SOF	2	sastre1
5721	811	12	all	\N	\N	SOF	2	sastre1
5710	811	1	they	\N		SOF	2	sastre1
5722	811	13	day	\N	\N	SOF	2	sastre1
5723	811	14	.	\N	\N	SOF	999	sastre1
5725	812	2	yeah	\N	\N	KEV	2	sastre1
5726	812	3	.	\N	\N	KEV	999	sastre1
5724	812	1	yeah	\N		KEV	2	sastre1
5728	813	2	they'll	\N	\N	KEV	2	sastre1
5729	813	3	be	\N	\N	KEV	2	sastre1
5730	813	4	catching	\N	\N	KEV	2	sastre1
5731	813	5	fish	\N	\N	KEV	2	sastre1
5732	813	6	because	\N	\N	KEV	2	sastre1
5733	813	7	you	\N	\N	KEV	2	sastre1
5734	813	8	see	\N	\N	KEV	2	sastre1
5735	813	9	them	\N	\N	KEV	2	sastre1
5736	813	10	you	\N	\N	KEV	2	sastre1
5737	813	11	know	\N	\N	KEV	2	sastre1
5738	813	12	bringing	\N	\N	KEV	2	sastre1
5739	813	13	up	\N	\N	KEV	2	sastre1
5740	813	14	fish	\N	\N	KEV	2	sastre1
5741	813	15	every	\N	\N	KEV	2	sastre1
5742	813	16	once	\N	\N	KEV	2	sastre1
5743	813	17	in	\N	\N	KEV	2	sastre1
5744	813	18	a	\N	\N	KEV	2	sastre1
5745	813	19	while	\N	\N	KEV	2	sastre1
5746	813	20	.	\N	\N	KEV	999	sastre1
5727	813	1	no	\N		KEV	2	sastre1
5748	814	2	.	\N	\N	KEV	999	sastre1
5747	814	1	mmhm	\N		KEV	0	sastre1
5750	815	2	ya	\N	\N	KEV	3	sastre1
5751	815	3	le	\N	\N	KEV	3	sastre1
5752	815	4	está	\N	\N	KEV	3	sastre1
5753	815	5	cogiendo	\N	\N	KEV	3	sastre1
5754	815	6	la	\N	\N	KEV	3	sastre1
5755	815	7	noche	\N	\N	KEV	3	sastre1
5756	815	8	y	\N	\N	KEV	3	sastre1
5757	815	9	ya	\N	\N	KEV	3	sastre1
5758	815	10	se	\N	\N	KEV	3	sastre1
5759	815	11	van	\N	\N	KEV	3	sastre1
5760	815	12	.	\N	\N	KEV	999	sastre1
5749	815	1	pero	\N		KEV	3	sastre1
5762	816	2	are	\N	\N	SOF	2	sastre1
5763	816	3	they	\N	\N	SOF	2	sastre1
5764	816	4	planning	\N	\N	SOF	2	sastre1
5765	816	5	on	\N	\N	SOF	2	sastre1
5766	816	6	doing	\N	\N	SOF	2	sastre1
5767	816	7	something	\N	\N	SOF	2	sastre1
5768	816	8	on	\N	\N	SOF	2	sastre1
5769	816	9	the	\N	\N	SOF	2	sastre1
5770	816	10	lake	\N	\N	SOF	2	sastre1
5771	816	11	like	\N	\N	SOF	2	sastre1
5772	816	12	cleaning	\N	\N	SOF	2	sastre1
5773	816	13	?	\N	\N	SOF	999	sastre1
5761	816	1	and	\N		SOF	2	sastre1
5775	817	2	you	\N	\N	SOF	2	sastre1
5776	817	3	heard	\N	\N	SOF	2	sastre1
5777	817	4	anything	\N	\N	SOF	2	sastre1
5778	817	5	?	\N	\N	SOF	999	sastre1
5774	817	1	have	\N		SOF	2	sastre1
5780	818	2	haven't	\N	\N	SOF	2	sastre1
5781	818	3	mentioned	\N	\N	SOF	2	sastre1
5782	818	4	anything	\N	\N	SOF	2	sastre1
5783	818	5	about	\N	\N	SOF	2	sastre1
5784	818	6	that	\N	\N	SOF	2	sastre1
5785	818	7	?	\N	\N	SOF	999	sastre1
5779	818	1	they	\N		SOF	2	sastre1
5787	819	2	.	\N	\N	KEV	999	sastre1
5786	819	1	no	\N		KEV	2	sastre1
5789	820	2	there	\N	\N	KEV	2	sastre1
5790	820	3	is	\N	\N	KEV	2	sastre1
5791	820	4	not	\N	\N	KEV	2	sastre1
5792	820	5	.	\N	\N	KEV	999	sastre1
5788	820	1	no	\N		KEV	2	sastre1
5794	821	2	I	\N	\N	SOF	2	sastre1
5795	821	3	think	\N	\N	SOF	2	sastre1
5796	821	4	it's	\N	\N	SOF	2	sastre1
5797	821	5	been	\N	\N	SOF	2	sastre1
5798	821	6	a	\N	\N	SOF	2	sastre1
5799	821	7	while	\N	\N	SOF	2	sastre1
5800	821	8	.	\N	\N	SOF	999	sastre1
5793	821	1	because	\N		SOF	2	sastre1
5802	822	2	mean	\N	\N	SOF	2	sastre1
5803	822	3	we've	\N	\N	SOF	2	sastre1
5804	822	4	been	\N	\N	SOF	2	sastre1
5805	822	5	moved	\N	\N	SOF	2	sastre1
5806	822	6	in	\N	\N	SOF	2	sastre1
5807	822	7	here	\N	\N	SOF	2	sastre1
5808	822	8	for	\N	\N	SOF	2	sastre1
5809	822	9	almost	\N	\N	SOF	2	sastre1
5810	822	10	sixteen	\N	\N	SOF	2	sastre1
5811	822	11	yo	\N	\N	SOF	3	sastre1
5812	822	12	creo	\N	\N	SOF	3	sastre1
5813	822	13	que	\N	\N	SOF	3	sastre1
5814	822	14	like	\N	\N	SOF	2	sastre1
5815	822	15	fifteen	\N	\N	SOF	2	sastre1
5816	822	16	or	\N	\N	SOF	2	sastre1
5817	822	17	sixteen	\N	\N	SOF	2	sastre1
5818	822	18	years	\N	\N	SOF	2	sastre1
5819	822	19	and	\N	\N	SOF	2	sastre1
5820	822	20	they	\N	\N	SOF	2	sastre1
5821	822	21	haven't	\N	\N	SOF	2	sastre1
5822	822	22	done	\N	\N	SOF	2	sastre1
5823	822	23	anything	\N	\N	SOF	2	sastre1
5824	822	24	.	\N	\N	SOF	999	sastre1
5801	822	1	I	\N		SOF	2	sastre1
5826	823	2	you	\N	\N	KEV	2	sastre1
5827	823	3	know	\N	\N	KEV	2	sastre1
5828	823	4	the	\N	\N	KEV	2	sastre1
5829	823	5	thing	\N	\N	KEV	2	sastre1
5830	823	6	here	\N	\N	KEV	2	sastre1
5831	823	7	is	\N	\N	KEV	2	sastre1
5832	823	8	that	\N	\N	KEV	2	sastre1
5833	823	9	the	\N	\N	KEV	2	sastre1
5834	823	10	lake	\N	\N	KEV	2	sastre1
5835	823	11	doesn't	\N	\N	KEV	2	sastre1
5836	823	12	belong	\N	\N	KEV	2	sastre1
5825	823	1	because	\N		KEV	2	sastre1
5837	823	13	just	\N	\N	KEV	2	sastre1
5838	823	14	to	\N	\N	KEV	2	sastre1
5839	823	15	one	\N	\N	KEV	2	sastre1
5840	823	16	entity	\N	\N	KEV	2	sastre1
5841	823	17	.	\N	\N	KEV	999	sastre1
5843	824	2	part	\N	\N	KEV	2	sastre1
5844	824	3	of	\N	\N	KEV	2	sastre1
5845	824	4	the	\N	\N	KEV	2	sastre1
5846	824	5	lake	\N	\N	KEV	2	sastre1
5847	824	6	is	\N	\N	KEV	2	sastre1
5848	824	7	the	\N	\N	KEV	2	sastre1
5849	824	8	water	\N	\N	KEV	2	sastre1
5850	824	9	management	\N	\N	KEV	2	sastre1
5851	824	10	district	\N	\N	KEV	2	sastre1
5852	824	11	.	\N	\N	KEV	999	sastre1
5842	824	1	the	\N		KEV	2	sastre1
5854	825	2	then	\N	\N	KEV	2	sastre1
5855	825	3	when	\N	\N	KEV	2	sastre1
5856	825	4	you	\N	\N	KEV	2	sastre1
5857	825	5	come	\N	\N	KEV	2	sastre1
5858	825	6	from	\N	\N	KEV	2	sastre1
5859	825	7	like	\N	\N	KEV	2	sastre1
5860	825	8	the	\N	\N	KEV	2	sastre1
5861	825	9	thirteen	\N	\N	KEV	2	sastre1
5862	825	10	feet	\N	\N	KEV	2	sastre1
5863	825	11	.	\N	\N	KEV	999	sastre1
5853	825	1	pero	\N		KEV	3	sastre1
5865	826	2	strip	\N	\N	KEV	2	sastre1
5866	826	3	there	\N	\N	KEV	2	sastre1
5867	826	4	el	\N	\N	KEV	3	sastre1
5868	826	5	canal	\N	\N	KEV	3	sastre1
5869	826	6	.	\N	\N	KEV	999	sastre1
5864	826	1	that	\N		KEV	2	sastre1
5871	827	2	.	\N	\N	SOF	999	sastre1
5870	827	1	mmhm	\N		SOF	0	sastre1
5873	828	2	a	\N	\N	KEV	2	sastre1
5874	828	3	water	\N	\N	KEV	2	sastre1
5875	828	4	management	\N	\N	KEV	2	sastre1
5876	828	5	.	\N	\N	KEV	999	sastre1
5872	828	1	is	\N		KEV	2	sastre1
5878	829	2	then	\N	\N	KEV	2	sastre1
5879	829	3	when	\N	\N	KEV	2	sastre1
5880	829	4	you	\N	\N	KEV	2	sastre1
5881	829	5	come	\N	\N	KEV	2	sastre1
5882	829	6	into	\N	\N	KEV	2	sastre1
5883	829	7	the	\N	\N	KEV	2	sastre1
5884	829	8	lake	\N	\N	KEV	2	sastre1
5885	829	9	that's	\N	\N	KEV	2	sastre1
5886	829	10	Miami_Lakes	\N	\N	KEV	0	sastre1
5887	829	11	.	\N	\N	KEV	999	sastre1
5877	829	1	but	\N		KEV	2	sastre1
5889	830	2	the	\N	\N	KEV	2	sastre1
5890	830	3	residence	\N	\N	KEV	2	sastre1
5891	830	4	of	\N	\N	KEV	2	sastre1
5892	830	5	Miami_Lakes	\N	\N	KEV	0	sastre1
5893	830	6	in	\N	\N	KEV	2	sastre1
5894	830	7	that	\N	\N	KEV	2	sastre1
5895	830	8	so	\N	\N	KEV	2	sastre1
5896	830	9	since	\N	\N	KEV	2	sastre1
5897	830	10	it's	\N	\N	KEV	2	sastre1
5898	830	11	such	\N	\N	KEV	2	sastre1
5899	830	12	a	\N	\N	KEV	2	sastre1
5900	830	13	mix	\N	\N	KEV	2	sastre1
5901	830	14	they	\N	\N	KEV	2	sastre1
5902	830	15	don't	\N	\N	KEV	2	sastre1
5903	830	16	do	\N	\N	KEV	2	sastre1
5904	830	17	anything	\N	\N	KEV	2	sastre1
5905	830	18	.	\N	\N	KEV	999	sastre1
5888	830	1	is	\N		KEV	2	sastre1
5907	831	2	had	\N	\N	KEV	2	sastre1
5908	831	3	a	\N	\N	KEV	2	sastre1
5909	831	4	.	\N	\N	KEV	999	sastre1
5906	831	1	I	\N		KEV	2	sastre1
5911	832	2	we	\N	\N	KEV	2	sastre1
5912	832	3	first	\N	\N	KEV	2	sastre1
5913	832	4	moved	\N	\N	KEV	2	sastre1
5914	832	5	here	\N	\N	KEV	2	sastre1
5915	832	6	not	\N	\N	KEV	2	sastre1
5916	832	7	when	\N	\N	KEV	2	sastre1
5917	832	8	we	\N	\N	KEV	2	sastre1
5918	832	9	first	\N	\N	KEV	2	sastre1
5919	832	10	moved	\N	\N	KEV	2	sastre1
5920	832	11	here	\N	\N	KEV	2	sastre1
5921	832	12	.	\N	\N	KEV	999	sastre1
5910	832	1	when	\N		KEV	2	sastre1
5923	833	2	fueron	\N	\N	KEV	3	sastre1
5924	833	3	las	\N	\N	KEV	3	sastre1
5925	833	4	elecciones	\N	\N	KEV	3	sastre1
5926	833	5	de	\N	\N	KEV	3	sastre1
5927	833	6	aquí	\N	\N	KEV	3	sastre1
5928	833	7	en	\N	\N	KEV	3	sastre1
5929	833	8	Miami_Lakes	\N	\N	KEV	0	sastre1
5930	833	9	que	\N	\N	KEV	3	sastre1
5931	833	10	se	\N	\N	KEV	3	sastre1
5932	833	11	formó	\N	\N	KEV	3	sastre1
5933	833	12	el	\N	\N	KEV	3	sastre1
5934	833	13	primer	\N	\N	KEV	3	sastre1
5935	833	14	viaje	\N	\N	KEV	3	sastre1
5936	833	15	.	\N	\N	KEV	999	sastre1
5922	833	1	cuando	\N		KEV	3	sastre1
5938	834	2	.	\N	\N	SOF	999	sastre1
5937	834	1	mmhm	\N		SOF	0	sastre1
5940	835	2	de	\N	\N	KEV	3	sastre1
5941	835	3	los	\N	\N	KEV	3	sastre1
5942	835	4	comisionados	\N	\N	KEV	3	sastre1
5943	835	5	que	\N	\N	KEV	3	sastre1
5944	835	6	corrió	\N	\N	KEV	3	sastre1
5945	835	7	.	\N	\N	KEV	999	sastre1
5939	835	1	uno	\N		KEV	3	sastre1
5947	836	2	.	\N	\N	SOF	999	sastre1
5946	836	1	mmhm	\N		SOF	0	sastre1
5949	837	2	de	\N	\N	KEV	3	sastre1
5950	837	3	los	\N	\N	KEV	3	sastre1
5951	837	4	muchachitos	\N	\N	KEV	3	sastre1
5952	837	5	jóvenes	\N	\N	KEV	3	sastre1
5953	837	6	vino	\N	\N	KEV	3	sastre1
5954	837	7	por	\N	\N	KEV	3	sastre1
5955	837	8	aquí	\N	\N	KEV	3	sastre1
5956	837	9	.	\N	\N	KEV	999	sastre1
5948	837	1	uno	\N		KEV	3	sastre1
5957	838	1	y	\N	phone	KEV	3	sastre1
5959	838	3	look	\N	SOF	KEV	2	sastre1
5960	838	4	this	\N	picks	KEV	2	sastre1
5968	838	12	look	\N	\N	KEV	2	sastre1
5969	838	13	at	\N	\N	KEV	2	sastre1
5970	838	14	to	\N	\N	KEV	2	sastre1
5971	838	15	do	\N	\N	KEV	2	sastre1
5972	838	16	.	\N	\N	KEV	999	sastre1
5958	838	2	listen	\N	ringing,	KEV	2	sastre1
5961	838	5	is	\N	up	KEV	2	sastre1
5962	838	6	a	\N	the	KEV	2	sastre1
5963	838	7	good	\N	phone,	KEV	2	sastre1
5964	838	8	thing	\N	and	KEV	2	sastre1
5965	838	9	for	\N	phone	KEV	2	sastre1
5966	838	10	you	\N	conversation	KEV	2	sastre1
5967	838	11	to	\N	starts.	KEV	2	sastre1
5974	839	2	me	\N	\N	SOF	2	sastre1
5975	839	3	hello	\N	\N	SOF	2	sastre1
5976	839	4	.	\N	\N	SOF	999	sastre1
5973	839	1	excuse	\N		SOF	2	sastre1
5978	840	2	in	\N	\N	SOF	2	sastre1
5979	840	3	the	\N	\N	SOF	2	sastre1
5980	840	4	I	\N	\N	SOF	2	sastre1
5981	840	5	got	\N	\N	SOF	2	sastre1
5982	840	6	five	\N	\N	SOF	2	sastre1
5983	840	7	more	\N	\N	SOF	2	sastre1
5984	840	8	minutes	\N	\N	SOF	2	sastre1
5985	840	9	.	\N	\N	SOF	999	sastre1
5977	840	1	I'm	\N		SOF	2	sastre1
5987	841	2	.	\N	\N	SOF	999	sastre1
5986	841	1	talking	\N		SOF	2	sastre1
5989	842	2	.	\N	\N	SOF	999	sastre1
5988	842	1	talking	\N		SOF	2	sastre1
5991	843	2	be	\N	\N	SOF	2	sastre1
5992	843	3	right	\N	\N	SOF	2	sastre1
5993	843	4	there	\N	\N	SOF	2	sastre1
5994	843	5	.	\N	\N	SOF	999	sastre1
5990	843	1	I'll	\N		SOF	2	sastre1
5996	844	2	que	\N	\N	KEV	3	sastre1
5997	844	3	venga	\N	\N	KEV	3	sastre1
5998	844	4	para	\N	\N	KEV	3	sastre1
5999	844	5	acá	\N	\N	KEV	3	sastre1
6000	844	6	.	\N	\N	KEV	999	sastre1
5995	844	1	dile	\N		KEV	3	sastre1
6002	845	2	que	\N	\N	SOF	3	sastre1
6003	845	3	venga	\N	\N	SOF	3	sastre1
6004	845	4	para	\N	\N	SOF	3	sastre1
6005	845	5	acá	\N	\N	SOF	3	sastre1
6006	845	6	.	\N	\N	SOF	999	sastre1
6001	845	1	dile	\N		SOF	3	sastre1
6008	846	2	déjanos	\N	\N	SOF	3	sastre1
6009	846	3	acabar	\N	\N	SOF	3	sastre1
6010	846	4	de	\N	\N	SOF	3	sastre1
6011	846	5	hablar	\N	\N	SOF	3	sastre1
6012	846	6	que	\N	\N	SOF	3	sastre1
6013	846	7	nos	\N	\N	SOF	3	sastre1
6014	846	8	quedan	\N	\N	SOF	3	sastre1
6015	846	9	five	\N	\N	SOF	2	sastre1
6016	846	10	more	\N	\N	SOF	2	sastre1
6017	846	11	minutes	\N	\N	SOF	2	sastre1
6018	846	12	and	\N	\N	SOF	2	sastre1
6019	846	13	they	\N	\N	SOF	2	sastre1
6020	846	14	are	\N	\N	SOF	2	sastre1
6021	846	15	recording	\N	\N	SOF	2	sastre1
6022	846	16	us	\N	\N	SOF	2	sastre1
6023	846	17	bye	\N	\N	SOF	2	sastre1
6024	846	18	.	\N	\N	SOF	999	sastre1
6007	846	1	no	\N		SOF	3	sastre1
6026	847	2	have	\N	\N	KEV	2	sastre1
6027	847	3	usamos	\N	\N	KEV	3	sastre1
6028	847	4	este	\N	\N	KEV	3	sastre1
6029	847	5	como	\N	\N	KEV	3	sastre1
6030	847	6	guinea_pig	\N	\N	KEV	2	sastre1
6031	847	7	.	\N	\N	KEV	999	sastre1
6025	847	1	we	\N		KEV	2	sastre1
6032	848	1	.	\N		SOF	999	sastre1
6034	849	2	.	\N	\N	KEV	999	sastre1
6033	849	1	er	\N		KEV	0	sastre1
6036	850	2	te	\N	\N	KEV	3	sastre1
6037	850	3	estaba	\N	\N	KEV	3	sastre1
6038	850	4	diciendo	\N	\N	KEV	3	sastre1
6039	850	5	?	\N	\N	KEV	999	sastre1
6035	850	1	qué	\N		KEV	3	sastre1
6041	851	2	lo	\N	\N	SOF	3	sastre1
6042	851	3	del	\N	\N	SOF	3	sastre1
6043	851	4	muchachito	\N	\N	SOF	3	sastre1
6044	851	5	que	\N	\N	SOF	3	sastre1
6045	851	6	vino	\N	\N	SOF	3	sastre1
6046	851	7	aquí	\N	\N	SOF	3	sastre1
6047	851	8	.	\N	\N	SOF	999	sastre1
6040	851	1	oh	\N		SOF	0	sastre1
6049	852	2	sí	\N	\N	KEV	3	sastre1
6050	852	3	el	\N	\N	KEV	3	sastre1
6051	852	4	que	\N	\N	KEV	3	sastre1
6052	852	5	estaba	\N	\N	KEV	3	sastre1
6053	852	6	corriendo	\N	\N	KEV	3	sastre1
6054	852	7	para	\N	\N	KEV	3	sastre1
6055	852	8	acá	\N	\N	KEV	3	sastre1
6056	852	9	tú	\N	\N	KEV	3	sastre1
6057	852	10	ves	\N	\N	KEV	3	sastre1
6058	852	11	tú	\N	\N	KEV	3	sastre1
6059	852	12	eso	\N	\N	KEV	3	sastre1
6060	852	13	.	\N	\N	KEV	999	sastre1
6048	852	1	ah	\N		KEV	0	sastre1
6062	853	2	digo	\N	\N	KEV	3	sastre1
6063	853	3	esa	\N	\N	KEV	3	sastre1
6064	853	4	basura	\N	\N	KEV	3	sastre1
6065	853	5	no	\N	\N	KEV	3	sastre1
6066	853	6	es	\N	\N	KEV	3	sastre1
6067	853	7	basura	\N	\N	KEV	3	sastre1
6068	853	8	de	\N	\N	KEV	3	sastre1
6069	853	9	nosotros	\N	\N	KEV	3	sastre1
6070	853	10	.	\N	\N	KEV	999	sastre1
6061	853	1	le	\N		KEV	3	sastre1
6072	854	2	basura	\N	\N	KEV	3	sastre1
6073	854	3	es	\N	\N	KEV	3	sastre1
6074	854	4	cuando	\N	\N	KEV	3	sastre1
6075	854	5	el	\N	\N	KEV	3	sastre1
6076	854	6	condado	\N	\N	KEV	3	sastre1
6077	854	7	o	\N	\N	KEV	3	sastre1
6078	854	8	el	\N	\N	KEV	3	sastre1
6079	854	9	water	\N	\N	KEV	2	sastre1
6080	854	10	management	\N	\N	KEV	2	sastre1
6081	854	11	district	\N	\N	KEV	2	sastre1
6071	854	1	esa	\N		KEV	3	sastre1
6082	854	12	viene	\N	\N	KEV	3	sastre1
6083	854	13	y	\N	\N	KEV	3	sastre1
6084	854	14	limpia	\N	\N	KEV	3	sastre1
6085	854	15	el	\N	\N	KEV	3	sastre1
6086	854	16	pedazo	\N	\N	KEV	3	sastre1
6087	854	17	de	\N	\N	KEV	3	sastre1
6088	854	18	ellos	\N	\N	KEV	3	sastre1
6089	854	19	.	\N	\N	KEV	999	sastre1
6091	855	2	vienen	\N	\N	KEV	3	sastre1
6092	855	3	con	\N	\N	KEV	3	sastre1
6093	855	4	las	\N	\N	KEV	3	sastre1
6094	855	5	palas	\N	\N	KEV	3	sastre1
6095	855	6	.	\N	\N	KEV	999	sastre1
6090	855	1	ellos	\N		KEV	3	sastre1
6097	856	2	.	\N	\N	SOF	999	sastre1
6096	856	1	everything	\N		SOF	2	sastre1
6099	857	2	arrancan	\N	\N	KEV	3	sastre1
6100	857	3	toda	\N	\N	KEV	3	sastre1
6101	857	4	la	\N	\N	KEV	3	sastre1
6102	857	5	basura	\N	\N	KEV	3	sastre1
6103	857	6	.	\N	\N	KEV	999	sastre1
6098	857	1	y	\N		KEV	3	sastre1
6105	858	2	caminan	\N	\N	KEV	3	sastre1
6106	858	3	tres	\N	\N	KEV	3	sastre1
6107	858	4	millas	\N	\N	KEV	3	sastre1
6108	858	5	con	\N	\N	KEV	3	sastre1
6109	858	6	las	\N	\N	KEV	3	sastre1
6110	858	7	palas	\N	\N	KEV	3	sastre1
6111	858	8	para	\N	\N	KEV	3	sastre1
6112	858	9	abajo	\N	\N	KEV	3	sastre1
6113	858	10	rompiendo	\N	\N	KEV	3	sastre1
6114	858	11	toda	\N	\N	KEV	3	sastre1
6115	858	12	la	\N	\N	KEV	3	sastre1
6116	858	13	hierba	\N	\N	KEV	3	sastre1
6117	858	14	.	\N	\N	KEV	999	sastre1
6104	858	1	entonces	\N		KEV	3	sastre1
6119	859	2	después	\N	\N	KEV	3	sastre1
6120	859	3	echan	\N	\N	KEV	3	sastre1
6121	859	4	un	\N	\N	KEV	3	sastre1
6122	859	5	palazo	\N	\N	KEV	3	sastre1
6123	859	6	arriba	\N	\N	KEV	3	sastre1
6124	859	7	del	\N	\N	KEV	3	sastre1
6125	859	8	camión	\N	\N	KEV	3	sastre1
6126	859	9	.	\N	\N	KEV	999	sastre1
6118	859	1	y	\N		KEV	3	sastre1
6128	860	2	tú	\N	\N	KEV	3	sastre1
6129	860	3	sabes	\N	\N	KEV	3	sastre1
6130	860	4	cuántos	\N	\N	KEV	3	sastre1
6131	860	5	palazos	\N	\N	KEV	3	sastre1
6132	860	6	iban	\N	\N	KEV	3	sastre1
6133	860	7	rotos	\N	\N	KEV	3	sastre1
6134	860	8	por	\N	\N	KEV	3	sastre1
6135	860	9	ahí	\N	\N	KEV	3	sastre1
6136	860	10	que	\N	\N	KEV	3	sastre1
6137	860	11	los	\N	\N	KEV	3	sastre1
6138	860	12	dejan	\N	\N	KEV	3	sastre1
6139	860	13	flotando	\N	\N	KEV	3	sastre1
6140	860	14	.	\N	\N	KEV	999	sastre1
6127	860	1	pero	\N		KEV	3	sastre1
6142	861	2	es	\N	\N	KEV	3	sastre1
6143	861	3	lo	\N	\N	KEV	3	sastre1
6144	861	4	que	\N	\N	KEV	3	sastre1
6145	861	5	tú	\N	\N	KEV	3	sastre1
6146	861	6	estás	\N	\N	KEV	3	sastre1
6147	861	7	viendo	\N	\N	KEV	3	sastre1
6148	861	8	ahí	\N	\N	KEV	3	sastre1
6149	861	9	.	\N	\N	KEV	999	sastre1
6141	861	1	eso	\N		KEV	3	sastre1
6151	862	2	no	\N	\N	KEV	3	sastre1
6152	862	3	ahora	\N	\N	KEV	3	sastre1
6153	862	4	ahora	\N	\N	KEV	3	sastre1
6154	862	5	vamos	\N	\N	KEV	3	sastre1
6155	862	6	a	\N	\N	KEV	3	sastre1
6156	862	7	mirar	\N	\N	KEV	3	sastre1
6157	862	8	esto	\N	\N	KEV	3	sastre1
6158	862	9	que	\N	\N	KEV	3	sastre1
6159	862	10	lo	\N	\N	KEV	3	sastre1
6160	862	11	otro	\N	\N	KEV	3	sastre1
6161	862	12	.	\N	\N	KEV	999	sastre1
6150	862	1	dice	\N		KEV	3	sastre1
6163	863	2	han	\N	\N	KEV	3	sastre1
6164	863	3	hecho	\N	\N	KEV	3	sastre1
6165	863	4	nada	\N	\N	KEV	3	sastre1
6166	863	5	.	\N	\N	KEV	999	sastre1
6162	863	1	nunca	\N		KEV	3	sastre1
6168	864	2	vez	\N	\N	KEV	3	sastre1
6169	864	3	que	\N	\N	KEV	3	sastre1
6170	864	4	pasa	\N	\N	KEV	3	sastre1
6171	864	5	el	\N	\N	KEV	3	sastre1
6172	864	6	condado	\N	\N	KEV	3	sastre1
6173	864	7	por	\N	\N	KEV	3	sastre1
6174	864	8	ahí	\N	\N	KEV	3	sastre1
6175	864	9	con	\N	\N	KEV	3	sastre1
6176	864	10	la	\N	\N	KEV	3	sastre1
6177	864	11	.	\N	\N	KEV	999	sastre1
6167	864	1	cada	\N		KEV	3	sastre1
6179	865	2	pasa	\N	\N	SOF	3	sastre1
6180	865	3	?	\N	\N	SOF	999	sastre1
6178	865	1	y	\N		SOF	3	sastre1
6182	866	2	sí	\N	\N	KEV	3	sastre1
6183	866	3	ellos	\N	\N	KEV	3	sastre1
6184	866	4	pasan	\N	\N	KEV	3	sastre1
6185	866	5	.	\N	\N	KEV	999	sastre1
6181	866	1	sí	\N		KEV	3	sastre1
6187	867	2	qué	\N	\N	SOF	3	sastre1
6188	867	3	tiempo	\N	\N	SOF	3	sastre1
6189	867	4	?	\N	\N	SOF	999	sastre1
6186	867	1	cada	\N		SOF	3	sastre1
6191	868	2	o	\N	\N	KEV	3	sastre1
6192	868	3	tres	\N	\N	KEV	3	sastre1
6193	868	4	veces	\N	\N	KEV	3	sastre1
6194	868	5	al	\N	\N	KEV	3	sastre1
6195	868	6	año	\N	\N	KEV	3	sastre1
6196	868	7	vienen	\N	\N	KEV	3	sastre1
6197	868	8	.	\N	\N	KEV	999	sastre1
6190	868	1	dos	\N		KEV	3	sastre1
6199	869	2	now	\N	\N	SOF	2	sastre1
6200	869	3	.	\N	\N	SOF	999	sastre1
6198	869	1	right	\N		SOF	2	sastre1
6202	870	2	.	\N	\N	KEV	999	sastre1
6201	870	1	sí	\N		KEV	3	sastre1
6204	871	2	aparato	\N	\N	KEV	3	sastre1
6205	871	3	que	\N	\N	KEV	3	sastre1
6203	871	1	un	\N		KEV	3	sastre1
6206	871	4	son	\N	\N	KEV	3	sastre1
6207	871	5	los	\N	\N	KEV	3	sastre1
6208	871	6	que	\N	\N	KEV	3	sastre1
6209	871	7	ponen	\N	\N	KEV	3	sastre1
6210	871	8	allá	\N	\N	KEV	3	sastre1
6211	871	9	en	\N	\N	KEV	3	sastre1
6212	871	10	Red	\N	\N	KEV	2	sastre1
6213	871	11	Road	\N	\N	KEV	2	sastre1
6214	871	12	.	\N	\N	KEV	999	sastre1
6216	872	2	no	\N	\N	KEV	3	sastre1
6217	872	3	te	\N	\N	KEV	3	sastre1
6218	872	4	has	\N	\N	KEV	3	sastre1
6219	872	5	fijado	\N	\N	KEV	3	sastre1
6220	872	6	allá	\N	\N	KEV	3	sastre1
6221	872	7	en	\N	\N	KEV	3	sastre1
6222	872	8	la	\N	\N	KEV	3	sastre1
6223	872	9	esquina	\N	\N	KEV	3	sastre1
6224	872	10	del	\N	\N	KEV	3	sastre1
6225	872	11	aeropuerto	\N	\N	KEV	3	sastre1
6226	872	12	xxx?	\N	\N	KEV	999	sastre1
6215	872	1	tú	\N		KEV	3	sastre1
6228	873	2	yo	\N	\N	SOF	3	sastre1
6229	873	3	sí	\N	\N	SOF	3	sastre1
6230	873	4	.	\N	\N	SOF	999	sastre1
6227	873	1	sí	\N		SOF	3	sastre1
6232	874	2	un	\N	\N	KEV	3	sastre1
6233	874	3	lugar	\N	\N	KEV	3	sastre1
6234	874	4	que	\N	\N	KEV	3	sastre1
6235	874	5	ponen	\N	\N	KEV	3	sastre1
6236	874	6	.	\N	\N	KEV	999	sastre1
6231	874	1	una	\N		KEV	3	sastre1
6238	875	2	sí	\N	\N	SOF	3	sastre1
6239	875	3	yo	\N	\N	SOF	3	sastre1
6240	875	4	veo	\N	\N	SOF	3	sastre1
6241	875	5	.	\N	\N	SOF	999	sastre1
6237	875	1	ahí	\N		SOF	3	sastre1
6243	876	2	bueno	\N	\N	KEV	3	sastre1
6244	876	3	.	\N	\N	KEV	999	sastre1
6242	876	1	eso	\N		KEV	3	sastre1
6246	877	2	.	\N	\N	SOF	999	sastre1
6245	877	1	mmhm	\N		SOF	0	sastre1
6248	878	2	vienen	\N	\N	KEV	3	sastre1
6249	878	3	hasta	\N	\N	KEV	3	sastre1
6250	878	4	aquí	\N	\N	KEV	3	sastre1
6251	878	5	.	\N	\N	KEV	999	sastre1
6247	878	1	esos	\N		KEV	3	sastre1
6253	879	2	de	\N	\N	SOF	3	sastre1
6254	879	3	verdad	\N	\N	SOF	3	sastre1
6255	879	4	yo	\N	\N	SOF	3	sastre1
6256	879	5	no	\N	\N	SOF	3	sastre1
6257	879	6	me	\N	\N	SOF	3	sastre1
6258	879	7	había	\N	\N	SOF	3	sastre1
6259	879	8	fijado	\N	\N	SOF	3	sastre1
6260	879	9	nunca	\N	\N	SOF	3	sastre1
6261	879	10	.	\N	\N	SOF	999	sastre1
6252	879	1	no	\N		SOF	3	sastre1
6263	880	2	caminan	\N	\N	KEV	3	sastre1
6264	880	3	por	\N	\N	KEV	3	sastre1
6265	880	4	caminando	\N	\N	KEV	3	sastre1
6266	880	5	.	\N	\N	KEV	999	sastre1
6262	880	1	ellos	\N		KEV	3	sastre1
6268	881	2	qué	\N	\N	KEV	3	sastre1
6269	881	3	pasa	\N	\N	KEV	3	sastre1
6270	881	4	?	\N	\N	KEV	999	sastre1
6267	881	1	pero	\N		KEV	3	sastre1
6272	882	2	ellos	\N	\N	KEV	3	sastre1
6273	882	3	limpian	\N	\N	KEV	3	sastre1
6274	882	4	ellos	\N	\N	KEV	3	sastre1
6275	882	5	bajan	\N	\N	KEV	3	sastre1
6276	882	6	la	\N	\N	KEV	3	sastre1
6277	882	7	pala	\N	\N	KEV	3	sastre1
6278	882	8	y	\N	\N	KEV	3	sastre1
6279	882	9	van	\N	\N	KEV	3	sastre1
6280	882	10	caminando	\N	\N	KEV	3	sastre1
6281	882	11	y	\N	\N	KEV	3	sastre1
6282	882	12	van	\N	\N	KEV	3	sastre1
6283	882	13	rompiendo	\N	\N	KEV	3	sastre1
6284	882	14	esa	\N	\N	KEV	3	sastre1
6285	882	15	hierba	\N	\N	KEV	3	sastre1
6286	882	16	.	\N	\N	KEV	999	sastre1
6271	882	1	que	\N		KEV	3	sastre1
6288	883	2	en	\N	\N	KEV	3	sastre1
6289	883	3	vez	\N	\N	KEV	3	sastre1
6290	883	4	de	\N	\N	KEV	3	sastre1
6291	883	5	hacer	\N	\N	KEV	3	sastre1
6292	883	6	un	\N	\N	KEV	3	sastre1
6293	883	7	pedacito	\N	\N	KEV	3	sastre1
6294	883	8	cortico	\N	\N	KEV	3	sastre1
6295	883	9	.	\N	\N	KEV	999	sastre1
6287	883	1	pero	\N		KEV	3	sastre1
6297	884	2	llevarla	\N	\N	KEV	3	sastre1
6298	884	3	hasta	\N	\N	KEV	3	sastre1
6299	884	4	el	\N	\N	KEV	3	sastre1
6300	884	5	camión	\N	\N	KEV	3	sastre1
6301	884	6	no	\N	\N	KEV	3	sastre1
6302	884	7	.	\N	\N	KEV	999	sastre1
6296	884	1	y	\N		KEV	3	sastre1
6304	885	2	si	\N	\N	KEV	3	sastre1
6305	885	3	el	\N	\N	KEV	3	sastre1
6306	885	4	camión	\N	\N	KEV	3	sastre1
6307	885	5	está	\N	\N	KEV	3	sastre1
6308	885	6	parado	\N	\N	KEV	3	sastre1
6309	885	7	a	\N	\N	KEV	3	sastre1
6310	885	8	cuatro	\N	\N	KEV	3	sastre1
6311	885	9	cuadras	\N	\N	KEV	3	sastre1
6312	885	10	.	\N	\N	KEV	999	sastre1
6303	885	1	imagínate	\N		KEV	3	sastre1
6314	886	2	crees	\N	\N	KEV	3	sastre1
6315	886	3	que	\N	\N	KEV	3	sastre1
6316	886	4	ellos	\N	\N	KEV	3	sastre1
6317	886	5	van	\N	\N	KEV	3	sastre1
6318	886	6	a	\N	\N	KEV	3	sastre1
6319	886	7	recoger	\N	\N	KEV	3	sastre1
6320	886	8	un	\N	\N	KEV	3	sastre1
6321	886	9	poquito	\N	\N	KEV	3	sastre1
6322	886	10	y	\N	\N	KEV	3	sastre1
6323	886	11	llevarlo	\N	\N	KEV	3	sastre1
6324	886	12	y	\N	\N	KEV	3	sastre1
6325	886	13	botarlo	\N	\N	KEV	3	sastre1
6326	886	14	y	\N	\N	KEV	3	sastre1
6327	886	15	regresarlo	\N	\N	KEV	3	sastre1
6328	886	16	.	\N	\N	KEV	999	sastre1
6313	886	1	tú	\N		KEV	3	sastre1
6329	887	1	ellos	\N		KEV	3	sastre1
6330	887	2	ponen	\N	\N	KEV	3	sastre1
6331	887	3	la	\N	\N	KEV	3	sastre1
6332	887	4	pala	\N	\N	KEV	3	sastre1
6333	887	5	y	\N	\N	KEV	3	sastre1
6334	887	6	van	\N	\N	KEV	3	sastre1
6335	887	7	rompiendo	\N	\N	KEV	3	sastre1
6336	887	8	van	\N	\N	KEV	3	sastre1
6337	887	9	empujándola	\N	\N	KEV	3	sastre1
6338	887	10	para	\N	\N	KEV	3	sastre1
6339	887	11	allá	\N	\N	KEV	3	sastre1
6340	887	12	.	\N	\N	KEV	999	sastre1
6342	888	2	lo	\N	\N	KEV	3	sastre1
6343	888	3	que	\N	\N	KEV	3	sastre1
6344	888	4	hace	\N	\N	KEV	3	sastre1
6345	888	5	después	\N	\N	KEV	3	sastre1
6346	888	6	.	\N	\N	KEV	999	sastre1
6341	888	1	pero	\N		KEV	3	sastre1
6348	889	2	se	\N	\N	KEV	3	sastre1
6349	889	3	se	\N	\N	KEV	3	sastre1
6350	889	4	queda	\N	\N	KEV	3	sastre1
6351	889	5	toda	\N	\N	KEV	3	sastre1
6352	889	6	suelta	\N	\N	KEV	3	sastre1
6353	889	7	se	\N	\N	KEV	3	sastre1
6354	889	8	riega	\N	\N	KEV	3	sastre1
6355	889	9	todo	\N	\N	KEV	3	sastre1
6356	889	10	.	\N	\N	KEV	999	sastre1
6347	889	1	que	\N		KEV	3	sastre1
6358	890	2	cuando	\N	\N	KEV	3	sastre1
6359	890	3	el	\N	\N	KEV	3	sastre1
6360	890	4	aire	\N	\N	KEV	3	sastre1
6361	890	5	sopla	\N	\N	KEV	3	sastre1
6362	890	6	de	\N	\N	KEV	3	sastre1
6363	890	7	allá	\N	\N	KEV	3	sastre1
6364	890	8	o	\N	\N	KEV	3	sastre1
6365	890	9	de	\N	\N	KEV	3	sastre1
6366	890	10	aquí	\N	\N	KEV	3	sastre1
6367	890	11	.	\N	\N	KEV	999	sastre1
6357	890	1	y	\N		KEV	3	sastre1
6369	891	2	esa	\N	\N	KEV	3	sastre1
6370	891	3	hierba	\N	\N	KEV	3	sastre1
6371	891	4	muerta	\N	\N	KEV	3	sastre1
6372	891	5	.	\N	\N	KEV	999	sastre1
6368	891	1	toda	\N		KEV	3	sastre1
6374	892	2	cayendo	\N	\N	SOF	3	sastre1
6375	892	3	para	\N	\N	SOF	3	sastre1
6376	892	4	acá	\N	\N	SOF	3	sastre1
6377	892	5	.	\N	\N	SOF	999	sastre1
6373	892	1	va	\N		SOF	3	sastre1
6379	893	2	.	\N	\N	KEV	999	sastre1
6378	893	1	mmhm	\N		KEV	0	sastre1
6381	894	2	yo	\N	\N	KEV	3	sastre1
6382	894	3	le	\N	\N	KEV	3	sastre1
6383	894	4	echo	\N	\N	KEV	3	sastre1
6384	894	5	ahí	\N	\N	KEV	3	sastre1
6385	894	6	cosas	\N	\N	KEV	3	sastre1
6386	894	7	.	\N	\N	KEV	999	sastre1
6380	894	1	y	\N		KEV	3	sastre1
6388	895	2	fumigó	\N	\N	KEV	3	sastre1
6389	895	3	y	\N	\N	KEV	3	sastre1
6390	895	4	eso	\N	\N	KEV	3	sastre1
6391	895	5	para	\N	\N	KEV	3	sastre1
6392	895	6	mantener	\N	\N	KEV	3	sastre1
6393	895	7	la	\N	\N	KEV	3	sastre1
6394	895	8	hierba	\N	\N	KEV	3	sastre1
6395	895	9	lo	\N	\N	KEV	3	sastre1
6396	895	10	menos	\N	\N	KEV	3	sastre1
6397	895	11	que	\N	\N	KEV	3	sastre1
6398	895	12	no	\N	\N	KEV	3	sastre1
6399	895	13	crezca	\N	\N	KEV	3	sastre1
6400	895	14	mucho	\N	\N	KEV	3	sastre1
6401	895	15	pero	\N	\N	KEV	3	sastre1
6402	895	16	con	\N	\N	KEV	3	sastre1
6403	895	17	todo	\N	\N	KEV	3	sastre1
6404	895	18	y	\N	\N	KEV	3	sastre1
6405	895	19	eso	\N	\N	KEV	3	sastre1
6406	895	20	.	\N	\N	KEV	999	sastre1
6387	895	1	y	\N		KEV	3	sastre1
6408	896	2	te	\N	\N	KEV	3	sastre1
6409	896	3	encuentras	\N	\N	KEV	3	sastre1
6410	896	4	que	\N	\N	KEV	3	sastre1
6411	896	5	los	\N	\N	KEV	3	sastre1
6412	896	6	lily_pads	\N	\N	KEV	2	sastre1
6413	896	7	crecen	\N	\N	KEV	3	sastre1
6414	896	8	.	\N	\N	KEV	999	sastre1
6407	896	1	er	\N		KEV	0	sastre1
6416	897	2	se	\N	\N	KEV	3	sastre1
6417	897	3	mete	\N	\N	KEV	3	sastre1
6418	897	4	la	\N	\N	KEV	3	sastre1
6419	897	5	basura	\N	\N	KEV	3	sastre1
6420	897	6	ahí	\N	\N	KEV	3	sastre1
6421	897	7	.	\N	\N	KEV	999	sastre1
6415	897	1	y	\N		KEV	3	sastre1
6423	898	2	vaya	\N	\N	KEV	3	sastre1
6424	898	3	.	\N	\N	KEV	999	sastre1
6422	898	1	y	\N		KEV	3	sastre1
6426	899	2	echas	\N	\N	KEV	3	sastre1
6427	899	3	hoy	\N	\N	KEV	3	sastre1
6428	899	4	y	\N	\N	KEV	3	sastre1
6429	899	5	a	\N	\N	KEV	3	sastre1
6430	899	6	los	\N	\N	KEV	3	sastre1
6431	899	7	dos	\N	\N	KEV	3	sastre1
6432	899	8	o	\N	\N	KEV	3	sastre1
6433	899	9	tres	\N	\N	KEV	3	sastre1
6434	899	10	meses	\N	\N	KEV	3	sastre1
6435	899	11	ya	\N	\N	KEV	3	sastre1
6436	899	12	están	\N	\N	KEV	3	sastre1
6437	899	13	de	\N	\N	KEV	3	sastre1
6438	899	14	nuevo	\N	\N	KEV	3	sastre1
6439	899	15	floreciendo	\N	\N	KEV	3	sastre1
6440	899	16	y	\N	\N	KEV	3	sastre1
6441	899	17	creciendo	\N	\N	KEV	3	sastre1
6442	899	18	.	\N	\N	KEV	999	sastre1
6425	899	1	le	\N		KEV	3	sastre1
6444	900	2	.	\N	\N	KEV	999	sastre1
6443	900	1	so	\N		KEV	2	sastre1
6446	901	2	la	\N	\N	SOF	3	sastre1
6447	901	3	señora	\N	\N	SOF	3	sastre1
6448	901	4	de	\N	\N	SOF	3	sastre1
6449	901	5	al	\N	\N	SOF	3	sastre1
6450	901	6	lado	\N	\N	SOF	3	sastre1
6451	901	7	tiene	\N	\N	SOF	3	sastre1
6452	901	8	ahora	\N	\N	SOF	3	sastre1
6453	901	9	un	\N	\N	SOF	3	sastre1
6454	901	10	nieto	\N	\N	SOF	3	sastre1
6455	901	11	no	\N	\N	SOF	3	sastre1
6456	901	12	.	\N	\N	SOF	999	sastre1
6445	901	1	y	\N		SOF	3	sastre1
6458	902	2	nieto	\N	\N	KEV	3	sastre1
6459	902	3	.	\N	\N	KEV	999	sastre1
6457	902	1	un	\N		KEV	3	sastre1
6461	903	2	.	\N	\N	KEV	999	sastre1
6460	903	1	mmhm	\N		KEV	0	sastre1
6463	904	2	sí	\N	\N	SOF	3	sastre1
6464	904	3	.	\N	\N	SOF	999	sastre1
6462	904	1	ah	\N		SOF	0	sastre1
6466	905	2	el	\N	\N	KEV	3	sastre1
6467	905	3	nieto	\N	\N	KEV	3	sastre1
6468	905	4	está	\N	\N	KEV	3	sastre1
6469	905	5	viviendo	\N	\N	KEV	3	sastre1
6470	905	6	con	\N	\N	KEV	3	sastre1
6471	905	7	ella	\N	\N	KEV	3	sastre1
6472	905	8	.	\N	\N	KEV	999	sastre1
6465	905	1	sí	\N		KEV	3	sastre1
6474	906	2	bueno	\N	\N	SOF	3	sastre1
6475	906	3	así	\N	\N	SOF	3	sastre1
6476	906	4	no	\N	\N	SOF	3	sastre1
6477	906	5	está	\N	\N	SOF	3	sastre1
6478	906	6	solita	\N	\N	SOF	3	sastre1
6479	906	7	.	\N	\N	SOF	999	sastre1
6473	906	1	qué	\N		SOF	3	sastre1
6481	907	2	sabes	\N	\N	KEV	3	sastre1
6482	907	3	que	\N	\N	KEV	3	sastre1
6483	907	4	yo	\N	\N	KEV	3	sastre1
6484	907	5	pensaba	\N	\N	KEV	3	sastre1
6485	907	6	que	\N	\N	KEV	3	sastre1
6486	907	7	los	\N	\N	KEV	3	sastre1
6487	907	8	hijos	\N	\N	KEV	3	sastre1
6488	907	9	de	\N	\N	KEV	3	sastre1
6489	907	10	Lucía	\N	\N	KEV	0	sastre1
6490	907	11	las	\N	\N	KEV	3	sastre1
6491	907	12	hijas	\N	\N	KEV	3	sastre1
6492	907	13	de	\N	\N	KEV	3	sastre1
6493	907	14	los	\N	\N	KEV	3	sastre1
6494	907	15	hijos	\N	\N	KEV	3	sastre1
6495	907	16	vivían	\N	\N	KEV	3	sastre1
6496	907	17	fuera	\N	\N	KEV	3	sastre1
6497	907	18	de	\N	\N	KEV	3	sastre1
6498	907	19	Miami	\N	\N	KEV	0	sastre1
6499	907	20	.	\N	\N	KEV	999	sastre1
6480	907	1	tú	\N		KEV	3	sastre1
6501	908	2	este	\N	\N	KEV	3	sastre1
6502	908	3	vive	\N	\N	KEV	3	sastre1
6503	908	4	en	\N	\N	KEV	3	sastre1
6504	908	5	Core_Gables	\N	\N	KEV	0	sastre1
6505	908	6	.	\N	\N	KEV	999	sastre1
6500	908	1	pero	\N		KEV	3	sastre1
6507	909	2	?	\N	\N	SOF	999	sastre1
6506	909	1	really	\N		SOF	2	sastre1
6509	910	2	hijo	\N	\N	KEV	3	sastre1
6510	910	3	de	\N	\N	KEV	3	sastre1
6511	910	4	ella	\N	\N	KEV	3	sastre1
6512	910	5	que	\N	\N	KEV	3	sastre1
6513	910	6	es	\N	\N	KEV	3	sastre1
6514	910	7	el	\N	\N	KEV	3	sastre1
6515	910	8	papá	\N	\N	KEV	3	sastre1
6516	910	9	del	\N	\N	KEV	3	sastre1
6517	910	10	nieto	\N	\N	KEV	3	sastre1
6518	910	11	vive	\N	\N	KEV	3	sastre1
6519	910	12	en	\N	\N	KEV	3	sastre1
6520	910	13	Core_Gables	\N	\N	KEV	0	sastre1
6521	910	14	.	\N	\N	KEV	999	sastre1
6508	910	1	el	\N		KEV	3	sastre1
6522	911	1	.	\N		SOF	999	sastre1
6524	912	2	como	\N	\N	KEV	3	sastre1
6525	912	3	yo	\N	\N	KEV	3	sastre1
6526	912	4	nunca	\N	\N	KEV	3	sastre1
6527	912	5	los	\N	\N	KEV	3	sastre1
6528	912	6	veía	\N	\N	KEV	3	sastre1
6529	912	7	por	\N	\N	KEV	3	sastre1
6530	912	8	aquí	\N	\N	KEV	3	sastre1
6531	912	9	ni	\N	\N	KEV	3	sastre1
6532	912	10	nada	\N	\N	KEV	3	sastre1
6533	912	11	.	\N	\N	KEV	999	sastre1
6523	912	1	porque	\N		KEV	3	sastre1
6535	913	2	must	\N	\N	SOF	2	sastre1
6536	913	3	have	\N	\N	SOF	2	sastre1
6537	913	4	gotten	\N	\N	SOF	2	sastre1
6538	913	5	in	\N	\N	SOF	2	sastre1
6539	913	6	a	\N	\N	SOF	2	sastre1
6540	913	7	fight	\N	\N	SOF	2	sastre1
6541	913	8	.	\N	\N	SOF	999	sastre1
6534	913	1	he	\N		SOF	2	sastre1
6543	914	2	gonna	\N	\N	SOF	2	sastre1
6544	914	3	go	\N	\N	SOF	2	sastre1
6545	914	4	live	\N	\N	SOF	2	sastre1
6546	914	5	with	\N	\N	SOF	2	sastre1
6547	914	6	my	\N	\N	SOF	2	sastre1
6548	914	7	grandma	\N	\N	SOF	2	sastre1
6549	914	8	porque	\N	\N	SOF	3	sastre1
6550	914	9	siempre	\N	\N	SOF	3	sastre1
6551	914	10	dicen	\N	\N	SOF	3	sastre1
6552	914	11	así	\N	\N	SOF	3	sastre1
6553	914	12	.	\N	\N	SOF	999	sastre1
6542	914	1	I'm	\N		SOF	2	sastre1
6555	915	2	posible	\N	\N	KEV	3	sastre1
6556	915	3	.	\N	\N	KEV	999	sastre1
6554	915	1	es	\N		KEV	3	sastre1
6558	916	2	posible	\N	\N	KEV	3	sastre1
6559	916	3	tú	\N	\N	KEV	3	sastre1
6560	916	4	no	\N	\N	KEV	3	sastre1
6561	916	5	te	\N	\N	KEV	3	sastre1
6562	916	6	acuerdas	\N	\N	KEV	3	sastre1
6563	916	7	hace	\N	\N	KEV	3	sastre1
6564	916	8	como	\N	\N	KEV	3	sastre1
6565	916	9	dos	\N	\N	KEV	3	sastre1
6566	916	10	o	\N	\N	KEV	3	sastre1
6567	916	11	tres	\N	\N	KEV	3	sastre1
6568	916	12	años	\N	\N	KEV	3	sastre1
6569	916	13	atrás	\N	\N	KEV	3	sastre1
6570	916	14	cuando	\N	\N	KEV	3	sastre1
6571	916	15	primero	\N	\N	KEV	3	sastre1
6572	916	16	se	\N	\N	KEV	3	sastre1
6573	916	17	mudó	\N	\N	KEV	3	sastre1
6574	916	18	ahí	\N	\N	KEV	3	sastre1
6575	916	19	que	\N	\N	KEV	3	sastre1
6576	916	20	tenía	\N	\N	KEV	3	sastre1
6577	916	21	un	\N	\N	KEV	3	sastre1
6557	916	1	es	\N		KEV	3	sastre1
6578	916	22	carrito	\N	\N	KEV	3	sastre1
6579	916	23	que	\N	\N	KEV	3	sastre1
6580	916	24	lo	\N	\N	KEV	3	sastre1
6581	916	25	chocó	\N	\N	KEV	3	sastre1
6582	916	26	.	\N	\N	KEV	999	sastre1
6584	917	2	.	\N	\N	SOF	999	sastre1
6583	917	1	mmhm	\N		SOF	0	sastre1
6586	918	2	Lucía	\N	\N	KEV	0	sastre1
6587	918	3	lo	\N	\N	KEV	3	sastre1
6588	918	4	tuvo	\N	\N	KEV	3	sastre1
6589	918	5	tapado	\N	\N	KEV	3	sastre1
6590	918	6	ahí	\N	\N	KEV	3	sastre1
6591	918	7	mucho	\N	\N	KEV	3	sastre1
6592	918	8	tiempo	\N	\N	KEV	3	sastre1
6593	918	9	.	\N	\N	KEV	999	sastre1
6585	918	1	que	\N		KEV	3	sastre1
6595	919	2	.	\N	\N	SOF	999	sastre1
6594	919	1	mmhm	\N		SOF	0	sastre1
6597	920	2	le	\N	\N	KEV	3	sastre1
6598	920	3	taparon	\N	\N	KEV	3	sastre1
6599	920	4	le	\N	\N	KEV	3	sastre1
6600	920	5	chocaron	\N	\N	KEV	3	sastre1
6601	920	6	el	\N	\N	KEV	3	sastre1
6602	920	7	carro	\N	\N	KEV	3	sastre1
6603	920	8	.	\N	\N	KEV	999	sastre1
6596	920	1	er	\N		KEV	0	sastre1
6605	921	2	parece	\N	\N	KEV	3	sastre1
6606	921	3	que	\N	\N	KEV	3	sastre1
6607	921	4	el	\N	\N	KEV	3	sastre1
6608	921	5	padre	\N	\N	KEV	3	sastre1
6609	921	6	estaba	\N	\N	KEV	3	sastre1
6610	921	7	bravo	\N	\N	KEV	3	sastre1
6611	921	8	con	\N	\N	KEV	3	sastre1
6612	921	9	ellos	\N	\N	KEV	3	sastre1
6613	921	10	y	\N	\N	KEV	3	sastre1
6614	921	11	no	\N	\N	KEV	3	sastre1
6615	921	12	se	\N	\N	KEV	3	sastre1
6616	921	13	lo	\N	\N	KEV	3	sastre1
6617	921	14	arregló	\N	\N	KEV	3	sastre1
6618	921	15	ni	\N	\N	KEV	3	sastre1
6619	921	16	nada	\N	\N	KEV	3	sastre1
6620	921	17	.	\N	\N	KEV	999	sastre1
6604	921	1	y	\N		KEV	3	sastre1
6622	922	2	estaba	\N	\N	KEV	3	sastre1
6623	922	3	parado	\N	\N	KEV	3	sastre1
6624	922	4	ahí	\N	\N	KEV	3	sastre1
6625	922	5	en	\N	\N	KEV	3	sastre1
6626	922	6	casa	\N	\N	KEV	3	sastre1
6627	922	7	de	\N	\N	KEV	3	sastre1
6628	922	8	Lucía	\N	\N	KEV	0	sastre1
6629	922	9	todo	\N	\N	KEV	3	sastre1
6630	922	10	ese	\N	\N	KEV	3	sastre1
6631	922	11	tiempo	\N	\N	KEV	3	sastre1
6632	922	12	.	\N	\N	KEV	999	sastre1
6621	922	1	y	\N		KEV	3	sastre1
6634	923	2	que	\N	\N	KEV	3	sastre1
6635	923	3	después	\N	\N	KEV	3	sastre1
6636	923	4	de	\N	\N	KEV	3	sastre1
6637	923	5	una	\N	\N	KEV	3	sastre1
6638	923	6	forma	\N	\N	KEV	3	sastre1
6639	923	7	o	\N	\N	KEV	3	sastre1
6640	923	8	otra	\N	\N	KEV	3	sastre1
6641	923	9	resolvieron	\N	\N	KEV	3	sastre1
6642	923	10	.	\N	\N	KEV	999	sastre1
6633	923	1	hasta	\N		KEV	3	sastre1
6644	924	2	.	\N	\N	KEV	999	sastre1
6643	924	1	mmhm	\N		KEV	0	sastre1
6646	925	2	qué	\N	\N	KEV	3	sastre1
6647	925	3	rica	\N	\N	KEV	3	sastre1
6648	925	4	está	\N	\N	KEV	3	sastre1
6649	925	5	la	\N	\N	KEV	3	sastre1
6650	925	6	tarde	\N	\N	KEV	3	sastre1
6651	925	7	?	\N	\N	KEV	999	sastre1
6645	925	1	viste	\N		KEV	3	sastre1
6653	926	2	.	\N	\N	SOF	999	sastre1
6652	926	1	yeah	\N		SOF	2	sastre1
6655	927	2	bajado	\N	\N	KEV	3	sastre1
6656	927	3	ahora	\N	\N	KEV	3	sastre1
6657	927	4	debe	\N	\N	KEV	3	sastre1
6658	927	5	estar	\N	\N	KEV	3	sastre1
6659	927	6	a	\N	\N	KEV	3	sastre1
6660	927	7	setenta	\N	\N	KEV	3	sastre1
6661	927	8	y	\N	\N	KEV	3	sastre1
6662	927	9	pico	\N	\N	KEV	3	sastre1
6663	927	10	grados	\N	\N	KEV	3	sastre1
6664	927	11	.	\N	\N	KEV	999	sastre1
6654	927	1	ha	\N		KEV	3	sastre1
6666	928	2	super	\N	\N	KEV	0	sastre1
6667	928	3	rica	\N	\N	KEV	3	sastre1
6668	928	4	.	\N	\N	KEV	999	sastre1
6665	928	1	está	\N		KEV	3	sastre1
6670	929	2	nos	\N	\N	KEV	3	sastre1
6671	929	3	están	\N	\N	KEV	3	sastre1
6672	929	4	torturando	\N	\N	KEV	3	sastre1
6673	929	5	.	\N	\N	KEV	999	sastre1
6669	929	1	ya	\N		KEV	3	sastre1
6675	930	2	estos	\N	\N	KEV	3	sastre1
6676	930	3	últimos	\N	\N	KEV	3	sastre1
6677	930	4	cuatro	\N	\N	KEV	3	sastre1
6678	930	5	minutos	\N	\N	KEV	3	sastre1
6679	930	6	son	\N	\N	KEV	3	sastre1
6680	930	7	.	\N	\N	KEV	999	sastre1
6674	930	1	ya	\N		KEV	3	sastre1
6682	931	2	y	\N	\N	SOF	3	sastre1
6683	931	3	yo	\N	\N	SOF	3	sastre1
6684	931	4	que	\N	\N	SOF	3	sastre1
6685	931	5	estoy	\N	\N	SOF	3	sastre1
6686	931	6	haciendo	\N	\N	SOF	3	sastre1
6687	931	7	maternidad	\N	\N	SOF	3	sastre1
6688	931	8	y	\N	\N	SOF	3	sastre1
6689	931	9	maternidad	\N	\N	SOF	3	sastre1
6690	931	10	es	\N	\N	SOF	3	sastre1
6691	931	11	lo	\N	\N	SOF	3	sastre1
6692	931	12	más	\N	\N	SOF	3	sastre1
6693	931	13	pesado	\N	\N	SOF	3	sastre1
6694	931	14	.	\N	\N	SOF	999	sastre1
6681	931	1	no	\N		SOF	3	sastre1
6696	932	2	er	\N	\N	KEV	0	sastre1
6697	932	3	er	\N	\N	KEV	0	sastre1
6698	932	4	las	\N	\N	KEV	3	sastre1
6699	932	5	clases	\N	\N	KEV	3	sastre1
6700	932	6	son	\N	\N	KEV	3	sastre1
6695	932	1	y	\N		KEV	3	sastre1
6701	932	7	en	\N	\N	KEV	3	sastre1
6702	932	8	español	\N	\N	KEV	3	sastre1
6703	932	9	?	\N	\N	KEV	999	sastre1
6705	933	2	sí	\N	\N	SOF	3	sastre1
6706	933	3	escribir	\N	\N	SOF	3	sastre1
6707	933	4	es	\N	\N	SOF	3	sastre1
6708	933	5	en	\N	\N	SOF	3	sastre1
6709	933	6	español	\N	\N	SOF	3	sastre1
6710	933	7	pero	\N	\N	SOF	3	sastre1
6711	933	8	los	\N	\N	SOF	3	sastre1
6712	933	9	libros	\N	\N	SOF	3	sastre1
6713	933	10	son	\N	\N	SOF	3	sastre1
6714	933	11	en	\N	\N	SOF	3	sastre1
6715	933	12	inglés	\N	\N	SOF	3	sastre1
6716	933	13	.	\N	\N	SOF	999	sastre1
6704	933	1	ay	\N		SOF	3	sastre1
6718	934	2	tú	\N	\N	SOF	3	sastre1
6719	934	3	me	\N	\N	SOF	3	sastre1
6720	934	4	ves	\N	\N	SOF	3	sastre1
6721	934	5	a	\N	\N	SOF	3	sastre1
6722	934	6	mí	\N	\N	SOF	3	sastre1
6723	934	7	ahí	\N	\N	SOF	3	sastre1
6724	934	8	.	\N	\N	SOF	999	sastre1
6717	934	1	so	\N		SOF	3	sastre1
6726	935	2	entonces	\N	\N	SOF	3	sastre1
6727	935	3	tengo	\N	\N	SOF	3	sastre1
6728	935	4	que	\N	\N	SOF	3	sastre1
6729	935	5	ponerme	\N	\N	SOF	3	sastre1
6730	935	6	.	\N	\N	SOF	999	sastre1
6725	935	1	y	\N		SOF	3	sastre1
6732	936	2	entonces	\N	\N	SOF	3	sastre1
6733	936	3	tengo	\N	\N	SOF	3	sastre1
6734	936	4	un	\N	\N	SOF	3	sastre1
6735	936	5	diccionario	\N	\N	SOF	3	sastre1
6736	936	6	.	\N	\N	SOF	999	sastre1
6731	936	1	y	\N		SOF	3	sastre1
6738	937	2	se	\N	\N	SOF	3	sastre1
6739	937	3	me	\N	\N	SOF	3	sastre1
6740	937	4	olvida	\N	\N	SOF	3	sastre1
6741	937	5	.	\N	\N	SOF	999	sastre1
6737	937	1	porque	\N		SOF	3	sastre1
6743	938	2	.	\N	\N	SOF	999	sastre1
6742	938	1	olvídate	\N		SOF	3	sastre1
6745	939	2	mucho	\N	\N	SOF	3	sastre1
6746	939	3	tiempo	\N	\N	SOF	3	sastre1
6747	939	4	.	\N	\N	SOF	999	sastre1
6744	939	1	son	\N		SOF	3	sastre1
6749	940	2	a	\N	\N	SOF	3	sastre1
6750	940	3	uno	\N	\N	SOF	3	sastre1
6751	940	4	se	\N	\N	SOF	3	sastre1
6752	940	5	le	\N	\N	SOF	3	sastre1
6753	940	6	olvida	\N	\N	SOF	3	sastre1
6754	940	7	.	\N	\N	SOF	999	sastre1
6748	940	1	y	\N		SOF	3	sastre1
6756	941	2	está	\N	\N	SOF	3	sastre1
6757	941	3	acostumbrado	\N	\N	SOF	3	sastre1
6758	941	4	a	\N	\N	SOF	3	sastre1
6759	941	5	leer	\N	\N	SOF	3	sastre1
6760	941	6	en	\N	\N	SOF	3	sastre1
6761	941	7	inglés	\N	\N	SOF	3	sastre1
6762	941	8	y	\N	\N	SOF	3	sastre1
6763	941	9	a	\N	\N	SOF	3	sastre1
6764	941	10	escribir	\N	\N	SOF	3	sastre1
6765	941	11	en	\N	\N	SOF	3	sastre1
6766	941	12	inglés	\N	\N	SOF	3	sastre1
6767	941	13	.	\N	\N	SOF	999	sastre1
6755	941	1	uno	\N		SOF	3	sastre1
6769	942	2	.	\N	\N	KEV	999	sastre1
6768	942	1	sí	\N		KEV	3	sastre1
6771	943	2	tienes	\N	\N	SOF	3	sastre1
6772	943	3	que	\N	\N	SOF	3	sastre1
6773	943	4	escribirlo	\N	\N	SOF	3	sastre1
6774	943	5	en	\N	\N	SOF	3	sastre1
6775	943	6	español	\N	\N	SOF	3	sastre1
6776	943	7	.	\N	\N	SOF	999	sastre1
6770	943	1	entonces	\N		SOF	3	sastre1
6778	944	2	.	\N	\N	KEV	999	sastre1
6777	944	1	mmhm	\N		KEV	0	sastre1
6780	945	2	que	\N	\N	KEV	3	sastre1
6781	945	3	.	\N	\N	KEV	999	sastre1
6779	945	1	hay	\N		KEV	3	sastre1
6783	946	2	he	\N	\N	SOF	3	sastre1
6784	946	3	dejado	\N	\N	SOF	3	sastre1
6785	946	4	y	\N	\N	SOF	3	sastre1
6786	946	5	lo	\N	\N	SOF	3	sastre1
6787	946	6	he	\N	\N	SOF	3	sastre1
6788	946	7	dejado	\N	\N	SOF	3	sastre1
6789	946	8	.	\N	\N	SOF	999	sastre1
6782	946	1	lo	\N		SOF	3	sastre1
6791	947	2	tengo	\N	\N	SOF	3	sastre1
6792	947	3	que	\N	\N	SOF	3	sastre1
6793	947	4	hacer	\N	\N	SOF	3	sastre1
6794	947	5	dos	\N	\N	SOF	3	sastre1
6795	947	6	trabajos	\N	\N	SOF	3	sastre1
6796	947	7	para	\N	\N	SOF	3	sastre1
6797	947	8	el	\N	\N	SOF	3	sastre1
6798	947	9	cuatro	\N	\N	SOF	3	sastre1
6799	947	10	y	\N	\N	SOF	3	sastre1
6800	947	11	tengo	\N	\N	SOF	3	sastre1
6801	947	12	examen	\N	\N	SOF	3	sastre1
6802	947	13	el	\N	\N	SOF	3	sastre1
6803	947	14	cuatro	\N	\N	SOF	3	sastre1
6804	947	15	.	\N	\N	SOF	999	sastre1
6790	947	1	y	\N		SOF	3	sastre1
6806	948	2	.	\N	\N	KEV	999	sastre1
6805	948	1	mmhm	\N		KEV	0	sastre1
6808	949	2	lo	\N	\N	SOF	3	sastre1
6809	949	3	he	\N	\N	SOF	3	sastre1
6810	949	4	dejado	\N	\N	SOF	3	sastre1
6811	949	5	tanto	\N	\N	SOF	3	sastre1
6812	949	6	tiempo	\N	\N	SOF	3	sastre1
6813	949	7	que	\N	\N	SOF	3	sastre1
6814	949	8	no	\N	\N	SOF	3	sastre1
6815	949	9	he	\N	\N	SOF	3	sastre1
6816	949	10	acabado	\N	\N	SOF	3	sastre1
6817	949	11	.	\N	\N	SOF	999	sastre1
6807	949	1	y	\N		SOF	3	sastre1
6819	950	2	.	\N	\N	KEV	999	sastre1
6818	950	1	sí	\N		KEV	3	sastre1
6821	951	2	tú	\N	\N	KEV	3	sastre1
6822	951	3	sabes	\N	\N	KEV	3	sastre1
6823	951	4	que	\N	\N	KEV	3	sastre1
6820	951	1	er	\N		KEV	0	sastre1
6824	951	5	te	\N	\N	KEV	3	sastre1
6825	951	6	voy	\N	\N	KEV	3	sastre1
6826	951	7	a	\N	\N	KEV	3	sastre1
6827	951	8	conseguir	\N	\N	KEV	3	sastre1
6828	951	9	una	\N	\N	KEV	3	sastre1
6829	951	10	copia	\N	\N	KEV	3	sastre1
6830	951	11	.	\N	\N	KEV	999	sastre1
6832	952	2	tengo	\N	\N	KEV	3	sastre1
6833	952	3	un	\N	\N	KEV	3	sastre1
6834	952	4	diccionario	\N	\N	KEV	3	sastre1
6835	952	5	inglés	\N	\N	KEV	3	sastre1
6836	952	6	español	\N	\N	KEV	3	sastre1
6837	952	7	.	\N	\N	KEV	999	sastre1
6831	952	1	yo	\N		KEV	3	sastre1
6839	953	2	es	\N	\N	KEV	3	sastre1
6840	953	3	un	\N	\N	KEV	3	sastre1
6841	953	4	C_D	\N	\N	KEV	2	sastre1
6842	953	5	que	\N	\N	KEV	3	sastre1
6843	953	6	van	\N	\N	KEV	3	sastre1
6844	953	7	en	\N	\N	KEV	3	sastre1
6845	953	8	la	\N	\N	KEV	3	sastre1
6846	953	9	computadora	\N	\N	KEV	3	sastre1
6847	953	10	.	\N	\N	KEV	999	sastre1
6838	953	1	que	\N		KEV	3	sastre1
6849	954	2	no	\N	\N	KEV	3	sastre1
6850	954	3	nunca	\N	\N	KEV	3	sastre1
6851	954	4	has	\N	\N	KEV	3	sastre1
6852	954	5	usado	\N	\N	KEV	3	sastre1
6853	954	6	eso	\N	\N	KEV	3	sastre1
6854	954	7	.	\N	\N	KEV	999	sastre1
6848	954	1	tú	\N		KEV	3	sastre1
6856	955	2	no	\N	\N	SOF	3	sastre1
6857	955	3	.	\N	\N	SOF	999	sastre1
6855	955	1	no	\N		SOF	3	sastre1
6859	956	2	te	\N	\N	KEV	3	sastre1
6860	956	3	voy	\N	\N	KEV	3	sastre1
6861	956	4	a	\N	\N	KEV	3	sastre1
6862	956	5	buscar	\N	\N	KEV	3	sastre1
6863	956	6	.	\N	\N	KEV	999	sastre1
6858	956	1	espera	\N		KEV	3	sastre1
6865	957	2	lo	\N	\N	SOF	3	sastre1
6866	957	3	que	\N	\N	SOF	3	sastre1
6867	957	4	tengo	\N	\N	SOF	3	sastre1
6868	957	5	es	\N	\N	SOF	3	sastre1
6869	957	6	el	\N	\N	SOF	3	sastre1
6870	957	7	el	\N	\N	SOF	3	sastre1
6871	957	8	.	\N	\N	SOF	999	sastre1
6864	957	1	yo	\N		SOF	3	sastre1
6873	958	2	inglés	\N	\N	KEV	3	sastre1
6874	958	3	español	\N	\N	KEV	3	sastre1
6875	958	4	regular	\N	\N	KEV	3	sastre1
6876	958	5	.	\N	\N	KEV	999	sastre1
6872	958	1	el	\N		KEV	3	sastre1
6878	959	2	el	\N	\N	SOF	3	sastre1
6879	959	3	ese	\N	\N	SOF	3	sastre1
6880	959	4	que	\N	\N	SOF	3	sastre1
6881	959	5	mi	\N	\N	SOF	3	sastre1
6882	959	6	mamá	\N	\N	SOF	3	sastre1
6883	959	7	me	\N	\N	SOF	3	sastre1
6884	959	8	lo	\N	\N	SOF	3	sastre1
6885	959	9	dejó	\N	\N	SOF	3	sastre1
6886	959	10	.	\N	\N	SOF	999	sastre1
6877	959	1	sí	\N		SOF	3	sastre1
6888	960	2	padres	\N	\N	SOF	3	sastre1
6889	960	3	siempre	\N	\N	SOF	3	sastre1
6890	960	4	lo	\N	\N	SOF	3	sastre1
6891	960	5	tenían	\N	\N	SOF	3	sastre1
6892	960	6	y	\N	\N	SOF	3	sastre1
6893	960	7	me	\N	\N	SOF	3	sastre1
6894	960	8	me	\N	\N	SOF	3	sastre1
6895	960	9	lo	\N	\N	SOF	3	sastre1
6896	960	10	heredé	\N	\N	SOF	3	sastre1
6897	960	11	yo	\N	\N	SOF	3	sastre1
6898	960	12	.	\N	\N	SOF	999	sastre1
6887	960	1	mis	\N		SOF	3	sastre1
6900	961	2	lo	\N	\N	SOF	3	sastre1
6901	961	3	tengo	\N	\N	SOF	3	sastre1
6902	961	4	ahí	\N	\N	SOF	3	sastre1
6903	961	5	.	\N	\N	SOF	999	sastre1
6899	961	1	y	\N		SOF	3	sastre1
6905	962	2	te	\N	\N	KEV	3	sastre1
6906	962	3	voy	\N	\N	KEV	3	sastre1
6907	962	4	a	\N	\N	KEV	3	sastre1
6908	962	5	conseguir	\N	\N	KEV	3	sastre1
6909	962	6	una	\N	\N	KEV	3	sastre1
6910	962	7	copia	\N	\N	KEV	3	sastre1
6911	962	8	de	\N	\N	KEV	3	sastre1
6912	962	9	esto	\N	\N	KEV	3	sastre1
6913	962	10	porque	\N	\N	KEV	3	sastre1
6914	962	11	esto	\N	\N	KEV	3	sastre1
6915	962	12	es	\N	\N	KEV	3	sastre1
6916	962	13	en	\N	\N	KEV	3	sastre1
6917	962	14	la	\N	\N	KEV	3	sastre1
6918	962	15	computadora	\N	\N	KEV	3	sastre1
6919	962	16	.	\N	\N	KEV	999	sastre1
6904	962	1	yo	\N		KEV	3	sastre1
6921	963	2	lo	\N	\N	KEV	3	sastre1
6922	963	3	tienes	\N	\N	KEV	3	sastre1
6923	963	4	en	\N	\N	KEV	3	sastre1
6924	963	5	el	\N	\N	KEV	3	sastre1
6925	963	6	desktop	\N	\N	KEV	2	sastre1
6926	963	7	.	\N	\N	KEV	999	sastre1
6920	963	1	y	\N		KEV	3	sastre1
6928	964	2	así	\N	\N	KEV	3	sastre1
6929	964	3	.	\N	\N	KEV	999	sastre1
6927	964	1	aprietas	\N		KEV	3	sastre1
6931	965	2	la	\N	\N	KEV	3	sastre1
6932	965	3	palabra	\N	\N	KEV	3	sastre1
6933	965	4	en	\N	\N	KEV	3	sastre1
6934	965	5	inglés	\N	\N	KEV	3	sastre1
6935	965	6	o	\N	\N	KEV	3	sastre1
6936	965	7	en	\N	\N	KEV	3	sastre1
6937	965	8	español	\N	\N	KEV	3	sastre1
6938	965	9	.	\N	\N	KEV	999	sastre1
6930	965	1	pones	\N		KEV	3	sastre1
6940	966	2	te	\N	\N	KEV	3	sastre1
6941	966	3	da	\N	\N	KEV	3	sastre1
6942	966	4	la	\N	\N	KEV	3	sastre1
6943	966	5	traducción	\N	\N	KEV	3	sastre1
6944	966	6	.	\N	\N	KEV	999	sastre1
6939	966	1	y	\N		KEV	3	sastre1
6945	967	1	.	\N		SOF	999	sastre1
6947	968	2	te	\N	\N	KEV	3	sastre1
6946	968	1	y	\N		KEV	3	sastre1
6948	968	3	da	\N	\N	KEV	3	sastre1
6949	968	4	usos	\N	\N	KEV	3	sastre1
6950	968	5	y	\N	\N	KEV	3	sastre1
6951	968	6	cosas	\N	\N	KEV	3	sastre1
6952	968	7	de	\N	\N	KEV	3	sastre1
6953	968	8	diferentes	\N	\N	KEV	3	sastre1
6954	968	9	cosas	\N	\N	KEV	3	sastre1
6955	968	10	de	\N	\N	KEV	3	sastre1
6956	968	11	la	\N	\N	KEV	3	sastre1
6957	968	12	de	\N	\N	KEV	3	sastre1
6958	968	13	la	\N	\N	KEV	3	sastre1
6959	968	14	.	\N	\N	KEV	999	sastre1
\.


--
-- Name: sastre1_cgwords_pk; Type: CONSTRAINT; Schema: public; Owner: kevin; Tablespace: 
--

ALTER TABLE ONLY sastre1_cgwords
    ADD CONSTRAINT sastre1_cgwords_pk PRIMARY KEY (word_id);


--
-- PostgreSQL database dump complete
--

