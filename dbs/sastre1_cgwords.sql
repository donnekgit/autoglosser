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

SELECT pg_catalog.setval('sastre1_cgwords_word_id_seq', 6958, true);


--
-- Name: word_id; Type: DEFAULT; Schema: public; Owner: kevin
--

ALTER TABLE sastre1_cgwords ALTER COLUMN word_id SET DEFAULT nextval('sastre1_cgwords_word_id_seq'::regclass);


--
-- Data for Name: sastre1_cgwords; Type: TABLE DATA; Schema: public; Owner: kevin
--

COPY sastre1_cgwords (word_id, utterance_id, location, surface, auto, com, speaker, langid, filename) FROM stdin;
14	1	14	?	\N	\N	KEV	999	sastre1
2	1	2	y	and.CONJ	\N	KEV	3	sastre1
22	2	8	?	\N	\N	KEV	999	sastre1
16	2	2	rotondita	roundabout.N.F.SG.DIM.DIM	\N	KEV	3	sastre1
26	3	4	.	\N	\N	SOF	999	sastre1
25	3	3	illegal	illegal.ADJ	\N	SOF	2	sastre1
31	4	5	.	\N	\N	SOF	999	sastre1
28	4	2	rotonda	roundabout.N.F.SG	\N	SOF	3	sastre1
36	5	5	.	\N	\N	SOF	999	sastre1
33	5	2	what	what.REL	\N	SOF	2	sastre1
42	6	6	.	\N	\N	SOF	999	sastre1
38	6	2	de	of.PREP	\N	SOF	3	sastre1
57	7	15	.	\N	\N	SOF	999	sastre1
45	7	3	entra	enter.V.2S.IMPER	\N	SOF	3	sastre1
61	8	4	.	\N	\N	SOF	999	sastre1
60	8	3	sé	be.V.2S.IMPER	\N	SOF	3	sastre1
68	9	7	?	\N	\N	SOF	999	sastre1
63	9	2	va	go.V.23S.PRES	\N	SOF	3	sastre1
78	10	10	.	\N	\N	SOF	999	sastre1
70	10	2	no	not.ADV	\N	SOF	3	sastre1
80	11	2	.	\N	\N	KEV	999	sastre1
96	14	4	o	or.CONJ	\N	KEV	3	sastre1
83	12	3	.	\N	\N	KEV	999	sastre1
97	14	5	el	the.DET.DEF.M.SG	\N	KEV	3	sastre1
92	13	9	.	\N	\N	SOF	999	sastre1
98	14	6	de	of.PREP	\N	KEV	3	sastre1
100	14	8	?	\N	\N	KEV	999	sastre1
99	14	7	salir	exit.V.INFIN	\N	KEV	3	sastre1
104	15	4	.	\N	\N	SOF	999	sastre1
103	15	3	entras	enter.V.2S.PRES	\N	SOF	3	sastre1
106	16	2	.	\N	\N	KEV	999	sastre1
107	17	1	bueno	well.IM		KEV	3	sastre1
113	17	7	.	\N	\N	KEV	999	sastre1
108	17	2	ese	that.PRON.DEM.M.SG	\N	KEV	3	sastre1
118	18	5	.	\N	\N	KEV	999	sastre1
115	18	2	tiene	have.V.23S.PRES	\N	KEV	3	sastre1
1	1	1	bueno	well.IM		KEV	3	sastre1
3	1	3	qué	what.INT	\N	KEV	3	sastre1
4	1	4	tú	you.PRON.SUB.MF.2S	\N	KEV	3	sastre1
6	1	6	de	of.PREP	\N	KEV	3	sastre1
7	1	7	aquí	here.ADV	\N	KEV	3	sastre1
8	1	8	la	her.PRON.OBJ.F.3S	\N	KEV	3	sastre1
10	1	10	lo	the.DET.DEF.NT.SG	\N	KEV	3	sastre1
11	1	11	que	that.PRON.REL	\N	KEV	3	sastre1
12	1	12	están	be.V.23P.PRES	\N	KEV	3	sastre1
13	1	13	haciendo	do.V.PRESPART	\N	KEV	3	sastre1
17	2	3	esa	that.PRON.DEM.F.SG	\N	KEV	3	sastre1
18	2	4	do	do.SV.INFIN	\N	KEV	2	sastre1
20	2	6	like	like.V.2SP.PRES	\N	KEV	2	sastre1
21	2	7	that	that.DEM.FAR	\N	KEV	2	sastre1
23	3	1	pero	but.CONJ		SOF	3	sastre1
27	4	1	esa	that.ADJ.DEM.F.SG		SOF	3	sastre1
29	4	3	es	be.V.23S.PRES	\N	SOF	3	sastre1
32	5	1	from	from.PREP		SOF	2	sastre1
34	5	3	I	I.PRON.SUB.1S	\N	SOF	2	sastre1
35	5	4	know	know.V.1S.PRES	\N	SOF	2	sastre1
39	6	3	eso	that.PRON.DEM.NT.SG	\N	SOF	3	sastre1
40	6	4	es	be.V.23S.PRES	\N	SOF	3	sastre1
41	6	5	illegal	illegal.ADJ	\N	SOF	2	sastre1
43	7	1	y	and.CONJ		SOF	3	sastre1
46	7	4	algún	some.ADJ.M.SG	\N	SOF	3	sastre1
47	7	5	camión	lorry.N.M.SG	\N	SOF	3	sastre1
48	7	6	ahí	there.ADV	\N	SOF	3	sastre1
50	7	8	ejemplo	example.N.M.SG	\N	SOF	3	sastre1
51	7	9	a	to.PREP	\N	SOF	3	sastre1
52	7	10	dejar	leave.V.INFIN	\N	SOF	3	sastre1
54	7	12	o	or.CONJ	\N	SOF	3	sastre1
55	7	13	cualquier	whatever.ADJ.MF.SG	\N	SOF	3	sastre1
56	7	14	cosa	thing.N.F.SG	\N	SOF	3	sastre1
58	8	1	yo	I.PRON.SUB.MF.1S		SOF	3	sastre1
62	9	1	cómo	how.INT		SOF	3	sastre1
64	9	3	a	to.PREP	\N	SOF	3	sastre1
65	9	4	doblar	bend.V.INFIN	\N	SOF	3	sastre1
67	9	6	rotondita	roundabout.N.F.SG.DIM.DIM	\N	SOF	3	sastre1
69	10	1	porque	because.CONJ		SOF	3	sastre1
72	10	4	fácil	easy.ADJ.M.SG	\N	SOF	3	sastre1
73	10	5	para	stall.V.2S.IMPER	\N	SOF	3	sastre1
74	10	6	los	the.DET.DEF.M.PL	\N	SOF	3	sastre1
75	10	7	carros	car.N.M.PL	\N	SOF	3	sastre1
79	11	1	no	unk		KEV	0	sastre1
101	15	1	cuando	when.CONJ		SOF	3	sastre1
102	15	2	tú	you.PRON.SUB.MF.2S	\N	SOF	3	sastre1
105	16	1	mmhm	unk		KEV	0	sastre1
109	17	3	está	be.V.23S.PRES	\N	KEV	3	sastre1
110	17	4	en	in.PREP	\N	KEV	3	sastre1
111	17	5	la	the.DET.DEF.F.SG	\N	KEV	3	sastre1
112	17	6	intersección	intersection.N.F.SG	\N	KEV	3	sastre1
114	18	1	ese	that.PRON.DEM.M.SG		KEV	3	sastre1
116	18	3	bastante	enough.ADJ.MF.SG	\N	KEV	3	sastre1
117	18	4	espacio	space.N.M.SG	\N	KEV	3	sastre1
120	19	2	otro	other.PRON.M.SG	\N	KEV	3	sastre1
121	19	3	yo	I.PRON.SUB.MF.1S	\N	KEV	3	sastre1
122	19	4	lo	him.PRON.OBJ.M.3S	\N	KEV	3	sastre1
123	19	5	veo	see.V.1S.PRES	\N	KEV	3	sastre1
124	19	6	más	more.ADV	\N	KEV	3	sastre1
130	19	12	.	\N	\N	KEV	999	sastre1
141	20	11	?	\N	\N	SOF	999	sastre1
132	20	2	viste	dress.V.2S.IMPER	\N	SOF	3	sastre1
149	21	8	?	\N	\N	SOF	999	sastre1
143	21	2	viste	dress.V.2S.IMPER	\N	SOF	3	sastre1
151	22	2	.	\N	\N	KEV	999	sastre1
152	23	1	tú	you.PRON.SUB.MF.2S		SOF	3	sastre1
157	23	6	.	\N	\N	SOF	999	sastre1
153	23	2	no	not.ADV	\N	SOF	3	sastre1
162	24	5	.	\N	\N	KEV	999	sastre1
159	24	2	los	the.DET.DEF.M.PL	\N	KEV	3	sastre1
171	25	9	.	\N	\N	SOF	999	sastre1
164	25	2	bloquecitos	block.N.M.PL.DIM.DIM	\N	SOF	3	sastre1
173	26	2	.	\N	\N	KEV	999	sastre1
174	27	1	donde	where.REL		SOF	3	sastre1
179	27	6	.	\N	\N	SOF	999	sastre1
175	27	2	estaban	be.V.3P.IMPERF	\N	SOF	3	sastre1
186	28	7	.	\N	\N	KEV	999	sastre1
181	28	2	lo	the.DET.DEF.NT.SG	\N	KEV	3	sastre1
188	29	2	.	\N	\N	SOF	999	sastre1
189	30	1	y	and.CONJ		KEV	3	sastre1
203	30	15	.	\N	\N	KEV	999	sastre1
190	30	2	pero	but.CONJ	\N	KEV	3	sastre1
209	31	6	.	\N	\N	SOF	999	sastre1
205	31	2	pero	but.CONJ	\N	SOF	3	sastre1
220	32	11	.	\N	\N	KEV	999	sastre1
211	32	2	yo	I.PRON.SUB.MF.1S	\N	KEV	3	sastre1
222	33	2	.	\N	\N	SOF	999	sastre1
223	34	1	eso	that.PRON.DEM.NT.SG		KEV	3	sastre1
224	34	2	más	more.ADV	\N	KEV	3	sastre1
119	19	1	el	the.DET.DEF.M.SG		KEV	3	sastre1
125	19	7	difícil	difficult.ADJ.M.SG	\N	KEV	3	sastre1
126	19	8	porque	because.CONJ	\N	KEV	3	sastre1
127	19	9	es	be.V.23S.PRES	\N	KEV	3	sastre1
128	19	10	más	more.ADV	\N	KEV	3	sastre1
129	19	11	estrechito	tight.ADJ.M.SG.DIM.DIM	\N	KEV	3	sastre1
131	20	1	pero	but.CONJ		SOF	3	sastre1
133	20	3	las	the.DET.DEF.F.PL	\N	SOF	3	sastre1
134	20	4	cositas	thing.N.F.PL.DIM.DIM	\N	SOF	3	sastre1
135	20	5	que	that.PRON.REL	\N	SOF	3	sastre1
136	20	6	compraron	buy.V.3P.PAST	\N	SOF	3	sastre1
137	20	7	para	stall.V.2S.IMPER	\N	SOF	3	sastre1
138	20	8	los	the.DET.DEF.M.PL	\N	SOF	3	sastre1
139	20	9	speed	speed.N.SG	\N	SOF	2	sastre1
140	20	10	bumps	bump.N.PL	\N	SOF	2	sastre1
142	21	1	tú	you.PRON.SUB.MF.2S		SOF	3	sastre1
144	21	3	lo	the.DET.DEF.NT.SG	\N	SOF	3	sastre1
145	21	4	que	that.PRON.REL	\N	SOF	3	sastre1
146	21	5	van	go.V.23P.PRES	\N	SOF	3	sastre1
147	21	6	a	to.PREP	\N	SOF	3	sastre1
148	21	7	hacer	do.V.INFIN	\N	SOF	3	sastre1
150	22	1	no	not.ADV		KEV	3	sastre1
154	23	3	has	have.V.2S.PRES	\N	SOF	3	sastre1
155	23	4	visto	see.V.PASTPART	\N	SOF	3	sastre1
156	23	5	una	a.DET.INDEF.F.SG	\N	SOF	3	sastre1
158	24	1	sí	yes.ADV		KEV	3	sastre1
160	24	3	bloquecitos	block.N.M.PL.DIM.DIM	\N	KEV	3	sastre1
161	24	4	esos	that.PRON.DEM.M.PL	\N	KEV	3	sastre1
163	25	1	los	the.DET.DEF.M.PL		SOF	3	sastre1
165	25	3	esos	that.PRON.DEM.M.PL	\N	SOF	3	sastre1
166	25	4	para	stall.V.2S.IMPER	\N	SOF	3	sastre1
167	25	5	ponerlos	put.V.INFIN	\N	SOF	3	sastre1
168	25	6	en	in.PREP	\N	SOF	3	sastre1
169	25	7	el	the.DET.DEF.M.SG	\N	SOF	3	sastre1
170	25	8	medio	middle.N.M.SG	\N	SOF	3	sastre1
172	26	1	sí	yes.ADV		KEV	3	sastre1
176	27	3	las	the.DET.DEF.F.PL	\N	SOF	3	sastre1
177	27	4	tablitas	table.N.F.PL.DIM.DIM	\N	SOF	3	sastre1
178	27	5	esas	that.PRON.DEM.F.PL	\N	SOF	3	sastre1
182	28	3	que	that.PRON.REL	\N	KEV	3	sastre1
183	28	4	hicieron	do.V.3P.PAST	\N	KEV	3	sastre1
184	28	5	de	of.PREP	\N	KEV	3	sastre1
187	29	1	ajá	aha.IM		SOF	3	sastre1
191	30	3	eso	that.PRON.DEM.NT.SG	\N	KEV	3	sastre1
192	30	4	lo	the.DET.DEF.NT.SG	\N	KEV	3	sastre1
194	30	6	va	go.V.23S.PRES	\N	KEV	3	sastre1
195	30	7	a	to.PREP	\N	KEV	3	sastre1
196	30	8	ser	be.V.INFIN	\N	KEV	3	sastre1
197	30	9	como	like.CONJ	\N	KEV	3	sastre1
199	30	11	pedacito	bit.N.M.SG.DIM.DIM	\N	KEV	3	sastre1
200	30	12	de	of.PREP	\N	KEV	3	sastre1
201	30	13	tile	tile.N.SG	\N	KEV	2	sastre1
204	31	1	sí	yes.ADV		SOF	3	sastre1
206	31	3	a	to.PREP	\N	SOF	3	sastre1
207	31	4	lo	the.DET.DEF.NT.SG	\N	SOF	3	sastre1
208	31	5	mejor	good.ADJ.M.SG	\N	SOF	3	sastre1
212	32	3	no	not.ADV	\N	KEV	3	sastre1
213	32	4	creo	believe.V.1S.PRES	\N	KEV	3	sastre1
214	32	5	que	that.CONJ	\N	KEV	3	sastre1
216	32	7	sea	be.V.123S.SUBJ.PRES	\N	KEV	3	sastre1
217	32	8	mucho	much.ADV	\N	KEV	3	sastre1
218	32	9	speed	speed.N.SG	\N	KEV	2	sastre1
221	33	1	bueno	well.IM		SOF	3	sastre1
225	34	3	bien	well.ADV	\N	KEV	3	sastre1
226	34	4	yo	I.PRON.SUB.MF.1S	\N	KEV	3	sastre1
228	34	6	que	that.CONJ	\N	KEV	3	sastre1
229	34	7	lo	the.DET.DEF.NT.SG	\N	KEV	3	sastre1
230	34	8	que	that.PRON.REL	\N	KEV	3	sastre1
232	34	10	a	to.PREP	\N	KEV	3	sastre1
233	34	11	hacer	do.V.INFIN	\N	KEV	3	sastre1
234	34	12	es	be.V.23S.PRES	\N	KEV	3	sastre1
235	34	13	como	like.CONJ	\N	KEV	3	sastre1
239	34	17	.	\N	\N	KEV	999	sastre1
244	35	5	?	\N	\N	KEV	999	sastre1
241	35	2	la	the.DET.DEF.F.SG	\N	KEV	3	sastre1
254	36	10	?	\N	\N	SOF	999	sastre1
246	36	2	la	the.DET.DEF.F.SG	\N	SOF	3	sastre1
260	37	6	.	\N	\N	KEV	999	sastre1
257	37	3	van	go.V.23P.PRES	\N	KEV	3	sastre1
267	38	7	.	\N	\N	SOF	999	sastre1
262	38	2	es	be.V.23S.PRES	\N	SOF	3	sastre1
277	39	10	.	\N	\N	SOF	999	sastre1
269	39	2	primero	first.ADV	\N	SOF	3	sastre1
279	40	2	.	\N	\N	KEV	999	sastre1
280	41	1	no	not.ADV		SOF	3	sastre1
284	41	5	.	\N	\N	SOF	999	sastre1
281	41	2	que	that.CONJ	\N	SOF	3	sastre1
291	42	7	.	\N	\N	KEV	999	sastre1
287	42	3	sí	yes.ADV	\N	KEV	3	sastre1
295	43	4	.	\N	\N	KEV	999	sastre1
293	43	2	asfalto	tarmac.N.M.SG	\N	KEV	3	sastre1
301	44	6	.	\N	\N	SOF	999	sastre1
297	44	2	gastando	spend.V.PRESPART	\N	SOF	3	sastre1
311	45	10	.	\N	\N	KEV	999	sastre1
303	45	2	asfalto	tarmac.N.M.SG	\N	KEV	3	sastre1
323	46	12	.	\N	\N	KEV	999	sastre1
313	46	2	limpiado	clean.V.PASTPART	\N	KEV	3	sastre1
330	47	7	.	\N	\N	KEV	999	sastre1
326	47	3	haber	have.V	\N	KEV	3	sastre1
333	48	3	.	\N	\N	KEV	999	sastre1
334	49	1	limpiado	clean.V.M.SG.PASTPART		KEV	3	sastre1
335	49	2	.	\N	\N	KEV	999	sastre1
336	50	1	y	and.CONJ		KEV	3	sastre1
341	50	6	.	\N	\N	KEV	999	sastre1
337	50	2	ya	already.ADV	\N	KEV	3	sastre1
348	51	7	.	\N	\N	KEV	999	sastre1
343	51	2	bueno	well.IM	\N	KEV	3	sastre1
357	52	9	?	\N	\N	SOF	999	sastre1
351	52	3	parquecito	playground.N.M.SG.DIM.DIM	\N	SOF	3	sastre1
236	34	14	un	one.DET.INDEF.M.SG	\N	KEV	3	sastre1
238	34	16	pero	but.CONJ	\N	KEV	3	sastre1
240	35	1	baja	lower.V.2S.IMPER		KEV	3	sastre1
242	35	3	velocidad	velocity.N.F.SG	\N	KEV	3	sastre1
243	35	4	ahí	there.ADV	\N	KEV	3	sastre1
247	36	3	calle	street.N.F.SG	\N	SOF	3	sastre1
248	36	4	no	not.ADV	\N	SOF	3	sastre1
250	36	6	van	go.V.23P.PRES	\N	SOF	3	sastre1
251	36	7	a	to.PREP	\N	SOF	3	sastre1
252	36	8	hacer	do.V.INFIN	\N	SOF	3	sastre1
253	36	9	no	not.ADV	\N	SOF	3	sastre1
255	37	1	sí	yes.ADV		KEV	3	sastre1
258	37	4	a	to.PREP	\N	KEV	3	sastre1
259	37	5	asfaltar	tarmac.V.INFIN	\N	KEV	3	sastre1
261	38	1	pero	but.CONJ		SOF	3	sastre1
264	38	4	yo	I.PRON.SUB.MF.1S	\N	SOF	3	sastre1
265	38	5	no	not.ADV	\N	SOF	3	sastre1
266	38	6	entiendo	understand.V.1S.PRES	\N	SOF	3	sastre1
270	39	3	se	be.V.2P.IMPER.PRECLITIC.PRECLITIC	\N	SOF	3	sastre1
271	39	4	asfalta	tarmac.V.2S.IMPER	\N	SOF	3	sastre1
273	39	6	de	of.PREP	\N	SOF	3	sastre1
274	39	7	poner	put.V.INFIN	\N	SOF	3	sastre1
275	39	8	la	the.DET.DEF.F.SG	\N	SOF	3	sastre1
276	39	9	hierba	grass.N.F.SG	\N	SOF	3	sastre1
282	41	3	yo	I.PRON.SUB.MF.1S	\N	SOF	3	sastre1
283	41	4	sepa	know.V.1S.SUBJ.PRES	\N	SOF	3	sastre1
285	42	1	sí	yes.ADV		KEV	3	sastre1
288	42	4	no	not.ADV	\N	KEV	3	sastre1
289	42	5	tienes	have.V.2S.PRES	\N	KEV	3	sastre1
290	42	6	razón	reason.N.F.SG	\N	KEV	3	sastre1
294	43	3	era	era.N.F.SG	\N	KEV	3	sastre1
296	44	1	están	be.V.23P.PRES		SOF	3	sastre1
299	44	4	dinero	money.N.M.SG	\N	SOF	3	sastre1
300	44	5	ahí	there.ADV	\N	SOF	3	sastre1
302	45	1	el	the.DET.DEF.M.SG		KEV	3	sastre1
304	45	3	era	era.N.F.SG	\N	KEV	3	sastre1
306	45	5	que	that.CONJ	\N	KEV	3	sastre1
307	45	6	lo	him.PRON.OBJ.M.3S	\N	KEV	3	sastre1
309	45	8	hecho	fact.N.M.SG	\N	KEV	3	sastre1
310	45	9	primero	first.ADV	\N	KEV	3	sastre1
312	46	1	hubieran	have.V.3P.SUBJ.IMPERF		KEV	3	sastre1
314	46	3	todos	all.ADJ.M.PL	\N	KEV	3	sastre1
316	46	5	leftovers	leftover.N.PL	\N	KEV	2	sastre1
317	46	6	de	of.PREP	\N	KEV	3	sastre1
318	46	7	asfalto	tarmac.N.M.SG	\N	KEV	3	sastre1
319	46	8	y	and.CONJ	\N	KEV	3	sastre1
321	46	10	esa	that.ADJ.DEM.F.SG	\N	KEV	3	sastre1
322	46	11	cosa	thing.N.F.SG	\N	KEV	3	sastre1
324	47	1	entonces	then.ADV		KEV	3	sastre1
327	47	4	sembrado	seed.V.PASTPART	\N	KEV	3	sastre1
328	47	5	la	the.DET.DEF.F.SG	\N	KEV	3	sastre1
329	47	6	hierba	grass.N.F.SG	\N	KEV	3	sastre1
331	48	1	haber	have.V		KEV	3	sastre1
338	50	3	acabado	finish.V.M.SG.PASTPART	\N	KEV	3	sastre1
340	50	5	eso	that.PRON.DEM.NT.SG	\N	KEV	3	sastre1
342	51	1	pero	but.CONJ		KEV	3	sastre1
345	51	4	tendrán	have.V.3P.FUT	\N	KEV	3	sastre1
346	51	5	su	his.ADJ.POSS.MF.23SP.S.S	\N	KEV	3	sastre1
347	51	6	idea	contrive.V.2S.IMPER	\N	KEV	3	sastre1
349	52	1	y	and.CONJ		SOF	3	sastre1
352	52	4	viste	dress.V.2S.IMPER	\N	SOF	3	sastre1
353	52	5	que	that.CONJ	\N	SOF	3	sastre1
355	52	7	a	to.PREP	\N	SOF	3	sastre1
356	52	8	hacer	do.V.INFIN	\N	SOF	3	sastre1
358	53	1	aquí	here.ADV		KEV	3	sastre1
360	53	3	?	\N	\N	KEV	999	sastre1
363	54	3	.	\N	\N	SOF	999	sastre1
364	55	1	no	not.ADV		KEV	3	sastre1
369	55	6	.	\N	\N	KEV	999	sastre1
365	55	2	no	not.ADV	\N	KEV	3	sastre1
383	56	14	?	\N	\N	SOF	999	sastre1
372	56	3	que	that.CONJ	\N	SOF	3	sastre1
391	57	8	.	\N	\N	KEV	999	sastre1
385	57	2	no	not.ADV	\N	KEV	3	sastre1
400	58	9	.	\N	\N	KEV	999	sastre1
394	58	3	que	that.CONJ	\N	KEV	3	sastre1
402	59	2	.	\N	\N	SOF	999	sastre1
403	60	1	estaba	be.V.13S.IMPERF		KEV	3	sastre1
420	60	18	.	\N	\N	KEV	999	sastre1
404	60	2	puesto	stand.N.M.SG	\N	KEV	3	sastre1
432	61	12	.	\N	\N	KEV	999	sastre1
422	61	2	ahora	now.ADV	\N	KEV	3	sastre1
442	62	10	.	\N	\N	KEV	999	sastre1
435	62	3	me	me.PRON.OBL.MF.1S	\N	KEV	3	sastre1
443	63	1	.	\N		SOF	999	sastre1
449	64	6	.	\N	\N	KEV	999	sastre1
446	64	3	rico	nice.ADJ.M.SG	\N	KEV	3	sastre1
452	65	3	.	\N	\N	SOF	999	sastre1
451	65	2	beautiful	beautiful.ADJ	\N	SOF	2	sastre1
456	66	4	.	\N	\N	KEV	999	sastre1
454	66	2	mmhm	unk	\N	KEV	0	sastre1
460	67	4	.	\N	\N	SOF	999	sastre1
458	67	2	tan	so.ADV	\N	SOF	3	sastre1
462	68	2	.	\N	\N	KEV	999	sastre1
465	70	2	terraza	terrace.N.F.SG	\N	KEV	3	sastre1
463	69	1	.	\N		SOF	999	sastre1
475	70	12	.	\N	\N	KEV	999	sastre1
466	70	3	déjame	leave.V.2S.IMPER.PRECLITIC.PRECLITIC	\N	KEV	3	sastre1
477	71	2	.	\N	\N	KEV	999	sastre1
478	72	1	y	and.CONJ		SOF	3	sastre1
480	72	3	que	that.PRON.REL	\N	SOF	3	sastre1
359	53	2	atrás	backwards.ADV	\N	KEV	3	sastre1
361	54	1	el	the.DET.DEF.M.SG		SOF	3	sastre1
366	55	3	me	me.PRON.OBL.MF.1S	\N	KEV	3	sastre1
367	55	4	he	have.V.1S.PRES	\N	KEV	3	sastre1
368	55	5	fijado	fix.V.PASTPART	\N	KEV	3	sastre1
370	56	1	no	not.ADV		SOF	3	sastre1
373	56	4	te	you.PRON.OBL.MF.2S	\N	SOF	3	sastre1
374	56	5	mandaron	order.V.3P.PAST	\N	SOF	3	sastre1
375	56	6	una	a.DET.INDEF.F.SG	\N	SOF	3	sastre1
377	56	8	hoy	today.ADV	\N	SOF	3	sastre1
378	56	9	con	with.PREP	\N	SOF	3	sastre1
379	56	10	todo	everything.PRON.M.SG	\N	SOF	3	sastre1
381	56	12	del	of_the.PREP+DET.DEF.M.SG	\N	SOF	3	sastre1
382	56	13	meeting	unk	\N	SOF	2	sastre1
384	57	1	no	not.ADV		KEV	3	sastre1
386	57	3	no	not.ADV	\N	KEV	3	sastre1
388	57	5	en	in.PREP	\N	KEV	3	sastre1
389	57	6	la	the.DET.DEF.F.SG	\N	KEV	3	sastre1
390	57	7	puerta	door.N.F.SG	\N	KEV	3	sastre1
392	58	1	cuando	when.CONJ		KEV	3	sastre1
395	58	4	nos	us.PRON.OBL.MF.1P	\N	KEV	3	sastre1
396	58	5	íbamos	go.V.1P.IMPERF	\N	KEV	3	sastre1
397	58	6	pal	unk	\N	KEV	3	sastre1
398	58	7	bicycle	bicycle.N.SG	\N	KEV	2	sastre1
401	59	1	mmhm	unk		SOF	0	sastre1
405	60	3	en	in.PREP	\N	KEV	3	sastre1
406	60	4	la	the.DET.DEF.F.SG	\N	KEV	3	sastre1
408	60	6	y	and.CONJ	\N	KEV	3	sastre1
409	60	7	yo	I.PRON.SUB.MF.1S	\N	KEV	3	sastre1
410	60	8	lo	him.PRON.OBJ.M.3S	\N	KEV	3	sastre1
411	60	9	tiré	throw.V.1S.PAST	\N	KEV	3	sastre1
413	60	11	dentro	inside.ADV	\N	KEV	3	sastre1
414	60	12	de	of.PREP	\N	KEV	3	sastre1
415	60	13	la	the.DET.DEF.F.SG	\N	KEV	3	sastre1
417	60	15	y	and.CONJ	\N	KEV	3	sastre1
418	60	16	nos	us.PRON.OBL.MF.1P	\N	KEV	3	sastre1
419	60	17	fuimos	go.V.1P.PAST	\N	KEV	3	sastre1
421	61	1	y	and.CONJ		KEV	3	sastre1
424	61	4	vi	see.V.1S.PAST	\N	KEV	3	sastre1
425	61	5	que	that.CONJ	\N	KEV	3	sastre1
426	61	6	lo	him.PRON.OBJ.M.3S	\N	KEV	3	sastre1
428	61	8	sacado	remove.V.PASTPART	\N	KEV	3	sastre1
429	61	9	de	of.PREP	\N	KEV	3	sastre1
430	61	10	la	the.DET.DEF.F.SG	\N	KEV	3	sastre1
431	61	11	maleta	suitcase.N.F.SG	\N	KEV	3	sastre1
433	62	1	pero	but.CONJ		KEV	3	sastre1
436	62	4	he	have.V.1S.PRES	\N	KEV	3	sastre1
437	62	5	fijado	fix.V.PASTPART	\N	KEV	3	sastre1
438	62	6	qué	what.INT	\N	KEV	3	sastre1
440	62	8	hay	there_is.V.23S.PRES	\N	KEV	3	sastre1
441	62	9	dentro	inside.ADV	\N	KEV	3	sastre1
444	64	1	y	and.CONJ		KEV	3	sastre1
447	64	4	el	the.DET.DEF.M.SG	\N	KEV	3	sastre1
448	64	5	tiempo	time.N.M.SG	\N	KEV	3	sastre1
453	66	1	mmhm	unk		KEV	0	sastre1
455	66	3	mmhm	unk	\N	KEV	0	sastre1
457	67	1	está	be.V.23S.PRES		SOF	3	sastre1
459	67	3	lindo	cute.ADJ.M.SG	\N	SOF	3	sastre1
461	68	1	sí	yes.ADV		KEV	3	sastre1
468	70	5	que	that.CONJ	\N	KEV	3	sastre1
469	70	6	vale	cost.V.2S.IMPER	\N	KEV	3	sastre1
470	70	7	el	the.DET.DEF.M.SG	\N	KEV	3	sastre1
471	70	8	precio	price.N.M.SG	\N	KEV	3	sastre1
473	70	10	la	the.DET.DEF.F.SG	\N	KEV	3	sastre1
474	70	11	casa	marry.V.2S.IMPER	\N	KEV	3	sastre1
476	71	1	espacio	space.N.M.SG		KEV	3	sastre1
481	72	4	no	not.ADV	\N	SOF	3	sastre1
496	72	19	.	\N	\N	SOF	999	sastre1
499	73	3	?	\N	\N	KEV	999	sastre1
500	74	1	una	a.DET.INDEF.F.SG		SOF	3	sastre1
502	74	3	.	\N	\N	SOF	999	sastre1
501	74	2	hamaca	hammock.N.F.SG	\N	SOF	3	sastre1
504	75	2	.	\N	\N	KEV	999	sastre1
505	76	1	no	not.ADV		SOF	3	sastre1
511	76	7	?	\N	\N	SOF	999	sastre1
506	76	2	te	you.PRON.OBL.MF.2S	\N	SOF	3	sastre1
522	77	11	.	\N	\N	SOF	999	sastre1
514	77	3	entre	between.PREP	\N	SOF	3	sastre1
528	78	6	.	\N	\N	KEV	999	sastre1
525	78	3	pudiera	might.V.13S.SUBJ.IMPERF	\N	KEV	3	sastre1
542	79	14	.	\N	\N	KEV	999	sastre1
530	79	2	tengo	have.V.1S.PRES	\N	KEV	3	sastre1
551	80	9	.	\N	\N	KEV	999	sastre1
545	80	3	set	set.V.1S.PRES	\N	KEV	2	sastre1
574	81	23	.	\N	\N	KEV	999	sastre1
553	81	2	no	not.ADV	\N	KEV	3	sastre1
576	82	2	.	\N	\N	SOF	999	sastre1
577	83	1	it's	it.PRON.SUB.3S.+BE.V.3S.PRES		KEV	2	sastre1
580	83	4	.	\N	\N	KEV	999	sastre1
578	83	2	not	not.ADV	\N	KEV	2	sastre1
585	84	5	.	\N	\N	KEV	999	sastre1
583	84	3	something	something.PRON	\N	KEV	2	sastre1
604	85	19	.	\N	\N	KEV	999	sastre1
587	85	2	sí	yes.ADV	\N	KEV	3	sastre1
482	72	5	la	her.PRON.OBJ.F.3S	\N	SOF	3	sastre1
483	72	6	has	have.V.2S.PRES	\N	SOF	3	sastre1
485	72	8	en	in.PREP	\N	SOF	3	sastre1
486	72	9	una	a.DET.INDEF.F.SG	\N	SOF	3	sastre1
487	72	10	cómo	how.INT	\N	SOF	3	sastre1
488	72	11	se	be.V.2P.IMPER.PRECLITIC.PRECLITIC	\N	SOF	3	sastre1
490	72	13	esto	this.PRON.DEM.NT.SG	\N	SOF	3	sastre1
491	72	14	una	a.DET.INDEF.F.SG	\N	SOF	3	sastre1
493	72	16	hammock	hammock.N.SG	\N	SOF	2	sastre1
494	72	17	de	of.PREP	\N	SOF	3	sastre1
495	72	18	esos	that.PRON.DEM.M.PL	\N	SOF	3	sastre1
497	73	1	una	a.DET.INDEF.F.SG		KEV	3	sastre1
503	75	1	no	not.ADV		KEV	3	sastre1
507	76	3	ha	have.V.23S.PRES	\N	SOF	3	sastre1
509	76	5	por	for.PREP	\N	SOF	3	sastre1
510	76	6	eso	that.PRON.DEM.NT.SG	\N	SOF	3	sastre1
512	77	1	ahí	there.ADV		SOF	3	sastre1
515	77	4	las	the.DET.DEF.F.PL	\N	SOF	3	sastre1
516	77	5	dos	two.NUM	\N	SOF	3	sastre1
517	77	6	palmas	palm.N.F.PL	\N	SOF	3	sastre1
519	77	8	puede	might.V.2S.IMPER	\N	SOF	3	sastre1
520	77	9	poner	put.V.INFIN	\N	SOF	3	sastre1
521	77	10	ahí	there.ADV	\N	SOF	3	sastre1
523	78	1	ahí	there.ADV		KEV	3	sastre1
526	78	4	poner	put.V.INFIN	\N	KEV	3	sastre1
527	78	5	sí	yes.ADV	\N	KEV	3	sastre1
531	79	3	una	a.DET.INDEF.F.SG	\N	KEV	3	sastre1
532	79	4	que	that.PRON.REL	\N	KEV	3	sastre1
534	79	6	vez	time.N.F.SG	\N	KEV	3	sastre1
535	79	7	que	that.PRON.REL	\N	KEV	3	sastre1
536	79	8	nos	us.PRON.OBL.MF.1P	\N	KEV	3	sastre1
537	79	9	vamos	go.V.1P.PRES	\N	KEV	3	sastre1
539	79	11	we	we.PRON.SUB.1P	\N	KEV	2	sastre1
540	79	12	take	take.V.1P.PRES	\N	KEV	2	sastre1
541	79	13	it	it.PRON.OBJ.3S	\N	KEV	2	sastre1
543	80	1	and	and.CONJ		KEV	2	sastre1
546	80	4	it	it.PRON.OBJ.3S	\N	KEV	2	sastre1
547	80	5	up	up.ADV	\N	KEV	2	sastre1
548	80	6	in	in.PREP	\N	KEV	2	sastre1
549	80	7	the	the.DET.DEF	\N	KEV	2	sastre1
552	81	1	pero	but.CONJ		KEV	3	sastre1
554	81	3	aquí	here.ADV	\N	KEV	3	sastre1
555	81	4	no	not.ADV	\N	KEV	3	sastre1
557	81	6	nos	us.PRON.OBL.MF.1P	\N	KEV	3	sastre1
558	81	7	ha	have.V.23S.PRES	\N	KEV	3	sastre1
559	81	8	ocurrido	occur.V.PASTPART	\N	KEV	3	sastre1
560	81	9	como	like.CONJ	\N	KEV	3	sastre1
562	81	11	lo	the.DET.DEF.NT.SG	\N	KEV	3	sastre1
563	81	12	que	that.PRON.REL	\N	KEV	3	sastre1
564	81	13	pasa	pass.V.2S.IMPER	\N	KEV	3	sastre1
566	81	15	que	that.CONJ	\N	KEV	3	sastre1
567	81	16	the	the.DET.DEF	\N	KEV	2	sastre1
568	81	17	ground	ground.N.SG	\N	KEV	2	sastre1
569	81	18	in	in.PREP	\N	KEV	2	sastre1
571	81	20	back	back.N.SG	\N	KEV	2	sastre1
572	81	21	it's	it.PRON.SUB.3S.+BE.V.3S.PRES	\N	KEV	2	sastre1
573	81	22	slanted	slant.V.PASTPART	\N	KEV	2	sastre1
579	83	3	even	even.ADJ	\N	KEV	2	sastre1
581	84	1	so	so.ADV		KEV	2	sastre1
584	84	4	to	to.PREP	\N	KEV	2	sastre1
586	85	1	pero	but.CONJ		KEV	3	sastre1
589	85	4	pudieran	might.V.3P.SUBJ.IMPERF	\N	KEV	3	sastre1
590	85	5	poner	put.V.INFIN	\N	KEV	3	sastre1
591	85	6	un	one.DET.INDEF.M.SG	\N	KEV	3	sastre1
592	85	7	par	pair.N.M.SG	\N	KEV	3	sastre1
594	85	9	tubos	tube.N.M.PL	\N	KEV	3	sastre1
595	85	10	o	or.CONJ	\N	KEV	3	sastre1
596	85	11	algo	something.PRON.M.SG	\N	KEV	3	sastre1
597	85	12	so	so.ADV	\N	KEV	2	sastre1
599	85	14	could	can.V.COND	\N	KEV	2	sastre1
600	85	15	uh	unk	\N	KEV	0	sastre1
601	85	16	install	install.V.INFIN	\N	KEV	2	sastre1
602	85	17	the	the.DET.DEF	\N	KEV	2	sastre1
605	86	1	this	this.DEM.NEAR.SG		SOF	2	sastre1
610	86	6	.	\N	\N	SOF	999	sastre1
613	87	3	.	\N	\N	KEV	999	sastre1
614	88	1	and	and.CONJ		SOF	2	sastre1
621	88	8	.	\N	\N	SOF	999	sastre1
615	88	2	this	this.DEM.NEAR.SG	\N	SOF	2	sastre1
626	89	5	.	\N	\N	KEV	999	sastre1
624	89	3	really	real.ADJ.+LY	\N	KEV	2	sastre1
637	90	11	.	\N	\N	KEV	999	sastre1
628	90	2	it	it.PRON.SUB.3S	\N	KEV	2	sastre1
648	91	11	.	\N	\N	KEV	999	sastre1
639	91	2	gotta	go.V.2SP.PRES.+TO.PREP	\N	KEV	2	sastre1
660	92	12	.	\N	\N	KEV	999	sastre1
649	92	1	that	that.DEM.FAR[or]that.CONJ		KEV	2	sastre1
668	93	8	.	\N	\N	KEV	999	sastre1
662	93	2	three	three.NUM	\N	KEV	2	sastre1
681	94	13	.	\N	\N	SOF	999	sastre1
670	94	2	but	but.CONJ	\N	SOF	2	sastre1
684	95	3	.	\N	\N	KEV	999	sastre1
683	95	2	we	we.PRON.SUB.1P	\N	KEV	2	sastre1
697	96	13	.	\N	\N	SOF	999	sastre1
686	96	2	pools	pool.N.PL	\N	SOF	2	sastre1
705	97	8	.	\N	\N	SOF	999	sastre1
700	97	3	even	even.ADV	\N	SOF	2	sastre1
715	98	10	.	\N	\N	KEV	999	sastre1
707	98	2	we	we.PRON.SUB.1P	\N	KEV	2	sastre1
606	86	2	is	is.V.3S.PRES	\N	SOF	2	sastre1
607	86	3	great	great.ADJ	\N	SOF	2	sastre1
608	86	4	back	back.ADV	\N	SOF	2	sastre1
609	86	5	here	here.ADV	\N	SOF	2	sastre1
611	87	1	mmhm	unk		KEV	0	sastre1
616	88	3	month	month.N.SG	\N	SOF	2	sastre1
617	88	4	that	that.DEM.FAR	\N	SOF	2	sastre1
618	88	5	is	is.V.3S.PRES	\N	SOF	2	sastre1
620	88	7	cool	cool.SV.INFIN	\N	SOF	2	sastre1
622	89	1	it's	it.PRON.SUB.3S.+BE.V.3S.PRES		KEV	2	sastre1
625	89	4	nice	nice.ADJ	\N	KEV	2	sastre1
627	90	1	when	when.CONJ		KEV	2	sastre1
629	90	3	gets	get.V.3S.PRES	\N	KEV	2	sastre1
631	90	5	July	name	\N	KEV	2	sastre1
632	90	6	and	and.CONJ	\N	KEV	2	sastre1
633	90	7	August	name	\N	KEV	2	sastre1
634	90	8	it	it.PRON.SUB.3S	\N	KEV	2	sastre1
635	90	9	gets	get.V.3S.PRES	\N	KEV	2	sastre1
638	91	1	you	you.PRON.SUB.2SP		KEV	2	sastre1
640	91	3	wait	wait.V.INFIN	\N	KEV	2	sastre1
642	91	5	almost	almost.ADV	\N	KEV	2	sastre1
643	91	6	the	the.DET.DEF	\N	KEV	2	sastre1
644	91	7	end	end.N.SG	\N	KEV	2	sastre1
645	91	8	of	of.PREP	\N	KEV	2	sastre1
646	91	9	the	the.DET.DEF	\N	KEV	2	sastre1
650	92	2	starts	start.V.3S.PRES	\N	KEV	2	sastre1
652	92	4	off	off.ADV	\N	KEV	2	sastre1
653	92	5	a	a.DET.INDEF	\N	KEV	2	sastre1
654	92	6	little	little.ADJ	\N	KEV	2	sastre1
655	92	7	bit	bit.N.SG	\N	KEV	2	sastre1
656	92	8	to	to.PREP	\N	KEV	2	sastre1
657	92	9	be	be.V.INFIN	\N	KEV	2	sastre1
659	92	11	here	here.ADV	\N	KEV	2	sastre1
661	93	1	at	at.PREP		KEV	2	sastre1
663	93	3	thirty	thirty.NUM	\N	KEV	2	sastre1
664	93	4	four	four.NUM	\N	KEV	2	sastre1
666	93	6	it's	it.PRON.SUB.3S.+BE.V.3S.PRES	\N	KEV	2	sastre1
667	93	7	fine	fine.N.SG	\N	KEV	2	sastre1
669	94	1	ah	ah.IM		SOF	2	sastre1
672	94	4	God	name	\N	SOF	2	sastre1
673	94	5	you	you.PRON.SUB.2SP	\N	SOF	2	sastre1
674	94	6	don't	do.V.2SP.PRES.+NEG	\N	SOF	2	sastre1
675	94	7	have	have.V.INFIN	\N	SOF	2	sastre1
677	94	9	worry	worry.V.INFIN	\N	SOF	2	sastre1
678	94	10	about	about.PREP	\N	SOF	2	sastre1
679	94	11	a	a.DET.INDEF	\N	SOF	2	sastre1
682	95	1	bueno	well.IM		KEV	3	sastre1
685	96	1	because	because.CONJ		SOF	2	sastre1
687	96	3	are	are.V.123P.PRES	\N	SOF	2	sastre1
689	96	5	for	for.PREP	\N	SOF	2	sastre1
690	96	6	when	when.CONJ	\N	SOF	2	sastre1
691	96	7	you	you.PRON.SUB.2SP	\N	SOF	2	sastre1
692	96	8	have	have.V.2SP.PRES	\N	SOF	2	sastre1
694	96	10	kids	kid.N.PL	\N	SOF	2	sastre1
695	96	11	but	but.CONJ	\N	SOF	2	sastre1
696	96	12	already	already.ADV	\N	SOF	2	sastre1
698	97	1	they	they.PRON.SUB.3P		SOF	2	sastre1
701	97	4	wanna	want.V.INFIN.+TO.PREP	\N	SOF	2	sastre1
702	97	5	jump	jump.V.INFIN	\N	SOF	2	sastre1
703	97	6	in	in.PREP	\N	SOF	2	sastre1
706	98	1	eh	unk		KEV	0	sastre1
708	98	3	had	had.V.PAST	\N	KEV	2	sastre1
709	98	4	a	a.DET.INDEF	\N	KEV	2	sastre1
710	98	5	hard	hard.ADJ	\N	KEV	2	sastre1
712	98	7	finding	find.V.PRESPART	\N	KEV	2	sastre1
713	98	8	the	the.DET.DEF	\N	KEV	2	sastre1
714	98	9	house	house.N.SG	\N	KEV	2	sastre1
718	99	3	were	were.V.1P.PAST	\N	KEV	2	sastre1
719	99	4	looking	look.V.PRESPART	\N	KEV	2	sastre1
720	99	5	for	for.PREP	\N	KEV	2	sastre1
721	99	6	a	a.DET.INDEF	\N	KEV	2	sastre1
723	99	8	in	in.PREP	\N	KEV	2	sastre1
724	99	9	Miami	name	\N	KEV	2	sastre1
725	99	10	Lakes	name	\N	KEV	2	sastre1
726	99	11	on	on.PREP	\N	KEV	2	sastre1
728	99	13	lake	lake.N.SG	\N	KEV	2	sastre1
729	99	14	without	without.PREP	\N	KEV	2	sastre1
730	99	15	the	the.DET.DEF	\N	KEV	2	sastre1
732	99	17	.	\N	\N	KEV	999	sastre1
749	100	17	.	\N	\N	KEV	999	sastre1
734	100	2	that	that.DEM.FAR	\N	KEV	2	sastre1
754	101	5	.	\N	\N	KEV	999	sastre1
751	101	2	couldn't	can.V.COND.+NEG	\N	KEV	2	sastre1
760	102	6	.	\N	\N	KEV	999	sastre1
756	102	2	couldn't	can.V.COND.+NEG	\N	KEV	2	sastre1
767	103	7	.	\N	\N	SOF	999	sastre1
762	103	2	of	of.PREP	\N	SOF	2	sastre1
772	104	5	.	\N	\N	KEV	999	sastre1
769	104	2	all	all.ADJ	\N	KEV	2	sastre1
780	105	8	.	\N	\N	KEV	999	sastre1
774	105	2	then	then.ADV	\N	KEV	2	sastre1
781	106	1	.	\N		SOF	999	sastre1
788	107	7	.	\N	\N	KEV	999	sastre1
783	107	2	la	her.PRON.OBJ.F.3S	\N	KEV	3	sastre1
794	108	6	.	\N	\N	KEV	999	sastre1
790	108	2	viejito	old_guy.N.M.SG.DIM.DIM	\N	KEV	3	sastre1
800	109	6	.	\N	\N	KEV	999	sastre1
797	109	3	vendiendo	sell.V.PRESPART	\N	KEV	3	sastre1
805	110	5	.	\N	\N	SOF	999	sastre1
803	110	3	me	me.PRON.OBL.MF.1S	\N	SOF	3	sastre1
812	111	7	.	\N	\N	KEV	999	sastre1
807	111	2	bajado	lower.V.PASTPART	\N	KEV	3	sastre1
829	112	17	.	\N	\N	KEV	999	sastre1
815	112	3	como	like.CONJ	\N	KEV	3	sastre1
831	113	2	entonces	then.ADV	\N	KEV	3	sastre1
716	99	1	because	because.CONJ		KEV	2	sastre1
731	99	16	pool	pool.N.SG	\N	KEV	2	sastre1
733	100	1	and	and.CONJ		KEV	2	sastre1
735	100	3	made	made.V.PAST	\N	KEV	2	sastre1
736	100	4	it	it.PRON.OBJ.3S	\N	KEV	2	sastre1
737	100	5	very	very.ADV	\N	KEV	2	sastre1
738	100	6	difficult	difficult.ADJ	\N	KEV	2	sastre1
739	100	7	in	in.PREP	\N	KEV	2	sastre1
740	100	8	nineteen	nineteen.NUM	\N	KEV	2	sastre1
741	100	9	ninety	ninety.NUM	\N	KEV	2	sastre1
742	100	10	eight	eight.NUM	\N	KEV	2	sastre1
743	100	11	when	when.CONJ	\N	KEV	2	sastre1
744	100	12	we	we.PRON.SUB.1P	\N	KEV	2	sastre1
745	100	13	bought	bought.V.PAST	\N	KEV	2	sastre1
746	100	14	here	here.ADV	\N	KEV	2	sastre1
747	100	15	finding	find.V.PRESPART	\N	KEV	2	sastre1
748	100	16	that	that.DEM.FAR	\N	KEV	2	sastre1
750	101	1	we	we.PRON.SUB.1P		KEV	2	sastre1
752	101	3	find	find.V.INFIN	\N	KEV	2	sastre1
753	101	4	it	it.PRON.OBJ.3S	\N	KEV	2	sastre1
755	102	1	we	we.PRON.SUB.1P		KEV	2	sastre1
757	102	3	find	find.V.INFIN	\N	KEV	2	sastre1
758	102	4	any	any.ADJ	\N	KEV	2	sastre1
759	102	5	house	house.N.SG	\N	KEV	2	sastre1
761	103	1	most	most.ADJ		SOF	2	sastre1
763	103	3	the	the.DET.DEF	\N	SOF	2	sastre1
764	103	4	houses	house.N.PL	\N	SOF	2	sastre1
765	103	5	have	have.V.3P.PRES	\N	SOF	2	sastre1
766	103	6	pool	pool.N.SG	\N	SOF	2	sastre1
768	104	1	they	they.PRON.SUB.3P		KEV	2	sastre1
770	104	3	have	have.SV.INFIN	\N	KEV	2	sastre1
771	104	4	pools	pool.N.PL	\N	KEV	2	sastre1
773	105	1	and	and.CONJ		KEV	2	sastre1
775	105	3	we	we.PRON.SUB.1P	\N	KEV	2	sastre1
776	105	4	came	came.V.PAST	\N	KEV	2	sastre1
777	105	5	across	across.PREP	\N	KEV	2	sastre1
778	105	6	this	this.DEM.NEAR.SG	\N	KEV	2	sastre1
779	105	7	one	one.PRON.SG	\N	KEV	2	sastre1
782	107	1	que	that.CONJ		KEV	3	sastre1
784	107	3	estaban	be.V.3P.IMPERF	\N	KEV	3	sastre1
785	107	4	vendiendo	sell.V.PRESPART	\N	KEV	3	sastre1
786	107	5	desde	since.PREP	\N	KEV	3	sastre1
789	108	1	el	the.DET.DEF.M.SG		KEV	3	sastre1
791	108	3	se	be.V.2P.IMPER.PRECLITIC.PRECLITIC	\N	KEV	3	sastre1
795	109	1	la	her.PRON.OBJ.F.3S		KEV	3	sastre1
793	108	5	muerto	dead.ADJ.M.SG[or]dead.N.M.SG	\N	KEV	3	sastre1
798	109	4	desde	since.PREP	\N	KEV	3	sastre1
799	109	5	abril	April.N.M.SG	\N	KEV	3	sastre1
801	110	1	ya	already.ADV		SOF	3	sastre1
804	110	4	recuerdo	recall.V.1S.PRES	\N	SOF	3	sastre1
806	111	1	habían	have.V.3P.IMPERF		KEV	3	sastre1
809	111	4	precio	price.N.M.SG	\N	KEV	3	sastre1
810	111	5	un	one.DET.INDEF.M.SG	\N	KEV	3	sastre1
811	111	6	viaje	voyage.N.M.SG	\N	KEV	3	sastre1
813	112	1	y	and.CONJ		KEV	3	sastre1
816	112	4	en	in.PREP	\N	KEV	3	sastre1
817	112	5	agosto	August.N.M.SG	\N	KEV	3	sastre1
818	112	6	que	that.PRON.REL	\N	KEV	3	sastre1
821	112	9	la	her.PRON.OBJ.F.3S	\N	KEV	3	sastre1
820	112	8	encontramos	find.V.1P.PAST[or]find.V.1P.PRES	\N	KEV	3	sastre1
822	112	10	casa	marry.V.2S.IMPER	\N	KEV	3	sastre1
824	112	12	vuelto	have.V.3P.IMPERF	\N	KEV	3	sastre1
825	112	13	a	to.PREP	\N	KEV	3	sastre1
826	112	14	bajar	lower.V.INFIN	\N	KEV	3	sastre1
828	112	16	precio	price.N.M.SG	\N	KEV	3	sastre1
830	113	1	y	and.CONJ		KEV	3	sastre1
833	113	4	con	with.PREP	\N	KEV	3	sastre1
834	113	5	la	the.DET.DEF.F.SG	\N	KEV	3	sastre1
835	113	6	hija	daughter.N.F.SG	\N	KEV	3	sastre1
836	113	7	de	of.PREP	\N	KEV	3	sastre1
837	113	8	Lucía	name	\N	KEV	3	sastre1
838	113	9	la	the.DET.DEF.F.SG	\N	KEV	3	sastre1
840	113	11	que	that.PRON.REL	\N	KEV	3	sastre1
841	113	12	vive	live.V.2S.IMPER	\N	KEV	3	sastre1
843	113	14	.	\N	\N	KEV	999	sastre1
845	114	2	.	\N	\N	SOF	999	sastre1
846	115	1	and	and.CONJ		KEV	2	sastre1
851	115	6	.	\N	\N	KEV	999	sastre1
848	115	3	got	got.V.PAST	\N	KEV	2	sastre1
865	116	14	.	\N	\N	KEV	999	sastre1
854	116	3	on	on.PREP	\N	KEV	2	sastre1
874	117	9	.	\N	\N	SOF	999	sastre1
867	117	2	you've	you.PRON.SUB.2SP.+HAVE.V.PRES	\N	SOF	2	sastre1
877	118	3	.	\N	\N	KEV	999	sastre1
878	119	1	you	you.PRON.SUB.2SP		SOF	2	sastre1
883	119	6	.	\N	\N	SOF	999	sastre1
879	119	2	have	have.V.2SP.PRES	\N	SOF	2	sastre1
886	120	3	.	\N	\N	SOF	999	sastre1
885	120	2	incredible	incredible.ADJ	\N	SOF	2	sastre1
888	121	2	.	\N	\N	KEV	999	sastre1
889	122	1	y	and.CONJ		KEV	3	sastre1
896	122	8	.	\N	\N	KEV	999	sastre1
891	122	3	vamos	go.V.1P.PRES	\N	KEV	3	sastre1
898	123	2	.	\N	\N	SOF	999	sastre1
899	124	1	porque	because.CONJ		KEV	3	sastre1
906	124	8	.	\N	\N	KEV	999	sastre1
900	124	2	el	the.DET.DEF.M.SG	\N	KEV	3	sastre1
914	125	8	.	\N	\N	KEV	999	sastre1
908	125	2	we	we.PRON.SUB.1P	\N	KEV	2	sastre1
925	126	11	.	\N	\N	KEV	999	sastre1
916	126	2	my	my.ADJ.POSS.1S	\N	KEV	2	sastre1
930	127	5	.	\N	\N	KEV	999	sastre1
927	127	2	change	change.V.INFIN	\N	KEV	2	sastre1
946	128	16	.	\N	\N	KEV	999	sastre1
933	128	3	the	the.DET.DEF	\N	KEV	2	sastre1
948	129	2	.	\N	\N	KEV	999	sastre1
949	130	1	make	make.V.INFIN		SOF	2	sastre1
953	130	5	.	\N	\N	SOF	999	sastre1
950	130	2	it	it.PRON.OBJ.3S	\N	SOF	2	sastre1
958	131	5	?	\N	\N	SOF	999	sastre1
955	131	2	don't	do.V.2SP.PRES.+NEG	\N	SOF	2	sastre1
965	132	7	.	\N	\N	KEV	999	sastre1
960	132	2	tub	tub.N.SG	\N	KEV	2	sastre1
842	113	13	aquí	here.ADV	\N	KEV	3	sastre1
844	114	1	mmhm	unk		SOF	0	sastre1
849	115	4	it	it.PRON.OBJ.3S	\N	KEV	2	sastre1
850	115	5	pero	but.CONJ	\N	KEV	3	sastre1
852	116	1	a	a.DET.INDEF		KEV	2	sastre1
855	116	4	the	the.DET.DEF	\N	KEV	2	sastre1
856	116	5	lake	lake.N.SG	\N	KEV	2	sastre1
857	116	6	without	without.PREP	\N	KEV	2	sastre1
858	116	7	a	a.DET.INDEF	\N	KEV	2	sastre1
860	116	9	is	is.V.3S.PRES	\N	KEV	2	sastre1
861	116	10	almost	almost.ADV	\N	KEV	2	sastre1
862	116	11	impossible	impossible.ADJ	\N	KEV	2	sastre1
863	116	12	to	to.PREP	\N	KEV	2	sastre1
866	117	1	but	but.CONJ		SOF	2	sastre1
868	117	3	done	done.V.PASTPART	\N	SOF	2	sastre1
870	117	5	lot	lot.N.SG	\N	SOF	2	sastre1
871	117	6	to	to.PREP	\N	SOF	2	sastre1
872	117	7	this	this.DEM.NEAR.SG	\N	SOF	2	sastre1
873	117	8	house	house.N.SG	\N	SOF	2	sastre1
875	118	1	mmhm	unk		KEV	0	sastre1
880	119	3	done	done.V.PASTPART	\N	SOF	2	sastre1
881	119	4	so	so.ADV	\N	SOF	2	sastre1
884	120	1	it's	it.PRON.SUB.3S.+BE.V.3S.PRES		SOF	2	sastre1
887	121	1	yeah	yeah.ADV		KEV	2	sastre1
892	122	4	a	to.PREP	\N	KEV	3	sastre1
893	122	5	hacerle	do.V.INFIN	\N	KEV	3	sastre1
894	122	6	el	the.DET.DEF.M.SG	\N	KEV	3	sastre1
897	123	1	yeah	yeah.ADV		SOF	2	sastre1
901	124	3	baño	bathroom.N.M.SG	\N	KEV	3	sastre1
903	124	5	el	the.DET.DEF.M.SG	\N	KEV	3	sastre1
904	124	6	baño	bathroom.N.M.SG	\N	KEV	3	sastre1
907	125	1	eh	unk		KEV	0	sastre1
909	125	3	are	are.V.1P.PRES	\N	KEV	2	sastre1
910	125	4	gonna	go.V.PRESPART.+TO.PREP	\N	KEV	2	sastre1
911	125	5	redo	redo.V.INFIN	\N	KEV	2	sastre1
913	125	7	bathroom	bathroom.N.SG	\N	KEV	2	sastre1
915	126	1	ah	unk		KEV	0	sastre1
917	126	3	idea	idea.N.SG	\N	KEV	2	sastre1
919	126	5	was	was.V.3S.PAST	\N	KEV	2	sastre1
920	126	6	just	just.ADV	\N	KEV	2	sastre1
921	126	7	to	to.PREP	\N	KEV	2	sastre1
922	126	8	leave	leave.V.INFIN	\N	KEV	2	sastre1
923	126	9	the	the.DET.DEF	\N	KEV	2	sastre1
924	126	10	tub	tub.N.SG	\N	KEV	2	sastre1
928	127	3	everything	everything.PRON	\N	KEV	2	sastre1
929	127	4	else	else.ADJ	\N	KEV	2	sastre1
931	128	1	pero	but.CONJ		KEV	3	sastre1
934	128	4	new	new.ADJ	\N	KEV	2	sastre1
935	128	5	idea	idea.N.SG	\N	KEV	2	sastre1
936	128	6	is	is.V.3S.PRES	\N	KEV	2	sastre1
938	128	8	be	be.V.INFIN	\N	KEV	2	sastre1
939	128	9	that	that.CONJ	\N	KEV	2	sastre1
940	128	10	we	we.PRON.SUB.1P	\N	KEV	2	sastre1
941	128	11	are	are.V.1P.PRES	\N	KEV	2	sastre1
943	128	13	to	to.PREP	\N	KEV	2	sastre1
944	128	14	replace	replace.V.INFIN	\N	KEV	2	sastre1
945	128	15	everything	everything.PRON	\N	KEV	2	sastre1
951	130	3	a	a.DET.INDEF	\N	SOF	2	sastre1
954	131	1	you	you.PRON.SUB.2SP		SOF	2	sastre1
956	131	3	like	like.CONJ	\N	SOF	2	sastre1
957	131	4	showers	shower.N.PL	\N	SOF	2	sastre1
959	132	1	a	a.DET.INDEF		KEV	2	sastre1
961	132	3	but	but.CONJ	\N	KEV	2	sastre1
963	132	5	new	new.ADJ	\N	KEV	2	sastre1
964	132	6	tub	tub.N.SG	\N	KEV	2	sastre1
968	133	3	.	\N	\N	SOF	999	sastre1
969	134	1	because	because.CONJ		KEV	2	sastre1
980	134	12	.	\N	\N	KEV	999	sastre1
970	134	2	it's	it.PRON.SUB.3S.+BE.V.3S.PRES	\N	KEV	2	sastre1
990	135	10	.	\N	\N	KEV	999	sastre1
982	135	2	then	then.ADV	\N	KEV	2	sastre1
995	136	5	.	\N	\N	KEV	999	sastre1
993	136	3	of	of.PREP	\N	KEV	2	sastre1
1003	137	8	.	\N	\N	KEV	999	sastre1
997	137	2	are	are.V.1P.PRES	\N	KEV	2	sastre1
1013	138	10	.	\N	\N	KEV	999	sastre1
1005	138	2	las	the.DET.DEF.F.PL	\N	KEV	3	sastre1
1022	139	9	.	\N	\N	KEV	999	sastre1
1016	139	3	deja	leave.V.2S.IMPER	\N	KEV	3	sastre1
1024	140	2	.	\N	\N	SOF	999	sastre1
1025	141	1	que	that.CONJ		KEV	3	sastre1
1032	141	8	.	\N	\N	KEV	999	sastre1
1026	141	2	ah	unk	\N	KEV	0	sastre1
1034	142	2	.	\N	\N	SOF	999	sastre1
1035	143	1	y	and.CONJ		KEV	3	sastre1
1038	143	4	.	\N	\N	KEV	999	sastre1
1037	143	3	también	too.ADV	\N	KEV	3	sastre1
1046	144	8	.	\N	\N	KEV	999	sastre1
1040	144	2	llevan	wear.V.23P.PRES	\N	KEV	3	sastre1
1049	145	3	.	\N	\N	SOF	999	sastre1
1050	146	1	hasta	until.PREP		KEV	3	sastre1
1055	146	6	.	\N	\N	KEV	999	sastre1
1051	146	2	arriba	arrive.V.2S.IMPER	\N	KEV	3	sastre1
1062	147	7	.	\N	\N	SOF	999	sastre1
1057	147	2	aquí	here.ADV	\N	SOF	3	sastre1
1075	148	13	.	\N	\N	KEV	999	sastre1
1064	148	2	ahora	now.ADV	\N	KEV	3	sastre1
1076	149	1	.	\N		SOF	999	sastre1
1078	150	2	.	\N	\N	KEV	999	sastre1
1079	151	1	y	and.CONJ		KEV	3	sastre1
1080	151	2	hay	there_is.V.23S.PRES	\N	KEV	3	sastre1
966	133	1	oh	unk		SOF	0	sastre1
972	134	4	be	be.V.INFIN	\N	KEV	2	sastre1
973	134	5	very	very.ADV	\N	KEV	2	sastre1
974	134	6	hard	hard.ADJ	\N	KEV	2	sastre1
975	134	7	to	to.PREP	\N	KEV	2	sastre1
976	134	8	leave	leave.V.INFIN	\N	KEV	2	sastre1
977	134	9	an	an.DET.INDEF	\N	KEV	2	sastre1
979	134	11	tub	tub.N.SG	\N	KEV	2	sastre1
981	135	1	and	and.CONJ		KEV	2	sastre1
983	135	3	match	match.V.INFIN	\N	KEV	2	sastre1
985	135	5	else	else.ADJ	\N	KEV	2	sastre1
986	135	6	to	to.PREP	\N	KEV	2	sastre1
987	135	7	the	the.DET.DEF	\N	KEV	2	sastre1
988	135	8	old	old.ADJ	\N	KEV	2	sastre1
989	135	9	tub	tub.N.SG	\N	KEV	2	sastre1
991	136	1	so	so.ADV		KEV	2	sastre1
994	136	4	a	a.DET.INDEF	\N	KEV	2	sastre1
996	137	1	we	we.PRON.SUB.1P		KEV	2	sastre1
999	137	4	redo	redo.V.INFIN	\N	KEV	2	sastre1
1000	137	5	the	the.DET.DEF	\N	KEV	2	sastre1
1001	137	6	whole	whole.ADJ	\N	KEV	2	sastre1
1002	137	7	thing	thing.N.SG	\N	KEV	2	sastre1
1006	138	3	paredes	wall.N.F.PL	\N	KEV	3	sastre1
1007	138	4	poner	put.V.INFIN	\N	KEV	3	sastre1
1008	138	5	los	the.DET.DEF.M.PL	\N	KEV	3	sastre1
1010	138	7	walls	wall.N.PL	\N	KEV	2	sastre1
1011	138	8	esos	that.PRON.DEM.M.PL	\N	KEV	3	sastre1
1012	138	9	nuevos	new.ADJ.M.PL	\N	KEV	3	sastre1
1014	139	1	que	that.CONJ		KEV	3	sastre1
1017	139	4	que	that.CONJ	\N	KEV	3	sastre1
1018	139	5	no	not.ADV	\N	KEV	3	sastre1
1020	139	7	la	the.DET.DEF.F.SG	\N	KEV	3	sastre1
1021	139	8	humedad	humidity.N.F.SG	\N	KEV	3	sastre1
1023	140	1	humidity	humidity.N.SG		SOF	2	sastre1
1027	141	3	eh	unk	\N	KEV	0	sastre1
1029	141	5	son	sound.N.M.SG	\N	KEV	3	sastre1
1030	141	6	como	like.CONJ	\N	KEV	3	sastre1
1031	141	7	waterproof	waterproof.ADJ	\N	KEV	2	sastre1
1033	142	1	mmhm	unk		SOF	0	sastre1
1039	144	1	eh	unk		KEV	0	sastre1
1041	144	3	las	the.DET.DEF.F.PL	\N	KEV	3	sastre1
1042	144	4	losas	slabs.N.F.SG	\N	KEV	3	sastre1
1044	144	6	ladrillos	brick.N.M.PL	\N	KEV	3	sastre1
1045	144	7	los	the.DET.DEF.M.PL	\N	KEV	3	sastre1
1047	145	1	para	stall.V.2S.IMPER		SOF	3	sastre1
1052	146	3	hasta	until.PREP	\N	KEV	3	sastre1
1053	146	4	el	the.DET.DEF.M.SG	\N	KEV	3	sastre1
1056	147	1	y	and.CONJ		SOF	3	sastre1
1058	147	3	antes	before.ADV	\N	SOF	3	sastre1
1059	147	4	was	was.V.3S.PAST	\N	SOF	2	sastre1
1060	147	5	half	half.N.SG	\N	SOF	2	sastre1
1063	148	1	sí	yes.ADV		KEV	3	sastre1
1065	148	3	están	be.V.23P.PRES	\N	KEV	3	sastre1
1066	148	4	eh	unk	\N	KEV	0	sastre1
1067	148	5	más	more.ADV	\N	KEV	3	sastre1
1068	148	6	o	or.CONJ	\N	KEV	3	sastre1
1070	148	8	al	to_the.PREP+DET.DEF.M.SG	\N	KEV	3	sastre1
1071	148	9	nivel	level.N.M.SG	\N	KEV	3	sastre1
1072	148	10	de	of.PREP	\N	KEV	3	sastre1
1074	148	12	ventana	window.N.F.SG	\N	KEV	3	sastre1
1077	150	1	mmhm	unk		KEV	0	sastre1
1082	151	4	que	that.PRON.REL	\N	KEV	3	sastre1
1083	151	5	alrededor	around.ADV	\N	KEV	3	sastre1
1084	151	6	del	of_the.PREP+DET.DEF.M.SG	\N	KEV	3	sastre1
1085	151	7	inodoro	toilet.N.M.SG	\N	KEV	3	sastre1
1087	151	9	están	be.V.23P.PRES	\N	KEV	3	sastre1
1088	151	10	bajitos	low.ADJ.M.PL.DIM.DIM	\N	KEV	3	sastre1
1090	151	12	.	\N	\N	KEV	999	sastre1
1095	152	5	.	\N	\N	KEV	999	sastre1
1092	152	2	llevarlo	wear.V.INFIN	\N	KEV	3	sastre1
1104	153	9	.	\N	\N	KEV	999	sastre1
1097	153	2	que	that.CONJ	\N	KEV	3	sastre1
1117	154	13	.	\N	\N	KEV	999	sastre1
1106	154	2	ya	already.ADV	\N	KEV	3	sastre1
1121	155	4	.	\N	\N	KEV	999	sastre1
1119	155	2	por	for.PREP	\N	KEV	3	sastre1
1122	156	1	.	\N		KEV	999	sastre1
1131	157	9	.	\N	\N	KEV	999	sastre1
1125	157	3	a	to.PREP	\N	KEV	3	sastre1
1133	158	2	.	\N	\N	SOF	999	sastre1
1134	159	1	sí	yes.ADV		KEV	3	sastre1
1135	159	2	.	\N	\N	KEV	999	sastre1
1136	160	1	sí	yes.ADV		KEV	3	sastre1
1145	160	10	.	\N	\N	KEV	999	sastre1
1137	160	2	porque	because.CONJ	\N	KEV	3	sastre1
1150	161	5	.	\N	\N	KEV	999	sastre1
1147	161	2	it's	it.PRON.SUB.3S.+BE.V.3S.PRES	\N	KEV	2	sastre1
1165	162	15	.	\N	\N	KEV	999	sastre1
1152	162	2	when	when.CONJ	\N	KEV	2	sastre1
1167	163	2	.	\N	\N	SOF	999	sastre1
1168	164	1	and	and.CONJ		KEV	2	sastre1
1175	164	8	.	\N	\N	KEV	999	sastre1
1169	164	2	open	open.V.INFIN	\N	KEV	2	sastre1
1180	165	5	.	\N	\N	KEV	999	sastre1
1177	165	2	other	other.ADJ	\N	KEV	2	sastre1
1188	166	8	.	\N	\N	KEV	999	sastre1
1182	166	2	other	other.ADJ	\N	KEV	2	sastre1
1193	167	5	.	\N	\N	KEV	999	sastre1
1190	167	2	just	just.ADV	\N	KEV	2	sastre1
1198	168	5	.	\N	\N	SOF	999	sastre1
1195	168	2	press	press.V.INFIN	\N	SOF	2	sastre1
1201	169	3	.	\N	\N	KEV	999	sastre1
1200	169	2	the	the.DET.DEF	\N	KEV	2	sastre1
1203	170	2	.	\N	\N	SOF	999	sastre1
1204	171	1	and	and.CONJ		KEV	2	sastre1
1205	171	2	.	\N	\N	KEV	999	sastre1
1206	172	1	and	and.CONJ		SOF	2	sastre1
1210	172	5	.	\N	\N	SOF	999	sastre1
1207	172	2	everything	everything.PRON	\N	SOF	2	sastre1
1212	173	2	don't	do.V.2SP.PRES.+NEG	\N	KEV	2	sastre1
1091	152	1	entonces	then.ADV		KEV	3	sastre1
1094	152	4	arriba	arrive.V.2S.IMPER	\N	KEV	3	sastre1
1096	153	1	después	afterwards.ADV		KEV	3	sastre1
1098	153	3	hagamos	do.V.1P.SUBJ.PRES	\N	KEV	3	sastre1
1100	153	5	posiblemente	possibly.ADV	\N	KEV	3	sastre1
1101	153	6	hagamos	do.V.1P.SUBJ.PRES	\N	KEV	3	sastre1
1102	153	7	el	the.DET.DEF.M.SG	\N	KEV	3	sastre1
1105	154	1	y	and.CONJ		KEV	3	sastre1
1107	154	3	entonces	then.ADV	\N	KEV	3	sastre1
1108	154	4	ahora	now.ADV	\N	KEV	3	sastre1
1109	154	5	quiero	want.V.1S.PRES	\N	KEV	3	sastre1
1110	154	6	eh	unk	\N	KEV	0	sastre1
1112	154	8	the	the.DET.DEF	\N	KEV	2	sastre1
1113	154	9	sprinkler	sprinkler.N.SG	\N	KEV	2	sastre1
1114	154	10	system	system.N.SG	\N	KEV	2	sastre1
1116	154	12	y	and.CONJ	\N	KEV	3	sastre1
1118	155	1	empezar	start.V.INFIN		KEV	3	sastre1
1120	155	3	retirarnos	remove.V.INFIN	\N	KEV	3	sastre1
1123	157	1	hoy	today.ADV		KEV	3	sastre1
1126	157	4	ver	see.V.INFIN	\N	KEV	3	sastre1
1127	157	5	un	one.DET.INDEF.M.SG	\N	KEV	3	sastre1
1128	157	6	camper	camp.N.SG.AG	\N	KEV	2	sastre1
1130	157	8	R_V	name	\N	KEV	3	sastre1
1132	158	1	yeah	yeah.ADV		SOF	2	sastre1
1138	160	3	este	this.PRON.DEM.M.SG	\N	KEV	3	sastre1
1140	160	5	one	one.PRON.SG	\N	KEV	2	sastre1
1141	160	6	we	we.PRON.SUB.1P	\N	KEV	2	sastre1
1142	160	7	have	have.V.1P.PRES	\N	KEV	2	sastre1
1143	160	8	is	is.V.3S.PRES	\N	KEV	2	sastre1
1146	161	1	but	but.CONJ		KEV	2	sastre1
1148	161	3	fairly	fair.ADJ.+LY	\N	KEV	2	sastre1
1151	162	1	and	and.CONJ		KEV	2	sastre1
1153	162	3	you	you.PRON.SUB.2SP	\N	KEV	2	sastre1
1154	162	4	get	get.V.2SP.PRES	\N	KEV	2	sastre1
1155	162	5	to	to.PREP	\N	KEV	2	sastre1
1157	162	7	place	place.N.SG	\N	KEV	2	sastre1
1158	162	8	you	you.PRON.SUB.2SP	\N	KEV	2	sastre1
1159	162	9	have	have.V.2SP.PRES	\N	KEV	2	sastre1
1161	162	11	actually	actual.ADJ.+LY	\N	KEV	2	sastre1
1162	162	12	put	put.V.INFIN	\N	KEV	2	sastre1
1163	162	13	it	it.PRON.OBJ.3S	\N	KEV	2	sastre1
1164	162	14	up	up.ADV	\N	KEV	2	sastre1
1170	164	3	it	it.PRON.OBJ.3S	\N	KEV	2	sastre1
1171	164	4	and	and.CONJ	\N	KEV	2	sastre1
1172	164	5	put	put.V.INFIN	\N	KEV	2	sastre1
1174	164	7	together	together.ADV	\N	KEV	2	sastre1
1176	165	1	the	the.DET.DEF		KEV	2	sastre1
1178	165	3	one	one.PRON.SG	\N	KEV	2	sastre1
1179	165	4	no	no.ADV	\N	KEV	2	sastre1
1183	166	3	one	one.PRON.SG	\N	KEV	2	sastre1
1184	166	4	everything	everything.PRON	\N	KEV	2	sastre1
1186	166	6	in	in.PREP	\N	KEV	2	sastre1
1187	166	7	place	place.N.SG	\N	KEV	2	sastre1
1189	167	1	you	you.PRON.SUB.2SP		KEV	2	sastre1
1191	167	3	get	get.V.2SP.PRES	\N	KEV	2	sastre1
1194	168	1	and	and.CONJ		SOF	2	sastre1
1196	168	3	the	the.DET.DEF	\N	SOF	2	sastre1
1197	168	4	button	button.N.SG	\N	SOF	2	sastre1
1202	170	1	right	right.ADJ		SOF	2	sastre1
1209	172	4	up	up.ADV	\N	SOF	2	sastre1
1211	173	1	you	you.PRON.SUB.2SP		KEV	2	sastre1
1216	173	6	.	\N	\N	KEV	999	sastre1
1222	174	6	.	\N	\N	SOF	999	sastre1
1218	174	2	friend	friend.N.SG	\N	SOF	2	sastre1
1225	175	3	.	\N	\N	SOF	999	sastre1
1224	175	2	beautiful	beautiful.ADJ	\N	SOF	2	sastre1
1234	176	9	.	\N	\N	SOF	999	sastre1
1228	176	3	god	god.N.SG	\N	SOF	2	sastre1
1236	177	2	.	\N	\N	KEV	999	sastre1
1237	178	1	mmhm	unk		KEV	0	sastre1
1238	178	2	.	\N	\N	KEV	999	sastre1
1239	179	1	but	but.CONJ		SOF	2	sastre1
1242	179	4	.	\N	\N	SOF	999	sastre1
1240	179	2	it's	it.PRON.SUB.3S.+BE.V.3S.PRES	\N	SOF	2	sastre1
1245	180	3	.	\N	\N	SOF	999	sastre1
1244	180	2	know	know.V.2SP.PRES	\N	SOF	2	sastre1
1247	181	2	.	\N	\N	KEV	999	sastre1
1248	182	1	and	and.CONJ		SOF	2	sastre1
1254	182	7	.	\N	\N	SOF	999	sastre1
1249	182	2	he	he.PRON.SUB.M.3S	\N	SOF	2	sastre1
1259	183	5	.	\N	\N	SOF	999	sastre1
1256	183	2	mean	mean.V.1S.PRES	\N	SOF	2	sastre1
1264	184	5	.	\N	\N	SOF	999	sastre1
1261	184	2	presses	press.V.3S.PRES	\N	SOF	2	sastre1
1266	185	2	.	\N	\N	KEV	999	sastre1
1267	186	1	that	that.DEM.FAR		SOF	2	sastre1
1273	186	7	.	\N	\N	SOF	999	sastre1
1268	186	2	whole	whole.ADJ	\N	SOF	2	sastre1
1279	187	6	.	\N	\N	SOF	999	sastre1
1275	187	2	got	got.V.PASTPART	\N	SOF	2	sastre1
1281	188	2	.	\N	\N	KEV	999	sastre1
1282	189	1	and	and.CONJ		SOF	2	sastre1
1284	189	3	.	\N	\N	SOF	999	sastre1
1283	189	2	a	a.DET.INDEF	\N	SOF	2	sastre1
1286	190	2	.	\N	\N	KEV	999	sastre1
1288	191	2	two	two.NUM	\N	SOF	2	sastre1
1296	191	10	.	\N	\N	SOF	999	sastre1
1289	191	3	other	other.ADJ	\N	SOF	2	sastre1
1298	192	2	.	\N	\N	KEV	999	sastre1
1299	193	1	I	I.PRON.SUB.1S		SOF	2	sastre1
1304	193	6	.	\N	\N	SOF	999	sastre1
1301	193	3	it's	it.PRON.SUB.3S.+BE.V.3S.PRES	\N	SOF	2	sastre1
1306	194	2	.	\N	\N	KEV	999	sastre1
1308	195	2	kitchen	kitchen.N.SG	\N	SOF	2	sastre1
1311	195	5	.	\N	\N	SOF	999	sastre1
1309	195	3	is	is.V.3S.PRES	\N	SOF	2	sastre1
1313	196	2	.	\N	\N	KEV	999	sastre1
1314	197	1	yeah	yeah.ADV		KEV	2	sastre1
1315	197	2	.	\N	\N	KEV	999	sastre1
1317	198	2	screen	screen.N.SG	\N	SOF	2	sastre1
1324	198	9	.	\N	\N	SOF	999	sastre1
1318	198	3	tvs	unk	\N	SOF	0	sastre1
1326	199	2	.	\N	\N	KEV	999	sastre1
1327	200	1	yeah	unk		KEV	0	sastre1
1328	200	2	.	\N	\N	KEV	999	sastre1
1329	201	1	because	because.CONJ		SOF	2	sastre1
1330	201	2	he	he.PRON.SUB.M.3S	\N	SOF	2	sastre1
1213	173	3	even	even.ADV	\N	KEV	2	sastre1
1215	173	5	mmhm	unk	\N	KEV	0	sastre1
1217	174	1	my	my.ADJ.POSS.1S		SOF	2	sastre1
1219	174	3	has	has.V.3S.PRES	\N	SOF	2	sastre1
1220	174	4	an	an.DET.INDEF	\N	SOF	2	sastre1
1223	175	1	it's	it.PRON.SUB.3S.+BE.V.3S.PRES		SOF	2	sastre1
1226	176	1	oh	unk		SOF	0	sastre1
1229	176	4	it	it.PRON.SUB.3S	\N	SOF	2	sastre1
1230	176	5	looks	look.V.3S.PRES	\N	SOF	2	sastre1
1231	176	6	like	like.CONJ	\N	SOF	2	sastre1
1232	176	7	a	a.DET.INDEF	\N	SOF	2	sastre1
1235	177	1	mmhm	unk		KEV	0	sastre1
1241	179	3	big	big.ADJ	\N	SOF	2	sastre1
1246	181	1	mmhm	unk		KEV	0	sastre1
1250	182	3	takes	take.V.3S.PRES	\N	SOF	2	sastre1
1252	182	5	with	with.PREP	\N	SOF	2	sastre1
1253	182	6	him	him.PRON.OBJ.M.3S	\N	SOF	2	sastre1
1255	183	1	I	I.PRON.SUB.1S		SOF	2	sastre1
1258	183	4	wow	wow.IM	\N	SOF	2	sastre1
1260	184	1	he	he.PRON.SUB.M.3S		SOF	2	sastre1
1262	184	3	the	the.DET.DEF	\N	SOF	2	sastre1
1265	185	1	mmhm	unk		KEV	0	sastre1
1269	186	3	thing	thing.N.SG	\N	SOF	2	sastre1
1271	186	5	opens	open.V.PRES.3S	\N	SOF	2	sastre1
1272	186	6	up	up.ADV	\N	SOF	2	sastre1
1274	187	1	it's	it.PRON.SUB.3S.+HAVE.V.3S.PAST		SOF	2	sastre1
1277	187	4	master	master.N.SG	\N	SOF	2	sastre1
1278	187	5	bedroom	bedroom.N.SG	\N	SOF	2	sastre1
1280	188	1	yeah	yeah.ADV		KEV	2	sastre1
1285	190	1	mmhm	unk		KEV	0	sastre1
1290	191	4	bedrooms	bedroom.N.PL	\N	SOF	2	sastre1
1291	191	5	with	with.PREP	\N	SOF	2	sastre1
1293	191	7	bathroom	bathroom.N.SG	\N	SOF	2	sastre1
1294	191	8	pretty	pretty.ADJ	\N	SOF	2	sastre1
1295	191	9	big	big.ADJ	\N	SOF	2	sastre1
1297	192	1	mmhm	unk		KEV	0	sastre1
1302	193	4	really	real.ADJ.+LY	\N	SOF	2	sastre1
1303	193	5	nice	nice.ADJ	\N	SOF	2	sastre1
1305	194	1	mmhm	unk		KEV	0	sastre1
1310	195	4	beautiful	beautiful.ADJ	\N	SOF	2	sastre1
1312	196	1	yeah	yeah.ADV		KEV	2	sastre1
1319	198	4	I	I.PRON.SUB.1S	\N	SOF	2	sastre1
1320	198	5	mean	mean.V.1S.PRES	\N	SOF	2	sastre1
1322	198	7	got	got.V.PASTPART	\N	SOF	2	sastre1
1323	198	8	it	it.PRON.OBJ.3S	\N	SOF	2	sastre1
1325	199	1	mmhm	unk		KEV	0	sastre1
1332	201	4	to	to.PREP	\N	SOF	2	sastre1
1333	201	5	go	go.V.INFIN	\N	SOF	2	sastre1
1334	201	6	to	to.PREP	\N	SOF	2	sastre1
1335	201	7	the	the.DET.DEF	\N	SOF	2	sastre1
1336	201	8	Keys	name	\N	SOF	0	sastre1
1339	201	11	.	\N	\N	SOF	999	sastre1
1346	202	7	.	\N	\N	KEV	999	sastre1
1341	202	2	the	the.DET.DEF	\N	KEV	2	sastre1
1348	203	2	.	\N	\N	SOF	999	sastre1
1349	204	1	right	right.ADJ		KEV	2	sastre1
1355	204	7	.	\N	\N	KEV	999	sastre1
1350	204	2	difficult	difficult.ADJ	\N	KEV	2	sastre1
1366	205	11	.	\N	\N	KEV	999	sastre1
1357	205	2	very	very.ADV	\N	KEV	2	sastre1
1369	206	3	.	\N	\N	SOF	999	sastre1
1368	206	2	now	now.ADV	\N	SOF	2	sastre1
1383	207	14	.	\N	\N	SOF	999	sastre1
1371	207	2	because	because.CONJ	\N	SOF	2	sastre1
1388	208	5	.	\N	\N	KEV	999	sastre1
1385	208	2	they	they.PRON.SUB.3P	\N	KEV	2	sastre1
1398	209	10	.	\N	\N	KEV	999	sastre1
1390	209	2	close	close.V.3P.PRES	\N	KEV	2	sastre1
1409	210	11	.	\N	\N	SOF	999	sastre1
1400	210	2	because	because.CONJ	\N	SOF	2	sastre1
1411	211	2	.	\N	\N	KEV	999	sastre1
1412	212	1	yeah	yeah.ADV		KEV	2	sastre1
1413	212	2	.	\N	\N	KEV	999	sastre1
1414	213	1	they	they.PRON.SUB.3P		SOF	2	sastre1
1424	213	11	.	\N	\N	SOF	999	sastre1
1415	213	2	don't	do.V.3P.PRES.+NEG	\N	SOF	2	sastre1
1426	214	2	.	\N	\N	KEV	999	sastre1
1427	215	1	and	and.CONJ		KEV	2	sastre1
1436	215	10	.	\N	\N	KEV	999	sastre1
1428	215	2	the	the.DET.DEF	\N	KEV	2	sastre1
1438	216	2	they	they.PRON.SUB.3P	\N	KEV	2	sastre1
1337	201	9	a	a.DET.INDEF	\N	SOF	2	sastre1
1338	201	10	lot	lot.N.SG	\N	SOF	2	sastre1
1340	202	1	yah	yah.IM		KEV	2	sastre1
1342	202	3	Keys	name	\N	KEV	0	sastre1
1343	202	4	are	are.V.123P.PRES	\N	KEV	2	sastre1
1344	202	5	getting	get.V.PRESPART	\N	KEV	2	sastre1
1345	202	6	very	very.ADV	\N	KEV	2	sastre1
1347	203	1	expensive	expensive.ADJ		SOF	2	sastre1
1351	204	3	expensive	expensive.ADJ	\N	KEV	2	sastre1
1352	204	4	and	and.CONJ	\N	KEV	2	sastre1
1353	204	5	difficult	difficult.ADJ	\N	KEV	2	sastre1
1354	204	6	with	with.PREP	\N	KEV	2	sastre1
1356	205	1	it's	it.PRON.SUB.3S.+BE.V.3S.PRES		KEV	2	sastre1
1358	205	3	hard	hard.ADJ	\N	KEV	2	sastre1
1359	205	4	to	to.PREP	\N	KEV	2	sastre1
1360	205	5	find	find.V.INFIN	\N	KEV	2	sastre1
1361	205	6	a	a.DET.INDEF	\N	KEV	2	sastre1
1362	205	7	camping	camp.V.PRESPART	\N	KEV	2	sastre1
1363	205	8	spot	spot.N.SG	\N	KEV	2	sastre1
1364	205	9	over	over.ADV	\N	KEV	2	sastre1
1365	205	10	there	there.ADV	\N	KEV	2	sastre1
1367	206	1	space	space.N.SG		SOF	2	sastre1
1370	207	1	yeah	yeah.ADV		SOF	2	sastre1
1372	207	3	what	what.REL	\N	SOF	2	sastre1
1373	207	4	they	they.PRON.SUB.3P	\N	SOF	2	sastre1
1374	207	5	do	do.V.3P.PRES	\N	SOF	2	sastre1
1375	207	6	is	is.V.3S.PRES	\N	SOF	2	sastre1
1376	207	7	they	they.PRON.SUB.3P	\N	SOF	2	sastre1
1377	207	8	build	build.V.3P.PRES	\N	SOF	2	sastre1
1378	207	9	now	now.ADV	\N	SOF	2	sastre1
1379	207	10	on	on.PREP	\N	SOF	2	sastre1
1380	207	11	them	them.PRON.OBJ.3P	\N	SOF	2	sastre1
1381	207	12	instead	instead.ADV	\N	SOF	2	sastre1
1382	207	13	of	of.PREP	\N	SOF	2	sastre1
1384	208	1	right	right.ADJ		KEV	2	sastre1
1386	208	3	close	close.V.3P.PRES	\N	KEV	2	sastre1
1387	208	4	them	them.PRON.OBJ.3P	\N	KEV	2	sastre1
1389	209	1	they	they.PRON.SUB.3P		KEV	2	sastre1
1391	209	3	American_Outdoors	name	\N	KEV	2	sastre1
1392	209	4	they	they.PRON.SUB.3P	\N	KEV	2	sastre1
1393	209	5	close	close.V.3P.PRES	\N	KEV	2	sastre1
1394	209	6	a	a.DET.INDEF	\N	KEV	2	sastre1
1395	209	7	bunch	bunch.N.SG	\N	KEV	2	sastre1
1396	209	8	of	of.PREP	\N	KEV	2	sastre1
1399	210	1	yes	yes.ADV		SOF	2	sastre1
1401	210	3	people	people.N.SG	\N	SOF	2	sastre1
1402	210	4	are	are.V.123P.PRES	\N	SOF	2	sastre1
1404	210	6	money	money.N.SG	\N	SOF	2	sastre1
1405	210	7	selling	sell.V.PRESPART	\N	SOF	2	sastre1
1406	210	8	the	the.DET.DEF	\N	SOF	2	sastre1
1408	210	10	so	so.ADV	\N	SOF	2	sastre1
1410	211	1	mmhm	unk		KEV	0	sastre1
1416	213	3	make	make.V.INFIN	\N	SOF	2	sastre1
1418	213	5	much	much.ADJ	\N	SOF	2	sastre1
1419	213	6	renting	rent.V.PRESPART	\N	SOF	2	sastre1
1420	213	7	as	as.CONJ	\N	SOF	2	sastre1
1421	213	8	they	they.PRON.SUB.3P	\N	SOF	2	sastre1
1423	213	10	selling	sell.V.PRESPART	\N	SOF	2	sastre1
1425	214	1	yeah	yeah.ADV		KEV	2	sastre1
1430	215	4	were	were.V.1P.PAST	\N	KEV	2	sastre1
1431	215	5	beautiful	beautiful.ADJ	\N	KEV	2	sastre1
1432	215	6	places	place.N.PL	\N	KEV	2	sastre1
1433	215	7	to	to.PREP	\N	KEV	2	sastre1
1434	215	8	build	build.V.INFIN	\N	KEV	2	sastre1
1437	216	1	because	because.CONJ		KEV	2	sastre1
1439	216	3	were	were.V.3P.PAST	\N	KEV	2	sastre1
1440	216	4	huge	huge.ADJ	\N	KEV	2	sastre1
1442	216	6	of	of.PREP	\N	KEV	2	sastre1
1443	216	7	property	property.N.SG	\N	KEV	2	sastre1
1444	216	8	a	a.DET.INDEF	\N	KEV	2	sastre1
1445	216	9	lot	lot.N.SG	\N	KEV	2	sastre1
1447	216	11	them	them.PRON.OBJ.3P	\N	KEV	2	sastre1
1448	216	12	right	right.ADJ	\N	KEV	2	sastre1
1455	216	19	.	\N	\N	KEV	999	sastre1
1464	217	9	.	\N	\N	KEV	999	sastre1
1457	217	2	you	you.PRON.SUB.2SP	\N	KEV	2	sastre1
1466	218	2	.	\N	\N	SOF	999	sastre1
1467	219	1	so	so.ADV		KEV	2	sastre1
1471	219	5	.	\N	\N	KEV	999	sastre1
1468	219	2	they	they.PRON.SUB.3P	\N	KEV	2	sastre1
1472	220	1	.	\N		SOF	999	sastre1
1478	221	6	.	\N	\N	KEV	999	sastre1
1474	221	2	was	was.V.3S.PAST	\N	KEV	2	sastre1
1485	222	7	.	\N	\N	KEV	999	sastre1
1481	222	3	just	just.ADV	\N	KEV	2	sastre1
1487	223	2	.	\N	\N	KEV	999	sastre1
1488	224	1	wow	unk		SOF	0	sastre1
1489	224	2	.	\N	\N	SOF	999	sastre1
1490	225	1	mmhm	unk		KEV	0	sastre1
1491	225	2	.	\N	\N	KEV	999	sastre1
1494	227	1	oh	unk		SOF	0	sastre1
1493	226	2	.	\N	\N	KEV	999	sastre1
1495	227	2	look	look.V.IMPER	\N	SOF	2	sastre1
1499	227	6	.	\N	\N	SOF	999	sastre1
1496	227	3	at	at.PREP	\N	SOF	2	sastre1
1504	228	5	.	\N	\N	KEV	999	sastre1
1502	228	3	de	of.PREP	\N	KEV	3	sastre1
1508	229	4	?	\N	\N	SOF	999	sastre1
1506	229	2	una	a.DET.INDEF.F.SG	\N	SOF	3	sastre1
1511	230	3	.	\N	\N	KEV	999	sastre1
1510	230	2	yeah	yeah.ADV	\N	KEV	2	sastre1
1514	231	3	.	\N	\N	KEV	999	sastre1
1513	231	2	that's	that.DEM.FAR.+BE.V.3S.PRES	\N	KEV	2	sastre1
1518	232	4	.	\N	\N	SOF	999	sastre1
1516	232	2	my	my.ADJ.POSS.1S	\N	SOF	2	sastre1
1528	233	10	.	\N	\N	KEV	999	sastre1
1521	233	3	moved	move.V.PAST	\N	KEV	2	sastre1
1530	234	2	.	\N	\N	SOF	999	sastre1
1531	235	1	y	and.CONJ		KEV	3	sastre1
1536	235	6	.	\N	\N	KEV	999	sastre1
1532	235	2	that	that.DEM.FAR	\N	KEV	2	sastre1
1541	236	5	?	\N	\N	SOF	999	sastre1
1538	236	2	it	it.PRON.SUB.3S	\N	SOF	2	sastre1
1543	237	2	.	\N	\N	KEV	999	sastre1
1544	238	1	it's	it.PRON.SUB.3S.+BE.V.3S.PRES		KEV	2	sastre1
1547	238	4	.	\N	\N	KEV	999	sastre1
1545	238	2	a	a.DET.INDEF	\N	KEV	2	sastre1
1549	239	2	.	\N	\N	SOF	999	sastre1
1550	240	1	I	I.PRON.SUB.1S		KEV	2	sastre1
1555	240	6	.	\N	\N	KEV	999	sastre1
1551	240	2	don't	do.V.1S.PRES.+NEG	\N	KEV	2	sastre1
1556	241	1	xxx.	\N		SOF	999	sastre1
1560	242	4	.	\N	\N	SOF	999	sastre1
1558	242	2	how	how.ADV	\N	SOF	2	sastre1
1562	243	2	.	\N	\N	KEV	999	sastre1
1563	244	1	I	I.PRON.SUB.1S		SOF	2	sastre1
1564	244	2	have	have.V.1S.PRES	\N	SOF	2	sastre1
1449	216	13	on	on.PREP	\N	KEV	2	sastre1
1450	216	14	the	the.DET.DEF	\N	KEV	2	sastre1
1451	216	15	ocean	ocean.N.SG	\N	KEV	2	sastre1
1453	216	17	the	the.DET.DEF	\N	KEV	2	sastre1
1454	216	18	water	water.N.SG	\N	KEV	2	sastre1
1456	217	1	so	so.ADV		KEV	2	sastre1
1459	217	4	it	it.PRON.SUB.3S	\N	KEV	2	sastre1
1460	217	5	was	was.V.3S.PAST	\N	KEV	2	sastre1
1461	217	6	a	a.DET.INDEF	\N	KEV	2	sastre1
1462	217	7	good	good.ADJ	\N	KEV	2	sastre1
1465	218	1	yes	yes.ADV		SOF	2	sastre1
1469	219	3	closed	close.V.PAST	\N	KEV	2	sastre1
1470	219	4	them	them.PRON.OBJ.3P	\N	KEV	2	sastre1
1475	221	3	a	a.DET.INDEF	\N	KEV	2	sastre1
1476	221	4	beautiful	beautiful.ADJ	\N	KEV	2	sastre1
1477	221	5	place	place.N.SG	\N	KEV	2	sastre1
1479	222	1	and	and.CONJ		KEV	2	sastre1
1482	222	4	closed	close.V.PASTPART	\N	KEV	2	sastre1
1483	222	5	it	it.PRON.OBJ.3S	\N	KEV	2	sastre1
1484	222	6	down	down.PREP	\N	KEV	2	sastre1
1486	223	1	mmhm	unk		KEV	0	sastre1
1497	227	4	the	the.DET.DEF	\N	SOF	2	sastre1
1498	227	5	little	little.ADJ	\N	SOF	2	sastre1
1500	228	1	la	the.DET.DEF.F.SG		KEV	3	sastre1
1503	228	4	Pepita	name	\N	KEV	0	sastre1
1505	229	1	es	be.V.23S.PRES		SOF	3	sastre1
1509	230	1	Cleopatra	name		KEV	0	sastre1
1512	231	1	yeah	yeah.ADV		KEV	2	sastre1
1515	232	1	oh	unk		SOF	0	sastre1
1517	232	3	god	god.N.SG	\N	SOF	2	sastre1
1519	233	1	when	when.CONJ		KEV	2	sastre1
1522	233	4	to	to.PREP	\N	KEV	2	sastre1
1523	233	5	Tampa	name	\N	KEV	0	sastre1
1524	233	6	she	she.PRON.SUB.F.3S	\N	KEV	2	sastre1
1526	233	8	the	the.DET.DEF	\N	KEV	2	sastre1
1527	233	9	rabbit	rabbit.N.SG	\N	KEV	2	sastre1
1529	234	1	wow	unk		SOF	0	sastre1
1533	235	3	was	was.V.3S.PAST	\N	KEV	2	sastre1
1535	235	5	companion	companion.N.SG	\N	KEV	2	sastre1
1537	236	1	is	is.V.3S.PRES		SOF	2	sastre1
1539	236	3	a	a.DET.INDEF	\N	SOF	2	sastre1
1542	237	1	no	no.ADV		KEV	2	sastre1
1546	238	3	Dutch	Dutch.ADJ	\N	KEV	2	sastre1
1552	240	3	know	know.V.INFIN	\N	KEV	2	sastre1
1554	240	5	Dutch	Dutch.ADJ	\N	KEV	2	sastre1
1557	242	1	ay	oh.IM		SOF	3	sastre1
1559	242	3	pretty	pretty.ADJ	\N	SOF	2	sastre1
1561	243	1	mmhm	unk		KEV	0	sastre1
1565	244	3	a	a.DET.INDEF	\N	SOF	2	sastre1
1567	244	5	of	of.PREP	\N	SOF	2	sastre1
1568	244	6	mine	mine.PRON.POSS.1S	\N	SOF	2	sastre1
1569	244	7	that	that.CONJ	\N	SOF	2	sastre1
1571	244	9	two	two.NUM	\N	SOF	2	sastre1
1574	244	12	.	\N	\N	SOF	999	sastre1
1576	245	2	.	\N	\N	KEV	999	sastre1
1578	246	2	keep	keep.V.3S.PRES	\N	SOF	2	sastre1
1584	246	8	.	\N	\N	SOF	999	sastre1
1579	246	3	he	he.PRON.SUB.M.3S	\N	SOF	2	sastre1
1589	247	5	.	\N	\N	SOF	999	sastre1
1586	247	2	they	they.PRON.SUB.3P	\N	SOF	2	sastre1
1591	248	2	.	\N	\N	KEV	999	sastre1
1592	249	1	they	they.PRON.SUB.3P		SOF	2	sastre1
1596	249	5	.	\N	\N	SOF	999	sastre1
1593	249	2	don't	do.V.3P.PRES.+NEG	\N	SOF	2	sastre1
1600	252	1	esta	this.PRON.DEM.F.SG		KEV	3	sastre1
1598	250	2	.	\N	noise-something	KEV	999	sastre1
1599	251	1	.	\N		SOF	999	sastre1
1604	252	5	.	\N	\N	KEV	999	sastre1
1601	252	2	she	she.PRON.SUB.F.3S	\N	KEV	2	sastre1
1617	253	13	.	\N	\N	SOF	999	sastre1
1607	253	3	have	have.V.1S.PRES	\N	SOF	2	sastre1
1619	254	2	.	\N	\N	KEV	999	sastre1
1620	255	1	that's	that.DEM.FAR.+BE.V.3S.PRES		SOF	2	sastre1
1624	255	5	.	\N	\N	SOF	999	sastre1
1621	255	2	the	the.DET.DEF	\N	SOF	2	sastre1
1628	256	4	.	\N	\N	SOF	999	sastre1
1626	256	2	a	a.DET.INDEF	\N	SOF	2	sastre1
1642	257	14	?	\N	\N	KEV	999	sastre1
1630	257	2	that	that.DEM.FAR	\N	KEV	2	sastre1
1651	258	9	.	\N	\N	SOF	999	sastre1
1644	258	2	but	but.CONJ	\N	SOF	2	sastre1
1653	259	2	.	\N	\N	SOF	999	sastre1
1656	261	1	how	how.ADV		KEV	2	sastre1
1655	260	2	.	\N	\N	KEV	999	sastre1
1657	261	2	cute	cute.ADJ	\N	KEV	2	sastre1
1658	261	3	.	\N	\N	KEV	999	sastre1
1659	262	1	everybody	everybody.PRON		SOF	2	sastre1
1664	262	6	.	\N	\N	SOF	999	sastre1
1660	262	2	has	has.V.3S.PRES	\N	SOF	2	sastre1
1666	263	2	.	\N	\N	KEV	999	sastre1
1667	264	1	how	how.ADV		KEV	2	sastre1
1673	264	7	?	\N	\N	KEV	999	sastre1
1668	264	2	is	is.V.3S.PRES	\N	KEV	2	sastre1
1675	265	2	.	\N	\N	SOF	999	sastre1
1676	266	1	sí	yes.ADV		KEV	3	sastre1
1677	266	2	?	\N	\N	KEV	999	sastre1
1679	267	2	busy	busy.ADJ	\N	SOF	2	sastre1
1683	267	6	.	\N	\N	SOF	999	sastre1
1680	267	3	but	but.CONJ	\N	SOF	2	sastre1
1685	268	2	.	\N	\N	KEV	999	sastre1
1686	269	1	you	you.PRON.SUB.2SP		SOF	2	sastre1
1694	269	9	.	\N	\N	SOF	999	sastre1
1688	269	3	they	they.PRON.SUB.3P	\N	SOF	2	sastre1
1572	244	10	miniature	miniature.ADJ	\N	SOF	2	sastre1
1573	244	11	rabbits	rabbit.N.PL	\N	SOF	2	sastre1
1575	245	1	yeah	yeah.ADV		KEV	2	sastre1
1580	246	4	has	has.V.3S.PRES	\N	SOF	2	sastre1
1582	246	6	as	as.CONJ	\N	SOF	2	sastre1
1583	246	7	pets	pet.N.PL	\N	SOF	2	sastre1
1585	247	1	and	and.CONJ		SOF	2	sastre1
1587	247	3	are	are.V.3P.PRES	\N	SOF	2	sastre1
1590	248	1	mmhm	unk		KEV	0	sastre1
1594	249	3	grow	grow.V.INFIN	\N	SOF	2	sastre1
1595	249	4	much	much.ADJ	\N	SOF	2	sastre1
1602	252	3	got	got.V.PAST	\N	KEV	2	sastre1
1603	252	4	it	it.PRON.OBJ.3S	\N	KEV	2	sastre1
1605	253	1	and	and.CONJ		SOF	2	sastre1
1608	253	4	another	another.ADJ	\N	SOF	2	sastre1
1609	253	5	doctor	doctor.N.SG	\N	SOF	2	sastre1
1610	253	6	over	over.ADV	\N	SOF	2	sastre1
1612	253	8	that	that.CONJ	\N	SOF	2	sastre1
1613	253	9	has	has.V.3S.PRES	\N	SOF	2	sastre1
1614	253	10	a	a.DET.INDEF	\N	SOF	2	sastre1
1616	253	12	pig	pig.N.SG	\N	SOF	2	sastre1
1618	254	1	yeah	yeah.ADV		KEV	2	sastre1
1623	255	4	pet	pet.N.SG	\N	SOF	2	sastre1
1625	256	1	it's	it.PRON.SUB.3S.+BE.V.3S.PRES		SOF	2	sastre1
1627	256	3	pig	pig.N.SG	\N	SOF	2	sastre1
1631	257	3	real	real.ADJ	\N	KEV	2	sastre1
1632	257	4	real	real.ADJ	\N	KEV	2	sastre1
1633	257	5	pig	pig.N.SG	\N	KEV	2	sastre1
1634	257	6	los	the.DET.DEF.M.PL	\N	KEV	3	sastre1
1636	257	8	los	the.DET.DEF.M.PL	\N	KEV	3	sastre1
1637	257	9	with	with.PREP	\N	KEV	2	sastre1
1638	257	10	with	with.PREP	\N	KEV	2	sastre1
1639	257	11	a	a.DET.INDEF	\N	KEV	2	sastre1
1641	257	13	belly	belly.N.SG	\N	KEV	2	sastre1
1643	258	1	mmhm	unk		SOF	0	sastre1
1645	258	3	the	the.DET.DEF	\N	SOF	2	sastre1
1646	258	4	little	little.ADJ	\N	SOF	2	sastre1
1648	258	6	the	the.DET.DEF	\N	SOF	2	sastre1
1649	258	7	miniature	miniature.ADJ	\N	SOF	2	sastre1
1650	258	8	ones	one.PRON.PL	\N	SOF	2	sastre1
1652	259	1	yeah	yeah.ADV		SOF	2	sastre1
1661	262	3	their	their.ADJ.POSS.3P	\N	SOF	2	sastre1
1663	262	5	pet	pet.N.SG	\N	SOF	2	sastre1
1665	263	1	mmhm	unk		KEV	0	sastre1
1669	264	3	everything	everything.PRON	\N	KEV	2	sastre1
1670	264	4	at	at.PREP	\N	KEV	2	sastre1
1672	264	6	hospital	hospital.N.SG	\N	KEV	2	sastre1
1674	265	1	good	good.ADJ		SOF	2	sastre1
1681	267	4	it's	it.PRON.SUB.3S.+BE.V.3S.PRES	\N	SOF	2	sastre1
1682	267	5	good	good.ADJ	\N	SOF	2	sastre1
1684	268	1	mmhm	unk		KEV	0	sastre1
1689	269	4	have	have.V.3P.PRES	\N	SOF	2	sastre1
1690	269	5	more	more.ADJ	\N	SOF	2	sastre1
1691	269	6	work	work.N.SG	\N	SOF	2	sastre1
1693	269	8	people	people.N.SG	\N	SOF	2	sastre1
1699	270	5	.	\N	\N	KEV	999	sastre1
1696	270	2	and	and.CONJ	\N	KEV	2	sastre1
1709	271	10	.	\N	\N	SOF	999	sastre1
1702	271	3	because	because.CONJ	\N	SOF	2	sastre1
1711	272	2	.	\N	\N	KEV	999	sastre1
1712	273	1	yeah	yeah.ADV		KEV	2	sastre1
1721	273	10	.	\N	\N	KEV	999	sastre1
1713	273	2	yeah	yeah.ADV	\N	KEV	2	sastre1
1723	274	2	.	\N	\N	KEV	999	sastre1
1724	275	1	I	I.PRON.SUB.1S		SOF	2	sastre1
1746	275	23	.	\N	\N	SOF	999	sastre1
1725	275	2	mean	mean.V.1S.PRES	\N	SOF	2	sastre1
1763	276	17	.	\N	\N	SOF	999	sastre1
1748	276	2	basically	basically.ADV	\N	SOF	2	sastre1
1765	277	2	.	\N	\N	KEV	999	sastre1
1767	278	2	the	the.DET.DEF	\N	SOF	2	sastre1
1774	278	9	.	\N	\N	SOF	999	sastre1
1766	278	1	that	that.DEM.FAR[or]that.CONJ		SOF	2	sastre1
1779	279	5	.	\N	\N	KEV	999	sastre1
1776	279	2	take	take.V.3P.PRES	\N	KEV	2	sastre1
1795	280	16	.	\N	\N	SOF	999	sastre1
1781	280	2	they	they.PRON.SUB.3P	\N	SOF	2	sastre1
1797	281	2	.	\N	\N	KEV	999	sastre1
1800	282	3	like	like.CONJ	\N	SOF	2	sastre1
1804	282	7	.	\N	\N	SOF	999	sastre1
1799	282	2	just	just.ADV[or]just.ADJ	\N	SOF	2	sastre1
1811	283	7	.	\N	\N	KEV	999	sastre1
1806	283	2	mismo	same.ADJ.M.SG	\N	KEV	3	sastre1
1814	284	3	.	\N	\N	SOF	999	sastre1
1816	285	2	I'm	I.PRON.SUB.1S.+BE.V.PRES	\N	SOF	2	sastre1
1695	270	1	yeah	yeah.ADV		KEV	2	sastre1
1697	270	3	less	less.ADV	\N	KEV	2	sastre1
1698	270	4	money	money.N.SG	\N	KEV	2	sastre1
1700	271	1	every	every.ADJ		SOF	2	sastre1
1703	271	4	you	you.PRON.SUB.2SP	\N	SOF	2	sastre1
1704	271	5	have	have.V.2SP.PRES	\N	SOF	2	sastre1
1705	271	6	to	to.PREP	\N	SOF	2	sastre1
1707	271	8	double	double.ADJ	\N	SOF	2	sastre1
1708	271	9	so	so.ADV	\N	SOF	2	sastre1
1710	272	1	yeah	yeah.ADV		KEV	2	sastre1
1715	273	4	been	been.V.PASTPART	\N	KEV	2	sastre1
1716	273	5	three	three.NUM	\N	KEV	2	sastre1
1717	273	6	years	year.N.PL	\N	KEV	2	sastre1
1718	273	7	without	without.PREP	\N	KEV	2	sastre1
1720	273	9	raise	raise.N.SG	\N	KEV	2	sastre1
1722	274	1	because	because.CONJ		KEV	2	sastre1
1727	275	4	we	we.PRON.SUB.1P	\N	SOF	2	sastre1
1728	275	5	do	do.V.1P.PRES	\N	SOF	2	sastre1
1729	275	6	is	is.V.3S.PRES	\N	SOF	2	sastre1
1730	275	7	they	they.PRON.SUB.3P	\N	SOF	2	sastre1
1732	275	9	us	us.PRON.OBJ.1P	\N	SOF	2	sastre1
1733	275	10	like	like.CONJ	\N	SOF	2	sastre1
1734	275	11	a	a.DET.INDEF	\N	SOF	2	sastre1
1736	275	13	I	I.PRON.SUB.1S	\N	SOF	2	sastre1
1737	275	14	mean	mean.V.1S.PRES	\N	SOF	2	sastre1
1738	275	15	is	is.V.3S.PRES	\N	SOF	2	sastre1
1739	275	16	it	it.PRON.SUB.3S	\N	SOF	2	sastre1
1741	275	18	on	on.PREP	\N	SOF	2	sastre1
1742	275	19	how	how.ADV	\N	SOF	2	sastre1
1743	275	20	much	much.ADJ	\N	SOF	2	sastre1
1744	275	21	you	you.PRON.SUB.2SP	\N	SOF	2	sastre1
1747	276	1	but	but.CONJ		SOF	2	sastre1
1749	276	3	what	what.REL	\N	SOF	2	sastre1
1750	276	4	it	it.PRON.SUB.3S	\N	SOF	2	sastre1
1752	276	6	is	is.V.3S.PRES	\N	SOF	2	sastre1
1753	276	7	then	then.ADV	\N	SOF	2	sastre1
1754	276	8	every	every.ADJ	\N	SOF	2	sastre1
1755	276	9	year	year.N.SG	\N	SOF	2	sastre1
1757	276	11	put	put.V.3P.PRES	\N	SOF	2	sastre1
1758	276	12	up	up.ADV	\N	SOF	2	sastre1
1759	276	13	the	the.DET.DEF	\N	SOF	2	sastre1
1760	276	14	insurances	insurance.N.PL	\N	SOF	2	sastre1
1761	276	15	so	so.ADV	\N	SOF	2	sastre1
1762	276	16	high	high.ADJ	\N	SOF	2	sastre1
1768	278	3	little	little.ADJ	\N	SOF	2	sastre1
1770	278	5	that	that.CONJ	\N	SOF	2	sastre1
1771	278	6	you	you.PRON.SUB.2SP	\N	SOF	2	sastre1
1772	278	7	are	are.V.2SP.PRES	\N	SOF	2	sastre1
1775	279	1	they	they.PRON.SUB.3P		KEV	2	sastre1
1777	279	3	it	it.PRON.OBJ.3S	\N	KEV	2	sastre1
1778	279	4	away	away.ADV	\N	KEV	2	sastre1
1782	280	3	take	take.V.3P.PRES	\N	SOF	2	sastre1
1783	280	4	it	it.PRON.OBJ.3S	\N	SOF	2	sastre1
1784	280	5	away	away.ADV	\N	SOF	2	sastre1
1786	280	7	the	the.DET.DEF	\N	SOF	2	sastre1
1787	280	8	insurance	insurance.N.SG	\N	SOF	2	sastre1
1788	280	9	so	so.ADV	\N	SOF	2	sastre1
1789	280	10	really	real.ADJ.+LY	\N	SOF	2	sastre1
1791	280	12	are	are.V.2SP.PRES	\N	SOF	2	sastre1
1792	280	13	not	not.ADV	\N	SOF	2	sastre1
1793	280	14	seeing	see.V.PRESPART	\N	SOF	2	sastre1
1794	280	15	much	much.ADJ	\N	SOF	2	sastre1
1796	281	1	sí	yes.ADV		KEV	3	sastre1
1801	282	4	there's	there.PRON.+BE.V.3S.PRES	\N	SOF	2	sastre1
1803	282	6	raise	raise.N.SG	\N	SOF	2	sastre1
1805	283	1	así	thus.ADV		KEV	3	sastre1
1807	283	3	nos	us.PRON.OBL.MF.1P	\N	KEV	3	sastre1
1809	283	5	a	to.PREP	\N	KEV	3	sastre1
1810	283	6	nosotros	we.PRON.OBJ.M.1P	\N	KEV	3	sastre1
1812	284	1	you	you.PRON.SUB.2SP		SOF	2	sastre1
1817	285	3	the	the.DET.DEF	\N	SOF	2	sastre1
1818	285	4	one	one.PRON.SG	\N	SOF	2	sastre1
1819	285	5	that	that.CONJ	\N	SOF	2	sastre1
1831	285	17	.	\N	\N	SOF	999	sastre1
1835	286	4	.	\N	\N	KEV	999	sastre1
1833	286	2	it	it.PRON.OBJ.3S	\N	KEV	2	sastre1
1849	287	14	.	\N	\N	SOF	999	sastre1
1838	287	3	since	since.PREP	\N	SOF	2	sastre1
1851	288	2	.	\N	\N	KEV	999	sastre1
1852	289	1	so	so.ADV		SOF	2	sastre1
1856	289	5	.	\N	\N	SOF	999	sastre1
1853	289	2	you	you.PRON.SUB.2SP	\N	SOF	2	sastre1
1858	290	2	.	\N	\N	KEV	999	sastre1
1859	291	1	insurance	insurance.N.SG		SOF	2	sastre1
1864	291	6	.	\N	\N	SOF	999	sastre1
1860	291	2	is	is.V.3S.PRES	\N	SOF	2	sastre1
1866	292	2	.	\N	\N	KEV	999	sastre1
1867	293	1	ahora	now.ADV		KEV	3	sastre1
1886	293	20	.	\N	\N	KEV	999	sastre1
1868	293	2	one	one.PRON.SG	\N	KEV	2	sastre1
1898	294	12	.	\N	\N	KEV	999	sastre1
1889	294	3	gonna	go.V.PRESPART.+TO.PREP	\N	KEV	2	sastre1
1900	295	2	.	\N	\N	SOF	999	sastre1
1901	296	1	because	because.CONJ		KEV	2	sastre1
1918	296	18	.	\N	\N	KEV	999	sastre1
1903	296	3	have	have.V.3S.PRES	\N	KEV	2	sastre1
1924	297	6	.	\N	\N	KEV	999	sastre1
1921	297	3	Pepa	name	\N	KEV	0	sastre1
1940	298	16	.	\N	\N	KEV	999	sastre1
1926	298	2	I	I.PRON.SUB.1S	\N	KEV	2	sastre1
1815	285	1	and	and.CONJ		SOF	2	sastre1
1821	285	7	the	the.DET.DEF	\N	SOF	2	sastre1
1822	285	8	insurance	insurance.N.SG	\N	SOF	2	sastre1
1823	285	9	because	because.CONJ	\N	SOF	2	sastre1
1824	285	10	my	my.ADJ.POSS.1S	\N	SOF	2	sastre1
1826	285	12	insurance	insurance.N.SG	\N	SOF	2	sastre1
1827	285	13	is	is.V.3S.PRES	\N	SOF	2	sastre1
1828	285	14	much	much.ADJ	\N	SOF	2	sastre1
1829	285	15	more	more.ADV	\N	SOF	2	sastre1
1832	286	1	that's	that.DEM.FAR.+BE.V.3S.PRES		KEV	2	sastre1
1834	286	3	yeah	yeah.ADV	\N	KEV	2	sastre1
1836	287	1	yeah	yeah.ADV		SOF	2	sastre1
1839	287	4	I	I.PRON.OBJ.1S	\N	SOF	2	sastre1
1840	287	5	work	work.V.1S.PRES	\N	SOF	2	sastre1
1841	287	6	for	for.PREP	\N	SOF	2	sastre1
1843	287	8	know	know.V.2SP.PRES	\N	SOF	2	sastre1
1844	287	9	they	they.PRON.SUB.3P	\N	SOF	2	sastre1
1845	287	10	have	have.V.3P.PRES	\N	SOF	2	sastre1
1846	287	11	a	a.DET.INDEF	\N	SOF	2	sastre1
1848	287	13	more	more.ADV	\N	SOF	2	sastre1
1850	288	1	yeah	yeah.ADV		KEV	2	sastre1
1855	289	4	it's	it.PRON.SUB.3S.+BE.V.3S.PRES	\N	SOF	2	sastre1
1857	290	1	mmhm	unk		KEV	0	sastre1
1862	291	4	but	but.CONJ	\N	SOF	2	sastre1
1863	291	5	still	still.ADJ	\N	SOF	2	sastre1
1865	292	1	sí	yes.ADV		KEV	3	sastre1
1869	293	3	advantage	advantage.N.SG	\N	KEV	2	sastre1
1871	293	5	have	have.V.1S.PRES	\N	KEV	2	sastre1
1872	293	6	is	is.V.3S.PRES	\N	KEV	2	sastre1
1874	293	8	Pepita	name	\N	KEV	0	sastre1
1875	293	9	since	since.PREP	\N	KEV	2	sastre1
1876	293	10	she	she.PRON.OBJ.F.3S	\N	KEV	2	sastre1
1877	293	11	is	is.V.3S.PRES	\N	KEV	2	sastre1
1878	293	12	working	work.V.PRESPART	\N	KEV	2	sastre1
1880	293	14	the	the.DET.DEF	\N	KEV	2	sastre1
1881	293	15	county	county.N.SG	\N	KEV	2	sastre1
1882	293	16	she's	she.PRON.SUB.F.3S.+BE.V.3S.PRES	\N	KEV	2	sastre1
1884	293	18	be	be.V.INFIN	\N	KEV	2	sastre1
1885	293	19	independent	independent.ADJ	\N	KEV	2	sastre1
1887	294	1	I'm	I.PRON.SUB.1S.+BE.V.PRES		KEV	2	sastre1
1890	294	4	have	have.V.INFIN	\N	KEV	2	sastre1
1891	294	5	to	to.PREP	\N	KEV	2	sastre1
1894	294	8	in	in.PREP	\N	KEV	2	sastre1
1893	294	7	her	her.PRON.OBJ.F.3S[or]her.ADJ.POSS.F.3S	\N	KEV	2	sastre1
1895	294	9	my	my.ADJ.POSS.1S	\N	KEV	2	sastre1
1897	294	11	any_more	any_more.ADV	\N	KEV	2	sastre1
1899	295	1	yeah	yeah.ADV		SOF	2	sastre1
1904	296	4	her	her.ADJ.POSS.F.3S	\N	KEV	2	sastre1
1905	296	5	own	own.ADJ	\N	KEV	2	sastre1
1906	296	6	insurance	insurance.N.SG	\N	KEV	2	sastre1
1907	296	7	and	and.CONJ	\N	KEV	2	sastre1
1908	296	8	for	for.PREP	\N	KEV	2	sastre1
1910	296	10	working	work.V.PRESPART	\N	KEV	2	sastre1
1911	296	11	for	for.PREP	\N	KEV	2	sastre1
1912	296	12	the	the.DET.DEF	\N	KEV	2	sastre1
1914	296	14	the	the.DET.DEF	\N	KEV	2	sastre1
1915	296	15	insurance	insurance.N.SG	\N	KEV	2	sastre1
1916	296	16	is	is.V.3S.PRES	\N	KEV	2	sastre1
1917	296	17	free	free.ADJ	\N	KEV	2	sastre1
1919	297	1	and	and.CONJ		KEV	2	sastre1
1922	297	4	is	is.V.3S.PRES	\N	KEV	2	sastre1
1923	297	5	free	free.ADJ	\N	KEV	2	sastre1
1925	298	1	and	and.CONJ		KEV	2	sastre1
1928	298	4	if	if.CONJ	\N	KEV	2	sastre1
1929	298	5	it's	it.PRON.SUB.3S.+BE.V.3S.PRES	\N	KEV	2	sastre1
1931	298	7	for	for.PREP	\N	KEV	2	sastre1
1932	298	8	me	me.PRON.OBJ.1S	\N	KEV	2	sastre1
1933	298	9	it's	it.PRON.SUB.3S.+BE.V.3S.PRES	\N	KEV	2	sastre1
1935	298	11	like	like.CONJ	\N	KEV	2	sastre1
1936	298	12	thirty	thirty.NUM	\N	KEV	2	sastre1
1937	298	13	dollars	dollar.N.PL	\N	KEV	2	sastre1
1938	298	14	a	a.DET.INDEF	\N	KEV	2	sastre1
1939	298	15	month	month.N.SG	\N	KEV	2	sastre1
1941	299	1	no	no.ADV		SOF	2	sastre1
1945	299	5	.	\N	\N	SOF	999	sastre1
1953	300	8	.	\N	\N	KEV	999	sastre1
1947	300	2	that's	that.DEM.FAR.+BE.V.3S.PRES	\N	KEV	2	sastre1
1968	301	15	?	\N	\N	SOF	999	sastre1
1955	301	2	isn't	is.V.3S.PRES.+NEG	\N	SOF	2	sastre1
1985	302	17	.	\N	\N	KEV	999	sastre1
1970	302	2	because	because.CONJ	\N	KEV	2	sastre1
1989	303	4	.	\N	\N	SOF	999	sastre1
1987	303	2	I	I.PRON.SUB.1S	\N	SOF	2	sastre1
1995	304	6	.	\N	\N	KEV	999	sastre1
1991	304	2	why	why.REL	\N	KEV	2	sastre1
2004	305	9	.	\N	\N	KEV	999	sastre1
1998	305	3	the	the.DET.DEF	\N	KEV	2	sastre1
2007	306	3	.	\N	\N	SOF	999	sastre1
2006	306	2	ok	unk	\N	SOF	0	sastre1
2015	307	8	.	\N	\N	KEV	999	sastre1
2009	307	2	me	me.PRON.OBJ.1S	\N	KEV	2	sastre1
2038	308	23	.	\N	\N	KEV	999	sastre1
2017	308	2	now	now.ADV	\N	KEV	2	sastre1
2049	309	11	.	\N	\N	KEV	999	sastre1
2040	309	2	thirty	thirty.NUM	\N	KEV	2	sastre1
2065	310	16	.	\N	\N	SOF	999	sastre1
2052	310	3	brother	brother.N.SG	\N	SOF	2	sastre1
2067	311	2	.	\N	\N	KEV	999	sastre1
1944	299	4	bad	bad.ADJ	\N	SOF	2	sastre1
1946	300	1	no	no.ADV		KEV	2	sastre1
1948	300	3	not	not.ADV	\N	KEV	2	sastre1
1949	300	4	bad	bad.ADJ	\N	KEV	2	sastre1
1951	300	6	right	right.ADJ	\N	KEV	2	sastre1
1952	300	7	now	now.ADV	\N	KEV	2	sastre1
1954	301	1	and	and.CONJ		SOF	2	sastre1
1957	301	4	better	better.ADJ	\N	SOF	2	sastre1
1958	301	5	for	for.PREP	\N	SOF	2	sastre1
1959	301	6	you	you.PRON.OBJ.2SP	\N	SOF	2	sastre1
1960	301	7	to	to.PREP	\N	SOF	2	sastre1
1962	301	9	with	with.PREP	\N	SOF	2	sastre1
1964	301	11	with	with.PREP	\N	SOF	2	sastre1
1965	301	12	the	the.DET.DEF	\N	SOF	2	sastre1
1966	301	13	county	county.N.SG	\N	SOF	2	sastre1
1967	301	14	no	no.ADV	\N	SOF	2	sastre1
1969	302	1	no	no.ADV		KEV	2	sastre1
1971	302	3	if	if.CONJ	\N	KEV	2	sastre1
1972	302	4	we	we.PRON.SUB.1P	\N	KEV	2	sastre1
1974	302	6	into	into.PREP	\N	KEV	2	sastre1
1975	302	7	the	the.DET.DEF	\N	KEV	2	sastre1
1976	302	8	family	family.N.SG	\N	KEV	2	sastre1
1977	302	9	plan	plan.N.SG	\N	KEV	2	sastre1
1979	302	11	plan	plan.N.SG	\N	KEV	2	sastre1
1980	302	12	is	is.V.3S.PRES	\N	KEV	2	sastre1
1981	302	13	more	more.ADV	\N	KEV	2	sastre1
1983	302	15	than	than.CONJ	\N	KEV	2	sastre1
1984	302	16	mine	mine.PRON.POSS.1S	\N	KEV	2	sastre1
1986	303	1	oh	unk		SOF	0	sastre1
1988	303	3	see	see.V.1S.PRES	\N	SOF	2	sastre1
1992	304	3	I	I.PRON.SUB.1S	\N	KEV	2	sastre1
1993	304	4	had	had.V.PAST	\N	KEV	2	sastre1
1994	304	5	it	it.PRON.SUB.3S	\N	KEV	2	sastre1
1996	305	1	I	I.PRON.SUB.1S		KEV	2	sastre1
1999	305	4	insurance	insurance.N.SG	\N	KEV	2	sastre1
2000	305	5	under	under.PREP	\N	KEV	2	sastre1
2002	305	7	for	for.PREP	\N	KEV	2	sastre1
2003	305	8	Pepita	name	\N	KEV	0	sastre1
2005	306	1	oh	unk		SOF	0	sastre1
2008	307	1	and	and.CONJ		KEV	2	sastre1
2010	307	3	because	because.CONJ	\N	KEV	2	sastre1
2011	307	4	Pepa	name	\N	KEV	0	sastre1
2013	307	6	her	her.ADJ.POSS.F.3S	\N	KEV	2	sastre1
2014	307	7	own	own.PRON	\N	KEV	2	sastre1
2016	308	1	but	but.CONJ		KEV	2	sastre1
2019	308	4	Pepa	name	\N	KEV	0	sastre1
2020	308	5	has	has.V.3S.PRES	\N	KEV	2	sastre1
2021	308	6	her	her.ADJ.POSS.F.3S	\N	KEV	2	sastre1
2022	308	7	own	own.PRON	\N	KEV	2	sastre1
2023	308	8	and	and.CONJ	\N	KEV	2	sastre1
2025	308	10	is	is.V.3S.PRES	\N	KEV	2	sastre1
2026	308	11	gonna	go.V.PRESPART.+TO.PREP	\N	KEV	2	sastre1
2027	308	12	get	get.V.INFIN	\N	KEV	2	sastre1
2029	308	14	own	own.PRON	\N	KEV	2	sastre1
2030	308	15	then	then.ADV	\N	KEV	2	sastre1
2031	308	16	I	I.PRON.SUB.1S	\N	KEV	2	sastre1
2032	308	17	can	can.V.1S.PRES	\N	KEV	2	sastre1
2034	308	19	mine	mine.PRON.POSS.1S	\N	KEV	2	sastre1
2035	308	20	on	on.PREP	\N	KEV	2	sastre1
2036	308	21	my	my.ADJ.POSS.1S	\N	KEV	2	sastre1
2037	308	22	own	own.PRON	\N	KEV	2	sastre1
2041	309	3	some	some.ADJ	\N	KEV	2	sastre1
2042	309	4	dollars	dollar.N.PL	\N	KEV	2	sastre1
2043	309	5	which	which.REL	\N	KEV	2	sastre1
2045	309	7	not	not.ADV	\N	KEV	2	sastre1
2046	309	8	a	a.DET.INDEF	\N	KEV	2	sastre1
2047	309	9	bad	bad.ADJ	\N	KEV	2	sastre1
2048	309	10	deal	deal.N.SG	\N	KEV	2	sastre1
2050	310	1	but	but.CONJ		SOF	2	sastre1
2053	310	4	was	was.V.3S.PAST	\N	SOF	2	sastre1
2054	310	5	telling	tell.V.PRESPART	\N	SOF	2	sastre1
2055	310	6	me	me.PRON.OBJ.1S	\N	SOF	2	sastre1
2057	310	8	law	law.N.SG	\N	SOF	2	sastre1
2058	310	9	that	that.CONJ	\N	SOF	2	sastre1
2059	310	10	came	came.AV.PAST	\N	SOF	2	sastre1
2060	310	11	about	about.PREP	\N	SOF	2	sastre1
2062	310	13	the	the.DET.DEF	\N	SOF	2	sastre1
2063	310	14	homestead	homestead.N.SG	\N	SOF	2	sastre1
2064	310	15	exemption	exemption.N.SG	\N	SOF	2	sastre1
2066	311	1	mmhm	unk		KEV	0	sastre1
2080	312	13	.	\N	\N	SOF	999	sastre1
2069	312	2	he	he.PRON.SUB.M.3S	\N	SOF	2	sastre1
2099	313	19	.	\N	\N	SOF	999	sastre1
2082	313	2	was	was.V.3S.PAST	\N	SOF	2	sastre1
2117	314	18	.	\N	\N	SOF	999	sastre1
2101	314	2	are	are.V.3P.PRES	\N	SOF	2	sastre1
2137	315	20	.	\N	\N	SOF	999	sastre1
2119	315	2	the	the.DET.DEF	\N	SOF	2	sastre1
2142	316	5	.	\N	\N	SOF	999	sastre1
2139	316	2	I	I.PRON.SUB.1S	\N	SOF	2	sastre1
2144	317	2	.	\N	\N	KEV	999	sastre1
2147	319	1	everybody	everybody.PRON		SOF	2	sastre1
2146	318	2	.	\N	\N	KEV	999	sastre1
2148	319	2	is	is.V.3S.PRES	\N	SOF	2	sastre1
2153	319	7	.	\N	\N	SOF	999	sastre1
2149	319	3	looking	look.V.PRESPART	\N	SOF	2	sastre1
2162	320	9	.	\N	\N	KEV	999	sastre1
2155	320	2	you	you.PRON.SUB.2SP	\N	KEV	2	sastre1
2164	321	2	?	\N	\N	SOF	999	sastre1
2165	322	1	in	in.PREP		KEV	2	sastre1
2181	322	17	.	\N	\N	KEV	999	sastre1
2166	322	2	two	two.NUM	\N	KEV	2	sastre1
2183	323	2	.	\N	\N	SOF	999	sastre1
2184	324	1	right	right.ADJ		KEV	2	sastre1
2185	324	2	?	\N	\N	KEV	999	sastre1
2186	325	1	that	that.DEM.FAR		KEV	2	sastre1
2191	325	6	.	\N	\N	KEV	999	sastre1
2187	325	2	was	was.V.3S.PAST	\N	KEV	2	sastre1
2070	312	3	was	was.V.3S.PAST	\N	SOF	2	sastre1
2071	312	4	saying	say.V.PRESPART	\N	SOF	2	sastre1
2073	312	6	you	you.PRON.SUB.2SP	\N	SOF	2	sastre1
2074	312	7	know	know.V.2SP.PRES	\N	SOF	2	sastre1
2075	312	8	that	that.CONJ	\N	SOF	2	sastre1
2077	312	10	not	not.ADV	\N	SOF	2	sastre1
2078	312	11	worth	worth.ADJ	\N	SOF	2	sastre1
2079	312	12	it	it.PRON.OBJ.3S	\N	SOF	2	sastre1
2081	313	1	he	he.PRON.SUB.M.3S		SOF	2	sastre1
2084	313	4	me	me.PRON.OBJ.1S	\N	SOF	2	sastre1
2086	313	6	so	so.ADV	\N	SOF	2	sastre1
2085	313	5	that	that.DEM.FAR[or]that.CONJ	\N	SOF	2	sastre1
2087	313	7	many	many.ADJ	\N	SOF	2	sastre1
2089	313	9	from	from.PREP	\N	SOF	2	sastre1
2090	313	10	the	the.DET.DEF	\N	SOF	2	sastre1
2091	313	11	county	county.N.SG	\N	SOF	2	sastre1
2093	313	13	gonna	go.V.PRESPART.+TO.PREP	\N	SOF	2	sastre1
2094	313	14	lose	lose.V.INFIN	\N	SOF	2	sastre1
2095	313	15	jobs	job.N.PL	\N	SOF	2	sastre1
2096	313	16	because	because.CONJ	\N	SOF	2	sastre1
2098	313	18	that	that.DEM.FAR	\N	SOF	2	sastre1
2100	314	1	they	they.PRON.SUB.3P		SOF	2	sastre1
2103	314	4	take	take.V.INFIN	\N	SOF	2	sastre1
2104	314	5	you	you.PRON.OBJ.2SP	\N	SOF	2	sastre1
2105	314	6	know	know.V.2SP.PRES	\N	SOF	2	sastre1
2106	314	7	they	they.PRON.SUB.3P	\N	SOF	2	sastre1
2108	314	9	gonna	go.V.PRESPART.+TO.PREP	\N	SOF	2	sastre1
2109	314	10	the	the.DET.DEF	\N	SOF	2	sastre1
2110	314	11	cut	cut.N.SG	\N	SOF	2	sastre1
2112	314	13	is	is.V.3S.PRES	\N	SOF	2	sastre1
2113	314	14	gonna	go.V.PRESPART.+TO.PREP	\N	SOF	2	sastre1
2114	314	15	be	be.V.INFIN	\N	SOF	2	sastre1
2115	314	16	so	so.ADV	\N	SOF	2	sastre1
2118	315	1	and	and.CONJ		SOF	2	sastre1
2120	315	3	people	people.N.SG	\N	SOF	2	sastre1
2121	315	4	what	what.REL	\N	SOF	2	sastre1
2123	315	6	are	are.V.3P.PRES	\N	SOF	2	sastre1
2124	315	7	gonna	go.V.PRESPART.+TO.PREP	\N	SOF	2	sastre1
2125	315	8	save	save.V.INFIN	\N	SOF	2	sastre1
2126	315	9	for	for.PREP	\N	SOF	2	sastre1
2128	315	11	homestead	homestead.N.SG	\N	SOF	2	sastre1
2129	315	12	is	is.V.3S.PRES	\N	SOF	2	sastre1
2130	315	13	so	so.ADV	\N	SOF	2	sastre1
2131	315	14	minimal	minimal.ADJ	\N	SOF	2	sastre1
2133	315	16	it	it.PRON.SUB.3S	\N	SOF	2	sastre1
2134	315	17	wasn't	was.V.3S.PAST.+NEG	\N	SOF	2	sastre1
2135	315	18	worth	worth.ADJ	\N	SOF	2	sastre1
2138	316	1	and	and.CONJ		SOF	2	sastre1
2140	316	3	said	said.V.PAST	\N	SOF	2	sastre1
2141	316	4	well	well.ADV	\N	SOF	2	sastre1
2143	317	1	yeah	yeah.ADV		KEV	2	sastre1
2150	319	4	for	for.PREP	\N	SOF	2	sastre1
2151	319	5	a	a.DET.INDEF	\N	SOF	2	sastre1
2154	320	1	pero	but.CONJ		KEV	3	sastre1
2156	320	3	know	know.V.2SP.PRES	\N	KEV	2	sastre1
2157	320	4	I	I.PRON.SUB.1S	\N	KEV	2	sastre1
2159	320	6	agree	agree.V.INFIN	\N	KEV	2	sastre1
2160	320	7	with	with.PREP	\N	KEV	2	sastre1
2161	320	8	him	him.PRON.OBJ.M.3S	\N	KEV	2	sastre1
2167	322	3	thousand	thousand.NUM	\N	KEV	2	sastre1
2168	322	4	and	and.CONJ	\N	KEV	2	sastre1
2169	322	5	three	three.NUM	\N	KEV	2	sastre1
2171	322	7	the	the.DET.DEF	\N	KEV	2	sastre1
2172	322	8	taxes	tax.N.PL	\N	KEV	2	sastre1
2173	322	9	were	were.V.1P.PAST	\N	KEV	2	sastre1
2174	322	10	more	more.ADV	\N	KEV	2	sastre1
2176	322	12	less	less.ADV	\N	KEV	2	sastre1
2177	322	13	what	what.REL	\N	KEV	2	sastre1
2178	322	14	they	they.PRON.SUB.3P	\N	KEV	2	sastre1
2179	322	15	are	are.V.3P.PRES	\N	KEV	2	sastre1
2182	323	1	mmhm	unk		SOF	0	sastre1
2188	325	3	five	five.NUM	\N	KEV	2	sastre1
2189	325	4	years	year.N.PL	\N	KEV	2	sastre1
2192	326	1	the	the.DET.DEF		KEV	2	sastre1
2209	326	18	.	\N	\N	KEV	999	sastre1
2227	327	18	?	\N	\N	KEV	999	sastre1
2211	327	2	where	where.ADV	\N	KEV	2	sastre1
2230	328	3	?	\N	\N	KEV	999	sastre1
2229	328	2	sabes	know.V.2S.PRES	\N	KEV	3	sastre1
2234	329	4	.	\N	\N	KEV	999	sastre1
2232	329	2	was	was.V.3S.PAST	\N	KEV	2	sastre1
2246	330	12	.	\N	\N	KEV	999	sastre1
2236	330	2	they	they.PRON.SUB.3P	\N	KEV	2	sastre1
2249	331	3	.	\N	\N	KEV	999	sastre1
2248	331	2	made	made.V.PAST	\N	KEV	2	sastre1
2252	332	3	?	\N	\N	KEV	999	sastre1
2253	333	1	let's	let.V.IMPER.+US.PRON.SUB.1P		KEV	2	sastre1
2263	333	11	.	\N	\N	KEV	999	sastre1
2254	333	2	bring	bring.SV.INFIN	\N	KEV	2	sastre1
2271	334	8	.	\N	\N	KEV	999	sastre1
2265	334	2	sabes	know.V.2S.PRES	phone	KEV	3	sastre1
2266	334	3	una	a.DET.INDEF.F.SG	is	KEV	3	sastre1
2267	334	4	cosa	thing.N.F.SG	ringing	KEV	3	sastre1
2269	334	6	lo	the.DET.DEF.NT.SG	\N	KEV	3	sastre1
2270	334	7	necesario	necessary.ADJ.M.SG	\N	KEV	3	sastre1
2275	335	4	.	\N	\N	KEV	999	sastre1
2273	335	2	si	if.CONJ	\N	KEV	3	sastre1
2280	336	5	.	\N	\N	KEV	999	sastre1
2277	336	2	hablas	speech.N.F.PL	\N	KEV	3	sastre1
2282	337	2	.	\N	\N	SOF	999	sastre1
2283	338	1	hey	hey.IM		SOF	2	sastre1
2288	338	6	?	\N	\N	SOF	999	sastre1
2285	338	3	are	are.V.123P.PRES	\N	SOF	2	sastre1
2290	339	2	but	but.CONJ	can	SOF	2	sastre1
2292	339	4	not	not.ADV	the	SOF	2	sastre1
2293	339	5	home	home.ADV	other	SOF	2	sastre1
2295	340	1	I'm	I.PRON.SUB.1S.+BE.V.PRES		SOF	2	sastre1
2296	340	2	in	in.PREP	\N	SOF	2	sastre1
2294	339	6	.	\N	person	SOF	999	sastre1
2298	340	4	.	\N	\N	SOF	999	sastre1
2297	340	3	the	the.DET.DEF	\N	SOF	2	sastre1
2307	341	9	.	\N	\N	SOF	999	sastre1
2301	341	3	una	a.DET.INDEF.F.SG	\N	SOF	3	sastre1
2309	342	2	se	be.V.2P.IMPER.PRECLITIC.PRECLITIC	\N	SOF	3	sastre1
2193	326	2	salaries	salary.N.PL	\N	KEV	2	sastre1
2194	326	3	of	of.PREP	\N	KEV	2	sastre1
2196	326	5	and	and.CONJ	\N	KEV	2	sastre1
2197	326	6	the	the.DET.DEF	\N	KEV	2	sastre1
2198	326	7	hiring	hire.N.SG.GER	\N	KEV	2	sastre1
2199	326	8	of	of.PREP	\N	KEV	2	sastre1
2200	326	9	employees	employee.N.PL	\N	KEV	2	sastre1
2202	326	11	not	not.ADV	\N	KEV	2	sastre1
2203	326	12	increased	increase.V.PASTPART	\N	KEV	2	sastre1
2204	326	13	what	what.REL	\N	KEV	2	sastre1
2205	326	14	they	they.PRON.SUB.3P	\N	KEV	2	sastre1
2207	326	16	in	in.PREP	\N	KEV	2	sastre1
2208	326	17	revenues	revenue.N.PL	\N	KEV	2	sastre1
2210	327	1	so	so.ADV		KEV	2	sastre1
2212	327	3	is	is.V.3S.PRES	\N	KEV	2	sastre1
2214	327	5	that	that.DEM.FAR	\N	KEV	2	sastre1
2215	327	6	extra	extra.ADJ	\N	KEV	2	sastre1
2216	327	7	money	money.N.SG	\N	KEV	2	sastre1
2218	327	9	they	they.PRON.SUB.3P	\N	KEV	2	sastre1
2219	327	10	made	made.V.PAST	\N	KEV	2	sastre1
2220	327	11	when	when.CONJ	\N	KEV	2	sastre1
2221	327	12	when	when.CONJ	\N	KEV	2	sastre1
2223	327	14	boom	boom.N.SG	\N	KEV	2	sastre1
2224	327	15	was	was.V.3S.PAST	\N	KEV	2	sastre1
2225	327	16	going	go.V.PRESPART	\N	KEV	2	sastre1
2226	327	17	on	on.PREP	\N	KEV	2	sastre1
2231	329	1	it	it.PRON.SUB.3S		KEV	2	sastre1
2235	330	1	ah	unk		KEV	0	sastre1
2237	330	3	bought	bought.V.PAST	\N	KEV	2	sastre1
2238	330	4	things	thing.N.PL	\N	KEV	2	sastre1
2239	330	5	that	that.CONJ	\N	KEV	2	sastre1
2240	330	6	maybe	maybe.ADV	\N	KEV	2	sastre1
2242	330	8	didn't	did.V.PAST.+NEG	\N	KEV	2	sastre1
2243	330	9	need	need.SV.INFIN	\N	KEV	2	sastre1
2244	330	10	to	to.PREP	\N	KEV	2	sastre1
2247	331	1	they	they.PRON.SUB.3P		KEV	2	sastre1
2250	332	1	tú	you.PRON.SUB.MF.2S		KEV	3	sastre1
2255	333	3	it	it.PRON.SUB.3S	\N	KEV	2	sastre1
2256	333	4	back	back.ADV	\N	KEV	2	sastre1
2258	333	6	where	where.REL	\N	KEV	2	sastre1
2259	333	7	we	we.PRON.SUB.1P	\N	KEV	2	sastre1
2260	333	8	donde	where.REL	\N	KEV	3	sastre1
2261	333	9	estamos	be.V.1P.PRES	\N	KEV	3	sastre1
2264	334	1	tú	you.PRON.SUB.MF.2S	A	KEV	3	sastre1
2274	335	3	quieres	want.V.2S.PRES	\N	KEV	3	sastre1
2276	336	1	así	thus.ADV		KEV	3	sastre1
2278	336	3	un	one.DET.INDEF.M.SG	\N	KEV	3	sastre1
2279	336	4	poco	little.ADJ.M.SG	\N	KEV	3	sastre1
2281	337	1	hello	hello.N.SG		SOF	2	sastre1
2286	338	4	you	you.PRON.SUB.2SP	\N	SOF	2	sastre1
2287	338	5	back	back.ADV	\N	SOF	2	sastre1
2289	339	1	oh	unk	you	SOF	0	sastre1
2299	341	1	estoy	be.V.1S.PRES		SOF	3	sastre1
2302	341	4	cosa	thing.N.F.SG	\N	SOF	3	sastre1
2303	341	5	ahí	there.ADV	\N	SOF	3	sastre1
2304	341	6	que	that.CONJ	\N	SOF	3	sastre1
2306	341	8	mi	my.ADJ.POSS.MF.1S.S.S	\N	SOF	3	sastre1
2308	342	1	cómo	how.INT		SOF	3	sastre1
2310	342	3	llama	call.V.2S.IMPER	\N	SOF	3	sastre1
2312	342	5	cómo	how.INT	\N	SOF	3	sastre1
2313	342	6	es	be.V.23S.PRES	\N	SOF	3	sastre1
2314	342	7	que	that.CONJ	\N	SOF	3	sastre1
2323	342	16	.	\N	\N	SOF	999	sastre1
2330	343	7	.	\N	\N	KEV	999	sastre1
2326	343	3	estudio	study.N.M.SG	\N	KEV	3	sastre1
2336	344	6	.	\N	\N	SOF	999	sastre1
2332	344	2	estudio	study.N.M.SG	\N	SOF	3	sastre1
2343	345	7	.	\N	\N	SOF	999	sastre1
2339	345	3	hablar	talk.V.INFIN	\N	SOF	3	sastre1
2344	346	1	.	\N		KEV	999	sastre1
2350	347	6	.	\N	\N	SOF	999	sastre1
2346	347	2	ahorita	in_a_moment.ADV.DIM.DIM	\N	SOF	3	sastre1
2353	349	1	ah	unk		SOF	0	sastre1
2352	348	2	.	\N	conversation.	SOF	999	sastre1
2358	349	6	.	\N	\N	SOF	999	sastre1
2354	349	2	se	be.V.2P.IMPER.PRECLITIC.PRECLITIC	\N	SOF	3	sastre1
2365	350	7	.	\N	\N	SOF	999	sastre1
2360	350	2	ya	already.ADV	\N	SOF	3	sastre1
2375	351	10	.	\N	\N	SOF	999	sastre1
2367	351	2	que	that.CONJ	\N	SOF	3	sastre1
2382	352	7	.	\N	\N	SOF	999	sastre1
2377	352	2	I'll	I.PRON.SUB.1S.+BE.V.FUT	\N	SOF	2	sastre1
2384	353	2	.	\N	\N	SOF	999	sastre1
2385	354	1	mmhm	unk		KEV	0	sastre1
2386	354	2	.	\N	\N	KEV	999	sastre1
2387	355	1	se	be.V.2P.IMPER.PRECLITIC.PRECLITIC		KEV	3	sastre1
2389	355	3	.	\N	\N	KEV	999	sastre1
2388	355	2	acabó	finish.V.3S.PAST	\N	KEV	3	sastre1
2395	356	6	.	\N	\N	SOF	999	sastre1
2391	356	2	finished	finish.V.PAST	\N	SOF	2	sastre1
2400	357	5	?	\N	\N	KEV	999	sastre1
2397	357	2	are	are.V.3P.PRES	\N	KEV	2	sastre1
2408	358	8	.	\N	\N	SOF	999	sastre1
2402	358	2	no	not.ADV	\N	SOF	3	sastre1
2409	359	1	.	\N		KEV	999	sastre1
2411	360	2	don't	do.V.1S.PRES.+NEG	\N	SOF	2	sastre1
2315	342	8	se	be.V.2P.IMPER.PRECLITIC.PRECLITIC	\N	SOF	3	sastre1
2316	342	9	llama	call.V.2S.IMPER	\N	SOF	3	sastre1
2317	342	10	esto	this.PRON.DEM.NT.SG	\N	SOF	3	sastre1
2318	342	11	que	that.PRON.REL	\N	SOF	3	sastre1
2319	342	12	estamos	be.V.1P.PRES	\N	SOF	3	sastre1
2320	342	13	haciendo	do.V.PRESPART	\N	SOF	3	sastre1
2321	342	14	aquí	here.ADV	\N	SOF	3	sastre1
2322	342	15	un	one.DET.INDEF.M.SG	\N	SOF	3	sastre1
2324	343	1	es	be.V.23S.PRES		KEV	3	sastre1
2325	343	2	un	one.DET.INDEF.M.SG	\N	KEV	3	sastre1
2327	343	4	para	stall.V.2S.IMPER	\N	KEV	3	sastre1
2328	343	5	la	the.DET.DEF.F.SG	\N	KEV	3	sastre1
2329	343	6	universidad	university.N.F.SG	\N	KEV	3	sastre1
2331	344	1	un	one.DET.INDEF.M.SG		SOF	3	sastre1
2333	344	3	para	stall.V.2S.IMPER	\N	SOF	3	sastre1
2334	344	4	la	the.DET.DEF.F.SG	\N	SOF	3	sastre1
2335	344	5	universidad	university.N.F.SG	\N	SOF	3	sastre1
2337	345	1	y	and.CONJ		SOF	3	sastre1
2338	345	2	necesitamos	need.V.1P.PAST[or]need.V.1P.PRES	\N	SOF	3	sastre1
2340	345	4	por	for.PREP	\N	SOF	3	sastre1
2341	345	5	thirty	thirty.NUM	\N	SOF	2	sastre1
2342	345	6	minutes	minute.N.PL	\N	SOF	2	sastre1
2345	347	1	ya	already.ADV		SOF	3	sastre1
2347	347	3	estamos	be.V.1P.PRES	\N	SOF	3	sastre1
2348	347	4	almost	almost.ADV	\N	SOF	2	sastre1
2349	347	5	over	over.ADV	\N	SOF	2	sastre1
2351	348	1	ok	unk	phone	SOF	0	sastre1
2355	349	3	está	be.V.23S.PRES	\N	SOF	3	sastre1
2356	349	4	poniendo	put.V.PRESPART	\N	SOF	3	sastre1
2357	349	5	dile	tell.V.2S.IMPER	\N	SOF	3	sastre1
2359	350	1	uhoh	unk		SOF	0	sastre1
2361	350	3	empezó	start.V.3S.PAST	\N	SOF	3	sastre1
2362	350	4	los	the.DET.DEF.M.PL	\N	SOF	3	sastre1
2363	350	5	síntomas	symptom.N.M.PL	\N	SOF	3	sastre1
2364	350	6	de	of.PREP	\N	SOF	3	sastre1
2366	351	1	dile	tell.V.2S.IMPER		SOF	3	sastre1
2368	351	3	cuándo	when.INT	\N	SOF	3	sastre1
2369	351	4	se	be.V.2P.IMPER.PRECLITIC.PRECLITIC	\N	SOF	3	sastre1
2370	351	5	va	go.V.23S.PRES	\N	SOF	3	sastre1
2371	351	6	a	to.PREP	\N	SOF	3	sastre1
2372	351	7	comprar	buy.V.INFIN	\N	SOF	3	sastre1
2373	351	8	la	the.DET.DEF.F.SG	\N	SOF	3	sastre1
2374	351	9	motocicleta	motorcycle.N.F.SG	\N	SOF	3	sastre1
2376	352	1	alright	alright.ADV		SOF	2	sastre1
2378	352	3	talk	talk.V.INFIN	\N	SOF	2	sastre1
2379	352	4	to	to.PREP	\N	SOF	2	sastre1
2380	352	5	you	you.PRON.OBJ.2SP	\N	SOF	2	sastre1
2381	352	6	bye	bye.N.SG	\N	SOF	2	sastre1
2383	353	1	home	home.ADV		SOF	2	sastre1
2392	356	3	playing	play.V.PRESPART	\N	SOF	2	sastre1
2393	356	4	golf	golf.N.SG	\N	SOF	2	sastre1
2394	356	5	now	now.ADV	\N	SOF	2	sastre1
2398	357	3	still	still.ADJ	\N	KEV	2	sastre1
2399	357	4	playing	play.V.PRESPART	\N	KEV	2	sastre1
2401	358	1	no	not.ADV		SOF	3	sastre1
2404	358	4	is	is.V.3S.PRES	\N	SOF	2	sastre1
2405	358	5	coming	come.V.PRESPART	\N	SOF	2	sastre1
2406	358	6	back	back.ADV	\N	SOF	2	sastre1
2407	358	7	now	now.ADV	\N	SOF	2	sastre1
2412	360	3	think	think.V.INFIN	\N	SOF	2	sastre1
2413	360	4	they	they.PRON.OBJ.3P	\N	SOF	2	sastre1
2415	360	6	all	all.ADJ	\N	SOF	2	sastre1
2416	360	7	eighteen	eighteen.NUM	\N	SOF	2	sastre1
2417	360	8	they	they.PRON.SUB.3P	\N	SOF	2	sastre1
2418	360	9	played	play.V.PAST	\N	SOF	2	sastre1
2420	360	11	probably	probably.ADV	\N	SOF	2	sastre1
2421	360	12	half	half.N.SG	\N	SOF	2	sastre1
2422	360	13	.	\N	\N	SOF	999	sastre1
2426	361	4	.	\N	\N	KEV	999	sastre1
2424	361	2	mitad	half.N.F.SG	\N	KEV	3	sastre1
2428	362	2	.	\N	\N	KEV	999	sastre1
2429	363	1	pero	but.CONJ		SOF	3	sastre1
2456	363	28	.	\N	\N	SOF	999	sastre1
2431	363	3	friend	friend.N.SG	\N	SOF	2	sastre1
2458	364	2	.	\N	\N	KEV	999	sastre1
2459	365	1	mmhm	unk		KEV	0	sastre1
2460	365	2	.	\N	\N	KEV	999	sastre1
2461	366	1	but	but.CONJ		SOF	2	sastre1
2468	366	8	.	\N	\N	SOF	999	sastre1
2462	366	2	he	he.PRON.SUB.M.3S	\N	SOF	2	sastre1
2481	367	13	.	\N	\N	SOF	999	sastre1
2471	367	3	know	know.V.INFIN	\N	SOF	2	sastre1
2482	368	1	.	\N		KEV	999	sastre1
2491	369	9	.	\N	\N	SOF	999	sastre1
2484	369	2	is	is.V.3S.PRES	\N	SOF	2	sastre1
2501	370	10	.	\N	\N	SOF	999	sastre1
2493	370	2	he	he.PRON.OBJ.M.3S	\N	SOF	2	sastre1
2502	371	1	.	\N		KEV	999	sastre1
2509	372	7	.	\N	\N	SOF	999	sastre1
2505	372	3	bought	bought.V.PAST	\N	SOF	2	sastre1
2517	373	8	.	\N	\N	SOF	999	sastre1
2511	373	2	now	now.ADV	\N	SOF	2	sastre1
2522	374	5	?	\N	\N	KEV	999	sastre1
2519	374	2	edad	age.N.F.SG	\N	KEV	3	sastre1
2533	375	11	.	\N	\N	SOF	999	sastre1
2524	375	2	en	in.PREP	\N	SOF	3	sastre1
2536	376	3	.	\N	\N	KEV	999	sastre1
2535	376	2	yeah	yeah.ADV	\N	KEV	2	sastre1
2538	377	2	.	\N	\N	KEV	999	sastre1
2540	378	2	he	he.PRON.SUB.M.3S	\N	SOF	2	sastre1
2546	378	8	.	\N	\N	SOF	999	sastre1
2423	361	1	la	the.DET.DEF.F.SG		KEV	3	sastre1
2425	361	3	nueve	nine.NUM	\N	KEV	3	sastre1
2427	362	1	mmhm	unk		KEV	0	sastre1
2432	363	4	bought	bought.V.PAST	\N	SOF	2	sastre1
2433	363	5	a	a.DET.INDEF	\N	SOF	2	sastre1
2434	363	6	B_M_W	name	\N	SOF	2	sastre1
2436	363	8	I	I.PRON.SUB.1S	\N	SOF	2	sastre1
2437	363	9	bought	bought.V.PAST	\N	SOF	2	sastre1
2438	363	10	him	him.PRON.INDIR.M.3S	\N	SOF	2	sastre1
2440	363	12	because	because.CONJ	\N	SOF	2	sastre1
2441	363	13	I	I.PRON.SUB.1S	\N	SOF	2	sastre1
2442	363	14	have	have.V.1S.PRES	\N	SOF	2	sastre1
2444	363	16	friend	friend.N.SG	\N	SOF	2	sastre1
2445	363	17	at	at.PREP	\N	SOF	2	sastre1
2446	363	18	work	work.N.SG	\N	SOF	2	sastre1
2447	363	19	that	that.CONJ	\N	SOF	2	sastre1
2449	363	21	is	is.V.3S.PRES	\N	SOF	2	sastre1
2450	363	22	like	like.CONJ	\N	SOF	2	sastre1
2451	363	23	oh	unk	\N	SOF	0	sastre1
2452	363	24	man	man.N.SG	\N	SOF	2	sastre1
2453	363	25	he	he.PRON.SUB.M.3S	\N	SOF	2	sastre1
2455	363	27	crazy	crazy.ADJ	\N	SOF	2	sastre1
2457	364	1	sí	yes.ADV		KEV	3	sastre1
2463	366	3	is	is.V.3S.PRES	\N	SOF	2	sastre1
2465	366	5	crazy	crazy.ADJ	\N	SOF	2	sastre1
2466	366	6	crazy	crazy.ADJ	\N	SOF	2	sastre1
2467	366	7	crazy	crazy.ADJ	\N	SOF	2	sastre1
2469	367	1	I	I.PRON.SUB.1S		SOF	2	sastre1
2472	367	4	how	how.ADV	\N	SOF	2	sastre1
2473	367	5	his	his.ADJ.POSS.M.3S	\N	SOF	2	sastre1
2474	367	6	wife	wife.N.SG	\N	SOF	2	sastre1
2476	367	8	up	up.ADV	\N	SOF	2	sastre1
2477	367	9	with	with.PREP	\N	SOF	2	sastre1
2478	367	10	him	him.PRON.OBJ.M.3S	\N	SOF	2	sastre1
2480	367	12	know	know.V.2SP.PRES	\N	SOF	2	sastre1
2483	369	1	he	he.PRON.SUB.M.3S		SOF	2	sastre1
2485	369	3	like	like.CONJ	\N	SOF	2	sastre1
2487	369	5	of	of.PREP	\N	SOF	2	sastre1
2488	369	6	these	these.DEM.NEAR.PL	\N	SOF	2	sastre1
2489	369	7	wild	wild.ADJ	\N	SOF	2	sastre1
2490	369	8	guys	guy.N.PL	\N	SOF	2	sastre1
2494	370	3	loves	love.V.3S.PRES	\N	SOF	2	sastre1
2495	370	4	every	every.ADJ	\N	SOF	2	sastre1
2496	370	5	woman	woman.N.SG	\N	SOF	2	sastre1
2498	370	7	woman	woman.N.SG	\N	SOF	2	sastre1
2499	370	8	loves	love.V.PRES.3S	\N	SOF	2	sastre1
2500	370	9	him	him.PRON.OBJ.M.3S	\N	SOF	2	sastre1
2503	372	1	and	and.CONJ		SOF	2	sastre1
2506	372	4	himself	himself.PRON.REFL.INDIR.M.3S	\N	SOF	2	sastre1
2507	372	5	a	a.DET.INDEF	\N	SOF	2	sastre1
2510	373	1	and	and.CONJ		SOF	2	sastre1
2512	373	3	he	he.PRON.SUB.M.3S	\N	SOF	2	sastre1
2513	373	4	bought	bought.V.PAST	\N	SOF	2	sastre1
2515	373	6	a	a.DET.INDEF	\N	SOF	2	sastre1
2516	373	7	motorcycle	motorcycle.N.SG	\N	SOF	2	sastre1
2518	374	1	qué	what.INT		KEV	3	sastre1
2520	374	3	tiene	have.V.23S.PRES	\N	KEV	3	sastre1
2523	375	1	está	be.V.23S.PRES		SOF	3	sastre1
2525	375	3	los	the.DET.DEF.M.PL	\N	SOF	3	sastre1
2526	375	4	cuarenta	forty.NUM	\N	SOF	3	sastre1
2528	375	6	pico	beak.N.M.SG	\N	SOF	3	sastre1
2529	375	7	la	the.DET.DEF.F.SG	\N	SOF	3	sastre1
2530	375	8	edad	age.N.F.SG	\N	SOF	3	sastre1
2532	375	10	esa	that.PRON.DEM.F.SG	\N	SOF	3	sastre1
2534	376	1	mmhm	unk		KEV	0	sastre1
2537	377	1	mmhm	unk		KEV	0	sastre1
2541	378	3	is	is.V.3S.PRES	\N	SOF	2	sastre1
2543	378	5	gigolo	gigolo.N.SG	\N	SOF	2	sastre1
2544	378	6	you	you.PRON.SUB.2SP	\N	SOF	2	sastre1
2545	378	7	know	know.V.2SP.PRES	\N	SOF	2	sastre1
2555	379	9	.	\N	\N	SOF	999	sastre1
2548	379	2	is	is.V.3S.PRES	\N	SOF	2	sastre1
2556	380	1	.	\N		KEV	999	sastre1
2561	381	5	.	\N	\N	KEV	999	sastre1
2558	381	2	an	an.DET.INDEF	\N	KEV	2	sastre1
2562	382	1	.	\N		SOF	999	sastre1
2564	383	2	.	\N	\N	SOF	999	sastre1
2565	384	1	sí	yes.ADV		KEV	3	sastre1
2566	384	2	.	\N	\N	KEV	999	sastre1
2568	385	2	is	is.V.3S.PRES	\N	SOF	2	sastre1
2573	385	7	.	\N	\N	SOF	999	sastre1
2569	385	3	a	a.DET.INDEF	\N	SOF	2	sastre1
2588	386	15	.	\N	\N	SOF	999	sastre1
2575	386	2	he	he.PRON.SUB.M.3S	\N	SOF	2	sastre1
2604	387	16	.	\N	\N	SOF	999	sastre1
2591	387	3	is	is.V.3S.PRES	\N	SOF	2	sastre1
2606	388	2	.	\N	\N	KEV	999	sastre1
2607	389	1	you	you.PRON.SUB.2SP		KEV	2	sastre1
2613	389	7	?	\N	\N	KEV	999	sastre1
2609	389	3	still	still.ADJ	\N	KEV	2	sastre1
2615	390	2	.	\N	\N	SOF	999	sastre1
2618	392	1	I	I.PRON.SUB.1S		SOF	2	sastre1
2617	391	2	.	\N	\N	KEV	999	sastre1
2619	392	2	haven't	have.V.1S.PRES.+NEG	\N	SOF	2	sastre1
2627	392	10	.	\N	\N	SOF	999	sastre1
2620	392	3	moved	move.V.PASTPART	\N	SOF	2	sastre1
2634	393	7	.	\N	\N	SOF	999	sastre1
2629	393	2	you	you.PRON.SUB.2SP	\N	SOF	2	sastre1
2636	394	2	.	\N	\N	KEV	999	sastre1
2637	395	1	but	but.CONJ		SOF	2	sastre1
2645	395	9	.	\N	\N	SOF	999	sastre1
2638	395	2	don't	do.V.12S13P.PRES.+NEG	\N	SOF	2	sastre1
2647	396	2	.	\N	\N	KEV	999	sastre1
2649	397	2	know	know.V.2SP.PRES	\N	SOF	2	sastre1
2665	397	18	.	\N	\N	SOF	999	sastre1
2650	397	3	because	because.CONJ	\N	SOF	2	sastre1
2667	398	2	.	\N	\N	KEV	999	sastre1
2668	399	1	in	in.PREP		SOF	2	sastre1
2669	399	2	the	the.DET.DEF	\N	SOF	2	sastre1
2539	378	1	and	and.CONJ		SOF	2	sastre1
2547	379	1	he	he.PRON.SUB.M.3S		SOF	2	sastre1
2550	379	4	of	of.PREP	\N	SOF	2	sastre1
2551	379	5	these	these.DEM.NEAR.PL	\N	SOF	2	sastre1
2552	379	6	guys	guy.N.PL	\N	SOF	2	sastre1
2554	379	8	crazy	crazy.ADJ	\N	SOF	2	sastre1
2557	381	1	saw	saw.AV.PAST		KEV	2	sastre1
2559	381	3	american	unk	\N	KEV	2	sastre1
2560	381	4	film	film.N.SG	\N	KEV	2	sastre1
2563	383	1	yeah	yeah.ADV		SOF	2	sastre1
2570	385	4	physician	physician.N.SG	\N	SOF	2	sastre1
2571	385	5	from	from.PREP	\N	SOF	2	sastre1
2572	385	6	Cuba	name	\N	SOF	2	sastre1
2576	386	3	is	is.V.3S.PRES	\N	SOF	2	sastre1
2577	386	4	er	unk	\N	SOF	0	sastre1
2579	386	6	with	with.PREP	\N	SOF	2	sastre1
2580	386	7	us	us.PRON.OBJ.1P	\N	SOF	2	sastre1
2581	386	8	over	over.ADV	\N	SOF	2	sastre1
2582	386	9	there	there.ADV	\N	SOF	2	sastre1
2583	386	10	and	and.CONJ	\N	SOF	2	sastre1
2584	386	11	as	as.CONJ	\N	SOF	2	sastre1
2586	386	13	case	case.N.SG	\N	SOF	2	sastre1
2587	386	14	manager	manager.N.SG	\N	SOF	2	sastre1
2589	387	1	and	and.CONJ		SOF	2	sastre1
2592	387	4	studying	study.V.PRESPART	\N	SOF	2	sastre1
2593	387	5	for	for.PREP	\N	SOF	2	sastre1
2594	387	6	his	his.ADJ.POSS.M.3S	\N	SOF	2	sastre1
2595	387	7	R_N	name	\N	SOF	2	sastre1
2597	387	9	see	see.V.INFIN	\N	SOF	2	sastre1
2598	387	10	if	if.CONJ	\N	SOF	2	sastre1
2599	387	11	he	he.PRON.SUB.M.3S	\N	SOF	2	sastre1
2600	387	12	can	can.V.3S.PRES	\N	SOF	2	sastre1
2602	387	14	it	it.PRON.OBJ.3S	\N	SOF	2	sastre1
2603	387	15	now	now.ADV	\N	SOF	2	sastre1
2605	388	1	sí	yes.ADV		KEV	3	sastre1
2610	389	4	at	at.PREP	\N	KEV	2	sastre1
2611	389	5	hospital	hospital.N.SG	\N	KEV	2	sastre1
2612	389	6	right	right.ADJ	\N	KEV	2	sastre1
2614	390	1	yeah	yeah.ADV		SOF	2	sastre1
2621	392	4	from	from.PREP	\N	SOF	2	sastre1
2623	392	6	because	because.CONJ	\N	SOF	2	sastre1
2624	392	7	it's	it.PRON.SUB.3S.+BE.V.3S.PRES	\N	SOF	2	sastre1
2625	392	8	so	so.ADV	\N	SOF	2	sastre1
2628	393	1	and	and.CONJ		SOF	2	sastre1
2630	393	3	know	know.V.2SP.PRES	\N	SOF	2	sastre1
2631	393	4	I	I.PRON.OBJ.1S	\N	SOF	2	sastre1
2633	393	6	offers	offer.N.PL	\N	SOF	2	sastre1
2635	394	1	hmm	unk		KEV	0	sastre1
2640	395	4	go	go.V.INFIN	\N	SOF	2	sastre1
2641	395	5	in	in.PREP	\N	SOF	2	sastre1
2642	395	6	the	the.DET.DEF	\N	SOF	2	sastre1
2643	395	7	street	street.N.SG	\N	SOF	2	sastre1
2644	395	8	any_more	any_more.ADV	\N	SOF	2	sastre1
2646	396	1	yeah	yeah.ADV		KEV	2	sastre1
2651	397	4	with	with.PREP	\N	SOF	2	sastre1
2652	397	5	sales	sale.N.PL	\N	SOF	2	sastre1
2654	397	7	can	can.V.2SP.PRES	\N	SOF	2	sastre1
2655	397	8	do	do.V.INFIN	\N	SOF	2	sastre1
2656	397	9	a	a.DET.INDEF	\N	SOF	2	sastre1
2657	397	10	lot	lot.N.SG	\N	SOF	2	sastre1
2659	397	12	can	can.V.2SP.PRES	\N	SOF	2	sastre1
2660	397	13	make	make.V.INFIN	\N	SOF	2	sastre1
2661	397	14	a	a.DET.INDEF	\N	SOF	2	sastre1
2663	397	16	more	more.ADJ	\N	SOF	2	sastre1
2664	397	17	money	money.N.SG	\N	SOF	2	sastre1
2666	398	1	yeah	yeah.ADV		KEV	2	sastre1
2671	399	4	.	\N	\N	SOF	999	sastre1
2673	400	2	.	\N	\N	KEV	999	sastre1
2674	401	1	but	but.CONJ		SOF	2	sastre1
2685	401	12	.	\N	\N	SOF	999	sastre1
2675	401	2	it's	it.PRON.SUB.3S.+BE.V.3S.PRES	\N	SOF	2	sastre1
2693	402	8	.	\N	\N	SOF	999	sastre1
2687	402	2	know	know.V.2SP.PRES	\N	SOF	2	sastre1
2697	403	4	.	\N	\N	KEV	999	sastre1
2695	403	2	no	no.ADV	\N	KEV	2	sastre1
2699	404	2	.	\N	\N	KEV	999	sastre1
2700	405	1	it's	it.PRON.SUB.3S.+BE.V.3S.PRES		KEV	2	sastre1
2704	405	5	.	\N	\N	KEV	999	sastre1
2701	405	2	not	not.ADV	\N	KEV	2	sastre1
2713	406	9	.	\N	\N	KEV	999	sastre1
2706	406	2	not	not.ADV	\N	KEV	2	sastre1
2722	407	9	.	\N	\N	SOF	999	sastre1
2716	407	3	there	there.ADV	\N	SOF	2	sastre1
2739	408	17	.	\N	\N	SOF	999	sastre1
2724	408	2	I	I.PRON.SUB.1S	\N	SOF	2	sastre1
2741	409	2	.	\N	\N	KEV	999	sastre1
2742	410	1	you	you.PRON.SUB.2SP		SOF	2	sastre1
2744	410	3	.	\N	\N	SOF	999	sastre1
2743	410	2	know	know.V.2SP.PRES	\N	SOF	2	sastre1
2746	411	2	.	\N	\N	KEV	999	sastre1
2748	412	2	vale	cost.V.2S.IMPER	\N	KEV	3	sastre1
2760	412	14	.	\N	\N	KEV	999	sastre1
2749	412	3	la	the.DET.DEF.F.SG	\N	KEV	3	sastre1
2765	413	5	.	\N	\N	KEV	999	sastre1
2762	413	2	quieran	want.V.23P.SUBJ.PRES	\N	KEV	3	sastre1
2767	414	2	.	\N	\N	SOF	999	sastre1
2769	415	2	asaltan	assault.V.23P.PRES	\N	SOF	3	sastre1
2775	415	8	.	\N	\N	SOF	999	sastre1
2770	415	3	te	you.PRON.OBL.MF.2S	\N	SOF	3	sastre1
2780	416	5	.	\N	\N	KEV	999	sastre1
2777	416	2	te	you.PRON.OBL.MF.2S	\N	KEV	3	sastre1
2782	417	2	ahí	there.ADV	is	SOF	3	sastre1
2783	417	3	el	the.DET.DEF.M.SG	an	SOF	3	sastre1
2785	417	5	viste	dress.V.2S.IMPER	restaurant.	SOF	3	sastre1
2786	417	6	como	like.CONJ	\N	SOF	3	sastre1
2787	417	7	mataron	kill.V.3P.PAST	\N	SOF	3	sastre1
2672	400	1	mmhm	unk		KEV	0	sastre1
2678	401	5	you	you.PRON.SUB.2SP	\N	SOF	2	sastre1
2676	401	3	just	just.ADV[or]just.ADJ	\N	SOF	2	sastre1
2679	401	6	have	have.V.2SP.PRES	\N	SOF	2	sastre1
2680	401	7	to	to.PREP	\N	SOF	2	sastre1
2681	401	8	drive	drive.V.INFIN	\N	SOF	2	sastre1
2683	401	10	so	so.ADV	\N	SOF	2	sastre1
2684	401	11	much	much.ADJ	\N	SOF	2	sastre1
2686	402	1	you	you.PRON.SUB.2SP		SOF	2	sastre1
2688	402	3	cars	car.N.PL	\N	SOF	2	sastre1
2690	402	5	is	is.V.3S.PRES	\N	SOF	2	sastre1
2691	402	6	so	so.ADV	\N	SOF	2	sastre1
2692	402	7	expensive	expensive.ADJ	\N	SOF	2	sastre1
2694	403	1	no	no.ADV		KEV	2	sastre1
2696	403	3	y	and.CONJ	\N	KEV	3	sastre1
2702	405	3	worth	worth.ADJ	\N	KEV	2	sastre1
2705	406	1	it's	it.PRON.SUB.3S.+BE.V.3S.PRES		KEV	2	sastre1
2707	406	3	worth	worth.ADJ	\N	KEV	2	sastre1
2708	406	4	it	it.PRON.OBJ.3S	\N	KEV	2	sastre1
2710	406	6	on	on.PREP	\N	KEV	2	sastre1
2711	406	7	the	the.DET.DEF	\N	KEV	2	sastre1
2712	406	8	streets	street.N.PL	\N	KEV	2	sastre1
2714	407	1	I	I.PRON.SUB.1S		SOF	2	sastre1
2717	407	4	I	I.PRON.SUB.1S	\N	SOF	2	sastre1
2718	407	5	do	do.V.1S.PRES	\N	SOF	2	sastre1
2719	407	6	my	my.ADJ.POSS.1S	\N	SOF	2	sastre1
2721	407	8	hours	hour.N.PL	\N	SOF	2	sastre1
2723	408	1	and	and.CONJ		SOF	2	sastre1
2725	408	3	get	get.V.1S.PRES	\N	SOF	2	sastre1
2727	408	5	and	and.CONJ	\N	SOF	2	sastre1
2728	408	6	I	I.PRON.SUB.1S	\N	SOF	2	sastre1
2729	408	7	go	go.V.1S.PRES	\N	SOF	2	sastre1
2731	408	9	up	up.ADV	\N	SOF	2	sastre1
2732	408	10	my	my.ADJ.POSS.1S	\N	SOF	2	sastre1
2733	408	11	kid	kid.N.SG	\N	SOF	2	sastre1
2734	408	12	and	and.CONJ	\N	SOF	2	sastre1
2736	408	14	it	it.PRON.OBJ.3S	\N	SOF	2	sastre1
2737	408	15	I'm	I.PRON.SUB.1S.+BE.V.PRES	\N	SOF	2	sastre1
2738	408	16	home	home.ADV	\N	SOF	2	sastre1
2740	409	1	mmhm	unk		KEV	0	sastre1
2745	411	1	mmhm	unk		KEV	0	sastre1
2750	412	4	pena	sorrow.N.F.SG	\N	KEV	3	sastre1
2752	412	6	en	in.PREP	\N	KEV	3	sastre1
2753	412	7	la	the.DET.DEF.F.SG	\N	KEV	3	sastre1
2754	412	8	calle	street.N.F.SG	\N	KEV	3	sastre1
2755	412	9	como	like.CONJ	\N	KEV	3	sastre1
2757	412	11	la	the.DET.DEF.F.SG	\N	KEV	3	sastre1
2758	412	12	calle	street.N.F.SG	\N	KEV	3	sastre1
2759	412	13	hoy	today.ADV	\N	KEV	3	sastre1
2763	413	3	te	you.PRON.OBL.MF.2S	\N	KEV	3	sastre1
2764	413	4	roban	rob.V.23P.PRES	\N	KEV	3	sastre1
2766	414	1	no	not.ADV		SOF	3	sastre1
2771	415	4	matan	kill.V.23P.PRES	\N	SOF	3	sastre1
2773	415	6	cualquier	whatever.ADJ.MF.SG	\N	SOF	3	sastre1
2774	415	7	cosa	thing.N.F.SG	\N	SOF	3	sastre1
2776	416	1	er	unk		KEV	0	sastre1
2779	416	4	exacto	exact.ADJ.M.SG	\N	KEV	3	sastre1
2781	417	1	mira	watch.V.2S.IMPER	Chili's	SOF	3	sastre1
2788	417	8	a	to.PREP	\N	SOF	3	sastre1
2789	417	9	la	the.DET.DEF.F.SG	\N	SOF	3	sastre1
2791	417	11	esa	that.PRON.DEM.F.SG	\N	SOF	3	sastre1
2792	417	12	ahí	there.ADV	\N	SOF	3	sastre1
2793	417	13	en	in.PREP	\N	SOF	3	sastre1
2796	417	16	.	\N	\N	SOF	999	sastre1
2801	418	5	.	\N	\N	KEV	999	sastre1
2799	418	3	Chili's	name	\N	KEV	3	sastre1
2803	419	2	.	\N	\N	KEV	999	sastre1
2804	420	1	pero	but.CONJ		SOF	3	sastre1
2827	420	24	.	\N	\N	SOF	999	sastre1
2805	420	2	la	the.DET.DEF.F.SG	\N	SOF	3	sastre1
2834	421	7	.	\N	\N	SOF	999	sastre1
2829	421	2	Chili's	name	\N	SOF	0	sastre1
2835	422	1	.	\N		KEV	999	sastre1
2844	423	9	?	\N	\N	SOF	999	sastre1
2837	423	2	cincuenta	fifty.NUM	\N	SOF	3	sastre1
2851	424	7	.	\N	\N	KEV	999	sastre1
2846	424	2	not	not.ADV	\N	KEV	2	sastre1
2854	425	3	.	\N	\N	SOF	999	sastre1
2853	425	2	Miramar	name	\N	SOF	0	sastre1
2856	426	2	.	\N	\N	KEV	999	sastre1
2857	427	1	no	no.ADV		SOF	2	sastre1
2863	427	7	?	\N	\N	SOF	999	sastre1
2858	427	2	no	no.ADV	\N	SOF	2	sastre1
2872	428	9	.	\N	\N	KEV	999	sastre1
2865	428	2	that's	that.DEM.FAR.+BE.V.3S.PRES	\N	KEV	2	sastre1
2878	429	6	?	\N	\N	SOF	999	sastre1
2874	429	2	what	what.REL	\N	SOF	2	sastre1
2882	430	4	.	\N	\N	KEV	999	sastre1
2881	430	3	Dade_County	name	\N	KEV	0	sastre1
2886	431	4	.	\N	\N	SOF	999	sastre1
2884	431	2	that's	that.DEM.FAR.+BE.V.3S.PRES	\N	SOF	2	sastre1
2893	432	7	.	\N	\N	KEV	999	sastre1
2889	432	3	what	what.REL	\N	KEV	2	sastre1
2899	433	6	.	\N	\N	KEV	999	sastre1
2895	433	2	we	we.PRON.SUB.1P	\N	KEV	2	sastre1
2901	434	2	.	\N	\N	SOF	999	sastre1
2902	435	1	we	we.PRON.SUB.1P		KEV	2	sastre1
2906	435	5	.	\N	\N	KEV	999	sastre1
2904	435	3	unincorporated	unincorporate.V.PASTPART	\N	KEV	2	sastre1
2908	436	2	subdivision	subdivision.N.SG	\N	KEV	2	sastre1
2794	417	14	el	the.DET.DEF.M.SG	\N	SOF	3	sastre1
2795	417	15	Chili's	name	\N	SOF	0	sastre1
2797	418	1	la	the.DET.DEF.F.SG		KEV	3	sastre1
2800	418	4	sí	yes.ADV	\N	KEV	3	sastre1
2802	419	1	sí	yes.ADV		KEV	3	sastre1
2807	420	4	que	that.PRON.REL	\N	SOF	3	sastre1
2808	420	5	vive	live.V.2S.IMPER	\N	SOF	3	sastre1
2809	420	6	aquí	here.ADV	\N	SOF	3	sastre1
2810	420	7	en	in.PREP	\N	SOF	3	sastre1
2812	420	9	they	they.PRON.SUB.3P	\N	SOF	2	sastre1
2813	420	10	get	get.V.3P.PRES	\N	SOF	2	sastre1
2814	420	11	very	very.ADV	\N	SOF	2	sastre1
2815	420	12	upset	upset.V.PRESPART.ASV	\N	SOF	2	sastre1
2817	420	14	of	of.PREP	\N	SOF	2	sastre1
2819	420	16	because	because.CONJ	\N	SOF	2	sastre1
2818	420	15	that	that.DEM.FAR[or]that.CONJ	\N	SOF	2	sastre1
2821	420	18	say	say.V.3P.PRES	\N	SOF	2	sastre1
2822	420	19	que	that.CONJ	\N	SOF	3	sastre1
2823	420	20	Chili's	name	\N	SOF	0	sastre1
2824	420	21	was	was.V.3S.PAST	\N	SOF	2	sastre1
2825	420	22	in	in.PREP	\N	SOF	2	sastre1
2828	421	1	and	and.CONJ		SOF	2	sastre1
2830	421	3	is	is.V.3S.PRES	\N	SOF	2	sastre1
2831	421	4	not	not.ADV	\N	SOF	2	sastre1
2832	421	5	in	in.PREP	\N	SOF	2	sastre1
2833	421	6	Miami_Lakes	name	\N	SOF	0	sastre1
2838	423	3	y	and.CONJ	\N	SOF	3	sastre1
2839	423	4	siete	seven.NUM	\N	SOF	3	sastre1
2840	423	5	no	not.ADV	\N	SOF	3	sastre1
2841	423	6	es	be.V.23S.PRES	\N	SOF	3	sastre1
2843	423	8	entienden	understand.V.23P.PRES	\N	SOF	3	sastre1
2845	424	1	is	is.V.3S.PRES		KEV	2	sastre1
2848	424	4	actually	actual.ADJ.+LY	\N	KEV	2	sastre1
2849	424	5	unincorporated	unincorporate.V.PASTPART	\N	KEV	2	sastre1
2850	424	6	Dade_County	name	\N	KEV	0	sastre1
2855	426	1	that's	that.DEM.FAR.+BE.V.3S.PRES		KEV	2	sastre1
2859	427	3	that's	that.DEM.FAR.+BE.V.3S.PRES	\N	SOF	2	sastre1
2860	427	4	er	unk	\N	SOF	0	sastre1
2862	427	6	no	no.ADV	\N	SOF	2	sastre1
2864	428	1	no	no.ADV		KEV	2	sastre1
2866	428	3	no	no.ADV	\N	KEV	2	sastre1
2867	428	4	that's	that.DEM.FAR.+BE.V.3S.PRES	\N	KEV	2	sastre1
2869	428	6	Dade_County	name	\N	KEV	0	sastre1
2870	428	7	that's	that.DEM.FAR.+BE.V.3S.PRES	\N	KEV	2	sastre1
2871	428	8	Dade_County	name	\N	KEV	0	sastre1
2873	429	1	so	so.ADV		SOF	2	sastre1
2875	429	3	is	is.V.3S.PRES	\N	SOF	2	sastre1
2877	429	5	called	call.V.PASTPART	\N	SOF	2	sastre1
2879	430	1	Dade_County	name		KEV	0	sastre1
2883	431	1	so	so.ADV		SOF	2	sastre1
2885	431	3	Dade	name	\N	SOF	0	sastre1
2887	432	1	it's	it.PRON.SUB.3S.+BE.V.3S.PRES		KEV	2	sastre1
2890	432	4	we	we.PRON.SUB.1P	\N	KEV	2	sastre1
2891	432	5	were	were.V.1P.PAST	\N	KEV	2	sastre1
2892	432	6	before	before.CONJ	\N	KEV	2	sastre1
2894	433	1	before	before.CONJ		KEV	2	sastre1
2897	433	4	a	a.DET.INDEF	\N	KEV	2	sastre1
2898	433	5	town	town.N.SG	\N	KEV	2	sastre1
2900	434	1	yeah	yeah.ADV		SOF	2	sastre1
2905	435	4	Dade_County	name	\N	KEV	0	sastre1
2907	436	1	the	the.DET.DEF		KEV	2	sastre1
2909	436	3	was	was.V.3S.PAST	\N	KEV	2	sastre1
2911	436	5	pero	but.CONJ	\N	KEV	3	sastre1
2912	436	6	it	it.PRON.SUB.3S	\N	KEV	2	sastre1
2913	436	7	was	was.V.3S.PAST	\N	KEV	2	sastre1
2916	436	10	.	\N	\N	KEV	999	sastre1
2922	437	6	.	\N	\N	KEV	999	sastre1
2919	437	3	became	became.V.1P.PRES	\N	KEV	2	sastre1
2933	438	11	.	\N	\N	KEV	999	sastre1
2924	438	2	are	are.V.3P.PRES	\N	KEV	2	sastre1
2939	439	6	.	\N	\N	KEV	999	sastre1
2935	439	2	are	are.V.3P.PRES	\N	KEV	2	sastre1
2956	440	17	.	\N	\N	SOF	999	sastre1
2942	440	3	they	they.PRON.SUB.3P	\N	SOF	2	sastre1
2959	441	3	.	\N	\N	KEV	999	sastre1
2958	441	2	Carol_City	name	\N	KEV	0	sastre1
2962	442	3	?	\N	\N	SOF	999	sastre1
2963	443	1	Carol_City	name		KEV	0	sastre1
2965	443	3	.	\N	\N	KEV	999	sastre1
2964	443	2	pero	but.CONJ	\N	KEV	3	sastre1
2967	444	2	.	\N	\N	SOF	999	sastre1
2968	445	1	Carol_City	name		KEV	0	sastre1
2976	445	9	.	\N	\N	KEV	999	sastre1
2969	445	2	is	is.V.3S.PRES	\N	KEV	2	sastre1
2980	446	4	.	\N	\N	KEV	999	sastre1
2979	446	3	subdivision	subdivision.N.SG	\N	KEV	2	sastre1
2985	447	5	.	\N	\N	SOF	999	sastre1
2982	447	2	like	like.CONJ	\N	SOF	2	sastre1
2991	448	6	.	\N	\N	KEV	999	sastre1
2987	448	2	Miami	name	\N	KEV	0	sastre1
2994	449	3	.	\N	\N	SOF	999	sastre1
2993	449	2	ok	unk	\N	SOF	0	sastre1
2996	450	2	.	\N	\N	KEV	999	sastre1
2997	451	1	tú	you.PRON.SUB.MF.2S		KEV	3	sastre1
2999	451	3	.	\N	\N	KEV	999	sastre1
2998	451	2	sabes	know.V.2S.PRES	\N	KEV	3	sastre1
3004	452	5	.	\N	\N	KEV	999	sastre1
3001	452	2	cuando	when.CONJ	\N	KEV	3	sastre1
3010	453	6	.	\N	\N	SOF	999	sastre1
3005	453	1	just	just.ADV[or]just.ADJ		SOF	2	sastre1
3014	454	4	.	\N	\N	SOF	999	sastre1
3012	454	2	not	not.ADV	\N	SOF	2	sastre1
3016	455	2	.	\N	\N	SOF	999	sastre1
3017	456	1	er	unk		SOF	0	sastre1
3027	456	11	.	\N	\N	SOF	999	sastre1
3018	456	2	los	the.DET.DEF.M.PL	\N	SOF	3	sastre1
3029	457	2	.	\N	\N	KEV	999	sastre1
3031	458	2	Dade_County	name	\N	KEV	0	sastre1
3032	458	3	.	\N	\N	KEV	999	sastre1
3033	459	1	is	is.V.3S.PRES		SOF	2	sastre1
3035	459	3	.	\N	\N	SOF	999	sastre1
3034	459	2	Miami_Gardens	name	\N	SOF	0	sastre1
3037	460	2	no	not.ADV	\N	KEV	3	sastre1
2915	436	9	Dade_County	name	\N	KEV	0	sastre1
2917	437	1	then	then.ADV		KEV	2	sastre1
2920	437	4	a	a.DET.INDEF	\N	KEV	2	sastre1
2921	437	5	town	town.N.SG	\N	KEV	2	sastre1
2925	438	3	not	not.ADV	\N	KEV	2	sastre1
2926	438	4	a	a.DET.INDEF	\N	KEV	2	sastre1
2927	438	5	town	town.N.SG	\N	KEV	2	sastre1
2929	438	7	are	are.V.3P.PRES	\N	KEV	2	sastre1
2930	438	8	not	not.ADV	\N	KEV	2	sastre1
2931	438	9	a	a.DET.INDEF	\N	KEV	2	sastre1
2932	438	10	city	city.N.SG	\N	KEV	2	sastre1
2936	439	3	just	just.ADV	\N	KEV	2	sastre1
2937	439	4	unincorporated	unincorporate.V.PASTPART	\N	KEV	2	sastre1
2938	439	5	Dade_County	name	\N	KEV	0	sastre1
2940	440	1	but	but.CONJ		SOF	2	sastre1
2943	440	4	call	call.V.3P.PRES	\N	SOF	2	sastre1
2944	440	5	that	that.DEM.FAR	\N	SOF	2	sastre1
2945	440	6	area	area.N.SG	\N	SOF	2	sastre1
2947	440	8	certain	certain.ADJ	\N	SOF	2	sastre1
2948	440	9	area	area.N.SG	\N	SOF	2	sastre1
2949	440	10	and	and.CONJ	\N	SOF	2	sastre1
2951	440	12	don't	do.V.3P.PRES.+NEG	\N	SOF	2	sastre1
2952	440	13	they	they.PRON.SUB.3P	\N	SOF	2	sastre1
2953	440	14	have	have.V.3P.PRES	\N	SOF	2	sastre1
2955	440	16	name	name.N.SG	\N	SOF	2	sastre1
2957	441	1	that's	that.DEM.FAR.+BE.V.3S.PRES		KEV	2	sastre1
2960	442	1	Carol_City	name		SOF	0	sastre1
2966	444	1	ok	unk		SOF	0	sastre1
2970	445	3	not	not.ADV	\N	KEV	2	sastre1
2971	445	4	a	a.DET.INDEF	\N	KEV	2	sastre1
2972	445	5	city	city.N.SG	\N	KEV	2	sastre1
2974	445	7	a	a.DET.INDEF	\N	KEV	2	sastre1
2975	445	8	town	town.N.SG	\N	KEV	2	sastre1
2977	446	1	it's	it.PRON.SUB.3S.+BE.V.3S.PRES		KEV	2	sastre1
2981	447	1	ok	unk		SOF	0	sastre1
2983	447	3	we	we.PRON.SUB.1P	\N	SOF	2	sastre1
2986	448	1	como	like.CONJ		KEV	3	sastre1
2988	448	3	like	like.CONJ	\N	KEV	2	sastre1
2989	448	4	we	we.PRON.SUB.1P	\N	KEV	2	sastre1
2992	449	1	ah	unk		SOF	0	sastre1
2995	450	1	right	right.ADJ		KEV	2	sastre1
3000	452	1	pero	but.CONJ		KEV	3	sastre1
3003	452	4	refiere	refer.V.2S.IMPER	\N	KEV	3	sastre1
3006	453	2	like	like.CONJ	\N	SOF	2	sastre1
3008	453	4	that	that.DEM.FAR	\N	SOF	2	sastre1
3009	453	5	palmero	palm.N.M.SG	\N	SOF	3	sastre1
3011	454	1	that's	that.DEM.FAR.+BE.V.3S.PRES		SOF	2	sastre1
3015	455	1	Navarro	name		SOF	0	sastre1
3019	456	3	Burger_Kings	name	\N	SOF	0	sastre1
3020	456	4	and	and.CONJ	\N	SOF	2	sastre1
3021	456	5	McDonalds	name	\N	SOF	0	sastre1
3022	456	6	todo	all.ADJ.M.SG	\N	SOF	3	sastre1
3024	456	8	para	stall.V.2S.IMPER	\N	SOF	3	sastre1
3025	456	9	allá	there.ADV	\N	SOF	3	sastre1
3026	456	10	es	be.V.23S.PRES	\N	SOF	3	sastre1
3028	457	1	no	not.ADV		KEV	3	sastre1
3036	460	1	no	not.ADV		KEV	3	sastre1
3046	460	11	.	\N	\N	KEV	999	sastre1
3048	461	2	.	\N	\N	SOF	999	sastre1
3050	462	2	sixty	sixty.NUM	\N	KEV	2	sastre1
3053	462	5	.	\N	\N	KEV	999	sastre1
3051	462	3	seventh	seventh.ORD	\N	KEV	2	sastre1
3067	463	14	.	\N	\N	KEV	999	sastre1
3055	463	2	you	you.PRON.SUB.2SP	\N	KEV	2	sastre1
3069	464	2	.	\N	\N	SOF	999	sastre1
3070	465	1	eso	that.PRON.DEM.NT.SG		KEV	3	sastre1
3093	465	24	.	\N	\N	KEV	999	sastre1
3071	465	2	es	be.V.23S.PRES	\N	KEV	3	sastre1
3104	466	11	.	\N	\N	KEV	999	sastre1
3095	466	2	que	that.CONJ	\N	KEV	3	sastre1
3106	467	2	.	\N	\N	SOF	999	sastre1
3107	468	1	que	that.CONJ		KEV	3	sastre1
3108	468	2	.	\N	\N	KEV	999	sastre1
3109	469	1	y	and.CONJ		SOF	3	sastre1
3116	469	8	.	\N	\N	SOF	999	sastre1
3110	469	2	entonces	then.ADV	\N	SOF	3	sastre1
3131	470	15	.	\N	\N	KEV	999	sastre1
3119	470	3	pueblo	village.N.M.SG	\N	KEV	3	sastre1
3134	471	3	?	\N	\N	KEV	999	sastre1
3135	472	1	pero	but.CONJ		SOF	3	sastre1
3139	472	5	.	\N	\N	SOF	999	sastre1
3136	472	2	fíjate	fix.V.2S.IMPER.PRECLITIC.PRECLITIC	\N	SOF	3	sastre1
3148	473	9	.	\N	\N	SOF	999	sastre1
3141	473	2	nosotros	we.PRON.SUB.M.1P	\N	SOF	3	sastre1
3159	474	11	.	\N	\N	SOF	999	sastre1
3150	474	2	three	three.NUM	\N	SOF	2	sastre1
3039	460	4	Miami_Gardens	name	\N	KEV	0	sastre1
3040	460	5	doesn't	does.SV.INFIN.+NEG	\N	KEV	2	sastre1
3041	460	6	come	come.SV.INFIN	\N	KEV	2	sastre1
3043	460	8	fifty	fifty.NUM	\N	KEV	2	sastre1
3044	460	9	seventh	seventh.ORD	\N	KEV	2	sastre1
3045	460	10	avenue	avenue.N.SG	\N	KEV	2	sastre1
3047	461	1	tampoco	neither.ADV		SOF	3	sastre1
3052	462	4	avenue	avenue.N.SG	\N	KEV	2	sastre1
3054	463	1	if	if.CONJ		KEV	2	sastre1
3057	463	4	gonna	go.V.PRESPART.+TO.PREP	\N	KEV	2	sastre1
3058	463	5	call	call.V.INFIN	\N	KEV	2	sastre1
3060	463	7	anything	anything.PRON	\N	KEV	2	sastre1
3061	463	8	eso	that.PRON.DEM.NT.SG	\N	KEV	3	sastre1
3062	463	9	es	be.V.23S.PRES	\N	KEV	3	sastre1
3063	463	10	la	the.DET.DEF.F.SG	\N	KEV	3	sastre1
3065	463	12	de	of.PREP	\N	KEV	3	sastre1
3066	463	13	Palms_Springs_North	name	\N	KEV	0	sastre1
3068	464	1	ok	unk		SOF	0	sastre1
3073	465	4	que	that.PRON.REL	\N	KEV	3	sastre1
3074	465	5	le	him.PRON.OBL.MF.23S	\N	KEV	3	sastre1
3075	465	6	llaman	call.V.23P.PRES	\N	KEV	3	sastre1
3076	465	7	que	that.CONJ	\N	KEV	3	sastre1
3078	465	9	es	be.V.23S.PRES	\N	KEV	3	sastre1
3079	465	10	Palms_Springs_North	name	\N	KEV	0	sastre1
3080	465	11	because	because.CONJ	\N	KEV	2	sastre1
3082	465	13	empieza	start.V.2S.IMPER	\N	KEV	3	sastre1
3083	465	14	en	in.PREP	\N	KEV	3	sastre1
3084	465	15	la	the.DET.DEF.F.SG	\N	KEV	3	sastre1
3085	465	16	setenta	seventy.NUM	\N	KEV	3	sastre1
3086	465	17	y	and.CONJ	\N	KEV	3	sastre1
3088	465	19	que	that.CONJ	\N	KEV	3	sastre1
3089	465	20	es	be.V.23S.PRES	\N	KEV	3	sastre1
3090	465	21	el	the.DET.DEF.M.SG	\N	KEV	3	sastre1
3091	465	22	para	stall.V.2S.IMPER	\N	KEV	3	sastre1
3094	466	1	así	thus.ADV		KEV	3	sastre1
3096	466	3	esto	this.PRON.DEM.NT.SG	\N	KEV	3	sastre1
3097	466	4	es	be.V.23S.PRES	\N	KEV	3	sastre1
3099	466	6	pequeño	small.ADJ.M.SG	\N	KEV	3	sastre1
3100	466	7	pocket	pocket.N.SG	\N	KEV	2	sastre1
3101	466	8	que	that.PRON.REL	\N	KEV	3	sastre1
3103	466	10	ahí	there.ADV	\N	KEV	3	sastre1
3105	467	1	que	that.CONJ		SOF	3	sastre1
3111	469	3	por	for.PREP	\N	SOF	3	sastre1
3113	469	5	le	him.PRON.OBL.MF.23S	\N	SOF	3	sastre1
3114	469	6	dicen	tell.V.23P.PRES	\N	SOF	3	sastre1
3115	469	7	Miami_Lakes	name	\N	SOF	0	sastre1
3117	470	1	es	be.V.23S.PRES		KEV	3	sastre1
3120	470	4	o	or.CONJ	\N	KEV	3	sastre1
3121	470	5	la	the.DET.DEF.F.SG	\N	KEV	3	sastre1
3122	470	6	ciudad	town.N.F.SG	\N	KEV	3	sastre1
3124	470	8	cerca	hover.V.2S.IMPER	\N	KEV	3	sastre1
3125	470	9	a	to.PREP	\N	KEV	3	sastre1
3126	470	10	donde	where.REL	\N	KEV	3	sastre1
3128	470	12	le	him.PRON.OBL.MF.23S	\N	KEV	3	sastre1
3129	470	13	dicen	tell.V.23P.PRES	\N	KEV	3	sastre1
3130	470	14	Miami_Lakes	name	\N	KEV	0	sastre1
3132	471	1	tú	you.PRON.SUB.MF.2S		KEV	3	sastre1
3137	472	3	una	a.DET.INDEF.F.SG	\N	SOF	3	sastre1
3140	473	1	siendo	be.V.PRESPART		SOF	3	sastre1
3142	473	3	Miami_Lakes	name	\N	SOF	0	sastre1
3143	473	4	y	and.CONJ	\N	SOF	3	sastre1
3145	473	6	incorporados	incorporate.V.2P.IMPER	\N	SOF	3	sastre1
3146	473	7	tú	you.PRON.SUB.MF.2S	\N	SOF	3	sastre1
3147	473	8	pones	put.V.2S.PRES	\N	SOF	3	sastre1
3151	474	3	zero	zero.NUM	\N	SOF	2	sastre1
3152	474	4	one	one.NUM	\N	SOF	2	sastre1
3153	474	5	four	four.NUM	\N	SOF	2	sastre1
3154	474	6	y	and.CONJ	\N	SOF	3	sastre1
3156	474	8	saliendo	exit.V.PRESPART	\N	SOF	3	sastre1
3157	474	9	en	in.PREP	\N	SOF	3	sastre1
3158	474	10	Hyaleah	name	\N	SOF	2	sastre1
3160	475	1	sales	exit.V.2S.PRES		KEV	3	sastre1
3165	475	6	.	\N	\N	KEV	999	sastre1
3167	476	2	.	\N	\N	KEV	999	sastre1
3168	477	1	why	why.REL		SOF	2	sastre1
3176	477	9	?	\N	\N	SOF	999	sastre1
3169	477	2	don't	do.V.12S13P.PRES.+NEG	\N	SOF	2	sastre1
3188	478	12	.	\N	\N	KEV	999	sastre1
3178	478	2	are	are.V.1P.PRES	\N	KEV	2	sastre1
3194	479	6	.	\N	\N	KEV	999	sastre1
3190	479	2	tres	three.NUM	\N	KEV	3	sastre1
3206	480	12	.	\N	\N	SOF	999	sastre1
3196	480	2	porque	because.CONJ	\N	SOF	3	sastre1
3225	481	19	.	\N	\N	KEV	999	sastre1
3208	481	2	pero	but.CONJ	\N	KEV	3	sastre1
3228	482	3	?	\N	\N	SOF	999	sastre1
3227	482	2	cuándo	when.INT	\N	SOF	3	sastre1
3231	483	3	.	\N	\N	KEV	999	sastre1
3230	483	2	sé	be.V.2S.IMPER	\N	KEV	3	sastre1
3236	484	5	.	\N	\N	KEV	999	sastre1
3234	484	3	lo	him.PRON.OBJ.M.3S	\N	KEV	3	sastre1
3270	485	34	.	\N	\N	SOF	999	sastre1
3238	485	2	I	I.PRON.SUB.1S	\N	SOF	2	sastre1
3273	486	3	.	\N	\N	KEV	999	sastre1
3272	486	2	mmhm	unk	\N	KEV	0	sastre1
3275	487	2	.	\N	\N	KEV	999	sastre1
3276	488	1	because	because.CONJ		SOF	2	sastre1
3277	488	2	if	if.CONJ	\N	SOF	2	sastre1
3161	475	2	a	to.PREP	\N	KEV	3	sastre1
3162	475	3	sales	exit.V.2S.PRES	\N	KEV	3	sastre1
3164	475	5	Hyaleah	name	\N	KEV	2	sastre1
3166	476	1	yeah	yeah.ADV		KEV	2	sastre1
3171	477	4	get	get.V.1P.PRES	\N	SOF	2	sastre1
3172	477	5	our	our.ADJ.POSS.1P	\N	SOF	2	sastre1
3173	477	6	own	own.ADJ	\N	SOF	2	sastre1
3174	477	7	zip	zip.N.SG	\N	SOF	2	sastre1
3177	478	1	we	we.PRON.SUB.1P		KEV	2	sastre1
3179	478	3	getting	get.V.PRESPART	\N	KEV	2	sastre1
3180	478	4	our	our.ADJ.POSS.1P	\N	KEV	2	sastre1
3182	478	6	zip	zip.N.SG	\N	KEV	2	sastre1
3183	478	7	code	code.N.SG	\N	KEV	2	sastre1
3184	478	8	tres	three.NUM	\N	KEV	3	sastre1
3185	478	9	tres	three.NUM	\N	KEV	3	sastre1
3187	478	11	cuatro	four.NUM	\N	KEV	3	sastre1
3189	479	1	tres	three.NUM		KEV	3	sastre1
3191	479	3	cero	zero.N.M.SG	\N	KEV	3	sastre1
3192	479	4	uno	one.NUM	\N	KEV	3	sastre1
3195	480	1	no	not.ADV		SOF	3	sastre1
3197	480	3	tres	three.NUM	\N	SOF	3	sastre1
3198	480	4	tres	three.NUM	\N	SOF	3	sastre1
3199	480	5	uno	one.NUM	\N	SOF	3	sastre1
3201	480	7	coge	take.V.2S.IMPER	\N	SOF	3	sastre1
3202	480	8	mitad	half.N.F.SG	\N	SOF	3	sastre1
3203	480	9	de	of.PREP	\N	SOF	3	sastre1
3204	480	10	Hyaleah	name	\N	SOF	2	sastre1
3207	481	1	bueno	well.IM		KEV	3	sastre1
3209	481	3	supuestamente	supposedly.ADV	\N	KEV	3	sastre1
3210	481	4	el	the.DET.DEF.M.SG	\N	KEV	3	sastre1
3212	481	6	viene	come.V.23S.PRES	\N	KEV	3	sastre1
3213	481	7	en	in.PREP	\N	KEV	3	sastre1
3214	481	8	que	that.CONJ	\N	KEV	3	sastre1
3215	481	9	er	unk	\N	KEV	0	sastre1
3216	481	10	tres	three.NUM	\N	KEV	3	sastre1
3218	481	12	cero	zero.N.M.SG	\N	KEV	3	sastre1
3219	481	13	uno	one.NUM	\N	KEV	3	sastre1
3220	481	14	cuatro	four.NUM	\N	KEV	3	sastre1
3221	481	15	va	go.V.23S.PRES	\N	KEV	3	sastre1
3222	481	16	a	to.PREP	\N	KEV	3	sastre1
3224	481	18	Miami_Lakes	name	\N	KEV	0	sastre1
3226	482	1	y	and.CONJ		SOF	3	sastre1
3229	483	1	no	not.ADV		KEV	3	sastre1
3232	484	1	pero	but.CONJ		KEV	3	sastre1
3235	484	4	dijo	tell.V.3S.PAST	\N	KEV	3	sastre1
3237	485	1	because	because.CONJ		SOF	2	sastre1
3240	485	4	telling	tell.V.PRESPART	\N	SOF	2	sastre1
3241	485	5	like	like.CONJ	\N	SOF	2	sastre1
3242	485	6	if	if.CONJ	\N	SOF	2	sastre1
3244	485	8	call	call.V.2SP.PRES	\N	SOF	2	sastre1
3245	485	9	a	a.DET.INDEF	\N	SOF	2	sastre1
3246	485	10	credit	credit.N.SG	\N	SOF	2	sastre1
3247	485	11	card	card.N.SG	\N	SOF	2	sastre1
3249	485	13	call	call.V.2SP.PRES	\N	SOF	2	sastre1
3250	485	14	somebody	somebody.PRON	\N	SOF	2	sastre1
3251	485	15	and	and.CONJ	\N	SOF	2	sastre1
3253	485	17	give	give.V.2SP.PRES	\N	SOF	2	sastre1
3254	485	18	them	them.PRON.OBJ.3P	\N	SOF	2	sastre1
3255	485	19	an	an.DET.INDEF	\N	SOF	2	sastre1
3256	485	20	address	address.N.SG	\N	SOF	2	sastre1
3258	485	22	you	you.PRON.SUB.2SP	\N	SOF	2	sastre1
3259	485	23	tell	tell.V.2SP.PRES	\N	SOF	2	sastre1
3260	485	24	them	them.PRON.OBJ.3P	\N	SOF	2	sastre1
3262	485	26	they	they.PRON.SUB.3P	\N	SOF	2	sastre1
3263	485	27	are	are.V.3P.PRES	\N	SOF	2	sastre1
3264	485	28	like	like.CONJ	\N	SOF	2	sastre1
3265	485	29	no	no.ADV	\N	SOF	2	sastre1
3267	485	31	and	and.CONJ	\N	SOF	2	sastre1
3268	485	32	ok	unk	\N	SOF	0	sastre1
3269	485	33	Hyaleah	name	\N	SOF	0	sastre1
3271	486	1	er	unk		KEV	0	sastre1
3274	487	1	right	right.ADJ		KEV	2	sastre1
3278	488	3	not	not.ADV	\N	SOF	2	sastre1
3280	488	5	don't	do.V.3P.PRES.+NEG	\N	SOF	2	sastre1
3281	488	6	know	know.V.INFIN	\N	SOF	2	sastre1
3282	488	7	where	where.REL	\N	SOF	2	sastre1
3284	488	9	put	put.V.INFIN	\N	SOF	2	sastre1
3296	488	21	.	\N	\N	SOF	999	sastre1
3298	489	2	.	\N	\N	KEV	999	sastre1
3299	490	1	sí	yes.ADV		KEV	3	sastre1
3315	490	17	.	\N	\N	KEV	999	sastre1
3300	490	2	pero	but.CONJ	\N	KEV	3	sastre1
3335	491	20	.	\N	\N	KEV	999	sastre1
3317	491	2	es	be.V.23S.PRES	\N	KEV	3	sastre1
3337	492	2	.	\N	\N	SOF	999	sastre1
3339	493	2	son	sound.N.M.SG	\N	KEV	3	sastre1
3347	493	10	.	\N	\N	KEV	999	sastre1
3340	493	3	los	the.DET.DEF.M.PL	\N	KEV	3	sastre1
3359	494	12	.	\N	\N	KEV	999	sastre1
3350	494	3	they	they.PRON.SUB.3P	\N	KEV	2	sastre1
3402	495	43	.	\N	\N	KEV	999	sastre1
3362	495	3	del	of_the.PREP+DET.DEF.M.SG	\N	KEV	3	sastre1
3404	496	2	.	\N	\N	SOF	999	sastre1
3405	497	1	right	right.ADJ		SOF	2	sastre1
3406	497	2	.	\N	\N	SOF	999	sastre1
3407	498	1	y	and.CONJ		KEV	3	sastre1
3286	488	11	know	know.V.2SP.PRES	\N	SOF	2	sastre1
3287	488	12	they	they.PRON.SUB.3P	\N	SOF	2	sastre1
3288	488	13	don't	do.V.3P.PRES.+NEG	\N	SOF	2	sastre1
3290	488	15	where	where.REL	\N	SOF	2	sastre1
3291	488	16	to	to.PREP	\N	SOF	2	sastre1
3292	488	17	send	send.V.INFIN	\N	SOF	2	sastre1
3293	488	18	you	you.PRON.INDIR.2SP	\N	SOF	2	sastre1
3295	488	20	stuff	stuff.N.SG	\N	SOF	2	sastre1
3297	489	1	sí	yes.ADV		KEV	3	sastre1
3302	490	4	eso	that.PRON.DEM.NT.SG	\N	KEV	3	sastre1
3303	490	5	no	not.ADV	\N	KEV	3	sastre1
3304	490	6	es	be.V.23S.PRES	\N	KEV	3	sastre1
3305	490	7	una	a.DET.INDEF.F.SG	\N	KEV	3	sastre1
3306	490	8	cosa	thing.N.F.SG	\N	KEV	3	sastre1
3308	490	10	tiene	have.V.23S.PRES	\N	KEV	3	sastre1
3309	490	11	que	that.CONJ	\N	KEV	3	sastre1
3310	490	12	hacer	do.V.INFIN	\N	KEV	3	sastre1
3312	490	14	town	town.N.SG	\N	KEV	2	sastre1
3313	490	15	of	of.PREP	\N	KEV	2	sastre1
3314	490	16	Miami_Lakes	name	\N	KEV	0	sastre1
3316	491	1	eso	that.PRON.DEM.NT.SG		KEV	3	sastre1
3319	491	4	cosa	thing.N.F.SG	\N	KEV	3	sastre1
3320	491	5	que	that.PRON.REL	\N	KEV	3	sastre1
3321	491	6	la	her.PRON.OBJ.F.3S	\N	KEV	3	sastre1
3323	491	8	que	that.CONJ	\N	KEV	3	sastre1
3324	491	9	hacer	do.V.INFIN	\N	KEV	3	sastre1
3325	491	10	el	the.DET.DEF.M.SG	\N	KEV	3	sastre1
3326	491	11	gobierno	government.N.M.SG	\N	KEV	3	sastre1
3328	491	13	en	in.PREP	\N	KEV	3	sastre1
3329	491	14	la	her.PRON.OBJ.F.3S	\N	KEV	3	sastre1
3330	491	15	parte	split.V.2S.IMPER	\N	KEV	3	sastre1
3332	491	17	post	post.N.SG	\N	KEV	2	sastre1
3333	491	18	del	of_the.PREP+DET.DEF.M.SG	\N	KEV	3	sastre1
3334	491	19	correo	post.N.M.SG	\N	KEV	3	sastre1
3336	492	1	mmhm	unk		SOF	0	sastre1
3341	493	4	que	that.PRON.REL	\N	KEV	3	sastre1
3342	493	5	tienen	have.V.23P.PRES	\N	KEV	3	sastre1
3344	493	7	hacer	do.V.INFIN	\N	KEV	3	sastre1
3345	493	8	esos	that.ADJ.DEM.M.PL	\N	KEV	3	sastre1
3346	493	9	cambios	switch.N.M.PL	\N	KEV	3	sastre1
3348	494	1	y	and.CONJ		KEV	3	sastre1
3351	494	4	are	are.V.3P.PRES	\N	KEV	2	sastre1
3352	494	5	in	in.PREP	\N	KEV	2	sastre1
3353	494	6	the	the.DET.DEF	\N	KEV	2	sastre1
3355	494	8	de	of.PREP	\N	KEV	3	sastre1
3356	494	9	hacer	do.V.INFIN	\N	KEV	3	sastre1
3357	494	10	ese	that.ADJ.DEM.M.SG	\N	KEV	3	sastre1
3358	494	11	cambio	switch.N.M.SG	\N	KEV	3	sastre1
3360	495	1	de	of.PREP		KEV	3	sastre1
3363	495	4	correo	post.N.M.SG	\N	KEV	3	sastre1
3364	495	5	de	of.PREP	\N	KEV	3	sastre1
3365	495	6	que	that.CONJ	\N	KEV	3	sastre1
3367	495	8	tres	three.NUM	\N	KEV	3	sastre1
3368	495	9	cero	zero.N.M.SG	\N	KEV	3	sastre1
3369	495	10	uno	one.NUM	\N	KEV	3	sastre1
3370	495	11	cuatro	four.NUM	\N	KEV	3	sastre1
3372	495	13	a	to.PREP	\N	KEV	3	sastre1
3373	495	14	ser	be.V.INFIN	\N	KEV	3	sastre1
3374	495	15	solamente	only.ADV	\N	KEV	3	sastre1
3375	495	16	Miami_Lakes	name	\N	KEV	0	sastre1
3376	495	17	todo	all.ADJ.M.SG	\N	KEV	3	sastre1
3378	495	19	que	that.PRON.REL	\N	KEV	3	sastre1
3379	495	20	es	be.V.23S.PRES	\N	KEV	3	sastre1
3380	495	21	Miami_Lakes	name	\N	KEV	0	sastre1
3381	495	22	lo	the.DET.DEF.NT.SG	\N	KEV	3	sastre1
3383	495	24	está	be.V.23S.PRES	\N	KEV	3	sastre1
3384	495	25	dentro	inside.ADV	\N	KEV	3	sastre1
3385	495	26	de	of.PREP	\N	KEV	3	sastre1
3387	495	28	town	town.N.SG	\N	KEV	2	sastre1
3388	495	29	de	of.PREP	\N	KEV	3	sastre1
3389	495	30	Miami_Lakes	name	\N	KEV	0	sastre1
3390	495	31	que	that.CONJ	\N	KEV	3	sastre1
3391	495	32	incluye	include.V.2S.IMPER	\N	KEV	3	sastre1
3393	495	34	lado	side.N.M.SG	\N	KEV	3	sastre1
3394	495	35	de	of.PREP	\N	KEV	3	sastre1
3395	495	36	allá	there.ADV	\N	KEV	3	sastre1
3396	495	37	pal	unk	\N	KEV	3	sastre1
3398	495	39	Royal_Oaks	name	\N	KEV	0	sastre1
3399	495	40	ahora	now.ADV	\N	KEV	3	sastre1
3400	495	41	es	be.V.23S.PRES	\N	KEV	3	sastre1
3401	495	42	Miami_Lakes	name	\N	KEV	0	sastre1
3403	496	1	ok	unk		SOF	0	sastre1
3426	498	20	.	\N	\N	KEV	999	sastre1
3428	499	2	.	\N	\N	SOF	999	sastre1
3429	500	1	es	be.V.23S.PRES		KEV	3	sastre1
3433	500	5	.	\N	\N	KEV	999	sastre1
3431	500	3	zip	zip.N.SG	\N	KEV	2	sastre1
3465	501	32	.	\N	\N	KEV	999	sastre1
3435	501	2	ese	that.PRON.DEM.M.SG	\N	KEV	3	sastre1
3466	502	1	.	\N		KEV	999	sastre1
3477	503	11	.	\N	\N	KEV	999	sastre1
3468	503	2	fue	be.V.3S.PAST	\N	KEV	3	sastre1
3485	504	8	.	\N	\N	KEV	999	sastre1
3480	504	3	hacen	do.V.23P.PRES	\N	KEV	3	sastre1
3495	505	10	.	\N	\N	SOF	999	sastre1
3487	505	2	va	go.V.23S.PRES	\N	SOF	3	sastre1
3497	506	2	.	\N	\N	KEV	999	sastre1
3499	508	1	er	unk		KEV	0	sastre1
3498	507	1	.	\N		SOF	999	sastre1
3502	508	4	.	\N	\N	KEV	999	sastre1
3501	508	3	bueno	well.IM	\N	KEV	3	sastre1
3513	509	11	.	\N	\N	SOF	999	sastre1
3504	509	2	me	me.PRON.OBL.MF.1S	\N	SOF	3	sastre1
3519	510	6	.	\N	\N	SOF	999	sastre1
3515	510	2	es	be.V.23S.PRES	\N	SOF	3	sastre1
3520	511	1	.	\N		KEV	999	sastre1
3532	512	12	.	\N	\N	SOF	999	sastre1
3522	512	2	que	that.PRON.REL	\N	SOF	3	sastre1
3409	498	3	ahora	now.ADV	\N	KEV	3	sastre1
3410	498	4	no	not.ADV	\N	KEV	3	sastre1
3411	498	5	es	be.V.23S.PRES	\N	KEV	3	sastre1
3412	498	6	tres	three.NUM	\N	KEV	3	sastre1
3414	498	8	cero	zero.N.M.SG	\N	KEV	3	sastre1
3415	498	9	uno	one.NUM	\N	KEV	3	sastre1
3416	498	10	cuatro	four.NUM	\N	KEV	3	sastre1
3417	498	11	eso	that.PRON.DEM.NT.SG	\N	KEV	3	sastre1
3419	498	13	tres	three.NUM	\N	KEV	3	sastre1
3420	498	14	tres	three.NUM	\N	KEV	3	sastre1
3421	498	15	uno	one.NUM	\N	KEV	3	sastre1
3422	498	16	cero	zero.N.M.SG	\N	KEV	3	sastre1
3424	498	18	uno	one.NUM	\N	KEV	3	sastre1
3425	498	19	quince	fifteen.NUM	\N	KEV	3	sastre1
3427	499	1	correcto	right.ADJ.M.SG		SOF	3	sastre1
3432	500	4	code	code.N.SG	\N	KEV	2	sastre1
3434	501	1	entonces	then.ADV		KEV	3	sastre1
3436	501	3	zip	zip.N.SG	\N	KEV	2	sastre1
3438	501	5	lo	him.PRON.OBJ.M.3S	\N	KEV	3	sastre1
3439	501	6	van	go.V.23P.PRES	\N	KEV	3	sastre1
3440	501	7	a	to.PREP	\N	KEV	3	sastre1
3442	501	9	también	too.ADV	\N	KEV	3	sastre1
3443	501	10	a	to.PREP	\N	KEV	3	sastre1
3444	501	11	que	that.CONJ	\N	KEV	3	sastre1
3445	501	12	sea	be.V.123S.SUBJ.PRES	\N	KEV	3	sastre1
3446	501	13	tres	three.NUM	\N	KEV	3	sastre1
3448	501	15	cero	zero.N.M.SG	\N	KEV	3	sastre1
3449	501	16	uno	one.NUM	\N	KEV	3	sastre1
3450	501	17	cuatro	four.NUM	\N	KEV	3	sastre1
3451	501	18	porque	because.CONJ	\N	KEV	3	sastre1
3453	501	20	a	to.PREP	\N	KEV	3	sastre1
3454	501	21	ser	be.V.INFIN	\N	KEV	3	sastre1
3455	501	22	Miami	name	\N	KEV	0	sastre1
3456	501	23	lo	the.DET.DEF.NT.SG	\N	KEV	3	sastre1
3458	501	25	está	be.V.23S.PRES	\N	KEV	3	sastre1
3459	501	26	dentro	inside.ADV	\N	KEV	3	sastre1
3460	501	27	de	of.PREP	\N	KEV	3	sastre1
3461	501	28	la	the.DET.DEF.F.SG	\N	KEV	3	sastre1
3463	501	30	de	of.PREP	\N	KEV	3	sastre1
3464	501	31	Miami_Lakes	name	\N	KEV	0	sastre1
3467	503	1	eso	that.PRON.DEM.NT.SG		KEV	3	sastre1
3470	503	4	que	that.PRON.REL	\N	KEV	3	sastre1
3471	503	5	yo	I.PRON.SUB.MF.1S	\N	KEV	3	sastre1
3472	503	6	oí	hear.V.1S.PAST	\N	KEV	3	sastre1
3473	503	7	y	and.CONJ	\N	KEV	3	sastre1
3475	503	9	que	that.PRON.REL	\N	KEV	3	sastre1
3476	503	10	dijeron	tell.V.3P.PAST	\N	KEV	3	sastre1
3478	504	1	si	if.CONJ		KEV	3	sastre1
3481	504	4	o	or.CONJ	\N	KEV	3	sastre1
3482	504	5	no	not.ADV	\N	KEV	3	sastre1
3483	504	6	lo	him.PRON.OBJ.M.3S	\N	KEV	3	sastre1
3486	505	1	pero	but.CONJ		SOF	3	sastre1
3488	505	3	a	to.PREP	\N	SOF	3	sastre1
3489	505	4	ser	be.V.INFIN	\N	SOF	3	sastre1
3491	505	6	rollo	roll.N.M.SG	\N	SOF	3	sastre1
3492	505	7	para	stall.V.2S.IMPER	\N	SOF	3	sastre1
3493	505	8	la	the.DET.DEF.F.SG	\N	SOF	3	sastre1
3494	505	9	gente	people.N.F.SG	\N	SOF	3	sastre1
3496	506	1	sí	yes.ADV		KEV	3	sastre1
3503	509	1	hoy	today.ADV		SOF	3	sastre1
3505	509	3	llegaron	get.V.3P.PAST	\N	SOF	3	sastre1
3507	509	5	planillas	forms.N.F.PL	\N	SOF	3	sastre1
3508	509	6	para	stall.V.2S.IMPER	\N	SOF	3	sastre1
3509	509	7	el	the.DET.DEF.M.SG	\N	SOF	3	sastre1
3510	509	8	W	name	\N	SOF	0	sastre1
3512	509	10	forty	forty.NUM	\N	SOF	2	sastre1
3514	510	1	sabes	know.V.2S.PRES		SOF	3	sastre1
3517	510	4	ten	ten.NUM	\N	SOF	2	sastre1
3518	510	5	forty	forty.NUM	\N	SOF	2	sastre1
3521	512	1	la	the.DET.DEF.F.SG		SOF	3	sastre1
3524	512	4	que	that.CONJ	\N	SOF	3	sastre1
3525	512	5	hacer	do.V.INFIN	\N	SOF	3	sastre1
3526	512	6	ahora	now.ADV	\N	SOF	3	sastre1
3527	512	7	los	the.DET.DEF.M.PL	\N	SOF	3	sastre1
3529	512	9	que	that.PRON.REL	\N	SOF	3	sastre1
3530	512	10	están	be.V.23P.PRES	\N	SOF	3	sastre1
3531	512	11	retirados	remove.V.2P.IMPER	\N	SOF	3	sastre1
3535	513	3	.	\N	\N	KEV	999	sastre1
3536	514	1	para	stall.V.2S.IMPER		SOF	3	sastre1
3539	514	4	.	\N	\N	SOF	999	sastre1
3540	515	1	sí	yes.ADV		KEV	3	sastre1
3541	515	2	.	\N	\N	KEV	999	sastre1
3543	516	2	que	that.CONJ	\N	SOF	3	sastre1
3550	516	9	.	\N	\N	SOF	999	sastre1
3544	516	3	puedan	might.V.23P.SUBJ.PRES	\N	SOF	3	sastre1
3559	517	9	.	\N	\N	KEV	999	sastre1
3552	517	2	que	that.CONJ	\N	KEV	3	sastre1
3569	518	10	?	\N	\N	KEV	999	sastre1
3561	518	2	son	sound.N.M.SG	\N	KEV	3	sastre1
3572	519	3	.	\N	\N	SOF	999	sastre1
3571	519	2	forty	forty.NUM	\N	SOF	2	sastre1
3580	520	8	.	\N	\N	SOF	999	sastre1
3574	520	2	la	her.PRON.OBJ.F.3S	\N	SOF	3	sastre1
3582	521	2	.	\N	\N	KEV	999	sastre1
3583	522	1	ya	already.ADV		KEV	3	sastre1
3592	522	10	.	\N	\N	KEV	999	sastre1
3584	522	2	a	to.PREP	\N	KEV	3	sastre1
3597	523	5	?	\N	\N	SOF	999	sastre1
3594	523	2	se	be.V.2P.IMPER.PRECLITIC.PRECLITIC	\N	SOF	3	sastre1
3609	524	12	.	\N	\N	KEV	999	sastre1
3599	524	2	porque	because.CONJ	\N	KEV	3	sastre1
3613	525	4	.	\N	\N	SOF	999	sastre1
3611	525	2	tiene	have.V.23S.PRES	\N	SOF	3	sastre1
3622	526	9	.	\N	\N	SOF	999	sastre1
3615	526	2	pero	but.CONJ	\N	SOF	3	sastre1
3624	527	2	.	\N	\N	KEV	999	sastre1
3625	528	1	sí	yes.ADV		KEV	3	sastre1
3626	528	2	.	\N	\N	KEV	999	sastre1
3627	529	1	tienes	have.V.2S.PRES		SOF	3	sastre1
3628	529	2	que	that.CONJ	\N	SOF	3	sastre1
3533	513	1	ah	unk		KEV	0	sastre1
3534	513	2	sí	yes.ADV	\N	KEV	3	sastre1
3537	514	2	que	that.CONJ	\N	SOF	3	sastre1
3538	514	3	sepan	know.V.23P.SUBJ.PRES	\N	SOF	3	sastre1
3542	516	1	para	stall.V.2S.IMPER		SOF	3	sastre1
3545	516	4	entonces	then.ADV	\N	SOF	3	sastre1
3546	516	5	mandarles	order.V.INFIN	\N	SOF	3	sastre1
3547	516	6	los	the.DET.DEF.M.PL	\N	SOF	3	sastre1
3548	516	7	trescientos	three_hundred.N.M.PL	\N	SOF	3	sastre1
3549	516	8	dólares	dollar.N.M.PL	\N	SOF	3	sastre1
3551	517	1	para	stall.V.2S.IMPER		KEV	3	sastre1
3553	517	3	le	him.PRON.OBL.MF.23S	\N	KEV	3	sastre1
3554	517	4	den	give.V.23P.SUBJ.PRES	\N	KEV	3	sastre1
3555	517	5	los	the.DET.DEF.M.PL	\N	KEV	3	sastre1
3556	517	6	quinientos	five_hundred.N.M.PL	\N	KEV	3	sastre1
3557	517	7	pesos	weight.N.M.PL	\N	KEV	3	sastre1
3558	517	8	sí	yes.ADV	\N	KEV	3	sastre1
3560	518	1	sí	yes.ADV		KEV	3	sastre1
3562	518	3	las	the.DET.DEF.F.PL	\N	KEV	3	sastre1
3563	518	4	ten	ten.NUM	\N	KEV	2	sastre1
3564	518	5	forty	forty.NUM	\N	KEV	2	sastre1
3565	518	6	or	or.CONJ	\N	KEV	2	sastre1
3566	518	7	ten	ten.NUM	\N	KEV	2	sastre1
3567	518	8	ninety	ninety.NUM	\N	KEV	2	sastre1
3568	518	9	nine	nine.NUM	\N	KEV	2	sastre1
3570	519	1	ten	ten.NUM		SOF	2	sastre1
3573	520	1	yo	I.PRON.SUB.MF.1S		SOF	3	sastre1
3575	520	3	tengo	have.V.1S.PRES	\N	SOF	3	sastre1
3576	520	4	ahí	there.ADV	\N	SOF	3	sastre1
3577	520	5	en	in.PREP	\N	SOF	3	sastre1
3578	520	6	la	her.PRON.OBJ.F.3S	\N	SOF	3	sastre1
3579	520	7	casa	marry.V.2S.IMPER	\N	SOF	3	sastre1
3581	521	1	mmhm	unk		KEV	0	sastre1
3585	522	3	mi	my.ADJ.POSS.MF.1S.S.S	\N	KEV	3	sastre1
3586	522	4	hermano	sister.N.M.SG	\N	KEV	3	sastre1
3587	522	5	se	be.V.2P.IMPER.PRECLITIC.PRECLITIC	\N	KEV	3	sastre1
3588	522	6	lo	him.PRON.OBJ.M.3S	\N	KEV	3	sastre1
3589	522	7	hizo	do.V.3S.PAST	\N	KEV	3	sastre1
3590	522	8	mi	my.ADJ.POSS.MF.1S.S.S	\N	KEV	3	sastre1
3591	522	9	padre	father.N.M.SG	\N	KEV	3	sastre1
3593	523	1	ya	already.ADV		SOF	3	sastre1
3595	523	3	lo	him.PRON.OBJ.M.3S	\N	SOF	3	sastre1
3596	523	4	hicieron	do.V.3P.PAST	\N	SOF	3	sastre1
3598	524	1	sí	yes.ADV		KEV	3	sastre1
3600	524	3	ellos	they.PRON.SUB.M.3P	\N	KEV	3	sastre1
3601	524	4	normalmente	usually.ADV	\N	KEV	3	sastre1
3602	524	5	no	not.ADV	\N	KEV	3	sastre1
3604	524	7	income	income.N.SG	\N	KEV	2	sastre1
3605	524	8	taxes	tax.N.PL	\N	KEV	2	sastre1
3606	524	9	porque	because.CONJ	\N	KEV	3	sastre1
3608	524	11	retirados	remove.V.2P.IMPER	\N	KEV	3	sastre1
3610	525	1	porque	because.CONJ		SOF	3	sastre1
3612	525	3	que	that.CONJ	\N	SOF	3	sastre1
3616	526	3	arriba	arrive.V.2S.IMPER	\N	SOF	3	sastre1
3617	526	4	hay	there_is.V.23S.PRES	\N	SOF	3	sastre1
3618	526	5	que	that.CONJ	\N	SOF	3	sastre1
3620	526	7	un	one.DET.INDEF.M.SG	\N	SOF	3	sastre1
3621	526	8	nombre	name.N.M.SG	\N	SOF	3	sastre1
3623	527	1	mmhm	unk		KEV	0	sastre1
3630	529	4	algo	something.PRON.M.SG	\N	SOF	3	sastre1
3631	529	5	arriba	arrive.V.2S.IMPER	\N	SOF	3	sastre1
3632	529	6	de	of.PREP	\N	SOF	3	sastre1
3633	529	7	la	the.DET.DEF.F.SG	\N	SOF	3	sastre1
3635	529	9	para	stall.V.2S.IMPER	\N	SOF	3	sastre1
3636	529	10	que	that.CONJ	\N	SOF	3	sastre1
3637	529	11	sepan	know.V.23P.SUBJ.PRES	\N	SOF	3	sastre1
3639	529	13	es	be.V.23S.PRES	\N	SOF	3	sastre1
3640	529	14	para	stall.V.2S.IMPER	\N	SOF	3	sastre1
3641	529	15	eso	that.PRON.DEM.NT.SG	\N	SOF	3	sastre1
3642	529	16	.	\N	\N	SOF	999	sastre1
3644	530	2	.	\N	\N	KEV	999	sastre1
3645	531	1	ya	already.ADV		SOF	3	sastre1
3649	531	5	?	\N	\N	SOF	999	sastre1
3646	531	2	se	be.V.2P.IMPER.PRECLITIC.PRECLITIC	\N	SOF	3	sastre1
3662	532	13	.	\N	\N	KEV	999	sastre1
3651	532	2	ella	she.PRON.SUB.F.3S	\N	KEV	3	sastre1
3665	533	3	.	\N	\N	SOF	999	sastre1
3664	533	2	ok	unk	\N	SOF	0	sastre1
3670	534	5	.	\N	\N	KEV	999	sastre1
3667	534	2	es	be.V.23S.PRES	\N	KEV	3	sastre1
3678	535	8	.	\N	\N	KEV	999	sastre1
3672	535	2	ella	she.PRON.SUB.F.3S	\N	KEV	3	sastre1
3694	536	16	.	\N	\N	SOF	999	sastre1
3680	536	2	porque	because.CONJ	\N	SOF	3	sastre1
3708	537	14	.	\N	\N	SOF	999	sastre1
3696	537	2	nos	us.PRON.OBL.MF.1P	\N	SOF	3	sastre1
3721	538	13	.	\N	\N	SOF	999	sastre1
3710	538	2	yo	I.PRON.SUB.MF.1S	\N	SOF	3	sastre1
3732	539	11	.	\N	\N	KEV	999	sastre1
3723	539	2	acaso	perhaps.ADV	\N	KEV	3	sastre1
3737	540	5	.	\N	\N	KEV	999	sastre1
3734	540	2	cómo	how.INT	\N	KEV	3	sastre1
3739	541	2	tengo	have.V.1S.PRES	\N	SOF	3	sastre1
3643	530	1	exacto	exact.ADJ.M.SG		KEV	3	sastre1
3647	531	3	lo	him.PRON.OBJ.M.3S	\N	SOF	3	sastre1
3648	531	4	hizo	do.V.3S.PAST	\N	SOF	3	sastre1
3650	532	1	mmhm	unk		KEV	0	sastre1
3652	532	3	se	be.V.2P.IMPER.PRECLITIC.PRECLITIC	\N	KEV	3	sastre1
3653	532	4	lo	him.PRON.OBJ.M.3S	\N	KEV	3	sastre1
3654	532	5	está	be.V.23S.PRES	\N	KEV	3	sastre1
3655	532	6	haciendo	do.V.PRESPART	\N	KEV	3	sastre1
3656	532	7	ese	that.PRON.DEM.M.SG	\N	KEV	3	sastre1
3657	532	8	es	be.V.23S.PRES	\N	KEV	3	sastre1
3658	532	9	el	the.DET.DEF.M.SG	\N	KEV	3	sastre1
3659	532	10	campo	field.N.M.SG	\N	KEV	3	sastre1
3660	532	11	de	of.PREP	\N	KEV	3	sastre1
3661	532	12	ella	she.PRON.SUB.F.3S	\N	KEV	3	sastre1
3663	533	1	oh	unk		SOF	0	sastre1
3666	534	1	ella	she.PRON.SUB.F.3S		KEV	3	sastre1
3668	534	3	an	an.DET.INDEF	\N	KEV	2	sastre1
3669	534	4	accountant	accountant.N.SG	\N	KEV	2	sastre1
3671	535	1	y	and.CONJ		KEV	3	sastre1
3673	535	3	es	be.V.23S.PRES	\N	KEV	3	sastre1
3674	535	4	la	the.DET.DEF.F.SG	\N	KEV	3	sastre1
3675	535	5	que	that.PRON.REL	\N	KEV	3	sastre1
3676	535	6	le	him.PRON.OBL.MF.23S	\N	KEV	3	sastre1
3677	535	7	hace	do.V.23S.PRES	\N	KEV	3	sastre1
3679	536	1	no	not.ADV		SOF	3	sastre1
3681	536	3	yo	I.PRON.SUB.MF.1S	\N	SOF	3	sastre1
3682	536	4	te	you.PRON.OBL.MF.2S	\N	SOF	3	sastre1
3683	536	5	dije	tell.V.1S.PAST	\N	SOF	3	sastre1
3685	536	7	como	like.CONJ	\N	SOF	3	sastre1
3686	536	8	la	her.PRON.OBJ.F.3S	\N	SOF	3	sastre1
3687	536	9	prima	prevail.V.2S.IMPER	\N	SOF	3	sastre1
3688	536	10	de	of.PREP	\N	SOF	3	sastre1
3690	536	12	trabaja	work.V.2S.IMPER	\N	SOF	3	sastre1
3691	536	13	para	stall.V.2S.IMPER	\N	SOF	3	sastre1
3692	536	14	el	the.DET.DEF.M.SG	\N	SOF	3	sastre1
3695	537	1	ella	she.PRON.SUB.F.3S		SOF	3	sastre1
3697	537	3	mandó	order.V.3S.PAST	\N	SOF	3	sastre1
3699	537	5	planillas	forms.N.F.PL	\N	SOF	3	sastre1
3700	537	6	y	and.CONJ	\N	SOF	3	sastre1
3701	537	7	nos	us.PRON.OBL.MF.1P	\N	SOF	3	sastre1
3703	537	9	las	the.DET.DEF.F.PL	\N	SOF	3	sastre1
3704	537	10	copias	copy.N.F.PL	\N	SOF	3	sastre1
3705	537	11	de	of.PREP	\N	SOF	3	sastre1
3706	537	12	cómo	how.INT	\N	SOF	3	sastre1
3709	538	1	porque	because.CONJ		SOF	3	sastre1
3711	538	3	tengo	have.V.1S.PRES	\N	SOF	3	sastre1
3712	538	4	las	the.DET.DEF.F.PL	\N	SOF	3	sastre1
3713	538	5	dos	two.NUM	\N	SOF	3	sastre1
3715	538	7	mías	of_mine.ADJ.POSS.MF.1S.F.P.F.P	\N	SOF	3	sastre1
3716	538	8	que	that.CONJ	\N	SOF	3	sastre1
3717	538	9	ya	already.ADV	\N	SOF	3	sastre1
3719	538	11	no	not.ADV	\N	SOF	3	sastre1
3720	538	12	hacen	do.V.23P.PRES	\N	SOF	3	sastre1
3722	539	1	si	if.CONJ		KEV	3	sastre1
3725	539	4	cuando	when.CONJ	\N	KEV	3	sastre1
3726	539	5	tengas	have.V.2S.SUBJ.PRES	\N	KEV	3	sastre1
3727	539	6	un	one.DET.INDEF.M.SG	\N	KEV	3	sastre1
3728	539	7	chance	chance.N.SG	\N	KEV	2	sastre1
3730	539	9	una	a.DET.INDEF.F.SG	\N	KEV	3	sastre1
3731	539	10	copia	copy.V.2S.IMPER	\N	KEV	3	sastre1
3733	540	1	de	of.PREP		KEV	3	sastre1
3736	540	4	llena	fill.V.2S.IMPER	\N	KEV	3	sastre1
3738	541	1	yo	I.PRON.SUB.MF.1S		SOF	3	sastre1
3740	541	3	ahí	there.ADV	\N	SOF	3	sastre1
3742	541	5	me	me.PRON.OBL.MF.1S	\N	SOF	3	sastre1
3743	541	6	él	he.PRON.SUB.M.3S	\N	SOF	3	sastre1
3744	541	7	él	he.PRON.SUB.M.3S	\N	SOF	3	sastre1
3746	541	9	dio	give.V.3S.PAST	\N	SOF	3	sastre1
3747	541	10	una	a.DET.INDEF.F.SG	\N	SOF	3	sastre1
3748	541	11	copia	copy.V.2S.IMPER	\N	SOF	3	sastre1
3750	541	13	ahora	now.ADV	\N	SOF	3	sastre1
3751	541	14	yo	I.PRON.SUB.MF.1S	\N	SOF	3	sastre1
3752	541	15	tengo	have.V.1S.PRES	\N	SOF	3	sastre1
3754	541	17	hacérsela	do.V.INFIN.PRECLITIC.PRECLITIC	\N	SOF	3	sastre1
3755	541	18	pero	but.CONJ	\N	SOF	3	sastre1
3756	541	19	yo	I.PRON.SUB.MF.1S	\N	SOF	3	sastre1
3765	541	28	.	\N	\N	SOF	999	sastre1
3766	542	1	.	\N		KEV	999	sastre1
3769	543	3	.	\N	\N	KEV	999	sastre1
3768	543	2	exacto	exact.ADJ.M.SG	\N	KEV	3	sastre1
3771	544	2	.	\N	\N	SOF	999	sastre1
3773	545	2	te	you.PRON.OBL.MF.2S	\N	SOF	3	sastre1
3780	545	9	.	\N	\N	SOF	999	sastre1
3774	545	3	la	her.PRON.OBJ.F.3S	\N	SOF	3	sastre1
3787	546	7	.	\N	\N	KEV	999	sastre1
3783	546	3	sé	be.V.2S.IMPER	\N	KEV	3	sastre1
3800	547	13	.	\N	\N	SOF	999	sastre1
3789	547	2	yo	I.PRON.SUB.MF.1S	\N	SOF	3	sastre1
3809	548	9	.	\N	\N	KEV	999	sastre1
3802	548	2	que	that.CONJ	\N	KEV	3	sastre1
3826	549	17	.	\N	\N	SOF	999	sastre1
3811	549	2	un	one.DET.INDEF.M.SG	\N	SOF	3	sastre1
3828	550	2	.	\N	\N	KEV	999	sastre1
3829	551	1	es	be.V.23S.PRES		KEV	3	sastre1
3839	551	11	.	\N	\N	KEV	999	sastre1
3832	551	4	cuando	when.CONJ	\N	KEV	3	sastre1
3841	552	2	.	\N	\N	SOF	999	sastre1
3842	553	1	hay	there_is.V.23S.PRES		KEV	3	sastre1
3859	553	18	.	\N	\N	KEV	999	sastre1
3844	553	3	poner	put.V.INFIN	\N	KEV	3	sastre1
3861	554	2	si	if.CONJ	\N	KEV	3	sastre1
3757	541	20	te	you.PRON.OBL.MF.2S	\N	SOF	3	sastre1
3759	541	22	voy	go.V.1S.PRES	\N	SOF	3	sastre1
3760	541	23	a	to.PREP	\N	SOF	3	sastre1
3761	541	24	hacer	do.V.INFIN	\N	SOF	3	sastre1
3762	541	25	una	a.DET.INDEF.F.SG	\N	SOF	3	sastre1
3764	541	27	esa	that.PRON.DEM.F.SG	\N	SOF	3	sastre1
3767	543	1	esa	that.PRON.DEM.F.SG		KEV	3	sastre1
3770	544	1	ok	unk		SOF	0	sastre1
3775	545	4	hago	do.V.1S.PRES	\N	SOF	3	sastre1
3776	545	5	mañana	tomorrow.ADV	\N	SOF	3	sastre1
3778	545	7	el	the.DET.DEF.M.SG	\N	SOF	3	sastre1
3779	545	8	trabajo	work.N.M.SG	\N	SOF	3	sastre1
3781	546	1	porque	because.CONJ		KEV	3	sastre1
3784	546	4	que	that.CONJ	\N	KEV	3	sastre1
3785	546	5	le	him.PRON.OBL.MF.23S	\N	KEV	3	sastre1
3786	546	6	hace	do.V.23S.PRES	\N	KEV	3	sastre1
3790	547	3	sé	be.V.2S.IMPER	\N	SOF	3	sastre1
3791	547	4	que	that.CONJ	\N	SOF	3	sastre1
3792	547	5	hay	there_is.V.23S.PRES	\N	SOF	3	sastre1
3794	547	7	ponerle	put.V.INFIN	\N	SOF	3	sastre1
3795	547	8	algo	something.PRON.M.SG	\N	SOF	3	sastre1
3797	547	10	en	in.PREP	\N	SOF	3	sastre1
3798	547	11	la	the.DET.DEF.F.SG	\N	SOF	3	sastre1
3799	547	12	planilla	form.N.F.SG	\N	SOF	3	sastre1
3801	548	1	de	of.PREP		KEV	3	sastre1
3803	548	3	es	be.V.23S.PRES	\N	KEV	3	sastre1
3805	548	5	o	or.CONJ	\N	KEV	3	sastre1
3806	548	6	algo	something.PRON.M.SG	\N	KEV	3	sastre1
3807	548	7	de	of.PREP	\N	KEV	3	sastre1
3810	549	1	tiene	have.V.23S.PRES		SOF	3	sastre1
3812	549	3	nombre	name.N.M.SG	\N	SOF	3	sastre1
3813	549	4	ahora	now.ADV	\N	SOF	3	sastre1
3815	549	6	me	me.PRON.OBL.MF.1S	\N	SOF	3	sastre1
3816	549	7	olvidó	forget.V.3S.PAST	\N	SOF	3	sastre1
3817	549	8	pero	but.CONJ	\N	SOF	3	sastre1
3818	549	9	tienes	have.V.2S.PRES	\N	SOF	3	sastre1
3819	549	10	que	that.CONJ	\N	SOF	3	sastre1
3821	549	12	eso	that.PRON.DEM.NT.SG	\N	SOF	3	sastre1
3822	549	13	arriba	arrive.V.2S.IMPER	\N	SOF	3	sastre1
3823	549	14	porque	because.CONJ	\N	SOF	3	sastre1
3825	549	16	no	not.ADV	\N	SOF	3	sastre1
3827	550	1	sí	yes.ADV		KEV	3	sastre1
3831	551	3	que	than.CONJ[or]that.CONJ	\N	KEV	3	sastre1
3833	551	5	uno	one.PRON.M.SG	\N	KEV	3	sastre1
3834	551	6	manda	order.V.2S.IMPER	\N	KEV	3	sastre1
3835	551	7	los	the.DET.DEF.M.PL	\N	KEV	3	sastre1
3837	551	9	al	to_the.PREP+DET.DEF.M.SG	\N	KEV	3	sastre1
3838	551	10	I_R_S	name	\N	KEV	2	sastre1
3840	552	1	mmhm	unk		SOF	0	sastre1
3845	553	4	el	the.DET.DEF.M.SG	\N	KEV	3	sastre1
3846	553	5	ten	ten.NUM	\N	KEV	2	sastre1
3847	553	6	ninety	ninety.NUM	\N	KEV	2	sastre1
3849	553	8	con	with.PREP	\N	KEV	3	sastre1
3850	553	9	el	the.DET.DEF.M.SG	\N	KEV	3	sastre1
3851	553	10	número	numeral.N.M.SG	\N	KEV	3	sastre1
3852	553	11	de	of.PREP	\N	KEV	3	sastre1
3854	553	13	security	security.N.SG	\N	KEV	2	sastre1
3855	553	14	y	and.CONJ	\N	KEV	3	sastre1
3856	553	15	toda	all.ADJ.F.SG	\N	KEV	3	sastre1
3858	553	17	cosa	thing.N.F.SG	\N	KEV	3	sastre1
3860	554	1	que	that.CONJ		KEV	3	sastre1
3862	554	3	no	not.ADV	\N	KEV	3	sastre1
3863	554	4	no	not.ADV	\N	KEV	3	sastre1
3865	554	6	aceptan	accept.V.23P.PRES	\N	KEV	3	sastre1
3866	554	7	no	not.ADV	\N	KEV	3	sastre1
3867	554	8	no	not.ADV	\N	KEV	3	sastre1
3868	554	9	es	be.V.23S.PRES	\N	KEV	3	sastre1
3869	554	10	que	that.CONJ	\N	KEV	3	sastre1
3871	554	12	lo	him.PRON.OBJ.M.3S	\N	KEV	3	sastre1
3872	554	13	acepten	accept.V.23P.SUBJ.PRES	\N	KEV	3	sastre1
3873	554	14	si	if.CONJ	\N	KEV	3	sastre1
3875	554	16	no	not.ADV	\N	KEV	3	sastre1
3876	554	17	te	you.PRON.OBL.MF.2S	\N	KEV	3	sastre1
3877	554	18	lo	him.PRON.OBJ.M.3S	\N	KEV	3	sastre1
3879	554	20	los	them.PRON.OBJ.M.3P	\N	KEV	3	sastre1
3880	554	21	tienen	have.V.23P.PRES	\N	KEV	3	sastre1
3883	554	24	.	\N	\N	KEV	999	sastre1
3888	555	5	.	\N	\N	SOF	999	sastre1
3885	555	2	tienen	have.V.23P.PRES	\N	SOF	3	sastre1
3890	556	2	.	\N	\N	KEV	999	sastre1
3891	557	1	ya	already.ADV		KEV	3	sastre1
3904	557	14	?	\N	\N	KEV	999	sastre1
3893	557	3	que	that.CONJ	\N	KEV	3	sastre1
3912	558	8	.	\N	\N	SOF	999	sastre1
3907	558	3	no	not.ADV	\N	SOF	3	sastre1
3921	559	9	.	\N	\N	KEV	999	sastre1
3914	559	2	sé	be.V.2S.IMPER	\N	KEV	3	sastre1
3923	560	2	.	\N	\N	KEV	999	sastre1
3924	561	1	y	and.CONJ		SOF	3	sastre1
3938	561	15	.	\N	\N	SOF	999	sastre1
3925	561	2	ya	already.ADV	\N	SOF	3	sastre1
3941	562	3	.	\N	\N	KEV	999	sastre1
3940	562	2	sí	yes.ADV	\N	KEV	3	sastre1
3945	563	4	.	\N	\N	KEV	999	sastre1
3944	563	3	cocinar	cook.V.INFIN	\N	KEV	3	sastre1
3950	564	5	.	\N	\N	SOF	999	sastre1
3947	564	2	yo	I.PRON.SUB.MF.1S	\N	SOF	3	sastre1
3961	565	11	.	\N	\N	KEV	999	sastre1
3952	565	2	cocinaste	cook.V.2S.PAST	\N	KEV	3	sastre1
3963	566	2	.	\N	\N	SOF	999	sastre1
3964	567	1	where	where.REL		SOF	2	sastre1
3965	567	2	?	\N	\N	SOF	999	sastre1
3966	568	1	Bass	name		KEV	2	sastre1
3969	568	4	.	\N	\N	KEV	999	sastre1
3968	568	3	shop	shop.N.SG	\N	KEV	2	sastre1
3972	569	3	.	\N	\N	SOF	999	sastre1
3971	569	2	ok	unk	\N	SOF	0	sastre1
3978	570	6	.	\N	\N	KEV	999	sastre1
3974	570	2	en	in.PREP	\N	KEV	3	sastre1
3989	571	11	.	\N	\N	KEV	999	sastre1
3980	571	2	que	that.PRON.REL	\N	KEV	3	sastre1
3996	572	7	.	\N	\N	SOF	999	sastre1
3991	572	2	yo	I.PRON.SUB.MF.1S	\N	SOF	3	sastre1
3998	573	2	cuando	when.CONJ	\N	KEV	3	sastre1
3881	554	22	que	that.CONJ	\N	KEV	3	sastre1
3882	554	23	acreditar	accredit.V.INFIN	\N	KEV	3	sastre1
3886	555	3	que	that.CONJ	\N	SOF	3	sastre1
3887	555	4	acreditarlo	accredit.V.INFIN	\N	SOF	3	sastre1
3889	556	1	mmhm	unk		KEV	0	sastre1
3894	557	4	falta	lack.V.2S.IMPER	\N	KEV	3	sastre1
3895	557	5	poco	little.ADV	\N	KEV	3	sastre1
3896	557	6	para	stall.V.2S.IMPER	\N	KEV	3	sastre1
3898	557	8	se	be.V.2P.IMPER.PRECLITIC.PRECLITIC	\N	KEV	3	sastre1
3899	557	9	acaben	finish.V.23P.SUBJ.PRES	\N	KEV	3	sastre1
3901	557	11	treinta	thirty.NUM	\N	KEV	3	sastre1
3902	557	12	minutos	minute.N.M.PL	\N	KEV	3	sastre1
3903	557	13	no	not.ADV	\N	KEV	3	sastre1
3905	558	1	bueno	well.IM		SOF	3	sastre1
3908	558	4	sé	be.V.2S.IMPER	\N	SOF	3	sastre1
3910	558	6	hablando	talk.V.PRESPART	\N	SOF	3	sastre1
3911	558	7	tiempo	time.N.M.SG	\N	SOF	3	sastre1
3913	559	1	no	not.ADV		KEV	3	sastre1
3915	559	3	casi	nearly.ADV	\N	KEV	3	sastre1
3916	559	4	casi	nearly.ADV	\N	KEV	3	sastre1
3917	559	5	la	her.PRON.OBJ.F.3S	\N	KEV	3	sastre1
3919	559	7	hora	time.N.F.SG	\N	KEV	3	sastre1
3920	559	8	ya	already.ADV	\N	KEV	3	sastre1
3922	560	1	mmhm	unk		KEV	0	sastre1
3927	561	4	está	be.V.23S.PRES	\N	SOF	3	sastre1
3928	561	5	haciendo	do.V.PRESPART	\N	SOF	3	sastre1
3929	561	6	de	of.PREP	\N	SOF	3	sastre1
3930	561	7	noche	night.N.F.SG	\N	SOF	3	sastre1
3932	561	9	mañana	tomorrow.ADV	\N	SOF	3	sastre1
3933	561	10	hay	there_is.V.23S.PRES	\N	SOF	3	sastre1
3934	561	11	que	that.CONJ	\N	SOF	3	sastre1
3935	561	12	ir	go.V.INFIN	\N	SOF	3	sastre1
3937	561	14	trabajar	work.V.INFIN	\N	SOF	3	sastre1
3939	562	1	mmhm	unk		KEV	0	sastre1
3942	563	1	hay	there_is.V.23S.PRES		KEV	3	sastre1
3946	564	1	no	not.ADV		SOF	3	sastre1
3948	564	3	ya	already.ADV	\N	SOF	3	sastre1
3951	565	1	ya	already.ADV		KEV	3	sastre1
3953	565	3	nosotros	we.PRON.SUB.M.1P	\N	KEV	3	sastre1
3954	565	4	comimos	eat.V.1P.PAST	\N	KEV	3	sastre1
3956	565	6	fuimos	go.V.1P.PAST	\N	KEV	3	sastre1
3957	565	7	a	to.PREP	\N	KEV	3	sastre1
3958	565	8	Bass	name	\N	KEV	2	sastre1
3959	565	9	Pro	name	\N	KEV	2	sastre1
3960	565	10	shop	shop.N.SG	\N	KEV	2	sastre1
3962	566	1	sí	yes.ADV		SOF	3	sastre1
3970	569	1	ah	unk		SOF	0	sastre1
3973	570	1	allá	there.ADV		KEV	3	sastre1
3975	570	3	Grifeny	name	\N	KEV	0	sastre1
3976	570	4	ninety	ninety.NUM	\N	KEV	2	sastre1
3979	571	1	eso	that.PRON.DEM.NT.SG		KEV	3	sastre1
3981	571	3	es	be.V.23S.PRES	\N	KEV	3	sastre1
3983	571	5	de	of.PREP	\N	KEV	3	sastre1
3984	571	6	casería	hunting.N.F.SG	\N	KEV	3	sastre1
3985	571	7	y	and.CONJ	\N	KEV	3	sastre1
3986	571	8	toda	all.ADJ.F.SG	\N	KEV	3	sastre1
3987	571	9	esa	that.ADJ.DEM.F.SG	\N	KEV	3	sastre1
3990	572	1	uhhuh	unk		SOF	0	sastre1
3992	572	3	he	have.V.1S.PRES	\N	SOF	3	sastre1
3993	572	4	estado	status.N.M.SG	\N	SOF	3	sastre1
3995	572	6	sí	yes.ADV	\N	SOF	3	sastre1
3997	573	1	y	and.CONJ		KEV	3	sastre1
4000	573	4	y	and.CONJ	\N	KEV	3	sastre1
4001	573	5	fuimos	go.V.1P.PAST	\N	KEV	3	sastre1
4002	573	6	a	to.PREP	\N	KEV	3	sastre1
4003	573	7	county	county.N.SG	\N	KEV	2	sastre1
4008	573	12	.	\N	\N	KEV	999	sastre1
4010	574	2	.	\N	\N	SOF	999	sastre1
4011	575	1	porque	because.CONJ		KEV	3	sastre1
4020	575	10	.	\N	\N	KEV	999	sastre1
4012	575	2	andamos	walk.V.1P.PRES	\N	KEV	3	sastre1
4025	576	5	.	\N	\N	KEV	999	sastre1
4022	576	2	de	of.PREP	\N	KEV	3	sastre1
4039	577	14	.	\N	\N	KEV	999	sastre1
4027	577	2	nos	us.PRON.OBL.MF.1P	\N	KEV	3	sastre1
4041	578	2	.	\N	\N	SOF	999	sastre1
4042	579	1	I	I.PRON.SUB.1S		SOF	2	sastre1
4047	579	6	.	\N	\N	SOF	999	sastre1
4043	579	2	know	know.V.1S.PRES	\N	SOF	2	sastre1
4053	580	6	.	\N	\N	KEV	999	sastre1
4049	580	2	traen	bring.V.23P.PRES	\N	KEV	3	sastre1
4058	581	5	.	\N	\N	KEV	999	sastre1
4055	581	2	cocinan	cook.V.23P.PRES	\N	KEV	3	sastre1
4060	582	2	.	\N	\N	SOF	999	sastre1
4061	583	1	yeah	yeah.ADV		KEV	2	sastre1
4063	583	3	.	\N	\N	KEV	999	sastre1
4062	583	2	yeah	yeah.ADV	\N	KEV	2	sastre1
4070	584	7	.	\N	\N	SOF	999	sastre1
4065	584	2	ribs	rib.N.PL	\N	SOF	2	sastre1
4079	585	9	.	\N	\N	KEV	999	sastre1
4072	585	2	yeah	yeah.ADV	\N	KEV	2	sastre1
4081	586	2	.	\N	\N	SOF	999	sastre1
4082	587	1	it's	it.PRON.SUB.3S.+BE.V.3S.PRES		KEV	2	sastre1
4084	587	3	.	\N	\N	KEV	999	sastre1
4083	587	2	delicious	delicious.ADJ	\N	KEV	2	sastre1
4088	588	4	.	\N	\N	SOF	999	sastre1
4087	588	3	good	good.ADJ	\N	SOF	2	sastre1
4105	589	17	.	\N	\N	KEV	999	sastre1
4090	589	2	we	we.PRON.SUB.1P	\N	KEV	2	sastre1
4113	590	8	.	\N	\N	KEV	999	sastre1
4107	590	2	said	said.V.PAST	\N	KEV	2	sastre1
4121	591	8	.	\N	\N	KEV	999	sastre1
4115	591	2	we	we.PRON.SUB.1P	\N	KEV	2	sastre1
4124	592	3	.	\N	\N	SOF	999	sastre1
4123	592	2	funny	funny.ADJ	\N	SOF	2	sastre1
4126	593	2	said	said.V.PAST	\N	KEV	2	sastre1
4004	573	8	a	to.PREP	\N	KEV	3	sastre1
4005	573	9	ver	see.V.INFIN	\N	KEV	3	sastre1
4006	573	10	los	the.DET.DEF.M.PL	\N	KEV	3	sastre1
4009	574	1	mmhm	unk		SOF	0	sastre1
4013	575	3	para	stall.V.2S.IMPER	\N	KEV	3	sastre1
4015	575	5	futuro	future.N.M.SG	\N	KEV	3	sastre1
4016	575	6	buscando	seek.V.PRESPART	\N	KEV	3	sastre1
4017	575	7	uno	one.PRON.M.SG	\N	KEV	3	sastre1
4018	575	8	más	more.ADV	\N	KEV	3	sastre1
4021	576	1	y	and.CONJ		KEV	3	sastre1
4023	576	3	ahí	there.ADV	\N	KEV	3	sastre1
4026	577	1	y	and.CONJ		KEV	3	sastre1
4028	577	3	metimos	put.V.1P.PAST	\N	KEV	3	sastre1
4029	577	4	un	one.DET.INDEF.M.SG	\N	KEV	3	sastre1
4030	577	5	barbecue	barbecue.N.SG	\N	KEV	2	sastre1
4031	577	6	place	place.N.SG	\N	KEV	2	sastre1
4033	577	8	hay	there_is.V.23S.PRES	\N	KEV	3	sastre1
4034	577	9	er	unk	\N	KEV	0	sastre1
4035	577	10	university	university.N.SG	\N	KEV	2	sastre1
4036	577	11	and	and.CONJ	\N	KEV	2	sastre1
4038	577	13	boulevard	boulevard.N.SG	\N	KEV	2	sastre1
4040	578	1	ok	unk		SOF	0	sastre1
4044	579	3	where	where.REL	\N	SOF	2	sastre1
4046	579	5	is	is.V.3S.PRES	\N	SOF	2	sastre1
4048	580	1	allá	there.ADV		KEV	3	sastre1
4050	580	3	una	a.DET.INDEF.F.SG	\N	KEV	3	sastre1
4052	580	5	chiquitica	girly.ADJ.F.SG.DIM.DIM	\N	KEV	3	sastre1
4054	581	1	pero	but.CONJ		KEV	3	sastre1
4056	581	3	tan	so.ADV	\N	KEV	3	sastre1
4059	582	1	yeah	yeah.ADV		SOF	2	sastre1
4064	584	1	what	what.REL		SOF	2	sastre1
4066	584	3	and	and.CONJ	\N	SOF	2	sastre1
4068	584	5	and	and.CONJ	\N	SOF	2	sastre1
4069	584	6	all	all.ADJ	\N	SOF	2	sastre1
4071	585	1	yeah	yeah.ADV		KEV	2	sastre1
4073	585	3	the	the.DET.DEF	\N	KEV	2	sastre1
4075	585	5	barbecue	barbecue.N.SG	\N	KEV	2	sastre1
4076	585	6	smoked	smoke.V.PASTPART	\N	KEV	2	sastre1
4077	585	7	barbecue	barbecue.N.SG	\N	KEV	2	sastre1
4080	586	1	yeah	yeah.ADV		SOF	2	sastre1
4085	588	1	oh	unk		SOF	0	sastre1
4089	589	1	y	and.CONJ		KEV	3	sastre1
4091	589	3	were	were.V.1P.PAST	\N	KEV	2	sastre1
4092	589	4	there	there.ADV	\N	KEV	2	sastre1
4094	589	6	Pepita	name	\N	KEV	0	sastre1
4095	589	7	asked	ask.V.PAST	\N	KEV	2	sastre1
4096	589	8	er	unk	\N	KEV	0	sastre1
4097	589	9	we	we.PRON.SUB.1P	\N	KEV	2	sastre1
4098	589	10	asked	ask.V.PAST	\N	KEV	2	sastre1
4100	589	12	what	what.REL	\N	KEV	2	sastre1
4101	589	13	she	she.PRON.SUB.F.3S	\N	KEV	2	sastre1
4102	589	14	wanted	want.V.PAST	\N	KEV	2	sastre1
4103	589	15	for	for.PREP	\N	KEV	2	sastre1
4106	590	1	she	she.PRON.SUB.F.3S		KEV	2	sastre1
4108	590	3	well	well.ADV	\N	KEV	2	sastre1
4109	590	4	bring	bring.V.IMPER	\N	KEV	2	sastre1
4111	590	6	some	some.ADJ	\N	KEV	2	sastre1
4112	590	7	ribs	rib.N.PL	\N	KEV	2	sastre1
4114	591	1	so	so.ADV		KEV	2	sastre1
4117	591	4	her	her.PRON.INDIR.F.3S	\N	KEV	2	sastre1
4118	591	5	some	some.ADJ	\N	KEV	2	sastre1
4119	591	6	ribs	rib.N.PL	\N	KEV	2	sastre1
4120	591	7	so	so.ADV	\N	KEV	2	sastre1
4125	593	1	she	she.PRON.SUB.F.3S		KEV	2	sastre1
4132	593	8	.	\N	\N	KEV	999	sastre1
4139	594	7	.	\N	\N	KEV	999	sastre1
4134	594	2	got	got.AV.PAST+P	\N	KEV	2	sastre1
4151	595	12	.	\N	\N	KEV	999	sastre1
4141	595	2	I	I.PRON.SUB.1S	\N	KEV	2	sastre1
4162	596	11	.	\N	\N	KEV	999	sastre1
4154	596	3	no	no.ADV	\N	KEV	2	sastre1
4167	597	5	.	\N	\N	KEV	999	sastre1
4164	597	2	she	she.PRON.SUB.F.3S	\N	KEV	2	sastre1
4175	598	8	.	\N	\N	KEV	999	sastre1
4169	598	2	hoy	today.ADV	\N	KEV	3	sastre1
4177	599	2	.	\N	\N	KEV	999	sastre1
4178	600	1	I	I.PRON.SUB.1S		SOF	2	sastre1
4194	600	17	.	\N	\N	SOF	999	sastre1
4179	600	2	I	I.PRON.SUB.1S	\N	SOF	2	sastre1
4200	601	6	.	\N	\N	KEV	999	sastre1
4196	601	2	is	is.V.3S.PRES	\N	KEV	2	sastre1
4206	602	6	.	\N	\N	SOF	999	sastre1
4202	602	2	Maria	name	\N	SOF	0	sastre1
4209	603	3	.	\N	\N	KEV	999	sastre1
4208	603	2	yeah	yeah.ADV	\N	KEV	2	sastre1
4210	604	1	.	\N		SOF	999	sastre1
4218	605	8	.	\N	\N	SOF	999	sastre1
4212	605	2	she	she.PRON.SUB.F.3S	\N	SOF	2	sastre1
4220	606	2	.	\N	\N	KEV	999	sastre1
4221	607	1	the	the.DET.DEF		SOF	2	sastre1
4227	607	7	.	\N	\N	SOF	999	sastre1
4223	607	3	are	are.V.123P.PRES	\N	SOF	2	sastre1
4229	608	2	.	\N	\N	KEV	999	sastre1
4230	609	1	the	the.DET.DEF		SOF	2	sastre1
4232	609	3	.	\N	\N	SOF	999	sastre1
4233	610	1	yeah	yeah.ADV		KEV	2	sastre1
4234	610	2	.	\N	\N	KEV	999	sastre1
4235	611	1	Pepita	name		SOF	0	sastre1
4238	611	4	?	\N	\N	SOF	999	sastre1
4236	611	2	no	not.ADV	\N	SOF	3	sastre1
4244	612	6	.	\N	\N	KEV	999	sastre1
4240	612	2	ahora	now.ADV	\N	KEV	3	sastre1
4246	613	2	ahora	now.ADV	\N	SOF	3	sastre1
4128	593	4	have	have.V.INFIN	\N	KEV	2	sastre1
4129	593	5	them	them.PRON.SUB.3P	\N	KEV	2	sastre1
4130	593	6	for	for.PREP	\N	KEV	2	sastre1
4133	594	1	so	so.ADV		KEV	2	sastre1
4135	594	3	here	here.ADV	\N	KEV	2	sastre1
4136	594	4	she	she.PRON.SUB.F.3S	\N	KEV	2	sastre1
4137	594	5	ate	ate.V.PAST	\N	KEV	2	sastre1
4140	595	1	and	and.CONJ		KEV	2	sastre1
4142	595	3	said	said.V.PAST	\N	KEV	2	sastre1
4143	595	4	I	I.PRON.SUB.1S	\N	KEV	2	sastre1
4145	595	6	you	you.PRON.SUB.2SP	\N	KEV	2	sastre1
4146	595	7	were	were.V.2S123P.PAST	\N	KEV	2	sastre1
4147	595	8	gonna	go.V.PRESPART.+TO.PREP	\N	KEV	2	sastre1
4149	595	10	for	for.PREP	\N	KEV	2	sastre1
4150	595	11	dinner	dinner.N.SG	\N	KEV	2	sastre1
4152	596	1	me	me.PRON.OBL.MF.1S		KEV	3	sastre1
4155	596	4	no	no.ADV	\N	KEV	2	sastre1
4156	596	5	I'm	I.PRON.SUB.1S.+BE.V.PRES	\N	KEV	2	sastre1
4157	596	6	hungry	hungry.ADJ	\N	KEV	2	sastre1
4159	596	8	gonna	go.V.PRESPART.+TO.PREP	\N	KEV	2	sastre1
4160	596	9	eat	eat.V.INFIN	\N	KEV	2	sastre1
4161	596	10	now	now.ADV	\N	KEV	2	sastre1
4163	597	1	so	so.ADV		KEV	2	sastre1
4166	597	4	so	so.ADV	\N	KEV	2	sastre1
4168	598	1	ya	already.ADV		KEV	3	sastre1
4170	598	3	Pepa	name	\N	KEV	0	sastre1
4171	598	4	no	not.ADV	\N	KEV	3	sastre1
4173	598	6	que	that.CONJ	\N	KEV	3	sastre1
4174	598	7	cocinar	cook.V.INFIN	\N	KEV	3	sastre1
4176	599	1	mmhm	unk		KEV	0	sastre1
4180	600	3	went	went.V.PAST	\N	SOF	2	sastre1
4182	600	5	morning	morning.N.SG	\N	SOF	2	sastre1
4183	600	6	I	I.PRON.SUB.1S	\N	SOF	2	sastre1
4184	600	7	Jennie	name	\N	SOF	0	sastre1
4185	600	8	breakfast	breakfast.N.SG	\N	SOF	2	sastre1
4187	600	10	then	then.ADV	\N	SOF	2	sastre1
4188	600	11	we	we.PRON.SUB.1P	\N	SOF	2	sastre1
4189	600	12	haven't	have.V.1P.PRES.+NEG	\N	SOF	2	sastre1
4191	600	14	anything	anything.PRON	\N	SOF	2	sastre1
4192	600	15	all	all.ADJ	\N	SOF	2	sastre1
4193	600	16	day	day.N.SG	\N	SOF	2	sastre1
4195	601	1	Jennie	name		KEV	0	sastre1
4198	601	4	little	little.ADJ	\N	KEV	2	sastre1
4199	601	5	one	one.PRON.SG	\N	KEV	2	sastre1
4201	602	1	yeah	yeah.ADV		SOF	2	sastre1
4203	602	3	is	is.V.3S.PRES	\N	SOF	2	sastre1
4205	602	5	tonight	tonight.N.SG	\N	SOF	2	sastre1
4207	603	1	mmhm	unk		KEV	0	sastre1
4211	605	1	and	and.CONJ		SOF	2	sastre1
4213	605	3	is	is.V.3S.PRES	\N	SOF	2	sastre1
4215	605	5	already	already.ADV	\N	SOF	2	sastre1
4216	605	6	for	for.PREP	\N	SOF	2	sastre1
4217	605	7	er	unk	\N	SOF	0	sastre1
4219	606	1	mmhm	unk		KEV	0	sastre1
4224	607	4	off	off.ADV	\N	SOF	2	sastre1
4225	607	5	for	for.PREP	\N	SOF	2	sastre1
4226	607	6	easter	east.N.SG.+COMP.AG	\N	SOF	2	sastre1
4228	608	1	sí	yes.ADV		KEV	3	sastre1
4237	611	3	estaba	be.V.13S.IMPERF	\N	SOF	3	sastre1
4239	612	1	todavía	yet.ADV		KEV	3	sastre1
4242	612	4	estos	this.ADJ.DEM.M.PL	\N	KEV	3	sastre1
4243	612	5	días	day.N.M.PL	\N	KEV	3	sastre1
4245	613	1	ella	she.PRON.SUB.F.3S		SOF	3	sastre1
4248	613	4	Jennie	name	\N	SOF	0	sastre1
4249	613	5	Jennie	name	\N	SOF	0	sastre1
4250	613	6	allá	there.ADV	\N	SOF	3	sastre1
4251	613	7	.	\N	\N	SOF	999	sastre1
4257	614	6	.	\N	\N	KEV	999	sastre1
4254	614	3	el	the.DET.DEF.M.SG	\N	KEV	3	sastre1
4259	615	2	.	\N	\N	SOF	999	sastre1
4260	616	1	sí	yes.ADV		KEV	3	sastre1
4272	616	13	.	\N	\N	KEV	999	sastre1
4261	616	2	yo	I.PRON.SUB.MF.1S	\N	KEV	3	sastre1
4282	617	10	.	\N	\N	SOF	999	sastre1
4275	617	3	found	found.V.1S.PRES	\N	SOF	2	sastre1
4287	618	5	.	\N	\N	KEV	999	sastre1
4285	618	3	to	to.PREP	\N	KEV	2	sastre1
4290	619	3	.	\N	\N	KEV	999	sastre1
4289	619	2	sabes	know.V.2S.PRES	\N	KEV	3	sastre1
4302	620	12	.	\N	\N	KEV	999	sastre1
4292	620	2	not	not.ADV	\N	KEV	2	sastre1
4315	621	13	.	\N	\N	SOF	999	sastre1
4305	621	3	same	same.ADJ	\N	SOF	2	sastre1
4318	622	3	.	\N	\N	KEV	999	sastre1
4317	622	2	yeah	yeah.ADV	\N	KEV	2	sastre1
4320	623	2	.	\N	\N	SOF	999	sastre1
4321	624	1	yeah	yeah.ADV		KEV	2	sastre1
4322	624	2	.	\N	\N	KEV	999	sastre1
4324	626	1	and	and.CONJ		KEV	2	sastre1
4323	625	1	.	\N		SOF	999	sastre1
4334	626	11	.	\N	\N	KEV	999	sastre1
4325	626	2	we	we.PRON.SUB.1P	\N	KEV	2	sastre1
4336	627	2	.	\N	\N	SOF	999	sastre1
4338	628	2	come	come.V.INFIN	\N	KEV	2	sastre1
4343	628	7	.	\N	\N	KEV	999	sastre1
4339	628	3	from	from.PREP	\N	KEV	2	sastre1
4355	629	12	.	\N	\N	SOF	999	sastre1
4345	629	2	know	know.V.2SP.PRES	\N	SOF	2	sastre1
4357	630	2	.	\N	\N	KEV	999	sastre1
4358	631	1	although	although.CONJ		KEV	2	sastre1
4373	631	16	.	\N	\N	KEV	999	sastre1
4359	631	2	before	before.CONJ	\N	KEV	2	sastre1
4252	614	1	ya	already.ADV		KEV	3	sastre1
4255	614	4	spring	spring.N.SG	\N	KEV	2	sastre1
4256	614	5	break	break.N.SG	\N	KEV	2	sastre1
4258	615	1	yeah	yeah.ADV		SOF	2	sastre1
4263	616	4	sé	be.V.2S.IMPER	\N	KEV	3	sastre1
4264	616	5	qué	what.INT	\N	KEV	3	sastre1
4265	616	6	día	day.N.M.SG	\N	KEV	3	sastre1
4267	616	8	Pepita	name	\N	KEV	0	sastre1
4268	616	9	pero	but.CONJ	\N	KEV	3	sastre1
4269	616	10	F_I_U	name	\N	KEV	2	sastre1
4270	616	11	está	be.V.23S.PRES	\N	KEV	3	sastre1
4271	616	12	er	unk	\N	KEV	0	sastre1
4273	617	1	look	look.V.INFIN		SOF	2	sastre1
4277	617	5	Saint	name	\N	SOF	2	sastre1
4276	617	4	that	that.DEM.FAR[or]that.CONJ	\N	SOF	2	sastre1
4279	617	7	started	start.V.PAST	\N	SOF	2	sastre1
4280	617	8	too	too.ADV	\N	SOF	2	sastre1
4281	617	9	early	early.ADJ	\N	SOF	2	sastre1
4283	618	1	they	they.PRON.SUB.3P		KEV	2	sastre1
4286	618	4	stag	stag.N.SG	\N	KEV	2	sastre1
4288	619	1	tú	you.PRON.SUB.MF.2S		KEV	3	sastre1
4293	620	3	all	all.ADJ	\N	KEV	2	sastre1
4294	620	4	the	the.DET.DEF	\N	KEV	2	sastre1
4295	620	5	kids	kid.N.PL	\N	KEV	2	sastre1
4297	620	7	out	out.ADV	\N	KEV	2	sastre1
4298	620	8	at	at.PREP	\N	KEV	2	sastre1
4299	620	9	the	the.DET.DEF	\N	KEV	2	sastre1
4300	620	10	same	same.ADJ	\N	KEV	2	sastre1
4301	620	11	time	time.N.SG	\N	KEV	2	sastre1
4303	621	1	at	at.PREP		SOF	2	sastre1
4306	621	4	time	time.N.SG	\N	SOF	2	sastre1
4307	621	5	yeah	yeah.ADV	\N	SOF	2	sastre1
4308	621	6	because	because.CONJ	\N	SOF	2	sastre1
4310	621	8	would	be.V.3S.COND	\N	SOF	2	sastre1
4311	621	9	be	be.SV.INFIN	\N	SOF	2	sastre1
4312	621	10	atrocious	atrocious.ADJ	\N	SOF	2	sastre1
4313	621	11	for	for.PREP	\N	SOF	2	sastre1
4316	622	1	mmhm	unk		KEV	0	sastre1
4319	623	1	beach	beach.N.SG		SOF	2	sastre1
4326	626	3	get	get.V.1P.PRES	\N	KEV	2	sastre1
4328	626	5	lot	lot.N.SG	\N	KEV	2	sastre1
4329	626	6	of	of.PREP	\N	KEV	2	sastre1
4330	626	7	kids	kid.N.PL	\N	KEV	2	sastre1
4331	626	8	from	from.PREP	\N	KEV	2	sastre1
4333	626	10	outside	outside.PREP	\N	KEV	2	sastre1
4335	627	1	yeah	yeah.ADV		SOF	2	sastre1
4340	628	4	northern	northern.ADJ	\N	KEV	2	sastre1
4341	628	5	states	state.N.PL	\N	KEV	2	sastre1
4342	628	6	er	unk	\N	KEV	0	sastre1
4344	629	1	you	you.PRON.SUB.2SP		SOF	2	sastre1
4347	629	4	is	is.V.3S.PRES	\N	SOF	2	sastre1
4348	629	5	gonna	go.V.PRESPART.+TO.PREP	\N	SOF	2	sastre1
4349	629	6	get	get.V.INFIN	\N	SOF	2	sastre1
4351	629	8	all	all.ADJ	\N	SOF	2	sastre1
4352	629	9	these	these.DEM.NEAR.PL	\N	SOF	2	sastre1
4353	629	10	days	day.N.PL	\N	SOF	2	sastre1
4354	629	11	now	now.ADV	\N	SOF	2	sastre1
4360	631	3	it	it.PRON.SUB.3S	\N	KEV	2	sastre1
4361	631	4	used	use.V.PAST	\N	KEV	2	sastre1
4362	631	5	to	to.PREP	\N	KEV	2	sastre1
4364	631	7	Fort_Lauderdale	name	\N	KEV	0	sastre1
4365	631	8	Miami	name	\N	KEV	0	sastre1
4366	631	9	where	where.REL	\N	KEV	2	sastre1
4367	631	10	all	all.ADJ	\N	KEV	2	sastre1
4369	631	12	kids	kid.N.PL	\N	KEV	2	sastre1
4370	631	13	came	came.V.PAST	\N	KEV	2	sastre1
4371	631	14	down	down.PREP	\N	KEV	2	sastre1
4372	631	15	to	to.PREP	\N	KEV	2	sastre1
4374	632	1	now	now.ADV		KEV	2	sastre1
4382	632	9	.	\N	\N	KEV	999	sastre1
4384	633	2	.	\N	\N	SOF	999	sastre1
4385	634	1	they	they.PRON.SUB.3P		KEV	2	sastre1
4393	634	9	.	\N	\N	KEV	999	sastre1
4386	634	2	go	go.V.3P.PRES	\N	KEV	2	sastre1
4398	635	5	.	\N	\N	KEV	999	sastre1
4395	635	2	sabes	know.V.2S.PRES	\N	KEV	3	sastre1
4400	636	2	.	\N	\N	KEV	999	sastre1
4401	637	1	the	the.DET.DEF		SOF	2	sastre1
4413	637	13	.	\N	\N	SOF	999	sastre1
4402	637	2	Keys	name	\N	SOF	0	sastre1
4417	638	4	.	\N	\N	KEV	999	sastre1
4415	638	2	the	the.DET.DEF	\N	KEV	2	sastre1
4425	639	8	.	\N	\N	KEV	999	sastre1
4419	639	2	que	that.PRON.REL	\N	KEV	3	sastre1
4430	640	5	.	\N	\N	SOF	999	sastre1
4427	640	2	expensive	expensive.ADJ	\N	SOF	2	sastre1
4439	641	9	.	\N	\N	KEV	999	sastre1
4432	641	2	er	unk	\N	KEV	0	sastre1
4453	642	14	.	\N	\N	SOF	999	sastre1
4441	642	2	let	let.V.INFIN	\N	SOF	2	sastre1
4455	643	2	.	\N	\N	KEV	999	sastre1
4457	644	2	the	the.DET.DEF	\N	SOF	2	sastre1
4468	644	13	.	\N	\N	SOF	999	sastre1
4458	644	3	kids	kid.N.PL	\N	SOF	2	sastre1
4470	645	2	.	\N	\N	KEV	999	sastre1
4471	646	1	ya	already.ADV		KEV	3	sastre1
4473	646	3	.	\N	\N	KEV	999	sastre1
4472	646	2	pero	but.CONJ	\N	KEV	3	sastre1
4475	647	2	of	of.PREP	\N	SOF	2	sastre1
4375	632	2	they	they.PRON.SUB.3P	\N	KEV	2	sastre1
4376	632	3	are	are.V.3P.PRES	\N	KEV	2	sastre1
4377	632	4	spread	spread.SV.INFIN	\N	KEV	2	sastre1
4378	632	5	all	all.ADJ	\N	KEV	2	sastre1
4380	632	7	the	the.DET.DEF	\N	KEV	2	sastre1
4379	632	6	over	over.PREP[or]over.ADV	\N	KEV	2	sastre1
4381	632	8	place	place.N.SG	\N	KEV	2	sastre1
4383	633	1	yeah	yeah.ADV		SOF	2	sastre1
4387	634	3	to	to.PREP	\N	KEV	2	sastre1
4388	634	4	Jacksonville	name	\N	KEV	0	sastre1
4389	634	5	they	they.PRON.SUB.3P	\N	KEV	2	sastre1
4390	634	6	go	go.V.3P.PRES	\N	KEV	2	sastre1
4391	634	7	to	to.PREP	\N	KEV	2	sastre1
4392	634	8	Panama_City	name	\N	KEV	0	sastre1
4394	635	1	tú	you.PRON.SUB.MF.2S		KEV	3	sastre1
4396	635	3	different	different.ADJ	\N	KEV	2	sastre1
4397	635	4	places	place.N.PL	\N	KEV	2	sastre1
4399	636	1	mmhm	unk		KEV	0	sastre1
4403	637	3	a	a.DET.INDEF	\N	SOF	2	sastre1
4404	637	4	lot	lot.N.SG	\N	SOF	2	sastre1
4405	637	5	of	of.PREP	\N	SOF	2	sastre1
4406	637	6	them	them.PRON.OBJ.3P	\N	SOF	2	sastre1
4407	637	7	like	like.SV.INFIN	\N	SOF	2	sastre1
4408	637	8	to	to.PREP	\N	SOF	2	sastre1
4409	637	9	go	go.V.INFIN	\N	SOF	2	sastre1
4410	637	10	down	down.PREP	\N	SOF	2	sastre1
4411	637	11	there	there.ADV	\N	SOF	2	sastre1
4412	637	12	too	too.ADV	\N	SOF	2	sastre1
4414	638	1	the	the.DET.DEF		KEV	2	sastre1
4416	638	3	Keys	name	\N	KEV	0	sastre1
4418	639	1	lo	the.DET.DEF.NT.SG		KEV	3	sastre1
4420	639	3	pasa	pass.V.2S.IMPER	\N	KEV	3	sastre1
4421	639	4	que	that.CONJ	\N	KEV	3	sastre1
4422	639	5	the	the.DET.DEF	\N	KEV	2	sastre1
4423	639	6	Keys	name	\N	KEV	0	sastre1
4424	639	7	er	unk	\N	KEV	0	sastre1
4426	640	1	very	very.ADV		SOF	2	sastre1
4428	640	3	for	for.PREP	\N	SOF	2	sastre1
4429	640	4	them	them.PRON.OBJ.3P	\N	SOF	2	sastre1
4431	641	1	for	for.PREP		KEV	2	sastre1
4433	641	3	er	unk	\N	KEV	0	sastre1
4434	641	4	er	unk	\N	KEV	0	sastre1
4435	641	5	college	college.N.SG	\N	KEV	2	sastre1
4436	641	6	kids	kid.N.PL	\N	KEV	2	sastre1
4437	641	7	es	be.V.23S.PRES	\N	KEV	3	sastre1
4438	641	8	imposible	impossible.ADJ.M.SG	\N	KEV	3	sastre1
4440	642	1	pero	but.CONJ		SOF	3	sastre1
4442	642	3	me	me.PRON.OBJ.1S	\N	SOF	2	sastre1
4444	642	5	you	you.PRON.SUB.2SP	\N	SOF	2	sastre1
4445	642	6	Miami_Beach	name	\N	SOF	0	sastre1
4446	642	7	is	is.V.3S.PRES	\N	SOF	2	sastre1
4447	642	8	getting	get.V.PRESPART	\N	SOF	2	sastre1
4449	642	10	be	be.V.INFIN	\N	SOF	2	sastre1
4450	642	11	the	the.DET.DEF	\N	SOF	2	sastre1
4451	642	12	same	same.ADJ	\N	SOF	2	sastre1
4452	642	13	way	way.N.SG	\N	SOF	2	sastre1
4454	643	1	yeah	yeah.ADV		KEV	2	sastre1
4459	644	4	used	use.V.PAST	\N	SOF	2	sastre1
4460	644	5	to	to.PREP	\N	SOF	2	sastre1
4461	644	6	come	come.V.INFIN	\N	SOF	2	sastre1
4463	644	8	Miami_Beach	name	\N	SOF	0	sastre1
4464	644	9	and	and.CONJ	\N	SOF	2	sastre1
4465	644	10	hang	hang.V.INFIN	\N	SOF	2	sastre1
4466	644	11	out	out.ADV	\N	SOF	2	sastre1
4467	644	12	but	but.CONJ	\N	SOF	2	sastre1
4474	647	1	first	first.ADJ		SOF	2	sastre1
4476	647	3	all	all.ADJ	\N	SOF	2	sastre1
4477	647	4	they	they.PRON.SUB.3P	\N	SOF	2	sastre1
4479	647	6	not	not.ADV	\N	SOF	2	sastre1
4480	647	7	renting	rent.V.PRESPART	\N	SOF	2	sastre1
4481	647	8	it	it.PRON.OBJ.3S	\N	SOF	2	sastre1
4482	647	9	to	to.PREP	\N	SOF	2	sastre1
4484	647	11	kids	kid.N.PL	\N	SOF	2	sastre1
4485	647	12	any_more	any_more.ADV	\N	SOF	2	sastre1
4486	647	13	you	you.PRON.SUB.2SP	\N	SOF	2	sastre1
4497	647	24	.	\N	\N	SOF	999	sastre1
4499	648	2	.	\N	\N	KEV	999	sastre1
4500	649	1	and	and.CONJ		SOF	2	sastre1
4531	649	32	.	\N	\N	SOF	999	sastre1
4501	649	2	we	we.PRON.SUB.1P	\N	SOF	2	sastre1
4534	650	3	.	\N	\N	KEV	999	sastre1
4533	650	2	yeah	yeah.ADV	\N	KEV	2	sastre1
4536	651	2	.	\N	\N	KEV	999	sastre1
4537	652	1	yeah	yeah.ADV		SOF	2	sastre1
4538	652	2	.	\N	\N	SOF	999	sastre1
4539	653	1	pero	but.CONJ		KEV	3	sastre1
4551	653	13	.	\N	\N	KEV	999	sastre1
4541	653	3	else	else.ADJ	\N	KEV	2	sastre1
4553	654	2	.	\N	\N	SOF	999	sastre1
4554	655	1	like	like.CONJ		KEV	2	sastre1
4559	655	6	.	\N	\N	KEV	999	sastre1
4555	655	2	restaurants	restaurant.N.PL	\N	KEV	2	sastre1
4562	656	3	.	\N	\N	SOF	999	sastre1
4561	656	2	yeah	yeah.ADV	\N	SOF	2	sastre1
4586	657	24	.	\N	\N	KEV	999	sastre1
4564	657	2	in	in.PREP	\N	KEV	2	sastre1
4589	658	3	.	\N	\N	SOF	999	sastre1
4588	658	2	yeah	yeah.ADV	\N	SOF	2	sastre1
4601	659	12	.	\N	\N	KEV	999	sastre1
4591	659	2	if	if.CONJ	\N	KEV	2	sastre1
4604	660	3	algunos	some.PRON.M.PL	\N	KEV	3	sastre1
4488	647	15	to	to.PREP	\N	SOF	2	sastre1
4489	647	16	have	have.V.INFIN	\N	SOF	2	sastre1
4490	647	17	an	an.DET.INDEF	\N	SOF	2	sastre1
4491	647	18	adult	adult.ADJ	\N	SOF	2	sastre1
4493	647	20	would	be.V.123SP.COND	\N	SOF	2	sastre1
4494	647	21	rent	rent.V.INFIN	\N	SOF	2	sastre1
4495	647	22	the	the.DET.DEF	\N	SOF	2	sastre1
4498	648	1	right	right.ADJ		KEV	2	sastre1
4502	649	3	are	are.V.1P.PRES	\N	SOF	2	sastre1
4503	649	4	talking	talk.V.PRESPART	\N	SOF	2	sastre1
4505	649	6	almost	almost.ADV	\N	SOF	2	sastre1
4506	649	7	two	two.NUM	\N	SOF	2	sastre1
4507	649	8	hundred	hundred.NUM	\N	SOF	2	sastre1
4508	649	9	dollars	dollar.N.PL	\N	SOF	2	sastre1
4509	649	10	a	a.DET.INDEF	\N	SOF	2	sastre1
4511	649	12	minimum	minimum.N.SG	\N	SOF	2	sastre1
4512	649	13	to	to.PREP	\N	SOF	2	sastre1
4513	649	14	find	find.V.INFIN	\N	SOF	2	sastre1
4515	649	16	which	which.REL	\N	SOF	2	sastre1
4516	649	17	before	before.CONJ	\N	SOF	2	sastre1
4517	649	18	for	for.PREP	\N	SOF	2	sastre1
4518	649	19	fifty	fifty.NUM	\N	SOF	2	sastre1
4520	649	21	dollars	dollar.N.PL	\N	SOF	2	sastre1
4521	649	22	you	you.PRON.SUB.2SP	\N	SOF	2	sastre1
4522	649	23	can	can.V.2SP.PRES	\N	SOF	2	sastre1
4523	649	24	rent	rent.V.INFIN	\N	SOF	2	sastre1
4525	649	26	at	at.PREP	\N	SOF	2	sastre1
4526	649	27	the	the.DET.DEF	\N	SOF	2	sastre1
4527	649	28	beach	beach.N.SG	\N	SOF	2	sastre1
4528	649	29	spend	spend.V.INFIN	\N	SOF	2	sastre1
4530	649	31	weekend	weekend.N.SG	\N	SOF	2	sastre1
4532	650	1	er	unk		KEV	0	sastre1
4535	651	1	yeah	yeah.ADV		KEV	2	sastre1
4542	653	4	it's	it.PRON.SUB.3S.+BE.V.3S.PRES	\N	KEV	2	sastre1
4543	653	5	cheaper	cheap.ADJ.COMP	\N	KEV	2	sastre1
4544	653	6	at	at.PREP	\N	KEV	2	sastre1
4546	653	8	beach	beach.N.SG	\N	KEV	2	sastre1
4547	653	9	than	than.CONJ	\N	KEV	2	sastre1
4548	653	10	in	in.PREP	\N	KEV	2	sastre1
4549	653	11	the	the.DET.DEF	\N	KEV	2	sastre1
4552	654	1	yeah	yeah.ADV		SOF	2	sastre1
4557	655	4	you	you.PRON.SUB.2SP	\N	KEV	2	sastre1
4558	655	5	know	know.V.2SP.PRES	\N	KEV	2	sastre1
4560	656	1	oh	unk		SOF	0	sastre1
4563	657	1	ah	unk		KEV	0	sastre1
4565	657	3	Miami_Beach	name	\N	KEV	0	sastre1
4566	657	4	er	unk	\N	KEV	0	sastre1
4567	657	5	they	they.PRON.SUB.3P	\N	KEV	2	sastre1
4569	657	7	to	to.PREP	\N	KEV	2	sastre1
4570	657	8	Burger_King	name	\N	KEV	0	sastre1
4571	657	9	they	they.PRON.SUB.3P	\N	KEV	2	sastre1
4572	657	10	go	go.V.3P.PRES	\N	KEV	2	sastre1
4574	657	12	McDonalds	name	\N	KEV	0	sastre1
4575	657	13	in	in.PREP	\N	KEV	2	sastre1
4576	657	14	the	the.DET.DEF	\N	KEV	2	sastre1
4577	657	15	Keys	name	\N	KEV	0	sastre1
4579	657	17	don't	do.V.2SP.PRES.+NEG	\N	KEV	2	sastre1
4580	657	18	find	find.V.INFIN	\N	KEV	2	sastre1
4581	657	19	that	that.DEM.FAR	\N	KEV	2	sastre1
4582	657	20	much	much.ADJ	\N	KEV	2	sastre1
4584	657	22	too	too.ADV	\N	KEV	2	sastre1
4585	657	23	often	often.ADV	\N	KEV	2	sastre1
4587	658	1	oh	unk		SOF	0	sastre1
4590	659	1	so	so.ADV		KEV	2	sastre1
4593	659	4	have	have.V.3P.PRES	\N	KEV	2	sastre1
4594	659	5	to	to.PREP	\N	KEV	2	sastre1
4595	659	6	go	go.V.INFIN	\N	KEV	2	sastre1
4596	659	7	to	to.PREP	\N	KEV	2	sastre1
4598	659	9	restaurants	restaurant.N.PL	\N	KEV	2	sastre1
4599	659	10	es	be.V.23S.PRES	\N	KEV	3	sastre1
4600	659	11	caro	expensive.ADJ.M.SG	\N	KEV	3	sastre1
4602	660	1	tú	you.PRON.SUB.MF.2S		KEV	3	sastre1
4605	660	4	de	of.PREP	\N	KEV	3	sastre1
4606	660	5	los	the.DET.DEF.M.PL	\N	KEV	3	sastre1
4608	660	7	esos	that.PRON.DEM.M.PL	\N	KEV	3	sastre1
4609	660	8	um	unk	\N	KEV	0	sastre1
4610	660	9	er	unk	\N	KEV	0	sastre1
4639	660	38	.	\N	\N	KEV	999	sastre1
4641	661	2	.	\N	\N	SOF	999	sastre1
4642	662	1	mmhm	unk		KEV	0	sastre1
4643	662	2	.	\N	\N	KEV	999	sastre1
4645	664	1	estoy	be.V.1S.PRES		KEV	3	sastre1
4644	663	1	.	\N	background	SOF	999	sastre1
4649	664	5	.	\N	\N	KEV	999	sastre1
4647	664	3	el	the.DET.DEF.M.SG	\N	KEV	3	sastre1
4650	665	1	.	\N		SOF	999	sastre1
4657	666	7	.	\N	\N	KEV	999	sastre1
4652	666	2	creo	believe.V.1S.PRES	\N	KEV	3	sastre1
4668	667	11	.	\N	\N	KEV	999	sastre1
4660	667	3	el	the.DET.DEF.M.SG	\N	KEV	3	sastre1
4677	668	9	.	\N	\N	SOF	999	sastre1
4670	668	2	a	to.PREP	\N	SOF	3	sastre1
4679	669	2	.	\N	\N	KEV	999	sastre1
4680	670	1	hey	hey.IM		SOF	2	sastre1
4684	670	5	.	\N	\N	SOF	999	sastre1
4681	670	2	here	here.ADV	\N	SOF	2	sastre1
4695	671	11	.	\N	\N	KEV	999	sastre1
4687	671	3	otros	other.ADJ.M.PL	\N	KEV	3	sastre1
4704	672	9	.	\N	\N	KEV	999	sastre1
4697	672	2	de	of.PREP	\N	KEV	3	sastre1
4713	673	9	.	\N	\N	KEV	999	sastre1
4706	673	2	fui	be.V.1S.PAST	\N	KEV	3	sastre1
4721	674	8	.	\N	\N	KEV	999	sastre1
4715	674	2	yo	I.PRON.SUB.MF.1S	\N	KEV	3	sastre1
4723	675	2	en	in.PREP	\N	KEV	3	sastre1
4611	660	10	in	in.PREP	\N	KEV	2	sastre1
4612	660	11	the	the.DET.DEF	\N	KEV	2	sastre1
4613	660	12	Keys	name	\N	KEV	0	sastre1
4614	660	13	er	unk	\N	KEV	0	sastre1
4615	660	14	no	not.ADV	\N	KEV	3	sastre1
4616	660	15	son	be.V.23P.PRES	\N	KEV	3	sastre1
4618	660	17	del	of_the.PREP+DET.DEF.M.SG	\N	KEV	3	sastre1
4619	660	18	otro	other.ADJ.M.SG	\N	KEV	3	sastre1
4621	660	20	pero	but.CONJ	\N	KEV	3	sastre1
4622	660	21	te	you.PRON.OBL.MF.2S	\N	KEV	3	sastre1
4623	660	22	cobran	earn.V.23P.PRES	\N	KEV	3	sastre1
4624	660	23	más	more.ADV	\N	KEV	3	sastre1
4626	660	25	un	one.DET.INDEF.M.SG	\N	KEV	3	sastre1
4627	660	26	Burger_King	name	\N	KEV	0	sastre1
4628	660	27	o	or.CONJ	\N	KEV	3	sastre1
4629	660	28	un	one.DET.INDEF.M.SG	\N	KEV	3	sastre1
4631	660	30	so	so.ADV	\N	KEV	2	sastre1
4632	660	31	for	for.PREP	\N	KEV	2	sastre1
4633	660	32	kids	kid.N.PL	\N	KEV	2	sastre1
4634	660	33	is	is.V.3S.PRES	\N	KEV	2	sastre1
4635	660	34	not	not.ADV	\N	KEV	2	sastre1
4637	660	36	bien	well.ADV	\N	KEV	3	sastre1
4638	660	37	práctico	practical.ADJ.M.SG	\N	KEV	3	sastre1
4640	661	1	yeah	yeah.ADV		SOF	2	sastre1
4648	664	4	reloj	watch.N.M.SG	\N	KEV	3	sastre1
4651	666	1	yo	I.PRON.SUB.MF.1S		KEV	3	sastre1
4653	666	3	que	that.CONJ	\N	KEV	3	sastre1
4655	666	5	hablado	talk.V.PASTPART	\N	KEV	3	sastre1
4656	666	6	bastante	enough.ADJ.MF.SG	\N	KEV	3	sastre1
4658	667	1	está	be.V.23S.PRES		KEV	3	sastre1
4661	667	4	aparatico	apparatus.N.M.SG	\N	KEV	3	sastre1
4662	667	5	ese	that.PRON.DEM.M.SG	\N	KEV	3	sastre1
4664	667	7	tiene	have.V.23S.PRES	\N	KEV	3	sastre1
4665	667	8	la	the.DET.DEF.F.SG	\N	KEV	3	sastre1
4667	667	10	esa	that.PRON.DEM.F.SG	\N	KEV	3	sastre1
4669	668	1	grabando	record.V.PRESPART		SOF	3	sastre1
4671	668	3	la	the.DET.DEF.F.SG	\N	SOF	3	sastre1
4672	668	4	gente	people.N.F.SG	\N	SOF	3	sastre1
4674	668	6	te	you.PRON.OBL.MF.2S	\N	SOF	3	sastre1
4675	668	7	hacen	do.V.23P.PRES	\N	SOF	3	sastre1
4676	668	8	algo	something.PRON.M.SG	\N	SOF	3	sastre1
4682	670	3	you	you.PRON.SUB.2SP	\N	SOF	2	sastre1
4683	670	4	go	go.V.2SP.PRES	\N	SOF	2	sastre1
4685	671	1	er	unk		KEV	0	sastre1
4688	671	4	días	day.N.M.PL	\N	KEV	3	sastre1
4689	671	5	sacó	remove.V.3S.PAST	\N	KEV	3	sastre1
4691	671	7	unas	one.DET.INDEF.F.PL	\N	KEV	3	sastre1
4692	671	8	tarjeticas	cards.N.F.SG.DIM.DIM	\N	KEV	3	sastre1
4693	671	9	en	in.PREP	\N	KEV	3	sastre1
4694	671	10	venta	sale.N.F.SG	\N	KEV	3	sastre1
4698	672	3	esas	that.PRON.DEM.F.PL	\N	KEV	3	sastre1
4699	672	4	de	of.PREP	\N	KEV	3	sastre1
4700	672	5	one	one.PRON.SG	\N	KEV	2	sastre1
4702	672	7	two	two.NUM	\N	KEV	2	sastre1
4703	672	8	gigs	gig.N.PL	\N	KEV	2	sastre1
4705	673	1	yo	I.PRON.SUB.MF.1S		KEV	3	sastre1
4707	673	3	y	and.CONJ	\N	KEV	3	sastre1
4709	673	5	una	a.DET.INDEF.F.SG	\N	KEV	3	sastre1
4710	673	6	para	stall.V.2S.IMPER	\N	KEV	3	sastre1
4712	673	8	cámara	camera.N.M	\N	KEV	3	sastre1
4714	674	1	pero	but.CONJ		KEV	3	sastre1
4716	674	3	uso	use.N.M.SG	\N	KEV	3	sastre1
4717	674	4	la	the.DET.DEF.F.SG	\N	KEV	3	sastre1
4719	674	6	la	the.DET.DEF.F.SG	\N	KEV	3	sastre1
4720	674	7	S_T	name	\N	KEV	0	sastre1
4722	675	1	Pepita	name		KEV	0	sastre1
4724	675	3	la	the.DET.DEF.F.SG	\N	KEV	3	sastre1
4726	675	5	de	of.PREP	\N	KEV	3	sastre1
4727	675	6	ella	she.PRON.SUB.F.3S	\N	KEV	3	sastre1
4728	675	7	usa	use.V.2S.IMPER	\N	KEV	3	sastre1
4730	675	9	que	that.PRON.REL	\N	KEV	3	sastre1
4731	675	10	se	be.V.2P.IMPER.PRECLITIC.PRECLITIC	\N	KEV	3	sastre1
4732	675	11	llama	call.V.2S.IMPER	\N	KEV	3	sastre1
4738	675	17	.	\N	\N	KEV	999	sastre1
4740	676	2	.	\N	\N	SOF	999	sastre1
4741	677	1	que	that.CONJ		KEV	3	sastre1
4757	677	17	.	\N	\N	KEV	999	sastre1
4742	677	2	esa	that.PRON.DEM.F.SG	\N	KEV	3	sastre1
4769	678	12	.	\N	\N	KEV	999	sastre1
4759	678	2	ese	that.ADJ.DEM.M.SG	\N	KEV	3	sastre1
4786	679	17	.	\N	\N	KEV	999	sastre1
4772	679	3	que	that.CONJ	\N	KEV	3	sastre1
4789	680	3	.	\N	\N	KEV	999	sastre1
4788	680	2	bueno	well.IM	\N	KEV	3	sastre1
4800	681	11	.	\N	\N	KEV	999	sastre1
4791	681	2	cuando	when.CONJ	\N	KEV	3	sastre1
4805	682	5	.	\N	\N	KEV	999	sastre1
4802	682	2	tenían	have.V.3P.IMPERF	\N	KEV	3	sastre1
4819	683	14	.	\N	\N	SOF	999	sastre1
4807	683	2	mira	watch.V.2S.IMPER	\N	SOF	3	sastre1
4829	684	10	.	\N	\N	SOF	999	sastre1
4821	684	2	you	you.PRON.SUB.2SP	\N	SOF	2	sastre1
4834	685	5	.	\N	\N	KEV	999	sastre1
4831	685	2	record	record.V.INFIN	\N	KEV	2	sastre1
4838	686	4	.	\N	\N	SOF	999	sastre1
4837	686	3	not	not.ADV	\N	SOF	2	sastre1
4844	687	6	.	\N	\N	SOF	999	sastre1
4840	687	2	the	the.DET.DEF	\N	SOF	2	sastre1
4846	688	2	.	\N	\N	KEV	999	sastre1
4848	690	1	bueno	well.IM		KEV	3	sastre1
4847	689	1	.	\N		SOF	999	sastre1
4849	690	2	.	\N	\N	KEV	999	sastre1
4850	691	1	they	they.PRON.SUB.3P		SOF	2	sastre1
4851	691	2	are	are.V.3P.PRES	\N	SOF	2	sastre1
4734	675	13	o	or.CONJ	\N	KEV	3	sastre1
4735	675	14	una	a.DET.INDEF.F.SG	\N	KEV	3	sastre1
4737	675	16	así	thus.ADV	\N	KEV	3	sastre1
4739	676	1	mmhm	unk		SOF	0	sastre1
4743	677	3	nunca	never.ADV	\N	KEV	3	sastre1
4745	677	5	habían	have.V.3P.IMPERF	\N	KEV	3	sastre1
4746	677	6	puesto	stand.N.M.SG	\N	KEV	3	sastre1
4747	677	7	en	in.PREP	\N	KEV	3	sastre1
4748	677	8	venta	sale.N.F.SG	\N	KEV	3	sastre1
4750	677	10	por	for.PREP	\N	KEV	3	sastre1
4751	677	11	fin	end.N.M.SG	\N	KEV	3	sastre1
4752	677	12	Office_Depot	name	\N	KEV	0	sastre1
4753	677	13	las	them.PRON.OBJ.F.3P	\N	KEV	3	sastre1
4755	677	15	en	in.PREP	\N	KEV	3	sastre1
4756	677	16	venta	sale.N.F.SG	\N	KEV	3	sastre1
4758	678	1	y	and.CONJ		KEV	3	sastre1
4760	678	3	día	day.N.M.SG	\N	KEV	3	sastre1
4762	678	5	una	a.DET.INDEF.F.SG	\N	KEV	3	sastre1
4763	678	6	cosita	thing.N.F.SG.DIM.DIM	\N	KEV	3	sastre1
4764	678	7	de	of.PREP	\N	KEV	3	sastre1
4766	678	9	en	in.PREP	\N	KEV	3	sastre1
4767	678	10	venta	sale.N.F.SG	\N	KEV	3	sastre1
4768	678	11	también	too.ADV	\N	KEV	3	sastre1
4770	679	1	un	one.DET.INDEF.M.SG		KEV	3	sastre1
4773	679	4	es	be.V.23S.PRES	\N	KEV	3	sastre1
4774	679	5	un	one.DET.INDEF.M.SG	\N	KEV	3	sastre1
4775	679	6	M_P_three	name	\N	KEV	2	sastre1
4777	679	8	con	with.PREP	\N	KEV	3	sastre1
4778	679	9	un	one.DET.INDEF.M.SG	\N	KEV	3	sastre1
4779	679	10	recording	record.V.PRESPART	\N	KEV	2	sastre1
4780	679	11	un	one.DET.INDEF.M.SG	\N	KEV	3	sastre1
4782	679	13	F_M	name	\N	KEV	3	sastre1
4784	679	15	una	a.DET.INDEF.F.SG	\N	KEV	3	sastre1
4785	679	16	piececita	small piece.N.F.SG.DIM.DIM	\N	KEV	3	sastre1
4787	680	1	estaba	be.V.13S.IMPERF		KEV	3	sastre1
4790	681	1	pero	but.CONJ		KEV	3	sastre1
4792	681	3	llegué	get.V.1S.PAST	\N	KEV	3	sastre1
4794	681	5	más	more.ADV	\N	KEV	3	sastre1
4795	681	6	que	that.CONJ	\N	KEV	3	sastre1
4796	681	7	tenían	have.V.3P.IMPERF	\N	KEV	3	sastre1
4797	681	8	el	the.DET.DEF.M.SG	\N	KEV	3	sastre1
4799	681	10	muestra	show.V.2S.IMPER	\N	KEV	3	sastre1
4801	682	1	no	not.ADV		KEV	3	sastre1
4804	682	4	allí	there.ADV	\N	KEV	3	sastre1
4806	683	1	pero	but.CONJ		SOF	3	sastre1
4808	683	3	before	before.CONJ	\N	SOF	2	sastre1
4809	683	4	you	you.PRON.SUB.2SP	\N	SOF	2	sastre1
4811	683	6	to	to.PREP	\N	SOF	2	sastre1
4812	683	7	go	go.V.INFIN	\N	SOF	2	sastre1
4813	683	8	to	to.PREP	\N	SOF	2	sastre1
4814	683	9	the	the.DET.DEF	\N	SOF	2	sastre1
4816	683	11	in	in.PREP	\N	SOF	2	sastre1
4817	683	12	the	the.DET.DEF	\N	SOF	2	sastre1
4818	683	13	university	university.N.SG	\N	SOF	2	sastre1
4820	684	1	and	and.CONJ		SOF	2	sastre1
4823	684	4	to	to.PREP	\N	SOF	2	sastre1
4824	684	5	be	be.V.INFIN	\N	SOF	2	sastre1
4825	684	6	able	able.ADJ	\N	SOF	2	sastre1
4826	684	7	to	to.PREP	\N	SOF	2	sastre1
4828	684	9	classes	class.N.PL	\N	SOF	2	sastre1
4830	685	1	to	to.PREP		KEV	2	sastre1
4832	685	3	not	not.ADV	\N	KEV	2	sastre1
4833	685	4	any_more	any_more.ADV	\N	KEV	2	sastre1
4835	686	1	I	I.PRON.SUB.1S		SOF	2	sastre1
4839	687	1	maybe	maybe.ADV		SOF	2	sastre1
4841	687	3	teachers	teacher.N.PL	\N	SOF	2	sastre1
4842	687	4	are	are.V.123P.PRES	\N	SOF	2	sastre1
4845	688	1	yeah	yeah.ADV		KEV	2	sastre1
4852	691	3	teaching	unk	\N	SOF	2	sastre1
4853	691	4	so	so.ADV	\N	SOF	2	sastre1
4855	691	6	that	that.CONJ	\N	SOF	2	sastre1
4856	691	7	they	they.PRON.SUB.3P	\N	SOF	2	sastre1
4875	691	26	.	\N	\N	SOF	999	sastre1
4878	692	3	.	\N	\N	KEV	999	sastre1
4877	692	2	er	unk	\N	KEV	0	sastre1
4883	693	5	.	\N	\N	SOF	999	sastre1
4880	693	2	know	know.V.2SP.PRES	\N	SOF	2	sastre1
4896	694	13	.	\N	\N	KEV	999	sastre1
4885	694	2	sabes	know.V.2S.PRES	\N	KEV	3	sastre1
4898	695	2	.	\N	\N	SOF	999	sastre1
4900	696	2	al	to_the.PREP+DET.DEF.M.SG	\N	KEV	3	sastre1
4921	696	23	.	\N	\N	KEV	999	sastre1
4902	696	4	grabado	record.V.M.SG.PASTPART	\N	KEV	3	sastre1
4923	697	2	.	\N	\N	KEV	999	sastre1
4924	698	1	pero	but.CONJ		SOF	3	sastre1
4929	698	6	.	\N	\N	SOF	999	sastre1
4925	698	2	this	this.DEM.NEAR.SG	\N	SOF	2	sastre1
4935	699	6	.	\N	\N	KEV	999	sastre1
4931	699	2	todo	all.ADJ.M.SG	\N	KEV	3	sastre1
4936	700	1	.	\N		SOF	999	sastre1
4942	701	6	.	\N	\N	KEV	999	sastre1
4938	701	2	es	be.V.23S.PRES	\N	KEV	3	sastre1
4959	702	17	.	\N	\N	SOF	999	sastre1
4943	702	1	like	like.CONJ[or]like.V.INFIN		SOF	2	sastre1
4962	703	3	.	\N	\N	KEV	999	sastre1
4961	703	2	mmhm	unk	\N	KEV	0	sastre1
4978	704	16	.	\N	\N	SOF	999	sastre1
4964	704	2	lady	lady.N.SG	\N	SOF	2	sastre1
4858	691	9	afraid	afraid.ADJ	\N	SOF	2	sastre1
4859	691	10	that	that.CONJ	\N	SOF	2	sastre1
4860	691	11	they	they.PRON.SUB.3P	\N	SOF	2	sastre1
4861	691	12	might	might.V.3P.PRES	\N	SOF	2	sastre1
4863	691	14	recorded	record.V.PASTPART	\N	SOF	2	sastre1
4864	691	15	or	or.CONJ	\N	SOF	2	sastre1
4865	691	16	might	might.V.INFIN	\N	SOF	2	sastre1
4867	691	18	something	something.PRON	\N	SOF	2	sastre1
4868	691	19	that	that.CONJ	\N	SOF	2	sastre1
4869	691	20	they	they.PRON.SUB.3P	\N	SOF	2	sastre1
4871	691	22	say	say.SV.INFIN	\N	SOF	2	sastre1
4872	691	23	and	and.CONJ	\N	SOF	2	sastre1
4873	691	24	they	they.PRON.SUB.3P	\N	SOF	2	sastre1
4874	691	25	could	can.V.COND	\N	SOF	2	sastre1
4879	693	1	you	you.PRON.SUB.2SP		SOF	2	sastre1
4881	693	3	banish	banish.SV.INFIN	\N	SOF	2	sastre1
4884	694	1	tú	you.PRON.SUB.MF.2S		KEV	3	sastre1
4886	694	3	opens	open.V.INFIN.+PV	\N	KEV	2	sastre1
4887	694	4	the	the.DET.DEF	\N	KEV	2	sastre1
4889	694	6	for	for.PREP	\N	KEV	2	sastre1
4890	694	7	a	a.DET.INDEF	\N	KEV	2	sastre1
4891	694	8	lawsuit	lawsuit.N.SG	\N	KEV	2	sastre1
4892	694	9	si	if.CONJ	\N	KEV	3	sastre1
4894	694	11	cualquier	whatever.ADJ.MF.SG	\N	KEV	3	sastre1
4895	694	12	cosa	thing.N.F.SG	\N	KEV	3	sastre1
4897	695	1	yeah	yeah.ADV		SOF	2	sastre1
4903	696	5	un	one.DET.INDEF.M.SG	\N	KEV	3	sastre1
4904	696	6	maestro	master.N.M.SG	\N	KEV	3	sastre1
4905	696	7	que	that.PRON.REL	\N	KEV	3	sastre1
4906	696	8	diga	tell.V.123S.SUBJ.PRES	\N	KEV	3	sastre1
4908	696	10	disparate	shoot.V.2S.IMPER	\N	KEV	3	sastre1
4909	696	11	en	in.PREP	\N	KEV	3	sastre1
4910	696	12	la	the.DET.DEF.F.SG	\N	KEV	3	sastre1
4911	696	13	clase	class.N.F.SG	\N	KEV	3	sastre1
4913	696	15	querer	want.V.INFIN	\N	KEV	3	sastre1
4914	696	16	o	or.CONJ	\N	KEV	3	sastre1
4915	696	17	queriendo	want.V.PRESPART	\N	KEV	3	sastre1
4917	696	19	sabes	know.V.2S.PRES	\N	KEV	3	sastre1
4918	696	20	lo	him.PRON.OBJ.M.3S	\N	KEV	3	sastre1
4919	696	21	tienen	have.V.23P.PRES	\N	KEV	3	sastre1
4922	697	1	mmhm	unk		KEV	0	sastre1
4926	698	3	country	country.N.SG	\N	SOF	2	sastre1
4927	698	4	has	has.V.3S.PRES	\N	SOF	2	sastre1
4930	699	1	es	be.V.23S.PRES		KEV	3	sastre1
4932	699	3	lawsuit	lawsuit.N.SG	\N	KEV	2	sastre1
4933	699	4	todo	all.ADJ.M.SG	\N	KEV	3	sastre1
4934	699	5	lawsuit	lawsuit.N.SG	\N	KEV	2	sastre1
4939	701	3	un	one.DET.INDEF.M.SG	\N	KEV	3	sastre1
4940	701	4	problema	trouble.N.M.SG	\N	KEV	3	sastre1
4944	702	2	the	the.DET.DEF	\N	SOF	2	sastre1
4945	702	3	lady	lady.N.SG	\N	SOF	2	sastre1
4946	702	4	that	that.CONJ	\N	SOF	2	sastre1
4948	702	6	a	to.PREP	\N	SOF	3	sastre1
4949	702	7	Myriam	name	\N	SOF	0	sastre1
4950	702	8	because	because.CONJ	\N	SOF	2	sastre1
4951	702	9	ella	she.PRON.SUB.F.3S	\N	SOF	3	sastre1
4953	702	11	la	the.DET.DEF.F.SG	\N	SOF	3	sastre1
4954	702	12	que	that.PRON.REL	\N	SOF	3	sastre1
4955	702	13	la	her.PRON.OBJ.F.3S	\N	SOF	3	sastre1
4957	702	15	you	you.PRON.SUB.2SP	\N	SOF	2	sastre1
4958	702	16	know	know.V.2SP.PRES	\N	SOF	2	sastre1
4960	703	1	mmhm	unk		KEV	0	sastre1
4963	704	1	the	the.DET.DEF		SOF	2	sastre1
4966	704	4	already	already.ADV	\N	SOF	2	sastre1
4967	704	5	her	her.ADJ.POSS.F.3S	\N	SOF	2	sastre1
4969	704	7	hurts	hurt.V.PRES.3S	\N	SOF	2	sastre1
4970	704	8	this	this.DEM.NEAR.SG	\N	SOF	2	sastre1
4971	704	9	and	and.CONJ	\N	SOF	2	sastre1
4972	704	10	that	that.DEM.FAR	\N	SOF	2	sastre1
4974	704	12	hurts	hurt.V.3S.PRES	\N	SOF	2	sastre1
4975	704	13	and	and.CONJ	\N	SOF	2	sastre1
4976	704	14	I'm	I.PRON.SUB.1S.+BE.V.PRES	\N	SOF	2	sastre1
4977	704	15	like	like.CONJ	\N	SOF	2	sastre1
4979	705	1	oh	unk		KEV	0	sastre1
4983	705	5	.	\N	\N	KEV	999	sastre1
4993	706	10	.	\N	\N	SOF	999	sastre1
4985	706	2	one	one.PRON.SG	\N	SOF	2	sastre1
5003	707	10	.	\N	\N	KEV	999	sastre1
4995	707	2	que	that.CONJ	\N	KEV	3	sastre1
5015	708	12	.	\N	\N	SOF	999	sastre1
5005	708	2	que	that.CONJ	\N	SOF	3	sastre1
5017	709	2	.	\N	\N	KEV	999	sastre1
5018	710	1	el	the.DET.DEF.M.SG		SOF	3	sastre1
5043	710	26	.	\N	\N	SOF	999	sastre1
5020	710	3	de	of.PREP	\N	SOF	3	sastre1
5046	711	3	.	\N	\N	KEV	999	sastre1
5047	712	1	she's	she.PRON.SUB.F.3S.+HAVE.V.3S.PRES		SOF	2	sastre1
5060	712	14	.	\N	\N	SOF	999	sastre1
5048	712	2	just	just.ADV	\N	SOF	2	sastre1
5063	713	3	.	\N	\N	KEV	999	sastre1
5062	713	2	duro	tough.ADJ.M.SG	\N	KEV	3	sastre1
5069	714	6	?	\N	\N	SOF	999	sastre1
5065	714	2	those	those.DEM.FAR.PL	\N	SOF	2	sastre1
5071	715	2	.	\N	\N	KEV	999	sastre1
5072	716	1	and	and.CONJ		SOF	2	sastre1
5085	716	14	.	\N	\N	SOF	999	sastre1
5073	716	2	the	the.DET.DEF	\N	SOF	2	sastre1
5088	717	3	.	\N	\N	KEV	999	sastre1
5089	718	1	pero	but.CONJ		KEV	3	sastre1
5093	718	5	.	\N	\N	KEV	999	sastre1
5090	718	2	tipo	type.N.M.SG	\N	KEV	3	sastre1
5100	719	7	.	\N	\N	SOF	999	sastre1
5095	719	2	no	not.ADV	\N	SOF	3	sastre1
5103	720	3	.	\N	\N	KEV	999	sastre1
5104	721	1	mmhm	unk		KEV	0	sastre1
4981	705	3	sure	sure.ADJ	\N	KEV	2	sastre1
4982	705	4	mmhm	unk	\N	KEV	0	sastre1
4986	706	3	who	who.REL	\N	SOF	2	sastre1
4987	706	4	should	should.SV.INFIN	\N	SOF	2	sastre1
4988	706	5	be	be.SV.INFIN	\N	SOF	2	sastre1
4990	706	7	is	is.V.3S.PRES	\N	SOF	2	sastre1
4991	706	8	my	my.ADJ.POSS.1S	\N	SOF	2	sastre1
4992	706	9	kid	kid.N.SG	\N	SOF	2	sastre1
4994	707	1	mmhm	unk		KEV	0	sastre1
4997	707	4	la	the.DET.DEF.F.SG	\N	KEV	3	sastre1
4998	707	5	que	that.PRON.REL	\N	KEV	3	sastre1
4999	707	6	le	him.PRON.OBL.MF.23S	\N	KEV	3	sastre1
5001	707	8	de	of.PREP	\N	KEV	3	sastre1
5002	707	9	lado	side.N.M.SG	\N	KEV	3	sastre1
5004	708	1	no	not.ADV		SOF	3	sastre1
5006	708	3	le	him.PRON.OBL.MF.23S	\N	SOF	3	sastre1
5008	708	5	por	for.PREP	\N	SOF	3	sastre1
5009	708	6	la	the.DET.DEF.F.SG	\N	SOF	3	sastre1
5010	708	7	puerta	door.N.F.SG	\N	SOF	3	sastre1
5012	708	9	desbarató	damage.V.3S.PAST	\N	SOF	3	sastre1
5013	708	10	la	the.DET.DEF.F.SG	\N	SOF	3	sastre1
5014	708	11	puerta	door.N.F.SG	\N	SOF	3	sastre1
5016	709	1	mmhm	unk		KEV	0	sastre1
5021	710	4	de	of.PREP	\N	SOF	3	sastre1
5022	710	5	la	the.DET.DEF.F.SG	\N	SOF	3	sastre1
5023	710	6	goma	rubber.N.F.SG	\N	SOF	3	sastre1
5025	710	8	alante	forward.ADV	\N	SOF	3	sastre1
5026	710	9	se	be.V.2P.IMPER.PRECLITIC.PRECLITIC	\N	SOF	3	sastre1
5028	710	11	partió	split.V.3S.PAST	\N	SOF	3	sastre1
5029	710	12	con	with.PREP	\N	SOF	3	sastre1
5030	710	13	eso	that.PRON.DEM.NT.SG	\N	SOF	3	sastre1
5031	710	14	yo	I.PRON.SUB.MF.1S	\N	SOF	3	sastre1
5033	710	16	digo	tell.V.1S.PRES	\N	SOF	3	sastre1
5034	710	17	el	the.DET.DEF.M.SG	\N	SOF	3	sastre1
5035	710	18	golpe	stroke.N.M.SG	\N	SOF	3	sastre1
5037	710	20	grande	large.ADJ.M.SG	\N	SOF	3	sastre1
5038	710	21	que	that.CONJ	\N	SOF	3	sastre1
5039	710	22	le	him.PRON.OBL.MF.23S	\N	SOF	3	sastre1
5041	710	24	esa	that.ADJ.DEM.F.SG	\N	SOF	3	sastre1
5042	710	25	mujer	woman.N.F.SG	\N	SOF	3	sastre1
5044	711	1	increíble	incredible.ADJ.M.SG		KEV	3	sastre1
5049	712	3	got	got.V.PASTPART	\N	SOF	2	sastre1
5050	712	4	one	one.PRON.SG	\N	SOF	2	sastre1
5052	712	6	these	these.DEM.NEAR.PL	\N	SOF	2	sastre1
5053	712	7	nineteen	nineteen.NUM	\N	SOF	2	sastre1
5054	712	8	ninety	ninety.NUM	\N	SOF	2	sastre1
5055	712	9	five	five.NUM	\N	SOF	2	sastre1
5058	712	12	are	are.V.123P.PRES	\N	SOF	2	sastre1
5057	712	11	that	that.DEM.FAR[or]that.CONJ	\N	SOF	2	sastre1
5061	713	1	mmhm	unk		KEV	0	sastre1
5064	714	1	remember	remember.V.INFIN		SOF	2	sastre1
5066	714	3	Toyotas	name	\N	SOF	0	sastre1
5068	714	5	heavy	heavy.ADJ	\N	SOF	2	sastre1
5070	715	1	mmhm	unk		KEV	0	sastre1
5074	716	3	bumper	bump.N.SG.AG	\N	SOF	2	sastre1
5075	716	4	used	use.V.PAST	\N	SOF	2	sastre1
5077	716	6	be	be.V.INFIN	\N	SOF	2	sastre1
5078	716	7	a	a.DET.INDEF	\N	SOF	2	sastre1
5079	716	8	different	different.ADJ	\N	SOF	2	sastre1
5081	716	10	that	that.CONJ	\N	SOF	2	sastre1
5082	716	11	they	they.PRON.SUB.3P	\N	SOF	2	sastre1
5083	716	12	used	use.V.PAST	\N	SOF	2	sastre1
5084	716	13	to	to.PREP	\N	SOF	2	sastre1
5086	717	1	mmhm	unk		KEV	0	sastre1
5091	718	3	S_U_V	name	\N	KEV	2	sastre1
5092	718	4	o	or.CONJ	\N	KEV	3	sastre1
5094	719	1	no	not.ADV		SOF	3	sastre1
5097	719	4	was	was.V.3S.PAST	\N	SOF	2	sastre1
5098	719	5	a	a.DET.INDEF	\N	SOF	2	sastre1
5099	719	6	car	car.N.SG	\N	SOF	2	sastre1
5101	720	1	un	one.DET.INDEF.M.SG		KEV	3	sastre1
5105	721	2	.	\N	\N	KEV	999	sastre1
5108	722	3	.	\N	\N	SOF	999	sastre1
5107	722	2	God	name	\N	SOF	2	sastre1
5110	723	2	.	\N	\N	KEV	999	sastre1
5111	724	1	imagine	imagine.V.INFIN		SOF	2	sastre1
5118	724	8	.	\N	\N	SOF	999	sastre1
5112	724	2	if	if.CONJ	\N	SOF	2	sastre1
5120	725	2	.	\N	\N	KEV	999	sastre1
5121	726	1	imagínate	imagine.V.2S.IMPER.PRECLITIC.PRECLITIC		KEV	3	sastre1
5122	726	2	.	\N	\N	KEV	999	sastre1
5123	727	1	la	her.PRON.OBJ.F.3S		SOF	3	sastre1
5126	727	4	.	\N	\N	SOF	999	sastre1
5124	727	2	hubiera	have.V.13S.SUBJ.IMPERF	\N	SOF	3	sastre1
5135	728	9	.	\N	\N	SOF	999	sastre1
5128	728	2	yo	I.PRON.SUB.MF.1S	\N	SOF	3	sastre1
5137	729	2	.	\N	\N	KEV	999	sastre1
5138	730	1	los	the.DET.DEF.M.PL		KEV	3	sastre1
5144	730	7	?	\N	\N	KEV	999	sastre1
5139	730	2	PT_Cruisers	name	\N	KEV	0	sastre1
5178	731	34	.	\N	\N	SOF	999	sastre1
5146	731	2	but	but.CONJ	\N	SOF	2	sastre1
5208	732	30	.	\N	\N	SOF	999	sastre1
5180	732	2	the	the.DET.DEF	\N	SOF	2	sastre1
5214	733	6	.	\N	\N	SOF	999	sastre1
5210	733	2	que	that.CONJ	\N	SOF	3	sastre1
5216	734	2	.	\N	\N	KEV	999	sastre1
5217	735	1	pero	but.CONJ		SOF	3	sastre1
5218	735	2	parece	seem.V.2S.IMPER	\N	SOF	3	sastre1
5106	722	1	Thank	name		SOF	2	sastre1
5109	723	1	mmhm	unk		KEV	0	sastre1
5113	724	3	you	you.PRON.SUB.2SP	\N	SOF	2	sastre1
5115	724	5	a	a.DET.INDEF	\N	SOF	2	sastre1
5116	724	6	little	little.ADJ	\N	SOF	2	sastre1
5117	724	7	PT_Cruiser	name	\N	SOF	0	sastre1
5127	728	1	porque	because.CONJ		SOF	3	sastre1
5129	728	3	no	not.ADV	\N	SOF	3	sastre1
5130	728	4	tenía	have.V.13S.IMPERF	\N	SOF	3	sastre1
5131	728	5	airbags	unk	\N	SOF	0	sastre1
5132	728	6	en	in.PREP	\N	SOF	3	sastre1
5134	728	8	PT_Cruiser	name	\N	SOF	0	sastre1
5136	729	1	no	not.ADV		KEV	3	sastre1
5140	730	3	no	not.ADV	\N	KEV	3	sastre1
5142	730	5	con	with.PREP	\N	KEV	3	sastre1
5143	730	6	airbag	unk	\N	KEV	0	sastre1
5145	731	1	yes	yes.ADV		SOF	2	sastre1
5147	731	3	what	what.REL	\N	SOF	2	sastre1
5148	731	4	happened	happen.V.PAST	\N	SOF	2	sastre1
5149	731	5	was	was.V.3S.PAST	\N	SOF	2	sastre1
5151	731	7	husband	husband.N.SG	\N	SOF	2	sastre1
5152	731	8	being	be.V.PRESPART	\N	SOF	2	sastre1
5153	731	9	such	such.ADJ	\N	SOF	2	sastre1
5154	731	10	a	a.DET.INDEF	\N	SOF	2	sastre1
5156	731	12	person	person.N.SG	\N	SOF	2	sastre1
5157	731	13	wanted	want.V.PAST	\N	SOF	2	sastre1
5158	731	14	to	to.PREP	\N	SOF	2	sastre1
5160	731	16	her	her.PRON.INDIR.F.3S	\N	SOF	2	sastre1
5161	731	17	a	a.DET.INDEF	\N	SOF	2	sastre1
5162	731	18	car	car.N.SG	\N	SOF	2	sastre1
5163	731	19	a	a.DET.INDEF	\N	SOF	2	sastre1
5165	731	21	car	car.N.SG	\N	SOF	2	sastre1
5166	731	22	didn't	did.V.PAST.+NEG	\N	SOF	2	sastre1
5167	731	23	want	want.SV.INFIN	\N	SOF	2	sastre1
5169	731	25	to	to.PREP	\N	SOF	2	sastre1
5170	731	26	have	have.V.INFIN	\N	SOF	2	sastre1
5171	731	27	a	a.DET.INDEF	\N	SOF	2	sastre1
5172	731	28	new	new.ADJ	\N	SOF	2	sastre1
5173	731	29	car	car.N.SG	\N	SOF	2	sastre1
5175	731	31	I	I.PRON.SUB.1S	\N	SOF	2	sastre1
5176	731	32	told	told.V.PAST	\N	SOF	2	sastre1
5177	731	33	him	him.PRON.OBJ.M.3S	\N	SOF	2	sastre1
5181	732	3	kid	kid.N.SG	\N	SOF	2	sastre1
5182	732	4	a	a.DET.INDEF	\N	SOF	2	sastre1
5183	732	5	good	good.ADJ	\N	SOF	2	sastre1
5184	732	6	car	car.N.SG	\N	SOF	2	sastre1
5186	732	8	we	we.PRON.SUB.1P	\N	SOF	2	sastre1
5187	732	9	ended	end.V.PAST	\N	SOF	2	sastre1
5188	732	10	up	up.ADV	\N	SOF	2	sastre1
5189	732	11	finding	find.V.PRESPART	\N	SOF	2	sastre1
5191	732	13	when	when.CONJ	\N	SOF	2	sastre1
5192	732	14	we	we.PRON.SUB.1P	\N	SOF	2	sastre1
5193	732	15	had	had.V.PAST	\N	SOF	2	sastre1
5195	732	17	paid	paid.AV.PAST	\N	SOF	2	sastre1
5196	732	18	everything	everything.PRON	\N	SOF	2	sastre1
5197	732	19	for	for.PREP	\N	SOF	2	sastre1
5198	732	20	the	the.DET.DEF	\N	SOF	2	sastre1
5199	732	21	car	car.N.SG	\N	SOF	2	sastre1
5201	732	23	car	car.N.SG	\N	SOF	2	sastre1
5202	732	24	had	had.V.PAST	\N	SOF	2	sastre1
5203	732	25	been	been.V.PASTPART	\N	SOF	2	sastre1
5205	732	27	de	of.PREP	\N	SOF	3	sastre1
5206	732	28	alante	forward.ADV	\N	SOF	3	sastre1
5207	732	29	completamente	wholly.ADV	\N	SOF	3	sastre1
5211	733	3	tiene	have.V.23S.PRES	\N	SOF	3	sastre1
5212	733	4	el	the.DET.DEF.M.SG	\N	SOF	3	sastre1
5213	733	5	sticker	stick.N.SG.AG	\N	SOF	2	sastre1
5215	734	1	mmhm	unk		KEV	0	sastre1
5220	735	4	it	it.PRON.SUB.3S	\N	SOF	2	sastre1
5221	735	5	wasn't	was.V.3S.PAST.+NEG	\N	SOF	2	sastre1
5222	735	6	in	in.PREP	\N	SOF	2	sastre1
5223	735	7	the	the.DET.DEF	\N	SOF	2	sastre1
5225	735	9	yet	yet.CONJ	\N	SOF	2	sastre1
5226	735	10	because	because.CONJ	\N	SOF	2	sastre1
5227	735	11	it	it.PRON.SUB.3S	\N	SOF	2	sastre1
5231	735	15	.	\N	\N	SOF	999	sastre1
5233	736	2	.	\N	\N	KEV	999	sastre1
5234	737	1	so	so.ADV		SOF	2	sastre1
5239	737	6	.	\N	\N	SOF	999	sastre1
5235	737	2	they	they.PRON.SUB.3P	\N	SOF	2	sastre1
5253	738	14	.	\N	\N	SOF	999	sastre1
5241	738	2	they	they.PRON.SUB.3P	\N	SOF	2	sastre1
5275	739	22	.	\N	\N	SOF	999	sastre1
5255	739	2	we	we.PRON.SUB.1P	\N	SOF	2	sastre1
5285	740	10	?	\N	\N	SOF	999	sastre1
5277	740	2	we	we.PRON.SUB.1P	\N	SOF	2	sastre1
5292	741	7	.	\N	\N	SOF	999	sastre1
5287	741	2	that	that.DEM.FAR	\N	SOF	2	sastre1
5294	742	2	.	\N	\N	KEV	999	sastre1
5295	743	1	it's	it.PRON.SUB.3S.+HAVE.V.3S.PAST		SOF	2	sastre1
5301	743	7	.	\N	\N	SOF	999	sastre1
5296	743	2	been	been.V.PASTPART	\N	SOF	2	sastre1
5303	744	2	.	\N	\N	KEV	999	sastre1
5304	745	1	and	and.CONJ		SOF	2	sastre1
5324	745	21	.	\N	\N	SOF	999	sastre1
5305	745	2	they	they.PRON.SUB.3P	\N	SOF	2	sastre1
5338	746	14	.	\N	\N	SOF	999	sastre1
5326	746	2	put	put.V.3P.PRES	\N	SOF	2	sastre1
5341	747	3	.	\N	\N	SOF	999	sastre1
5340	747	2	of	of.PREP	\N	SOF	2	sastre1
5345	748	4	.	\N	\N	KEV	999	sastre1
5344	748	3	rebuilt	rebuilt.V.PASTPART	\N	KEV	2	sastre1
5347	749	2	.	\N	\N	SOF	999	sastre1
5348	750	1	mmhm	unk		KEV	0	sastre1
5349	750	2	.	\N	\N	KEV	999	sastre1
5350	751	1	and	and.CONJ		SOF	2	sastre1
5351	751	2	they	they.PRON.SUB.3P	\N	SOF	2	sastre1
5229	735	13	just	just.ADV	\N	SOF	2	sastre1
5230	735	14	happened	happen.V.PASTPART	\N	SOF	2	sastre1
5232	736	1	mmhm	unk		KEV	0	sastre1
5237	737	4	the	the.DET.DEF	\N	SOF	2	sastre1
5238	737	5	car	car.N.SG	\N	SOF	2	sastre1
5240	738	1	and	and.CONJ		SOF	2	sastre1
5243	738	4	it	it.PRON.OBJ.3S	\N	SOF	2	sastre1
5244	738	5	to	to.PREP	\N	SOF	2	sastre1
5245	738	6	us	us.PRON.OBJ.1P	\N	SOF	2	sastre1
5246	738	7	thinking	think.V.PRESPART	\N	SOF	2	sastre1
5248	738	9	no	not.ADV	\N	SOF	3	sastre1
5249	738	10	nada	swim.V.2S.IMPER	\N	SOF	3	sastre1
5250	738	11	tenía	have.V.13S.IMPERF	\N	SOF	3	sastre1
5252	738	13	carro	car.N.M.SG	\N	SOF	3	sastre1
5254	739	1	when	when.CONJ		SOF	2	sastre1
5256	739	3	went	went.V.PAST	\N	SOF	2	sastre1
5257	739	4	to	to.PREP	\N	SOF	2	sastre1
5259	739	6	in	in.PREP	\N	SOF	2	sastre1
5260	739	7	the	the.DET.DEF	\N	SOF	2	sastre1
5261	739	8	car	car.N.SG	\N	SOF	2	sastre1
5262	739	9	for	for.PREP	\N	SOF	2	sastre1
5263	739	10	the	the.DET.DEF	\N	SOF	2	sastre1
5265	739	12	the	the.DET.DEF	\N	SOF	2	sastre1
5266	739	13	guy	guy.N.SG	\N	SOF	2	sastre1
5267	739	14	told	told.V.PAST	\N	SOF	2	sastre1
5268	739	15	me	me.PRON.OBJ.1S	\N	SOF	2	sastre1
5270	739	17	he	he.PRON.SUB.M.3S	\N	SOF	2	sastre1
5271	739	18	couldn't	can.V.COND.+NEG	\N	SOF	2	sastre1
5272	739	19	take	take.V.INFIN	\N	SOF	2	sastre1
5274	739	21	car	car.N.SG	\N	SOF	2	sastre1
5276	740	1	and	and.CONJ		SOF	2	sastre1
5278	740	3	say	say.V.1P.PRES	\N	SOF	2	sastre1
5279	740	4	why	why.REL	\N	SOF	2	sastre1
5281	740	6	you	you.PRON.SUB.2SP	\N	SOF	2	sastre1
5282	740	7	take	take.V.2SP.PRES	\N	SOF	2	sastre1
5283	740	8	this	this.DEM.NEAR.SG	\N	SOF	2	sastre1
5286	741	1	because	because.CONJ		SOF	2	sastre1
5288	741	3	car	car.N.SG	\N	SOF	2	sastre1
5289	741	4	is	is.V.3S.PRES	\N	SOF	2	sastre1
5290	741	5	no	no.ADV	\N	SOF	2	sastre1
5293	742	1	mmhm	unk		KEV	0	sastre1
5298	743	4	from	from.PREP	\N	SOF	2	sastre1
5299	743	5	the	the.DET.DEF	\N	SOF	2	sastre1
5300	743	6	front	front.N.SG	\N	SOF	2	sastre1
5302	744	1	mmhm	unk		KEV	0	sastre1
5307	745	4	a	a.DET.INDEF	\N	SOF	2	sastre1
5308	745	5	special	special.ADJ	\N	SOF	2	sastre1
5309	745	6	sticker	stick.N.SG.AG	\N	SOF	2	sastre1
5310	745	7	when	when.CONJ	\N	SOF	2	sastre1
5312	745	9	open	open.V.2SP.PRES	\N	SOF	2	sastre1
5313	745	10	up	up.ADV	\N	SOF	2	sastre1
5314	745	11	the	the.DET.DEF	\N	SOF	2	sastre1
5315	745	12	door	door.N.SG	\N	SOF	2	sastre1
5317	745	14	the	the.DET.DEF	\N	SOF	2	sastre1
5318	745	15	car	car.N.SG	\N	SOF	2	sastre1
5319	745	16	on	on.PREP	\N	SOF	2	sastre1
5320	745	17	the	the.DET.DEF	\N	SOF	2	sastre1
5322	745	19	right	right.ADJ	\N	SOF	2	sastre1
5323	745	20	there	there.ADV	\N	SOF	2	sastre1
5325	746	1	they	they.PRON.SUB.3P		SOF	2	sastre1
5328	746	4	sticker	stick.N.SG.AG	\N	SOF	2	sastre1
5329	746	5	when	when.CONJ	\N	SOF	2	sastre1
5330	746	6	a	a.DET.INDEF	\N	SOF	2	sastre1
5331	746	7	car	car.N.SG	\N	SOF	2	sastre1
5333	746	9	been	been.V.PASTPART	\N	SOF	2	sastre1
5334	746	10	crashed	crash.V.PASTPART	\N	SOF	2	sastre1
5335	746	11	from	from.PREP	\N	SOF	2	sastre1
5337	746	13	front	front.N.SG	\N	SOF	2	sastre1
5339	747	1	because	because.CONJ		SOF	2	sastre1
5342	748	1	como	like.CONJ		KEV	3	sastre1
5346	749	1	yes	yes.ADV		SOF	2	sastre1
5352	751	3	wouldn't	be.V.123SP.COND.+NEG	\N	SOF	2	sastre1
5358	751	9	.	\N	\N	SOF	999	sastre1
5362	752	4	.	\N	\N	KEV	999	sastre1
5360	752	2	tú	you.PRON.SUB.MF.2S	\N	KEV	3	sastre1
5367	753	5	.	\N	\N	SOF	999	sastre1
5364	753	2	ni	nor.CONJ	\N	SOF	3	sastre1
5375	754	8	.	\N	\N	SOF	999	sastre1
5369	754	2	said	said.V.PAST	\N	SOF	2	sastre1
5382	755	7	.	\N	\N	SOF	999	sastre1
5377	755	2	is	is.V.3S.PRES	\N	SOF	2	sastre1
5384	756	2	.	\N	\N	KEV	999	sastre1
5385	757	1	you	you.PRON.SUB.2SP		SOF	2	sastre1
5395	757	11	.	\N	\N	SOF	999	sastre1
5386	757	2	try	try.V.2SP.PRES	\N	SOF	2	sastre1
5408	758	13	.	\N	\N	SOF	999	sastre1
5397	758	2	I	I.PRON.SUB.1S	\N	SOF	2	sastre1
5417	759	9	.	\N	\N	SOF	999	sastre1
5410	759	2	no	no.ADV	\N	SOF	2	sastre1
5419	760	2	.	\N	\N	KEV	999	sastre1
5420	761	1	you	you.PRON.SUB.2SP		SOF	2	sastre1
5428	761	9	.	\N	\N	SOF	999	sastre1
5422	761	3	I	I.PRON.SUB.1S	\N	SOF	2	sastre1
5430	762	2	.	\N	\N	KEV	999	sastre1
5431	763	1	oh	unk		KEV	0	sastre1
5433	763	3	.	\N	\N	KEV	999	sastre1
5432	763	2	ok	unk	\N	KEV	0	sastre1
5434	764	1	.	\N		SOF	999	sastre1
5437	765	3	.	\N	\N	KEV	999	sastre1
5436	765	2	mmhm	unk	\N	KEV	0	sastre1
5439	766	2	.	\N	\N	SOF	999	sastre1
5441	767	2	we	we.PRON.SUB.1P	\N	KEV	2	sastre1
5442	767	3	.	\N	\N	KEV	999	sastre1
5443	768	1	I	I.PRON.SUB.1S		SOF	2	sastre1
5451	768	9	.	\N	\N	SOF	999	sastre1
5444	768	2	don't	do.V.1S.PRES.+NEG	\N	SOF	2	sastre1
5458	769	7	.	\N	\N	SOF	999	sastre1
5453	769	2	been	been.V.PASTPART	\N	SOF	2	sastre1
5463	770	5	?	\N	\N	KEV	999	sastre1
5460	770	2	we	we.PRON.SUB.1P	\N	KEV	2	sastre1
5470	771	7	.	\N	\N	SOF	999	sastre1
5465	771	2	think	think.V.1S.PRES	\N	SOF	2	sastre1
5473	772	3	.	\N	\N	SOF	999	sastre1
5472	772	2	talking	talk.V.PRESPART	\N	SOF	2	sastre1
5475	773	2	on	on.ADV	\N	KEV	2	sastre1
5353	751	4	take	take.V.INFIN	\N	SOF	2	sastre1
5354	751	5	the	the.DET.DEF	\N	SOF	2	sastre1
5355	751	6	car	car.N.SG	\N	SOF	2	sastre1
5357	751	8	nothing	nothing.PRON	\N	SOF	2	sastre1
5359	752	1	ya	already.ADV		KEV	3	sastre1
5361	752	3	sabes	know.V.2S.PRES	\N	KEV	3	sastre1
5365	753	3	lo	him.PRON.OBJ.M.3S	\N	SOF	3	sastre1
5366	753	4	querían	want.V.3P.IMPERF	\N	SOF	3	sastre1
5370	754	3	no	no.ADV	\N	SOF	2	sastre1
5371	754	4	we	we.PRON.SUB.1P	\N	SOF	2	sastre1
5372	754	5	don't	do.V.12S13P.PRES.+NEG	\N	SOF	2	sastre1
5374	754	7	this	this.DEM.NEAR.SG	\N	SOF	2	sastre1
5376	755	1	this	this.DEM.NEAR.SG		SOF	2	sastre1
5378	755	3	the	the.DET.DEF	\N	SOF	2	sastre1
5380	755	5	for	for.PREP	\N	SOF	2	sastre1
5381	755	6	us	us.PRON.OBJ.1P	\N	SOF	2	sastre1
5383	756	1	mmhm	unk		KEV	0	sastre1
5388	757	4	sell	sell.V.INFIN	\N	SOF	2	sastre1
5389	757	5	it	it.PRON.OBJ.3S	\N	SOF	2	sastre1
5390	757	6	the	the.DET.DEF	\N	SOF	2	sastre1
5391	757	7	best	best.ADJ	\N	SOF	2	sastre1
5393	757	9	you	you.PRON.SUB.2SP	\N	SOF	2	sastre1
5394	757	10	can	can.V.2SP.PRES	\N	SOF	2	sastre1
5396	758	1	and	and.CONJ		SOF	2	sastre1
5399	758	4	let's	let.V.IMPER.+US.PRON.SUB.1P	\N	SOF	2	sastre1
5400	758	5	sue	sue.V.INFIN	\N	SOF	2	sastre1
5402	758	7	guy	guy.N.SG	\N	SOF	2	sastre1
5403	758	8	who	who.REL	\N	SOF	2	sastre1
5404	758	9	sold	sold.V.PAST	\N	SOF	2	sastre1
5405	758	10	you	you.PRON.OBJ.2SP	\N	SOF	2	sastre1
5407	758	12	car	car.N.SG	\N	SOF	2	sastre1
5409	759	1	no	no.ADV		SOF	2	sastre1
5411	759	3	no	no.ADV	\N	SOF	2	sastre1
5412	759	4	no	no.ADV	\N	SOF	2	sastre1
5413	759	5	I	I.PRON.SUB.1S	\N	SOF	2	sastre1
5415	759	7	wanna	want.V.INFIN.+TO.PREP	\N	SOF	2	sastre1
5416	759	8	worry	worry.V.INFIN	\N	SOF	2	sastre1
5418	760	1	sí	yes.ADV		KEV	3	sastre1
5423	761	4	don't	do.V.1S.PRES.+NEG	\N	SOF	2	sastre1
5425	761	6	deal	deal.V.INFIN	\N	SOF	2	sastre1
5426	761	7	with	with.PREP	\N	SOF	2	sastre1
5427	761	8	that	that.DEM.FAR	\N	SOF	2	sastre1
5429	762	1	sí	yes.ADV		KEV	3	sastre1
5435	765	1	mmhm	unk		KEV	0	sastre1
5438	766	1	hello	hello.N.SG		SOF	2	sastre1
5445	768	3	know	know.V.INFIN	\N	SOF	2	sastre1
5446	768	4	if	if.CONJ	\N	SOF	2	sastre1
5448	768	6	are	are.V.1P.PRES	\N	SOF	2	sastre1
5449	768	7	almost	almost.ADV	\N	SOF	2	sastre1
5450	768	8	over	over.ADV	\N	SOF	2	sastre1
5454	769	3	talking	talk.V.PRESPART	\N	SOF	2	sastre1
5455	769	4	so	so.ADV	\N	SOF	2	sastre1
5456	769	5	much	much.ADJ	\N	SOF	2	sastre1
5457	769	6	already	already.ADV	\N	SOF	2	sastre1
5461	770	3	on	on.PREP	\N	KEV	2	sastre1
5462	770	4	time	time.N.SG	\N	KEV	2	sastre1
5464	771	1	I	I.PRON.SUB.1S		SOF	2	sastre1
5467	771	4	forgot	forgot.V.3P.PRES	\N	SOF	2	sastre1
5468	771	5	about	about.PREP	\N	SOF	2	sastre1
5469	771	6	us	us.PRON.OBJ.1P	\N	SOF	2	sastre1
5474	773	1	keep	keep.V.INFIN		KEV	2	sastre1
5476	773	3	talking	talk.V.PRESPART	\N	KEV	2	sastre1
5477	773	4	.	\N	\N	KEV	999	sastre1
5484	774	7	.	\N	\N	KEV	999	sastre1
5479	774	2	more	more.ADJ	\N	KEV	2	sastre1
5490	775	6	.	\N	\N	SOF	999	sastre1
5486	775	2	got	got.V.PAST	\N	SOF	2	sastre1
5492	776	2	.	\N	\N	KEV	999	sastre1
5495	778	2	are	are.V.1P.PRES	\N	SOF	2	sastre1
5493	777	1	.	\N		SOF	999	sastre1
5511	778	18	.	\N	\N	SOF	999	sastre1
5496	778	3	tired	tire.V.PASTPART	\N	SOF	2	sastre1
5513	779	2	.	\N	\N	KEV	999	sastre1
5515	781	1	pues	then.CONJ		KEV	3	sastre1
5514	780	1	.	\N		SOF	999	sastre1
5524	781	10	?	\N	\N	KEV	999	sastre1
5516	781	2	sí	yes.ADV	\N	KEV	3	sastre1
5531	782	7	.	\N	\N	KEV	999	sastre1
5526	782	2	tiroteo	shooting.N.M.SG	\N	KEV	3	sastre1
5533	783	2	.	\N	\N	SOF	999	sastre1
5534	784	1	y	and.CONJ		KEV	3	sastre1
5543	784	10	.	\N	\N	KEV	999	sastre1
5535	784	2	los	the.DET.DEF.M.PL	\N	KEV	3	sastre1
5545	785	2	.	\N	\N	SOF	999	sastre1
5546	786	1	y	and.CONJ		KEV	3	sastre1
5555	786	10	.	\N	\N	KEV	999	sastre1
5547	786	2	ayer	yesterday.ADV	\N	KEV	3	sastre1
5556	787	1	.	\N		SOF	999	sastre1
5558	788	2	.	\N	\N	SOF	999	sastre1
5559	789	1	en	in.PREP		KEV	3	sastre1
5562	789	4	.	\N	\N	KEV	999	sastre1
5560	789	2	el	the.DET.DEF.M.SG	\N	KEV	3	sastre1
5568	790	6	.	\N	\N	KEV	999	sastre1
5565	790	3	calientica	stuffy.ADJ.F.SG.DIM.DIM	\N	KEV	3	sastre1
5578	791	10	?	\N	\N	KEV	999	sastre1
5570	791	2	dónde	where.INT	\N	KEV	3	sastre1
5585	792	7	.	\N	\N	KEV	999	sastre1
5581	792	3	días	day.N.M.PL	\N	KEV	3	sastre1
5587	793	2	yo	I.PRON.SUB.MF.1S	\N	SOF	3	sastre1
5478	774	1	four	four.NUM		KEV	2	sastre1
5480	774	3	minutes	minute.N.PL	\N	KEV	2	sastre1
5481	774	4	five	five.NUM	\N	KEV	2	sastre1
5482	774	5	more	more.ADJ	\N	KEV	2	sastre1
5485	775	1	we	we.PRON.SUB.1P		SOF	2	sastre1
5487	775	3	five	five.NUM	\N	SOF	2	sastre1
5488	775	4	more	more.ADJ	\N	SOF	2	sastre1
5489	775	5	minutes	minute.N.PL	\N	SOF	2	sastre1
5491	776	1	mmhm	unk		KEV	0	sastre1
5497	778	4	talking	talk.V.PRESPART	\N	SOF	2	sastre1
5498	778	5	to	to.PREP	\N	SOF	2	sastre1
5500	778	7	other	other.ADJ	\N	SOF	2	sastre1
5501	778	8	we	we.PRON.SUB.1P	\N	SOF	2	sastre1
5502	778	9	wanna	want.V.1P.PRES.+TO.PREP	\N	SOF	2	sastre1
5504	778	11	the	the.DET.DEF	\N	SOF	2	sastre1
5505	778	12	news	news.N.SG	\N	SOF	2	sastre1
5506	778	13	and	and.CONJ	\N	SOF	2	sastre1
5507	778	14	the	the.DET.DEF	\N	SOF	2	sastre1
5509	778	16	right	right.ADJ	\N	SOF	2	sastre1
5510	778	17	now	now.ADV	\N	SOF	2	sastre1
5512	779	1	mmhm	unk		KEV	0	sastre1
5518	781	4	de	of.PREP	\N	KEV	3	sastre1
5519	781	5	Chili's	name	\N	KEV	0	sastre1
5520	781	6	está	be.V.23S.PRES	\N	KEV	3	sastre1
5521	781	7	impresionante	shocking.ADJ.M.SG	\N	KEV	3	sastre1
5523	781	9	verdad	truth.N.F.SG	\N	KEV	3	sastre1
5525	782	1	el	the.DET.DEF.M.SG		KEV	3	sastre1
5528	782	4	ahí	there.ADV	\N	KEV	3	sastre1
5529	782	5	en	in.PREP	\N	KEV	3	sastre1
5530	782	6	Chili's	name	\N	KEV	0	sastre1
5532	783	1	yes	yes.ADV		SOF	2	sastre1
5537	784	4	días	day.N.M.PL	\N	KEV	3	sastre1
5538	784	5	el	the.DET.DEF.M.SG	\N	KEV	3	sastre1
5539	784	6	tiroteo	shooting.N.M.SG	\N	KEV	3	sastre1
5540	784	7	en	in.PREP	\N	KEV	3	sastre1
5542	784	9	colegio	school.N.M.SG	\N	KEV	3	sastre1
5544	785	1	yeah	yeah.ADV		SOF	2	sastre1
5548	786	3	o	or.CONJ	\N	KEV	3	sastre1
5550	786	5	el	the.DET.DEF.M.SG	\N	KEV	3	sastre1
5551	786	6	riot	riot.N.SG	\N	KEV	2	sastre1
5552	786	7	en	in.PREP	\N	KEV	3	sastre1
5553	786	8	el	the.DET.DEF.M.SG	\N	KEV	3	sastre1
5557	788	1	Edison	name		SOF	0	sastre1
5561	789	3	otro	other.PRON.M.SG	\N	KEV	3	sastre1
5563	790	1	esto	this.PRON.DEM.NT.SG		KEV	3	sastre1
5566	790	4	la	the.DET.DEF.F.SG	\N	KEV	3	sastre1
5567	790	5	calle	street.N.F.SG	\N	KEV	3	sastre1
5571	791	3	fue	be.V.3S.PAST	\N	KEV	3	sastre1
5572	791	4	otro	other.ADJ.M.SG	\N	KEV	3	sastre1
5574	791	6	aquí	here.ADV	\N	KEV	3	sastre1
5575	791	7	también	too.ADV	\N	KEV	3	sastre1
5576	791	8	que	that.CONJ	\N	KEV	3	sastre1
5577	791	9	tirotearon	shoot.V.3P.PAST	\N	KEV	3	sastre1
5579	792	1	los	the.DET.DEF.M.PL		KEV	3	sastre1
5582	792	4	aquí	here.ADV	\N	KEV	3	sastre1
5583	792	5	pegaditos	stuck.N.M.PL.DIM.DIM	\N	KEV	3	sastre1
5586	793	1	no	not.ADV		SOF	3	sastre1
5588	793	3	pero	but.CONJ	\N	SOF	3	sastre1
5589	793	4	no	not.ADV	\N	SOF	3	sastre1
5590	793	5	fue	be.V.3S.PAST	\N	SOF	3	sastre1
5592	793	7	forty	forty.NUM	\N	SOF	2	sastre1
5593	793	8	one	one.NUM	\N	SOF	2	sastre1
5594	793	9	ahí	there.ADV	\N	SOF	3	sastre1
5595	793	10	en	in.PREP	\N	SOF	3	sastre1
5597	793	12	four	four.NUM	\N	SOF	2	sastre1
5598	793	13	forty	forty.NUM	\N	SOF	2	sastre1
5599	793	14	one	one.NUM	\N	SOF	2	sastre1
5609	793	24	.	\N	\N	SOF	999	sastre1
5615	794	6	.	\N	\N	KEV	999	sastre1
5611	794	2	pero	but.CONJ	\N	KEV	3	sastre1
5629	795	14	.	\N	\N	KEV	999	sastre1
5617	795	2	Chili's	name	\N	KEV	0	sastre1
5638	796	9	.	\N	\N	KEV	999	sastre1
5631	796	2	ahora	now.ADV	\N	KEV	3	sastre1
5651	797	13	.	\N	\N	KEV	999	sastre1
5640	797	2	había	have.V.13S.IMPERF	\N	KEV	3	sastre1
5658	798	7	.	\N	\N	KEV	999	sastre1
5654	798	3	está	be.V.23S.PRES	\N	KEV	3	sastre1
5660	799	2	.	\N	\N	SOF	999	sastre1
5661	800	1	mmhm	unk		KEV	0	sastre1
5662	800	2	.	\N	\N	KEV	999	sastre1
5663	801	1	la	the.DET.DEF.F.SG		SOF	3	sastre1
5667	801	5	.	\N	\N	SOF	999	sastre1
5664	801	2	gente	people.N.F.SG	\N	SOF	3	sastre1
5669	802	2	.	\N	\N	KEV	999	sastre1
5670	803	1	la	the.DET.DEF.F.SG		KEV	3	sastre1
5681	803	12	.	\N	\N	KEV	999	sastre1
5671	803	2	gente	people.N.F.SG	\N	KEV	3	sastre1
5682	804	1	.	\N		SOF	999	sastre1
5685	805	3	.	\N	\N	KEV	999	sastre1
5684	805	2	mmhm	unk	\N	KEV	0	sastre1
5686	806	1	.	\N		SOF	999	sastre1
5697	807	11	.	\N	\N	KEV	999	sastre1
5688	807	2	muchachitos	lads.N.M.PL.DIM.DIM	\N	KEV	3	sastre1
5700	808	3	.	\N	\N	KEV	999	sastre1
5713	811	5	better	better.ADJ	\N	SOF	2	sastre1
5706	809	6	.	\N	\N	SOF	999	sastre1
5714	811	6	than	than.CONJ	\N	SOF	2	sastre1
5708	810	2	.	\N	\N	KEV	999	sastre1
5715	811	7	watching	watch.V.PRESPART	\N	SOF	2	sastre1
5716	811	8	er	unk	\N	SOF	0	sastre1
5600	793	15	yo	I.PRON.SUB.MF.1S	\N	SOF	3	sastre1
5601	793	16	creo	believe.V.1S.PRES	\N	SOF	3	sastre1
5602	793	17	que	that.CONJ	\N	SOF	3	sastre1
5603	793	18	fue	be.V.3S.PAST	\N	SOF	3	sastre1
5604	793	19	un	one.DET.INDEF.M.SG	\N	SOF	3	sastre1
5605	793	20	poquito	little.ADJ.M.SG.DIM.DIM	\N	SOF	3	sastre1
5606	793	21	más	more.ADV	\N	SOF	3	sastre1
5607	793	22	para	stall.V.2S.IMPER	\N	SOF	3	sastre1
5610	794	1	no	not.ADV		KEV	3	sastre1
5612	794	3	er	unk	\N	KEV	0	sastre1
5613	794	4	estuvo	be.V.3S.PAST	\N	KEV	3	sastre1
5614	794	5	Chili's	name	\N	KEV	0	sastre1
5616	795	1	en	in.PREP		KEV	3	sastre1
5619	795	4	robado	rob.V.PASTPART	\N	KEV	3	sastre1
5620	795	5	y	and.CONJ	\N	KEV	3	sastre1
5621	795	6	habían	have.V.3P.IMPERF	\N	KEV	3	sastre1
5623	795	8	a	to.PREP	\N	KEV	3	sastre1
5624	795	9	alguien	someone.PRON.MF.SG	\N	KEV	3	sastre1
5625	795	10	hace	do.V.23S.PRES	\N	KEV	3	sastre1
5626	795	11	unos	one.DET.INDEF.M.PL	\N	KEV	3	sastre1
5628	795	13	atrás	backwards.ADV	\N	KEV	3	sastre1
5630	796	1	y	and.CONJ		KEV	3	sastre1
5633	796	4	formó	form.V.3S.PAST	\N	KEV	3	sastre1
5634	796	5	un	one.DET.INDEF.M.SG	\N	KEV	3	sastre1
5635	796	6	tiroteo	shooting.N.M.SG	\N	KEV	3	sastre1
5636	796	7	de	of.PREP	\N	KEV	3	sastre1
5637	796	8	nuevo	new.ADJ.M.SG	\N	KEV	3	sastre1
5641	797	3	otro	other.ADJ.M.SG	\N	KEV	3	sastre1
5642	797	4	lugar	place.N.M.SG	\N	KEV	3	sastre1
5644	797	6	que	that.CONJ	\N	KEV	3	sastre1
5645	797	7	había	have.V.13S.IMPERF	\N	KEV	3	sastre1
5646	797	8	habido	have.V.M.PASTPART	\N	KEV	3	sastre1
5648	797	10	robo	robbery.N.M.SG	\N	KEV	3	sastre1
5649	797	11	un	one.DET.INDEF.M.SG	\N	KEV	3	sastre1
5650	797	12	tiroteo	shooting.N.M.SG	\N	KEV	3	sastre1
5652	798	1	la	the.DET.DEF.F.SG		KEV	3	sastre1
5655	798	4	que	that.CONJ	\N	KEV	3	sastre1
5656	798	5	mete	put.V.2S.IMPER	\N	KEV	3	sastre1
5659	799	1	claro	of_course.IM		SOF	3	sastre1
5665	801	3	está	be.V.23S.PRES	\N	SOF	3	sastre1
5668	802	1	sí	yes.ADV		KEV	3	sastre1
5672	803	3	estaba	be.V.13S.IMPERF	\N	KEV	3	sastre1
5674	803	5	para	stall.V.2S.IMPER	\N	KEV	3	sastre1
5675	803	6	tratar	treat.V.INFIN	\N	KEV	3	sastre1
5676	803	7	de	of.PREP	\N	KEV	3	sastre1
5677	803	8	resolverlo	settle.V.INFIN	\N	KEV	3	sastre1
5678	803	9	a	to.PREP	\N	KEV	3	sastre1
5680	803	11	costo	cost.N.M.SG	\N	KEV	3	sastre1
5683	805	1	mmhm	unk		KEV	0	sastre1
5687	807	1	estos	this.ADJ.DEM.M.PL		KEV	3	sastre1
5690	807	4	han	have.V.23P.PRES	\N	KEV	3	sastre1
5691	807	5	pasado	pass.V.PASTPART	\N	KEV	3	sastre1
5692	807	6	todo	all.ADJ.M.SG	\N	KEV	3	sastre1
5693	807	7	el	the.DET.DEF.M.SG	\N	KEV	3	sastre1
5695	807	9	ahí	there.ADV	\N	KEV	3	sastre1
5696	807	10	pescando	fish.V.PRESPART	\N	KEV	3	sastre1
5698	808	1	y	and.CONJ		KEV	3	sastre1
5717	811	9	tv	unk	\N	SOF	0	sastre1
5718	811	10	and	and.CONJ	\N	SOF	2	sastre1
5719	811	11	computers	computer.N.PL	\N	SOF	2	sastre1
5720	811	12	all	all.ADJ	\N	SOF	2	sastre1
5722	811	14	.	\N	\N	SOF	999	sastre1
5725	812	3	.	\N	\N	KEV	999	sastre1
5724	812	2	yeah	yeah.ADV	\N	KEV	2	sastre1
5745	813	20	.	\N	\N	KEV	999	sastre1
5727	813	2	they'll	they.PRON.SUB.3P.+BE.V.FUT	\N	KEV	2	sastre1
5747	814	2	.	\N	\N	KEV	999	sastre1
5748	815	1	pero	but.CONJ		KEV	3	sastre1
5759	815	12	.	\N	\N	KEV	999	sastre1
5749	815	2	ya	already.ADV	\N	KEV	3	sastre1
5772	816	13	?	\N	\N	SOF	999	sastre1
5761	816	2	are	are.V.123P.PRES	\N	SOF	2	sastre1
5777	817	5	?	\N	\N	SOF	999	sastre1
5775	817	3	heard	heard.V.PASTPART	\N	SOF	2	sastre1
5784	818	7	?	\N	\N	SOF	999	sastre1
5780	818	3	mentioned	mention.V.PASTPART	\N	SOF	2	sastre1
5786	819	2	.	\N	\N	KEV	999	sastre1
5787	820	1	no	no.ADV		KEV	2	sastre1
5791	820	5	.	\N	\N	KEV	999	sastre1
5788	820	2	there	there.ADV	\N	KEV	2	sastre1
5799	821	8	.	\N	\N	SOF	999	sastre1
5794	821	3	think	think.V.1S.PRES	\N	SOF	2	sastre1
5823	822	24	.	\N	\N	SOF	999	sastre1
5801	822	2	mean	mean.V.1S.PRES	\N	SOF	2	sastre1
5825	823	2	you	you.PRON.SUB.2SP	\N	KEV	2	sastre1
5721	811	13	day	day.N.SG	\N	SOF	2	sastre1
5723	812	1	yeah	yeah.ADV		KEV	2	sastre1
5726	813	1	no	no.ADV		KEV	2	sastre1
5728	813	3	be	be.SV.INFIN	\N	KEV	2	sastre1
5729	813	4	catching	catch.V.PRESPART	\N	KEV	2	sastre1
5730	813	5	fish	fish.N.SG	\N	KEV	2	sastre1
5731	813	6	because	because.CONJ	\N	KEV	2	sastre1
5732	813	7	you	you.PRON.SUB.2SP	\N	KEV	2	sastre1
5733	813	8	see	see.V.2SP.PRES	\N	KEV	2	sastre1
5734	813	9	them	them.PRON.OBJ.3P	\N	KEV	2	sastre1
5735	813	10	you	you.PRON.SUB.2SP	\N	KEV	2	sastre1
5736	813	11	know	know.V.2SP.PRES	\N	KEV	2	sastre1
5737	813	12	bringing	bring.V.PRESPART	\N	KEV	2	sastre1
5738	813	13	up	up.ADV	\N	KEV	2	sastre1
5739	813	14	fish	fish.N.SG	\N	KEV	2	sastre1
5740	813	15	every	every.ADJ	\N	KEV	2	sastre1
5741	813	16	once	once.ADV	\N	KEV	2	sastre1
5742	813	17	in	in.PREP	\N	KEV	2	sastre1
5743	813	18	a	a.DET.INDEF	\N	KEV	2	sastre1
5744	813	19	while	while.CONJ	\N	KEV	2	sastre1
5746	814	1	mmhm	unk		KEV	0	sastre1
5750	815	3	le	him.PRON.OBL.MF.23S	\N	KEV	3	sastre1
5751	815	4	está	be.V.23S.PRES	\N	KEV	3	sastre1
5752	815	5	cogiendo	take.V.PRESPART	\N	KEV	3	sastre1
5753	815	6	la	the.DET.DEF.F.SG	\N	KEV	3	sastre1
5754	815	7	noche	night.N.F.SG	\N	KEV	3	sastre1
5755	815	8	y	and.CONJ	\N	KEV	3	sastre1
5756	815	9	ya	already.ADV	\N	KEV	3	sastre1
5757	815	10	se	be.V.2P.IMPER.PRECLITIC.PRECLITIC	\N	KEV	3	sastre1
5758	815	11	van	go.V.23P.PRES	\N	KEV	3	sastre1
5760	816	1	and	and.CONJ		SOF	2	sastre1
5762	816	3	they	they.PRON.SUB.3P	\N	SOF	2	sastre1
5764	816	5	on	on.PREP	\N	SOF	2	sastre1
5765	816	6	doing	do.V.PRESPART	\N	SOF	2	sastre1
5766	816	7	something	something.PRON	\N	SOF	2	sastre1
5767	816	8	on	on.PREP	\N	SOF	2	sastre1
5768	816	9	the	the.DET.DEF	\N	SOF	2	sastre1
5770	816	11	like	like.CONJ	\N	SOF	2	sastre1
5771	816	12	cleaning	clean.V.PRESPART	\N	SOF	2	sastre1
5773	817	1	have	have.V.INFIN		SOF	2	sastre1
5776	817	4	anything	anything.PRON	\N	SOF	2	sastre1
5778	818	1	they	they.PRON.SUB.3P		SOF	2	sastre1
5781	818	4	anything	anything.PRON	\N	SOF	2	sastre1
5782	818	5	about	about.PREP	\N	SOF	2	sastre1
5783	818	6	that	that.DEM.FAR	\N	SOF	2	sastre1
5789	820	3	is	is.V.3S.PRES	\N	KEV	2	sastre1
5790	820	4	not	not.ADV	\N	KEV	2	sastre1
5792	821	1	because	because.CONJ		SOF	2	sastre1
5795	821	4	it's	it.PRON.SUB.3S.+HAVE.V.3S.PAST	\N	SOF	2	sastre1
5797	821	6	a	a.DET.INDEF	\N	SOF	2	sastre1
5798	821	7	while	while.CONJ	\N	SOF	2	sastre1
5800	822	1	I	I.PRON.SUB.1S		SOF	2	sastre1
5803	822	4	been	been.V.PASTPART	\N	SOF	2	sastre1
5804	822	5	moved	move.V.PASTPART	\N	SOF	2	sastre1
5805	822	6	in	in.PREP	\N	SOF	2	sastre1
5806	822	7	here	here.ADV	\N	SOF	2	sastre1
5808	822	9	almost	almost.ADV	\N	SOF	2	sastre1
5809	822	10	sixteen	sixteen.N.SG	\N	SOF	2	sastre1
5810	822	11	yo	I.PRON.SUB.MF.1S	\N	SOF	3	sastre1
5812	822	13	que	that.CONJ	\N	SOF	3	sastre1
5813	822	14	like	like.CONJ	\N	SOF	2	sastre1
5814	822	15	fifteen	fifteen.NUM	\N	SOF	2	sastre1
5815	822	16	or	or.CONJ	\N	SOF	2	sastre1
5816	822	17	sixteen	sixteen.N.SG	\N	SOF	2	sastre1
5818	822	19	and	and.CONJ	\N	SOF	2	sastre1
5819	822	20	they	they.PRON.SUB.3P	\N	SOF	2	sastre1
5820	822	21	haven't	have.V.3P.PRES.+NEG	\N	SOF	2	sastre1
5822	822	23	anything	anything.PRON	\N	SOF	2	sastre1
5824	823	1	because	because.CONJ		KEV	2	sastre1
5826	823	3	know	know.V.2SP.PRES	\N	KEV	2	sastre1
5828	823	5	thing	thing.N.SG	\N	KEV	2	sastre1
5829	823	6	here	here.ADV	\N	KEV	2	sastre1
5830	823	7	is	is.V.3S.PRES	\N	KEV	2	sastre1
5832	823	9	the	the.DET.DEF	\N	KEV	2	sastre1
5833	823	10	lake	lake.N.SG	\N	KEV	2	sastre1
5834	823	11	doesn't	does.N.SG.+NEG	\N	KEV	2	sastre1
5835	823	12	belong	belong.N.SG	\N	KEV	2	sastre1
5840	823	17	.	\N	\N	KEV	999	sastre1
5851	824	11	.	\N	\N	KEV	999	sastre1
5842	824	2	part	part.N.SG	\N	KEV	2	sastre1
5862	825	11	.	\N	\N	KEV	999	sastre1
5853	825	2	then	then.ADV	\N	KEV	2	sastre1
5868	826	6	.	\N	\N	KEV	999	sastre1
5863	826	1	that	that.DEM.FAR[or]that.CONJ		KEV	2	sastre1
5870	827	2	.	\N	\N	SOF	999	sastre1
5871	828	1	is	is.V.3S.PRES		KEV	2	sastre1
5875	828	5	.	\N	\N	KEV	999	sastre1
5872	828	2	a	a.DET.INDEF	\N	KEV	2	sastre1
5886	829	11	.	\N	\N	KEV	999	sastre1
5877	829	2	then	then.ADV	\N	KEV	2	sastre1
5904	830	18	.	\N	\N	KEV	999	sastre1
5888	830	2	the	the.DET.DEF	\N	KEV	2	sastre1
5908	831	4	.	\N	\N	KEV	999	sastre1
5906	831	2	had	had.V.PAST	\N	KEV	2	sastre1
5920	832	12	.	\N	\N	KEV	999	sastre1
5910	832	2	we	we.PRON.SUB.1P	\N	KEV	2	sastre1
5935	833	15	.	\N	\N	KEV	999	sastre1
5922	833	2	fueron	be.V.3P.PAST	\N	KEV	3	sastre1
5937	834	2	.	\N	\N	SOF	999	sastre1
5939	835	2	de	of.PREP	\N	KEV	3	sastre1
5944	835	7	.	\N	\N	KEV	999	sastre1
5940	835	3	los	the.DET.DEF.M.PL	\N	KEV	3	sastre1
5946	836	2	.	\N	\N	SOF	999	sastre1
5947	837	1	uno	one.PRON.M.SG		KEV	3	sastre1
5955	837	9	.	\N	\N	KEV	999	sastre1
5948	837	2	de	of.PREP	\N	KEV	3	sastre1
5958	838	3	look	look.SV.INFIN	SOF	KEV	2	sastre1
5836	823	13	just	just.ADV	\N	KEV	2	sastre1
5837	823	14	to	to.PREP	\N	KEV	2	sastre1
5838	823	15	one	one.PRON.SG	\N	KEV	2	sastre1
5841	824	1	the	the.DET.DEF		KEV	2	sastre1
5843	824	3	of	of.PREP	\N	KEV	2	sastre1
5844	824	4	the	the.DET.DEF	\N	KEV	2	sastre1
5845	824	5	lake	lake.N.SG	\N	KEV	2	sastre1
5847	824	7	the	the.DET.DEF	\N	KEV	2	sastre1
5848	824	8	water	water.N.SG	\N	KEV	2	sastre1
5849	824	9	management	management.N.SG	\N	KEV	2	sastre1
5852	825	1	pero	but.CONJ		KEV	3	sastre1
5854	825	3	when	when.CONJ	\N	KEV	2	sastre1
5855	825	4	you	you.PRON.SUB.2SP	\N	KEV	2	sastre1
5856	825	5	come	come.V.2SP.PRES	\N	KEV	2	sastre1
5859	825	8	the	the.DET.DEF	\N	KEV	2	sastre1
5858	825	7	like	like.CONJ[or]like.SV.INFIN	\N	KEV	2	sastre1
5861	825	10	feet	feet.N.SG	\N	KEV	2	sastre1
5864	826	2	strip	strip.V.INFIN	\N	KEV	2	sastre1
5865	826	3	there	there.ADV	\N	KEV	2	sastre1
5867	826	5	canal	channel.N.M.SG	\N	KEV	3	sastre1
5869	827	1	mmhm	unk		SOF	0	sastre1
5873	828	3	water	water.N.SG	\N	KEV	2	sastre1
5876	829	1	but	but.CONJ		KEV	2	sastre1
5878	829	3	when	when.CONJ	\N	KEV	2	sastre1
5879	829	4	you	you.PRON.SUB.2SP	\N	KEV	2	sastre1
5881	829	6	into	into.PREP	\N	KEV	2	sastre1
5882	829	7	the	the.DET.DEF	\N	KEV	2	sastre1
5883	829	8	lake	lake.N.SG	\N	KEV	2	sastre1
5885	829	10	Miami_Lakes	name	\N	KEV	0	sastre1
5887	830	1	is	is.V.3S.PRES		KEV	2	sastre1
5889	830	3	residence	residence.N.SG	\N	KEV	2	sastre1
5890	830	4	of	of.PREP	\N	KEV	2	sastre1
5891	830	5	Miami_Lakes	name	\N	KEV	0	sastre1
5892	830	6	in	in.PREP	\N	KEV	2	sastre1
5894	830	8	so	so.ADV	\N	KEV	2	sastre1
5895	830	9	since	since.PREP	\N	KEV	2	sastre1
5896	830	10	it's	it.PRON.OBJ.3S.+BE.V.3S.PRES	\N	KEV	2	sastre1
5897	830	11	such	such.ADJ	\N	KEV	2	sastre1
5899	830	13	mix	mix.N.SG	\N	KEV	2	sastre1
5900	830	14	they	they.PRON.SUB.3P	\N	KEV	2	sastre1
5901	830	15	don't	do.V.3P.PRES.+NEG	\N	KEV	2	sastre1
5903	830	17	anything	anything.PRON	\N	KEV	2	sastre1
5905	831	1	I	I.PRON.SUB.1S		KEV	2	sastre1
5907	831	3	a	a.DET.INDEF	\N	KEV	2	sastre1
5911	832	3	first	first.ADV	\N	KEV	2	sastre1
5912	832	4	moved	move.V.PASTPART	\N	KEV	2	sastre1
5913	832	5	here	here.ADV	\N	KEV	2	sastre1
5915	832	7	when	when.CONJ	\N	KEV	2	sastre1
5916	832	8	we	we.PRON.SUB.1P	\N	KEV	2	sastre1
5917	832	9	first	first.ADV	\N	KEV	2	sastre1
5919	832	11	here	here.ADV	\N	KEV	2	sastre1
5921	833	1	cuando	when.CONJ		KEV	3	sastre1
5923	833	3	las	the.DET.DEF.F.PL	\N	KEV	3	sastre1
5925	833	5	de	of.PREP	\N	KEV	3	sastre1
5926	833	6	aquí	here.ADV	\N	KEV	3	sastre1
5927	833	7	en	in.PREP	\N	KEV	3	sastre1
5928	833	8	Miami_Lakes	name	\N	KEV	0	sastre1
5929	833	9	que	that.CONJ	\N	KEV	3	sastre1
5931	833	11	formó	form.V.3S.PAST	\N	KEV	3	sastre1
5932	833	12	el	the.DET.DEF.M.SG	\N	KEV	3	sastre1
5933	833	13	primer	first.ORD.M.SG	\N	KEV	3	sastre1
5934	833	14	viaje	voyage.N.M.SG	\N	KEV	3	sastre1
5936	834	1	mmhm	unk		SOF	0	sastre1
5941	835	4	comisionados	commissioners.N.M.PL	\N	KEV	3	sastre1
5942	835	5	que	that.PRON.REL	\N	KEV	3	sastre1
5945	836	1	mmhm	unk		SOF	0	sastre1
5949	837	3	los	the.DET.DEF.M.PL	\N	KEV	3	sastre1
5951	837	5	jóvenes	young.ADJ.M.PL	\N	KEV	3	sastre1
5952	837	6	vino	wine.N.M.SG	\N	KEV	3	sastre1
5953	837	7	por	for.PREP	\N	KEV	3	sastre1
5954	837	8	aquí	here.ADV	\N	KEV	3	sastre1
5956	838	1	y	and.CONJ	phone	KEV	3	sastre1
5971	838	16	.	\N	\N	KEV	999	sastre1
5961	838	6	a	a.DET.INDEF	the	KEV	2	sastre1
5962	838	7	good	good.ADJ	phone,	KEV	2	sastre1
5964	838	9	for	for.PREP	phone	KEV	2	sastre1
5965	838	10	you	you.PRON.OBJ.2SP	conversation	KEV	2	sastre1
5966	838	11	to	to.PREP	starts.	KEV	2	sastre1
5967	838	12	look	look.V.INFIN	\N	KEV	2	sastre1
5968	838	13	at	at.PREP	\N	KEV	2	sastre1
5975	839	4	.	\N	\N	SOF	999	sastre1
5973	839	2	me	me.PRON.OBJ.1S	\N	SOF	2	sastre1
5984	840	9	.	\N	\N	SOF	999	sastre1
5977	840	2	in	in.PREP	\N	SOF	2	sastre1
5986	841	2	.	\N	\N	SOF	999	sastre1
5987	842	1	talking	talk.V.PRESPART		SOF	2	sastre1
5988	842	2	.	\N	\N	SOF	999	sastre1
5989	843	1	I'll	I.PRON.SUB.1S.+BE.V.FUT		SOF	2	sastre1
5993	843	5	.	\N	\N	SOF	999	sastre1
5990	843	2	be	be.V.INFIN	\N	SOF	2	sastre1
5999	844	6	.	\N	\N	KEV	999	sastre1
5995	844	2	que	that.CONJ	\N	KEV	3	sastre1
6005	845	6	.	\N	\N	SOF	999	sastre1
6001	845	2	que	that.CONJ	\N	SOF	3	sastre1
6023	846	18	.	\N	\N	SOF	999	sastre1
6007	846	2	déjanos	leave.V.2S.IMPER.PRECLITIC.PRECLITIC	\N	SOF	3	sastre1
6030	847	7	.	\N	\N	KEV	999	sastre1
6027	847	4	este	this.PRON.DEM.M.SG	\N	KEV	3	sastre1
6031	848	1	.	\N		SOF	999	sastre1
6033	849	2	.	\N	\N	KEV	999	sastre1
6034	850	1	qué	what.INT		KEV	3	sastre1
6038	850	5	?	\N	\N	KEV	999	sastre1
6035	850	2	te	you.PRON.OBL.MF.2S	\N	KEV	3	sastre1
6046	851	8	.	\N	\N	SOF	999	sastre1
6040	851	2	lo	the.DET.DEF.NT.SG	\N	SOF	3	sastre1
6059	852	13	.	\N	\N	KEV	999	sastre1
6048	852	2	sí	yes.ADV	\N	KEV	3	sastre1
6069	853	10	.	\N	\N	KEV	999	sastre1
6061	853	2	digo	tell.V.1S.PRES	\N	KEV	3	sastre1
6071	854	2	basura	rubbish.N.F.SG	\N	KEV	3	sastre1
5957	838	2	listen	listen.V.INFIN	ringing,	KEV	2	sastre1
5960	838	5	is	is.V.3S.PRES	up	KEV	2	sastre1
5969	838	14	to	to.PREP	\N	KEV	2	sastre1
5970	838	15	do	do.V.INFIN	\N	KEV	2	sastre1
5974	839	3	hello	hello.N.SG	\N	SOF	2	sastre1
5976	840	1	I'm	I.PRON.SUB.1S.+BE.V.PRES		SOF	2	sastre1
5979	840	4	I	I.PRON.SUB.1S	\N	SOF	2	sastre1
5980	840	5	got	got.V.PAST	\N	SOF	2	sastre1
5981	840	6	five	five.NUM	\N	SOF	2	sastre1
5982	840	7	more	more.ADJ	\N	SOF	2	sastre1
5985	841	1	talking	talk.V.PRESPART		SOF	2	sastre1
5991	843	3	right	right.ADJ	\N	SOF	2	sastre1
5994	844	1	dile	tell.V.2S.IMPER		KEV	3	sastre1
5996	844	3	venga	avenge.V.2S.IMPER	\N	KEV	3	sastre1
5998	844	5	acá	here.ADV	\N	KEV	3	sastre1
6000	845	1	dile	tell.V.2S.IMPER		SOF	3	sastre1
6002	845	3	venga	avenge.V.2S.IMPER	\N	SOF	3	sastre1
6004	845	5	acá	here.ADV	\N	SOF	3	sastre1
6006	846	1	no	not.ADV		SOF	3	sastre1
6008	846	3	acabar	finish.V.INFIN	\N	SOF	3	sastre1
6010	846	5	hablar	talk.V.INFIN	\N	SOF	3	sastre1
6011	846	6	que	that.CONJ	\N	SOF	3	sastre1
6012	846	7	nos	us.PRON.OBL.MF.1P	\N	SOF	3	sastre1
6014	846	9	five	five.NUM	\N	SOF	2	sastre1
6015	846	10	more	more.ADJ	\N	SOF	2	sastre1
6016	846	11	minutes	minute.N.PL	\N	SOF	2	sastre1
6017	846	12	and	and.CONJ	\N	SOF	2	sastre1
6018	846	13	they	they.PRON.SUB.3P	\N	SOF	2	sastre1
6020	846	15	recording	record.V.PRESPART	\N	SOF	2	sastre1
6021	846	16	us	us.PRON.OBJ.1P	\N	SOF	2	sastre1
6022	846	17	bye	bye.N.SG	\N	SOF	2	sastre1
6024	847	1	we	we.PRON.SUB.1P		KEV	2	sastre1
6026	847	3	usamos	use.V.1P.PRES[or]use.V.1P.PAST	\N	KEV	3	sastre1
6029	847	6	guinea_pig	guinea_pig.N.SG	\N	KEV	2	sastre1
6032	849	1	er	unk		KEV	0	sastre1
6037	850	4	diciendo	tell.V.PRESPART	\N	KEV	3	sastre1
6039	851	1	oh	unk		SOF	0	sastre1
6041	851	3	del	of_the.PREP+DET.DEF.M.SG	\N	SOF	3	sastre1
6043	851	5	que	that.PRON.REL	\N	SOF	3	sastre1
6044	851	6	vino	wine.N.M.SG	\N	SOF	3	sastre1
6045	851	7	aquí	here.ADV	\N	SOF	3	sastre1
6047	852	1	ah	unk		KEV	0	sastre1
6049	852	3	el	the.DET.DEF.M.SG	\N	KEV	3	sastre1
6051	852	5	estaba	be.V.13S.IMPERF	\N	KEV	3	sastre1
6052	852	6	corriendo	run.V.PRESPART	\N	KEV	3	sastre1
6053	852	7	para	stall.V.2S.IMPER	\N	KEV	3	sastre1
6055	852	9	tú	you.PRON.SUB.MF.2S	\N	KEV	3	sastre1
6056	852	10	ves	see.V.2S.PRES	\N	KEV	3	sastre1
6057	852	11	tú	you.PRON.SUB.MF.2S	\N	KEV	3	sastre1
6060	853	1	le	him.PRON.OBL.MF.23S		KEV	3	sastre1
6062	853	3	esa	that.ADJ.DEM.F.SG	\N	KEV	3	sastre1
6064	853	5	no	not.ADV	\N	KEV	3	sastre1
6065	853	6	es	be.V.23S.PRES	\N	KEV	3	sastre1
6066	853	7	basura	rubbish.N.F.SG	\N	KEV	3	sastre1
6067	853	8	de	of.PREP	\N	KEV	3	sastre1
6070	854	1	esa	that.ADJ.DEM.F.SG		KEV	3	sastre1
6072	854	3	es	be.V.23S.PRES	\N	KEV	3	sastre1
6073	854	4	cuando	when.CONJ	\N	KEV	3	sastre1
6075	854	6	condado	county.N.M.SG	\N	KEV	3	sastre1
6076	854	7	o	or.CONJ	\N	KEV	3	sastre1
6077	854	8	el	the.DET.DEF.M.SG	\N	KEV	3	sastre1
6078	854	9	water	water.N.SG	\N	KEV	2	sastre1
6080	854	11	district	district.N.SG	\N	KEV	2	sastre1
6088	854	19	.	\N	\N	KEV	999	sastre1
6094	855	6	.	\N	\N	KEV	999	sastre1
6091	855	3	con	with.PREP	\N	KEV	3	sastre1
6096	856	2	.	\N	\N	SOF	999	sastre1
6097	857	1	y	and.CONJ		KEV	3	sastre1
6102	857	6	.	\N	\N	KEV	999	sastre1
6099	857	3	toda	all.ADJ.F.SG	\N	KEV	3	sastre1
6116	858	14	.	\N	\N	KEV	999	sastre1
6105	858	3	tres	three.NUM	\N	KEV	3	sastre1
6125	859	9	.	\N	\N	KEV	999	sastre1
6118	859	2	después	afterwards.ADV	\N	KEV	3	sastre1
6139	860	14	.	\N	\N	KEV	999	sastre1
6127	860	2	tú	you.PRON.SUB.MF.2S	\N	KEV	3	sastre1
6148	861	9	.	\N	\N	KEV	999	sastre1
6141	861	2	es	be.V.23S.PRES	\N	KEV	3	sastre1
6160	862	12	.	\N	\N	KEV	999	sastre1
6150	862	2	no	not.ADV	\N	KEV	3	sastre1
6165	863	5	.	\N	\N	KEV	999	sastre1
6162	863	2	han	have.V.23P.PRES	\N	KEV	3	sastre1
6176	864	11	.	\N	\N	KEV	999	sastre1
6167	864	2	vez	time.N.F.SG	\N	KEV	3	sastre1
6179	865	3	?	\N	\N	SOF	999	sastre1
6178	865	2	pasa	pass.V.2S.IMPER	\N	SOF	3	sastre1
6184	866	5	.	\N	\N	KEV	999	sastre1
6182	866	3	ellos	they.PRON.SUB.M.3P	\N	KEV	3	sastre1
6188	867	4	?	\N	\N	SOF	999	sastre1
6186	867	2	qué	what.INT	\N	SOF	3	sastre1
6196	868	8	.	\N	\N	KEV	999	sastre1
6190	868	2	o	or.CONJ	\N	KEV	3	sastre1
6199	869	3	.	\N	\N	SOF	999	sastre1
6198	869	2	now	now.ADV	\N	SOF	2	sastre1
6201	870	2	.	\N	\N	KEV	999	sastre1
6202	871	1	un	one.DET.INDEF.M.SG		KEV	3	sastre1
6204	871	3	que	that.PRON.REL	\N	KEV	3	sastre1
6082	854	13	y	and.CONJ	\N	KEV	3	sastre1
6083	854	14	limpia	clean.V.2S.IMPER	\N	KEV	3	sastre1
6084	854	15	el	the.DET.DEF.M.SG	\N	KEV	3	sastre1
6086	854	17	de	of.PREP	\N	KEV	3	sastre1
6087	854	18	ellos	they.PRON.SUB.M.3P	\N	KEV	3	sastre1
6089	855	1	ellos	they.PRON.SUB.M.3P		KEV	3	sastre1
6092	855	4	las	the.DET.DEF.F.PL	\N	KEV	3	sastre1
6093	855	5	palas	spades.N.F.PL	\N	KEV	3	sastre1
6095	856	1	everything	everything.PRON		SOF	2	sastre1
6100	857	4	la	the.DET.DEF.F.SG	\N	KEV	3	sastre1
6101	857	5	basura	rubbish.N.F.SG	\N	KEV	3	sastre1
6103	858	1	entonces	then.ADV		KEV	3	sastre1
6106	858	4	millas	mile.N.F.PL	\N	KEV	3	sastre1
6107	858	5	con	with.PREP	\N	KEV	3	sastre1
6108	858	6	las	the.DET.DEF.F.PL	\N	KEV	3	sastre1
6109	858	7	palas	spades.N.F.PL	\N	KEV	3	sastre1
6111	858	9	abajo	below.ADV	\N	KEV	3	sastre1
6112	858	10	rompiendo	smash.V.PRESPART	\N	KEV	3	sastre1
6113	858	11	toda	all.ADJ.F.SG	\N	KEV	3	sastre1
6115	858	13	hierba	grass.N.F.SG	\N	KEV	3	sastre1
6117	859	1	y	and.CONJ		KEV	3	sastre1
6119	859	3	echan	chuck.V.23P.PRES	\N	KEV	3	sastre1
6121	859	5	palazo	shovel.N.M.SG	\N	KEV	3	sastre1
6122	859	6	arriba	arrive.V.2S.IMPER	\N	KEV	3	sastre1
6123	859	7	del	of_the.PREP+DET.DEF.M.SG	\N	KEV	3	sastre1
6126	860	1	pero	but.CONJ		KEV	3	sastre1
6128	860	3	sabes	know.V.2S.PRES	\N	KEV	3	sastre1
6130	860	5	palazos	shovels.N.M.PL	\N	KEV	3	sastre1
6131	860	6	iban	go.V.3P.IMPERF	\N	KEV	3	sastre1
6132	860	7	rotos	smash.V.M.PL.PASTPART	\N	KEV	3	sastre1
6134	860	9	ahí	there.ADV	\N	KEV	3	sastre1
6135	860	10	que	that.CONJ	\N	KEV	3	sastre1
6136	860	11	los	them.PRON.OBJ.M.3P	\N	KEV	3	sastre1
6138	860	13	flotando	float.V.PRESPART	\N	KEV	3	sastre1
6140	861	1	eso	that.PRON.DEM.NT.SG		KEV	3	sastre1
6142	861	3	lo	the.DET.DEF.NT.SG	\N	KEV	3	sastre1
6144	861	5	tú	you.PRON.SUB.MF.2S	\N	KEV	3	sastre1
6145	861	6	estás	be.V.2S.PRES	\N	KEV	3	sastre1
6146	861	7	viendo	see.V.PRESPART	\N	KEV	3	sastre1
6149	862	1	dice	tell.V.23S.PRES		KEV	3	sastre1
6151	862	3	ahora	now.ADV	\N	KEV	3	sastre1
6152	862	4	ahora	now.ADV	\N	KEV	3	sastre1
6153	862	5	vamos	go.V.1P.PRES	\N	KEV	3	sastre1
6155	862	7	mirar	watch.V.INFIN	\N	KEV	3	sastre1
6156	862	8	esto	this.PRON.DEM.NT.SG	\N	KEV	3	sastre1
6158	862	10	lo	the.DET.DEF.NT.SG	\N	KEV	3	sastre1
6159	862	11	otro	other.PRON.M.SG	\N	KEV	3	sastre1
6161	863	1	nunca	never.ADV		KEV	3	sastre1
6164	863	4	nada	swim.V.2S.IMPER	\N	KEV	3	sastre1
6166	864	1	cada	every.ADJ.MF.SG		KEV	3	sastre1
6168	864	3	que	that.PRON.REL	\N	KEV	3	sastre1
6170	864	5	el	the.DET.DEF.M.SG	\N	KEV	3	sastre1
6171	864	6	condado	county.N.M.SG	\N	KEV	3	sastre1
6172	864	7	por	for.PREP	\N	KEV	3	sastre1
6173	864	8	ahí	there.ADV	\N	KEV	3	sastre1
6175	864	10	la	the.DET.DEF.F.SG	\N	KEV	3	sastre1
6177	865	1	y	and.CONJ		SOF	3	sastre1
6180	866	1	sí	yes.ADV		KEV	3	sastre1
6183	866	4	pasan	pass.V.23P.PRES	\N	KEV	3	sastre1
6185	867	1	cada	every.ADJ.MF.SG		SOF	3	sastre1
6189	868	1	dos	two.NUM		KEV	3	sastre1
6191	868	3	tres	three.NUM	\N	KEV	3	sastre1
6192	868	4	veces	time.N.F.PL	\N	KEV	3	sastre1
6194	868	6	año	year.N.M.SG	\N	KEV	3	sastre1
6195	868	7	vienen	come.V.23P.PRES	\N	KEV	3	sastre1
6197	869	1	right	right.ADJ		SOF	2	sastre1
6200	870	1	sí	yes.ADV		KEV	3	sastre1
6213	871	12	.	\N	\N	KEV	999	sastre1
6225	872	12	?	\N	\N	KEV	999	sastre1
6215	872	2	no	not.ADV	\N	KEV	3	sastre1
6229	873	4	.	\N	\N	SOF	999	sastre1
6228	873	3	sí	yes.ADV	\N	SOF	3	sastre1
6235	874	6	.	\N	\N	KEV	999	sastre1
6231	874	2	un	one.DET.INDEF.M.SG	\N	KEV	3	sastre1
6240	875	5	.	\N	\N	SOF	999	sastre1
6237	875	2	sí	yes.ADV	\N	SOF	3	sastre1
6243	876	3	.	\N	\N	KEV	999	sastre1
6242	876	2	bueno	well.IM	\N	KEV	3	sastre1
6245	877	2	.	\N	\N	SOF	999	sastre1
6246	878	1	esos	that.PRON.DEM.M.PL		KEV	3	sastre1
6250	878	5	.	\N	\N	KEV	999	sastre1
6248	878	3	hasta	until.PREP	\N	KEV	3	sastre1
6260	879	10	.	\N	\N	SOF	999	sastre1
6252	879	2	de	of.PREP	\N	SOF	3	sastre1
6265	880	5	.	\N	\N	KEV	999	sastre1
6262	880	2	caminan	walk.V.23P.PRES	\N	KEV	3	sastre1
6269	881	4	?	\N	\N	KEV	999	sastre1
6267	881	2	qué	what.INT	\N	KEV	3	sastre1
6285	882	16	.	\N	\N	KEV	999	sastre1
6271	882	2	ellos	they.PRON.SUB.M.3P	\N	KEV	3	sastre1
6294	883	9	.	\N	\N	KEV	999	sastre1
6287	883	2	en	in.PREP	\N	KEV	3	sastre1
6301	884	7	.	\N	\N	KEV	999	sastre1
6297	884	3	hasta	until.PREP	\N	KEV	3	sastre1
6311	885	10	.	\N	\N	KEV	999	sastre1
6303	885	2	si	if.CONJ	\N	KEV	3	sastre1
6327	886	16	.	\N	\N	KEV	999	sastre1
6313	886	2	crees	believe.V.2S.PRES	\N	KEV	3	sastre1
6206	871	5	los	the.DET.DEF.M.PL	\N	KEV	3	sastre1
6207	871	6	que	that.PRON.REL	\N	KEV	3	sastre1
6208	871	7	ponen	put.V.23P.PRES	\N	KEV	3	sastre1
6210	871	9	en	in.PREP	\N	KEV	3	sastre1
6211	871	10	Red	name	\N	KEV	2	sastre1
6212	871	11	Road	name	\N	KEV	2	sastre1
6214	872	1	tú	you.PRON.SUB.MF.2S		KEV	3	sastre1
6217	872	4	has	have.V.2S.PRES	\N	KEV	3	sastre1
6218	872	5	fijado	fix.V.PASTPART	\N	KEV	3	sastre1
6219	872	6	allá	there.ADV	\N	KEV	3	sastre1
6220	872	7	en	in.PREP	\N	KEV	3	sastre1
6222	872	9	esquina	corner.N.F.SG	\N	KEV	3	sastre1
6223	872	10	del	of_the.PREP+DET.DEF.M.SG	\N	KEV	3	sastre1
6224	872	11	aeropuerto	airport.N.M.SG	\N	KEV	3	sastre1
6226	873	1	sí	yes.ADV		SOF	3	sastre1
6230	874	1	una	a.DET.INDEF.F.SG		KEV	3	sastre1
6232	874	3	lugar	place.N.M.SG	\N	KEV	3	sastre1
6234	874	5	ponen	put.V.23P.PRES	\N	KEV	3	sastre1
6236	875	1	ahí	there.ADV		SOF	3	sastre1
6238	875	3	yo	I.PRON.SUB.MF.1S	\N	SOF	3	sastre1
6241	876	1	eso	that.PRON.DEM.NT.SG		KEV	3	sastre1
6244	877	1	mmhm	unk		SOF	0	sastre1
6249	878	4	aquí	here.ADV	\N	KEV	3	sastre1
6251	879	1	no	not.ADV		SOF	3	sastre1
6253	879	3	verdad	truth.N.F.SG	\N	SOF	3	sastre1
6254	879	4	yo	I.PRON.SUB.MF.1S	\N	SOF	3	sastre1
6256	879	6	me	me.PRON.OBL.MF.1S	\N	SOF	3	sastre1
6257	879	7	había	have.V.13S.IMPERF	\N	SOF	3	sastre1
6258	879	8	fijado	fix.V.PASTPART	\N	SOF	3	sastre1
6261	880	1	ellos	they.PRON.SUB.M.3P		KEV	3	sastre1
6263	880	3	por	for.PREP	\N	KEV	3	sastre1
6266	881	1	pero	but.CONJ		KEV	3	sastre1
6268	881	3	pasa	pass.V.2S.IMPER	\N	KEV	3	sastre1
6270	882	1	que	that.CONJ		KEV	3	sastre1
6273	882	4	ellos	they.PRON.SUB.M.3P	\N	KEV	3	sastre1
6274	882	5	bajan	lower.V.23P.PRES	\N	KEV	3	sastre1
6275	882	6	la	the.DET.DEF.F.SG	\N	KEV	3	sastre1
6277	882	8	y	and.CONJ	\N	KEV	3	sastre1
6278	882	9	van	go.V.23P.PRES	\N	KEV	3	sastre1
6279	882	10	caminando	walk.V.PRESPART	\N	KEV	3	sastre1
6280	882	11	y	and.CONJ	\N	KEV	3	sastre1
6282	882	13	rompiendo	smash.V.PRESPART	\N	KEV	3	sastre1
6283	882	14	esa	that.ADJ.DEM.F.SG	\N	KEV	3	sastre1
6286	883	1	pero	but.CONJ		KEV	3	sastre1
6288	883	3	vez	time.N.F.SG	\N	KEV	3	sastre1
6289	883	4	de	of.PREP	\N	KEV	3	sastre1
6290	883	5	hacer	do.V.INFIN	\N	KEV	3	sastre1
6292	883	7	pedacito	bit.N.M.SG.DIM.DIM	\N	KEV	3	sastre1
6293	883	8	cortico	short.ADJ.M.SG.DIM.DIM	\N	KEV	3	sastre1
6295	884	1	y	and.CONJ		KEV	3	sastre1
6298	884	4	el	the.DET.DEF.M.SG	\N	KEV	3	sastre1
6299	884	5	camión	lorry.N.M.SG	\N	KEV	3	sastre1
6300	884	6	no	not.ADV	\N	KEV	3	sastre1
6304	885	3	el	the.DET.DEF.M.SG	\N	KEV	3	sastre1
6305	885	4	camión	lorry.N.M.SG	\N	KEV	3	sastre1
6306	885	5	está	be.V.23S.PRES	\N	KEV	3	sastre1
6308	885	7	a	to.PREP	\N	KEV	3	sastre1
6309	885	8	cuatro	four.NUM	\N	KEV	3	sastre1
6310	885	9	cuadras	blocks.N.F.PL	\N	KEV	3	sastre1
6312	886	1	tú	you.PRON.SUB.MF.2S		KEV	3	sastre1
6315	886	4	ellos	they.PRON.SUB.M.3P	\N	KEV	3	sastre1
6316	886	5	van	go.V.23P.PRES	\N	KEV	3	sastre1
6317	886	6	a	to.PREP	\N	KEV	3	sastre1
6319	886	8	un	one.DET.INDEF.M.SG	\N	KEV	3	sastre1
6320	886	9	poquito	little.ADJ.M.SG.DIM.DIM	\N	KEV	3	sastre1
6321	886	10	y	and.CONJ	\N	KEV	3	sastre1
6323	886	12	y	and.CONJ	\N	KEV	3	sastre1
6324	886	13	botarlo	bounce.V.INFIN	\N	KEV	3	sastre1
6325	886	14	y	and.CONJ	\N	KEV	3	sastre1
6326	886	15	regresarlo	return.V.INFIN	\N	KEV	3	sastre1
6339	887	12	.	\N	\N	KEV	999	sastre1
6345	888	6	.	\N	\N	KEV	999	sastre1
6341	888	2	lo	the.DET.DEF.NT.SG	\N	KEV	3	sastre1
6355	889	10	.	\N	\N	KEV	999	sastre1
6348	889	3	se	be.V.2P.IMPER.PRECLITIC.PRECLITIC	\N	KEV	3	sastre1
6366	890	11	.	\N	\N	KEV	999	sastre1
6357	890	2	cuando	when.CONJ	\N	KEV	3	sastre1
6371	891	5	.	\N	\N	KEV	999	sastre1
6368	891	2	esa	that.ADJ.DEM.F.SG	\N	KEV	3	sastre1
6376	892	5	.	\N	\N	SOF	999	sastre1
6374	892	3	para	stall.V.2S.IMPER	\N	SOF	3	sastre1
6378	893	2	.	\N	\N	KEV	999	sastre1
6379	894	1	y	and.CONJ		KEV	3	sastre1
6385	894	7	.	\N	\N	KEV	999	sastre1
6380	894	2	yo	I.PRON.SUB.MF.1S	\N	KEV	3	sastre1
6405	895	20	.	\N	\N	KEV	999	sastre1
6388	895	3	y	and.CONJ	\N	KEV	3	sastre1
6413	896	8	.	\N	\N	KEV	999	sastre1
6408	896	3	encuentras	find.V.2S.PRES	\N	KEV	3	sastre1
6420	897	7	.	\N	\N	KEV	999	sastre1
6415	897	2	se	be.V.2P.IMPER.PRECLITIC.PRECLITIC	\N	KEV	3	sastre1
6423	898	3	.	\N	\N	KEV	999	sastre1
6424	899	1	le	him.PRON.OBL.MF.23S		KEV	3	sastre1
6441	899	18	.	\N	\N	KEV	999	sastre1
6425	899	2	echas	chuck.V.2S.PRES	\N	KEV	3	sastre1
6443	900	2	.	\N	\N	KEV	999	sastre1
6445	901	2	la	the.DET.DEF.F.SG	\N	SOF	3	sastre1
6329	887	2	ponen	put.V.23P.PRES	\N	KEV	3	sastre1
6330	887	3	la	the.DET.DEF.F.SG	\N	KEV	3	sastre1
6331	887	4	pala	spade.N.F.SG	\N	KEV	3	sastre1
6333	887	6	van	go.V.23P.PRES	\N	KEV	3	sastre1
6334	887	7	rompiendo	smash.V.PRESPART	\N	KEV	3	sastre1
6335	887	8	van	go.V.23P.PRES	\N	KEV	3	sastre1
6337	887	10	para	stall.V.2S.IMPER	\N	KEV	3	sastre1
6338	887	11	allá	there.ADV	\N	KEV	3	sastre1
6340	888	1	pero	but.CONJ		KEV	3	sastre1
6343	888	4	hace	do.V.23S.PRES	\N	KEV	3	sastre1
6344	888	5	después	afterwards.ADV	\N	KEV	3	sastre1
6346	889	1	que	that.CONJ		KEV	3	sastre1
6349	889	4	queda	stay.V.2S.IMPER	\N	KEV	3	sastre1
6350	889	5	toda	all.ADJ.F.SG	\N	KEV	3	sastre1
6352	889	7	se	be.V.2P.IMPER.PRECLITIC.PRECLITIC	\N	KEV	3	sastre1
6353	889	8	riega	irrigate.V.2S.IMPER	\N	KEV	3	sastre1
6356	890	1	y	and.CONJ		KEV	3	sastre1
6358	890	3	el	the.DET.DEF.M.SG	\N	KEV	3	sastre1
6359	890	4	aire	air.N.M.SG	\N	KEV	3	sastre1
6361	890	6	de	of.PREP	\N	KEV	3	sastre1
6362	890	7	allá	there.ADV	\N	KEV	3	sastre1
6363	890	8	o	or.CONJ	\N	KEV	3	sastre1
6364	890	9	de	of.PREP	\N	KEV	3	sastre1
6365	890	10	aquí	here.ADV	\N	KEV	3	sastre1
6369	891	3	hierba	grass.N.F.SG	\N	KEV	3	sastre1
6370	891	4	muerta	dead.ADJ.F.SG	\N	KEV	3	sastre1
6372	892	1	va	go.V.23S.PRES		SOF	3	sastre1
6375	892	4	acá	here.ADV	\N	SOF	3	sastre1
6377	893	1	mmhm	unk		KEV	0	sastre1
6382	894	4	echo	chuck.V.1S.PRES	\N	KEV	3	sastre1
6383	894	5	ahí	there.ADV	\N	KEV	3	sastre1
6384	894	6	cosas	thing.N.F.PL	\N	KEV	3	sastre1
6386	895	1	y	and.CONJ		KEV	3	sastre1
6389	895	4	eso	that.PRON.DEM.NT.SG	\N	KEV	3	sastre1
6390	895	5	para	stall.V.2S.IMPER	\N	KEV	3	sastre1
6391	895	6	mantener	maintain.V.INFIN	\N	KEV	3	sastre1
6393	895	8	hierba	grass.N.F.SG	\N	KEV	3	sastre1
6394	895	9	lo	the.DET.DEF.NT.SG	\N	KEV	3	sastre1
6395	895	10	menos	less.ADV	\N	KEV	3	sastre1
6396	895	11	que	that.CONJ	\N	KEV	3	sastre1
6398	895	13	crezca	grow.V.123S.SUBJ.PRES	\N	KEV	3	sastre1
6399	895	14	mucho	much.ADV	\N	KEV	3	sastre1
6400	895	15	pero	but.CONJ	\N	KEV	3	sastre1
6402	895	17	todo	everything.PRON.M.SG	\N	KEV	3	sastre1
6403	895	18	y	and.CONJ	\N	KEV	3	sastre1
6404	895	19	eso	that.PRON.DEM.NT.SG	\N	KEV	3	sastre1
6406	896	1	er	unk		KEV	0	sastre1
6409	896	4	que	that.CONJ	\N	KEV	3	sastre1
6410	896	5	los	the.DET.DEF.M.PL	\N	KEV	3	sastre1
6412	896	7	crecen	grow.V.23P.PRES	\N	KEV	3	sastre1
6414	897	1	y	and.CONJ		KEV	3	sastre1
6416	897	3	mete	put.V.2S.IMPER	\N	KEV	3	sastre1
6418	897	5	basura	rubbish.N.F.SG	\N	KEV	3	sastre1
6419	897	6	ahí	there.ADV	\N	KEV	3	sastre1
6421	898	1	y	and.CONJ		KEV	3	sastre1
6426	899	3	hoy	today.ADV	\N	KEV	3	sastre1
6427	899	4	y	and.CONJ	\N	KEV	3	sastre1
6428	899	5	a	to.PREP	\N	KEV	3	sastre1
6430	899	7	dos	two.NUM	\N	KEV	3	sastre1
6431	899	8	o	or.CONJ	\N	KEV	3	sastre1
6432	899	9	tres	three.NUM	\N	KEV	3	sastre1
6433	899	10	meses	month.N.M.PL	\N	KEV	3	sastre1
6435	899	12	están	be.V.23P.PRES	\N	KEV	3	sastre1
6436	899	13	de	of.PREP	\N	KEV	3	sastre1
6437	899	14	nuevo	new.ADJ.M.SG	\N	KEV	3	sastre1
6439	899	16	y	and.CONJ	\N	KEV	3	sastre1
6440	899	17	creciendo	grow.V.PRESPART	\N	KEV	3	sastre1
6442	900	1	so	so.ADV		KEV	2	sastre1
6446	901	3	señora	lady.N.F.SG	\N	SOF	3	sastre1
6447	901	4	de	of.PREP	\N	SOF	3	sastre1
6449	901	6	lado	side.N.M.SG	\N	SOF	3	sastre1
6450	901	7	tiene	have.V.23S.PRES	\N	SOF	3	sastre1
6451	901	8	ahora	now.ADV	\N	SOF	3	sastre1
6453	901	10	nieto	grandson.N.M.SG	\N	SOF	3	sastre1
6455	901	12	.	\N	\N	SOF	999	sastre1
6458	902	3	.	\N	\N	KEV	999	sastre1
6457	902	2	nieto	grandson.N.M.SG	\N	KEV	3	sastre1
6460	903	2	.	\N	\N	KEV	999	sastre1
6461	904	1	ah	unk		SOF	0	sastre1
6463	904	3	.	\N	\N	SOF	999	sastre1
6462	904	2	sí	yes.ADV	\N	SOF	3	sastre1
6471	905	8	.	\N	\N	KEV	999	sastre1
6465	905	2	el	the.DET.DEF.M.SG	\N	KEV	3	sastre1
6478	906	7	.	\N	\N	SOF	999	sastre1
6473	906	2	bueno	well.IM	\N	SOF	3	sastre1
6498	907	20	.	\N	\N	KEV	999	sastre1
6480	907	2	sabes	know.V.2S.PRES	\N	KEV	3	sastre1
6504	908	6	.	\N	\N	KEV	999	sastre1
6501	908	3	vive	live.V.2S.IMPER	\N	KEV	3	sastre1
6506	909	2	?	\N	\N	SOF	999	sastre1
6507	910	1	el	the.DET.DEF.M.SG		KEV	3	sastre1
6520	910	14	.	\N	\N	KEV	999	sastre1
6509	910	3	de	of.PREP	\N	KEV	3	sastre1
6521	911	1	.	\N		SOF	999	sastre1
6532	912	11	.	\N	\N	KEV	999	sastre1
6523	912	2	como	like.CONJ	\N	KEV	3	sastre1
6540	913	8	.	\N	\N	SOF	999	sastre1
6535	913	3	have	have.SV.INFIN	\N	SOF	2	sastre1
6552	914	12	.	\N	\N	SOF	999	sastre1
6542	914	2	gonna	go.V.PRESPART.+TO.PREP	\N	SOF	2	sastre1
6555	915	3	.	\N	\N	KEV	999	sastre1
6556	916	1	es	be.V.23S.PRES		KEV	3	sastre1
6557	916	2	posible	possible.ADJ.M.SG	\N	KEV	3	sastre1
6444	901	1	y	and.CONJ		SOF	3	sastre1
6454	901	11	no	not.ADV	\N	SOF	3	sastre1
6459	903	1	mmhm	unk		KEV	0	sastre1
6464	905	1	sí	yes.ADV		KEV	3	sastre1
6466	905	3	nieto	grandson.N.M.SG	\N	KEV	3	sastre1
6468	905	5	viviendo	live.V.PRESPART	\N	KEV	3	sastre1
6469	905	6	con	with.PREP	\N	KEV	3	sastre1
6470	905	7	ella	she.PRON.SUB.F.3S	\N	KEV	3	sastre1
6474	906	3	así	thus.ADV	\N	SOF	3	sastre1
6475	906	4	no	not.ADV	\N	SOF	3	sastre1
6476	906	5	está	be.V.23S.PRES	\N	SOF	3	sastre1
6479	907	1	tú	you.PRON.SUB.MF.2S		KEV	3	sastre1
6481	907	3	que	that.CONJ	\N	KEV	3	sastre1
6482	907	4	yo	I.PRON.SUB.MF.1S	\N	KEV	3	sastre1
6484	907	6	que	that.CONJ	\N	KEV	3	sastre1
6485	907	7	los	the.DET.DEF.M.PL	\N	KEV	3	sastre1
6486	907	8	hijos	son.N.M.PL	\N	KEV	3	sastre1
6487	907	9	de	of.PREP	\N	KEV	3	sastre1
6488	907	10	Lucía	name	\N	KEV	0	sastre1
6490	907	12	hijas	son.N.F.PL	\N	KEV	3	sastre1
6491	907	13	de	of.PREP	\N	KEV	3	sastre1
6492	907	14	los	the.DET.DEF.M.PL	\N	KEV	3	sastre1
6493	907	15	hijos	son.N.M.PL	\N	KEV	3	sastre1
6495	907	17	fuera	outside.ADV	\N	KEV	3	sastre1
6496	907	18	de	of.PREP	\N	KEV	3	sastre1
6497	907	19	Miami	name	\N	KEV	0	sastre1
6499	908	1	pero	but.CONJ		KEV	3	sastre1
6502	908	4	en	in.PREP	\N	KEV	3	sastre1
6503	908	5	Core_Gables	name	\N	KEV	0	sastre1
6505	909	1	really	real.ADJ.+LY		SOF	2	sastre1
6510	910	4	ella	she.PRON.SUB.F.3S	\N	KEV	3	sastre1
6511	910	5	que	that.CONJ	\N	KEV	3	sastre1
6512	910	6	es	be.V.23S.PRES	\N	KEV	3	sastre1
6514	910	8	papá	daddy.N.M.SG	\N	KEV	3	sastre1
6515	910	9	del	of_the.PREP+DET.DEF.M.SG	\N	KEV	3	sastre1
6516	910	10	nieto	grandson.N.M.SG	\N	KEV	3	sastre1
6518	910	12	en	in.PREP	\N	KEV	3	sastre1
6519	910	13	Core_Gables	name	\N	KEV	0	sastre1
6522	912	1	porque	because.CONJ		KEV	3	sastre1
6524	912	3	yo	I.PRON.SUB.MF.1S	\N	KEV	3	sastre1
6526	912	5	los	them.PRON.OBJ.M.3P	\N	KEV	3	sastre1
6527	912	6	veía	see.V.13S.IMPERF	\N	KEV	3	sastre1
6528	912	7	por	for.PREP	\N	KEV	3	sastre1
6530	912	9	ni	nor.CONJ	\N	KEV	3	sastre1
6531	912	10	nada	swim.V.2S.IMPER	\N	KEV	3	sastre1
6533	913	1	he	he.PRON.SUB.M.3S		SOF	2	sastre1
6536	913	4	gotten	gotten.V.PASTPART.US.US	\N	SOF	2	sastre1
6537	913	5	in	in.PREP	\N	SOF	2	sastre1
6538	913	6	a	a.DET.INDEF	\N	SOF	2	sastre1
6541	914	1	I'm	I.PRON.SUB.1S.+BE.V.PRES		SOF	2	sastre1
6543	914	3	go	go.V.INFIN	\N	SOF	2	sastre1
6545	914	5	with	with.PREP	\N	SOF	2	sastre1
6546	914	6	my	my.ADJ.POSS.1S	\N	SOF	2	sastre1
6547	914	7	grandma	grandma.N.SG	\N	SOF	2	sastre1
6549	914	9	siempre	always.ADV	\N	SOF	3	sastre1
6550	914	10	dicen	tell.V.23P.PRES	\N	SOF	3	sastre1
6551	914	11	así	thus.ADV	\N	SOF	3	sastre1
6553	915	1	es	be.V.23S.PRES		KEV	3	sastre1
6558	916	3	tú	you.PRON.SUB.MF.2S	\N	KEV	3	sastre1
6559	916	4	no	not.ADV	\N	KEV	3	sastre1
6560	916	5	te	you.PRON.OBL.MF.2S	\N	KEV	3	sastre1
6562	916	7	hace	do.V.23S.PRES	\N	KEV	3	sastre1
6563	916	8	como	like.CONJ	\N	KEV	3	sastre1
6564	916	9	dos	two.NUM	\N	KEV	3	sastre1
6565	916	10	o	or.CONJ	\N	KEV	3	sastre1
6567	916	12	años	year.N.M.PL	\N	KEV	3	sastre1
6568	916	13	atrás	backwards.ADV	\N	KEV	3	sastre1
6569	916	14	cuando	when.CONJ	\N	KEV	3	sastre1
6570	916	15	primero	first.ADV	\N	KEV	3	sastre1
6572	916	17	mudó	moved.V.3S.PAST	\N	KEV	3	sastre1
6573	916	18	ahí	there.ADV	\N	KEV	3	sastre1
6574	916	19	que	that.CONJ	\N	KEV	3	sastre1
6576	916	21	un	one.DET.INDEF.M.SG	\N	KEV	3	sastre1
6581	916	26	.	\N	\N	KEV	999	sastre1
6583	917	2	.	\N	\N	SOF	999	sastre1
6584	918	1	que	that.CONJ		KEV	3	sastre1
6592	918	9	.	\N	\N	KEV	999	sastre1
6585	918	2	Lucía	name	\N	KEV	0	sastre1
6594	919	2	.	\N	\N	SOF	999	sastre1
6595	920	1	er	unk		KEV	0	sastre1
6602	920	8	.	\N	\N	KEV	999	sastre1
6597	920	3	taparon	cover.V.3P.PAST	\N	KEV	3	sastre1
6619	921	17	.	\N	\N	KEV	999	sastre1
6604	921	2	parece	seem.V.2S.IMPER	\N	KEV	3	sastre1
6631	922	12	.	\N	\N	KEV	999	sastre1
6623	922	4	ahí	there.ADV	\N	KEV	3	sastre1
6641	923	10	.	\N	\N	KEV	999	sastre1
6634	923	3	después	afterwards.ADV	\N	KEV	3	sastre1
6643	924	2	.	\N	\N	KEV	999	sastre1
6644	925	1	viste	dress.V.2S.IMPER		KEV	3	sastre1
6650	925	7	?	\N	\N	KEV	999	sastre1
6646	925	3	rica	lovely.ADJ.F.SG	\N	KEV	3	sastre1
6652	926	2	.	\N	\N	SOF	999	sastre1
6653	927	1	ha	have.V.23S.PRES		KEV	3	sastre1
6663	927	11	.	\N	\N	KEV	999	sastre1
6654	927	2	bajado	lower.V.PASTPART	\N	KEV	3	sastre1
6667	928	4	.	\N	\N	KEV	999	sastre1
6665	928	2	super	unk	\N	KEV	0	sastre1
6672	929	5	.	\N	\N	KEV	999	sastre1
6670	929	3	están	be.V.23P.PRES	\N	KEV	3	sastre1
6679	930	7	.	\N	\N	KEV	999	sastre1
6674	930	2	estos	this.PRON.DEM.M.PL	\N	KEV	3	sastre1
6693	931	14	.	\N	\N	SOF	999	sastre1
6681	931	2	y	and.CONJ	\N	SOF	3	sastre1
6695	932	2	er	unk	\N	KEV	0	sastre1
6577	916	22	carrito	trolley.N.M.SG	\N	KEV	3	sastre1
6578	916	23	que	that.PRON.REL	\N	KEV	3	sastre1
6580	916	25	chocó	crash.V.3S.PAST	\N	KEV	3	sastre1
6582	917	1	mmhm	unk		SOF	0	sastre1
6586	918	3	lo	him.PRON.OBJ.M.3S	\N	KEV	3	sastre1
6587	918	4	tuvo	have.V.3S.PAST	\N	KEV	3	sastre1
6589	918	6	ahí	there.ADV	\N	KEV	3	sastre1
6590	918	7	mucho	much.ADJ.M.SG	\N	KEV	3	sastre1
6591	918	8	tiempo	time.N.M.SG	\N	KEV	3	sastre1
6593	919	1	mmhm	unk		SOF	0	sastre1
6598	920	4	le	him.PRON.OBL.MF.23S	\N	KEV	3	sastre1
6599	920	5	chocaron	crash.V.3P.PAST	\N	KEV	3	sastre1
6601	920	7	carro	car.N.M.SG	\N	KEV	3	sastre1
6603	921	1	y	and.CONJ		KEV	3	sastre1
6605	921	3	que	that.CONJ	\N	KEV	3	sastre1
6607	921	5	padre	father.N.M.SG	\N	KEV	3	sastre1
6608	921	6	estaba	be.V.13S.IMPERF	\N	KEV	3	sastre1
6609	921	7	bravo	brave.ADJ.M.SG	\N	KEV	3	sastre1
6610	921	8	con	with.PREP	\N	KEV	3	sastre1
6612	921	10	y	and.CONJ	\N	KEV	3	sastre1
6613	921	11	no	not.ADV	\N	KEV	3	sastre1
6614	921	12	se	be.V.2P.IMPER.PRECLITIC.PRECLITIC	\N	KEV	3	sastre1
6616	921	14	arregló	fix.V.3S.PAST	\N	KEV	3	sastre1
6617	921	15	ni	nor.CONJ	\N	KEV	3	sastre1
6618	921	16	nada	swim.V.2S.IMPER	\N	KEV	3	sastre1
6620	922	1	y	and.CONJ		KEV	3	sastre1
6624	922	5	en	in.PREP	\N	KEV	3	sastre1
6625	922	6	casa	marry.V.2S.IMPER	\N	KEV	3	sastre1
6626	922	7	de	of.PREP	\N	KEV	3	sastre1
6627	922	8	Lucía	name	\N	KEV	0	sastre1
6628	922	9	todo	all.ADJ.M.SG	\N	KEV	3	sastre1
6629	922	10	ese	that.ADJ.DEM.M.SG	\N	KEV	3	sastre1
6630	922	11	tiempo	time.N.M.SG	\N	KEV	3	sastre1
6632	923	1	hasta	until.PREP		KEV	3	sastre1
6635	923	4	de	of.PREP	\N	KEV	3	sastre1
6636	923	5	una	a.DET.INDEF.F.SG	\N	KEV	3	sastre1
6638	923	7	o	or.CONJ	\N	KEV	3	sastre1
6639	923	8	otra	other.PRON.F.SG	\N	KEV	3	sastre1
6640	923	9	resolvieron	settle.V.3P.PAST	\N	KEV	3	sastre1
6642	924	1	mmhm	unk		KEV	0	sastre1
6647	925	4	está	be.V.23S.PRES	\N	KEV	3	sastre1
6648	925	5	la	the.DET.DEF.F.SG	\N	KEV	3	sastre1
6651	926	1	yeah	yeah.ADV		SOF	2	sastre1
6655	927	3	ahora	now.ADV	\N	KEV	3	sastre1
6656	927	4	debe	owe.V.2S.IMPER	\N	KEV	3	sastre1
6658	927	6	a	to.PREP	\N	KEV	3	sastre1
6659	927	7	setenta	seventy.NUM	\N	KEV	3	sastre1
6660	927	8	y	and.CONJ	\N	KEV	3	sastre1
6661	927	9	pico	beak.N.M.SG	\N	KEV	3	sastre1
6664	928	1	está	be.V.23S.PRES		KEV	3	sastre1
6666	928	3	rica	lovely.ADJ.F.SG	\N	KEV	3	sastre1
6668	929	1	ya	already.ADV		KEV	3	sastre1
6671	929	4	torturando	torture.V.PRESPART	\N	KEV	3	sastre1
6673	930	1	ya	already.ADV		KEV	3	sastre1
6676	930	4	cuatro	four.NUM	\N	KEV	3	sastre1
6677	930	5	minutos	minute.N.M.PL	\N	KEV	3	sastre1
6678	930	6	son	sound.N.M.SG	\N	KEV	3	sastre1
6680	931	1	no	not.ADV		SOF	3	sastre1
6683	931	4	que	that.CONJ	\N	SOF	3	sastre1
6684	931	5	estoy	be.V.1S.PRES	\N	SOF	3	sastre1
6685	931	6	haciendo	do.V.PRESPART	\N	SOF	3	sastre1
6687	931	8	y	and.CONJ	\N	SOF	3	sastre1
6688	931	9	maternidad	motherhood.N.F.SG	\N	SOF	3	sastre1
6689	931	10	es	be.V.23S.PRES	\N	SOF	3	sastre1
6690	931	11	lo	the.DET.DEF.NT.SG	\N	SOF	3	sastre1
6691	931	12	más	more.ADV	\N	SOF	3	sastre1
6694	932	1	y	and.CONJ		KEV	3	sastre1
6696	932	3	er	unk	\N	KEV	0	sastre1
6697	932	4	las	the.DET.DEF.F.PL	\N	KEV	3	sastre1
6698	932	5	clases	classes.N.F.PL	\N	KEV	3	sastre1
6702	932	9	?	\N	\N	KEV	999	sastre1
6715	933	13	.	\N	\N	SOF	999	sastre1
6704	933	2	sí	yes.ADV	\N	SOF	3	sastre1
6723	934	8	.	\N	\N	SOF	999	sastre1
6717	934	2	tú	you.PRON.SUB.MF.2S	\N	SOF	3	sastre1
6729	935	6	.	\N	\N	SOF	999	sastre1
6725	935	2	entonces	then.ADV	\N	SOF	3	sastre1
6735	936	6	.	\N	\N	SOF	999	sastre1
6731	936	2	entonces	then.ADV	\N	SOF	3	sastre1
6740	937	5	.	\N	\N	SOF	999	sastre1
6737	937	2	se	be.V.2P.IMPER.PRECLITIC.PRECLITIC	\N	SOF	3	sastre1
6742	938	2	.	\N	\N	SOF	999	sastre1
6743	939	1	son	sound.N.M.SG		SOF	3	sastre1
6746	939	4	.	\N	\N	SOF	999	sastre1
6745	939	3	tiempo	time.N.M.SG	\N	SOF	3	sastre1
6753	940	7	.	\N	\N	SOF	999	sastre1
6748	940	2	a	to.PREP	\N	SOF	3	sastre1
6766	941	13	.	\N	\N	SOF	999	sastre1
6755	941	2	está	be.V.23S.PRES	\N	SOF	3	sastre1
6768	942	2	.	\N	\N	KEV	999	sastre1
6769	943	1	entonces	then.ADV		SOF	3	sastre1
6775	943	7	.	\N	\N	SOF	999	sastre1
6770	943	2	tienes	have.V.2S.PRES	\N	SOF	3	sastre1
6777	944	2	.	\N	\N	KEV	999	sastre1
6778	945	1	hay	there_is.V.23S.PRES		KEV	3	sastre1
6780	945	3	.	\N	\N	KEV	999	sastre1
6779	945	2	que	that.CONJ	\N	KEV	3	sastre1
6788	946	8	.	\N	\N	SOF	999	sastre1
6782	946	2	he	have.V.1S.PRES	\N	SOF	3	sastre1
6803	947	15	.	\N	\N	SOF	999	sastre1
6790	947	2	tengo	have.V.1S.PRES	\N	SOF	3	sastre1
6805	948	2	.	\N	\N	KEV	999	sastre1
6806	949	1	y	and.CONJ		SOF	3	sastre1
6816	949	11	.	\N	\N	SOF	999	sastre1
6808	949	3	he	have.V.1S.PRES	\N	SOF	3	sastre1
6818	950	2	.	\N	\N	KEV	999	sastre1
6820	951	2	tú	you.PRON.SUB.MF.2S	\N	KEV	3	sastre1
6821	951	3	sabes	know.V.2S.PRES	\N	KEV	3	sastre1
6700	932	7	en	in.PREP	\N	KEV	3	sastre1
6701	932	8	español	Spanish.N.M.SG	\N	KEV	3	sastre1
6703	933	1	ay	oh.IM		SOF	3	sastre1
6706	933	4	es	be.V.23S.PRES	\N	SOF	3	sastre1
6707	933	5	en	in.PREP	\N	SOF	3	sastre1
6708	933	6	español	Spanish.N.M.SG	\N	SOF	3	sastre1
6709	933	7	pero	but.CONJ	\N	SOF	3	sastre1
6711	933	9	libros	book.N.M.PL	\N	SOF	3	sastre1
6712	933	10	son	sound.N.M.SG	\N	SOF	3	sastre1
6713	933	11	en	in.PREP	\N	SOF	3	sastre1
6714	933	12	inglés	english.N.M.SG	\N	SOF	3	sastre1
6718	934	3	me	me.PRON.OBL.MF.1S	\N	SOF	3	sastre1
6719	934	4	ves	see.V.2S.PRES	\N	SOF	3	sastre1
6720	934	5	a	to.PREP	\N	SOF	3	sastre1
6722	934	7	ahí	there.ADV	\N	SOF	3	sastre1
6724	935	1	y	and.CONJ		SOF	3	sastre1
6726	935	3	tengo	have.V.1S.PRES	\N	SOF	3	sastre1
6728	935	5	ponerme	put.V.INFIN	\N	SOF	3	sastre1
6730	936	1	y	and.CONJ		SOF	3	sastre1
6732	936	3	tengo	have.V.1S.PRES	\N	SOF	3	sastre1
6734	936	5	diccionario	dictionary.N.M.SG	\N	SOF	3	sastre1
6736	937	1	porque	because.CONJ		SOF	3	sastre1
6739	937	4	olvida	forget.V.2S.IMPER	\N	SOF	3	sastre1
6741	938	1	olvídate	forget.V.2S.IMPER.PRECLITIC.PRECLITIC		SOF	3	sastre1
6747	940	1	y	and.CONJ		SOF	3	sastre1
6749	940	3	uno	one.PRON.M.SG	\N	SOF	3	sastre1
6751	940	5	le	him.PRON.OBL.MF.23S	\N	SOF	3	sastre1
6752	940	6	olvida	forget.V.2S.IMPER	\N	SOF	3	sastre1
6754	941	1	uno	one.PRON.M.SG		SOF	3	sastre1
6757	941	4	a	to.PREP	\N	SOF	3	sastre1
6758	941	5	leer	read.V.INFIN	\N	SOF	3	sastre1
6759	941	6	en	in.PREP	\N	SOF	3	sastre1
6760	941	7	inglés	english.N.M.SG	\N	SOF	3	sastre1
6761	941	8	y	and.CONJ	\N	SOF	3	sastre1
6763	941	10	escribir	write.V.INFIN	\N	SOF	3	sastre1
6764	941	11	en	in.PREP	\N	SOF	3	sastre1
6767	942	1	sí	yes.ADV		KEV	3	sastre1
6771	943	3	que	that.CONJ	\N	SOF	3	sastre1
6772	943	4	escribirlo	write.V.INFIN	\N	SOF	3	sastre1
6773	943	5	en	in.PREP	\N	SOF	3	sastre1
6776	944	1	mmhm	unk		KEV	0	sastre1
6781	946	1	lo	him.PRON.OBJ.M.3S		SOF	3	sastre1
6783	946	3	dejado	leave.V.PASTPART	\N	SOF	3	sastre1
6785	946	5	lo	him.PRON.OBJ.M.3S	\N	SOF	3	sastre1
6786	946	6	he	have.V.1S.PRES	\N	SOF	3	sastre1
6787	946	7	dejado	leave.V.PASTPART	\N	SOF	3	sastre1
6791	947	3	que	that.CONJ	\N	SOF	3	sastre1
6792	947	4	hacer	do.V.INFIN	\N	SOF	3	sastre1
6793	947	5	dos	two.NUM	\N	SOF	3	sastre1
6795	947	7	para	stall.V.2S.IMPER	\N	SOF	3	sastre1
6796	947	8	el	the.DET.DEF.M.SG	\N	SOF	3	sastre1
6797	947	9	cuatro	four.NUM	\N	SOF	3	sastre1
6798	947	10	y	and.CONJ	\N	SOF	3	sastre1
6800	947	12	examen	examination.N.M.SG	\N	SOF	3	sastre1
6801	947	13	el	the.DET.DEF.M.SG	\N	SOF	3	sastre1
6802	947	14	cuatro	four.NUM	\N	SOF	3	sastre1
6804	948	1	mmhm	unk		KEV	0	sastre1
6809	949	4	dejado	leave.V.PASTPART	\N	SOF	3	sastre1
6810	949	5	tanto	so_much.ADJ.M.SG	\N	SOF	3	sastre1
6812	949	7	que	that.PRON.REL	\N	SOF	3	sastre1
6813	949	8	no	not.ADV	\N	SOF	3	sastre1
6814	949	9	he	have.V.1S.PRES	\N	SOF	3	sastre1
6815	949	10	acabado	finish.V.PASTPART	\N	SOF	3	sastre1
6817	950	1	sí	yes.ADV		KEV	3	sastre1
6822	951	4	que	that.CONJ	\N	KEV	3	sastre1
6829	951	11	.	\N	\N	KEV	999	sastre1
6836	952	7	.	\N	\N	KEV	999	sastre1
6831	952	2	tengo	have.V.1S.PRES	\N	KEV	3	sastre1
6846	953	10	.	\N	\N	KEV	999	sastre1
6838	953	2	es	be.V.23S.PRES	\N	KEV	3	sastre1
6853	954	7	.	\N	\N	KEV	999	sastre1
6848	954	2	no	not.ADV	\N	KEV	3	sastre1
6856	955	3	.	\N	\N	SOF	999	sastre1
6855	955	2	no	not.ADV	\N	SOF	3	sastre1
6862	956	6	.	\N	\N	KEV	999	sastre1
6859	956	3	voy	go.V.1S.PRES	\N	KEV	3	sastre1
6870	957	8	.	\N	\N	SOF	999	sastre1
6864	957	2	lo	the.DET.DEF.NT.SG	\N	SOF	3	sastre1
6875	958	5	.	\N	\N	KEV	999	sastre1
6872	958	2	inglés	english.N.M.SG	\N	KEV	3	sastre1
6885	959	10	.	\N	\N	SOF	999	sastre1
6877	959	2	el	the.DET.DEF.M.SG	\N	SOF	3	sastre1
6897	960	12	.	\N	\N	SOF	999	sastre1
6887	960	2	padres	father.N.M.PL	\N	SOF	3	sastre1
6902	961	5	.	\N	\N	SOF	999	sastre1
6899	961	2	lo	him.PRON.OBJ.M.3S	\N	SOF	3	sastre1
6918	962	16	.	\N	\N	KEV	999	sastre1
6904	962	2	te	you.PRON.OBL.MF.2S	\N	KEV	3	sastre1
6925	963	7	.	\N	\N	KEV	999	sastre1
6920	963	2	lo	him.PRON.OBJ.M.3S	\N	KEV	3	sastre1
6928	964	3	.	\N	\N	KEV	999	sastre1
6927	964	2	así	thus.ADV	\N	KEV	3	sastre1
6937	965	9	.	\N	\N	KEV	999	sastre1
6930	965	2	la	the.DET.DEF.F.SG	\N	KEV	3	sastre1
6943	966	6	.	\N	\N	KEV	999	sastre1
6939	966	2	te	you.PRON.OBL.MF.2S	\N	KEV	3	sastre1
6944	967	1	.	\N		SOF	999	sastre1
6824	951	6	voy	go.V.1S.PRES	\N	KEV	3	sastre1
6825	951	7	a	to.PREP	\N	KEV	3	sastre1
6826	951	8	conseguir	manage.V.INFIN	\N	KEV	3	sastre1
6827	951	9	una	a.DET.INDEF.F.SG	\N	KEV	3	sastre1
6830	952	1	yo	I.PRON.SUB.MF.1S		KEV	3	sastre1
6832	952	3	un	one.DET.INDEF.M.SG	\N	KEV	3	sastre1
6834	952	5	inglés	english.ADJ.M.SG	\N	KEV	3	sastre1
6837	953	1	que	that.CONJ		KEV	3	sastre1
6839	953	3	un	one.DET.INDEF.M.SG	\N	KEV	3	sastre1
6840	953	4	C_D	name	\N	KEV	2	sastre1
6841	953	5	que	that.CONJ	\N	KEV	3	sastre1
6842	953	6	van	go.V.23P.PRES	\N	KEV	3	sastre1
6843	953	7	en	in.PREP	\N	KEV	3	sastre1
6844	953	8	la	the.DET.DEF.F.SG	\N	KEV	3	sastre1
6847	954	1	tú	you.PRON.SUB.MF.2S		KEV	3	sastre1
6849	954	3	nunca	never.ADV	\N	KEV	3	sastre1
6850	954	4	has	have.V.2S.PRES	\N	KEV	3	sastre1
6852	954	6	eso	that.PRON.DEM.NT.SG	\N	KEV	3	sastre1
6854	955	1	no	not.ADV		SOF	3	sastre1
6857	956	1	espera	wait.V.2S.IMPER		KEV	3	sastre1
6860	956	4	a	to.PREP	\N	KEV	3	sastre1
6861	956	5	buscar	seek.V.INFIN	\N	KEV	3	sastre1
6863	957	1	yo	I.PRON.SUB.MF.1S		SOF	3	sastre1
6866	957	4	tengo	have.V.1S.PRES	\N	SOF	3	sastre1
6867	957	5	es	be.V.23S.PRES	\N	SOF	3	sastre1
6868	957	6	el	the.DET.DEF.M.SG	\N	SOF	3	sastre1
6871	958	1	el	the.DET.DEF.M.SG		KEV	3	sastre1
6873	958	3	español	Spanish.ADJ.M.SG	\N	KEV	3	sastre1
6876	959	1	sí	yes.ADV		SOF	3	sastre1
6878	959	3	ese	that.PRON.DEM.M.SG	\N	SOF	3	sastre1
6879	959	4	que	that.PRON.REL	\N	SOF	3	sastre1
6881	959	6	mamá	mum.N.F.SG	\N	SOF	3	sastre1
6882	959	7	me	me.PRON.OBL.MF.1S	\N	SOF	3	sastre1
6883	959	8	lo	him.PRON.OBJ.M.3S	\N	SOF	3	sastre1
6884	959	9	dejó	leave.V.3S.PAST	\N	SOF	3	sastre1
6888	960	3	siempre	always.ADV	\N	SOF	3	sastre1
6889	960	4	lo	him.PRON.OBJ.M.3S	\N	SOF	3	sastre1
6891	960	6	y	and.CONJ	\N	SOF	3	sastre1
6892	960	7	me	me.PRON.OBL.MF.1S	\N	SOF	3	sastre1
6893	960	8	me	me.PRON.OBL.MF.1S	\N	SOF	3	sastre1
6894	960	9	lo	him.PRON.OBJ.M.3S	\N	SOF	3	sastre1
6896	960	11	yo	I.PRON.SUB.MF.1S	\N	SOF	3	sastre1
6898	961	1	y	and.CONJ		SOF	3	sastre1
6900	961	3	tengo	have.V.1S.PRES	\N	SOF	3	sastre1
6903	962	1	yo	I.PRON.SUB.MF.1S		KEV	3	sastre1
6905	962	3	voy	go.V.1S.PRES	\N	KEV	3	sastre1
6906	962	4	a	to.PREP	\N	KEV	3	sastre1
6908	962	6	una	a.DET.INDEF.F.SG	\N	KEV	3	sastre1
6909	962	7	copia	copy.V.2S.IMPER	\N	KEV	3	sastre1
6910	962	8	de	of.PREP	\N	KEV	3	sastre1
6912	962	10	porque	because.CONJ	\N	KEV	3	sastre1
6913	962	11	esto	this.PRON.DEM.NT.SG	\N	KEV	3	sastre1
6914	962	12	es	be.V.23S.PRES	\N	KEV	3	sastre1
6915	962	13	en	in.PREP	\N	KEV	3	sastre1
6917	962	15	computadora	computer.N.F.SG	\N	KEV	3	sastre1
6919	963	1	y	and.CONJ		KEV	3	sastre1
6921	963	3	tienes	have.V.2S.PRES	\N	KEV	3	sastre1
6923	963	5	el	the.DET.DEF.M.SG	\N	KEV	3	sastre1
6924	963	6	desktop	desktop.AS.SG	\N	KEV	2	sastre1
6926	964	1	aprietas	press.V.2S.PRES		KEV	3	sastre1
6931	965	3	palabra	word.N.F.SG	\N	KEV	3	sastre1
6932	965	4	en	in.PREP	\N	KEV	3	sastre1
6933	965	5	inglés	english.N.M.SG	\N	KEV	3	sastre1
6935	965	7	en	in.PREP	\N	KEV	3	sastre1
6936	965	8	español	Spanish.N.M.SG	\N	KEV	3	sastre1
6938	966	1	y	and.CONJ		KEV	3	sastre1
6941	966	4	la	the.DET.DEF.F.SG	\N	KEV	3	sastre1
6942	966	5	traducción	translation.N.F.SG	\N	KEV	3	sastre1
6945	968	1	y	and.CONJ		KEV	3	sastre1
6958	968	14	.	\N	\N	KEV	999	sastre1
5	1	5	crees	believe.V.2S.PRES	\N	KEV	3	sastre1
9	1	9	cuadra	square.V.2S.IMPER	\N	KEV	3	sastre1
15	2	1	la	the.DET.DEF.F.SG		KEV	3	sastre1
19	2	5	you	you.PRON.SUB.2SP	\N	KEV	2	sastre1
24	3	2	that's	that.DEM.FAR.+BE.V.3S.PRES	\N	SOF	2	sastre1
30	4	4	illegal	illegal.ADJ	\N	SOF	2	sastre1
37	6	1	supuesto	assumption.N.M.SG		SOF	3	sastre1
44	7	2	si	if.CONJ	\N	SOF	3	sastre1
49	7	7	por	for.PREP	\N	SOF	3	sastre1
53	7	11	muebles	furniture.N.M.PL	\N	SOF	3	sastre1
59	8	2	no	not.ADV	\N	SOF	3	sastre1
66	9	5	esa	that.ADJ.DEM.F.SG	\N	SOF	3	sastre1
71	10	3	está	be.V.23S.PRES	\N	SOF	3	sastre1
76	10	8	de	of.PREP	\N	SOF	3	sastre1
77	10	9	uno	one.PRON.M.SG	\N	SOF	3	sastre1
81	12	1	no	not.ADV		KEV	3	sastre1
82	12	2	pero	but.CONJ	\N	KEV	3	sastre1
84	13	1	no	not.ADV		SOF	3	sastre1
85	13	2	tanto	so_much.ADJ.M.SG	\N	SOF	3	sastre1
86	13	3	este	this.ADJ.DEM.M.SG	\N	SOF	3	sastre1
87	13	4	lado	side.N.M.SG	\N	SOF	3	sastre1
88	13	5	sino	but.CONJ	\N	SOF	3	sastre1
89	13	6	el	the.DET.DEF.M.SG	\N	SOF	3	sastre1
90	13	7	lado	side.N.M.SG	\N	SOF	3	sastre1
91	13	8	izquierdo	lefthand.ADJ.M.SG	\N	SOF	3	sastre1
93	14	1	el	the.DET.DEF.M.SG		KEV	3	sastre1
94	14	2	de	of.PREP	\N	KEV	3	sastre1
95	14	3	entrar	enter.V.INFIN	\N	KEV	3	sastre1
180	28	1	en	in.PREP		KEV	3	sastre1
185	28	6	concreto	concrete.N.M.SG	\N	KEV	3	sastre1
193	30	5	que	that.PRON.REL	\N	KEV	3	sastre1
198	30	10	un	one.DET.INDEF.M.SG	\N	KEV	3	sastre1
202	30	14	ahí	there.ADV	\N	KEV	3	sastre1
210	32	1	pero	but.CONJ		KEV	3	sastre1
215	32	6	eso	that.PRON.DEM.NT.SG	\N	KEV	3	sastre1
219	32	10	bump	bump.N.SG	\N	KEV	2	sastre1
227	34	5	creo	believe.V.1S.PRES	\N	KEV	3	sastre1
231	34	9	va	go.V.23S.PRES	\N	KEV	3	sastre1
237	34	15	adorno	embellishment.N.M.SG	\N	KEV	3	sastre1
245	36	1	pero	but.CONJ		SOF	3	sastre1
249	36	5	la	her.PRON.OBJ.F.3S	\N	SOF	3	sastre1
256	37	2	la	her.PRON.OBJ.F.3S	\N	KEV	3	sastre1
263	38	3	que	that.CONJ	\N	SOF	3	sastre1
268	39	1	porque	because.CONJ		SOF	3	sastre1
272	39	5	antes	before.ADV	\N	SOF	3	sastre1
278	40	1	bueno	well.IM		KEV	3	sastre1
286	42	2	sí	yes.ADV	\N	KEV	3	sastre1
292	43	1	el	the.DET.DEF.M.SG		KEV	3	sastre1
298	44	3	doble	double.ADJ.M.SG	\N	SOF	3	sastre1
305	45	4	para	stall.V.2S.IMPER	\N	KEV	3	sastre1
308	45	7	hubieran	have.V.3P.SUBJ.IMPERF	\N	KEV	3	sastre1
315	46	4	los	the.DET.DEF.M.PL	\N	KEV	3	sastre1
320	46	9	toda	all.ADJ.F.SG	\N	KEV	3	sastre1
325	47	2	después	afterwards.ADV	\N	KEV	3	sastre1
332	48	2	recogido	pick.V.PASTPART	\N	KEV	3	sastre1
339	50	4	y	and.CONJ	\N	KEV	3	sastre1
344	51	3	ellos	they.PRON.SUB.M.3P	\N	KEV	3	sastre1
350	52	2	el	the.DET.DEF.M.SG	\N	SOF	3	sastre1
354	52	6	van	go.V.23P.PRES	\N	SOF	3	sastre1
362	54	2	parquecito	playground.N.M.SG.DIM.DIM	\N	SOF	3	sastre1
371	56	2	viste	dress.V.2S.IMPER	\N	SOF	3	sastre1
376	56	7	hoja	sheet.N.F.SG	\N	SOF	3	sastre1
380	56	11	lo	the.DET.DEF.NT.SG	\N	SOF	3	sastre1
387	57	4	estaba	be.V.13S.IMPERF	\N	KEV	3	sastre1
393	58	2	salimos	exit.V.1P.PAST[or]exit.V.1P.PRES	\N	KEV	3	sastre1
399	58	8	shop	shop.N.SG	\N	KEV	2	sastre1
407	60	5	puerta	door.N.F.SG	\N	KEV	3	sastre1
412	60	10	para	stall.V.2S.IMPER	\N	KEV	3	sastre1
416	60	14	casa	marry.V.2S.IMPER	\N	KEV	3	sastre1
423	61	3	ya	already.ADV	\N	KEV	3	sastre1
427	61	7	había	have.V.13S.IMPERF	\N	KEV	3	sastre1
434	62	2	no	not.ADV	\N	KEV	3	sastre1
439	62	7	cosa	thing.N.F.SG	\N	KEV	3	sastre1
445	64	2	está	be.V.23S.PRES	\N	KEV	3	sastre1
450	65	1	it's	it.PRON.SUB.3S.+BE.V.3S.PRES		SOF	2	sastre1
464	70	1	esta	this.ADJ.DEM.F.SG		KEV	3	sastre1
467	70	4	decirte	tell.V.INFIN	\N	KEV	3	sastre1
472	70	9	de	of.PREP	\N	KEV	3	sastre1
479	72	2	eso	that.PRON.DEM.NT.SG	\N	SOF	3	sastre1
484	72	7	puesto	stand.N.M.SG	\N	SOF	3	sastre1
489	72	12	llama	call.V.2S.IMPER	\N	SOF	3	sastre1
492	72	15	un	one.DET.INDEF.M.SG	\N	SOF	3	sastre1
498	73	2	hamaca	hammock.N.F.SG	\N	KEV	3	sastre1
508	76	4	dado	die.N.M.SG	\N	SOF	3	sastre1
513	77	2	mira	watch.V.2S.IMPER	\N	SOF	3	sastre1
518	77	7	las	them.PRON.OBJ.F.3P	\N	SOF	3	sastre1
524	78	2	se	be.V.2P.IMPER.PRECLITIC.PRECLITIC	\N	KEV	3	sastre1
529	79	1	yo	I.PRON.SUB.MF.1S		KEV	3	sastre1
533	79	5	cada	every.ADJ.MF.SG	\N	KEV	3	sastre1
538	79	10	camping	camp.V.PRESPART	\N	KEV	2	sastre1
544	80	2	I	I.PRON.SUB.1S	\N	KEV	2	sastre1
550	80	8	campground	campground.N.SG	\N	KEV	2	sastre1
1221	174	5	R_V	name	\N	SOF	2	sastre1
6948	968	4	usos	use.N.M.PL	\N	KEV	3	sastre1
6950	968	6	cosas	thing.N.F.PL	\N	KEV	3	sastre1
6951	968	7	de	of.PREP	\N	KEV	3	sastre1
6953	968	9	cosas	thing.N.F.PL	\N	KEV	3	sastre1
6954	968	10	de	of.PREP	\N	KEV	3	sastre1
6955	968	11	la	the.DET.DEF.F.SG	\N	KEV	3	sastre1
6956	968	12	de	of.PREP	\N	KEV	3	sastre1
6957	968	13	la	the.DET.DEF.F.SG	\N	KEV	3	sastre1
556	81	5	se	be.V.2P.IMPER.PRECLITIC.PRECLITIC	\N	KEV	3	sastre1
561	81	10	aquí	here.ADV	\N	KEV	3	sastre1
565	81	14	es	be.V.23S.PRES	\N	KEV	3	sastre1
570	81	19	the	the.DET.DEF	\N	KEV	2	sastre1
575	82	1	yeah	yeah.ADV		SOF	2	sastre1
582	84	2	that's	that.DEM.FAR.+BE.V.3S.PRES	\N	KEV	2	sastre1
588	85	3	se	be.V.2P.IMPER.PRECLITIC.PRECLITIC	\N	KEV	3	sastre1
593	85	8	de	of.PREP	\N	KEV	3	sastre1
598	85	13	we	we.PRON.SUB.1P	\N	KEV	2	sastre1
603	85	18	hammock	hammock.N.SG	\N	KEV	2	sastre1
612	87	2	yeah	yeah.ADV	\N	KEV	2	sastre1
619	88	6	pretty	pretty.ADJ	\N	SOF	2	sastre1
623	89	2	really	real.ADJ.+LY	\N	KEV	2	sastre1
630	90	4	to	to.PREP	\N	KEV	2	sastre1
636	90	10	hot	hot.ADJ	\N	KEV	2	sastre1
641	91	4	until	until.CONJ	\N	KEV	2	sastre1
647	91	10	day	day.N.SG	\N	KEV	2	sastre1
651	92	3	cooling	cool.V.PRESPART	\N	KEV	2	sastre1
658	92	10	out	out.ADV	\N	KEV	2	sastre1
665	93	5	o'clock	o'clock.ADV	\N	KEV	2	sastre1
671	94	3	thank	thank.V.INFIN	\N	SOF	2	sastre1
676	94	8	to	to.PREP	\N	SOF	2	sastre1
680	94	12	pool	pool.N.SG	\N	SOF	2	sastre1
688	96	4	good	good.ADJ	\N	SOF	2	sastre1
693	96	9	smaller	small.ADJ.COMP	\N	SOF	2	sastre1
699	97	2	don't	do.V.3P.PRES.+NEG	\N	SOF	2	sastre1
704	97	7	it	it.PRON.OBJ.3S	\N	SOF	2	sastre1
711	98	6	time	time.N.SG	\N	KEV	2	sastre1
717	99	2	we	we.PRON.SUB.1P	\N	KEV	2	sastre1
722	99	7	house	house.N.SG	\N	KEV	2	sastre1
727	99	12	the	the.DET.DEF	\N	KEV	2	sastre1
787	107	6	abril	April.N.M.SG	\N	KEV	3	sastre1
792	108	4	había	have.V.13S.IMPERF	\N	KEV	3	sastre1
796	109	2	estaban	be.V.3P.IMPERF	\N	KEV	3	sastre1
802	110	2	yo	I.PRON.SUB.MF.1S	\N	SOF	3	sastre1
808	111	3	el	the.DET.DEF.M.SG	\N	KEV	3	sastre1
814	112	2	entonces	then.ADV	\N	KEV	3	sastre1
819	112	7	nosotros	we.PRON.SUB.M.1P	\N	KEV	3	sastre1
823	112	11	habían	have.V.3P.IMPERF	\N	KEV	3	sastre1
827	112	15	el	the.DET.DEF.M.SG	\N	KEV	3	sastre1
832	113	3	negociamos	negotiate.V.1P.PAST[or]negotiate.V.1P.PRES	\N	KEV	3	sastre1
839	113	10	señora	lady.N.F.SG	\N	KEV	3	sastre1
847	115	2	we	we.PRON.SUB.1P	\N	KEV	2	sastre1
853	116	2	house	house.N.SG	\N	KEV	2	sastre1
859	116	8	pool	pool.N.SG	\N	KEV	2	sastre1
864	116	13	find	find.V.INFIN	\N	KEV	2	sastre1
869	117	4	a	a.DET.INDEF	\N	SOF	2	sastre1
876	118	2	yeah	yeah.ADV	\N	KEV	2	sastre1
882	119	5	much	much.ADJ	\N	SOF	2	sastre1
890	122	2	ahora	now.ADV	\N	KEV	3	sastre1
895	122	7	baño	bathroom.N.M.SG	\N	KEV	3	sastre1
902	124	4	está	be.V.23S.PRES	\N	KEV	3	sastre1
905	124	7	original	original.ADJ.M.SG	\N	KEV	3	sastre1
912	125	6	the	the.DET.DEF	\N	KEV	2	sastre1
918	126	4	originally	original.ADJ.+LY	\N	KEV	2	sastre1
926	127	1	y	and.CONJ		KEV	3	sastre1
932	128	2	ahora	now.ADV	\N	KEV	3	sastre1
937	128	7	gonna	go.V.PRESPART.+TO.PREP	\N	KEV	2	sastre1
942	128	12	gonna	go.V.PRESPART.+TO.PREP	\N	KEV	2	sastre1
947	129	1	change	change.V.INFIN		KEV	2	sastre1
952	130	4	shower	show.N.SG.AG[or]shower.N.SG	\N	SOF	2	sastre1
962	132	4	a	a.DET.INDEF	\N	KEV	2	sastre1
967	133	2	ok	unk	\N	SOF	0	sastre1
971	134	3	gonna	go.V.PRESPART.+TO.PREP	\N	KEV	2	sastre1
978	134	10	old	old.ADJ	\N	KEV	2	sastre1
984	135	4	everything	everything.PRON	\N	KEV	2	sastre1
992	136	2	kind	kind.N.SG	\N	KEV	2	sastre1
998	137	3	gonna	go.V.PRESPART.+TO.PREP	\N	KEV	2	sastre1
1004	138	1	quitar	remove.V.INFIN		KEV	3	sastre1
1009	138	6	dry	dry.ADJ	\N	KEV	2	sastre1
1015	139	2	no	not.ADV	\N	KEV	3	sastre1
1019	139	6	asome	prompt.V.123S.SUBJ.PRES	\N	KEV	3	sastre1
1028	141	4	eh	unk	\N	KEV	0	sastre1
1036	143	2	entonces	then.ADV	\N	KEV	3	sastre1
1043	144	5	los	the.DET.DEF.M.PL	\N	KEV	3	sastre1
1048	145	2	arriba	arrive.V.2S.IMPER	\N	SOF	3	sastre1
1054	146	5	techo	roof.N.M.SG	\N	KEV	3	sastre1
1061	147	6	way	way.N.SG	\N	SOF	2	sastre1
1069	148	7	menos	less.ADV	\N	KEV	3	sastre1
1073	148	11	la	the.DET.DEF.F.SG	\N	KEV	3	sastre1
1081	151	3	lugares	place.N.M.PL	\N	KEV	3	sastre1
1086	151	8	que	that.PRON.REL	\N	KEV	3	sastre1
1089	151	11	bajitos	low.ADJ.M.PL.DIM.DIM	\N	KEV	3	sastre1
1093	152	3	hasta	until.PREP	\N	KEV	3	sastre1
1099	153	4	uno	one.PRON.M.SG	\N	KEV	3	sastre1
1103	153	8	otro	other.PRON.M.SG	\N	KEV	3	sastre1
1111	154	7	los	the.DET.DEF.M.PL	\N	KEV	3	sastre1
1115	154	11	arreglarlos	fix.V.INFIN	\N	KEV	3	sastre1
1124	157	2	fuimos	go.V.1P.PAST	\N	KEV	3	sastre1
1129	157	7	un	one.DET.INDEF.M.SG	\N	KEV	3	sastre1
1139	160	4	the	the.DET.DEF	\N	KEV	2	sastre1
1144	160	9	nice	nice.ADJ	\N	KEV	2	sastre1
1149	161	4	small	small.ADJ	\N	KEV	2	sastre1
1156	162	6	the	the.DET.DEF	\N	KEV	2	sastre1
1160	162	10	to	to.PREP	\N	KEV	2	sastre1
1166	163	1	up	up.ADV		SOF	2	sastre1
1173	164	6	it	it.PRON.OBJ.3S	\N	KEV	2	sastre1
1181	166	1	the	the.DET.DEF		KEV	2	sastre1
1185	166	5	is	is.V.3S.PRES	\N	KEV	2	sastre1
1192	167	4	there	there.ADV	\N	KEV	2	sastre1
1199	169	1	press	press.V.INFIN		KEV	2	sastre1
1208	172	3	opens	open.ADJ.+V 3S PRES[or]open.V.3S.PRES	\N	SOF	2	sastre1
1214	173	4	have	have.V.INFIN	\N	KEV	2	sastre1
1227	176	2	my	my.ADJ.POSS.1S	\N	SOF	2	sastre1
1233	176	8	house	house.N.SG	\N	SOF	2	sastre1
1243	180	1	you	you.PRON.SUB.2SP		SOF	2	sastre1
1251	182	4	it	it.PRON.OBJ.3S	\N	SOF	2	sastre1
1257	183	3	it's	it.PRON.SUB.3S.+BE.V.3S.PRES	\N	SOF	2	sastre1
1263	184	4	button	button.N.SG	\N	SOF	2	sastre1
1270	186	4	like	like.CONJ[or]like.N.SG	\N	SOF	2	sastre1
1276	187	3	a	a.DET.INDEF	\N	SOF	2	sastre1
1287	191	1	and	and.CONJ		SOF	2	sastre1
1292	191	6	a	a.DET.INDEF	\N	SOF	2	sastre1
1300	193	2	mean	mean.V.1S.PRES	\N	SOF	2	sastre1
1307	195	1	the	the.DET.DEF		SOF	2	sastre1
1316	198	1	flat	flat.ADJ		SOF	2	sastre1
1321	198	6	he's	he.PRON.SUB.M.3S.+HAVE.V.3S.PRES	\N	SOF	2	sastre1
1331	201	3	likes	like.V.3S.PRES	\N	SOF	2	sastre1
1397	209	9	them	them.PRON.OBJ.3P	\N	KEV	2	sastre1
1403	210	5	making	make.V.PRESPART	\N	SOF	2	sastre1
1407	210	9	property	property.N.SG	\N	SOF	2	sastre1
1417	213	4	as	as.CONJ	\N	SOF	2	sastre1
1422	213	9	do	do.V.3P.PRES	\N	SOF	2	sastre1
1429	215	3	campgrounds	campground.N.PL	\N	KEV	2	sastre1
1435	215	9	on	on.PREP	\N	KEV	2	sastre1
1441	216	5	pieces	piece.N.PL	\N	KEV	2	sastre1
1446	216	10	of	of.PREP	\N	KEV	2	sastre1
1452	216	16	on	on.PREP	\N	KEV	2	sastre1
1458	217	3	know	know.V.2SP.PRES	\N	KEV	2	sastre1
1463	217	8	deal	deal.N.SG	\N	KEV	2	sastre1
1473	221	1	American_Outdoors	name		KEV	2	sastre1
1480	222	2	they	they.PRON.SUB.3P	\N	KEV	2	sastre1
1492	226	1	viste	dress.V.2S.IMPER		KEV	3	sastre1
1501	228	2	coneja	rabbit.N.F.SG	\N	KEV	3	sastre1
1507	229	3	conejita	bunny.N.F.SG.DIM.DIM	\N	SOF	3	sastre1
1520	233	2	Pepita	name	\N	KEV	0	sastre1
1525	233	7	acquired	acquire.V.PAST	\N	KEV	2	sastre1
1534	235	4	her	her.ADJ.POSS.F.3S	\N	KEV	2	sastre1
1540	236	4	miniature	miniature.N.SG	\N	SOF	2	sastre1
1548	239	1	no	no.ADV		SOF	2	sastre1
1553	240	4	something	something.PRON	\N	KEV	2	sastre1
1566	244	4	friend	friend.N.SG	\N	SOF	2	sastre1
1570	244	8	has	has.V.3S.PRES	\N	SOF	2	sastre1
1577	246	1	he	he.PRON.SUB.M.3S		SOF	2	sastre1
1581	246	5	them	them.PRON.SUB.3P	\N	SOF	2	sastre1
1588	247	4	little	little.ADJ	\N	SOF	2	sastre1
1597	250	1	yeah	yeah.ADV	background	KEV	2	sastre1
1606	253	2	I	I.PRON.SUB.1S	\N	SOF	2	sastre1
1611	253	7	there	there.ADV	\N	SOF	2	sastre1
1615	253	11	miniature	miniature.ADJ	\N	SOF	2	sastre1
1622	255	3	daughter's	daughter.N.SG.+=POSS	\N	SOF	2	sastre1
1629	257	1	that	that.DEM.FAR[or]that.CONJ		KEV	2	sastre1
1635	257	7	los	the.DET.DEF.M.PL	\N	KEV	3	sastre1
1640	257	12	big	big.ADJ	\N	KEV	2	sastre1
1647	258	5	ones	one.PRON.PL	\N	SOF	2	sastre1
1654	260	1	yeah	yeah.ADV		KEV	2	sastre1
1662	262	4	own	own.ADJ	\N	SOF	2	sastre1
1671	264	5	the	the.DET.DEF	\N	KEV	2	sastre1
1678	267	1	it's	it.PRON.SUB.3S.+BE.V.3S.PRES		SOF	2	sastre1
1687	269	2	know	know.V.2SP.PRES	\N	SOF	2	sastre1
1692	269	7	less	less.ADV	\N	SOF	2	sastre1
1701	271	2	yeah	yeah.ADV	\N	SOF	2	sastre1
1706	271	7	work	work.V.INFIN	\N	SOF	2	sastre1
1714	273	3	we've	we.PRON.SUB.1P.+HAVE.V.PRES	\N	KEV	2	sastre1
1719	273	8	a	a.DET.INDEF	\N	KEV	2	sastre1
1726	275	3	what	what.REL	\N	SOF	2	sastre1
1731	275	8	give	give.V.3P.PRES	\N	SOF	2	sastre1
1735	275	12	raise	raise.N.SG	\N	SOF	2	sastre1
1740	275	17	depends	depend.V.3S.PRES	\N	SOF	2	sastre1
1745	275	22	make	make.V.2SP.PRES	\N	SOF	2	sastre1
1751	276	5	does	does.V.3S.PRES	\N	SOF	2	sastre1
1756	276	10	they	they.PRON.SUB.3P	\N	SOF	2	sastre1
1764	277	1	mmhm	unk		KEV	0	sastre1
1769	278	4	money	money.N.SG	\N	SOF	2	sastre1
1773	278	8	making	make.V.PRESPART	\N	SOF	2	sastre1
1780	280	1	it's	it.PRON.SUB.3S.+BE.V.3S.PRES		SOF	2	sastre1
1785	280	6	with	with.PREP	\N	SOF	2	sastre1
1790	280	11	you	you.PRON.SUB.2SP	\N	SOF	2	sastre1
1798	282	1	it's	it.PRON.SUB.3S.+BE.V.3S.PRES		SOF	2	sastre1
1802	282	5	no	no.ADV	\N	SOF	2	sastre1
1808	283	4	pasa	pass.V.2S.IMPER	\N	KEV	3	sastre1
1813	284	2	know	know.V.2SP.PRES	\N	SOF	2	sastre1
1820	285	6	pays	pay.V.3S.PRES	\N	SOF	2	sastre1
1825	285	11	husband's	husband.N.SG.+=POSS	\N	SOF	2	sastre1
1830	285	16	expensive	expensive.ADJ	\N	SOF	2	sastre1
1837	287	2	because	because.CONJ	\N	SOF	2	sastre1
1842	287	7	you	you.PRON.OBJ.2SP	\N	SOF	2	sastre1
1847	287	12	lot	lot.N.SG	\N	SOF	2	sastre1
1854	289	3	know	know.V.2SP.PRES	\N	SOF	2	sastre1
1861	291	3	cheaper	cheap.ADJ.COMP	\N	SOF	2	sastre1
1870	293	4	I	I.PRON.SUB.1S	\N	KEV	2	sastre1
1873	293	7	that	that.DEM.FAR[or]that.CONJ	\N	KEV	2	sastre1
1879	293	13	for	for.PREP	\N	KEV	2	sastre1
1883	293	17	gonna	go.V.PRESPART.+TO.PREP	\N	KEV	2	sastre1
1888	294	2	not	not.ADV	\N	KEV	2	sastre1
1892	294	6	carry	carry.V.INFIN	\N	KEV	2	sastre1
1896	294	10	insurance	insurance.N.SG	\N	KEV	2	sastre1
1902	296	2	she'll	she.PRON.SUB.F.3S.+BE.V.FUT	\N	KEV	2	sastre1
1909	296	9	her	her.PRON.OBJ.F.3S[or]her.ADJ.POSS.F.3S	\N	KEV	2	sastre1
1913	296	13	county	county.N.SG	\N	KEV	2	sastre1
1920	297	2	for	for.PREP	\N	KEV	2	sastre1
1927	298	3	pay	pay.V.1S.PRES	\N	KEV	2	sastre1
1930	298	6	just	just.ADV[or]just.ADJ	\N	KEV	2	sastre1
1934	298	10	just	just.ADV[or]just.ADJ	\N	KEV	2	sastre1
1942	299	2	that's	that.DEM.FAR.+BE.V.3S.PRES	\N	SOF	2	sastre1
1943	299	3	not	not.ADV	\N	SOF	2	sastre1
1950	300	5	pero	but.CONJ	\N	KEV	3	sastre1
1956	301	3	it	it.PRON.SUB.3S	\N	SOF	2	sastre1
1961	301	8	go	go.V.INFIN	\N	SOF	2	sastre1
1963	301	10	her	her.PRON.OBJ.F.3S[or]her.ADJ.POSS.F.3S	\N	SOF	2	sastre1
1973	302	5	go	go.V.1P.PRES	\N	KEV	2	sastre1
1978	302	10	her	her.ADJ.POSS.F.3S	\N	KEV	2	sastre1
1982	302	14	expensive	expensive.ADJ	\N	KEV	2	sastre1
1990	304	1	that's	that.DEM.FAR.+BE.V.3S.PRES		KEV	2	sastre1
1997	305	2	had	had.V.PAST	\N	KEV	2	sastre1
2001	305	6	me	me.PRON.OBJ.1S	\N	KEV	2	sastre1
2012	307	5	had	had.V.PAST	\N	KEV	2	sastre1
2018	308	3	that	that.CONJ	\N	KEV	2	sastre1
2024	308	9	Pepita	name	\N	KEV	0	sastre1
2028	308	13	her	her.ADJ.POSS.F.3S	\N	KEV	2	sastre1
2033	308	18	get	get.V.INFIN	\N	KEV	2	sastre1
2039	309	1	it's	it.PRON.SUB.3S.+BE.V.3S.PRES		KEV	2	sastre1
2044	309	6	is	is.V.3S.PRES	\N	KEV	2	sastre1
2051	310	2	my	my.ADJ.POSS.1S	\N	SOF	2	sastre1
2056	310	7	that	that.DEM.FAR	\N	SOF	2	sastre1
2061	310	12	with	with.PREP	\N	SOF	2	sastre1
2068	312	1	that	that.CONJ		SOF	2	sastre1
2072	312	5	that	that.CONJ	\N	SOF	2	sastre1
2076	312	9	it's	it.PRON.SUB.3S.+BE.V.3S.PRES	\N	SOF	2	sastre1
2083	313	3	telling	tell.V.PRESPART	\N	SOF	2	sastre1
2088	313	8	people	people.N.SG	\N	SOF	2	sastre1
2092	313	12	are	are.V.123P.PRES	\N	SOF	2	sastre1
2097	313	17	of	of.PREP	\N	SOF	2	sastre1
2102	314	3	gonna	go.V.PRESPART.+TO.PREP	\N	SOF	2	sastre1
2107	314	8	are	are.V.3P.PRES	\N	SOF	2	sastre1
2111	314	12	down	down.PREP	\N	SOF	2	sastre1
2116	314	17	drastic	drastic.ADJ	\N	SOF	2	sastre1
2122	315	5	they	they.PRON.SUB.3P	\N	SOF	2	sastre1
2127	315	10	the	the.DET.DEF	\N	SOF	2	sastre1
2132	315	15	that	that.CONJ	\N	SOF	2	sastre1
2136	315	19	it	it.PRON.OBJ.3S	\N	SOF	2	sastre1
2145	318	1	pero	but.CONJ		KEV	3	sastre1
2152	319	6	buck	buck.N.SG	\N	SOF	2	sastre1
2158	320	5	don't	do.V.1S.PRES.+NEG	\N	KEV	2	sastre1
2163	321	1	no	no.ADV		SOF	2	sastre1
2170	322	6	that	that.DEM.FAR[or]that.CONJ	\N	KEV	2	sastre1
2175	322	11	or	or.CONJ	\N	KEV	2	sastre1
2180	322	16	now	now.ADV	\N	KEV	2	sastre1
2190	325	5	ago	ago.ADV	\N	KEV	2	sastre1
2195	326	4	employees	employee.N.PL	\N	KEV	2	sastre1
2201	326	10	have	have.V.3P.PRES	\N	KEV	2	sastre1
2206	326	15	increased	increase.V.PAST	\N	KEV	2	sastre1
2213	327	4	all	all.ADJ	\N	KEV	2	sastre1
2217	327	8	that	that.CONJ	\N	KEV	2	sastre1
2222	327	13	the	the.DET.DEF	\N	KEV	2	sastre1
2228	328	1	tú	you.PRON.SUB.MF.2S		KEV	3	sastre1
2233	329	3	misspent	misspent.V.PASTPART	\N	KEV	2	sastre1
2241	330	7	they	they.PRON.SUB.3P	\N	KEV	2	sastre1
2245	330	11	buy	buy.V.INFIN	\N	KEV	2	sastre1
2251	332	2	sabes	know.V.2S.PRES	\N	KEV	3	sastre1
2257	333	5	to	to.PREP	\N	KEV	2	sastre1
2262	333	10	ahora	now.ADV	\N	KEV	3	sastre1
2268	334	5	básica	basic.ADJ.F.SG	.	KEV	3	sastre1
2272	335	1	contéstalo	answer.V.2S.IMPER.PRECLITIC.PRECLITIC		KEV	3	sastre1
2284	338	2	baby	baby.N.SG	\N	SOF	2	sastre1
2291	339	3	I'm	I.PRON.SUB.1S.+BE.V.PRES	hear	SOF	2	sastre1
2300	341	2	haciendo	do.V.PRESPART	\N	SOF	3	sastre1
2305	341	7	necesitaba	need.V.13S.IMPERF	\N	SOF	3	sastre1
2311	342	4	esto	this.PRON.DEM.NT.SG	\N	SOF	3	sastre1
2390	356	1	he	he.PRON.SUB.M.3S		SOF	2	sastre1
2396	357	1	they	they.PRON.SUB.3P		KEV	2	sastre1
2403	358	3	he	he.PRON.SUB.M.3S	\N	SOF	2	sastre1
2410	360	1	I	I.PRON.SUB.1S		SOF	2	sastre1
2414	360	5	played	play.V.PAST	\N	SOF	2	sastre1
2419	360	10	like	like.CONJ	\N	SOF	2	sastre1
2430	363	2	my	my.ADJ.POSS.1S	\N	SOF	2	sastre1
2435	363	7	and	and.CONJ	\N	SOF	2	sastre1
2439	363	11	a	a.DET.INDEF	\N	SOF	2	sastre1
2443	363	15	another	another.ADJ	\N	SOF	2	sastre1
2448	363	20	he	he.PRON.SUB.M.3S	\N	SOF	2	sastre1
2454	363	26	is	is.V.3S.PRES	\N	SOF	2	sastre1
2464	366	4	crazy	crazy.ADJ	\N	SOF	2	sastre1
2470	367	2	don't	do.V.1S.PRES.+NEG	\N	SOF	2	sastre1
2475	367	7	puts	put.V.PRES.3S	\N	SOF	2	sastre1
2479	367	11	you	you.PRON.SUB.2SP	\N	SOF	2	sastre1
2486	369	4	one	one.PRON.SG	\N	SOF	2	sastre1
2492	370	1	think	think.V.INFIN		SOF	2	sastre1
2497	370	6	every	every.ADJ	\N	SOF	2	sastre1
2504	372	2	he	he.PRON.SUB.M.3S	\N	SOF	2	sastre1
2508	372	6	Beamer	name	\N	SOF	2	sastre1
2514	373	5	himself	himself.PRON.REFL.INDIR.M.3S	\N	SOF	2	sastre1
2521	374	4	cincuenta	fifty.NUM	\N	KEV	3	sastre1
2527	375	5	y	and.CONJ	\N	SOF	3	sastre1
2531	375	9	mala	nasty.ADJ.F.SG	\N	SOF	3	sastre1
2542	378	4	a	a.DET.INDEF	\N	SOF	2	sastre1
2549	379	3	one	one.PRON.SG	\N	SOF	2	sastre1
2553	379	7	that's	that.CONJ.+BE.V.3S.PRES	\N	SOF	2	sastre1
2567	385	1	he	he.PRON.SUB.M.3S		SOF	2	sastre1
2574	386	1	and	and.CONJ		SOF	2	sastre1
2578	386	5	working	work.SV.INFIN.+ASV	\N	SOF	2	sastre1
2585	386	12	a	a.DET.INDEF	\N	SOF	2	sastre1
2590	387	2	he	he.PRON.SUB.M.3S	\N	SOF	2	sastre1
2596	387	8	to	to.PREP	\N	SOF	2	sastre1
2601	387	13	get	get.V.INFIN	\N	SOF	2	sastre1
2608	389	2	are	are.V.2SP.PRES	\N	KEV	2	sastre1
2616	391	1	mmhm	unk		KEV	0	sastre1
2622	392	5	there	there.ADV	\N	SOF	2	sastre1
2626	392	9	convenient	convenient.ADJ	\N	SOF	2	sastre1
2632	393	5	other	other.ADJ	\N	SOF	2	sastre1
2639	395	3	wanna	want.V.INFIN.+TO.PREP	\N	SOF	2	sastre1
2648	397	1	you	you.PRON.SUB.2SP		SOF	2	sastre1
2653	397	6	you	you.PRON.SUB.2SP	\N	SOF	2	sastre1
2658	397	11	you	you.PRON.SUB.2SP	\N	SOF	2	sastre1
2662	397	15	lot	lot.N.SG	\N	SOF	2	sastre1
2670	399	3	industry	industry.N.SG	\N	SOF	2	sastre1
2677	401	4	that	that.CONJ	\N	SOF	2	sastre1
2682	401	9	around	around.ADV	\N	SOF	2	sastre1
2689	402	4	everything	everything.PRON	\N	SOF	2	sastre1
2698	404	1	right	right.ADJ		KEV	2	sastre1
2703	405	4	it	it.PRON.OBJ.3S	\N	KEV	2	sastre1
2709	406	5	being	be.V.PRESPART	\N	KEV	2	sastre1
2715	407	2	go	go.V.1S.PRES	\N	SOF	2	sastre1
2720	407	7	eight	eight.NUM	\N	SOF	2	sastre1
2726	408	4	out	out.ADV	\N	SOF	2	sastre1
2730	408	8	pick	pick.SV.INFIN	\N	SOF	2	sastre1
2735	408	13	that's	that.DEM.FAR.+BE.V.3S.PRES	\N	SOF	2	sastre1
2747	412	1	no	not.ADV		KEV	3	sastre1
2751	412	5	estar	be.V.INFIN	\N	KEV	3	sastre1
2756	412	10	está	be.V.23S.PRES	\N	KEV	3	sastre1
2761	413	1	donde	where.REL		KEV	3	sastre1
2768	415	1	te	you.PRON.OBL.MF.2S		SOF	3	sastre1
2772	415	5	por	for.PREP	\N	SOF	3	sastre1
2778	416	3	asaltan	assault.V.23P.PRES	\N	KEV	3	sastre1
2784	417	4	tú	you.PRON.SUB.MF.2S	American	SOF	3	sastre1
2790	417	10	gente	people.N.F.SG	\N	SOF	3	sastre1
2798	418	2	del	of_the.PREP+DET.DEF.M.SG	\N	KEV	3	sastre1
2806	420	3	gente	people.N.F.SG	\N	SOF	3	sastre1
2811	420	8	Miami_Lakes	name	\N	SOF	0	sastre1
2816	420	13	because	because.CONJ	\N	SOF	2	sastre1
2820	420	17	they	they.PRON.SUB.3P	\N	SOF	2	sastre1
2826	420	23	Miami_Lakes	name	\N	SOF	0	sastre1
2836	423	1	la	the.DET.DEF.F.SG		SOF	3	sastre1
2842	423	7	Miami_Lakes	name	\N	SOF	0	sastre1
2847	424	3	that's	that.DEM.FAR.+BE.V.3S.PRES	\N	KEV	2	sastre1
2852	425	1	that's	that.DEM.FAR.+BE.V.3S.PRES		SOF	2	sastre1
2861	427	5	Miami_Gardens	name	\N	SOF	0	sastre1
2868	428	5	incorporated	incorporate.V.PASTPART	\N	KEV	2	sastre1
2876	429	4	it	it.PRON.SUB.3S	\N	SOF	2	sastre1
2880	430	2	unincorporated	unincorporate.V.PASTPART	\N	KEV	2	sastre1
2888	432	2	like	like.CONJ[or]like.SV.INFIN	\N	KEV	2	sastre1
2896	433	3	became	became.V.1P.PRES	\N	KEV	2	sastre1
2903	435	2	were	were.V.1P.PAST	\N	KEV	2	sastre1
2910	436	4	Miami_Lakes	name	\N	KEV	0	sastre1
2914	436	8	unincorporated	unincorporate.V.PASTPART	\N	KEV	2	sastre1
2918	437	2	we	we.PRON.SUB.1P	\N	KEV	2	sastre1
2923	438	1	they	they.PRON.SUB.3P		KEV	2	sastre1
2928	438	6	they	they.PRON.SUB.3P	\N	KEV	2	sastre1
2934	439	1	they	they.PRON.SUB.3P		KEV	2	sastre1
2941	440	2	don't	do.V.3P.PRES.+NEG	\N	SOF	2	sastre1
2946	440	7	a	a.DET.INDEF	\N	SOF	2	sastre1
2950	440	11	they	they.PRON.SUB.3P	\N	SOF	2	sastre1
2954	440	15	a	a.DET.INDEF	\N	SOF	2	sastre1
2961	442	2	right	right.ADJ	\N	SOF	2	sastre1
2973	445	6	or	or.CONJ	\N	KEV	2	sastre1
2978	446	2	a	a.DET.INDEF	\N	KEV	2	sastre1
2984	447	4	were	were.V.1P.PAST	\N	SOF	2	sastre1
2990	448	5	were	were.V.1P.PAST	\N	KEV	2	sastre1
3002	452	3	se	be.V.2P.IMPER.PRECLITIC.PRECLITIC	\N	KEV	3	sastre1
3007	453	3	after	after.PREP	\N	SOF	2	sastre1
3013	454	3	Miami_Lakes	name	\N	SOF	0	sastre1
3023	456	7	eso	that.PRON.DEM.NT.SG	\N	SOF	3	sastre1
3030	458	1	unincorporated	unincorporate.V.PASTPART		KEV	2	sastre1
3038	460	3	no	not.ADV	\N	KEV	3	sastre1
3042	460	7	across	across.PREP	\N	KEV	2	sastre1
3049	462	1	that's	that.DEM.FAR.+BE.V.3S.PRES		KEV	2	sastre1
3056	463	3	are	are.V.2SP.PRES	\N	KEV	2	sastre1
3059	463	6	that	that.DEM.FAR[or]that.CONJ	\N	KEV	2	sastre1
3064	463	11	zona	zone.N.F.SG	\N	KEV	3	sastre1
3072	465	3	lo	the.DET.DEF.NT.SG	\N	KEV	3	sastre1
3077	465	8	no	not.ADV	\N	KEV	3	sastre1
3081	465	12	Palms_Springs_North	name	\N	KEV	0	sastre1
3087	465	18	nueve	nine.NUM	\N	KEV	3	sastre1
3092	465	23	allá	there.ADV	\N	KEV	3	sastre1
3098	466	5	un	one.DET.INDEF.M.SG	\N	KEV	3	sastre1
3102	466	9	hay	there_is.V.23S.PRES	\N	KEV	3	sastre1
3112	469	4	eso	that.PRON.DEM.NT.SG	\N	SOF	3	sastre1
3118	470	2	el	the.DET.DEF.M.SG	\N	KEV	3	sastre1
3123	470	7	más	more.ADV	\N	KEV	3	sastre1
3127	470	11	está	be.V.23S.PRES	\N	KEV	3	sastre1
3133	471	2	sabes	know.V.2S.PRES	\N	KEV	3	sastre1
3138	472	4	cosa	thing.N.F.SG	\N	SOF	3	sastre1
3144	473	5	siendo	be.V.PRESPART	\N	SOF	3	sastre1
3149	474	1	three	three.NUM		SOF	2	sastre1
3155	474	7	sigues	follow.V.2S.PRES	\N	SOF	3	sastre1
3163	475	4	a	to.PREP	\N	KEV	3	sastre1
3170	477	3	we	we.PRON.SUB.1P	\N	SOF	2	sastre1
3175	477	8	code	code.N.SG	\N	SOF	2	sastre1
3181	478	5	own	own.ADJ	\N	KEV	2	sastre1
3186	478	10	cero	zero.N.M.SG	\N	KEV	3	sastre1
3193	479	5	cuatro	four.NUM	\N	KEV	3	sastre1
3200	480	6	cuatro	four.NUM	\N	SOF	3	sastre1
3205	480	11	entonces	then.ADV	\N	SOF	3	sastre1
3211	481	5	cambio	switch.N.M.SG	\N	KEV	3	sastre1
3217	481	11	tres	three.NUM	\N	KEV	3	sastre1
3223	481	17	ser	be.V.INFIN	\N	KEV	3	sastre1
3233	484	2	eso	that.PRON.DEM.NT.SG	\N	KEV	3	sastre1
3239	485	3	keep	keep.V.1S.PRES	\N	SOF	2	sastre1
3243	485	7	you	you.PRON.SUB.2SP	\N	SOF	2	sastre1
3248	485	12	you	you.PRON.SUB.2SP	\N	SOF	2	sastre1
3252	485	16	you	you.PRON.SUB.2SP	\N	SOF	2	sastre1
3257	485	21	and	and.CONJ	\N	SOF	2	sastre1
3261	485	25	Miami_Lakes	name	\N	SOF	0	sastre1
3266	485	30	madam	madam.N.SG	\N	SOF	2	sastre1
3279	488	4	they	they.PRON.SUB.3P	\N	SOF	2	sastre1
3283	488	8	to	to.PREP	\N	SOF	2	sastre1
3285	488	10	you	you.PRON.OBJ.2SP	\N	SOF	2	sastre1
3289	488	14	know	know.V.INFIN	\N	SOF	2	sastre1
3294	488	19	the	the.DET.DEF	\N	SOF	2	sastre1
3301	490	3	fíjate	fix.V.2S.IMPER.PRECLITIC.PRECLITIC	\N	KEV	3	sastre1
3307	490	9	que	that.PRON.REL	\N	KEV	3	sastre1
3311	490	13	el	the.DET.DEF.M.SG	\N	KEV	3	sastre1
3318	491	3	una	a.DET.INDEF.F.SG	\N	KEV	3	sastre1
3322	491	7	tiene	have.V.23S.PRES	\N	KEV	3	sastre1
3327	491	12	federal	federal.ADJ.M.SG	\N	KEV	3	sastre1
3331	491	16	del	of_the.PREP+DET.DEF.M.SG	\N	KEV	3	sastre1
3338	493	1	ellos	they.PRON.SUB.M.3P		KEV	3	sastre1
3343	493	6	que	that.CONJ	\N	KEV	3	sastre1
3349	494	2	supuestamente	supposedly.ADV	\N	KEV	3	sastre1
3354	494	7	process	process.N.SG	\N	KEV	2	sastre1
3361	495	2	cambiar	shift.V.INFIN	\N	KEV	3	sastre1
3366	495	7	tres	three.NUM	\N	KEV	3	sastre1
3371	495	12	va	go.V.23S.PRES	\N	KEV	3	sastre1
3377	495	18	lo	the.DET.DEF.NT.SG	\N	KEV	3	sastre1
3382	495	23	que	that.PRON.REL	\N	KEV	3	sastre1
3386	495	27	el	the.DET.DEF.M.SG	\N	KEV	3	sastre1
3392	495	33	del	of_the.PREP+DET.DEF.M.SG	\N	KEV	3	sastre1
3397	495	38	metro	tube.N.M.SG	\N	KEV	3	sastre1
3408	498	2	eso	that.PRON.DEM.NT.SG	\N	KEV	3	sastre1
3413	498	7	tres	three.NUM	\N	KEV	3	sastre1
3418	498	12	es	be.V.23S.PRES	\N	KEV	3	sastre1
3423	498	17	cinco	five.NUM	\N	KEV	3	sastre1
3430	500	2	otro	other.ADJ.M.SG	\N	KEV	3	sastre1
3437	501	4	code	code.N.SG	\N	KEV	2	sastre1
3441	501	8	cambiar	shift.V.INFIN	\N	KEV	3	sastre1
3447	501	14	tres	three.NUM	\N	KEV	3	sastre1
3452	501	19	va	go.V.23S.PRES	\N	KEV	3	sastre1
3457	501	24	que	that.PRON.REL	\N	KEV	3	sastre1
3462	501	29	ciudad	town.N.F.SG	\N	KEV	3	sastre1
3469	503	3	lo	the.DET.DEF.NT.SG	\N	KEV	3	sastre1
3474	503	8	lo	the.DET.DEF.NT.SG	\N	KEV	3	sastre1
3479	504	2	lo	him.PRON.OBJ.M.3S	\N	KEV	3	sastre1
3484	504	7	hacen	do.V.23P.PRES	\N	KEV	3	sastre1
3490	505	5	tremendo	tremendous.ADJ.M.SG	\N	SOF	3	sastre1
3500	508	2	pero	but.CONJ	\N	KEV	3	sastre1
3506	509	4	las	the.DET.DEF.F.PL	\N	SOF	3	sastre1
3511	509	9	ten	ten.NUM	\N	SOF	2	sastre1
3516	510	3	la	the.DET.DEF.F.SG	\N	SOF	3	sastre1
3523	512	3	tienen	have.V.23P.PRES	\N	SOF	3	sastre1
3528	512	8	viejitos	oldies.N.M.PL.DIM.DIM	\N	SOF	3	sastre1
3603	524	6	hacen	do.V.23P.PRES	\N	KEV	3	sastre1
3607	524	10	están	be.V.23P.PRES	\N	KEV	3	sastre1
3614	526	1	correcto	right.ADJ.M.SG		SOF	3	sastre1
3619	526	6	ponerle	put.V.INFIN	\N	SOF	3	sastre1
3629	529	3	ponerle	put.V.INFIN	\N	SOF	3	sastre1
3634	529	8	planilla	form.N.F.SG	\N	SOF	3	sastre1
3638	529	12	que	that.CONJ	\N	SOF	3	sastre1
3684	536	6	porque	because.CONJ	\N	SOF	3	sastre1
3689	536	11	Manuel	name	\N	SOF	0	sastre1
3693	536	15	I_R_S	name	\N	SOF	2	sastre1
3698	537	4	las	the.DET.DEF.F.PL	\N	SOF	3	sastre1
3702	537	8	mandó	order.V.3S.PAST	\N	SOF	3	sastre1
3707	537	13	llenárselo	fill.V.INFIN.PRECLITIC.PRECLITIC	\N	SOF	3	sastre1
3714	538	6	viejitas	oldies.N.F.PL.DIM.DIM	\N	SOF	3	sastre1
3718	538	10	ellas	they.PRON.SUB.F.3P	\N	SOF	3	sastre1
3724	539	3	hazme	do.V.2S.IMPER	\N	KEV	3	sastre1
3729	539	8	hazme	do.V.2S.IMPER	\N	KEV	3	sastre1
3735	540	3	se	be.V.2P.IMPER.PRECLITIC.PRECLITIC	\N	KEV	3	sastre1
3741	541	4	ella	she.PRON.SUB.F.3S	\N	SOF	3	sastre1
3745	541	8	me	me.PRON.OBL.MF.1S	\N	SOF	3	sastre1
3749	541	12	que	that.CONJ	\N	SOF	3	sastre1
3753	541	16	que	that.CONJ	\N	SOF	3	sastre1
3758	541	21	la	her.PRON.OBJ.F.3S	\N	SOF	3	sastre1
3763	541	26	copia	copy.V.2S.IMPER	\N	SOF	3	sastre1
3772	545	1	yo	I.PRON.SUB.MF.1S		SOF	3	sastre1
3777	545	6	en	in.PREP	\N	SOF	3	sastre1
3782	546	2	yo	I.PRON.SUB.MF.1S	\N	KEV	3	sastre1
3788	547	1	pero	but.CONJ		SOF	3	sastre1
3793	547	6	que	that.CONJ	\N	SOF	3	sastre1
3796	547	9	arriba	arrive.V.2S.IMPER	\N	SOF	3	sastre1
3804	548	4	retirado	retire.V.M.SG.PASTPART	\N	KEV	3	sastre1
3808	548	8	eso	that.PRON.DEM.NT.SG	\N	KEV	3	sastre1
3814	549	5	se	be.V.2P.IMPER.PRECLITIC.PRECLITIC	\N	SOF	3	sastre1
3820	549	11	ponerle	put.V.INFIN	\N	SOF	3	sastre1
3824	549	15	si	if.CONJ	\N	SOF	3	sastre1
3830	551	2	igual	equal.ADJ.M.SG[or]equal.ADV	\N	KEV	3	sastre1
3836	551	8	cheques	cheque.N.M.PL	\N	KEV	3	sastre1
3843	553	2	que	that.CONJ	\N	KEV	3	sastre1
3848	553	7	nine	nine.NUM	\N	KEV	2	sastre1
3853	553	12	social	social.ADJ	\N	KEV	2	sastre1
3857	553	16	esa	that.ADJ.DEM.F.SG	\N	KEV	3	sastre1
3864	554	5	lo	him.PRON.OBJ.M.3S	\N	KEV	3	sastre1
3870	554	11	no	not.ADV	\N	KEV	3	sastre1
3874	554	15	no	not.ADV	\N	KEV	3	sastre1
3878	554	19	acreditan	accredit.V.23P.PRES	\N	KEV	3	sastre1
3884	555	1	adonde	to_where.REL		SOF	3	sastre1
3892	557	2	creo	believe.V.1S.PRES	\N	KEV	3	sastre1
3897	557	7	que	that.CONJ	\N	KEV	3	sastre1
3900	557	10	los	the.DET.DEF.M.PL	\N	KEV	3	sastre1
3906	558	2	yo	I.PRON.SUB.MF.1S	\N	SOF	3	sastre1
3909	558	5	llevamos	wear.V.1P.PAST[or]wear.V.1P.PRES	\N	SOF	3	sastre1
3918	559	6	media	her.PRON.OBJ.F.3S	\N	KEV	3	sastre1
3926	561	3	se	be.V.2P.IMPER.PRECLITIC.PRECLITIC	\N	SOF	3	sastre1
3931	561	8	ya	already.ADV	\N	SOF	3	sastre1
3936	561	13	a	to.PREP	\N	SOF	3	sastre1
3943	563	2	que	that.CONJ	\N	KEV	3	sastre1
3949	564	4	cociné	cook.V.1S.PAST	\N	SOF	3	sastre1
3955	565	5	nosotros	we.PRON.SUB.M.1P	\N	KEV	3	sastre1
3967	568	2	Pro	name	\N	KEV	2	sastre1
3977	570	5	five	five.NUM	\N	KEV	2	sastre1
3982	571	4	cuestión	question.N.F.SG	\N	KEV	3	sastre1
3988	571	10	cosa	thing.N.F.SG	\N	KEV	3	sastre1
3994	572	5	ahí	there.ADV	\N	SOF	3	sastre1
3999	573	3	salimos	exit.V.1P.PAST[or]exit.V.1P.PRES	\N	KEV	3	sastre1
4007	573	11	campers	unk	\N	KEV	0	sastre1
4014	575	4	el	the.DET.DEF.M.SG	\N	KEV	3	sastre1
4019	575	9	grande	large.ADJ.M.SG	\N	KEV	3	sastre1
4024	576	4	salimos	exit.V.1P.PAST[or]exit.V.1P.PRES	\N	KEV	3	sastre1
4032	577	7	que	that.PRON.REL	\N	KEV	3	sastre1
4037	577	12	Pince	name	\N	KEV	0	sastre1
4045	579	4	that	that.DEM.FAR	\N	SOF	2	sastre1
4051	580	4	cosita	thing.N.F.SG.DIM.DIM	\N	KEV	3	sastre1
4057	581	4	rico	nice.ADJ.M.SG	\N	KEV	3	sastre1
4067	584	4	chicken	chicken.N.SG	\N	SOF	2	sastre1
4074	585	4	whole	whole.ADJ	\N	KEV	2	sastre1
4078	585	8	so	so.ADV	\N	KEV	2	sastre1
4086	588	2	that's	that.DEM.FAR.+BE.V.3S.PRES	\N	SOF	2	sastre1
4093	589	5	and	and.CONJ	\N	KEV	2	sastre1
4099	589	11	her	her.PRON.OBJ.F.3S[or]her.ADJ.POSS.F.3S	\N	KEV	2	sastre1
4104	589	16	dinner	dinner.N.SG	\N	KEV	2	sastre1
4110	590	5	me	me.PRON.INDIR.1S	\N	KEV	2	sastre1
4116	591	3	brought	brought.V.PAST	\N	KEV	2	sastre1
4122	592	1	that's	that.DEM.FAR.+BE.V.3S.PRES		SOF	2	sastre1
4127	593	3	I'll	I.PRON.SUB.1S.+BE.V.FUT	\N	KEV	2	sastre1
4131	593	7	dinner	dinner.N.SG	\N	KEV	2	sastre1
4138	594	6	them	them.PRON.OBJ.3P	\N	KEV	2	sastre1
4144	595	5	thought	thought.V.PAST	\N	KEV	2	sastre1
4148	595	9	wait	wait.V.INFIN	\N	KEV	2	sastre1
4153	596	2	dice	tell.V.23S.PRES	\N	KEV	3	sastre1
4158	596	7	I'm	I.PRON.SUB.1S.+BE.V.PRES	\N	KEV	2	sastre1
4165	597	3	ate	ate.V.PAST	\N	KEV	2	sastre1
4172	598	5	tenía	have.V.13S.IMPERF	\N	KEV	3	sastre1
4181	600	4	this	this.DEM.NEAR.SG	\N	SOF	2	sastre1
4186	600	9	and	and.CONJ	\N	SOF	2	sastre1
4190	600	13	eaten	eaten.V.PASTPART	\N	SOF	2	sastre1
4197	601	3	the	the.DET.DEF	\N	KEV	2	sastre1
4204	602	4	working	work.V.PRESPART	\N	SOF	2	sastre1
4214	605	4	off	off.ADV	\N	SOF	2	sastre1
4222	607	2	schools	school.N.PL	\N	SOF	2	sastre1
4231	609	2	universities	university.N.PL[or]universities.N.PL	\N	SOF	2	sastre1
4241	612	3	acaban	finish.V.23P.PRES	\N	KEV	3	sastre1
4247	613	3	empezó	start.V.3S.PAST	\N	SOF	3	sastre1
4253	614	2	empezó	start.V.3S.PAST	\N	KEV	3	sastre1
4262	616	3	no	not.ADV	\N	KEV	3	sastre1
4266	616	7	empieza	start.V.2S.IMPER	\N	KEV	3	sastre1
4274	617	2	I	I.PRON.OBJ.1S	\N	SOF	2	sastre1
4278	617	6	Thomas	name	\N	SOF	2	sastre1
4284	618	2	tried	try.V.PAST	\N	KEV	2	sastre1
4291	620	1	so	so.ADV		KEV	2	sastre1
4296	620	6	are	are.V.123P.PRES	\N	KEV	2	sastre1
4304	621	2	the	the.DET.DEF	\N	SOF	2	sastre1
4309	621	7	it	it.PRON.SUB.3S	\N	SOF	2	sastre1
4314	621	12	Miami	name	\N	SOF	2	sastre1
4327	626	4	a	a.DET.INDEF	\N	KEV	2	sastre1
4332	626	9	the	the.DET.DEF	\N	KEV	2	sastre1
4337	628	1	that	that.DEM.FAR[or]that.CONJ		KEV	2	sastre1
4346	629	3	traffic	traffic.N.SG	\N	SOF	2	sastre1
4350	629	7	bad	bad.ADJ	\N	SOF	2	sastre1
4356	630	1	yeah	yeah.ADV		KEV	2	sastre1
4363	631	6	be	be.V.INFIN	\N	KEV	2	sastre1
4368	631	11	the	the.DET.DEF	\N	KEV	2	sastre1
4443	642	4	tell	tell.SV.INFIN	\N	SOF	2	sastre1
4448	642	9	to	to.PREP	\N	SOF	2	sastre1
4456	644	1	before	before.CONJ		SOF	2	sastre1
4462	644	7	to	to.PREP	\N	SOF	2	sastre1
4469	645	1	yeah	yeah.ADV		KEV	2	sastre1
4478	647	5	are	are.V.3P.PRES	\N	SOF	2	sastre1
4483	647	10	the	the.DET.DEF	\N	SOF	2	sastre1
4487	647	14	got	got.V.PAST	\N	SOF	2	sastre1
4492	647	19	that	that.DEM.FAR[or]that.CONJ	\N	SOF	2	sastre1
4496	647	23	place	place.N.SG	\N	SOF	2	sastre1
4504	649	5	about	about.PREP	\N	SOF	2	sastre1
4510	649	11	night	night.N.SG	\N	SOF	2	sastre1
4514	649	15	anywhere	anywhere.ADV	\N	SOF	2	sastre1
4519	649	20	something	something.PRON	\N	SOF	2	sastre1
4524	649	25	out	out.ADV	\N	SOF	2	sastre1
4529	649	30	the	the.DET.DEF	\N	SOF	2	sastre1
4540	653	2	everything	everything.PRON	\N	KEV	2	sastre1
4545	653	7	the	the.DET.DEF	\N	KEV	2	sastre1
4550	653	12	Keys	name	\N	KEV	0	sastre1
4556	655	3	transportation	transportation.N.SG	\N	KEV	2	sastre1
4568	657	6	go	go.V.3P.PRES	\N	KEV	2	sastre1
4573	657	11	to	to.PREP	\N	KEV	2	sastre1
4578	657	16	you	you.PRON.SUB.2SP	\N	KEV	2	sastre1
4583	657	21	that	that.DEM.FAR[or]that.CONJ	\N	KEV	2	sastre1
4592	659	3	they	they.PRON.SUB.3P	\N	KEV	2	sastre1
4597	659	8	regular	regular.ADJ	\N	KEV	2	sastre1
4603	660	2	sabes	know.V.2S.PRES	\N	KEV	3	sastre1
4607	660	6	restaurancitos	bistro.N.M.PL.DIM.DIM	\N	KEV	3	sastre1
4617	660	16	nada	swim.V.2S.IMPER	\N	KEV	3	sastre1
4620	660	19	mundo	world.N.M.SG	\N	KEV	3	sastre1
4625	660	24	que	that.CONJ	\N	KEV	3	sastre1
4630	660	29	MacDonalds	name	\N	KEV	0	sastre1
4636	660	35	bien	good.N.M.SG[or]well.ADV	\N	KEV	3	sastre1
4646	664	2	mirando	watch.V.PRESPART	\N	KEV	3	sastre1
4654	666	4	hemos	have.V.1P.PRES	\N	KEV	3	sastre1
4659	667	2	bueno	well.IM	\N	KEV	3	sastre1
4663	667	6	que	that.PRON.REL	\N	KEV	3	sastre1
4666	667	9	grabadorecita	recorder.N.F.SG.DIM.DIM	\N	KEV	3	sastre1
4673	668	5	cuando	when.CONJ	\N	SOF	3	sastre1
4678	669	1	sí	yes.ADV		KEV	3	sastre1
4686	671	2	los	the.DET.DEF.M.PL	\N	KEV	3	sastre1
4690	671	6	Office_Depot	name	\N	KEV	0	sastre1
4696	672	1	las	the.DET.DEF.F.PL		KEV	3	sastre1
4701	672	6	gig	gig.N.SG	\N	KEV	2	sastre1
4708	673	4	compré	buy.V.1S.PAST	\N	KEV	3	sastre1
4711	673	7	mi	my.ADJ.POSS.MF.1S.S.S	\N	KEV	3	sastre1
4718	674	5	regular	regular.ADJ.M.SG[or]regulate.V.INFIN	\N	KEV	3	sastre1
4725	675	4	cámara	camera.N.M	\N	KEV	3	sastre1
4729	675	8	una	a.DET.INDEF.F.SG	\N	KEV	3	sastre1
4733	675	12	dualpro	unk	\N	KEV	0	sastre1
4736	675	15	cosa	thing.N.F.SG	\N	KEV	3	sastre1
4744	677	4	la	her.PRON.OBJ.F.3S	\N	KEV	3	sastre1
4749	677	9	pero	but.CONJ	\N	KEV	3	sastre1
4754	677	14	puso	put.V.3S.PAST	\N	KEV	3	sastre1
4761	678	4	tenían	have.V.3P.IMPERF	\N	KEV	3	sastre1
4765	678	8	estas	this.PRON.DEM.F.PL	\N	KEV	3	sastre1
4771	679	2	Sandisk	name	\N	KEV	0	sastre1
4776	679	7	player	play.N.SG.AG	\N	KEV	2	sastre1
4781	679	12	radiecito	small_radio.N.M.SG.DIM.DIM	\N	KEV	3	sastre1
4783	679	14	todo	everything.PRON.M.SG[or]all.ADJ.M.SG	\N	KEV	3	sastre1
4793	681	4	nada	swim.V.2S.IMPER	\N	KEV	3	sastre1
4798	681	9	de	of.PREP	\N	KEV	3	sastre1
4803	682	3	ninguno	none.PRON.M.SG	\N	KEV	3	sastre1
4810	683	5	used	use.V.PAST	\N	SOF	2	sastre1
4815	683	10	classes	class.N.PL	\N	SOF	2	sastre1
4822	684	3	used	use.V.PAST	\N	SOF	2	sastre1
4827	684	8	record	record.V.INFIN	\N	SOF	2	sastre1
4836	686	2	guess	guess.V.1S.PRES	\N	SOF	2	sastre1
4843	687	5	not	not.ADV	\N	SOF	2	sastre1
4854	691	5	properly	proper.ADJ.+LY	\N	SOF	2	sastre1
4857	691	8	are	are.V.3P.PRES	\N	SOF	2	sastre1
4862	691	13	be	be.SV.INFIN	\N	SOF	2	sastre1
4866	691	17	say	say.V.INFIN	\N	SOF	2	sastre1
4870	691	21	shouldn't	should.V.3P.PRES.+NEG	\N	SOF	2	sastre1
4876	692	1	that's	that.DEM.FAR.+BE.V.3S.PRES		KEV	2	sastre1
4882	693	4	them	them.PRON.OBJ.3P	\N	SOF	2	sastre1
4888	694	5	door	door.N.SG	\N	KEV	2	sastre1
4893	694	10	pasa	pass.V.2S.IMPER	\N	KEV	3	sastre1
4899	696	1	tienen	have.V.23P.PRES		KEV	3	sastre1
4901	696	3	maestro	master.ADJ.M.SG[or]master.N.M.SG	\N	KEV	3	sastre1
4907	696	9	cualquier	whatever.ADJ.MF.SG	\N	KEV	3	sastre1
4912	696	14	sin	without.PREP	\N	KEV	3	sastre1
4916	696	18	tú	you.PRON.SUB.MF.2S	\N	KEV	3	sastre1
4920	696	22	grabado	record.V.M.SG.PASTPART	\N	KEV	3	sastre1
4928	698	5	gotten	gotten.V.PASTPART.US.US	\N	SOF	2	sastre1
4937	701	1	todo	everything.PRON.M.SG		KEV	3	sastre1
4941	701	5	todo	everything.PRON.M.SG	\N	KEV	3	sastre1
4947	702	5	chocó	crash.V.3S.PAST	\N	SOF	3	sastre1
4952	702	10	fue	be.V.3S.PAST	\N	SOF	3	sastre1
4956	702	14	chocó	crash.V.3S.PAST	\N	SOF	3	sastre1
4965	704	3	is	is.V.3S.PRES	\N	SOF	2	sastre1
4968	704	6	back	back.N.SG[or]back.ADV	\N	SOF	2	sastre1
4973	704	11	everything	everything.PRON	\N	SOF	2	sastre1
4980	705	2	for	for.PREP	\N	KEV	2	sastre1
4984	706	1	the	the.DET.DEF		SOF	2	sastre1
4989	706	6	hurting	hurt.V.PRESPART	\N	SOF	2	sastre1
4996	707	3	fue	be.V.3S.PAST	\N	KEV	3	sastre1
5000	707	7	dieron	give.V.3P.PAST	\N	KEV	3	sastre1
5007	708	4	dieron	give.V.3P.PAST	\N	SOF	3	sastre1
5011	708	8	le	him.PRON.OBL.MF.23S	\N	SOF	3	sastre1
5019	710	2	axel	axel.N.SG	\N	SOF	2	sastre1
5024	710	7	de	of.PREP	\N	SOF	3	sastre1
5027	710	10	la	her.PRON.OBJ.F.3S	\N	SOF	3	sastre1
5032	710	15	te	you.PRON.OBL.MF.2S	\N	SOF	3	sastre1
5036	710	19	tan	so.ADV	\N	SOF	3	sastre1
5040	710	23	dio	give.V.3S.PAST	\N	SOF	3	sastre1
5045	711	2	increíble	incredible.ADJ.M.SG	\N	KEV	3	sastre1
5051	712	5	of	of.PREP	\N	SOF	2	sastre1
5056	712	10	Toyotas	name	\N	SOF	0	sastre1
5059	712	13	like	like.CONJ	\N	SOF	2	sastre1
5067	714	4	really	real.ADJ.+LY	\N	SOF	2	sastre1
5076	716	5	to	to.PREP	\N	SOF	2	sastre1
5080	716	9	color	color.N.SG	\N	SOF	2	sastre1
5087	717	2	mmhm	unk	\N	KEV	0	sastre1
5096	719	3	it	it.PRON.SUB.3S	\N	SOF	2	sastre1
5102	720	2	carrito	trolley.N.M.SG	\N	KEV	3	sastre1
5114	724	4	for	for.PREP	\N	SOF	2	sastre1
5119	725	1	imagínate	imagine.V.2S.IMPER.PRECLITIC.PRECLITIC		KEV	3	sastre1
5125	727	3	matado	kill.V.PASTPART	\N	SOF	3	sastre1
5133	728	7	el	the.DET.DEF.M.SG	\N	SOF	3	sastre1
5141	730	4	vienen	come.V.23P.PRES	\N	KEV	3	sastre1
5150	731	6	my	my.ADJ.POSS.1S	\N	SOF	2	sastre1
5155	731	11	small	small.ADJ	\N	SOF	2	sastre1
5159	731	15	buy	buy.V.INFIN	\N	SOF	2	sastre1
5164	731	20	used	use.V.PASTPART	\N	SOF	2	sastre1
5168	731	24	her	her.PRON.OBJ.F.3S	\N	SOF	2	sastre1
5174	731	30	like	like.CONJ	\N	SOF	2	sastre1
5179	732	1	get	get.V.INFIN		SOF	2	sastre1
5185	732	7	when	when.CONJ	\N	SOF	2	sastre1
5190	732	12	out	out.ADV	\N	SOF	2	sastre1
5194	732	16	already	already.ADV	\N	SOF	2	sastre1
5200	732	22	that	that.DEM.FAR	\N	SOF	2	sastre1
5204	732	26	chocado	crash.V.M.SG.PASTPART	\N	SOF	3	sastre1
5209	733	1	fíjate	fix.V.2S.IMPER.PRECLITIC.PRECLITIC		SOF	3	sastre1
5219	735	3	que	that.CONJ	\N	SOF	3	sastre1
5224	735	8	system	system.N.SG	\N	SOF	2	sastre1
5228	735	12	had	had.V.PAST	\N	SOF	2	sastre1
5236	737	3	fixed	fix.V.PAST	\N	SOF	2	sastre1
5242	738	3	sold	sold.V.PAST	\N	SOF	2	sastre1
5247	738	8	que	that.CONJ	\N	SOF	3	sastre1
5251	738	12	el	the.DET.DEF.M.SG	\N	SOF	3	sastre1
5258	739	5	trade	trade.V.INFIN	\N	SOF	2	sastre1
5264	739	11	Honda	name	\N	SOF	0	sastre1
5269	739	16	that	that.CONJ	\N	SOF	2	sastre1
5273	739	20	that	that.DEM.FAR	\N	SOF	2	sastre1
5280	740	5	can't	can.V.123SP.PRES.+NEG	\N	SOF	2	sastre1
5284	740	9	car	car.N.SG	\N	SOF	2	sastre1
5291	741	6	good	good.ADJ	\N	SOF	2	sastre1
5297	743	3	crashed	crash.V.PASTPART	\N	SOF	2	sastre1
5306	745	3	put	put.V.3P.PRES	\N	SOF	2	sastre1
5311	745	8	you	you.PRON.SUB.2SP	\N	SOF	2	sastre1
5316	745	13	of	of.PREP	\N	SOF	2	sastre1
5321	745	18	side	side.N.SG	\N	SOF	2	sastre1
5327	746	3	a	a.DET.INDEF	\N	SOF	2	sastre1
5332	746	8	has	has.V.3S.PRES	\N	SOF	2	sastre1
5336	746	12	the	the.DET.DEF	\N	SOF	2	sastre1
5343	748	2	un	one.DET.INDEF.M.SG	\N	KEV	3	sastre1
5356	751	7	for	for.PREP	\N	SOF	2	sastre1
5363	753	1	no	not.ADV		SOF	3	sastre1
5368	754	1	they	they.PRON.SUB.3P		SOF	2	sastre1
5373	754	6	want	want.V.INFIN	\N	SOF	2	sastre1
5379	755	4	liability	liability.N.SG	\N	SOF	2	sastre1
5387	757	3	to	to.PREP	\N	SOF	2	sastre1
5392	757	8	way	way.N.SG	\N	SOF	2	sastre1
5398	758	3	told	told.V.PAST	\N	SOF	2	sastre1
5401	758	6	the	the.DET.DEF	\N	SOF	2	sastre1
5406	758	11	the	the.DET.DEF	\N	SOF	2	sastre1
5414	759	6	don't	do.V.1S.PRES.+NEG	\N	SOF	2	sastre1
5421	761	2	know	know.V.2SP.PRES	\N	SOF	2	sastre1
5424	761	5	wanna	want.V.INFIN.+TO.PREP	\N	SOF	2	sastre1
5440	767	1	are	are.V.123P.PRES		KEV	2	sastre1
5447	768	5	we	we.PRON.SUB.1P	\N	SOF	2	sastre1
5452	769	1	we've	we.PRON.SUB.1P.+HAVE.V.PRES		SOF	2	sastre1
5459	770	1	are	are.V.123P.PRES		KEV	2	sastre1
5466	771	3	they	they.PRON.SUB.3P	\N	SOF	2	sastre1
5471	772	1	keep	keep.V.INFIN		SOF	2	sastre1
5483	774	6	minutes	minute.N.PL	\N	KEV	2	sastre1
5494	778	1	we	we.PRON.SUB.1P		SOF	2	sastre1
5499	778	6	each	each.ADJ	\N	SOF	2	sastre1
5503	778	10	watch	watch.V.INFIN	\N	SOF	2	sastre1
5508	778	15	tv	unk	\N	SOF	0	sastre1
5517	781	3	lo	the.DET.DEF.NT.SG	\N	KEV	3	sastre1
5522	781	8	no	not.ADV	\N	KEV	3	sastre1
5527	782	3	ese	that.PRON.DEM.M.SG	\N	KEV	3	sastre1
5536	784	3	otros	other.ADJ.M.PL	\N	KEV	3	sastre1
5541	784	8	el	the.DET.DEF.M.SG	\N	KEV	3	sastre1
5549	786	4	anteayer	day_before_yesterday.ADV	\N	KEV	3	sastre1
5554	786	9	Edison	name	\N	KEV	0	sastre1
5564	790	2	está	be.V.23S.PRES	\N	KEV	3	sastre1
5569	791	1	y	and.CONJ		KEV	3	sastre1
5573	791	5	lugar	place.N.M.SG	\N	KEV	3	sastre1
5580	792	2	otros	other.ADJ.M.PL	\N	KEV	3	sastre1
5584	792	6	nosotros	we.PRON.SUB.M.1P	\N	KEV	3	sastre1
5591	793	6	four	four.NUM	\N	SOF	2	sastre1
5596	793	11	la	the.DET.DEF.F.SG	\N	SOF	3	sastre1
5608	793	23	allá	there.ADV	\N	SOF	3	sastre1
5618	795	3	habían	have.V.3P.IMPERF	\N	KEV	3	sastre1
5622	795	7	tiroteado	shoot.V.PASTPART	\N	KEV	3	sastre1
5627	795	12	días	day.N.M.PL	\N	KEV	3	sastre1
5632	796	3	se	be.V.2P.IMPER.PRECLITIC.PRECLITIC	\N	KEV	3	sastre1
5639	797	1	pero	but.CONJ		KEV	3	sastre1
5643	797	5	más	more.ADV	\N	KEV	3	sastre1
5647	797	9	un	one.DET.INDEF.M.SG	\N	KEV	3	sastre1
5653	798	2	calle	street.N.F.SG	\N	KEV	3	sastre1
5657	798	6	miedo	fear.N.M.SG	\N	KEV	3	sastre1
5666	801	4	desesperada	desperate.ADJ.F.SG	\N	SOF	3	sastre1
5673	803	4	desesperada	desperate.ADJ.F.SG	\N	KEV	3	sastre1
5679	803	10	cualquier	whatever.ADJ.MF.SG	\N	KEV	3	sastre1
5689	807	3	se	be.V.2P.IMPER.PRECLITIC.PRECLITIC	\N	KEV	3	sastre1
5694	807	8	día	day.N.M.SG	\N	KEV	3	sastre1
5699	808	2	compran	buy.V.23P.PRES	\N	KEV	3	sastre1
5701	809	1	ay	oh.IM		SOF	3	sastre1
5702	809	2	at	at.PREP	\N	SOF	2	sastre1
5703	809	3	least	least.ADJ	\N	SOF	2	sastre1
5704	809	4	they	they.PRON.SUB.3P	\N	SOF	2	sastre1
5705	809	5	do	do.V.3P.PRES	\N	SOF	2	sastre1
5707	810	1	yeah	yeah.ADV		KEV	2	sastre1
5709	811	1	they	they.PRON.SUB.3P		SOF	2	sastre1
5710	811	2	are	are.V.3P.PRES	\N	SOF	2	sastre1
5711	811	3	doing	do.V.PRESPART	\N	SOF	2	sastre1
5712	811	4	something	something.PRON	\N	SOF	2	sastre1
5763	816	4	planning	plan.V.PRESPART	\N	SOF	2	sastre1
5769	816	10	lake	lake.N.SG	\N	SOF	2	sastre1
5774	817	2	you	you.PRON.SUB.2SP	\N	SOF	2	sastre1
5779	818	2	haven't	have.V.3P.PRES.+NEG	\N	SOF	2	sastre1
5785	819	1	no	no.ADV		KEV	2	sastre1
5793	821	2	I	I.PRON.SUB.1S	\N	SOF	2	sastre1
5796	821	5	been	been.V.PASTPART	\N	SOF	2	sastre1
5802	822	3	we've	we.PRON.SUB.1P.+HAVE.V.PRES	\N	SOF	2	sastre1
5807	822	8	for	for.PREP	\N	SOF	2	sastre1
5811	822	12	creo	believe.V.1S.PRES	\N	SOF	3	sastre1
5817	822	18	years	year.N.PL	\N	SOF	2	sastre1
5821	822	22	done	done.V.PASTPART	\N	SOF	2	sastre1
5827	823	4	the	the.DET.DEF	\N	KEV	2	sastre1
5831	823	8	that	that.DEM.FAR[or]that.CONJ	\N	KEV	2	sastre1
5839	823	16	entity	entity.N.SG	\N	KEV	2	sastre1
5846	824	6	is	is.V.3S.PRES	\N	KEV	2	sastre1
5850	824	10	district	district.N.SG	\N	KEV	2	sastre1
5857	825	6	from	from.PREP	\N	KEV	2	sastre1
5860	825	9	thirteen	thirteen.NUM	\N	KEV	2	sastre1
5866	826	4	el	the.DET.DEF.M.SG	\N	KEV	3	sastre1
5874	828	4	management	management.N.SG	\N	KEV	2	sastre1
5880	829	5	come	come.V.2SP.PRES	\N	KEV	2	sastre1
5884	829	9	that's	that.CONJ.+BE.V.3S.PRES	\N	KEV	2	sastre1
5893	830	7	that	that.DEM.FAR[or]that.CONJ	\N	KEV	2	sastre1
5898	830	12	a	a.DET.INDEF	\N	KEV	2	sastre1
5902	830	16	do	do.V.INFIN	\N	KEV	2	sastre1
5909	832	1	when	when.CONJ		KEV	2	sastre1
5914	832	6	not	not.ADV	\N	KEV	2	sastre1
5918	832	10	moved	move.V.PASTPART	\N	KEV	2	sastre1
5924	833	4	elecciones	election.N.F.PL	\N	KEV	3	sastre1
5930	833	10	se	be.V.2P.IMPER.PRECLITIC.PRECLITIC	\N	KEV	3	sastre1
5938	835	1	uno	one.PRON.M.SG		KEV	3	sastre1
5943	835	6	corrió	run.V.3S.PAST	\N	KEV	3	sastre1
5950	837	4	muchachitos	lads.N.M.PL.DIM.DIM	\N	KEV	3	sastre1
5959	838	4	this	this.DEM.NEAR.SG	picks	KEV	2	sastre1
5963	838	8	thing	thing.N.SG	and	KEV	2	sastre1
5972	839	1	excuse	excuse.V.INFIN		SOF	2	sastre1
5978	840	3	the	the.DET.DEF	\N	SOF	2	sastre1
5983	840	8	minutes	minute.N.PL	\N	SOF	2	sastre1
5992	843	4	there	there.ADV	\N	SOF	2	sastre1
5997	844	4	para	stall.V.2S.IMPER	\N	KEV	3	sastre1
6003	845	4	para	stall.V.2S.IMPER	\N	SOF	3	sastre1
6009	846	4	de	of.PREP	\N	SOF	3	sastre1
6013	846	8	quedan	stay.V.23P.PRES	\N	SOF	3	sastre1
6019	846	14	are	are.V.3P.PRES	\N	SOF	2	sastre1
6025	847	2	have	have.V.1P.PRES	\N	KEV	2	sastre1
6028	847	5	como	like.CONJ	\N	KEV	3	sastre1
6036	850	3	estaba	be.V.13S.IMPERF	\N	KEV	3	sastre1
6042	851	4	muchachito	lad.N.M.SG.DIM.DIM	\N	SOF	3	sastre1
6050	852	4	que	that.PRON.REL	\N	KEV	3	sastre1
6054	852	8	acá	here.ADV	\N	KEV	3	sastre1
6058	852	12	eso	that.PRON.DEM.NT.SG	\N	KEV	3	sastre1
6063	853	4	basura	rubbish.N.F.SG	\N	KEV	3	sastre1
6068	853	9	nosotros	we.PRON.SUB.M.1P	\N	KEV	3	sastre1
6074	854	5	el	the.DET.DEF.M.SG	\N	KEV	3	sastre1
6079	854	10	management	management.N.SG	\N	KEV	2	sastre1
6081	854	12	viene	come.V.23S.PRES	\N	KEV	3	sastre1
6085	854	16	pedazo	piece.N.M.SG	\N	KEV	3	sastre1
6090	855	2	vienen	come.V.23P.PRES	\N	KEV	3	sastre1
6098	857	2	arrancan	tear.V.23P.PRES	\N	KEV	3	sastre1
6104	858	2	caminan	walk.V.23P.PRES	\N	KEV	3	sastre1
6110	858	8	para	stall.V.2S.IMPER	\N	KEV	3	sastre1
6114	858	12	la	the.DET.DEF.F.SG	\N	KEV	3	sastre1
6120	859	4	un	one.DET.INDEF.M.SG	\N	KEV	3	sastre1
6124	859	8	camión	lorry.N.M.SG	\N	KEV	3	sastre1
6129	860	4	cuántos	how_many.ADJ.INT.M.PL	\N	KEV	3	sastre1
6133	860	8	por	for.PREP	\N	KEV	3	sastre1
6137	860	12	dejan	leave.V.23P.PRES	\N	KEV	3	sastre1
6143	861	4	que	that.PRON.REL	\N	KEV	3	sastre1
6147	861	8	ahí	there.ADV	\N	KEV	3	sastre1
6154	862	6	a	to.PREP	\N	KEV	3	sastre1
6157	862	9	que	that.PRON.REL	\N	KEV	3	sastre1
6163	863	3	hecho	do.V.PASTPART	\N	KEV	3	sastre1
6169	864	4	pasa	pass.V.2S.IMPER	\N	KEV	3	sastre1
6174	864	9	con	with.PREP	\N	KEV	3	sastre1
6181	866	2	sí	yes.ADV	\N	KEV	3	sastre1
6187	867	3	tiempo	time.N.M.SG	\N	SOF	3	sastre1
6193	868	5	al	to_the.PREP+DET.DEF.M.SG	\N	KEV	3	sastre1
6203	871	2	aparato	device.N.M.SG	\N	KEV	3	sastre1
6205	871	4	son	sound.N.M.SG	\N	KEV	3	sastre1
6209	871	8	allá	there.ADV	\N	KEV	3	sastre1
6216	872	3	te	you.PRON.OBL.MF.2S	\N	KEV	3	sastre1
6221	872	8	la	the.DET.DEF.F.SG	\N	KEV	3	sastre1
6227	873	2	yo	I.PRON.SUB.MF.1S	\N	SOF	3	sastre1
6233	874	4	que	that.PRON.REL	\N	KEV	3	sastre1
6239	875	4	veo	see.V.1S.PRES	\N	SOF	3	sastre1
6247	878	2	vienen	come.V.23P.PRES	\N	KEV	3	sastre1
6255	879	5	no	not.ADV	\N	SOF	3	sastre1
6259	879	9	nunca	never.ADV	\N	SOF	3	sastre1
6264	880	4	caminando	walk.V.PRESPART	\N	KEV	3	sastre1
6272	882	3	limpian	clean.V.23P.PRES	\N	KEV	3	sastre1
6276	882	7	pala	spade.N.F.SG	\N	KEV	3	sastre1
6281	882	12	van	go.V.23P.PRES	\N	KEV	3	sastre1
6284	882	15	hierba	grass.N.F.SG	\N	KEV	3	sastre1
6291	883	6	un	one.DET.INDEF.M.SG	\N	KEV	3	sastre1
6296	884	2	llevarla	wear.V.INFIN	\N	KEV	3	sastre1
6302	885	1	imagínate	imagine.V.2S.IMPER.PRECLITIC.PRECLITIC		KEV	3	sastre1
6307	885	6	parado	unemployed.ADJ.M.SG[or]unemployed.N.M.SG	\N	KEV	3	sastre1
6314	886	3	que	that.CONJ	\N	KEV	3	sastre1
6318	886	7	recoger	pick.V.INFIN	\N	KEV	3	sastre1
6322	886	11	llevarlo	wear.V.INFIN	\N	KEV	3	sastre1
6328	887	1	ellos	they.PRON.SUB.M.3P		KEV	3	sastre1
6332	887	5	y	and.CONJ	\N	KEV	3	sastre1
6336	887	9	empujándola	thrust.V.PRESPART.PRECLITIC.PRECLITIC[or]push.V.PRESPART	\N	KEV	3	sastre1
6342	888	3	que	that.PRON.REL	\N	KEV	3	sastre1
6347	889	2	se	be.V.2P.IMPER.PRECLITIC.PRECLITIC	\N	KEV	3	sastre1
6351	889	6	suelta	loose.ADJ.F.SG	\N	KEV	3	sastre1
6354	889	9	todo	everything.PRON.M.SG	\N	KEV	3	sastre1
6360	890	5	sopla	blow.V.2S.IMPER	\N	KEV	3	sastre1
6367	891	1	toda	all.ADJ.F.SG		KEV	3	sastre1
6373	892	2	cayendo	fall.V.PRESPART	\N	SOF	3	sastre1
6381	894	3	le	him.PRON.OBL.MF.23S	\N	KEV	3	sastre1
6387	895	2	fumigó	spray.V.3S.PAST	\N	KEV	3	sastre1
6392	895	7	la	the.DET.DEF.F.SG	\N	KEV	3	sastre1
6397	895	12	no	not.ADV	\N	KEV	3	sastre1
6401	895	16	con	with.PREP	\N	KEV	3	sastre1
6407	896	2	te	you.PRON.OBL.MF.2S	\N	KEV	3	sastre1
6411	896	6	lily_pads	lily_pad.N.PL	\N	KEV	2	sastre1
6417	897	4	la	the.DET.DEF.F.SG	\N	KEV	3	sastre1
6422	898	2	vaya	go.V.123S.SUBJ.PRES	\N	KEV	3	sastre1
6429	899	6	los	the.DET.DEF.M.PL	\N	KEV	3	sastre1
6434	899	11	ya	already.ADV	\N	KEV	3	sastre1
6438	899	15	floreciendo	bloom.V.PRESPART	\N	KEV	3	sastre1
6448	901	5	al	to_the.PREP+DET.DEF.M.SG	\N	SOF	3	sastre1
6452	901	9	un	one.DET.INDEF.M.SG	\N	SOF	3	sastre1
6456	902	1	un	one.DET.INDEF.M.SG		KEV	3	sastre1
6467	905	4	está	be.V.23S.PRES	\N	KEV	3	sastre1
6472	906	1	qué	what.INT		SOF	3	sastre1
6477	906	6	solita	alone.ADJ.F.SG.DIM.DIM	\N	SOF	3	sastre1
6483	907	5	pensaba	think.V.13S.IMPERF	\N	KEV	3	sastre1
6489	907	11	las	the.DET.DEF.F.PL	\N	KEV	3	sastre1
6494	907	16	vivían	live.V.3P.IMPERF	\N	KEV	3	sastre1
6500	908	2	este	this.PRON.DEM.M.SG	\N	KEV	3	sastre1
6508	910	2	hijo	son.N.M.SG	\N	KEV	3	sastre1
6513	910	7	el	the.DET.DEF.M.SG	\N	KEV	3	sastre1
6517	910	11	vive	live.V.2S.IMPER	\N	KEV	3	sastre1
6525	912	4	nunca	never.ADV	\N	KEV	3	sastre1
6529	912	8	aquí	here.ADV	\N	KEV	3	sastre1
6534	913	2	must	must.V.3S.PRES	\N	SOF	2	sastre1
6539	913	7	fight	fight.N.SG	\N	SOF	2	sastre1
6544	914	4	live	live.SV.INFIN	\N	SOF	2	sastre1
6548	914	8	porque	because.CONJ	\N	SOF	3	sastre1
6554	915	2	posible	possible.ADJ.M.SG	\N	KEV	3	sastre1
6561	916	6	acuerdas	remind.V.2S.PRES	\N	KEV	3	sastre1
6566	916	11	tres	three.NUM	\N	KEV	3	sastre1
6571	916	16	se	be.V.2P.IMPER.PRECLITIC.PRECLITIC	\N	KEV	3	sastre1
6575	916	20	tenía	have.V.13S.IMPERF	\N	KEV	3	sastre1
6579	916	24	lo	him.PRON.OBJ.M.3S	\N	KEV	3	sastre1
6588	918	5	tapado	cover.V.M.SG.PASTPART	\N	KEV	3	sastre1
6596	920	2	le	him.PRON.OBL.MF.23S	\N	KEV	3	sastre1
6600	920	6	el	the.DET.DEF.M.SG	\N	KEV	3	sastre1
6606	921	4	el	the.DET.DEF.M.SG	\N	KEV	3	sastre1
6611	921	9	ellos	they.PRON.SUB.M.3P	\N	KEV	3	sastre1
6615	921	13	lo	him.PRON.OBJ.M.3S	\N	KEV	3	sastre1
6621	922	2	estaba	be.V.13S.IMPERF	\N	KEV	3	sastre1
6622	922	3	parado	unemployed.ADJ.M.SG[or]unemployed.N.M.SG	\N	KEV	3	sastre1
6633	923	2	que	that.CONJ	\N	KEV	3	sastre1
6637	923	6	forma	form.V.2S.IMPER	\N	KEV	3	sastre1
6645	925	2	qué	what.INT	\N	KEV	3	sastre1
6649	925	6	tarde	afternoon.N.F.SG	\N	KEV	3	sastre1
6657	927	5	estar	be.V.INFIN	\N	KEV	3	sastre1
6662	927	10	grados	grade.N.M.PL	\N	KEV	3	sastre1
6669	929	2	nos	us.PRON.OBL.MF.1P	\N	KEV	3	sastre1
6675	930	3	últimos	latter.ORD.M.PL	\N	KEV	3	sastre1
6682	931	3	yo	I.PRON.SUB.MF.1S	\N	SOF	3	sastre1
6686	931	7	maternidad	motherhood.N.F.SG	\N	SOF	3	sastre1
6692	931	13	pesado	heavy.ADJ.M.SG	\N	SOF	3	sastre1
6699	932	6	son	sound.N.M.SG	\N	KEV	3	sastre1
6705	933	3	escribir	write.V.INFIN	\N	SOF	3	sastre1
6710	933	8	los	the.DET.DEF.M.PL	\N	SOF	3	sastre1
6716	934	1	so	under.PREP		SOF	3	sastre1
6721	934	6	mí	me.PRON.PREP.MF.1S	\N	SOF	3	sastre1
6727	935	4	que	that.CONJ	\N	SOF	3	sastre1
6733	936	4	un	one.DET.INDEF.M.SG	\N	SOF	3	sastre1
6738	937	3	me	me.PRON.OBL.MF.1S	\N	SOF	3	sastre1
6744	939	2	mucho	much.ADJ.M.SG	\N	SOF	3	sastre1
6750	940	4	se	be.V.2P.IMPER.PRECLITIC.PRECLITIC	\N	SOF	3	sastre1
6756	941	3	acostumbrado	accustom.V.M.SG.PASTPART	\N	SOF	3	sastre1
6762	941	9	a	to.PREP	\N	SOF	3	sastre1
6765	941	12	inglés	english.N.M.SG	\N	SOF	3	sastre1
6774	943	6	español	Spanish.N.M.SG	\N	SOF	3	sastre1
6784	946	4	y	and.CONJ	\N	SOF	3	sastre1
6789	947	1	y	and.CONJ		SOF	3	sastre1
6794	947	6	trabajos	work.N.M.PL	\N	SOF	3	sastre1
6799	947	11	tengo	have.V.1S.PRES	\N	SOF	3	sastre1
6807	949	2	lo	him.PRON.OBJ.M.3S	\N	SOF	3	sastre1
6811	949	6	tiempo	time.N.M.SG	\N	SOF	3	sastre1
6819	951	1	er	unk		KEV	0	sastre1
6823	951	5	te	you.PRON.OBL.MF.2S	\N	KEV	3	sastre1
6828	951	10	copia	copy.V.2S.IMPER	\N	KEV	3	sastre1
6833	952	4	diccionario	dictionary.N.M.SG	\N	KEV	3	sastre1
6835	952	6	español	Spanish.N.M.SG[or]Spanish.ADJ.M.SG	\N	KEV	3	sastre1
6845	953	9	computadora	computer.N.F.SG	\N	KEV	3	sastre1
6851	954	5	usado	use.V.PASTPART	\N	KEV	3	sastre1
6858	956	2	te	you.PRON.OBL.MF.2S	\N	KEV	3	sastre1
6865	957	3	que	that.PRON.REL	\N	SOF	3	sastre1
6869	957	7	el	the.DET.DEF.M.SG	\N	SOF	3	sastre1
6874	958	4	regular	regulate.V.INFIN	\N	KEV	3	sastre1
6880	959	5	mi	my.ADJ.POSS.MF.1S.S.S	\N	SOF	3	sastre1
6886	960	1	mis	mine.ADJ.POSS.MF.1S.P.P		SOF	3	sastre1
6890	960	5	tenían	have.V.3P.IMPERF	\N	SOF	3	sastre1
6895	960	10	heredé	inherit.V.1S.PAST	\N	SOF	3	sastre1
6901	961	4	ahí	there.ADV	\N	SOF	3	sastre1
6907	962	5	conseguir	manage.V.INFIN	\N	KEV	3	sastre1
6911	962	9	esto	this.PRON.DEM.NT.SG	\N	KEV	3	sastre1
6916	962	14	la	the.DET.DEF.F.SG	\N	KEV	3	sastre1
6922	963	4	en	in.PREP	\N	KEV	3	sastre1
6929	965	1	pones	put.V.2S.PRES		KEV	3	sastre1
6934	965	6	o	or.CONJ	\N	KEV	3	sastre1
6940	966	3	da	give.V.2S.IMPER	\N	KEV	3	sastre1
6946	968	2	te	you.PRON.OBL.MF.2S	\N	KEV	3	sastre1
6947	968	3	da	give.V.2S.IMPER	\N	KEV	3	sastre1
6949	968	5	y	and.CONJ	\N	KEV	3	sastre1
6952	968	8	diferentes	different.ADJ.MF.PL	\N	KEV	3	sastre1
\.


--
-- Name: sastre1_cgwords_pk; Type: CONSTRAINT; Schema: public; Owner: kevin; Tablespace: 
--

ALTER TABLE ONLY sastre1_cgwords
    ADD CONSTRAINT sastre1_cgwords_pk PRIMARY KEY (word_id);


--
-- PostgreSQL database dump complete
--

