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
-- Name: mc_welsh; Type: TABLE; Schema: public; Owner: kevin; Tablespace: 
--

CREATE TABLE mc_welsh (
    id integer DEFAULT nextval('mc_welsh_id_seq'::regclass) NOT NULL,
    filename character varying(20),
    utterance_id integer,
    location integer,
    surface1 character varying(50),
    surface2 character varying(50),
    auto1 character varying(50),
    auto2 character varying(50),
    langid1 character varying(10),
    langid2 character varying(10),
    pos1 character varying(10),
    pos2 character varying(10)
);


ALTER TABLE public.mc_welsh OWNER TO kevin;

--
-- Data for Name: mc_welsh; Type: TABLE DATA; Schema: public; Owner: kevin
--

COPY mc_welsh (id, filename, utterance_id, location, surface1, surface2, auto1, auto2, langid1, langid2, pos1, pos2) FROM stdin;
2	deuchar1	16	8	glass	llai	glass.N.SG[or]class.N.SG+SM	smaller.ADJ.COMP	cym&eng	cym	n	adj
3	deuchar1	67	5	ran	fwya	part.N.F.SG+SM	biggest.ADJ.SUP+SM	cym	cym	n	adj
4	deuchar1	201	2	weekend	nesa	weekend.N.SG	next.ADJ.SUP.SPOKEN	eng	cym	n	adj
5	deuchar1	366	5	weekend	hwnna	weekend.N.SG	that.ADJ.DEM.M.SG.SPOKEN	eng	cym	n	adj
6	deuchar1	526	5	rywbeth	mwy	something.N.M.SG+SM	bigger.ADJ.COMP	cym	cym	n	adj
7	deuchar1	911	2	job	hwnna	job.N.SG	that.ADJ.DEM.M.SG.SPOKEN	cym&eng	cym	n	adj
8	deuchar1	967	9	ffordd	hyn	road.N.F.SG	this.ADJ.DEM.SP	cym	cym	n	adj
9	deuchar1	857	4	hwyrach	dydd	perhaps.ADV[or]late.ADJ.COMP	day.N.M.SG	cym	cym	adj	n
10	patagonia1	17	12	fan	hyn	place.N.MF.SG+SM	this.ADJ.DEM.SP	cym	cym	n	adj
11	patagonia1	115	2	dydd_Mawrth	nesaf	Tuesday.N.M.SG	next.ADJ.SUP	cym	cym	n	adj
12	patagonia1	128	1	diwrnod	nesaf	day.N.M.SG	next.ADJ.SUP	cym	cym	n	adj
13	patagonia1	131	1	diwrnod	nesaf	day.N.M.SG	next.ADJ.SUP	cym	cym	n	adj
14	patagonia1	134	1	diwrnod	nesaf	day.N.M.SG	next.ADJ.SUP	cym	cym	n	adj
15	patagonia1	261	3	dydd_Sadwrn	nesaf	Saturday.N.M.SG	next.ADJ.SUP	cym	cym	n	adj
16	patagonia1	264	2	dydd_Sadwrn	nesaf	Saturday.N.M.SG	next.ADJ.SUP	cym	cym	n	adj
17	patagonia1	333	11	awr	mwy	hour.N.F.SG	bigger.ADJ.COMP	cym	cym	n	adj
18	patagonia1	355	7	vez	anterior	time.N.F.SG	previous.ADJ.M.SG	spa	spa	n	adj
19	patagonia1	17	14	hyn	achos	this.ADJ.DEM.SP	cause.N.M.SG	cym	cym	adj	n
20	patagonia2	10	3	fan	hyn	place.N.MF.SG+SM	this.ADJ.DEM.SP	cym	cym	n	adj
21	patagonia2	13	9	fan	hyn	place.N.MF.SG+SM	this.ADJ.DEM.SP	cym	cym	n	adj
22	patagonia2	135	10	fan	hyn	place.N.MF.SG+SM	this.ADJ.DEM.SP	cym	cym	n	adj
23	patagonia2	218	11	llun	hynny	picture.N.M.SG	that.ADJ.DEM.SP	cym	cym	n	adj
24	patagonia2	370	7	fan	hyn	place.N.MF.SG+SM	this.ADJ.DEM.SP	cym	cym	n	adj
25	patagonia2	426	5	fan	hyn	place.N.MF.SG+SM	this.ADJ.DEM.SP	cym	cym	n	adj
26	patagonia2	476	9	amser	hynny	time.N.M.SG	that.ADJ.DEM.SP	cym	cym	n	adj
27	patagonia2	480	11	fan	hyn	place.N.MF.SG+SM	this.ADJ.DEM.SP	cym	cym	n	adj
28	patagonia2	501	4	fan	hynny	van.N.F.SG[or]place.N.MF.SG+SM	that.ADJ.DEM.SP	cym	cym	n	adj
29	patagonia2	505	4	te	fantástico	tea.N.M.SG	fantastic.ADJ.M.SG	cym	es	n	adj
30	patagonia2	516	3	fan	hynny	van.N.F.SG[or]place.N.MF.SG+SM	that.ADJ.DEM.SP	cym	cym	n	adj
31	patagonia2	516	12	fan	hynny	van.N.F.SG[or]place.N.MF.SG+SM	that.ADJ.DEM.SP	cym	cym	n	adj
32	patagonia2	581	2	dipyn	mwy	little bit.N.M.SG+SM	bigger.ADJ.COMP	cym	cym	n	adj
33	patagonia2	673	5	plant	mwya	children.N.M.PL	biggest.ADJ.SUP	cym	cym	n	adj
34	patagonia2	688	4	plant	mwya	children.N.M.PL	biggest.ADJ.SUP	cym	cym	n	adj
35	patagonia2	738	23	awr	orau	hour.N.F.SG	best.ADJ.SUP+SM	cym	cym	n	adj
36	patagonia2	746	7	adeg	hynny	time.N.F.SG	that.ADJ.DEM.SP	cym	cym	n	adj
37	patagonia2	845	3	gwynt	mwya	wind.N.M.SG	biggest.ADJ.SUP	cym	cym	n	adj
38	patagonia2	13	5	well	ysgoloriaeth	better.ADJ.COMP+SM	scholarship.N.F.SG	cym	cym	adj	n
39	patagonia3	52	7	fan	hyn	place.N.MF.SG+SM	this.ADJ.DEM.SP	cym	cym	n	adj
40	patagonia3	108	5	fan	hyn	place.N.MF.SG+SM	this.ADJ.DEM.SP	cym	cym	n	adj
41	patagonia3	141	7	sir	hyn	county.N.F.SG	this.ADJ.DEM.SP	cym	cym	n	adj
42	patagonia3	165	5	blwc	mwy	pluck.N.M.SG+SM	bigger.ADJ.COMP	cym	cym	n	adj
43	patagonia3	214	15	llwch	hyn	dust.N.M.SG	this.ADJ.DEM.SP	cym	cym	n	adj
44	patagonia3	249	6	hogan	henaf	girl.N.F.SG	old.ADJ.SUP	cym	cym	n	adj
46	patagonia3	364	8	fan	hyn	place.N.MF.SG+SM	this.ADJ.DEM.SP	cym	cym	n	adj
47	patagonia3	370	4	blwyddyn	nesa	year.N.F.SG	next.ADJ.SUP.SPOKEN	cym	cym	n	adj
48	patagonia3	471	2	amser	hynny	time.N.M.SG	that.ADJ.DEM.SP	cym	cym	n	adj
49	patagonia3	499	2	amser	hynny	time.N.M.SG	that.ADJ.DEM.SP	cym	cym	n	adj
50	patagonia3	523	6	fan	hyn	place.N.MF.SG+SM	this.ADJ.DEM.SP	cym	cym	n	adj
51	patagonia3	575	1	fan	hyn	place.N.MF.SG+SM	this.ADJ.DEM.SP	cym	cym	n	adj
52	patagonia3	588	6	amser	hynny	time.N.M.SG	that.ADJ.DEM.SP	cym	cym	n	adj
53	patagonia3	610	8	amser	hynny	time.N.M.SG	that.ADJ.DEM.SP	cym	cym	n	adj
54	patagonia3	624	7	amser	hynny	time.N.M.SG	that.ADJ.DEM.SP	cym	cym	n	adj
55	patagonia3	644	16	amser	hynny	time.N.M.SG	that.ADJ.DEM.SP	cym	cym	n	adj
56	patagonia3	675	2	fan	hyn	place.N.MF.SG+SM	this.ADJ.DEM.SP	cym	cym	n	adj
57	patagonia3	675	4	fan	hyn	place.N.MF.SG+SM	this.ADJ.DEM.SP	cym	cym	n	adj
58	patagonia3	691	4	fan	hyn	place.N.MF.SG+SM	this.ADJ.DEM.SP	cym	cym	n	adj
59	patagonia3	723	9	adeg	hynny	time.N.F.SG	that.ADJ.DEM.SP	cym	cym	n	adj
60	patagonia3	732	6	adeg	hynny	time.N.F.SG	that.ADJ.DEM.SP	cym	cym	n	adj
61	patagonia3	755	12	fan	hyn	place.N.MF.SG+SM	this.ADJ.DEM.SP	cym	cym	n	adj
62	patagonia3	588	8	hynny	achos	that.ADJ.DEM.SP	cause.N.M.SG	cym	cym	adj	n
63	patagonia3	675	4	hyn	fan	this.ADJ.DEM.SP	place.N.MF.SG+SM	cym	cym	adj	n
64	patagonia6	21	4	ochr	isa	side.N.F.SG	lowest.ADJ.SPOKEN	cym	cym	n	adj
65	patagonia6	22	3	amser	hynny	time.N.M.SG	that.ADJ.DEM.SP	cym	cym	n	adj
66	patagonia6	45	6	fan	hyn	place.N.MF.SG+SM	this.ADJ.DEM.SP	cym	cym	n	adj
67	patagonia6	104	4	hanes	hwn	story.N.M.SG	this.ADJ.DEM.M.SG	cym	cym	n	adj
68	patagonia6	184	4	bobl	hynny	people.N.F.SG+SM	that.ADJ.DEM.SP	cym	cym	n	adj
69	patagonia6	196	9	fan	hyn	place.N.MF.SG+SM	this.ADJ.DEM.SP	cym	cym	n	adj
70	patagonia6	201	8	fan	hyn	place.N.MF.SG+SM	this.ADJ.DEM.SP	cym	cym	n	adj
71	patagonia6	261	7	amser	hynny	time.N.M.SG	that.ADJ.DEM.SP	cym	cym	n	adj
72	patagonia6	262	7	dyffryn	hyn	valley.N.M.SG	this.ADJ.DEM.SP	cym	cym	n	adj
73	patagonia6	335	5	mater	hynny	matter.N.M.SG	that.ADJ.DEM.SP	cym	cym	n	adj
74	patagonia6	402	9	man	hyn	place.N.MF.SG	this.ADJ.DEM.SP	cym	cym	n	adj
75	patagonia6	412	4	coed	hyn	trees.N.M.SG	this.ADJ.DEM.SP	cym	cym	n	adj
76	patagonia6	491	1	Sbaeneg	castellano	Spanish.N.F.SG	spanish.ADJ.M.SG	cym	spa	n	adj
77	patagonia6	521	8	athro	hynny	teacher.N.M.SG	that.ADJ.DEM.SP	cym	cym	n	adj
78	patagonia6	558	7	hanes	hyn	story.N.M.SG	this.ADJ.DEM.SP	cym	cym	n	adj
80	patagonia6	726	23	fan	hyn	place.N.MF.SG+SM	this.ADJ.DEM.SP	cym	cym	n	adj
81	patagonia6	784	10	fan	hyn	place.N.MF.SG+SM	this.ADJ.DEM.SP	cym	cym	n	adj
82	patagonia6	21	6	isa	lle	lowest.ADJ.SPOKEN	place.N.M.SG	cym	cym	adj	n
84	patagonia6	556	2	waeth	rywun	worse.ADJ.COMP+SM	someone.N.M.SG+SM	cym	cym	adj	n
85	stammers7	258	2	tro	nesa	turn.N.M.SG[or]turn.V.2S.IMPER	next.ADJ.SUP.SPOKEN	cym	cym	n	adj
86	stammers7	641	4	lot	mwy	lot.N.SG	more.ADJ.COMP	cym&eng	cym	n	adj
87	stammers7	642	12	wythnos	nesa	week.N.F.SG	next.ADJ.SUP.SPOKEN	cym	cym	n	adj
88	stammers7	651	7	tro	nesa	turn.N.M.SG[or]turn.V.2S.IMPER	next.ADJ.SUP.SPOKEN	cym	cym	n	adj
89	stammers7	797	7	rhan	fwya	part.N.F.SG	biggest.ADJ.SUP+SM	cym	cym	n	adj
90	stammers7	826	3	tro	nesa	turn.N.M.SG[or]turn.V.2S.IMPER	next.ADJ.SUP.SPOKEN	cym	cym	n	adj
91	stammers7	838	1	achos	hwn	cause.N.M.SG	this.ADJ.DEM.M.SG	cym	cym	n	adj
92	stammers7	525	7	mwy	fath	more.ADJ.COMP	type.N.M.SG+SM	cym	cym	adj	n
93	stammers7	581	5	gorau	fath	best.ADJ.SUP	type.N.M.SG+SM	cym	cym	adj	n
94	stammers9	15	7	wsnos	nesa	week.N.F.SG	next.ADJ.SUP.SPOKEN	cym	cym	n	adj
95	stammers9	67	2	adeg	hynny	time.N.F.SG	that.ADJ.DEM.SP	cym	cym	n	adj
96	stammers9	111	6	adeg	hynny	time.N.F.SG	that.ADJ.DEM.SP	cym	cym	n	adj
97	stammers9	121	6	adeg	hynny	time.N.F.SG	that.ADJ.DEM.SP	cym	cym	n	adj
98	stammers9	137	6	adeg	hynny	time.N.F.SG	that.ADJ.DEM.SP	cym	cym	n	adj
99	stammers9	246	4	tro	nesa	turn.N.M.SG[or]turn.V.2S.IMPER	next.ADJ.SUP.SPOKEN	cym	cym	n	adj
100	stammers9	267	4	lot	gwell	lot.N.SG	better.ADJ.COMP	cym&eng	cym	n	adj
101	stammers9	320	7	wythnos	nesa	week.N.F.SG	next.ADJ.SUP.SPOKEN	cym	cym	n	adj
102	stammers9	326	6	wythnos	nesa	week.N.F.SG	next.ADJ.SUP.SPOKEN	cym	cym	n	adj
103	stammers9	506	18	Sul	nesa	Sunday.N.M.SG	next.ADJ.SUP.SPOKEN	cym	cym	n	adj
104	stammers9	570	7	rhan	fwya	part.N.F.SG	biggest.ADJ.SUP+SM	cym	cym	n	adj
105	stammers9	572	3	rhan	fwya	part.N.F.SG	biggest.ADJ.SUP+SM	cym	cym	n	adj
106	stammers9	603	8	flaen	hwnnw	front.N.M.SG+SM	that.ADJ.DEM.M.SG	cym	cym	n	adj
107	stammers9	612	3	llyfr	mwy	book.N.M.SG	more.ADJ.COMP	cym	cym	n	adj
108	stammers9	639	15	eglwysi	mwya	churches.N.F.PL	biggest.ADJ.SUP	cym	cym	n	adj
\.


--
-- Name: mc_welsh_pkey; Type: CONSTRAINT; Schema: public; Owner: kevin; Tablespace: 
--

ALTER TABLE ONLY mc_welsh
    ADD CONSTRAINT mc_welsh_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

