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
-- Name: enlist; Type: TABLE; Schema: public; Owner: kevin; Tablespace: 
--

CREATE TABLE enlist (
    id integer NOT NULL,
    surface character varying(100),
    pos character varying(20)
);


ALTER TABLE public.enlist OWNER TO kevin;

--
-- Name: enlist_id_seq; Type: SEQUENCE; Schema: public; Owner: kevin
--

CREATE SEQUENCE enlist_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.enlist_id_seq OWNER TO kevin;

--
-- Name: enlist_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kevin
--

ALTER SEQUENCE enlist_id_seq OWNED BY enlist.id;


--
-- Name: enlist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kevin
--

SELECT pg_catalog.setval('enlist_id_seq', 113, true);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: kevin
--

ALTER TABLE enlist ALTER COLUMN id SET DEFAULT nextval('enlist_id_seq'::regclass);


--
-- Data for Name: enlist; Type: TABLE DATA; Schema: public; Owner: kevin
--

COPY enlist (id, surface, pos) FROM stdin;
1	ah	i
2	ahh	i
3	band	n
4	bass	n
5	basses	n
6	bity	n
7	blue	a
8	bound	a
9	boy	n
10	broblem	n
11	car	n
12	case	n
13	caster	n
14	chutneys	n
15	clarinet	n
16	crew	n
17	dad	n
18	dear	a
19	disco	n
20	does	v
21	dop	n
22	drain	n
23	drombone	n
24	drummer	n
25	drums	n
26	duh	i
27	er	i
28	fam	n
29	fancy	n
30	fargain	n
31	fass	n
32	film	n
33	foy	n
34	gaster	n
35	gig	n
36	great	a
37	guitar	n
38	ha	i
39	hey	i
40	hmm	i
41	huh	i
42	ideal	a
43	jazz	n
44	job	n
45	just	b
46	lot	n
47	mam	n
48	melody	n
49	mmhm	i
50	mmm	i
51	nice	a
52	oh	i
53	ooh	i
54	party	n
55	person	n
56	phew	i
57	phone	n
58	piano	n
59	pocket	n
60	quite	q
61	rhythmic	a
62	right	a
63	round	a
64	routine	n
65	rugby	n
66	sesh	n
67	set	n
68	so	q
69	sorry	b
70	staff	n
71	story	n
72	straight	a
73	stuff	n
74	style	n
75	sure	a
76	task	n
77	trad	a
78	trombone	n
79	tune	n
80	um	i
81	video	n
82	vinegar	n
83	virus	n
84	well	i
85	wow	i
86	yeah	i
87	yep	i
88	rich	a
89	and	c
90	come	v
91	actually	b
92	gosh	i
93	been	v
94	done	v
95	up	b
96	get	v
97	grip	v
98	really	b
99	because	c
100	there	b
101	snog	v
102	impressed	a
103	pressure	n
104	a	t
105	lovely	a
106	to	pos
107	fill	v
108	anyway	b
109	that	d
110	on	pos
111	shivery	a
112	grim	a
113	date	n
\.


--
-- Name: enlist_pkey; Type: CONSTRAINT; Schema: public; Owner: kevin; Tablespace: 
--

ALTER TABLE ONLY enlist
    ADD CONSTRAINT enlist_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

