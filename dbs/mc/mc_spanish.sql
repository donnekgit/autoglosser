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
-- Name: mc_spanish; Type: TABLE; Schema: public; Owner: kevin; Tablespace: 
--

CREATE TABLE mc_spanish (
    id integer NOT NULL,
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


ALTER TABLE public.mc_spanish OWNER TO kevin;

--
-- Name: mc_adj_id_seq; Type: SEQUENCE; Schema: public; Owner: kevin
--

CREATE SEQUENCE mc_adj_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.mc_adj_id_seq OWNER TO kevin;

--
-- Name: mc_adj_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kevin
--

ALTER SEQUENCE mc_adj_id_seq OWNED BY mc_spanish.id;


--
-- Name: mc_adj_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kevin
--

SELECT pg_catalog.setval('mc_adj_id_seq', 299, true);


--
-- Name: mc_welsh_id_seq; Type: SEQUENCE; Schema: public; Owner: kevin
--

CREATE SEQUENCE mc_welsh_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.mc_welsh_id_seq OWNER TO kevin;

--
-- Name: mc_welsh_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kevin
--

ALTER SEQUENCE mc_welsh_id_seq OWNED BY mc_spanish.id;


--
-- Name: mc_welsh_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kevin
--

SELECT pg_catalog.setval('mc_welsh_id_seq', 108, true);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: kevin
--

ALTER TABLE mc_spanish ALTER COLUMN id SET DEFAULT nextval('mc_adj_id_seq'::regclass);


--
-- Data for Name: mc_spanish; Type: TABLE DATA; Schema: public; Owner: kevin
--

COPY mc_spanish (id, filename, utterance_id, location, surface1, surface2, auto1, auto2, langid1, langid2, pos1, pos2) FROM stdin;
34	sastre5_m	100	2	color	similar	colour.N.M.SG	similar.ADJ.M.SG	spa	spa	n	adj
35	sastre5_m	114	3	color	diferente	colour.N.M.SG	different.ADJ.MF.SG	spa	spa	n	adj
36	sastre5_m	150	7	cuarto	entero	fourth.N.M.SG	integer.ADJ.M.SG	spa	spa	n	adj
37	sastre5_m	164	5	colores	amarillos	colour.N.M.PL	yellow.ADJ.M.PL	spa	spa	n	adj
38	sastre5_m	283	2	bebida	peruana	drink.N.F.SG[or]drink.V.F.SG.PASTPART	peruvian.N.F.SG[or]peruvian.ADJ.F.SG	spa	spa	n	adj
39	sastre5_m	526	4	pan	especial	bread.N.M.SG	special.ADJ.M.SG	spa	spa	n	adj
40	sastre5_m	550	5	día	siguiente	day.N.M.SG	following.ADJ.M.SG	spa	spa	n	adj
41	sastre5_m	586	10	medidas	exactas	size.N.F.PL	exact.ADJ.F.PL	spa	spa	n	adj
42	sastre5_m	587	4	paredes	iguales	wall.N.F.PL	equal.ADJ.M.PL	spa	spa	n	adj
43	sastre5_m	832	6	día	libre	day.N.M.SG	free.ADJ.M.SG	spa	spa	n	adj
44	sastre5_m	867	4	cuidado	cada	.V.M.SG.PASTPART[or]care.N.M.SG	every.ADJ.MF.SG	spa	spa	n	adj
45	sastre5_m	3	6	otro	abogado	other.ADJ.M.SG	solicitor.N.M.SG	spa	spa	adj	n
46	sastre5_m	10	4	otro	trial	other.ADJ.M.SG	trial.N.SG	spa	eng	adj	n
47	sastre5_m	21	12	otra	vez	other.ADJ.F.SG	time.N.F.SG	spa	spa	adj	n
48	sastre5_m	34	17	esa	cosa	that.ADJ.DEM.F.SG	thing.N.F.SG	spa	spa	adj	n
49	sastre5_m	36	4	sola	verdad	only.ADJ.F.SG	truth.N.F.SG	spa	spa	adj	n
50	sastre5_m	110	2	esta	parte	this.ADJ.DEM.F.SG	part.N.F.SG	spa	spa	adj	n
51	sastre5_m	112	3	mismo	color	same.ADJ.M.SG	colour.N.M.SG	spa	spa	adj	n
52	sastre5_m	117	7	mismo	color	same.ADJ.M.SG	colour.N.M.SG	spa	spa	adj	n
53	sastre5_m	128	4	esta	pared	this.ADJ.DEM.F.SG	wall.N.F.SG	spa	spa	adj	n
54	sastre5_m	137	4	fácil	verdad	easy.ADJ.M.SG	truth.N.F.SG	spa	spa	adj	n
58	sastre5_m	170	3	estos	son	this.ADJ.DEM.M.PL	sound.N.M.SG	spa	spa	adj	n
59	sastre5_m	172	8	otro	color	other.ADJ.M.SG	colour.N.M.SG	spa	spa	adj	n
61	sastre5_m	233	3	este	lado	this.ADJ.DEM.M.SG	side.N.M.SG	spa	spa	adj	n
62	sastre5_m	271	17	tanta	gente	so_much.ADJ.F.SG	people.N.F.SG	spa	spa	adj	n
63	sastre5_m	273	4	cuánta	gente	how_much.ADJ.INT.F.SG	people.N.F.SG	spa	spa	adj	n
64	sastre5_m	314	10	cada	vez	every.ADJ.MF.SG	time.N.F.SG	spa	spa	adj	n
66	sastre5_m	343	3	demasiados	libros	too_much.ADJ.M.PL	book.N.M.PL	spa	spa	adj	n
67	sastre5_m	510	6	este	pan	this.ADJ.DEM.M.SG	bread.N.M.SG	spa	spa	adj	n
68	sastre5_m	526	6	especial	irlandés	special.ADJ.M.SG	irish.ADJ.M.SG[or]irish.N.M.SG	spa	spa	adj	n
69	sastre5_m	544	6	mismo	día	same.ADJ.M.SG	day.N.M.SG	spa	spa	adj	n
70	sastre5_m	586	4	muchos	problemas	much.ADJ.M.PL	trouble.N.M.PL	spa	spa	adj	n
71	sastre5_m	653	5	nuevos	gustos	new.ADJ.M.PL	taste.N.M.PL	spa	spa	adj	n
72	sastre5_m	667	5	otra	niña	other.ADJ.F.SG	kid.N.F.SG	spa	spa	adj	n
73	sastre5_m	685	9	otro	varón	other.ADJ.M.SG	man.N.M.SG	spa	spa	adj	n
74	sastre5_m	709	3	esa	niña	that.ADJ.DEM.F.SG	kid.N.F.SG	spa	spa	adj	n
75	sastre5_m	716	5	esta	niña	this.ADJ.DEM.F.SG	kid.N.F.SG	spa	spa	adj	n
76	sastre5_m	732	5	buen	padre	good.ADJ.M.SG	father.N.M.SG	spa	spa	adj	n
77	sastre5_m	737	5	buen	padre	good.ADJ.M.SG	father.N.M.SG	spa	spa	adj	n
78	sastre5_m	867	6	cada	vez	every.ADJ.MF.SG	time.N.F.SG	spa	spa	adj	n
79	sastre5_m	885	7	esta	muchacha	this.ADJ.DEM.F.SG	girl.N.F.SG	spa	spa	adj	n
80	sastre5_m	928	7	otra	vez	other.ADJ.F.SG	time.N.F.SG	spa	spa	adj	n
81	sastre5_m	997	6	estas	cosas	this.ADJ.DEM.F.PL	thing.N.F.PL	spa	spa	adj	n
82	sastre1	13	8	lado	izquierdo	side.N.M.SG	lefthand.ADJ.M.SG	spa	spa	n	adj
83	sastre1	124	6	baño	original	bathroom.N.M.SG	original.ADJ.M.SG	spa	spa	n	adj
84	sastre1	334	5	cosa	básica	thing.N.F.SG	basic.ADJ.F.SG	spa	spa	n	adj
85	sastre1	375	8	edad	mala	age.N.F.SG	nasty.ADJ.F.SG	spa	spa	n	adj
86	sastre1	491	11	gobierno	federal	government.N.M.SG	federal.ADJ.M.SG	spa	spa	n	adj
87	sastre1	580	4	cosita	chiquitica	thing.N.F.SG.DIM	girly.ADJ.F.SG.DIM	spa	spa	n	adj
89	sastre1	837	4	muchachitos	jóvenes	lads.N.M.PL.DIM	young.ADJ.M.PL	spa	spa	n	adj
90	sastre1	883	7	pedacito	cortico	bit.N.M.SG.DIM	short.ADJ.M.SG.DIM	spa	spa	n	adj
91	sastre1	891	3	hierba	muerta	grass.N.F.SG	dead.ADJ.F.SG	spa	spa	n	adj
92	sastre1	952	4	diccionario	inglés	dictionary.N.M.SG	english.ADJ.M.SG	spa	spa	n	adj
93	sastre1	958	2	inglés	español	english.N.M.SG	Spanish.ADJ.M.SG	spa	spa	n	adj
94	sastre1	4	2	esa	rotonda	that.ADJ.DEM.F.SG	roundabout.N.F.SG	spa	spa	adj	n
95	sastre1	7	7	algún	camión	some.ADJ.M.SG	lorry.N.M.SG	spa	spa	adj	n
96	sastre1	7	16	cualquier	cosa	whatever.ADJ.MF.SG	thing.N.F.SG	spa	spa	adj	n
97	sastre1	9	6	esa	rotondita	that.ADJ.DEM.F.SG	roundabout.N.F.SG.DIM	spa	spa	adj	n
98	sastre1	13	4	este	lado	this.ADJ.DEM.M.SG	side.N.M.SG	spa	spa	adj	n
99	sastre1	18	4	bastante	espacio	enough.ADJ.MF.SG	space.N.M.SG	spa	spa	adj	n
100	sastre1	44	5	doble	dinero	double.ADJ.M.SG	money.N.M.SG	spa	spa	adj	n
101	sastre1	46	11	esa	cosa	that.ADJ.DEM.F.SG	thing.N.F.SG	spa	spa	adj	n
102	sastre1	70	2	esta	terraza	this.ADJ.DEM.F.SG	terrace.N.F.SG	spa	spa	adj	n
103	sastre1	79	6	cada	vez	every.ADJ.MF.SG	time.N.F.SG	spa	spa	adj	n
104	sastre1	96	10	smaller	kids	small.ADJ.COMP	kid.N.PL	eng	eng	adj	n
105	sastre1	415	7	cualquier	cosa	whatever.ADJ.MF.SG	thing.N.F.SG	spa	spa	adj	n
106	sastre1	466	7	pequeño	pocket	small.ADJ.M.SG	pocket.N.SG	spa	eng	adj	n
107	sastre1	493	9	esos	cambios	that.ADJ.DEM.M.PL	switch.N.M.PL	spa	spa	adj	n
108	sastre1	494	11	ese	cambio	that.ADJ.DEM.M.SG	switch.N.M.SG	spa	spa	adj	n
109	sastre1	500	3	otro	zip	other.ADJ.M.SG	zip.N.SG	spa	eng	adj	n
110	sastre1	505	6	tremendo	rollo	tremendous.ADJ.M.SG	roll.N.M.SG	spa	spa	adj	n
111	sastre1	553	17	esa	cosa	that.ADJ.DEM.F.SG	thing.N.F.SG	spa	spa	adj	n
112	sastre1	559	7	media	hora	half.ADJ.F.SG	time.N.F.SG	spa	spa	adj	n
113	sastre1	571	10	esa	cosa	that.ADJ.DEM.F.SG	thing.N.F.SG	spa	spa	adj	n
114	sastre1	612	5	estos	días	this.ADJ.DEM.M.PL	day.N.M.PL	spa	spa	adj	n
115	sastre1	660	19	otro	mundo	other.ADJ.M.SG	world.N.M.SG	spa	spa	adj	n
116	sastre1	671	4	otros	días	other.ADJ.M.PL	day.N.M.PL	spa	spa	adj	n
117	sastre1	678	3	ese	día	that.ADJ.DEM.M.SG	day.N.M.SG	spa	spa	adj	n
118	sastre1	694	12	cualquier	cosa	whatever.ADJ.MF.SG	thing.N.F.SG	spa	spa	adj	n
119	sastre1	696	10	cualquier	disparate	whatever.ADJ.MF.SG	error.N.M.SG	spa	spa	adj	n
120	sastre1	699	3	todo	lawsuit	all.ADJ.M.SG	lawsuit.N.SG	spa	eng	adj	n
121	sastre1	699	5	todo	lawsuit	all.ADJ.M.SG	lawsuit.N.SG	spa	eng	adj	n
122	sastre1	710	26	esa	mujer	that.ADJ.DEM.F.SG	woman.N.F.SG	spa	spa	adj	n
123	sastre1	784	4	otros	días	other.ADJ.M.PL	day.N.M.PL	spa	spa	adj	n
124	sastre1	792	3	otros	días	other.ADJ.M.PL	day.N.M.PL	spa	spa	adj	n
125	sastre1	797	4	otro	lugar	other.ADJ.M.SG	place.N.M.SG	spa	spa	adj	n
126	sastre1	803	11	cualquier	costo	whatever.ADJ.MF.SG	cost.N.M.SG	spa	spa	adj	n
127	sastre1	807	2	estos	muchachitos	this.ADJ.DEM.M.PL	lads.N.M.PL.DIM	spa	spa	adj	n
128	sastre1	853	4	esa	basura	that.ADJ.DEM.F.SG	rubbish.N.F.SG	spa	spa	adj	n
129	sastre1	854	2	esa	basura	that.ADJ.DEM.F.SG	rubbish.N.F.SG	spa	spa	adj	n
130	sastre1	860	5	cuántos	palazos	how_many.ADJ.INT.M.PL	shovels.N.M.PL	spa	spa	adj	n
131	sastre1	864	2	cada	vez	every.ADJ.MF.SG	time.N.F.SG	spa	spa	adj	n
132	sastre1	882	15	esa	hierba	that.ADJ.DEM.F.SG	grass.N.F.SG	spa	spa	adj	n
133	sastre1	891	3	esa	hierba	that.ADJ.DEM.F.SG	grass.N.F.SG	spa	spa	adj	n
134	sastre1	908	3	este	este	this.ADJ.DEM.M.SG	East.N.M.SG	spa	spa	adj	n
135	sastre1	918	8	mucho	tiempo	much.ADJ.M.SG	time.N.M.SG	spa	spa	adj	n
136	sastre1	922	11	ese	tiempo	that.ADJ.DEM.M.SG	time.N.M.SG	spa	spa	adj	n
137	sastre1	949	6	tanto	tiempo	so_much.ADJ.M.SG	time.N.M.SG	spa	spa	adj	n
138	sastre1	952	6	inglés	español	english.ADJ.M.SG	Spanish.ADJ.M.SG[or]Spanish.N.M.SG	spa	spa	adj	n
139	sastre1	968	9	diferentes	cosas	different.ADJ.MF.PL	thing.N.F.PL	spa	spa	adj	n
140	herring11_m	22	9	música	diferente	music.N.F.SG	different.ADJ.MF.SG	spa	spa	n	adj
141	herring11_m	27	5	cosas	diferentes	thing.N.F.PL	different.ADJ.MF.PL	spa	spa	n	adj
142	herring11_m	28	6	cosas	románticas	thing.N.F.PL	romantic.ADJ.F.PL	spa	spa	n	adj
143	herring11_m	81	3	momento	oscuro	momentum.N.M.SG	obscure.ADJ.M.SG	spa	spa	n	adj
144	herring11_m	83	9	instrumento	favorito	instrument.N.M.SG	favourite.ADJ.M.SG	spa	spa	n	adj
146	herring11_m	118	3	nombre	especial	name.N.M.SG	special.ADJ.M.SG	spa	spa	n	adj
147	herring11_m	133	9	composiciones	todos	composition.N.F.PL	everything.PRON.M.PL[or]all.ADJ.M.PL	spa	spa	n	adj
148	herring11_m	204	7	escuela	sabática	school.N.F.SG	sabbatical.ADJ.F.SG	spa	spa	n	adj
149	herring11_m	256	3	ídolo	americano	idol.N.M.SG	american.ADJ.M.SG	spa	spa	n	adj
150	herring11_m	258	6	ídolo	americano	idol.N.M.SG	american.ADJ.M.SG	spa	spa	n	adj
151	herring11_m	260	6	nombre	distinto	name.N.M.SG	distinct.ADJ.M.SG	spa	spa	n	adj
152	herring11_m	263	4	cosa	distinta	thing.N.F.SG	distinct.ADJ.F.SG	spa	spa	n	adj
153	herring11_m	273	8	semana	pasada	week.N.F.SG	pass.V.F.SG.PASTPART[or]past.ADJ.F.SG	spa	spa	n	adj
154	herring11_m	276	7	semana	pasada	week.N.F.SG	pass.V.F.SG.PASTPART[or]past.ADJ.F.SG	spa	spa	n	adj
156	herring11_m	311	5	cirujano	plástico	surgeon.N.M.SG	plastic.ADJ.M.SG	spa	spa	n	adj
157	herring11_m	340	11	mensajes	críticas	message.N.M.PL	critical.N.F.PL[or]critical.ADJ.F.PL	spa	spa	n	adj
158	herring11_m	373	4	imperio	inglés	empire.N.M.SG	english.ADJ.M.SG	spa	spa	n	adj
159	herring11_m	393	9	horas	distintas	time.N.F.PL	distinct.ADJ.F.PL	spa	spa	n	adj
160	herring11_m	394	5	hora	distinta	time.N.F.SG	distinct.ADJ.F.SG	spa	spa	n	adj
161	herring11_m	404	6	lugar	específico	place.N.M.SG	specific.ADJ.M.SG	spa	spa	n	adj
162	herring11_m	408	10	música	regular	music.N.F.SG	regular.ADJ.M.SG[or]regulate.V.INFIN	spa	spa	n	adj
163	herring11_m	418	7	manera	bonita	way.N.F.SG	pretty.ADJ.F.SG	spa	spa	n	adj
164	herring11_m	422	12	cosas	distintas	thing.N.F.PL	distinct.ADJ.F.PL	spa	spa	n	adj
165	herring11_m	441	3	cosa	natural	thing.N.F.SG	natural.ADJ.M.SG	spa	spa	n	adj
166	herring11_m	460	10	gente	latina	people.N.F.SG	latin.ADJ.F.SG[or]latin.N.F.SG	spa	spa	n	adj
167	herring11_m	461	7	gente	latina	people.N.F.SG	latin.N.F.SG[or]latin.ADJ.F.SG	spa	spa	n	adj
168	herring11_m	467	2	gente	latina	people.N.F.SG	latin.ADJ.F.SG	spa	spa	n	adj
169	herring11_m	496	5	sonatas	puras	sonata.N.F.PL	pure.ADJ.F.PL	spa	spa	n	adj
170	herring11_m	535	7	composición	distinta	composition.N.F.SG	distinct.ADJ.F.SG	spa	spa	n	adj
171	herring11_m	590	2	canciones	bonitas	song.N.F.PL	pretty.ADJ.F.PL	spa	spa	n	adj
172	herring11_m	5	8	otras	piezas	other.ADJ.F.PL	piece.N.F.PL	spa	spa	adj	n
173	herring11_m	6	5	esa	costumbre	that.ADJ.DEM.F.SG	habit.N.F.SG	spa	spa	adj	n
174	herring11_m	6	9	tanto	material	so_much.ADJ.M.SG	material.ADJ.M.SG[or]material.N.M.SG	spa	spa	adj	n
175	herring11_m	8	9	largo	tiempo	long.ADJ.M.SG	time.N.M.SG	spa	spa	adj	n
176	herring11_m	17	4	todas	maneras	all.ADJ.F.PL	way.N.F.PL	spa	spa	adj	n
177	herring11_m	18	7	ese	escritor	that.ADJ.DEM.M.SG	writer.N.M.SG	spa	spa	adj	n
178	herring11_m	20	4	otros	escritores	other.ADJ.M.PL	writer.N.M.PL	spa	spa	adj	n
179	herring11_m	26	13	medio	segundo	half.ADJ.M.SG	second.ORD.M.SG[or]second.N.M.SG	spa	spa	adj	n
180	herring11_m	31	11	ese	hombre	that.ADJ.DEM.M.SG	man.N.M.SG	spa	spa	adj	n
181	herring11_m	33	8	ese	momento	that.ADJ.DEM.M.SG	momentum.N.M.SG	spa	spa	adj	n
182	herring11_m	42	6	esas	notas	that.ADJ.DEM.F.PL	note.N.F.PL	spa	spa	adj	n
183	herring11_m	42	10	harto	dinero	.ADJ.M.SG	money.N.M.SG	spa	spa	adj	n
184	herring11_m	77	20	mucha	crítica	much.ADJ.F.SG	critical.ADJ.F.SG[or]critical.N.F.SG	spa	spa	adj	n
185	herring11_m	85	7	muchas	piezas	much.ADJ.F.PL	piece.N.F.PL	spa	spa	adj	n
186	herring11_m	89	6	este	señor	this.ADJ.DEM.M.SG	gentleman.N.M.SG	spa	spa	adj	n
187	herring11_m	89	8	muchas	veces	much.ADJ.F.PL	time.N.F.PL	spa	spa	adj	n
188	herring11_m	95	8	malas	piernas	nasty.ADJ.F.PL	shank.N.F.PL	spa	spa	adj	n
189	herring11_m	98	9	muchas	veces	much.ADJ.F.PL	time.N.F.PL	spa	spa	adj	n
190	herring11_m	119	13	buenos	violinistas	well.ADJ.M.PL	violinist.N.M	spa	spa	adj	n
191	herring11_m	120	2	esos	niños	that.ADJ.DEM.M.PL	kid.N.M.PL	spa	spa	adj	n
192	herring11_m	131	8	mismo	tiempo	same.ADJ.M.SG	time.N.M.SG	spa	spa	adj	n
193	herring11_m	132	2	varias	composiciones	varied.ADJ.F.PL[or]various.ADJ.F.PL	composition.N.F.PL	spa	spa	adj	n
194	herring11_m	133	9	varias	composiciones	varied.ADJ.F.PL[or]various.ADJ.F.PL	composition.N.F.PL	spa	spa	adj	n
195	herring11_m	133	14	mismo	tiempo	same.ADJ.M.SG	time.N.M.SG	spa	spa	adj	n
196	herring11_m	135	2	cierta	mezcla	true.ADJ.F.SG[or]certain.ADJ.F.SG	mix.V.23S.PRES[or]mixture.N.F.SG[or]mix.V.2S.IMPER	spa	spa	adj	n
197	herring11_m	142	4	otras	cosas	other.ADJ.F.PL	thing.N.F.PL	spa	spa	adj	n
198	herring11_m	197	6	otro	colegio	other.ADJ.M.SG	school.N.M.SG	spa	spa	adj	n
199	herring11_m	203	3	esa	clase	that.ADJ.DEM.F.SG	class.N.F.SG	spa	spa	adj	n
200	herring11_m	238	4	esas	basuras	that.ADJ.DEM.F.PL	rubbish.N.F.PL	spa	spa	adj	n
201	herring11_m	238	7	esas	novelas	that.ADJ.DEM.F.PL	novel.N.F.PL	spa	spa	adj	n
202	herring11_m	244	11	esa	canción	that.ADJ.DEM.F.SG	song.N.F.SG	spa	spa	adj	n
203	herring11_m	246	8	todo	disco	all.ADJ.M.SG	disk.N.M.SG	spa	spa	adj	n
204	herring11_m	246	11	toda	clase	all.ADJ.F.SG	class.N.F.SG	spa	spa	adj	n
205	herring11_m	253	4	mismo	señor	same.ADJ.M.SG	gentleman.N.M.SG	spa	spa	adj	n
206	herring11_m	260	3	cada	lugar	every.ADJ.MF.SG	place.N.M.SG	spa	spa	adj	n
207	herring11_m	277	5	misma	canción	same.ADJ.F.SG	song.N.F.SG	spa	spa	adj	n
208	herring11_m	277	7	otra	vez	other.ADJ.F.SG	time.N.F.SG	spa	spa	adj	n
209	herring11_m	284	8	tal	vez	such.ADJ.MF.SG	time.N.F.SG	spa	spa	adj	n
210	herring11_m	292	4	esa	canción	that.ADJ.DEM.F.SG	song.N.F.SG	spa	spa	adj	n
211	herring11_m	294	9	esa	canción	that.ADJ.DEM.F.SG	song.N.F.SG	spa	spa	adj	n
212	herring11_m	295	4	muchas	personas	much.ADJ.F.PL	person.N.F.PL	spa	spa	adj	n
213	herring11_m	297	4	otra	canción	other.ADJ.F.SG	song.N.F.SG	spa	spa	adj	n
214	herring11_m	299	8	tantas	veces	so_much.ADJ.F.PL	time.N.F.PL	spa	spa	adj	n
215	herring11_m	308	14	esos	dientes	that.ADJ.DEM.M.PL	tooth.N.M.PL	spa	spa	adj	n
216	herring11_m	311	2	tal	vez	such.ADJ.MF.SG	time.N.F.SG	spa	spa	adj	n
217	herring11_m	315	10	otras	personas	other.ADJ.F.PL	person.N.F.PL	spa	spa	adj	n
218	herring11_m	339	5	cualquier	cosas	whatever.ADJ.MF.SG	thing.N.F.PL	spa	spa	adj	n
219	herring11_m	343	9	todas	maneras	all.ADJ.F.PL	way.N.F.PL	spa	spa	adj	n
220	herring11_m	354	6	esa	canción	that.ADJ.DEM.F.SG	song.N.F.SG	spa	spa	adj	n
221	herring11_m	361	3	esa	canción	that.ADJ.DEM.F.SG	song.N.F.SG	spa	spa	adj	n
222	herring11_m	371	3	toda	hora	all.ADJ.F.SG	time.N.F.SG	spa	spa	adj	n
223	herring11_m	383	8	tantos	lugares	so_much.ADJ.M.PL	place.N.M.PL	spa	spa	adj	n
224	herring11_m	385	4	esos	relojes	that.ADJ.DEM.M.PL	watch.N.M.PL	spa	spa	adj	n
225	herring11_m	396	4	otra	hora	other.ADJ.F.SG	time.N.F.SG	spa	spa	adj	n
226	herring11_m	397	4	otra	hora	other.ADJ.F.SG	time.N.F.SG	spa	spa	adj	n
227	herring11_m	398	4	otra	hora	other.ADJ.F.SG	time.N.F.SG	spa	spa	adj	n
228	herring11_m	399	4	otra	hora	other.ADJ.F.SG	time.N.F.SG	spa	spa	adj	n
229	herring11_m	423	16	esta	forma	this.ADJ.DEM.F.SG	shape.N.F.SG	spa	spa	adj	n
230	herring11_m	433	3	tal	vez	such.ADJ.MF.SG	time.N.F.SG	spa	spa	adj	n
231	herring11_m	433	11	otro	día	other.ADJ.M.SG	day.N.M.SG	spa	spa	adj	n
232	herring11_m	436	6	diferentes	colores	different.ADJ.MF.PL	colour.N.M.PL	spa	spa	adj	n
233	herring11_m	449	3	bendito	hombre	blessed.ADJ.M.SG	man.N.M.SG	spa	spa	adj	n
234	herring11_m	455	8	tal	vez	such.ADJ.MF.SG	time.N.F.SG	spa	spa	adj	n
235	herring11_m	459	4	esos	países	that.ADJ.DEM.M.PL	country.N.M.PL	spa	spa	adj	n
236	herring11_m	467	2	esta	gente	this.ADJ.DEM.F.SG	people.N.F.SG	spa	spa	adj	n
237	herring11_m	471	13	propia	madre	own.ADJ.F.SG	mother.N.F.SG	spa	spa	adj	n
238	herring11_m	478	5	tantos	problemas	so_much.ADJ.M.PL	trouble.N.M.PL	spa	spa	adj	n
239	herring11_m	496	7	puras	sonatas	pure.ADJ.F.PL	sonata.N.F.PL	spa	spa	adj	n
240	herring11_m	499	4	puras	sonatas	pure.ADJ.F.PL	sonata.N.F.PL	spa	spa	adj	n
241	herring11_m	510	9	otro	hermano	other.ADJ.M.SG	sister.N.M.SG	spa	spa	adj	n
242	herring11_m	511	6	gran	cosa	big.ADJ.M.SG	thing.N.F.SG	spa	spa	adj	n
243	herring11_m	512	5	otro	día	other.ADJ.M.SG	day.N.M.SG	spa	spa	adj	n
244	herring11_m	516	7	mismo	cuarto	same.ADJ.M.SG	fourth.ORD.M.SG[or]fourth.N.M.SG	spa	spa	adj	n
245	herring11_m	517	8	tantos	hijos	so_much.ADJ.M.PL	son.N.M.PL	spa	spa	adj	n
246	herring11_m	533	14	otra	iglesia	other.ADJ.F.SG	church.N.F.SG	spa	spa	adj	n
247	herring11_m	535	11	cada	fin	every.ADJ.MF.SG	end.N.M.SG	spa	spa	adj	n
248	herring11_m	541	4	tanta	práctica	so_much.ADJ.F.SG	practical.ADJ.F.SG[or]practice.N.F.SG	spa	spa	adj	n
249	herring11_m	542	4	muchas	veces	much.ADJ.F.PL	time.N.F.PL	spa	spa	adj	n
250	herring11_m	548	5	varias	composiciones	varied.ADJ.F.PL[or]various.ADJ.F.PL	composition.N.F.PL	spa	spa	adj	n
251	herring11_m	570	6	esta	gente	this.ADJ.DEM.F.SG	people.N.F.SG	spa	spa	adj	n
252	herring11_m	582	7	pura	guitarra	pure.ADJ.F.SG	guitar.N.F.SG	spa	spa	adj	n
253	herring11_m	589	10	muchas	composiciones	much.ADJ.F.PL	composition.N.F.PL	spa	spa	adj	n
254	herring11_m	590	2	bonitas	canciones	pretty.ADJ.F.PL	song.N.F.PL	spa	spa	adj	n
255	herring11_m	590	4	bonitas	piezas	pretty.ADJ.F.PL	piece.N.F.PL	spa	spa	adj	n
256	herring11_m	616	6	ese	maestro	that.ADJ.DEM.M.SG	master.N.M.SG	spa	spa	adj	n
257	herring11_m	617	5	tal	vez	such.ADJ.MF.SG	time.N.F.SG	spa	spa	adj	n
258	herring11_m	622	12	otras	cosas	other.ADJ.F.PL	thing.N.F.PL	spa	spa	adj	n
259	herring11_m	641	9	otra	cosa	other.ADJ.F.SG	thing.N.F.SG	spa	spa	adj	n
260	zeledon5	10	2	versión	colombiana	version.N.F.SG	colombian.N.F.SG[or]colombian.ADJ.F.SG	spa	spa	n	adj
261	zeledon5	86	6	boca	abierta	mouth.N.F.SG	open.V.F.SG.PASTPART[or]open.ADJ.F.SG	spa	spa	n	adj
262	zeledon5	151	27	inmobiliaria	todo	.N.F.SG	all.ADJ.M.SG	spa	spa	n	adj
263	zeledon5	218	5	taxes	mensuales	tax.N.PL	monthly.ADJ.M.PL	eng	spa	n	adj
264	zeledon5	257	13	pago	automático	payment.N.M.SG	automatic.ADJ.M.SG	spa	spa	n	adj
265	zeledon5	286	9	experiencia	propia	experience.N.F.SG	own.ADJ.F.SG	spa	spa	n	adj
266	zeledon5	304	11	mes	pasado	month.N.M.SG	past.ADJ.M.SG	spa	spa	n	adj
267	zeledon5	347	15	imagen	internacional	image.N.F.SG	international.ADJ.M.SG	spa	spa	n	adj
268	zeledon5	347	28	nivel	internacional	level.N.M.SG	international.ADJ.M.SG	spa	spa	n	adj
269	zeledon5	348	3	embargo	mucha	impound.V.1S.PRES[or]embargo.N.M.SG	much.ADJ.F.SG	spa	spa	n	adj
271	zeledon5	542	5	dealer	grande	deal.N.SG.AG[or]dealer.N.SG	large.ADJ.M.SG	eng	spa	n	adj
272	zeledon5	38	7	querido	presidente	dear.ADJ.M.SG	president.N.M.SG	spa	spa	adj	n
273	zeledon5	41	11	gran	amigo	big.ADJ.M.SG	friend.N.M.SG[or]friendly.ADJ.M.SG	spa	spa	adj	n
274	zeledon5	94	9	este	señor	this.ADJ.DEM.M.SG	gentleman.N.M.SG	spa	spa	adj	n
275	zeledon5	139	7	muchos	millones	much.ADJ.M.PL	million.N.M[or]million.N.M.PL	spa	spa	adj	n
276	zeledon5	140	11	buen	valor	good.ADJ.M.SG	worth.N.M.SG	spa	spa	adj	n
277	zeledon5	142	13	buen	billete	good.ADJ.M.SG	ticket.N.M.SG	spa	spa	adj	n
278	zeledon5	162	5	esos	hijos	that.ADJ.DEM.M.PL	son.N.M.PL	spa	spa	adj	n
279	zeledon5	223	6	todas	maneras	all.ADJ.F.PL	way.N.F.PL	spa	spa	adj	n
280	zeledon5	235	4	esa	comunidad	that.ADJ.DEM.F.SG	community.N.F.SG	spa	spa	adj	n
281	zeledon5	235	8	demasiado	vandalism	too_much.ADJ.M.SG	vandalism.N.SG	spa	eng	adj	n
282	zeledon5	276	6	otra	vez	other.ADJ.F.SG	time.N.F.SG	spa	spa	adj	n
283	zeledon5	308	9	este	año	this.ADJ.DEM.M.SG	year.N.M.SG	spa	spa	adj	n
284	zeledon5	314	7	cualquier	país	whatever.ADJ.MF.SG	country.N.M.SG	spa	spa	adj	n
285	zeledon5	314	10	alguna	decisión	some.ADJ.F.SG	decision.N.F.SG	spa	spa	adj	n
286	zeledon5	314	15	buen	rumbo	good.ADJ.M.SG	course.N.M.SG	spa	spa	adj	n
287	zeledon5	335	2	ninguna	cristiana	no.ADJ.F.PL	christian.N.F.SG[or]christian.ADJ.F.SG	spa	spa	adj	n
288	zeledon5	336	11	ese	tipo	that.ADJ.DEM.M.SG	type.N.M.SG	spa	spa	adj	n
289	zeledon5	348	5	mucha	gente	much.ADJ.F.SG	people.N.F.SG	spa	spa	adj	n
290	zeledon5	354	6	gran	defecto	big.ADJ.M.SG	defect.N.M.SG	spa	spa	adj	n
291	zeledon5	355	24	este	país	this.ADJ.DEM.M.SG	country.N.M.SG	spa	spa	adj	n
292	zeledon5	355	41	mejor	mundo	good.ADJ.M.SG	world.N.M.SG	spa	spa	adj	n
293	zeledon5	356	9	este	país	this.ADJ.DEM.M.SG	country.N.M.SG	spa	spa	adj	n
294	zeledon5	358	3	esta	señora	this.ADJ.DEM.F.SG	lady.N.F.SG	spa	spa	adj	n
295	zeledon5	367	12	todas	maneras	all.ADJ.F.PL	way.N.F.PL	spa	spa	adj	n
296	zeledon5	530	5	cualquier	carrito	whatever.ADJ.MF.SG	trolley.N.M.SG	spa	spa	adj	n
297	zeledon5	557	4	cubana	chica	cuban.ADJ.F.SG	lad.N.F.SG	spa	spa	adj	n
298	zeledon5	584	2	pobre	muchacho	poor.ADJ.M.SG	girl.N.M.SG	spa	spa	adj	n
299	zeledon5	591	4	este	caso	this.ADJ.DEM.M.SG	instance.N.M.SG	spa	spa	adj	n
\.


--
-- Name: mc_adj_pkey; Type: CONSTRAINT; Schema: public; Owner: kevin; Tablespace: 
--

ALTER TABLE ONLY mc_spanish
    ADD CONSTRAINT mc_adj_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

