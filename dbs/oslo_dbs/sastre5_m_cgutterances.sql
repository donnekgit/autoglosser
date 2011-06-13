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
-- Name: sastre5_m_cgutterances; Type: TABLE; Schema: public; Owner: kevin; Tablespace: 
--

CREATE TABLE sastre5_m_cgutterances (
    utterance_id integer NOT NULL,
    filename character varying(50),
    speaker character varying(10),
    surface text,
    mor text,
    comment text,
    durbegin integer,
    durend integer,
    duration character varying(50),
    precode character varying(10)
);


ALTER TABLE public.sastre5_m_cgutterances OWNER TO kevin;

--
-- Name: sastre5_m_cgutterances_utterance_id_seq; Type: SEQUENCE; Schema: public; Owner: kevin
--

CREATE SEQUENCE sastre5_m_cgutterances_utterance_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.sastre5_m_cgutterances_utterance_id_seq OWNER TO kevin;

--
-- Name: sastre5_m_cgutterances_utterance_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kevin
--

ALTER SEQUENCE sastre5_m_cgutterances_utterance_id_seq OWNED BY sastre5_m_cgutterances.utterance_id;


--
-- Name: sastre5_m_cgutterances_utterance_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kevin
--

SELECT pg_catalog.setval('sastre5_m_cgutterances_utterance_id_seq', 1024, true);


--
-- Name: utterance_id; Type: DEFAULT; Schema: public; Owner: kevin
--

ALTER TABLE sastre5_m_cgutterances ALTER COLUMN utterance_id SET DEFAULT nextval('sastre5_m_cgutterances_utterance_id_seq'::regclass);


--
-- Data for Name: sastre5_m_cgutterances; Type: TABLE DATA; Schema: public; Owner: kevin
--

COPY sastre5_m_cgutterances (utterance_id, filename, speaker, surface, mor, comment, durbegin, durend, duration, precode) FROM stdin;
1	sastre5_m	LIL	fue allá .	vpret|i-3S=go adv|allá=there .	\N	360	1480	1120	
2	sastre5_m	LIL	y la mujer <no lle(gó)> [///] no [/] no se apareció .	conj|y=and det:art|el=the co:voc|mujer=woman adv|no=no pro:refl|se=itself  vpret|aparece-3S=appear .	\N	1457	4174	2717	
3	sastre5_m	LIL	entonces él con el otro abogado delante del juez (.) pidiendo que nada (.) que vamos al [/] al trial@s:eng .	adv|entonces=then pro:per|él=he prep|con=with det:art|el=the det:indef|otro=other  n|abogado=lawyer adv|delante=in_front prep|de~det|el&MASC n|juez=judge  vger|pedi-PROG=request rel|que=that pro:indef|nada=nothing rel|que=that  vpres|i&PRES=go prep|a~det|el&MASC L2|trial .	\N	4203	9429	5226	
4	sastre5_m	LIL	eh@s:eng&spa ah@s:eng&spa y la [/] la jueza +/ .	L2|eh L2|ah conj|y=and det:art|el=the ?|jueza +/ .	\N	9435	11780	2345	
5	sastre5_m	LIL	+" bueno (.) xxx van a ser número tres el [///] la semana de ag(osto) de [/] de abril veinti +/ .	co|bueno=good unk|xxx vpres|i&PRES=go prep|a=to vinf|se=be n|número=number  num|tres=three det:art|el=the n|semana=week prep|de=of n|agosto=August  prep|de=of n|abril=April ?|veinti +/ .	\N	11799	17033	5234	
6	sastre5_m	NAT	ah@s:eng&spa bueno .	L2|ah co|bueno=good .	\N	17027	17793	766	
7	sastre5_m	LIL	veintiocho !	num|veintiocho=twenty_eight !	\N	17773	18371	598	
8	sastre5_m	LIL	no .	adv|no=no .	\N	18360	18621	261	
9	sastre5_m	LIL	ah@s:eng&spa bueno no .	L2|ah co|bueno=good adv|no=no .	\N	18609	19370	761	
10	sastre5_m	LIL	él tiene otro trial@s:eng .	pro:per|él=he vpres|tene-3S&PRES=have det:indef|otro=other L2|trial .	\N	19360	20933	1573	
11	sastre5_m	NAT	ay .	co|ay=ay .	\N	20951	21282	331	
12	sastre5_m	LIL	justo la semana antes .	adv|justo=completely det:art|el=the n|semana=week adv|antes=before .	\N	21253	22469	1216	
13	sastre5_m	LIL	qué va a hacer en tres días ?	pro:int|qué=what vpres|i-3S&PRES=go prep|a=to vinf|hace=do prep|en=in  num|tres=three n|día-PL=day ?	\N	22492	24013	1521	
14	sastre5_m	LIL	entonces <no se> [/] <no se va> [//] no tiene tiempo para prepararse para éste .	adv|entonces=then adv|no=no vpres|tene-3S&PRES=have n|tiempo=season prep|para=for  vinf|prepara-INF~pro:clit|3S&REFL prep|para=for pro:dem|éste=this_one  .	\N	24003	26992	2989	
15	sastre5_m	LIL	y él le habló al juez que [/] que tengo un trial@s:eng .	adv|ya=already pro:per|él=he pro:per|le=him vpret|habla-3S=speak prep|a~det|el&MASC  n|juez=judge rel|que=that vpres|tene-1S&PRES=have pro:dem|un=one L2|trial  .	\N	26972	29749	2777	
16	sastre5_m	LIL	y ella se limpió el +. . .	adv|ya=already pro:per|ello=he pro:refl|se=itself vpret|limpia-3S=clean  det:art|el=the +. . .	\N	29744	31196	1452	
17	sastre5_m	NAT	+< xxx .	unk|xxx .	\N	30654	31473	819	
18	sastre5_m	LIL	con eso y +. . .	prep|con=with pro:dem|eso=that_one adv|ya=already +. . .	\N	31479	32971	1492	
19	sastre5_m	LIL	dijo +"/ .	vpret|deci-3S=say +"/ .	\N	32976	33429	453	
20	sastre5_m	LIL	+" no !	adv|no=no !	\N	33418	34039	621	
21	sastre5_m	LIL	así que después de un trial@s:eng tiene que seguir allá xxx otra vez para esto .	adv|así=thus rel|que=that adv|después=after prep|de=of pro:dem|un=one  L2|trial vpres|tene-3S&PRES=have rel|que=that vinf|segui=follow adv|allá=there  unk|xxx det:indef|otro=other n|vez=turn prep|para=for pro:dem|esto=this_one  .	\N	34075	38711	4636	
22	sastre5_m	NAT	pero yo no vengo para acá ya porque ya tú tienes tu niño .	conj|pero=but pro:per|yo=I adv|no=no vpres|veni-1S&PRES=come prep|para=for  adv|acá=there adv|ya=already conj|porque=because adv|ya=already pro:per|tú=you  vpres|tene&PRES=have det:pos|tu=your co:voc|niño=child .	\N	38766	40920	2154	
23	sastre5_m	LIL	no es que voy a tener mi bebé .	adv|no=no vpres|se-3S&PRES=be rel|que=that vpres|i-1S&PRES=go prep|a=to  vinf|tene=have det:pos|mi=my n|bebé=baby .	\N	40938	42512	1574	
24	sastre5_m	NAT	+< ya estás con tu niño .	adv|ya=already v:aux|esta&PRES=be prep|con=with det:pos|tu=your co:voc|niño=child  .	\N	40938	42512	1574	
25	sastre5_m	LIL	y tienes que venir .	adv|ya=already vpres|tene&PRES=have rel|que=that vinf|veni=come .	\N	42487	43811	1324	
26	sastre5_m	NAT	+< no .	adv|no=no .	\N	42487	43811	1324	
27	sastre5_m	NAT	tú estás muy equivocada .	pro:per|tú=you vpres|esta&PRES=be adv|muy=very vpart|equivoca=be_mistaken  .	\N	43818	44764	946	
28	sastre5_m	NAT	yo no puedo dejar a Pablo@s:eng&spa solito .	pro:per|yo=I adv|no=no vpres|pode-1S&PRES=can vinf|deja=leave prep|a=to  L2|Pablo adj|solo=alone .	\N	44764	46140	1376	
29	sastre5_m	NAT	no mi vida .	adv|no=no det:pos|mi=my co:voc|vida=life .	\N	46187	46825	638	
30	sastre5_m	LIL	te veo muy mal .	pro:per|te=you vpres|ve-1S&PRES=see adv|muy=very adv|mal=badly .	\N	46843	47742	899	
31	sastre5_m	LIL	sí sí y además .	co|sí=yes co|sí=yes adv|ya=already adv|además=likewise .	\N	49461	50708	1247	
32	sastre5_m	NAT	+< laugh .	?|laugh .	\N	49461	50708	1247	
33	sastre5_m	LIL	&em yo no voy a ver a Enrique@s:eng&spa porque él tiene un trial la semana de [/] del veintiuno .	pro:per|yo=I adv|no=no vpres|i-1S&PRES=go prep|a=to vinf|ve=see prep|a=to  L2|Enrique conj|porque=because pro:per|él=he vpres|tene-3S&PRES=have pro:dem|un=one  ?|trial det:art|el=the n|semana=week prep|de~det|el&MASC num|veintiuno=twentyone  .	\N	50664	56627	5963	
34	sastre5_m	NAT	+< Lily@s:eng&spa no es verdad que la madre cuando tiene su bebito si [?] tiene que tener esa cosa del bebito .	L2|Lily adv|no=no vpres|se-3S&PRES=be co|verdad=right prep|que=than det:art|el=the  n|madre=mother conj|cuando=when vpres|tene-3S&PRES=have det:pos|su&3S=his  n|bebito=baby conj|si=if vpres|tene-3S&PRES=have rel|que=that vinf|tene=have  det:dem|ese=that n|cosa=thing prep|de~det|el&MASC n|bebito=baby .	\N	56574	61767	5193	
35	sastre5_m	LIL	+< &= gasp .	?|gasp .	\N	56574	61767	5193	
36	sastre5_m	NAT	y ella sola verdad ?	adv|ya=already pro:per|ello=he adj|solo=alone co|verdad=right ?	\N	61745	63086	1341	
37	sastre5_m	LIL	no mami .	adv|no=no n|mami=mommy .	\N	63089	63519	430	
38	sastre5_m	NAT	+< entonces .	adv|entonces=then .	\N	63472	63913	441	
39	sastre5_m	LIL	+< no me estás escuchando .	adv|no=no pro:per|me=me v:aux|esta&PRES=be vger|escucha-PROG=listen .	\N	63641	64569	928	
40	sastre5_m	NAT	no yo te estoy escuchando demasiado bien .	adv|no=no pro:per|yo=I pro:per|te=you v:aux|esta-1S&PRES=be vger|escucha-PROG=listen  adj|demasiado=excessive adv|bien=well .	\N	64581	66218	1637	
91	sastre5_m	LIL	para ya quitar esto .	prep|para=for adv|ya=already vinf|quita=remove pro:dem|esto=this_one .	\N	135717	136918	1201	
751	sastre5_m	NAT	Pucho@s:eng&spa ?	L2|Pucho ?	\N	1238916	1239775	859	
41	sastre5_m	LIL	+< Enrique@s:eng&spa no va a estar en casa (.) preparándose para el [/] el +/ .	L2|Enrique adv|no=no vpres|i-3S&PRES=go prep|a=to vinf|esta=be prep|en=in  n|casa=house vgersh|prepara-PROG~pro:clit|3S&REFL prep|para=for det:art|el=the  +/ .	\N	64581	67723	3142	
42	sastre5_m	LIL	mira Natalia@s:eng&spa ven para acá que ya llegaron .	vpres|mira-3S&PRES=look L2|Natalia vpres|ve&PRES=see prep|para=for adv|acá=there  rel|que=that adv|ya=already vpret|llega=arrive .	\N	67671	69283	1612	
43	sastre5_m	NAT	ay dios mío !	co|ay=ay n|dios=diety pro:pos|mío=my !	\N	69231	70189	958	
44	sastre5_m	LIL	bienvenidos !	vpart|bienveni-PL=welcome !	\N	73061	74088	1027	
45	sastre5_m	LIL	cierren ahí .	vsub|cerra&PRES=close adv|ahí=there .	\N	74063	76472	2409	
46	sastre5_m	LIL	Lucho@s:eng&spa you@s:eng know@s:eng Peter@s:eng&spa .	L2|Lucho L2|you L2|know L2|Peter .	\N	77146	79781	2635	
47	sastre5_m	NAT	+< laughing .	?|laughing .	\N	77146	79781	2635	
48	sastre5_m	LIL	cómo están ?	adv:int|cómo=how vpres|esta&PRES=be ?	\N	83178	84519	1341	
49	sastre5_m	OSE	ay muy bien .	co|ay=ay adv|muy=very adv|bien=well .	\N	84426	85796	1370	
50	sastre5_m	LIL	sí qué bien !	co|sí=yes pro:int|qué=what adv|bien=well !	\N	85818	86584	766	
51	sastre5_m	LIL	qué maravilla !	pro:int|qué=what n|maravilla=marvel !	\N	86551	87335	784	
52	sastre5_m	LIL	quieres un vaso de agua ?	vpres|quere&PRES=want pro:dem|un=one n|vaso=vase prep|de=of n|agua=water  ?	\N	87334	88809	1475	
53	sastre5_m	LIL	quieren cafecito (.) antes de empezar ?	vpres|quere&PRES=want ?|cafecito adv|antes=before prep|de=of vinf|empeza=begin  ?	\N	88832	91572	2740	
54	sastre5_m	LIL	eh@s:eng&spa ?	L2|eh ?	\N	91561	93145	1584	
55	sastre5_m	LIL	quiero que estén con ánimo eh@s:eng&spa !	vpres|quere-1S&PRES=want rel|que=that vsub|esta&PRES=be prep|con=with  n|ánimo=mood L2|eh !	\N	93134	95171	2037	
56	sastre5_m	OSE	+< www .	unk|www .	\N	93134	95171	2037	
57	sastre5_m	NAT	yo creo que él dice que sí en su cara .	pro:per|yo=I vpres|cree-1S&PRES=believe rel|que=that pro:per|él=he vpres|deci-3S&PRES=say  rel|que=that co|sí=yes prep|en=in det:pos|su&3S=his adj|caro=dear .	\N	95163	96795	1632	
58	sastre5_m	LIL	sí <él quiere café> [/] <él quiere café>[/] él quiere café .	co|sí=yes pro:per|él=he vpres|quere-3S&PRES=want n|café=coffee .	\N	96791	98666	1875	
59	sastre5_m	LIL	mira xxx .	vimp|mira=look unk|xxx .	\N	98556	100048	1492	
60	sastre5_m	OSE	+< www .	unk|www .	\N	98556	99943	1387	
61	sastre5_m	LIL	Peter@s:eng&spa esta es Lorena@s:eng&spa una compañera mía del trabajo .	L2|Peter det:dem|este=this vpres|se-3S&PRES=be L2|Lorena det:art|un=one  n|compañero=companion pro:pos|mío=my prep|de~det|el&MASC vpres|trabaja-1S&PRES=work  .	\N	99897	102445	2548	
62	sastre5_m	OSE	www .	unk|www .	\N	102430	103370	940	
63	sastre5_m	LIL	ella es la que nos tiene a nosotros +. . .	pro:per|ello=he vpres|se-3S&PRES=be det:art|el=the rel|que=that pro:per|nos=us  vpres|tene-3S&PRES=have prep|a=to pro:per|nosotro-PL=we +. . .	\N	103366	105410	2044	
64	sastre5_m	OSE	+< www .	unk|www .	\N	103366	105410	2044	
65	sastre5_m	NAT	sí está haciendo un +// .	adv|sí=yes vpres|esta-3S&PRES=be vger|hace-PROG=do pro:dem|un=one +//  .	\N	105427	106518	1091	
66	sastre5_m	LIL	+< con los cables .	prep|con=with det:art|el-PL=the n|cable-PL=cable .	\N	106154	107048	894	
67	sastre5_m	LIL	&= laugh .	?|laugh .	\N	107043	107519	476	
68	sastre5_m	LIL	ella está haciendo un posgrado .	pro:per|ello=he v:aux|esta-3S&PRES=be vger|hace-PROG=do pro:dem|un=one  n|posgrado=postgraduate studies .	\N	107379	108169	790	
69	sastre5_m	LIL	y ahora me me pidió que yo la ayudara .	adv|ya=already adv|ahora=now pro:per|me=me pro:per|me=me vpret|pedi-3S=request  rel|que=that pro:per|yo=I det:art|el=the vpsub|ayuda-13S=help .	\N	108150	109978	1828	
70	sastre5_m	LIL	y claro no le puedo decir que no porque tanto me ayuda en el trabajo .	adv|ya=already co|claro=obvious adv|no=no pro:per|le=him vpres|pode-1S&PRES=can  vinf|deci=say rel|que=that adv|no=no conj|porque=because adj|tanto=so_much  pro:per|me=me vpres|ayuda-3S&PRES=help prep|en=in det:art|el=the vpres|trabaja-1S&PRES=work  .	\N	109984	112863	2879	
71	sastre5_m	NAT	&= laughing .	?|laughing .	\N	112861	113924	1063	
72	sastre5_m	LIL	pero es un fastidio tener esto .	conj|pero=but vpres|se-3S&PRES=be pro:dem|un=one vpres|fastidia-1S&PRES=disgust  vinf|tene=have pro:dem|esto=this_one .	\N	113915	115999	2084	
73	sastre5_m	LIL	&= laughing .	?|laughing .	\N	116023	117656	1633	
74	sastre5_m	LIL	no no no no .	adv|no=no adv|no=no adv|no=no adv|no=no .	\N	117667	119676	2009	
75	sastre5_m	OSE	www .	unk|www .	\N	117667	119676	2009	
76	sastre5_m	LIL	&em pues sí ustedes +. . .	co|pues=well co|sí=yes pro:per:1|usted-PL=you +. . .	\N	119635	122338	2703	
77	sastre5_m	LIL	xxx .	unk|xxx .	\N	122427	123913	1486	
78	sastre5_m	OSE	+< www .	unk|www .	\N	122427	123913	1486	
79	sastre5_m	LIL	ok te te enseño ?	?|ok pro:per|te=you pro:per|te=you vpres|enseña-1S&PRES=teach ?	\N	123911	125455	1544	
80	sastre5_m	OSE	www .	unk|www .	\N	125482	126347	865	
81	sastre5_m	LIL	Natalia@s:eng&spa no estés subiendo las escaleras por favor porque nos vamos a romper con esto .	L2|Natalia adv|no=no vsub|esta&PRES=be vger|subi-PROG=go_up det:art|el-PL=the  n|escalera-PL=staircase prep|por=for n|favor=favor conj|porque=because  pro:per|nos=us vpres|i&PRES=go prep|a=to vinf|rompe=break prep|con=with  pro:dem|esto=this_one .	\N	126418	129401	2983	
82	sastre5_m	NAT	te enseño así .	pro:per|te=you vpres|enseña-1S&PRES=teach adv|así=thus .	\N	126309	127975	1666	
83	sastre5_m	NAT	+< no mami no voy +/ .	adv|no=no n|mami=mommy adv|no=no vpres|i-1S&PRES=go +/ .	\N	128026	129407	1381	
84	sastre5_m	NAT	<no voy al &s > [//] voy al garaje .	vpres|i-1S&PRES=go prep|a~det|el&MASC n|garaje=garage .	\N	129397	131191	1794	
85	sastre5_m	LIL	+< ok .	?|ok .	\N	129577	131174	1597	
86	sastre5_m	NAT	me sigues al garaje .	pro:per|me=me vpres|segui&PRES=follow prep|a~det|el&MASC n|garaje=garage  .	\N	131156	132224	1068	
87	sastre5_m	LIL	tengo +// .	vpres|tene-1S&PRES=have +// .	\N	132135	133145	1010	
88	sastre5_m	OSE	+< www .	unk|www .	\N	132135	133145	1010	
89	sastre5_m	LIL	primero quiere empezar con este .	num:adj|primero=first vpres|quere-3S&PRES=want vinf|empeza=begin prep|con=with  det:dem|este=this .	\N	133132	135146	2014	
90	sastre5_m	OSE	www .	unk|www .	\N	135119	135682	563	
92	sastre5_m	NAT	ella es así allá ?	pro:per|ello=he vpres|se-3S&PRES=be adv|así=thus adv|allá=there ?	\N	136924	138327	1403	
93	sastre5_m	LIL	y que xxx qué .	adv|ya=already rel|que=that unk|xxx pro:int|qué=what .	\N	136924	138281	1357	
94	sastre5_m	NAT	&= laughing .	?|laughing .	\N	138190	139908	1718	
95	sastre5_m	LIL	+< y es un color como este no ?	adv|ya=already vpres|se-3S&PRES=be pro:dem|un=one n|color=hue adv|como=like  det:dem|este=this co|no=no ?	\N	138190	140411	2221	
96	sastre5_m	LIL	para terminar todo eso .	prep|para=for vinf|termina=end det:indef|todo=all pro:dem|eso=that_one  .	\N	140402	141760	1358	
97	sastre5_m	NAT	+< ella lo que está es +. . .	pro:per|ello=he pro:per:1|lo=him rel|que=that vpres|esta-3S&PRES=be vpres|se-3S&PRES=be  +. . .	\N	140402	142190	1788	
98	sastre5_m	NAT	+< y todo eso ?	adv|ya=already det:indef|todo=all pro:dem|eso=that_one ?	\N	141975	142782	807	
99	sastre5_m	OSE	www .	unk|www .	\N	142774	143784	1010	
100	sastre5_m	LIL	un [/] un color similar .	pro:dem|un=one n|color=hue adj|similar=similar .	\N	143786	145208	1422	
101	sastre5_m	OSE	www .	unk|www .	\N	145212	146274	1062	
102	sastre5_m	LIL	ok .	?|ok .	\N	146274	147406	1132	
103	sastre5_m	LIL	y (.) compré dos galones .	adv|ya=already vpret|compra-1S=buy num|dos=two ?|galones .	\N	147417	149821	2404	
104	sastre5_m	OSE	www .	unk|www .	\N	147417	149821	2404	
105	sastre5_m	LIL	hay suficiente ?	vpres|habe-3S&PRES=have adv|suficiente=sufficient ?	\N	149755	150794	1039	
106	sastre5_m	OSE	www .	unk|www .	\N	150787	152441	1654	
107	sastre5_m	LIL	si no buscamos otro más verdad .	conj|si=if adv|no=no vpres|busca&PRES=search pro:indef|otro=other adv|más=more  co|verdad=right .	\N	152427	153867	1440	
108	sastre5_m	LIL	ah@s:eng&spa y [/] y esto también .	L2|ah conj|y=and pro:dem|esto=this_one adv|también=also .	\N	153902	155783	1881	
109	sastre5_m	NAT	&= laughing .	?|laughing .	\N	153873	155771	1898	
110	sastre5_m	LIL	+< esta parte también .	det:dem|este=this vpres|parti-3S&PRES=divide adv|también=also .	\N	155765	157681	1916	
111	sastre5_m	OSE	+< www .	unk|www .	\N	155765	157641	1876	
112	sastre5_m	LIL	el mismo color .	det:art|el=the adj|mismo=same n|color=hue .	\N	157624	158448	824	
113	sastre5_m	OSE	www .	unk|www .	\N	158318	159346	1028	
114	sastre5_m	LIL	y el color diferente va a ser este .	adv|ya=already det:art|el=the n|color=hue adj|diferente=different vpres|i-3S&PRES=go  prep|a=to vinf|se=be vsub|esta-13S&PRES=be .	\N	159369	161418	2049	
115	sastre5_m	OSE	www .	unk|www .	\N	161430	162823	1393	
116	sastre5_m	LIL	+< y ese .	adv|ya=already det:dem|ese=that .	\N	161430	162847	1417	
117	sastre5_m	LIL	así que este también el mismo color de amarillo .	adv|así=thus rel|que=that det:dem|este=this adv|también=also det:art|el=the  adj|mismo=same n|color=hue prep|de=of adj|amarillo=yellow .	\N	162845	165231	2386	
118	sastre5_m	LIL	ok ?	?|ok ?	\N	165220	166828	1608	
119	sastre5_m	LIL	es fácil ves ?	vpres|se-3S&PRES=be adj|fácil=easy co|ves=see ?	\N	166859	167962	1103	
120	sastre5_m	OSE	www .	unk|www .	\N	167970	169444	1474	
121	sastre5_m	NAT	+< &= laughing .	?|laughing .	\N	167970	169444	1474	
122	sastre5_m	LIL	<entonces un color> [//] entonces espera [/] entonces un color para este y este .	adv|entonces=then adv|entonces=then pro:dem|un=one n|color=hue prep|para=for  det:dem|este=this adv|ya=already vsub|esta-13S&PRES=be .	\N	169441	173441	4000	
123	sastre5_m	NAT	+< &= laughing .	?|laughing .	\N	169615	172402	2787	
124	sastre5_m	LIL	donde está el espejo .	rel|donde=where vpres|esta-3S&PRES=be det:art|el=the n|espejo=looking_glass  .	\N	173390	175108	1718	
125	sastre5_m	OSE	www .	unk|www .	\N	173991	174804	813	
126	sastre5_m	LIL	y después un color para la cocina .	adv|ya=already adv|después=after pro:dem|un=one n|color=hue vsub|pari-13S&PRES=give_birth  det:art|el=the vpres|cocina-3S&PRES=cook .	\N	175392	178208	2816	
127	sastre5_m	LIL	que la cocina no es nada .	rel|que=that det:art|el=the vpres|cocina-3S&PRES=cook adv|no=no vpres|se-3S&PRES=be  vpres|nada-3S&PRES=swim .	\N	178537	179663	1126	
128	sastre5_m	LIL	es solamente esta pared .	vpres|se-3S&PRES=be adv|solamente=only det:dem|este=this n|pared=wall  .	\N	179663	180795	1132	
129	sastre5_m	NAT	ya empieza el arcoiris .	adv|ya=already vpres|empeza-3S&PRES=begin det:art|el=the ?|arcoiris .	\N	180238	181811	1573	
130	sastre5_m	OSE	www .	unk|www .	\N	181614	182154	540	
131	sastre5_m	NAT	&=laugh .	\N	\N	182148	183030	882	
132	sastre5_m	LIL	no pero [//] no pega .	adv|no=no adv|no=no vpres|pega-3S&PRES=hit_adhere .	\N	182400	184710	2310	
133	sastre5_m	LIL	creo yo .	vpres|cree-1S&PRES=believe pro:per|yo=I .	\N	184650	185718	1068	
134	sastre5_m	LIL	es un color para acá (.) y acá .	vpres|se-3S&PRES=be pro:dem|un=one n|color=hue prep|para=for adv|acá=there  adv|ya=already adv|acá=there .	\N	185677	190472	4795	
135	sastre5_m	NAT	Lorena@s:eng&spa después tiene que venir xxx ver cómo quedó &=laugh .	L2|Lorena adv|después=after vpres|tene-3S&PRES=have rel|que=that vinf|veni=come  unk|xxx vinf|ve=see adv:int|cómo=how vpret|queda-3S=stay .	\N	186304	189340	3036	
136	sastre5_m	NAT	&=laugh .	\N	\N	189311	190466	1155	
137	sastre5_m	LIL	eso es fácil verdad ?	pro:dem|eso=that_one vpres|se-3S&PRES=be adj|fácil=easy co|verdad=right  ?	\N	190426	191825	1399	
138	sastre5_m	OSE	www .	unk|www .	\N	191267	191720	453	
139	sastre5_m	LIL	ajá .	co|ajá .	\N	191808	192214	406	
140	sastre5_m	NAT	+< sí .	co|sí=yes .	\N	191808	192214	406	
141	sastre5_m	NAT	&=laugh .	\N	\N	192359	194078	1719	
142	sastre5_m	LIL	y esos son los tres colores para aquí abajo .	adv|ya=already det:dem|ese-PL=that vpres|se&PRES=be det:art|el-PL=the  num|tres=three vsub|colora&PRES=color prep|para=for adv|aquí=here adv|abajo=below  .	\N	193416	195477	2061	
143	sastre5_m	LIL	y después un color para mi baño y un color para el baño del [//] del +. . .	adv|ya=already adv|después=after pro:dem|un=one n|color=hue prep|para=for  det:pos|mi=my vpres|baña-1S&PRES=bathe conj|y=and pro:dem|un=one n|color=hue  prep|para=for det:art|el=the vpres|baña-1S&PRES=bathe prep|de~det|el&MASC  +. . .	\N	195641	199415	3774	
144	sastre5_m	OSE	+< www .	unk|www .	\N	198259	199647	1388	
145	sastre5_m	LIL	eh ?	co|eh ?	\N	199548	200192	644	
146	sastre5_m	OSE	www .	unk|www .	\N	200187	201197	1010	
147	sastre5_m	NAT	&=laugh está bueno eso &=laugh .	vpres|esta-3S&PRES=be co|bueno=good pro:dem|eso=that_one .	\N	201257	206986	5729	
148	sastre5_m	LIL	+< no [=! laugh] no .	adv|no=no adv|no=no .	\N	201263	203747	2484	
149	sastre5_m	LIL	y tengo [/] tengo un sample@s:eng color para el cuarto de Enrique@s:eng&spa solamente una pared para que se [/] se vea que está pintado .	adv|ya=already vpres|tene-1S&PRES=have pro:dem|un=one L2|sample n|color=hue  prep|para=for det:art|el=the adj|cuarto=fourth prep|de=of L2|Enrique adv|solamente=only  pro:dem|un=one n|pared=wall prep|para=for rel|que=that pro:refl|se=itself  vsub|ve-13S&PRES=see rel|que=that v:aux|esta-3S&PRES=be vpart|pinta=paint  .	\N	205397	211911	6514	
150	sastre5_m	LIL	pero no voy a pintar el cuarto entero .	conj|pero=but adv|no=no vpres|i-1S&PRES=go prep|a=to vinf|pinta=paint  det:art|el=the adj|cuarto=fourth adj|entero=entire .	\N	211929	213467	1538	
151	sastre5_m	LIL	solamente .	adv|solamente=only .	\N	213719	214560	841	
152	sastre5_m	OSE	www .	unk|www .	\N	213829	214491	662	
153	sastre5_m	LIL	una pared .	det:art|un=one n|pared=wall .	\N	214595	215065	470	
154	sastre5_m	LIL	y ese es el quinto o sexto color .	adv|ya=already det:dem|ese=that vpres|se-3S&PRES=be det:art|el=the adj|quinto=fifth  conj|o=or adj|sexto=sixth n|color=hue .	\N	215071	217004	1933	
155	sastre5_m	LIL	&=laugh pero te voy a enseñar el amarillo .	conj|pero=but pro:per|te=you vpres|i-1S&PRES=go prep|a=to vinf|enseña=teach  det:art|el=the adj|amarillo=yellow .	\N	216993	220046	3053	
156	sastre5_m	OSE	www .	unk|www .	\N	219640	220458	818	
157	sastre5_m	NAT	no [=! laugh] .	adv|no=no .	\N	220572	223062	2490	
158	sastre5_m	LIL	&=laugh .	\N	\N	222278	223172	894	
159	sastre5_m	NAT	yo te(ngo) [/] tengo que estar viva pa(ra) seguirla a ella .	pro:per|yo=I vpres|tene-1S&PRES=have rel|que=that vinf|esta=be vsub|vivi-13S&PRES=live  prep|para=for vinf|segui-INF~pro:clit|OBJ&FEM prep|a=to pro:per|ello=he  .	\N	223120	226336	3216	
160	sastre5_m	LIL	estos son los dos colores de [//] del +/ .	det:dem|este-PL=this vpres|se&PRES=be det:art|el-PL=the num|dos=two vsub|colora&PRES=color  prep|de~det|el&MASC +/ .	\N	226696	228217	1521	
161	sastre5_m	NAT	+< no lo toques .	adv|no=no pro:per:1|lo=him vsub|toca&PRES=touch .	\N	227810	228565	755	
162	sastre5_m	NAT	no lo toques tú .	adv|no=no pro:per:1|lo=him vsub|toca&PRES=touch pro:per|tú=you .	\N	228530	230208	1678	
163	sastre5_m	LIL	+< yo sé mami .	pro:per|yo=I vpres|sabe-1S&PRES=know n|mami=mommy .	\N	228530	230208	1678	
164	sastre5_m	LIL	estos son los dos colores amarillos .	det:dem|este-PL=this vpres|se&PRES=be det:art|el-PL=the num|dos=two vsub|colora&PRES=color  adj|amarillo-PL=yellow .	\N	230208	232338	2130	
165	sastre5_m	OSE	www .	unk|www .	\N	232350	233837	1487	
166	sastre5_m	LIL	ah@s:eng&spa .	L2|ah .	\N	232844	233384	540	
167	sastre5_m	NAT	tú ves ?	pro:per|tú=you vpres|ve&PRES=see ?	\N	233802	235357	1555	
168	sastre5_m	LIL	si .	conj|si=if .	\N	235804	236687	883	
169	sastre5_m	NAT	ah@s:eng&spa .	L2|ah .	\N	236629	237447	818	
170	sastre5_m	NAT	mira estos son la [/] la [/] la principal .	co|mira=look det:dem|este-PL=this vpres|se&PRES=be det:art|el=the adj|principal=main  .	\N	237786	240027	2241	
171	sastre5_m	LIL	+< puedes empezar con esos dos .	vpres|pode&PRES=can vinf|empeza=begin prep|con=with det:dem|ese-PL=that  num|dos=two .	\N	239887	242082	2195	
172	sastre5_m	NAT	+< y esto es la sala el otro color .	conj|y=and pro:dem|esto=this_one vpres|se-3S&PRES=be det:art|el=the vimp|sali-3S=leave  det:art|el=the pro:indef|otro=other n|color=hue .	\N	240346	242476	2130	
173	sastre5_m	LIL	bueno mami .	co|bueno=good n|mami=mommy .	\N	242519	243245	726	
174	sastre5_m	OSE	www .	unk|www .	\N	243024	243744	720	
175	sastre5_m	NAT	eso déjalo ahí xxx .	pro:dem|eso=that_one ?|déjalo adv|ahí=there unk|xxx .	\N	243158	243790	632	
176	sastre5_m	NAT	no vamos a tocar eso ahora .	adv|no=no vpres|i&PRES=go prep|a=to vinf|toca=touch pro:dem|eso=that_one  adv|ahora=now .	\N	243773	245230	1457	
177	sastre5_m	LIL	sí .	co|sí=yes .	\N	243906	244278	372	
178	sastre5_m	LIL	ahora te hacemos cafecito .	adv|ahora=now pro:per|te=you vpres|hace&PRES=do ?|cafecito .	\N	248411	249891	1480	
179	sastre5_m	NAT	Lily@s:eng&spa ahora tú te vas a sentar un ratico .	L2|Lily adv|ahora=now pro:per|tú=you pro:per|te=you vpres|i&PRES=go prep|a=to  vinf|senta=sit pro:dem|un=one n|rato=rat .	\N	249903	251865	1962	
180	sastre5_m	LIL	mami estoy bien .	n|mami=mommy vpres|esta-1S&PRES=be adv|bien=well .	\N	251859	253043	1184	
181	sastre5_m	NAT	no y no te dio unos dolores ?	adv|no=no adv|ya=already adv|no=no pro:per|te=you vpret|da-3S=give pro:dem|un-PL=one  n|dolor-PL=pain ?	\N	253037	254349	1312	
182	sastre5_m	LIL	pero eso es normal .	conj|pero=but pro:dem|eso=that_one vpres|se-3S&PRES=be adj|normal=normal  .	\N	254357	256081	1724	
183	sastre5_m	LIL	son dolores que me entran .	vpres|se&PRES=be n|dolor-PL=pain rel|que=that pro:per|me=me vpres|entra&PRES=come_in  .	\N	256060	258963	2903	
184	sastre5_m	LIL	lo que sabes qué ?	pro:per:1|lo=him rel|que=that vpres|sabe&PRES=know pro:int|qué=what ?	\N	258963	260286	1323	
185	sastre5_m	LIL	aguanta aquí que voy a lavar esto .	vpres|aguanta-3S&PRES=endure adv|aquí=here rel|que=that vpres|i-1S&PRES=go  prep|a=to vinf|lava=wash pro:dem|esto=this_one .	\N	260275	262475	2200	
186	sastre5_m	LIL	Lorena@s:eng&spa we@s:eng love@s:eng you@s:eng [=! laugh] .	L2|Lorena L2|we L2|love L2|you .	\N	264695	268669	3974	
187	sastre5_m	LIL	you know we love you &=laugh .	pro|you v|know pro|we v|love pro|you .	\N	268663	270997	2334	eng
188	sastre5_m	LIL	&=laugh .	\N	\N	270925	272376	1451	
189	sastre5_m	NAT	no ya ya ya ya ya ya .	co|no=no adv|ya=already adv|ya=already adv|ya=already adv|ya=already adv|ya=already  adv|ya=already .	\N	272335	273763	1428	
190	sastre5_m	LIL	ay y esto me lo has grabado mami .	co|ay=ay conj|y=and pro:dem|esto=this_one pro:per|me=me pro:per:1|lo=him  v:aux|habe&PRES=have vpart|graba=engrave n|mami=mommy .	\N	273665	277270	3605	
191	sastre5_m	OSE	www .	unk|www .	\N	276427	279050	2623	
192	sastre5_m	LIL	ok &=laugh .	?|ok .	\N	279011	280630	1619	
193	sastre5_m	OSE	www .	unk|www .	\N	280224	281129	905	
194	sastre5_m	NAT	www .	unk|www .	\N	280619	282139	1520	
195	sastre5_m	LIL	no yo lo hago .	adv|no=no pro:per|yo=I pro:per:1|lo=him vpres|hace-1S&PRES=do .	\N	282122	283985	1863	
752	sastre5_m	LIL	it didn't scare me .	pro|it aux|do&PAST~neg|not v|scare pro|me .	\N	1239577	1240383	806	eng
196	sastre5_m	NAT	pa(ra) que te sientes tú Lilita@s:eng&spa .	prep|para=for rel|que=that pro:per|te=you vpres|senti&PRES=feel pro:per|tú=you  L2|Lilita .	\N	284060	285337	1277	
197	sastre5_m	LIL	sí dímelo ?	adv|sí=yes vimpsh|deci-2S&IMP~pro:clit|1S~pro:clit|OBJ&MASC ?	\N	285331	286933	1602	
198	sastre5_m	OSE	www .	unk|www .	\N	286104	289064	2960	
199	sastre5_m	LIL	&=laugh no sabes ah@s:eng&spa +// .	adv|no=no vpres|sabe&PRES=know L2|ah +// .	\N	288937	291514	2577	
200	sastre5_m	LIL	esos son cinco piezas .	det:dem|ese-PL=that vpres|se&PRES=be num|cinco=five n|pieza-PL=piece .	\N	291515	293663	2148	
201	sastre5_m	OSE	www .	unk|www .	\N	293872	295021	1149	
202	sastre5_m	LIL	se mueve &em bueno +// .	pro:refl|se=itself vpres|move-3S&PRES=move adj|buen=good +// .	\N	294905	296844	1939	
203	sastre5_m	OSE	www .	unk|www .	\N	296687	297540	853	
204	sastre5_m	LIL	ajá por partes ?	co|ajá prep|por=for vpres|parti&PRES=divide ?	\N	297517	299026	1509	
205	sastre5_m	NAT	&=laugh .	\N	\N	302465	304543	2078	
206	sastre5_m	LIL	&em .	\N	\N	303626	304508	882	
207	sastre5_m	LIL	&sis no [/] no pesa .	adv|no=no vpres|pesa-3S&PRES=weigh .	\N	306086	308083	1997	
208	sastre5_m	LIL	pero pesa normal .	conj|pero=but vpres|pesa-3S&PRES=weigh adj|normal=normal .	\N	308060	309122	1062	
209	sastre5_m	LIL	&=laugh .	\N	\N	309128	311339	2211	
210	sastre5_m	NAT	&=laugh .	\N	\N	309128	311339	2211	
211	sastre5_m	OSE	www .	unk|www .	\N	309128	311339	2211	
212	sastre5_m	LIL	si esto tiene sentido &=laugh lo que he dicho [=! laugh] .	conj|si=if pro:dem|esto=this_one vpres|tene-3S&PRES=have vpart|senti=feel  pro:per:1|lo=him rel|que=that vpres|habe-1S&PRES=have vpart|deci=say .	\N	311376	315085	3709	
213	sastre5_m	NAT	&=laugh .	\N	\N	314946	316159	1213	
214	sastre5_m	OSE	www .	unk|www .	\N	316037	317030	993	
215	sastre5_m	LIL	&=laugh .	\N	\N	319528	320811	1283	
216	sastre5_m	NAT	&=laugh .	\N	\N	319528	320811	1283	
217	sastre5_m	OSE	www .	unk|www .	\N	320759	321931	1172	
218	sastre5_m	LIL	lo normal .	pro:per:1|lo=him adj|normal=normal .	\N	321936	322470	534	
219	sastre5_m	LIL	lo que puedan ustedes +. . .	pro:per:1|lo=him prep|que=than vimp|pode=can pro:per:1|usted-PL=you +. .  .	\N	322499	323683	1184	
220	sastre5_m	NAT	no pesa pero pesa lo normal [=! laugh] .	adv|no=no vpres|pesa-3S&PRES=weigh conj|pero=but vpres|pesa-3S&PRES=weigh  pro:per:1|lo=him adj|normal=normal .	\N	323730	327445	3715	
221	sastre5_m	LIL	+< &=laugh .	\N	\N	325291	326887	1596	
222	sastre5_m	LIL	pero normal para los caballeros como ustedes no ?	conj|pero=but adj|normal=normal prep|para=for det:art|el-PL=the n|caballero-PL=horseman  adv|como=like pro:per:1|usted-PL=you co|no=no ?	\N	327457	330981	3524	
223	sastre5_m	NAT	+< óyeme .	vimpsh|oí-2S&IMP~pro:clit|1S .	\N	327771	328322	551	
224	sastre5_m	NAT	+< lo que +// .	pro:per:1|lo=him rel|que=that +// .	\N	328345	328897	552	
225	sastre5_m	NAT	mira &pe perdona allá está arriba yo no pude sacar las botellas que quedaron [=! laugh] .	co|mira=look co|perdona=pardon adv|allá=there vpres|esta-3S&PRES=be adv|arriba=above  pro:per|yo=I adv|no=no vpret|pode-1S=can vinf|saca=bring_out det:art|el-PL=the  n|botella-PL=flask prep|que=than vpret|queda=stay .	\N	330313	333883	3570	
226	sastre5_m	OSE	www .	unk|www .	\N	333980	334641	661	
227	sastre5_m	NAT	porque yo soy muy bajita .	conj|porque=because pro:per|yo=I vpres|se-1S&PRES=be adv|muy=very adj|bajo=low  .	\N	334606	336783	2177	
228	sastre5_m	NAT	pero ahí quedaron unas cuantas botellas que no pude sacarlas .	conj|pero=but adv|ahí=there vpret|queda=stay vsub|uni&PRES=unite det:indef|cuanto-PL=how_much  n|botella-PL=flask rel|que=that adv|no=no vpret|pode-1S=can vinf|saca-INF~pro:clit|OBJ&FEM&PL  .	\N	336854	339570	2716	
229	sastre5_m	NAT	no sé si (.) Lorena@s:eng&spa nos puede ayudar [=! laugh] .	adv|no=no vpres|sabe-1S&PRES=know conj|si=if L2|Lorena pro:per|nos=us  vpres|pode-3S&PRES=can vinf|ayuda=help .	\N	339710	342432	2722	
230	sastre5_m	LIL	no no no no .	adv|no=no adv|no=no adv|no=no adv|no=no .	\N	341794	343024	1230	
231	sastre5_m	NAT	se va a quedar ahí ?	pro:refl|se=itself vpres|i-3S&PRES=go prep|a=to vinf|queda=stay adv|ahí=there  ?	\N	342519	343506	987	
232	sastre5_m	LIL	pero a eso +// .	conj|pero=but prep|a=to pro:dem|eso=that_one +// .	\N	343471	344278	807	
233	sastre5_m	NAT	+< y este lado de acá ?	adv|ya=already det:dem|este=this n|lado=side prep|de=of adv|acá=there  ?	\N	343564	344719	1155	
234	sastre5_m	OSE	www .	unk|www .	\N	344319	345126	807	
235	sastre5_m	NAT	+< en este lado de acá .	prep|en=in det:dem|este=this n|lado=side prep|de=of adv|acá=there .	\N	344922	346054	1132	
236	sastre5_m	NAT	abre ahí .	vpres|abri-3S&PRES=open adv|ahí=there .	\N	346054	347401	1347	
237	sastre5_m	NAT	arriba (.) yo no pude vaciar más arriba .	adv|arriba=above pro:per|yo=I adv|no=no vpret|pode-1S=can vinf|vacia=empty  adv|más=more adv|arriba=above .	\N	347529	349688	2159	
238	sastre5_m	LIL	+< pero eso se puede mover no ?	conj|pero=but pro:dem|eso=that_one pro:refl|se=itself vpres|pode-3S&PRES=can  vinf|move=move co|no=no ?	\N	349340	351691	2351	
239	sastre5_m	NAT	porque allá yo no llegaba .	conj|porque=because adv|allá=there pro:per|yo=I adv|no=no vpas|llega-13S=arrive  .	\N	350181	351789	1608	
240	sastre5_m	OSE	www .	unk|www .	\N	351714	353833	2119	
241	sastre5_m	NAT	tú quieres que lo saquemos ?	pro:per|tú=you vpres|quere&PRES=want rel|que=that pro:per:1|lo=him vsub|saca&PRES=bring_out  ?	\N	353785	355410	1625	
242	sastre5_m	OSE	+< www .	unk|www .	\N	353988	355126	1138	
243	sastre5_m	LIL	dónde está la fiesta ?	adv:int|dónde=where vpres|esta-3S&PRES=be det:art|el=the n|fiesta=festival  ?	\N	355120	357065	1945	
244	sastre5_m	OSE	www .	unk|www .	\N	356287	357146	859	
245	sastre5_m	LIL	no no [=! laugh] .	adv|no=no adv|no=no .	\N	357030	358202	1172	
246	sastre5_m	NAT	+< mira Lorena@s:eng&spa ven por favor .	co|mira=look L2|Lorena vimp|veni=come prep|por=for n|favor=favor .	\N	357372	359247	1875	
247	sastre5_m	LIL	no .	adv|no=no .	\N	360089	361737	1648	
248	sastre5_m	NAT	+< ah@s:eng&spa sí [=! laugh] ?	L2|ah co|sí=yes ?	\N	360379	361656	1277	
249	sastre5_m	LIL	pero no [/] no se puede mover .	conj|pero=but adv|no=no pro:refl|se=itself vpres|pode-3S&PRES=can vinf|move=move  .	\N	361774	363313	1539	
894	sastre5_m	OSE	www .	unk|www .	\N	1514618	1515779	1161	
895	sastre5_m	LIL	he's right .	pro|he~v:cop|be&3S adj|right .	\N	1515698	1516400	702	eng
250	sastre5_m	LIL	ah@s:eng&spa no que se van a ca(er) +/ .	L2|ah co|no=no rel|que=that pro:refl|se=itself vpres|i&PRES=go prep|a=to  vinf|cae=fall +/ .	\N	363324	364822	1498	
251	sastre5_m	NAT	no Lorena@s:eng&spa va a ayudar mamita .	adv|no=no L2|Lorena vpres|i-3S&PRES=go prep|a=to vinf|ayuda=help n|mama=mamma  .	\N	363481	364903	1422	
252	sastre5_m	NAT	mira +// .	co|mira=look +// .	\N	364921	365774	853	
253	sastre5_m	OSE	www .	unk|www .	\N	365327	366134	807	
254	sastre5_m	NAT	tú ves cómo la queremos ?	pro:per|tú=you vpres|ve&PRES=see adv:int|cómo=how det:art|el=the vpres|quere&PRES=want  ?	\N	366119	367489	1370	
255	sastre5_m	LIL	+< aquí .	adv|aquí=here .	\N	366600	367251	651	
256	sastre5_m	OSE	www .	unk|www .	\N	367343	370826	3483	
257	sastre5_m	NAT	son botellas que nunca se usan muchacha .	vpres|se&PRES=be n|botella-PL=flask rel|que=that adv|nunca=never pro:refl|se=itself  vpres|usa&PRES=use n|muchacho=child .	\N	370794	373191	2397	
258	sastre5_m	NAT	te la puedes llevar xxx .	pro:per|te=you det:art|el=the vpres|pode&PRES=can vinf|lleva=carry unk|xxx  .	\N	373023	374782	1759	
259	sastre5_m	OSE	+< xxx .	unk|xxx .	\N	373841	374613	772	
260	sastre5_m	NAT	&=laugh .	\N	\N	374427	376831	2404	
261	sastre5_m	OSE	www .	unk|www .	\N	375374	376883	1509	
262	sastre5_m	LIL	yeah we don't have lavish parties .	co|yeah pro|we aux|do~neg|not v|have adj|lavish n|party-PL .	\N	376907	378411	1504	eng
263	sastre5_m	LIL	we're not alcoholics .	pro|we~aux|be&PRES neg|not n:adj|alcoholic-PL .	\N	378370	379636	1266	eng
264	sastre5_m	LIL	<lo que sí> [//] Enrique@s:eng&spa lo que sí toma es el güisqui .	L2|Enrique pro:per:1|lo=him rel|que=that co|sí=yes vpres|toma-3S&PRES=take  vpres|se-3S&PRES=be det:art|el=the ?|güisqui .	\N	379633	382849	3216	
265	sastre5_m	NAT	sí pero eso está allá en la cocina .	co|sí=yes conj|pero=but pro:dem|eso=that_one vpres|esta-3S&PRES=be adv|allá=there  prep|en=in det:art|el=the vpres|cocina-3S&PRES=cook .	\N	382953	384410	1457	
266	sastre5_m	LIL	no pero tenemos un montón de güisqui .	co|no=no conj|pero=but vpres|tene&PRES=have pro:dem|un=one n|monte=hill  prep|de=of ?|güisqui .	\N	384364	386280	1916	
267	sastre5_m	NAT	son botellas que le regalan a él .	vpres|se&PRES=be n|botella-PL=flask rel|que=that pro:per|le=him vpres|regala&PRES=give_present  prep|a=to pro:per|él=he .	\N	387049	388419	1370	
268	sastre5_m	NAT	y ellos casi nunca las usan .	adv|ya=already pro:per|ello-PL=he adv|casi=almost adv|nunca=never det:art|el-PL=the  vpres|usa&PRES=use .	\N	388460	389841	1381	
269	sastre5_m	OSE	www .	unk|www .	\N	388564	389023	459	
270	sastre5_m	NAT	entonces se le van quedando .	adv|entonces=then pro:refl|se=itself pro:per|le=him vpres|i&PRES=go vger|queda-PROG=stay  .	\N	389615	390962	1347	
271	sastre5_m	LIL	es que en nuestra casita no podemos tener fiestas así porque no hay cupo pa(ra) tanta gente .	vpres|se-3S&PRES=be rel|que=that prep|en=in det:pos|nuestro=our n|casa=house  adv|no=no vpres|pode&PRES=can vinf|tene=have n|fiesta-PL=festival adv|así=thus  conj|porque=because adv|no=no vpres|habe-3S&PRES=have vpret|cabe-3S=fit  prep|para=for det:indef|tanto=so_much n|gente=folk .	\N	390340	394527	4187	
272	sastre5_m	OSE	www .	unk|www .	\N	393940	394927	987	
273	sastre5_m	NAT	uh mira cuánta gente hay acá ahora mismo .	co|uh co|mira=look pro:int|cuánto=how_much n|gente=folk vpres|habe-3S&PRES=have  adv|acá=there adv|ahora=now adj|mismo=same .	\N	394876	396501	1625	
274	sastre5_m	LIL	pues sí .	co|pues=well co|sí=yes .	\N	396525	397279	754	
275	sastre5_m	NAT	&=laugh .	\N	\N	396525	397279	754	
276	sastre5_m	OSE	www .	unk|www .	\N	397643	399169	1526	
277	sastre5_m	LIL	ajá &=laugh .	co|ajá .	\N	399178	400751	1573	
278	sastre5_m	NAT	+< pero lo que estuvo cómico es pesa pero lo normal &=laugh .	conj|pero=but pro:per:1|lo=him prep|que=than vpret|esta-3S=be adj|cómico=comic  vpres|se-3S&PRES=be vpres|pesa-3S&PRES=weigh conj|pero=but pro:per:1|lo=him  adj|normal=normal .	\N	399298	402583	3285	
279	sastre5_m	NAT	xxx .	unk|xxx .	\N	402578	404127	1549	
280	sastre5_m	OSE	www .	unk|www .	\N	402578	404127	1549	
281	sastre5_m	NAT	pisco@s:eng&spa ah@s:eng&spa .	L2|pisco L2|ah .	\N	404175	406021	1846	
282	sastre5_m	LIL	+< qué es eso ?	pro:int|qué=what vpres|se-3S&PRES=be pro:dem|eso=that_one ?	\N	404175	406021	1846	
283	sastre5_m	NAT	la bebida peruana .	det:art|el=the n|bebida=drink n|peruano=Peruvian .	\N	406009	407814	1805	
284	sastre5_m	LIL	cómo se toma eso ?	adv:int|cómo=how pro:refl|se=itself vpres|toma-3S&PRES=take pro:dem|eso=that_one  ?	\N	407809	409573	1764	
285	sastre5_m	OSE	www .	unk|www .	\N	409309	412855	3546	
286	sastre5_m	LIL	ah@s:eng&spa sí ?	L2|ah co|sí=yes ?	\N	411433	412809	1376	
287	sastre5_m	LIL	con hielito y todo ?	prep|con=with n|hielo=frost adv|ya=already det:indef|todo=all ?	\N	413742	415292	1550	
288	sastre5_m	OSE	www .	unk|www .	\N	414729	418009	3280	
289	sastre5_m	LIL	si ?	conj|si=if ?	\N	418003	418740	737	
290	sastre5_m	NAT	+< pero +. . .	conj|pero=but +. . .	\N	418421	419025	604	
291	sastre5_m	NAT	pero ese pisco@s:eng&spa debe tener cantidad de años ahí guardado .	conj|pero=but det:dem|ese=that L2|pisco vpres|debe-3S&PRES=must vinf|tene=have  n|cantidad=quantity prep|de=of n|año-PL=year adv|ahí=there vpart|guarda=guard  .	\N	419752	422684	2932	
292	sastre5_m	OSE	www .	unk|www .	\N	422173	423467	1294	
293	sastre5_m	LIL	sí sí sí el [/] el alcohol no +. . .	co|sí=yes co|sí=yes co|sí=yes det:art|el=the n|alcohol=alcohol co|no=no  +. . .	\N	423420	425492	2072	
294	sastre5_m	OSE	www .	unk|www .	\N	425562	426798	1236	
295	sastre5_m	LIL	no se pone malo .	adv|no=no pro:refl|se=itself vpres|pone-3S&PRES=put adj|malo=bad .	\N	426781	428029	1248	
296	sastre5_m	LIL	perfecto (.) lo que sí (.) tengo mucho libros allá abajo .	adj|perfecto=perfect pro:per:1|lo=him rel|que=that co|sí=yes vpres|tene-1S&PRES=have  adv|mucho=much adj|libre-PL=free adv|allá=there adv|abajo=below .	\N	430564	435127	4563	
297	sastre5_m	OSE	www .	unk|www .	\N	431458	432892	1434	
298	sastre5_m	OSE	www .	unk|www .	\N	435098	436084	986	
299	sastre5_m	LIL	que no es normal .	rel|que=that adv|no=no vpres|se-3S&PRES=be adj|normal=normal .	\N	436314	438003	1689	
300	sastre5_m	NAT	+< no son muchos (.) .	adv|no=no vpres|se&PRES=be det:indef|mucho-PL=many .	\N	436819	437963	1144	
301	sastre5_m	NAT	+< pero son los normales &=laugh .	conj|pero=but vpres|se&PRES=be det:art|el-PL=the adj|normal-PL=normal  .	\N	437957	439263	1306	
302	sastre5_m	LIL	+< eso es lo que sí te va a hacer que pese .	pro:dem|eso=that_one vpres|se-3S&PRES=be pro:per:1|lo=him rel|que=that  co|sí=yes pro:per|te=you vpres|i-3S&PRES=go prep|a=to vinf|hace=do rel|que=that  vsub|pesa-13S&PRES=weigh .	\N	438682	440470	1788	
303	sastre5_m	LIL	que pese mucho esto .	rel|que=that vsub|pesa-13S&PRES=weigh adv|mucho=much pro:dem|esto=this_one  .	\N	440610	442879	2269	
304	sastre5_m	OSE	www .	unk|www .	\N	442221	443423	1202	
305	sastre5_m	NAT	+< no &=laugh .	adv|no=no .	\N	443167	445588	2421	
306	sastre5_m	OSE	www .	unk|www .	\N	444152	445562	1410	
307	sastre5_m	LIL	xxx .	unk|xxx .	\N	445725	447600	1875	
308	sastre5_m	NAT	&=laugh .	\N	\N	445725	447600	1875	
309	sastre5_m	NAT	perdona ?	co|perdona=pardon ?	\N	447449	448029	580	
310	sastre5_m	OSE	www .	unk|www .	\N	448049	449425	1376	
311	sastre5_m	NAT	a sí está xxx su bebito (.) tiene su bebito .	prep|a=to co|sí=yes vpres|esta-3S&PRES=be unk|xxx det:pos|su&3S=his n|bebito=baby  vpres|tene-3S&PRES=have det:pos|su&3S=his n|bebito=baby .	\N	449674	453020	3346	
312	sastre5_m	LIL	&=laugh .	\N	\N	449674	452840	3166	
313	sastre5_m	OSE	www .	unk|www .	\N	452776	453712	936	
314	sastre5_m	NAT	óyeme Lily@s:eng&spa lo cómico de esto es que cada vez que tú te mueves yo me xxx +// .	vimpsh|oí-2S&IMP~pro:clit|1S L2|Lily pro:per:1|lo=him adj|cómico=comic  prep|de=of pro:dem|esto=this_one vpres|se-3S&PRES=be rel|que=that det:indef|cada=each  n|vez=turn rel|que=that pro:per|tú=you pro:per|te=you vpres|move&PRES=move  pro:per|yo=I pro:per|me=me unk|xxx +// .	\N	453744	458527	4783	
315	sastre5_m	LIL	perdón mami .	co|perdón=pardon n|mami=mommy .	\N	457146	458423	1277	
316	sastre5_m	OSE	www .	unk|www .	\N	456635	458429	1794	
317	sastre5_m	NAT	+< yo tengo que estar pensando cómo tú caminas para yo caminar &=laugh .	pro:per|yo=I vpres|tene-1S&PRES=have rel|que=that vinf|esta=be vger|pensa-PROG=think  adv:int|cómo=how pro:per|tú=you vpres|camina&PRES=walk prep|para=for  pro:per|yo=I vinf|camina=walk .	\N	458622	462918	4296	
318	sastre5_m	LIL	I'm sorry .	?|I'm ?|sorry .	\N	459929	461020	1091	
319	sastre5_m	LIL	ves ?	co|ves=see ?	\N	461780	462576	796	
320	sastre5_m	LIL	pero [/] pero es pesa(do) +// .	conj|pero=but vpres|se-3S&PRES=be vpart|pesa=weigh +// .	\N	463162	464915	1753	
321	sastre5_m	NAT	+< eso pesa más que el mueble sí .	pro:dem|eso=that_one vpres|pesa-3S&PRES=weigh adv|más=more rel|que=that  det:art|el=the n|mueble=furniture co|sí=yes .	\N	463667	465548	1881	
322	sastre5_m	LIL	+< eso hace que (.) pero ustedes pueden no lo mueven poquito y ahí caben no ?	pro:dem|eso=that_one vpres|hace-3S&PRES=do rel|que=that conj|pero=but  pro:per:1|usted-PL=you vpres|pode&PRES=can adv|no=no pro:per:1|lo=him vpres|move&PRES=move  pro:indef|poquito=little adv|ya=already adv|ahí=there vpres|cabe&PRES=fit  adv|no=no ?	\N	464898	469664	4766	
323	sastre5_m	LIL	&=laugh .	\N	\N	469916	472726	2810	
324	sastre5_m	OSE	www .	unk|www .	\N	471573	474661	3088	
325	sastre5_m	NAT	se [/] se rompa .	pro:refl|se=itself vsub|rompe-13S&PRES=break .	\N	474616	476038	1422	
326	sastre5_m	NAT	porque pesa poquito .	conj|porque=because vpres|pesa-3S&PRES=weigh det:indef|poquito=little  .	\N	476051	477078	1027	
327	sastre5_m	NAT	tú sabes .	pro:per|tú=you vpres|sabe&PRES=know .	\N	477072	477722	650	
328	sastre5_m	LIL	no esos [/] esos ya los pueden mover .	adv|no=no det:dem|ese-PL=that adv|ya=already det:art|el-PL=the vpres|pode&PRES=can  vinf|move=move .	\N	477677	479511	1834	
329	sastre5_m	LIL	eso es fácil .	pro:dem|eso=that_one vpres|se-3S&PRES=be adj|fácil=easy .	\N	479505	481334	1829	
330	sastre5_m	LIL	eso es normal .	pro:dem|eso=that_one vpres|se-3S&PRES=be adj|normal=normal .	\N	481293	483290	1997	
331	sastre5_m	OSE	www .	unk|www .	\N	482112	483482	1370	
332	sastre5_m	NAT	mira mira ya [/] ya se empezó a romper .	co|mira=look co|mira=look adv|ya=already pro:refl|se=itself vpret|empeza-3S=begin  prep|a=to vinf|rompe=break .	\N	483402	485074	1672	
333	sastre5_m	NAT	y al caer pues no importa .	n:let|y prep|a~det|el&MASC vinf|cae=fall co|pues=well adv|no=no vpres|importa-3S&PRES=matter  .	\N	484842	486293	1451	
334	sastre5_m	LIL	no eso es puro libros .	co|no=no pro:dem|eso=that_one vpres|se-3S&PRES=be adj|puro=pure adj|libre-PL=free  .	\N	485486	487489	2003	
335	sastre5_m	NAT	ay hay un hueco .	co|ay=ay vpres|habe-3S&PRES=have pro:dem|un=one n|hueco=hollow .	\N	487425	489393	1968	
336	sastre5_m	OSE	www .	unk|www .	\N	488871	490479	1608	
337	sastre5_m	LIL	qué hueco ?	pro:int|qué=what n|hueco=hollow ?	\N	490473	491349	876	
338	sastre5_m	OSE	www .	unk|www .	\N	491082	491901	819	
339	sastre5_m	NAT	ah@s:eng&spa es una fotografía xxx .	L2|ah vpres|se-3S&PRES=be det:art|un=one n|fotografía=photograph unk|xxx  .	\N	491867	493870	2003	
340	sastre5_m	LIL	+< no un libro .	co|no=no pro:dem|un=one adj|libre=free .	\N	493022	493875	853	
341	sastre5_m	NAT	un libro .	pro:dem|un=one adj|libre=free .	\N	493817	494543	726	
342	sastre5_m	LIL	+< de buda .	prep|de=of ?|buda .	\N	493817	494543	726	
343	sastre5_m	LIL	tengo demasiados libros .	vpres|tene-1S&PRES=have adj|demasiado-PL=excessive adj|libre-PL=free .	\N	498387	499890	1503	
344	sastre5_m	NAT	me lo dices .	pro:per|me=me pro:per:1|lo=him vpres|deci&PRES=say .	\N	500335	501014	679	
345	sastre5_m	NAT	o me lo preguntas ?	conj|o=or pro:per|me=me pro:per:1|lo=him vpres|pregunta&PRES=ask ?	\N	500991	502192	1201	
346	sastre5_m	LIL	pero no me gusta botarlas .	conj|pero=but adv|no=no pro:per|me=me vpres|gusta-3S&PRES=like vinf|bota-INF~pro:clit|OBJ&FEM&PL  .	\N	501008	502245	1237	
347	sastre5_m	OSE	www .	unk|www .	\N	502346	504679	2333	
348	sastre5_m	LIL	mmhm .	co|mmhm .	\N	504696	505213	517	
349	sastre5_m	OSE	www .	unk|www .	\N	505337	510051	4714	
350	sastre5_m	LIL	I love that .	pro|I v|love pro:dem|that .	\N	510020	510938	918	eng
351	sastre5_m	LIL	xxx .	unk|xxx .	\N	510914	514368	3454	
352	sastre5_m	LIL	I wish I had that .	pro|I v|wish pro|I v|have&PAST rel|that .	\N	514308	516717	2409	eng
353	sastre5_m	LIL	we put Enrique's@s:eng&spa+eng books from his office (be)cause we needed space for the baby .	pro|we v|put&ZERO L2|Enrique's n|book-PL prep|from pro:poss:det|his n|office  conj:sub|because pro|we part|need-PERF n|space prep|for det|the n|baby  .	\N	516554	520792	4238	eng
553	sastre5_m	NAT	no gracias .	adv|no=no n|gracia-PL=grace .	\N	902869	903810	941	
354	sastre5_m	LIL	<we took all the books with um (.) the bookshelf> [//] we put all his books in boxes in the garage .	pro|we v|put&ZERO qn|all pro:poss:det|his n|book-PL prep|in n|box-PL prep|in  det|the n|garage .	\N	520807	527464	6657	eng
355	sastre5_m	OSE	www .	unk|www .	\N	527162	527765	603	
356	sastre5_m	LIL	(be)cause I needed the xxx for baby .	conj:sub|because pro|I v|need-PAST det|the unk|xxx prep|for n|baby .	\N	527514	529355	1841	eng
357	sastre5_m	LIL	but he has three boxes full of books .	conj:coo|but pro|he aux|have&3S det:num|three n|box-PL adj|full prep|of  n|book-PL .	\N	529320	532605	3285	eng
358	sastre5_m	OSE	www .	unk|www .	\N	532648	534482	1834	
359	sastre5_m	NAT	tienes xxx +// .	vpres|tene&PRES=have unk|xxx +// .	\N	534656	535735	1079	
360	sastre5_m	NAT	+< a mira .	prep|a=to co|mira=look .	\N	534924	535539	615	
361	sastre5_m	LIL	ves ?	co|ves=see ?	\N	535678	536009	331	
362	sastre5_m	NAT	+< es fácil .	vpres|se-3S&PRES=be adj|fácil=easy .	\N	535760	536642	882	
363	sastre5_m	LIL	+< te dije .	pro:per|te=you vpret|deci-1S=say .	\N	535998	536741	743	
364	sastre5_m	NAT	pesa .	vimp|pesa=weigh .	\N	537400	537876	476	
365	sastre5_m	NAT	pero no pesa mucho como dijo ella .	conj|pero=but adv|no=no vpres|pesa-3S&PRES=weigh adv|mucho=much adv|como=like  vpret|deci-3S=say pro:per|ello=he .	\N	537870	541080	3210	
366	sastre5_m	LIL	ya entonces le voy a +// .	adv|ya=already adv|entonces=then pro:per|le=him vpres|i-1S&PRES=go prep|a=to  +// .	\N	539304	540866	1562	
367	sastre5_m	OSE	www .	unk|www .	\N	540732	541580	848	
368	sastre5_m	LIL	le voy a hacer el café entonces .	pro:per|le=him vpres|i-1S&PRES=go prep|a=to vinf|hace=do det:art|el=the  n|café=coffee adv|entonces=then .	\N	541557	544883	3326	
369	sastre5_m	NAT	ay mi madre .	co|ay=ay det:pos|mi=my n|madre=mother .	\N	544757	546342	1585	
370	sastre5_m	LIL	lo quieres hacer tú y yo me siento ?	pro:per:1|lo=him vpres|quere&PRES=want vinf|hace=do pro:per|tú=you adv|ya=already  pro:per|yo=I pro:per|me=me vpres|senti-1S&PRES=feel ?	\N	546284	548502	2218	
371	sastre5_m	NAT	yo sabía que terminaba .	pro:per|yo=I vpas|sabe-13S=know rel|que=that vpas|termina-13S=end .	\N	548502	549674	1172	
372	sastre5_m	NAT	no te preocupes .	adv|no=no pro:per|te=you vsub|preocupa&PRES=preoccupy .	\N	549672	550450	778	
373	sastre5_m	LIL	yo me siento .	pro:per|yo=I pro:per|me=me vpres|senti-1S&PRES=feel .	\N	550868	551889	1021	
374	sastre5_m	NAT	no pero dónde tienes el &ca mama dónde tienes el café por favor ?	co|no=no conj|pero=but adv:int|dónde=where vpres|tene&PRES=have det:art|el=the  vimp|mama=suck adv:int|dónde=where vpres|tene&PRES=have det:art|el=the  n|café=coffee prep|por=for n|favor=favor ?	\N	551877	554612	2735	
375	sastre5_m	LIL	&puchuchu .	\N	\N	552075	553340	1265	
376	sastre5_m	LIL	ay .	co|ay=ay .	\N	554658	555436	778	
377	sastre5_m	LIL	en (.) café pilón .	prep|en=in n|café=coffee n|pila=cattle_trough .	\N	555549	558568	3019	
378	sastre5_m	NAT	Lorena@s:eng&spa &tu &mi tú tomas café ?	L2|Lorena pro:per|tú=you vpres|toma&PRES=take n|café=coffee ?	\N	558678	560037	1359	
379	sastre5_m	LIL	+< sí ella toma café .	adv|sí=yes pro:per|ello=he vimp|toma=take n|café=coffee .	\N	559926	560727	801	
380	sastre5_m	LIL	&as aquí está el azúcar .	adv|aquí=here vpres|esta-3S&PRES=be det:art|el=the n|azúcar=sugar .	\N	562074	563670	1596	
381	sastre5_m	LIL	ah@s:eng&spa .	L2|ah .	\N	563658	566671	3013	
382	sastre5_m	LIL	qué pasó &puchuchu ?	pro:int|qué=what vpret|pasa-3S=pass ?	\N	568288	569885	1597	
383	sastre5_m	NAT	+< Lily@s:eng&spa siéntate que el [/] el xxx .	L2|Lily vimpsh|senta-2S&IMP~pro:clit|2S rel|que=that det:art|el=the unk|xxx  .	\N	569083	572212	3129	
384	sastre5_m	LIL	xxx .	unk|xxx .	\N	571069	572828	1759	
385	sastre5_m	OSE	www .	unk|www .	\N	572212	573176	964	
386	sastre5_m	LIL	no no sit down .	adv|no=no adv|no=no ?|sit ?|down .	\N	573141	574378	1237	
387	sastre5_m	NAT	siéntate Lorena@s:eng&spa mi amor .	vimpsh|senta-2S&IMP~pro:clit|2S L2|Lorena det:pos|mi=my co:voc|amor=love  .	\N	574341	576257	1916	
388	sastre5_m	LIL	you want a xxx ?	pro|you v|want det|a unk|xxx ?	\N	576187	577192	1005	eng
389	sastre5_m	NAT	+< quieres (.) quieres jugar a la suiza ?	vpres|quere&PRES=want vpres|quere&PRES=want vinf|juga=play prep|a=to det:art|el=the  n|suizo=Swiss ?	\N	576379	578469	2090	
390	sastre5_m	NAT	&=laugh .	\N	\N	578445	580837	2392	
391	sastre5_m	LIL	+< &=laugh .	\N	\N	578445	580837	2392	
392	sastre5_m	OSE	+< www .	unk|www .	\N	578445	580837	2392	
393	sastre5_m	NAT	ay dios mío .	co|ay=ay n|dios=diety pro:pos|mío=my .	\N	580818	581973	1155	
394	sastre5_m	LIL	ay .	co|ay=ay .	\N	581956	583970	2014	
395	sastre5_m	NAT	xxx entonces ella lo que dijo es verdad que pesaba pero poquito .	unk|xxx adv|entonces=then pro:per|ello=he pro:per:1|lo=him rel|que=that  vpret|deci-3S=say vpres|se-3S&PRES=be co|verdad=right rel|que=that vpas|pesa-13S=weigh  conj|pero=but pro:indef|poquito=little .	\N	583933	587195	3262	
396	sastre5_m	OSE	www .	unk|www .	\N	586638	587886	1248	
397	sastre5_m	NAT	lo normal ajá &=laugh .	pro:per:1|lo=him adj|normal=normal co|ajá .	\N	587822	589442	1620	
398	sastre5_m	OSE	www .	unk|www .	\N	590511	592003	1492	
399	sastre5_m	LIL	quieres luz ?	vpres|quere&PRES=want n|luz=light ?	\N	591997	594400	2403	
400	sastre5_m	LIL	le hace falta luz no ?	pro:per|le=him vpres|hace-3S&PRES=do vpres|falta-3S&PRES=be_lacking n|luz=light  co|no=no ?	\N	594957	597157	2200	
401	sastre5_m	LIL	ok .	?|ok .	\N	597488	598562	1074	
402	sastre5_m	NAT	Lily@s:eng&spa ya yo no puedo seguirte .	L2|Lily adv|ya=already pro:per|yo=I adv|no=no vpres|pode-1S&PRES=can vinf|segui-INF~pro:clit|2S  .	\N	597529	599143	1614	
403	sastre5_m	LIL	yo sé mami .	pro:per|yo=I vpres|sabe-1S&PRES=know n|mami=mommy .	\N	599148	600605	1457	
404	sastre5_m	OSE	+< www .	unk|www .	\N	599673	600619	946	
405	sastre5_m	LIL	se enciende la luz con ese +. . .	pro:refl|se=itself vpres|encende-3S&PRES=light det:art|el=the n|luz=light  prep|con=with det:dem|ese=that +. . .	\N	601934	603937	2003	
406	sastre5_m	OSE	www .	unk|www .	\N	604129	606277	2148	
407	sastre5_m	LIL	&=laugh .	\N	\N	606278	607949	1671	
408	sastre5_m	NAT	+< &=laugh .	\N	\N	606574	608245	1671	
554	sastre5_m	LIL	que +. . .	rel|que=that +. . .	\N	903955	904547	592	
409	sastre5_m	LIL	después puede encenderlo con el la palanquita [//] esta .	adv|después=after vpres|pode-3S&PRES=can vinf|encende-INF~pro:clit|OBJ&MASC  prep|con=with det:art|el=the det:art|el=the det:dem|este=this .	\N	608788	611766	2978	
410	sastre5_m	OSE	www .	unk|www .	\N	611540	612660	1120	
411	sastre5_m	LIL	y pueden abrir los [/] los xxx .	adv|ya=already vpres|pode&PRES=can vinf|abri=open det:art|el-PL=the unk|xxx  .	\N	612667	618269	5602	
412	sastre5_m	OSE	www .	unk|www .	\N	617120	618373	1253	
413	sastre5_m	LIL	eso mismo me entiendes .	pro:dem|eso=that_one adj|mismo=same pro:per|me=me vpres|entende&PRES=understand  .	\N	618331	620508	2177	
414	sastre5_m	NAT	oye Lily@s:eng&spa .	co|oye=listen L2|Lily .	\N	620531	621629	1098	
415	sastre5_m	LIL	what's wrong my &puchuchurro ?	pro:wh|what~v:cop|be&3S adj|wrong co|my ?	\N	621679	623827	2148	eng
416	sastre5_m	LIL	what are all these people doing in our home right ?	pro:wh|what aux|be&PRES qn|all det|these n|person&PL part|do-PROG prep|in  pro:poss:det|our n|+n|home+n|^n|home adv|right ?	\N	623914	626265	2351	eng
417	sastre5_m	LIL	mira qué@s:eng quiet@s:eng .	co|mira=look L2|qué L2|quiet .	\N	626263	627290	1027	
418	sastre5_m	LIL	I know .	pro|I v|know .	\N	627296	628138	842	eng
419	sastre5_m	LIL	I know .	pro|I v|know .	\N	628138	629241	1103	eng
420	sastre5_m	LIL	mira qué quiet@s:eng .	co|mira=look pro:int|qué=what L2|quiet .	\N	629293	630738	1445	
421	sastre5_m	LIL	we don't like all these people in our home I know .	pro|we aux|do~neg|not v|like qn|all det|these n|person&PL prep|in pro:poss:det|our  n|+n|home+n|^n|home pro|I v|know .	\N	630720	633669	2949	eng
422	sastre5_m	LIL	you're a good boy .	pro|you~aux|be&PRES det|a adj|good n|boy .	\N	633651	635259	1608	eng
423	sastre5_m	LIL	&=gasp mama didn't give you a treat after you &chuchu in the neighbor's grass .	n|mama aux|do&PAST~neg|not v|give pro|you det|a n|treat prep|after pro|you  prep|in det|the n|neighbor~poss|s n|grass .	\N	635312	640055	4743	eng
424	sastre5_m	LIL	that's why you're next to mama &pucha you wanna treat ?	pro:dem|that~v:cop|be&3S adv:wh|why pro|you~v:cop|be&PRES adj|next prep|to  n|mama pro|you v|want~inf|to n|treat ?	\N	640554	643956	3402	eng
425	sastre5_m	LIL	you want a treat baby boy &=kiss ?	pro|you v|want det|a n|treat n|baby n|boy ?	\N	643950	646713	2763	eng
426	sastre5_m	LIL	&=gasp he's a good boy .	pro|he~v:cop|be&3S det|a adj|good n|boy .	\N	646628	648190	1562	eng
427	sastre5_m	LIL	come here .	v|come adv:loc|here .	\N	648156	649653	1497	eng
428	sastre5_m	LIL	hey &pucho .	co|hey .	\N	650830	652810	1980	eng
429	sastre5_m	LIL	wanna treat you're good boy .	v|want~inf|to n|treat pro|you~aux|be&PRES adj|good n|boy .	\N	652792	654412	1620	eng
430	sastre5_m	LIL	come here come here .	v|come adv:loc|here v|come adv:loc|here .	\N	654435	656409	1974	eng
431	sastre5_m	LIL	good boy .	adj|good n|boy .	\N	656772	657962	1190	eng
432	sastre5_m	OSE	www .	unk|www .	\N	657962	661056	3094	
433	sastre5_m	NAT	Lily@s:eng&spa es mañana cuando tú vas al médico ?	L2|Lily vpres|se-3S&PRES=be adv|mañana=tomorrow conj|cuando=when pro:per|tú=you  vpres|i&PRES=go prep|a~det|el&MASC n|médico=physician ?	\N	661052	663171	2119	
434	sastre5_m	LIL	la cita es a las tres .	det:art|el=the n|cita=appointment vpres|se-3S&PRES=be prep|a=to det:art|el-PL=the  num|tres=three .	\N	663208	664503	1295	
435	sastre5_m	NAT	a las tres ?	prep|a=to det:art|el-PL=the num|tres=three ?	\N	664514	665902	1388	
436	sastre5_m	LIL	sí pero mami yo iré sola .	co|sí=yes conj|pero=but n|mami=mommy pro:per|yo=I vfut|i-1S=go adj|solo=alone  .	\N	665915	667993	2078	
437	sastre5_m	NAT	no quieres que te acompañe entonces ?	adv|no=no vpres|quere&PRES=want rel|que=that pro:per|te=you vsub|acompaña-13S&PRES=accompany  adv|entonces=then ?	\N	668170	669830	1660	
438	sastre5_m	LIL	+< no no me hace falta que me acompañes .	adv|no=no adv|no=no pro:per|me=me vpres|hace-3S&PRES=do vimp|falta=be_lacking  rel|que=that pro:per|me=me vsub|acompaña&PRES=accompany .	\N	669343	671154	1811	
439	sastre5_m	NAT	ah@s:eng&spa entonces no vengo mañana .	L2|ah adv|entonces=then adv|no=no vpres|veni-1S&PRES=come adv|mañana=tomorrow  .	\N	671367	672836	1469	
440	sastre5_m	LIL	no no puedes venir .	adv|no=no adv|no=no vpres|pode&PRES=can vinf|veni=come .	\N	672673	673695	1022	
441	sastre5_m	LIL	pero no me hace falta que me acompañes .	conj|pero=but adv|no=no pro:per|me=me vpres|hace-3S&PRES=do vimp|falta=be_lacking  rel|que=that pro:per|me=me vsub|acompaña&PRES=accompany .	\N	673683	675117	1434	
442	sastre5_m	NAT	+< ah@s:eng&spa .	L2|ah .	\N	674711	675222	511	
443	sastre5_m	NAT	vengo .	vpres|veni-1S&PRES=come .	\N	675210	675500	290	
444	sastre5_m	NAT	pero no te acompaño .	conj|pero=but adv|no=no pro:per|te=you vpres|acompaña-1S&PRES=accompany  .	\N	675477	676731	1254	
445	sastre5_m	LIL	si quieres me acompañan .	conj|si=if vpres|quere&PRES=want pro:per|me=me vpres|acompaña&PRES=accompany  .	\N	676597	679227	2630	
446	sastre5_m	LIL	pero no hace falta .	conj|pero=but adv|no=no vpres|hace-3S&PRES=do vimp|falta=be_lacking .	\N	679205	681968	2763	
447	sastre5_m	NAT	bueno yo no sé con papi porque papi mañana tiene que ir a lo del seguro .	co|bueno=good pro:per|yo=I adv|no=no vpres|sabe-1S&PRES=know prep|con=with  n|papi=daddy conj|porque=because n|papi=daddy adv|mañana=tomorrow vpres|tene-3S&PRES=have  rel|que=that vinf|i=go prep|a=to pro:per:1|lo=him prep|de~det|el&MASC co|seguro=sure  .	\N	682180	685170	2990	
448	sastre5_m	NAT	no sé a qué hora va a venir .	adv|no=no vpres|sabe-1S&PRES=know prep|a=to pro:int|qué=what n|hora=hour  vpres|i-3S&PRES=go prep|a=to vinf|veni=come .	\N	685135	686522	1387	
449	sastre5_m	NAT	si va a venir a tiempo para que tú te vayas .	conj|si=if vpres|i-3S&PRES=go prep|a=to vinf|veni=come prep|a=to n|tiempo=season  prep|para=for rel|que=that pro:per|tú=you pro:per|te=you vsub|i&PRES=go  .	\N	686577	688667	2090	
450	sastre5_m	NAT	así que eso sí no sé .	adv|así=thus rel|que=that pro:dem|eso=that_one co|sí=yes adv|no=no vpres|sabe-1S&PRES=know  .	\N	688655	689978	1323	
451	sastre5_m	LIL	por eso digo no quiero que te pongas con estress .	prep|por=for pro:dem|eso=that_one vpres|deci-1S&PRES=say co|no=no vpres|quere-1S&PRES=want  rel|que=that pro:per|te=you vsub|pone&PRES=put prep|con=with ?|estress  .	\N	689872	692432	2560	
452	sastre5_m	NAT	+< a qué hora es tu consulta mañana ?	prep|a=to pro:int|qué=what n|hora=hour vpres|se-3S&PRES=be det:pos|tu=your  ?|consulta adv|mañana=tomorrow ?	\N	691196	692723	1527	
657	sastre5_m	OSE	www .	unk|www .	\N	1061346	1062193	847	
453	sastre5_m	LIL	te dijo que [/] que a las tres .	pro:per|te=you vpret|deci-3S=say rel|que=that prep|a=to det:art|el-PL=the  num|tres=three .	\N	692892	694807	1915	
454	sastre5_m	NAT	+< tres .	num|tres=three .	\N	694358	694869	511	
455	sastre5_m	LIL	es el ultrasonido es <a las> [/] a las tres .	vpres|se-3S&PRES=be det:art|el=the ?|ultrasonido vpres|se-3S&PRES=be prep|a=to  det:art|el-PL=the num|tres=three .	\N	694784	697152	2368	
456	sastre5_m	LIL	y después tengo las [/] el médico me va a ver .	adv|ya=already adv|después=after vpres|tene-1S&PRES=have det:art|el=the  n|médico=physician pro:per|me=me vpres|i-3S&PRES=go prep|a=to vinf|ve=see  .	\N	697141	699823	2682	
457	sastre5_m	LIL	y me va a tocar .	adv|ya=already pro:per|me=me vpres|i-3S&PRES=go prep|a=to vinf|toca=touch  .	\N	699784	700661	877	
458	sastre5_m	LIL	y me va a ver si estoy dilatada o no .	adv|ya=already pro:per|me=me vpres|i-3S&PRES=go prep|a=to vinf|ve=see  conj|si=if vpres|esta-1S&PRES=be ?|dilatada conj|o=or adv|no=no .	\N	700701	702820	2119	
459	sastre5_m	NAT	después de hoy yo creo que sí &=laugh .	adv|después=after prep|de=of adv|hoy=today pro:per|yo=I vpres|cree-1S&PRES=believe  rel|que=that co|sí=yes .	\N	702939	705446	2507	
460	sastre5_m	LIL	no sí me dio un dolorcito aquí abajo .	co|no=no co|sí=yes pro:per|me=me vpret|da-3S=give pro:dem|un=one n|dolor=pain  adv|aquí=here adv|abajo=below .	\N	705121	707757	2636	
461	sastre5_m	LIL	xxx beautiful .	unk|xxx ?|beautiful .	\N	709287	711968	2681	
462	sastre5_m	LIL	I love my dog .	pro|I v|love pro:poss:det|my n|dog .	\N	711992	713228	1236	eng
463	sastre5_m	LIL	&puchuchurru .	\N	\N	714089	714960	871	
464	sastre5_m	NAT	estaba tranquilita ahí ya .	vpas|esta-13S=be adj|tranquilo=calm adv|ahí=there adv|ya=already .	\N	714662	716630	1968	
465	sastre5_m	LIL	you're beautiful boy .	pro|you~v:cop|be&PRES adj|beautiful n|boy .	\N	716589	717727	1138	eng
466	sastre5_m	LIL	mama@s:eng loves@s:eng you@s:eng Pucho@s:eng&spa .	L2|mama L2|loves L2|you L2|Pucho .	\N	717703	719114	1411	
467	sastre5_m	LIL	sí mami ya voy a +// .	adv|sí=yes n|mami=mommy adv|ya=already vpres|i-1S&PRES=go prep|a=to +//  .	\N	720088	721144	1056	
468	sastre5_m	LIL	Lorena@s:eng&spa en la graduación podemos tener una mujer dando a luz [=! laugh] .	L2|Lorena prep|en=in det:art|el=the ?|graduación vpres|pode&PRES=can  vinf|tene=have det:art|un=one co:voc|mujer=woman vger|da-PROG=give prep|a=to  n|luz=light .	\N	721006	724373	3367	
469	sastre5_m	OSE	www .	unk|www .	\N	724206	725378	1172	
470	sastre5_m	LIL	no xxx .	adv|no=no unk|xxx .	\N	724699	725564	865	
471	sastre5_m	NAT	+< dando a luz porque al paso que va termina ahorita [=! laugh] .	vger|da-PROG=give prep|a=to n|luz=light conj|porque=because prep|a~det|el&MASC  n|paso=step prep|que=than co|va=go vpres|termina-3S&PRES=end adv|ahora=now  .	\N	725145	728610	3465	
472	sastre5_m	LIL	xxx .	unk|xxx .	\N	728332	730033	1701	
473	sastre5_m	OSE	www .	unk|www .	\N	730646	735134	4488	
474	sastre5_m	LIL	oh right you're walking now um in december .	co|oh co|right pro|you~aux|be&PRES part|walk-PROG adv|now ?|um prep|in  ?|december .	\N	735139	738062	2923	eng
475	sastre5_m	OSE	+< www .	unk|www .	\N	736947	738125	1178	
476	sastre5_m	OSE	www .	unk|www .	\N	738095	750767	12672	
477	sastre5_m	LIL	+< uhuh .	co|uhuh .	\N	750511	750842	331	
478	sastre5_m	OSE	www .	unk|www .	\N	750834	767429	16595	
479	sastre5_m	LIL	+< uhuh .	co|uhuh .	\N	767203	767888	685	
480	sastre5_m	OSE	www .	unk|www .	\N	767875	775060	7185	
481	sastre5_m	LIL	+< how frustrating .	adv:wh|how part|frustrate-PROG .	\N	775374	776610	1236	eng
482	sastre5_m	OSE	www .	unk|www .	\N	776223	782229	6006	
483	sastre5_m	LIL	+< right .	?|right .	\N	782274	782588	314	
484	sastre5_m	LIL	porque &li it@s:eng just@s:eng &caim ya .	conj|porque=because L2|it L2|just adv|ya=already .	\N	782721	784521	1800	
485	sastre5_m	OSE	www .	unk|www .	\N	781763	786878	5115	
486	sastre5_m	OSE	www .	unk|www .	\N	0	0	0	
487	sastre5_m	OSE	www .	unk|www .	\N	0	0	0	
488	sastre5_m	LIL	+< oh my gosh .	co|oh co|my co|gosh .	\N	809760	810816	1056	eng
489	sastre5_m	OSE	www .	unk|www .	\N	0	0	0	
490	sastre5_m	LIL	+< right .	adv|right .	\N	811925	812424	499	eng
491	sastre5_m	OSE	www .	unk|www .	\N	812842	816499	3657	
492	sastre5_m	LIL	+< yeah yeah .	co|yeah co|yeah .	\N	816517	817852	1335	eng
493	sastre5_m	OSE	www .	unk|www .	\N	817604	823258	5654	
494	sastre5_m	LIL	+< right .	adv|right .	\N	823234	823907	673	eng
495	sastre5_m	OSE	www .	unk|www .	\N	823836	825583	1747	
496	sastre5_m	LIL	exactly and [/] and you [/] you probably already put it in your calendar .	adv:adj|exact-LY conj:coo|and pro|you adv:adj|probable-LY adv|already  v|put&ZERO pro|it prep|in pro:poss:det|your n|calendar .	\N	825523	827926	2403	eng
497	sastre5_m	OSE	www .	unk|www .	\N	827944	828588	644	
498	sastre5_m	LIL	+< &=laugh .	\N	\N	828544	831777	3233	
499	sastre5_m	OSE	www .	unk|www .	\N	829163	830086	923	
500	sastre5_m	NAT	Lily@s:eng&spa esta es soda@s:eng&spa bread@s:eng ?	L2|Lily det:dem|este=this vpres|se-3S&PRES=be L2|soda L2|bread ?	\N	831597	832996	1399	
501	sastre5_m	LIL	riquísimo que está .	adj|rico-SUPER=rich rel|que=that vpres|esta-3S&PRES=be .	\N	833124	834465	1341	
502	sastre5_m	NAT	soda@s:eng&spa bread@s:eng ?	L2|soda L2|bread ?	\N	834466	835238	772	
503	sastre5_m	NAT	quién te lo dio ?	pro:int|quién=who pro:per|te=you pro:per:1|lo=him vpret|da-3S=give ?	\N	835284	836271	987	
504	sastre5_m	LIL	no lo compré en un Dixie@s:eng&spa .	adv|no=no pro:per:1|lo=him vpret|compra-1S=buy prep|en=in pro:dem|un=one  L2|Dixie .	\N	836207	837536	1329	
505	sastre5_m	NAT	&=gasp .	\N	\N	837229	838436	1207	
506	sastre5_m	LIL	por Saint@s:eng&spa Patrick@s:eng&spa da(y) .	prep|por=for L2|Saint L2|Patrick ?|day .	\N	838018	839255	1237	
507	sastre5_m	NAT	en San@s:eng&spa (.) yo no lo creo .	prep|en=in L2|San pro:per|yo=I adv|no=no pro:per:1|lo=him vpres|cree-1S&PRES=believe  .	\N	838986	841314	2328	
508	sastre5_m	NAT	por qué tú no me lo dijiste para yo buscarlo ?	prep|por=for pro:int|qué=what pro:per|tú=you adv|no=no pro:per|me=me  pro:per:1|lo=him vpret|deci=say prep|para=for pro:per|yo=I vinf|busca-INF~pro:clit|OBJ&MASC  ?	\N	841297	843439	2142	
896	sastre5_m	OSE	www .	unk|www .	\N	1516320	1518241	1921	
509	sastre5_m	LIL	ah@s:eng&spa pues mami no pensé .	L2|ah co|pues=well n|mami=mommy adv|no=no vpret|pensa-1S=think .	\N	843363	845372	2009	
510	sastre5_m	NAT	+< a mi me encanta este pan .	prep|a=to det:pos|mi=my pro:per|me=me vpres|encanta-3S&PRES=enchant det:dem|este=this  n|pan=bread .	\N	844339	846029	1690	
511	sastre5_m	LIL	+< pensé tanto en sister Mary@s:eng&spa .	vpret|pensa-1S=think adj|tanto=so_much prep|en=in ?|sister L2|Mary .	\N	845806	847309	1503	
512	sastre5_m	NAT	I know .	pro|I v|know .	\N	847112	848337	1225	eng
513	sastre5_m	NAT	fíjate que el en seguida lo &en &lo conocí .	?|fíjate rel|que=that det:art|el=the prep|en=in vpart|segui=follow pro:per:1|lo=him  vpret|conoce-1S=know .	\N	848304	850545	2241	
514	sastre5_m	LIL	+< si quieres +// .	conj|si=if vpres|quere&PRES=want +// .	\N	848513	849111	598	
515	sastre5_m	LIL	+< si quieres un pedacito con [/] con mantequilla .	conj|si=if vpres|quere&PRES=want pro:dem|un=one n|pedazo=piece prep|con=with  n|manteca=lard .	\N	850118	852672	2554	
516	sastre5_m	NAT	un pedacito .	pro:dem|un=one n|pedazo=piece .	\N	851319	852666	1347	
517	sastre5_m	NAT	y también un pedazo .	adv|ya=already adv|también=also pro:dem|un=one n|pedazo=piece .	\N	852717	853826	1109	
518	sastre5_m	LIL	yo cómetelo cómetelo .	pro:per|yo=I ?|cómetelo ?|cómetelo .	\N	852891	854180	1289	
519	sastre5_m	NAT	y también un pedazo .	adv|ya=already adv|también=also pro:dem|un=one n|pedazo=piece .	\N	853826	855126	1300	
520	sastre5_m	LIL	llévatelo llévatelo .	?|llévatelo ?|llévatelo .	\N	854515	855920	1405	
521	sastre5_m	NAT	no no si es muy grande para mí ahora .	adv|no=no adv|no=no conj|si=if vpres|se-3S&PRES=be adv|muy=very adj|grande=big  prep|para=for pro:per|mí=me adv|ahora=now .	\N	855218	856884	1666	
522	sastre5_m	NAT	pero a mí me en(canta) .	conj|pero=but prep|a=to pro:per|mí=me pro:per|me=me vpres|encanta-3S&PRES=enchant  .	\N	857059	857930	871	
523	sastre5_m	NAT	tan pronto lo vi digo +"/ .	adv|tan=such adv|pronto=soon pro:per:1|lo=him vpret|ve-1S=see vpres|deci-1S&PRES=say  +"/ .	\N	857883	858940	1057	
524	sastre5_m	NAT	+" oy esto es soda@s:eng&spa bread@s:eng .	co|oy pro:dem|esto=this_one vpres|se-3S&PRES=be L2|soda L2|bread .	\N	858916	859944	1028	
525	sastre5_m	LIL	es soda@s:eng&spa bread@s:eng xxx esto también .	vpres|se-3S&PRES=be L2|soda L2|bread unk|xxx pro:dem|esto=this_one adv|también=also  .	\N	860130	861889	1759	
526	sastre5_m	NAT	+< esto es un pan especial irlandés .	pro:dem|esto=this_one vpres|se-3S&PRES=be pro:dem|un=one n|pan=bread adj|especial=special  ?|irlandés .	\N	861059	863090	2031	
527	sastre5_m	NAT	que la que era jefa mía una monja era [/] es &em ay irish@s:eng .	rel|que=that det:art|el=the rel|que=that vpas|se-13S=be n|jefa=boss_lady  pro:pos|mío=my vimp|uni-3S=unite n|monja=nun vpres|se-3S&PRES=be co|ay=ay  L2|irish .	\N	864237	871627	7390	
528	sastre5_m	LIL	irish .	adj|irish .	\N	871645	871976	331	eng
529	sastre5_m	NAT	&i irlandesa .	?|irlandesa .	\N	871593	872777	1184	
530	sastre5_m	NAT	+< y siempre ella me hacía esto .	adv|ya=already adv|siempre=always pro:per|ello=he pro:per|me=me vpas|hace-13S=do  pro:dem|esto=this_one .	\N	873255	874718	1463	
531	sastre5_m	NAT	y me lo regalaba .	adv|ya=already pro:per|me=me pro:per:1|lo=him vpas|regala-13S=give_present  .	\N	874590	875513	923	
532	sastre5_m	OSE	www .	unk|www .	\N	874590	875513	923	
533	sastre5_m	NAT	y es tan por lo menos a nosotros nos encanta .	adv|ya=already vpres|se-3S&PRES=be adv|tan=such prep|por=for pro:per:1|lo=him  adv|menos=less prep|a=to pro:per|nosotro-PL=we pro:per|nos=us vpres|encanta-3S&PRES=enchant  .	\N	875447	878030	2583	
534	sastre5_m	OSE	www .	unk|www .	\N	877113	878541	1428	
535	sastre5_m	NAT	pero que después de que vine de Nueva_York@s:eng&spa (.) ya no lo como más .	conj|pero=but rel|que=that adv|después=after prep|de=of rel|que=that  vpret|veni-1S=come prep|de=of L2|Nueva_York adv|ya=already adv|no=no pro:per:1|lo=him  adv|como=like adv|más=more .	\N	878428	881917	3489	
536	sastre5_m	NAT	pero es &ri para nosotros nos gusta mucho .	conj|pero=but vpres|se-3S&PRES=be prep|para=for pro:per|nosotro-PL=we  pro:per|nos=us vpres|gusta-3S&PRES=like adv|mucho=much .	\N	881894	883873	1979	
537	sastre5_m	NAT	me imagino que no +/ .	pro:per|me=me vpres|imagina-1S&PRES=imagine rel|que=that adv|no=no +/  .	\N	883914	884988	1074	
538	sastre5_m	LIL	+< mami y la llamaste para Saint_Patrick's@s:eng&spa+eng day@s:eng ?	n|mami=mommy conj|y=and det:art|el=the vpret|llama=call vsub|pari-13S&PRES=give_birth  L2|Saint_Patrick's L2|day ?	\N	884157	885847	1690	
539	sastre5_m	NAT	sí pero no pude hablar con ella .	co|sí=yes conj|pero=but adv|no=no vpret|pode-1S=can vinf|habla=speak  prep|con=with pro:per|ello=he .	\N	885829	886895	1066	
540	sastre5_m	NAT	no estaba .	adv|no=no vpas|esta-13S=be .	\N	886849	887470	621	
541	sastre5_m	LIL	ah@s:eng&spa bueno pero la llamaste .	L2|ah co|bueno=good conj|pero=but det:art|el=the vpret|llama=call .	\N	887313	888700	1387	
542	sastre5_m	NAT	pero le dejé +// .	conj|pero=but pro:per|le=him vpret|deja-1S=leave +// .	\N	888094	888721	627	
543	sastre5_m	NAT	sí tempranito por la mañana .	adv|sí=yes adj|temprano=early prep|por=for det:art|el=the adv|mañana=tomorrow  .	\N	888698	890550	1852	
544	sastre5_m	NAT	fue temprani(to) fue el mismo día que no el día después (.) que hubo una grúa que se cayó en un edificio de [/] de Nueva_York .	vpret|i-3S=go adj|temprano=early vpret|i-3S=go det:art|el=the adj|mismo=same  n|día=day rel|que=that adv|no=no det:art|el=the n|día=day adv|después=after  prep|que=than vpret|habe-3S=have vimp|uni-3S=unite n|grúa=derrick rel|que=that  pro:refl|se=itself vpret|cae-3S=fall prep|en=in pro:dem|un=one n|edificio=building  prep|de=of n:prop|Nueva_York .	\N	890568	897918	7350	
545	sastre5_m	LIL	+< sí .	co|sí=yes .	\N	896444	897692	1248	
546	sastre5_m	OSE	www .	unk|www .	\N	896444	897692	1248	
547	sastre5_m	LIL	sí sí sí .	co|sí=yes co|sí=yes co|sí=yes .	\N	897995	899336	1341	
548	sastre5_m	NAT	ajá .	co|ajá .	\N	898593	898970	377	
549	sastre5_m	NAT	sí .	co|sí=yes .	\N	899278	899626	348	
550	sastre5_m	NAT	pero la llamé xxx al día siguiente .	conj|pero=but det:art|el=the vpret|llama-1S=call unk|xxx prep|a~det|el&MASC  n|día=day adj|siguiente=successive .	\N	899579	901106	1527	
551	sastre5_m	OSE	+< www .	unk|www .	\N	900445	900985	540	
552	sastre5_m	NAT	no no mi amor que estoy haciendo el café mi cielo .	adv|no=no adv|no=no det:pos|mi=my n|amor=love prep|que=than vpres|esta-1S&PRES=be  vger|hace-PROG=do det:art|el=the n|café=coffee det:pos|mi=my n|cielo=sky  .	\N	901018	902916	1898	
555	sastre5_m	NAT	+< tú quieres café por fin verdad mi cielo ?	pro:per|tú=you vpres|quere&PRES=want n|café=coffee prep|por=for n|fin=end  co|verdad=right det:pos|mi=my co:voc|cielo=angel ?	\N	903961	905615	1654	
556	sastre5_m	LIL	sí .	co|sí=yes .	\N	905313	905795	482	
557	sastre5_m	OSE	www .	unk|www .	\N	0	0	0	
558	sastre5_m	NAT	xxx tú y tu papá quieren café verdad ?	unk|xxx pro:per|tú=you adv|ya=already det:pos|tu=your n|papá=papa vpres|quere&PRES=want  n|café=coffee co|verdad=right ?	\N	907295	910633	3338	
559	sastre5_m	OSE	+< www .	unk|www .	\N	909292	910900	1608	
560	sastre5_m	LIL	yeah@s:eng&spa .	L2|yeah .	\N	910627	911445	818	
561	sastre5_m	LIL	<we did> [/] we [/] we [/] when we redid the cabinets .	conj:sub|when pro|we re#v|do&PAST det|the n|cabinet-PL .	\N	912589	916419	3830	eng
562	sastre5_m	LIL	I asked for this built and that built .	pro|I v|ask-PAST prep|for pro:dem|this v|build&PAST conj:coo|and rel|that  v|build&PAST .	\N	916701	918693	1992	eng
563	sastre5_m	LIL	I mean I wanted all the way up .	pro|I v|mean pro|I v|want-PAST qn|all det|the n|way adv:loc|up .	\N	918623	919976	1353	eng
564	sastre5_m	LIL	which was a mistake .	rel|which v:cop|be&PAST&13S det|a n|mistake .	\N	920161	921316	1155	eng
565	sastre5_m	LIL	(be)cause look what happen .	conj:sub|because v|look pro:wh|what v|happen .	\N	921287	922065	778	eng
566	sastre5_m	LIL	the guy didn't measure correctly .	det|the n|guy aux|do&PAST~neg|not v|measure adv:adj|correct-LY .	\N	922036	923412	1376	eng
567	sastre5_m	LIL	now we can't change the lightbulb .	adv|now pro|we aux|can~neg|not v|change det|the n|lightbulb .	\N	923492	924583	1091	eng
568	sastre5_m	LIL	I have to move that to the centre close that up .	pro|I v|have inf|to v|move det|that prep|to det|the n|centre adj|close  rel|that adv:loc|up .	\N	924508	927317	2809	eng
569	sastre5_m	LIL	and also the ceiling is not um levelled .	conj:coo|and adv|also det|the n|ceiling aux|be&3S neg|not ?|um v|level-PAST  .	\N	927635	931234	3599	eng
570	sastre5_m	LIL	so I have a big gap there .	conj:sub|so pro|I v|have det|a adj|big n|gap adv:loc|there .	\N	931107	933434	2327	eng
571	sastre5_m	OSE	www .	unk|www .	\N	932738	933928	1190	
572	sastre5_m	LIL	it was a mess .	pro|it v:cop|be&PAST&13S det|a n|mess .	\N	933911	936082	2171	eng
573	sastre5_m	LIL	never get cabinets up to the ceiling .	adv|never v|get n|cabinet-PL adv:loc|up prep|to det|the n|ceiling .	\N	935985	938625	2640	eng
574	sastre5_m	OSE	www .	unk|www .	\N	938657	940033	1376	
575	sastre5_m	LIL	cabinets xxx roof (be)cause it's never levelled .	n|cabinet-PL unk|xxx n|roof conj:sub|because pro|it~v:cop|be&3S adv|never  v|level-PAST .	\N	940119	942220	2101	eng
576	sastre5_m	LIL	that's why I have this really cheap popcorn .	pro:dem|that~v:cop|be&3S adv:wh|why pro|I v|have det|this adv:adj|real-LY  adj|cheap n|+n|pop+n|corn^n|popcorn .	\N	942216	944391	2175	eng
577	sastre5_m	OSE	+< www .	unk|www .	\N	0	0	0	
578	sastre5_m	LIL	so I have to get &a an electrician to remove the light .	conj:sub|so pro|I v|have inf|to v|get det|a n|electrician inf|to v|remove  det|the n|light .	\N	946452	949289	2837	eng
579	sastre5_m	LIL	and seal that one .	conj:coo|and v|seal det|that pro:indef|one .	\N	949289	950218	929	eng
580	sastre5_m	LIL	and put popcorn .	conj:coo|and v|put&ZERO n|+n|pop+n|corn^n|popcorn .	\N	950206	951170	964	eng
581	sastre5_m	LIL	and I'm not gonna take out the popcorn xxx .	conj:coo|and pro|I~v:cop|be&1S neg|not adj:part|go-PROG~inf|to v|take  adv:loc|out det|the n|+n|pop+n|corn^n|popcorn unk|xxx .	\N	950978	952906	1928	eng
582	sastre5_m	OSE	+< www .	unk|www .	\N	952359	953020	661	
583	sastre5_m	NAT	yo acabo de hacer los gabinetes de mi casa .	pro:per|yo=I vpres|acaba-1S&PRES=finish prep|de=of vinf|hace=do det:art|el-PL=the  ?|gabinetes prep|de=of det:pos|mi=my n|casa=house .	\N	952965	955189	2224	
584	sastre5_m	NAT	y me dice el carpintero .	adv|ya=already pro:per|me=me vpres|deci-3S&PRES=say det:art|el=the n|carpintero=carpenter  .	\N	955148	957354	2206	
585	sastre5_m	NAT	me dice +/ .	pro:per|me=me vpres|deci-3S&PRES=say +/ .	\N	957365	957894	529	
586	sastre5_m	NAT	+" yo tengo muchos problemas para instalarlos porque cómo las medidas exactas .	pro:per|yo=I vpres|tene-1S&PRES=have det:indef|mucho-PL=many n|problema-PL=problem  prep|para=for vinf|instala-INF~pro:clit|OBJ&MASC&PL conj|porque=because  adv:int|cómo=how det:art|el-PL=the vpart|medi-PL=measure adj|exacto-PL=exact  .	\N	957788	961811	4023	
587	sastre5_m	NAT	pero no hay paredes iguales .	conj|pero=but adv|no=no vpres|habe-3S&PRES=have n|pared-PL=wall adj|igual-PL=equal  .	\N	961757	963156	1399	
588	sastre5_m	NAT	no hay pisos +. . .	adv|no=no vpres|habe-3S&PRES=have n|piso-PL=floor +. . .	\N	963133	964369	1236	
589	sastre5_m	NAT	entonces todo me queda xxx después que ya yo lo hice todo por medida .	adv|entonces=then det:indef|todo=all pro:per|me=me vpres|queda-3S&PRES=stay  unk|xxx adv|después=after rel|que=that adv|ya=already pro:per|yo=I pro:per:1|lo=him  vpret|hace-1S=do det:indef|todo=all prep|por=for vpart|medi=measure .	\N	0	0	0	
590	sastre5_m	NAT	y es culpa del techo o de la pared o del piso .	adv|ya=already vpres|se-3S&PRES=be vpres|culpa-3S&PRES=blame prep|de~det|el&MASC  n|techo=roof conj|o=or prep|de=of det:art|el=the n|pared=wall n:let|o prep|de~det|el&MASC  vpres|pisa-1S&PRES=press .	\N	968275	970492	2217	
591	sastre5_m	OSE	www .	unk|www .	\N	970248	971090	842	
592	sastre5_m	NAT	sí .	co|sí=yes .	\N	970747	971891	1144	
593	sastre5_m	NAT	y aquí mira ve .	adv|ya=already adv|aquí=here co|mira=look vpres|ve-3S&PRES=see .	\N	971922	972828	906	
594	sastre5_m	OSE	+< www .	unk|www .	\N	971922	972828	906	
595	sastre5_m	NAT	que aquí no se le quedó allá arriba .	rel|que=that adv|aquí=here adv|no=no pro:refl|se=itself pro:per|le=him  vpret|queda-3S=stay adv|allá=there adv|arriba=above .	\N	972816	974616	1800	
596	sastre5_m	OSE	www .	unk|www .	\N	974372	975097	725	
597	sastre5_m	NAT	allí quedó un pedazo .	adv|allí=there vpret|queda-3S=stay pro:dem|un=one n|pedazo=piece .	\N	974976	976613	1637	
598	sastre5_m	OSE	www .	unk|www .	\N	976452	978049	1597	
599	sastre5_m	LIL	a sí ?	prep|a=to co|sí=yes ?	\N	978060	979390	1330	
600	sastre5_m	OSE	www .	unk|www .	\N	978809	985010	6201	
601	sastre5_m	LIL	levelled@s:eng (.) ajá .	L2|levelled co|ajá .	\N	984929	985962	1033	
602	sastre5_m	OSE	www .	unk|www .	\N	985817	991472	5655	
897	sastre5_m	LIL	he's right .	pro|he~v:cop|be&3S adj|right .	\N	1518235	1518932	697	eng
603	sastre5_m	NAT	+< non pesa mucho verdad &=laugh .	?|non vpres|pesa-3S&PRES=weigh adv|mucho=much co|verdad=right .	\N	986984	990461	3477	
604	sastre5_m	LIL	it's annoying .	pro|it~aux|be&3S part|annoy-PROG .	\N	991461	992262	801	eng
605	sastre5_m	OSE	www .	unk|www .	\N	991472	993045	1573	
606	sastre5_m	LIL	it's annoying it's so annoying .	pro|it~aux|be&3S part|annoy-PROG pro|it~v:cop|be&3S adv:int|so part|annoy-PROG  .	\N	992877	994793	1916	eng
607	sastre5_m	NAT	&=laugh .	\N	\N	993098	993992	894	
608	sastre5_m	LIL	xxx .	unk|xxx .	\N	994861	997003	2142	
609	sastre5_m	NAT	yo como pude le [/] le saqué un poquito las cosas hacia alante .	pro:per|yo=I adv|como=like vpret|pode-1S=can pro:per|le=him vpret|saca-1S=bring_out  pro:dem|un=one det:indef|poquito=little det:art|el-PL=the vsub|cose&PRES=sew  prep|hacia=towards ?|alante .	\N	995679	999046	3367	
610	sastre5_m	LIL	+< I think it's xxx no it happens .	pro|I v|think pro|it~v:cop|be&3S unk|xxx co|no pro|it v|happen-3S .	\N	997270	999220	1950	eng
611	sastre5_m	OSE	www .	unk|www .	\N	999180	1000573	1393	
612	sastre5_m	NAT	tu sabes le rodé un poquito la mesa .	det:pos|tu=your co|sabes=you_know pro:per|le=him vpret|roda-1S=roll pro:dem|un=one  pro:indef|poquito=little det:art|el=the n|mesa=table .	\N	1000467	1002719	2252	
613	sastre5_m	NAT	pero más de ahí no podía hacer .	conj|pero=but adv|más=more prep|de=of adv|ahí=there adv|no=no vpas|pode-13S=can  vinf|hace=do .	\N	1002685	1004844	2159	
614	sastre5_m	LIL	mami (.) yo también quiero un puchito .	n|mami=mommy pro:per|yo=I adv|también=also vpres|quere-1S&PRES=want pro:dem|un=one  ?|puchito .	\N	1004890	1007096	2206	
615	sastre5_m	NAT	no (.) de este ?	adv|no=no prep|de=of det:dem|este=this ?	\N	1006924	1008196	1272	
616	sastre5_m	LIL	me apetece .	pro:per|me=me vpres|apetece-3S&PRES=crave .	\N	1009571	1010425	854	
617	sastre5_m	NAT	bueno pero no te &pas &pa pero .	co|bueno=good conj|pero=but adv|no=no pro:per|te=you conj|pero=but .	\N	1010184	1011786	1602	
618	sastre5_m	LIL	un puchito no más y nada más .	pro:dem|un=one ?|puchito adv|no=no adv|más=more adv|ya=already vpres|nada-3S&PRES=swim  adv|más=more .	\N	1011728	1013296	1568	
619	sastre5_m	NAT	mojarte los labios .	vinf|moja-INF~pro:clit|2S det:art|el-PL=the n|labio-PL=lip .	\N	1012917	1014159	1242	
620	sastre5_m	LIL	mojarte [/] &mo mojarme los labios .	vinf|moja-INF~pro:clit|1S det:art|el-PL=the n|labio-PL=lip .	\N	1014020	1015965	1945	
621	sastre5_m	OSE	www .	unk|www .	\N	1015703	1018147	2444	
622	sastre5_m	NAT	+< <te lo voy a servir en> [/] te lo voy a servir en una cucharita .	pro:per|te=you pro:per:1|lo=him vpres|i-1S&PRES=go prep|a=to vinf|servi=serve  prep|en=in det:art|un=one n|cuchara=spoon .	\N	1015752	1018945	3193	
623	sastre5_m	LIL	no mami .	adv|no=no n|mami=mommy .	\N	1018858	1020158	1300	
624	sastre5_m	NAT	eso es un buchito@s:eng&spa &um ?	pro:dem|eso=that_one vpres|se-3S&PRES=be pro:dem|un=one L2|buchito ?	\N	1019569	1021055	1486	
625	sastre5_m	OSE	www .	unk|www .	\N	1021059	1022266	1207	
626	sastre5_m	NAT	+< ya .	adv|ya=already .	\N	1021390	1021779	389	
627	sastre5_m	OSE	www .	unk|www .	\N	1021825	1022475	650	
628	sastre5_m	NAT	este es un café muy fuerte Lily .	det:dem|este=this vpres|se-3S&PRES=be pro:dem|un=one n|café=coffee adv|muy=very  adj|fuerte=strong n:prop|Lily .	\N	1022404	1024308	1904	
629	sastre5_m	OSE	www .	unk|www .	\N	1023899	1025374	1475	
630	sastre5_m	NAT	seguro .	co|seguro=sure .	\N	1025322	1026053	731	
631	sastre5_m	LIL	ay cómo está tu esposa ?	co|ay=ay adv:int|cómo=how vpres|esta-3S&PRES=be det:pos|tu=your n|esposo=spouse  ?	\N	1026024	1028085	2061	
632	sastre5_m	OSE	www .	unk|www .	\N	1027564	1029079	1515	
633	sastre5_m	LIL	sí ?	co|sí=yes ?	\N	1029033	1029643	610	
634	sastre5_m	NAT	+< en qué mes anda ya en el cu(arto) .	prep|en=in pro:int|qué=what n|mes=month vpres|anda-3S&PRES=walk adv|ya=already  prep|en=in det:art|el=the adj|cuarto=fourth .	\N	1029045	1031111	2066	
635	sastre5_m	OSE	www .	unk|www .	\N	1031094	1031819	725	
636	sastre5_m	NAT	en el cuarto ay mi madre .	prep|en=in det:art|el=the adj|cuarto=fourth co|ay=ay det:pos|mi=my n|madre=mother  .	\N	1031794	1034499	2705	
637	sastre5_m	LIL	+< the xxx is also pregnant .	det|the unk|xxx v:cop|be&3S adv|also adj|pregnant .	\N	1032392	1033628	1236	eng
638	sastre5_m	LIL	and they have two children already .	conj:coo|and pro|they v|have det:num|two n|child&PL adv|already .	\N	1033611	1034911	1300	eng
639	sastre5_m	OSE	www .	unk|www .	\N	1034841	1036681	1840	
640	sastre5_m	LIL	qué emoción .	pro:int|qué=what n|emoción=emotion .	\N	1036693	1038533	1840	
641	sastre5_m	NAT	ya +// .	adv|ya=already +// .	\N	1036826	1037389	563	
642	sastre5_m	NAT	&=laugh .	\N	\N	1038596	1043431	4835	
643	sastre5_m	LIL	&=laugh .	\N	\N	1038596	1043431	4835	
644	sastre5_m	LIL	ya el tercero no es tan emocionante .	adv|ya=already det:art|el=the num:adj|tercero=third co|no=no vpres|se-3S&PRES=be  adv|tan=such adj|emocionante=thrilling .	\N	1043445	1045935	2490	
645	sastre5_m	OSE	+< www .	unk|www .	\N	1043445	1045935	2490	
646	sastre5_m	LIL	no qué malo [=! laugh] .	co|no=no pro:int|qué=what adj|malo=bad .	\N	1045860	1047404	1544	
647	sastre5_m	NAT	+< &=laugh la noches sin poder dormir .	det:art|el=the n|noche-PL=night prep|sin=without vinf|pode=can vinf|dormi=sleep  .	\N	1045886	1049416	3530	
648	sastre5_m	LIL	&=laugh .	\N	\N	1049275	1050297	1022	
649	sastre5_m	OSE	www .	unk|www .	\N	1050140	1052224	2084	
650	sastre5_m	LIL	&=laugh .	\N	\N	1051992	1053542	1550	
651	sastre5_m	NAT	+< &=laugh .	\N	\N	1051992	1053542	1550	
652	sastre5_m	NAT	no pero ten cuidado porque si es el varón los gustos van a hacer diferentes .	co|no=no conj|pero=but vimp|tene=have co|cuidado=careful conj|porque=because  conj|si=if vpres|se-3S&PRES=be det:art|el=the n|varón=male det:art|el-PL=the  n|gusto-PL=taste vpres|i&PRES=go prep|a=to vinf|hace=do adj|diferente-PL=different  .	\N	1053607	1057096	3489	
653	sastre5_m	NAT	entonces aprendés los nuevos gustos .	adv|entonces=then ?|aprendés det:art|el-PL=the adj|nuevo-PL=new n|gusto-PL=taste  .	\N	1057125	1058728	1603	
654	sastre5_m	OSE	+< www .	unk|www .	\N	1057189	1059790	2601	
655	sastre5_m	LIL	Peter@s:eng&spa ya tienes tres niños ?	L2|Peter adv|ya=already vpres|tene&PRES=have num|tres=three n|niño-PL=child  ?	\N	1059744	1061357	1613	
656	sastre5_m	NAT	+< Peter@s:eng&spa cuándo se va a saber ?	L2|Peter adv:int|cuándo=when pro:refl|se=itself vpres|i-3S&PRES=go prep|a=to  vinf|sabe=know ?	\N	1060771	1062077	1306	
658	sastre5_m	NAT	cuándo se va a saber ?	adv:int|cuándo=when pro:refl|se=itself vpres|i-3S&PRES=go prep|a=to vinf|sabe=know  ?	\N	1062056	1063176	1120	
659	sastre5_m	LIL	dos &=laugh .	num|dos=two .	\N	1062224	1062985	761	
660	sastre5_m	NAT	el sexo ?	det:art|el=the n|sexo=sex ?	\N	1063124	1063867	743	
661	sastre5_m	OSE	www .	unk|www .	\N	1063851	1068530	4679	
662	sastre5_m	NAT	el sonograma y ya van a saber el sexo .	det:art|el=the ?|sonograma adv|ya=already adv|ya=already vpres|i&PRES=go  prep|a=to vinf|sabe=know det:art|el=the n|sexo=sex .	\N	1068469	1071087	2618	
663	sastre5_m	OSE	www .	unk|www .	\N	1070530	1071348	818	
664	sastre5_m	LIL	qué emoción .	pro:int|qué=what n|emoción=emotion .	\N	1071197	1072289	1092	
665	sastre5_m	NAT	+< ay dios mío .	co|ay=ay n|dios=diety pro:pos|mío=my .	\N	1071377	1072532	1155	
666	sastre5_m	LIL	qué emoción .	pro:int|qué=what n|emoción=emotion .	\N	1073229	1074407	1178	
667	sastre5_m	LIL	y no quieres otra &e niña .	adv|ya=already adv|no=no vpres|quere&PRES=want det:indef|otro=other n|niño=child  .	\N	1075904	1077181	1277	
668	sastre5_m	LIL	quieres un barón .	vpres|quere&PRES=want pro:dem|un=one n|bar=bar .	\N	1077173	1078705	1532	
669	sastre5_m	LIL	&=laugh .	\N	\N	1079390	1082623	3233	
670	sastre5_m	NAT	+< no (.) Peter@s:eng&spa me dijo que si nace otra niñita el va a tratar para el cuarto que sea el barón .	adv|no=no L2|Peter pro:per|me=me vpret|deci-3S=say rel|que=that conj|si=if  vpres|nace-3S&PRES=be_born det:indef|otro=other n|niño=child det:art|el=the  vpres|i-3S&PRES=go prep|a=to vinf|trata=treat prep|para=for det:art|el=the  adj|cuarto=fourth rel|que=that vsub|se-13S&PRES=be det:art|el=the n|bar=bar  .	\N	1080146	1086485	6339	
671	sastre5_m	OSE	www .	unk|www .	\N	1086440	1087595	1155	
672	sastre5_m	NAT	&=laugh .	\N	\N	1086440	1087595	1155	
673	sastre5_m	NAT	tu viste ?	det:pos|tu=your vpres|vesti-3S&PRES=dress ?	\N	1087665	1088402	737	
674	sastre5_m	NAT	que me sonrió rápido [=! laugh] .	rel|que=that pro:per|me=me vpret|sonreí-3S=smile adj|rápido=rapid .	\N	1088373	1090254	1881	
675	sastre5_m	OSE	www .	unk|www .	\N	1089626	1090276	650	
676	sastre5_m	NAT	como diciendo +/ .	adv|como=like vger|deci-PROG=say +/ .	\N	1090270	1092760	2490	
677	sastre5_m	NAT	+" Nataly@s:eng&spa estás hablando de más &=laugh .	L2|Nataly v:aux|esta&PRES=be vger|habla-PROG=speak prep|de=of adv|más=more  .	\N	1090270	1092760	2490	
678	sastre5_m	LIL	mi cuñada Lorie@s:eng&spa .	det:pos|mi=my n|cuñada=sister_in_law L2|Lorie .	\N	1092678	1094692	2014	
679	sastre5_m	LIL	ella le dijo al esposo que +. . .	pro:per|ello=he pro:per|le=him vpret|deci-3S=say prep|a~det|el&MASC n|esposo=spouse  rel|que=that +. . .	\N	1094705	1097015	2310	
680	sastre5_m	LIL	ella tiene una niña de tres años .	pro:per|ello=he vpres|tene-3S&PRES=have det:art|un=one n|niño=child prep|de=of  num|tres=three n|año-PL=year .	\N	1096969	1099262	2293	
681	sastre5_m	LIL	y tiene mellizos .	adv|ya=already vpres|tene-3S&PRES=have n|mellizo-PL=twin .	\N	1099285	1101229	1944	
682	sastre5_m	LIL	un barón y una hembra .	pro:dem|un=one n|bar=bar conj|y=and pro:dem|un=one n|hembra=female .	\N	1101165	1102733	1568	
683	sastre5_m	LIL	recién nacidos tienen cinco meses .	adv|recién=recently vpart|nace-PL=be_born vpres|tene&PRES=have num|cinco=five  n|mes-PL=month .	\N	1102680	1104706	2026	
684	sastre5_m	LIL	y le dijo al [/] al marido +"/ .	adv|ya=already pro:per|le=him vpret|deci-3S=say prep|a~det|el&MASC n|marido=husband  +"/ .	\N	1104643	1106587	1944	
685	sastre5_m	LIL	+" &e Alberto@s:eng&spa en un año quisiera intentar para el [///] otro varón .	L2|Alberto prep|en=in pro:dem|un=one n|año=year vpsub|quere-13S=want  vinf|intenta=attempt prep|para=for det:indef|otro=other n|varón=male .	\N	1106605	1110710	4105	
686	sastre5_m	LIL	porque quieren dos niños y dos varones .	conj|porque=because vpres|quere&PRES=want num|dos=two n|niño-PL=child  adv|ya=already num|dos=two n|vara-PL=stick .	\N	1110680	1112770	2090	
687	sastre5_m	LIL	pero y Alberto@s:eng&spa .	conj|pero=but adv|ya=already L2|Alberto .	\N	1113020	1113798	778	
688	sastre5_m	LIL	+" no nada que ver porque ella está en la casa no trabaja .	adv|no=no vpres|nada-3S&PRES=swim rel|que=that vinf|ve=see conj|porque=because  pro:per|ello=he vpres|esta-3S&PRES=be prep|en=in det:art|el=the n|casa=house  adv|no=no vpres|trabaja-3S&PRES=work .	\N	1113871	1117696	3825	
689	sastre5_m	LIL	pero llega el marido después del trabajo .	conj|pero=but vpres|llega-3S&PRES=arrive det:art|el=the n|marido=husband  adv|después=after prep|de~det|el&MASC vpres|trabaja-1S&PRES=work .	\N	1117798	1119644	1846	
690	sastre5_m	LIL	y es él quien le cocina .	adv|ya=already vpres|se-3S&PRES=be pro:per|él=he rel|quien=who pro:per|le=him  vpres|cocina-3S&PRES=cook .	\N	1119627	1123359	3732	
691	sastre5_m	NAT	tuvo suerte .	vpret|tene-3S=have n|suerte=luck .	\N	1123313	1124468	1155	
692	sastre5_m	LIL	es él quien le cocina porque ella con dos &me mellizos .	vpres|se-3S&PRES=be pro:per|él=he rel|quien=who pro:per|le=him vpres|cocina-3S&PRES=cook  conj|porque=because pro:per|ello=he prep|con=with num|dos=two n|mellizo-PL=twin  .	\N	1124494	1127623	3129	
693	sastre5_m	NAT	&=laugh .	\N	\N	1124581	1125348	767	
694	sastre5_m	NAT	+< no no pero es verdad es verdad .	adv|no=no adv|no=no conj|pero=but vpres|se-3S&PRES=be co|verdad=right  vpres|se-3S&PRES=be co|verdad=right .	\N	1127414	1128593	1179	
695	sastre5_m	LIL	y está (.) dando pecho pues es mucho trabajo .	adv|ya=already v:aux|esta-3S&PRES=be vger|da-PROG=give n|pecho=breast  co|pues=well vpres|se-3S&PRES=be adv|mucho=much vpres|trabaja-1S&PRES=work  .	\N	1127500	1130298	2798	
696	sastre5_m	LIL	ella dice .	pro:per|ello=he vpres|deci-3S&PRES=say .	\N	1130315	1130797	482	
697	sastre5_m	LIL	y [/] y la creo le creo .	conj|y=and det:art|el=the vpres|cree-1S&PRES=believe pro:per|le=him vpres|cree-1S&PRES=believe  .	\N	1130968	1132819	1851	
698	sastre5_m	NAT	+< no pero es verdad es verdad es verdad .	co|no=no conj|pero=but vpres|se-3S&PRES=be co|verdad=right vpres|se-3S&PRES=be  co|verdad=right vpres|se-3S&PRES=be co|verdad=right .	\N	1131438	1133452	2014	
699	sastre5_m	LIL	no para .	co|no=no prep|para=for .	\N	1132738	1133545	807	
700	sastre5_m	LIL	entonces el marido trabaja todo el día con [/] con Fpl@s:eng&spa .	adv|entonces=then det:art|el=the n|marido=husband vpres|trabaja-3S&PRES=work  det:indef|todo=all det:art|el=the n|día=day prep|con=with L2|Fpl .	\N	1133631	1137915	4284	
701	sastre5_m	LIL	es ingeniero en Fpl@s:eng&spa .	vpres|se-3S&PRES=be n|ingeniero=engineer prep|en=in L2|Fpl .	\N	1137625	1139366	1741	
749	sastre5_m	LIL	xxx that's what scares me .	unk|xxx pro:dem|that~v:cop|be&3S pro:wh|what n|scare-PL pro|me .	\N	1237207	1238525	1318	eng
702	sastre5_m	LIL	llega a la casa a cocinarle a la mujer .	vpres|llega-3S&PRES=arrive prep|a=to det:art|el=the n|casa=house n:let|a  vinf|cocina-INF~pro:clit|3S prep|a=to det:art|el=the co:voc|mujer=woman  .	\N	1139346	1141523	2177	
703	sastre5_m	LIL	y estar con la niña de tres años .	conj|y=and vinf|esta=be prep|con=with det:art|el=the n|niño=child prep|de=of  num|tres=three n|año-PL=year .	\N	1141756	1144200	2444	
704	sastre5_m	LIL	bañarla y +. . .	vinf|baña-INF~pro:clit|OBJ&FEM adv|ya=already +. . .	\N	1144258	1145326	1068	
705	sastre5_m	NAT	sí pero la niña de tres años rinde por cuatro niños .	co|sí=yes conj|pero=but det:art|el=the n|niño=child prep|de=of num|tres=three  n|año-PL=year vpres|rendi-3S&PRES=tire_out prep|por=for num|cuatro=four  n|niño-PL=child .	\N	1145197	1148193	2996	
706	sastre5_m	LIL	sí porque es muy &hiper es una loca .	co|sí=yes conj|porque=because vpres|se-3S&PRES=be adv|muy=very vpres|se-3S&PRES=be  det:art|un=one adj|loco=crazy .	\N	1147885	1149905	2020	
707	sastre5_m	LIL	es linda .	vpres|se-3S&PRES=be adj|lindo=pretty .	\N	1149888	1150747	859	
708	sastre5_m	LIL	es preciosa .	vpres|se-3S&PRES=be adj|precioso=precious .	\N	1150741	1151954	1213	
709	sastre5_m	LIL	pero esa niña no para .	conj|pero=but det:dem|ese=that n|niño=child co|no=no prep|para=for .	\N	1151937	1154177	2240	
710	sastre5_m	LIL	es hiperactiva .	vpres|se-3S&PRES=be ?|hiperactiva .	\N	1154141	1156376	2235	
711	sastre5_m	LIL	el pobre Alberto@s:eng&spa .	det:art|el=the adj|pobre=poor L2|Alberto .	\N	1156370	1158257	1887	
712	sastre5_m	OSE	+< www .	unk|www .	\N	1156806	1158658	1852	
713	sastre5_m	LIL	eh ?	co|eh ?	\N	1158639	1159208	569	
714	sastre5_m	NAT	no no pero esta +/ .	adv|no=no adv|no=no conj|pero=but det:dem|este=this +/ .	\N	1159121	1159864	743	
715	sastre5_m	OSE	+< www .	unk|www .	\N	1159132	1161808	2676	
716	sastre5_m	NAT	no no pero esta niña es super .	adv|no=no adv|no=no conj|pero=but det:dem|este=this n|niño=child vpres|se-3S&PRES=be  n|super=super .	\N	1160676	1162812	2136	
717	sastre5_m	LIL	no esta es un terremoto .	co|no=no det:dem|este=this vpres|se-3S&PRES=be pro:dem|un=one n|terremoto=earthquake  .	\N	1162754	1164757	2003	
718	sastre5_m	NAT	+< <esta se pa(sa)> [/] esta se pasa de lo normal .	det:dem|este=this pro:refl|se=itself vpres|pasa-3S&PRES=pass prep|de=of  pro:per:1|lo=him adj|normal=normal .	\N	1163798	1166509	2711	
719	sastre5_m	LIL	es un terremoto .	vpres|se-3S&PRES=be pro:dem|un=one n|terremoto=earthquake .	\N	1166619	1168982	2363	
720	sastre5_m	OSE	www .	unk|www .	\N	1168999	1172540	3541	
721	sastre5_m	LIL	&=laugh .	\N	\N	1172519	1175148	2629	
722	sastre5_m	NAT	+< <y a veces ni eso porque tienen> [/] y a veces ni eso porque se le cae el biberón .	adv|ya=already prep|a=to n|vez-PL=turn conj|ni=nor pro:dem|eso=that_one  conj|porque=because pro:refl|se=itself pro:per|le=him vpres|cae-3S&PRES=fall  det:art|el=the n|biberón=baby_bottle .	\N	1173500	1177575	4075	
723	sastre5_m	NAT	y entonces empiezan a llorar porque se le cayó el biberón &=laugh .	adv|ya=already adv|entonces=then vpres|empeza&PRES=begin prep|a=to vinf|llora=cry  conj|porque=because pro:refl|se=itself pro:per|le=him vpret|cae-3S=fall  det:art|el=the n|biberón=baby_bottle .	\N	1177311	1180413	3102	
724	sastre5_m	OSE	www .	unk|www .	\N	1180187	1182131	1944	
725	sastre5_m	NAT	no pero +/ .	co|no=no conj|pero=but +/ .	\N	1182143	1182602	459	
726	sastre5_m	OSE	+< www .	unk|www .	\N	1182320	1184486	2166	
727	sastre5_m	LIL	tu mujer trabaja no ?	det:pos|tu=your co:voc|mujer=woman vpres|trabaja-3S&PRES=work adv|no=no  ?	\N	1186970	1188352	1382	
728	sastre5_m	OSE	www .	unk|www .	\N	1188187	1188610	423	
729	sastre5_m	NAT	sí .	co|sí=yes .	\N	1188686	1189098	412	
730	sastre5_m	LIL	así que es trabajo los dos después del trabajo &=laugh .	adv|así=thus rel|que=that vpres|se-3S&PRES=be n|trabajo=work det:art|el-PL=the  num|dos=two adv|después=after prep|de~det|el&MASC vpres|trabaja-1S&PRES=work  .	\N	1189371	1192825	3454	
731	sastre5_m	OSE	www .	unk|www .	\N	1191838	1192459	621	
732	sastre5_m	NAT	no Peter@s:eng&spa es buen padre .	adv|no=no L2|Peter vpres|se-3S&PRES=be adj|buen=good n|padre=father .	\N	1194651	1196445	1794	
733	sastre5_m	NAT	lo aprendió de su papá .	pro:per:1|lo=him vpret|aprende-3S=learn prep|de=of det:pos|su&3S=his n|papá=papa  .	\N	1196405	1199336	2931	
734	sastre5_m	NAT	yo creo que no me oyó &=laugh .	pro:per|yo=I vpres|cree-1S&PRES=believe rel|que=that adv|no=no pro:per|me=me  vpret|oí-3S=hear .	\N	1199621	1202146	2525	
735	sastre5_m	LIL	sí el te oyó .	adv|sí=yes det:art|el=the pro:per|te=you vpret|oí-3S=hear .	\N	1200648	1201635	987	
736	sastre5_m	OSE	www .	unk|www .	\N	1201502	1202721	1219	
737	sastre5_m	NAT	que Peter@s:eng&spa es buen padre porque lo aprendió de su papá .	rel|que=that L2|Peter vpres|se-3S&PRES=be adj|buen=good n|padre=father  conj|porque=because pro:per:1|lo=him vpret|aprende-3S=learn prep|de=of  det:pos|su&3S=his n|papá=papa .	\N	1202747	1206114	3367	
738	sastre5_m	LIL	&=laugh .	\N	\N	1202741	1203926	1185	
739	sastre5_m	NAT	+< h@s:eng&spa se quedó callado .	L2|h pro:refl|se=itself vpret|queda-3S=stay vpart|calla=silence .	\N	1207903	1210434	2531	
740	sastre5_m	NAT	usted es el papá &=laugh .	pro:per:1|usted=you vpres|se-3S&PRES=be det:art|el=the n|papá=papa .	\N	1210298	1213264	2966	
741	sastre5_m	OSE	www .	unk|www .	\N	1213375	1215024	1649	
742	sastre5_m	NAT	no no escu(chó) no quiere escu(char) no quiere escuchar ?	adv|no=no adv|no=no vpret|escucha-3S=listen adv|no=no vpres|quere-3S&PRES=want  vinf|escucha=listen adv|no=no vpres|quere-3S&PRES=want vinf|escucha=listen  ?	\N	1214895	1217310	2415	
743	sastre5_m	NAT	voy a tener que hablar con su señora el domingo que viene en misa .	vpres|i-1S&PRES=go prep|a=to vinf|tene=have rel|que=that vinf|habla=speak  prep|con=with det:pos|su&3S=his n|señora=lady det:art|el=the n|domingo=Sunday  rel|que=that vpres|veni-3S&PRES=come prep|en=in n|misa=mass .	\N	1219041	1222675	3634	
744	sastre5_m	NAT	&=laugh .	\N	\N	1222663	1223830	1167	
745	sastre5_m	NAT	mira a Pucho@s:eng&spa que tranquilito está ahí escondido .	co|mira=look prep|a=to L2|Pucho prep|que=than adj|tranquilo=calm vpres|esta-3S&PRES=be  adv|ahí=there vpart|esconde=hide .	\N	1225205	1227945	2740	
746	sastre5_m	LIL	+< no el está bello .	adv|no=no det:art|el=the vpres|esta-3S&PRES=be adj|bello=beautiful .	\N	1227225	1228880	1655	
747	sastre5_m	LIL	el Pucho@s:eng&spa .	det:art|el=the L2|Pucho .	\N	1228799	1230615	1816	
748	sastre5_m	OSE	www .	unk|www .	\N	1234009	1237405	3396	
750	sastre5_m	OSE	www .	unk|www .	\N	1237250	1238939	1689	
753	sastre5_m	LIL	but@s:eng hay muchos concerns@s:eng .	L2|but vpres|habe-3S&PRES=have det:indef|mucho-PL=many L2|concerns .	\N	1240349	1241829	1480	
754	sastre5_m	NAT	+< Pucho@s:eng&spa durmió como un bebito anoche .	L2|Pucho vpret|dormi-3S=sleep adv|como=like pro:dem|un=one n|bebito=baby  adv|anoche=last_night .	\N	1240563	1242189	1626	
755	sastre5_m	LIL	xxx a good boy .	unk|xxx det|a adj|good n|boy .	\N	1244738	1246102	1364	eng
756	sastre5_m	LIL	there's a good boy xxx the house .	adv:loc|there~v:cop|be&3S det|a adj|good n|boy unk|xxx det|the n|house  .	\N	1246067	1247693	1626	eng
757	sastre5_m	LIL	yes he is .	co|yes pro|he v:cop|be&3S .	\N	1247577	1248500	923	eng
758	sastre5_m	OSE	www .	unk|www .	\N	1248288	1250993	2705	
759	sastre5_m	NAT	ah sí ?	co|ah co|sí=yes ?	\N	0	0	0	
760	sastre5_m	NAT	ay dios .	co|ay=ay n|dios=diety .	\N	1252323	1253769	1446	
761	sastre5_m	NAT	se despierta para qué Peter@s:eng&spa ?	pro:refl|se=itself vpres|desperta-3S&PRES=wake_up prep|para=for pro:int|qué=what  L2|Peter ?	\N	1253746	1255847	2101	
762	sastre5_m	OSE	www .	unk|www .	\N	1255352	1256565	1213	
763	sastre5_m	LIL	+< I yeah xxx too yeah yeah .	?|I ?|yeah unk|xxx ?|too ?|yeah ?|yeah .	\N	1255741	1257639	1898	
764	sastre5_m	NAT	+< ah .	co|ah .	\N	1257094	1257674	580	
765	sastre5_m	OSE	www .	unk|www .	\N	1260206	1261994	1788	
766	sastre5_m	NAT	oye Lily@s:eng&spa .	co|oye=listen L2|Lily .	\N	1261906	1262776	870	
767	sastre5_m	NAT	no es por nada mamita pero deberías que ver es de comprar otra cafetera .	adv|no=no vpres|se-3S&PRES=be prep|por=for vpres|nada-3S&PRES=swim n|mama=mamma  conj|pero=but vcond|debe&COND=must rel|que=that vinf|ve=see vpres|se-3S&PRES=be  prep|de=of vinf|compra=buy det:indef|otro=other n|cafetera=coffee_percolator  .	\N	1262678	1265998	3320	
768	sastre5_m	NAT	oiste ?	?|oiste ?	\N	1265905	1266619	714	
769	sastre5_m	LIL	eh pues sí .	co|eh co|pues=well co|sí=yes .	\N	1267080	1268531	1451	
770	sastre5_m	NAT	no no no segurete .	adv|no=no adv|no=no adv|no=no adj|seguro=secure .	\N	1268257	1270446	2189	
771	sastre5_m	LIL	no sí porque no tiene esa +// .	co|no=no co|sí=yes conj|porque=because adv|no=no vpres|tene-3S&PRES=have  det:dem|ese=that +// .	\N	1270419	1272253	1834	
772	sastre5_m	LIL	ah no lo que hicimos e(s) +/ .	co|ah co|no=no pro:per:1|lo=him prep|que=than vpret|hace=do vpres|se-3S&PRES=be  +/ .	\N	1272305	1273908	1603	
773	sastre5_m	NAT	+< no tiene la agarradera .	adv|no=no vpres|tene-3S&PRES=have det:art|el=the ?|agarradera .	\N	1272613	1274122	1509	
774	sastre5_m	LIL	no lo hicimos en la grande .	adv|no=no pro:per:1|lo=him vpret|hace=do prep|en=in det:art|el=the adj|grande=big  .	\N	1273902	1275098	1196	
775	sastre5_m	LIL	sabes qué mami ?	vpres|sabe&PRES=know pro:int|qué=what n|mami=mommy ?	\N	1276882	1277805	923	
776	sastre5_m	LIL	por qué no sirve las +// .	prep|por=for pro:int|qué=what adv|no=no vpres|servi-3S&PRES=serve det:art|el-PL=the  +// .	\N	1277758	1280713	2955	
777	sastre5_m	OSE	+< www .	unk|www .	\N	1278286	1280428	2142	
778	sastre5_m	NAT	sí &=laugh .	co|sí=yes .	\N	1280412	1282380	1968	
779	sastre5_m	LIL	mamá y por qué no xxx las tacitas xxx las tacitas más [/] más chiquitas .	n|mamá=mommy adv|ya=already prep|por=for pro:int|qué=what adv|no=no  unk|xxx det:art|el-PL=the n|taza-PL=cup unk|xxx det:art|el-PL=the n|taza-PL=cup  adv|más=more adj|chiquito-PL=small .	\N	1282358	1286636	4278	
780	sastre5_m	LIL	cuántas somos ?	pro:int|cuánto-PL=how_much vpres|se&PRES=be ?	\N	1286674	1289420	2746	
781	sastre5_m	LIL	tú no vas a querer café ?	pro:per|tú=you adv|no=no vpres|i&PRES=go prep|a=to vinf|quere=want n|café=coffee  ?	\N	1289356	1290999	1643	
782	sastre5_m	LIL	porque en esas se [/] <se enfrían> [/] se enfría muy rápido el café .	conj|porque=because prep|en=in det:dem|ese-PL=that pro:refl|se=itself  ?|enfría adv|muy=very adj|rápido=rapid det:art|el=the n|café=coffee  .	\N	1294161	1297574	3413	
783	sastre5_m	LIL	&eg eh ?	co|eh ?	\N	1305250	1306614	1364	
784	sastre5_m	OSE	+< www .	unk|www .	\N	1306643	1308147	1504	
785	sastre5_m	LIL	six years ?	det:num|six n|year-PL ?	\N	1307897	1308710	813	eng
786	sastre5_m	LIL	we [/] we [/] we adopted him <when he was> [//] when we got married .	pro|we v|adopt-PAST pro|him conj:sub|when pro|we v|get&PAST part|marry-PERF  .	\N	1308620	1311685	3065	eng
787	sastre5_m	LIL	and he was three months .	conj:coo|and pro|he v:cop|be&PAST&13S det:num|three n|month-PL .	\N	1311365	1312388	1023	eng
788	sastre5_m	NAT	+< Peter@s:eng&spa yo te voy a dar el café .	L2|Peter pro:per|yo=I pro:per|te=you vpres|i-1S&PRES=go prep|a=to vinf|da=give  det:art|el=the n|café=coffee .	\N	1311529	1312765	1236	
789	sastre5_m	NAT	y tú se lo acerca a tu papá ?	adv|ya=already pro:per|tú=you pro:refl|se=itself pro:per:1|lo=him vpres|acerca-3S&PRES=bring_near  prep|a=to det:pos|tu=your n|papá=papa ?	\N	1312724	1313984	1260	
790	sastre5_m	LIL	so yeah he's as old as we've been married .	co|so co|yeah pro|he~v:cop|be&3S prep|as adj|old prep|as pro|we~aux|have  adj:part|be&PERF part|marry-PERF .	\N	1314587	1317013	2426	eng
791	sastre5_m	OSE	www .	unk|www .	\N	1316510	1317712	1202	
792	sastre5_m	LIL	he's beautiful .	pro|he~v:cop|be&3S adj|beautiful .	\N	1319821	1321557	1736	eng
793	sastre5_m	NAT	espérate que tú sabes que si me pongo a la mano así sale espumita .	?|espérate rel|que=that pro:per|tú=you vpres|sabe&PRES=know rel|que=that  conj|si=if pro:per|me=me vpres|pone-1S&PRES=put prep|a=to det:art|el=the  n|mano=hand adv|así=thus vpres|sali-3S&PRES=leave n|espuma=foam .	\N	1322152	1326512	4360	
794	sastre5_m	OSE	+< www .	unk|www .	\N	1324956	1325554	598	
795	sastre5_m	NAT	eso es un truco .	pro:dem|eso=that_one vpres|se-3S&PRES=be pro:dem|un=one n|truco=deception  .	\N	1326912	1328433	1521	
796	sastre5_m	LIL	www .	unk|www .	\N	1328294	1329971	1677	
797	sastre5_m	OSE	+< www .	unk|www .	\N	1329054	1330064	1010	
798	sastre5_m	NAT	no no no tú sabes que en el trabajo .	adv|no=no adv|no=no adv|no=no pro:per|tú=you vpres|sabe&PRES=know rel|que=that  prep|en=in det:art|el=the vpres|trabaja-1S&PRES=work .	\N	1330012	1332438	2426	
799	sastre5_m	OSE	www .	unk|www .	\N	1330621	1332339	1718	
800	sastre5_m	NAT	una vez me dijeron que si yo tenía problemas con +// .	det:art|un=one n|vez=turn pro:per|me=me vpret|deci=say rel|que=that conj|si=if  pro:per|yo=I vpas|tene-13S=have n|problema-PL=problem prep|con=with +//  .	\N	1332463	1335703	3240	
801	sastre5_m	NAT	dijo +"/ .	vpret|deci-3S=say +"/ .	\N	1335685	1336045	360	
898	sastre5_m	OSE	www .	unk|www .	\N	1518921	1525266	6345	
802	sastre5_m	NAT	+" no hijo eso lo aprendí de una señora que para que salga la espumita tiene que hacer eso .	adv|no=no co:voc|hijo=child pro:dem|eso=that_one pro:per:1|lo=him vpret|aprende-1S=learn  prep|de=of pro:dem|un=one n|señora=lady rel|que=that prep|para=for rel|que=that  vsub|sali-13S&PRES=leave det:art|el=the n|espuma=foam vpres|tene-3S&PRES=have  rel|que=that vinf|hace=do pro:dem|eso=that_one .	\N	1336022	1341467	5445	
803	sastre5_m	LIL	+< xxx time ?	unk|xxx n|time ?	\N	1339673	1340741	1068	eng
804	sastre5_m	OSE	www .	unk|www .	\N	1341410	1342025	615	
805	sastre5_m	NAT	+< no no mira gracias a dios .	adv|no=no adv|no=no co|mira=look n|gracia-PL=grace n:let|a n|dios=diety  .	\N	1341787	1343029	1242	
806	sastre5_m	OSE	+< www .	unk|www .	\N	1343000	1343784	784	
807	sastre5_m	NAT	y a la virgen .	adv|ya=already prep|a=to det:art|el=the n|virgen=virgin .	\N	1343825	1345195	1370	
808	sastre5_m	LIL	xxx .	unk|xxx .	\N	1346235	1347303	1068	
809	sastre5_m	OSE	www .	unk|www .	\N	1346888	1353047	6159	
810	sastre5_m	OSE	www .	unk|www .	\N	1353150	1355791	2641	
811	sastre5_m	NAT	Lorena@s:eng&spa quieres mucho poquito ?	L2|Lorena vpres|quere&PRES=want adv|mucho=much det:indef|poquito=little  ?	\N	1355781	1357249	1468	
812	sastre5_m	OSE	www .	unk|www .	\N	1357249	1358747	1498	
813	sastre5_m	NAT	no un poquito como Lily@s:eng&spa verdad ?	co|no=no pro:dem|un=one pro:indef|poquito=little adv|como=like L2|Lily  co|verdad=right ?	\N	1358730	1360750	2020	
814	sastre5_m	OSE	www .	unk|www .	\N	1360624	1363120	2496	
815	sastre5_m	NAT	+< &=laugh .	\N	\N	1360624	1363120	2496	
816	sastre5_m	LIL	xxx .	unk|xxx .	\N	1363014	1365173	2159	
817	sastre5_m	NAT	ya casi la espumita no la tienes tú Lorena@s:eng&spa .	adv|ya=already adv|casi=almost det:art|el=the n|espuma=foam adv|no=no  det:art|el=the vpres|tene&PRES=have pro:per|tú=you L2|Lorena .	\N	1365166	1368370	3204	
818	sastre5_m	OSE	+< www .	unk|www .	\N	1366774	1368939	2165	
819	sastre5_m	NAT	Lily@s:eng&spa tienes que cogerle las grande porque ya no hay más chiquiticas de esas .	L2|Lily vpres|tene&PRES=have rel|que=that vinf|coge-INF~pro:clit|3S det:art|el-PL=the  adj|grande=big conj|porque=because adv|ya=already adv|no=no vpres|habe-3S&PRES=have  adv|más=more n|chico-PL=small prep|de=of det:dem|ese-PL=that .	\N	1368924	1372372	3448	
820	sastre5_m	OSE	www .	unk|www .	\N	1370619	1371385	766	
821	sastre5_m	LIL	pues me das para sa(ber) +// .	co|pues=well pro:per|me=me vpres|da&PRES=give prep|para=for vinf|sabe=know  +// .	\N	1372073	1373432	1359	
822	sastre5_m	LIL	ya tienen café ellos ?	adv|ya=already vpres|tene&PRES=have n|café=coffee pro:per|ello-PL=he  ?	\N	1373420	1375382	1962	
823	sastre5_m	NAT	sí ya .	co|sí=yes adv|ya=already .	\N	1374701	1375386	685	
824	sastre5_m	LIL	mami sírvete tú &ta también café .	n|mami=mommy vimpsh|servi-2S&IMP~pro:clit|2S pro:per|tú=you adv|también=also  n|café=coffee .	\N	1375370	1377483	2113	
825	sastre5_m	LIL	ay dios mío .	co|ay=ay n|dios=diety pro:pos|mío=my .	\N	1379018	1380359	1341	
826	sastre5_m	NAT	+< no tengo xxx chiquitica .	adv|no=no vpres|tene-1S&PRES=have unk|xxx n|chico=small .	\N	1379376	1382388	3012	
827	sastre5_m	LIL	&=laugh .	\N	\N	1382092	1384223	2131	
828	sastre5_m	LIL	&=laugh I love my dog .	pro|I v|love pro:poss:det|my n|dog .	\N	1384209	1386060	1851	eng
829	sastre5_m	NAT	Lorena@s:eng&spa y tú vas para el trabajo ahora ?	L2|Lorena adv|ya=already pro:per|tú=you vpres|i&PRES=go prep|para=for  det:art|el=the vpres|trabaja-1S&PRES=work adv|ahora=now ?	\N	1386089	1387726	1637	
830	sastre5_m	OSE	www .	unk|www .	\N	1387668	1388365	697	
831	sastre5_m	NAT	oh my god .	co|oh pro:poss:det|my n|god .	\N	1388296	1390659	2363	eng
832	sastre5_m	NAT	yo pensé que tenías el día libre hoy .	pro:per|yo=I vpret|pensa-1S=think rel|que=that vpas|tene=have det:art|el=the  n|día=day vsub|libra-13S&PRES=save_from adv|hoy=today .	\N	1390607	1392383	1776	
833	sastre5_m	OSE	www .	unk|www .	\N	1392185	1393364	1179	
834	sastre5_m	LIL	&=laugh .	\N	\N	1398603	1402359	3756	
835	sastre5_m	LIL	he's too cute .	pro|he~v:cop|be&3S adv:int|too adj|cute .	\N	1403071	1404163	1092	eng
836	sastre5_m	OSE	www .	unk|www .	\N	1403913	1405782	1869	
837	sastre5_m	LIL	yeah observing .	co|yeah part|observe-PROG .	\N	1405776	1407524	1748	eng
838	sastre5_m	LIL	a ver cuánto me diste ?	prep|a=to vinf|ve=see pro:int|cuánto=how_much pro:per|me=me vpret|da=give  ?	\N	1408386	1409890	1504	
839	sastre5_m	LIL	cuánto me diste ?	pro:int|cuánto=how_much pro:per|me=me vpret|da=give ?	\N	1409877	1411618	1741	
840	sastre5_m	LIL	de verdad que es una exageración lo que me has dado .	prep|de=of co|verdad=right rel|que=that vpres|se-3S&PRES=be det:art|un=one  ?|exageración pro:per:1|lo=him rel|que=that pro:per|me=me v:aux|habe&PRES=have  vpart|da=give .	\N	1411616	1414304	2688	
841	sastre5_m	LIL	no es nada .	adv|no=no vpres|se-3S&PRES=be vpres|nada-3S&PRES=swim .	\N	1414269	1415587	1318	
842	sastre5_m	NAT	lo siento mija .	pro:per:1|lo=him vpres|senti-1S&PRES=feel ?|mija .	\N	1415529	1417172	1643	
843	sastre5_m	NAT	pero es que es mucho &=laugh .	conj|pero=but vpres|se-3S&PRES=be rel|que=that vpres|se-3S&PRES=be adv|mucho=much  .	\N	1417272	1419402	2130	
844	sastre5_m	LIL	+< por favor mami .	prep|por=for n|favor=favor n|mami=mommy .	\N	1418445	1419902	1457	
845	sastre5_m	OSE	+< www .	unk|www .	\N	1418445	1419902	1457	
846	sastre5_m	NAT	&=laugh .	\N	\N	1409877	1411618	1741	
847	sastre5_m	LIL	<eso no se no > [//] por favor eso no me hace nada ni daño a mí ni ni lo saborea el bebé .	prep|por=for n|favor=favor pro:dem|eso=that_one adv|no=no pro:per|me=me  vpres|hace-3S&PRES=do pro:indef|nada=nothing conj|ni=nor vpres|daña-1S&PRES=harm  prep|a=to pro:per|mí=me conj|ni=nor conj|ni=nor pro:per:1|lo=him ?|saborea  det:art|el=the n|bebé=baby .	\N	1420067	1425866	5799	
848	sastre5_m	NAT	bueno yo lo que sí te digo una cosa .	co|bueno=good pro:per|yo=I pro:per:1|lo=him rel|que=that co|sí=yes pro:per|te=you  vpres|deci-1S&PRES=say det:art|un=one vsub|cose-13S&PRES=sew .	\N	1425812	1427531	1719	
849	sastre5_m	NAT	que yo voy a estar en el médico con tu padre .	rel|que=that pro:per|yo=I vpres|i-1S&PRES=go prep|a=to vinf|esta=be prep|en=in  det:art|el=the n|médico=physician prep|con=with det:pos|tu=your n|padre=father  .	\N	1427478	1429255	1777	
850	sastre5_m	NAT	y Enrique@s:eng&spa no está por aquí .	adv|ya=already L2|Enrique adv|no=no vpres|esta-3S&PRES=be prep|por=for  adv|aquí=here .	\N	1429212	1430744	1532	
899	sastre5_m	LIL	+< uhuh .	co|uhuh .	\N	1523091	1523835	744	
900	sastre5_m	OSE	www .	unk|www .	\N	1524872	1533329	8457	
851	sastre5_m	LIL	cuando te empiece por tomar el café xxx te lleva [=! laugh] .	conj|cuando=when pro:per|te=you ?|empiece prep|por=for vinf|toma=take  det:art|el=the n|café=coffee unk|xxx pro:per|te=you vpres|lleva-3S&PRES=carry  .	\N	1430678	1434010	3332	
852	sastre5_m	LIL	esto es mejor &um &um .	pro:dem|esto=this_one vpres|se-3S&PRES=be adj|mejor=better .	\N	1435479	1437893	2414	
853	sastre5_m	LIL	&=laugh .	\N	\N	1438002	1439233	1231	
854	sastre5_m	NAT	+< &=laugh qué descarada eres &=laugh .	pro:int|qué=what ?|descarada vpres|se&PRES=be .	\N	1438113	1440957	2844	
855	sastre5_m	LIL	qué rico está el café .	pro:int|qué=what adj|rico=rich vpres|esta-3S&PRES=be det:art|el=the n|café=coffee  .	\N	1439754	1440950	1196	
856	sastre5_m	OSE	www .	unk|www .	\N	1440928	1443099	2171	
857	sastre5_m	LIL	Carmen@s:eng&spa es peor que tú .	L2|Carmen vpres|se-3S&PRES=be adv|peor=worse rel|que=that pro:per|tú=you  .	\N	1443038	1444519	1481	
858	sastre5_m	OSE	www .	unk|www .	\N	1443224	1444449	1225	
859	sastre5_m	NAT	ah entonces tú en el trabajo coges los sorbitos ?	co|ah adv|entonces=then pro:per|tú=you prep|en=in det:art|el=the vpres|trabaja-1S&PRES=work  vpres|coge&PRES=take det:art|el-PL=the n|sorbo-PL=gulp ?	\N	1444443	1446945	2502	
860	sastre5_m	LIL	no pero na [///] una vez a +/ .	co|no=no conj|pero=but det:art|un=one n|vez=turn prep|a=to +/ .	\N	1447174	1449316	2142	
861	sastre5_m	OSE	+< www .	unk|www .	\N	1448673	1452145	3472	
862	sastre5_m	NAT	+< no si café +// .	co|no=no conj|si=if n|café=coffee +// .	\N	1452000	1452853	853	
863	sastre5_m	NAT	y más este que es tan fuerte .	adv|ya=already adv|más=more det:dem|este=this rel|que=that vpres|se-3S&PRES=be  adv|tan=such adj|fuerte=strong .	\N	1452824	1454548	1724	
864	sastre5_m	LIL	cuidado mami .	co|cuidado=careful n|mami=mommy .	\N	1454303	1456155	1852	
865	sastre5_m	NAT	Lily@s:eng&spa créemelo que yo te digo +/ .	L2|Lily vimpsh|cree-2S&IMP~pro:clit|1S~pro:clit|OBJ&MASC rel|que=that  pro:per|yo=I pro:per|te=you vpres|deci-1S&PRES=say +/ .	\N	1455784	1458100	2316	
866	sastre5_m	LIL	+< no no es por ti por +/ .	adv|no=no adv|no=no vpres|se-3S&PRES=be prep|por=for pro:per|ti=you prep|por=for  +/ .	\N	1457427	1459035	1608	
867	sastre5_m	NAT	+< yo he tenido cuidado cada vez que yo xxx al lado mío &=laugh .	pro:per|yo=I v:aux|habe-1S&PRES=have vpart|tene=have co|cuidado=careful  det:indef|cada=each n|vez=turn rel|que=that pro:per|yo=I unk|xxx prep|a~det|el&MASC  n|lado=side pro:pos|mío=my .	\N	1458420	1462574	4154	
868	sastre5_m	LIL	+< no no es por tí por esto que no quiero que se rompe .	adv|no=no adv|no=no vpres|se-3S&PRES=be prep|por=for pro:per|tí=you prep|por=for  pro:dem|esto=this_one rel|que=that adv|no=no vpres|quere-1S&PRES=want rel|que=that  pro:refl|se=itself vpres|rompe-3S&PRES=break .	\N	1460211	1462759	2548	
869	sastre5_m	NAT	tú [/] tú te mueves [=! laugh] .	pro:per|tú=you pro:per|te=you vpres|move&PRES=move .	\N	1462699	1463953	1254	
870	sastre5_m	NAT	y yo voy pa(ra) atrás que estoy así xxx [=! laugh] .	adv|ya=already pro:per|yo=I vpres|i-1S&PRES=go prep|para=for adv|atrás=back  rel|que=that vpres|esta-1S&PRES=be adv|así=thus unk|xxx .	\N	1464080	1466025	1945	
871	sastre5_m	NAT	tú ni te dabas cuenta .	pro:per|tú=you conj|ni=nor pro:per|te=you vpas|da=give vpres|conta-3S&PRES=count_tell  .	\N	1465998	1468227	2229	
872	sastre5_m	LIL	no no me daba cuenta .	adv|no=no adv|no=no pro:per|me=me vpas|da-13S=give vpres|conta-3S&PRES=count_tell  .	\N	1468233	1469522	1289	
873	sastre5_m	NAT	tú ni te dabas que te [/] te movías conmigo no tú sola .	pro:per|tú=you conj|ni=nor pro:per|te=you vpas|da=give rel|que=that pro:per|te=you  vpas|move=move pro:per|conmigo=with_me adv|no=no pro:per|tú=you adj|solo=alone  .	\N	1473370	1475930	2560	
874	sastre5_m	LIL	ay .	co|ay=ay .	\N	1477230	1478618	1388	
875	sastre5_m	NAT	Lorena@s:eng&spa entonces lo que tú haces hoy en día no tiene nada que ver con tu carrera no ?	L2|Lorena adv|entonces=then pro:per:1|lo=him rel|que=that pro:per|tú=you  vpres|hace&PRES=do adv|hoy=today prep|en=in n|día=day adv|no=no vpres|tene-3S&PRES=have  vpres|nada-3S&PRES=swim rel|que=that vinf|ve=see prep|con=with det:pos|tu=your  n|carrera=race co|no=no ?	\N	1479514	1483716	4202	
876	sastre5_m	OSE	www .	unk|www .	\N	1483591	1485541	1950	
877	sastre5_m	LIL	no la [///] la esta Lorena@s:eng&spa mami .	adv|no=no det:art|el=the det:dem|este=this L2|Lorena n|mami=mommy .	\N	1485917	1488721	2804	
878	sastre5_m	NAT	ajá .	co|ajá .	\N	1489499	1490306	807	
879	sastre5_m	LIL	sabe letras .	vimp|sabe=know n|letra-PL=letter .	\N	1490216	1491035	819	
880	sastre5_m	LIL	sabe idiomas .	vimp|sabe=know n|idioma-PL=language .	\N	1491029	1492022	993	
881	sastre5_m	LIL	sabe de computadoras .	vpres|sabe-3S&PRES=know prep|de=of n|computador-PL=computer .	\N	1492004	1492968	964	
882	sastre5_m	LIL	ella sabe +// .	pro:per|ello=he vpres|sabe-3S&PRES=know +// .	\N	1492962	1493479	517	
883	sastre5_m	LIL	ella es un xxx women@s:eng .	pro:per|ello=he vpres|se-3S&PRES=be pro:dem|un=one unk|xxx L2|women .	\N	1493455	1495145	1690	
884	sastre5_m	NAT	oh my god .	co|oh=oh ?|my ?|god .	\N	1495105	1496185	1080	
885	sastre5_m	LIL	de todo un poco sabe esta muchacha .	prep|de=of det:indef|todo=all pro:dem|un=one adv|poco=few vpres|sabe-3S&PRES=know  det:dem|este=this n|muchacho=child .	\N	1496109	1498054	1945	
886	sastre5_m	NAT	eso es bueno Lorena@s:eng&spa .	pro:dem|eso=that_one vpres|se-3S&PRES=be adj|buen=good L2|Lorena .	\N	1498008	1499181	1173	
887	sastre5_m	NAT	así no tienes que aguantar a nadie &=laugh .	adv|así=thus adv|no=no vpres|tene&PRES=have rel|que=that vinf|aguanta=endure  prep|a=to pro:per|nadie=nobody .	\N	1500579	1503504	2925	
888	sastre5_m	OSE	www .	unk|www .	\N	1503307	1504253	946	
889	sastre5_m	LIL	no le +// .	adv|no=no pro:per|le=him +// .	\N	1503381	1504066	685	
890	sastre5_m	LIL	ella no le tiene [///] realmente no le tiene que aguantar nada a nadie .	pro:per|ello=he adv|no=no pro:per|le=him adv:adj|real=real adv|no=no pro:per|le=him  vpres|tene-3S&PRES=have rel|que=that vinf|aguanta=endure pro:indef|nada=nothing  prep|a=to pro:per|nadie=nobody .	\N	1503416	1507752	4336	
891	sastre5_m	NAT	y tienes la edad mi amor .	adv|ya=already vpres|tene&PRES=have det:art|el=the n|edad=age det:pos|mi=my  co:voc|amor=love .	\N	1507677	1509197	1520	
892	sastre5_m	LIL	you really don't have to .	pro|you adv:adj|real-LY aux|do~neg|not v|have inf|to .	\N	1509047	1510370	1323	eng
893	sastre5_m	LIL	your dad is right look after number one because no one is gonna look after you .	pro:poss:det|your n|dad v:cop|be&3S adj|right v|look prep|after n|number  n|one conj:sub|because qn|no pro:indef|one v:cop|be&3S adj:part|go-PROG~inf|to  co|look prep|after pro|you .	\N	1510288	1514734	4446	eng
901	sastre5_m	LIL	&=laugh he was jealous .	pro|he v:cop|be&PAST&13S adj|jealous .	\N	1533324	1536168	2844	eng
902	sastre5_m	OSE	+< www .	unk|www .	\N	1534497	1535425	928	
903	sastre5_m	NAT	Lily@s:eng&spa puedes caminar que quiero ver el color un momentico .	L2|Lily vpres|pode&PRES=can vinf|camina=walk rel|que=that vpres|quere-1S&PRES=want  vinf|ve=see det:art|el=the n|color=hue pro:dem|un=one n|momento=moment  .	\N	1536146	1538439	2293	
904	sastre5_m	LIL	+< sí mami .	adv|sí=yes n|mami=mommy .	\N	1537709	1538318	609	
905	sastre5_m	NAT	perdona Lorena@s:eng&spa .	co|perdona=pardon L2|Lorena .	\N	1538486	1539415	929	
906	sastre5_m	NAT	déjame ver el color .	?|déjame vinf|ve=see det:art|el=the n|color=hue .	\N	1544208	1545462	1254	
907	sastre5_m	NAT	ay si es casi igual .	co|ay=ay conj|si=if vpres|se-3S&PRES=be adv|casi=almost co|igual=equal  .	\N	1545439	1547314	1875	
908	sastre5_m	LIL	sí es casi igual .	co|sí=yes vpres|se-3S&PRES=be adv|casi=almost co|igual=equal .	\N	1547284	1548091	807	
909	sastre5_m	LIL	lo que un [/] un chin más +/ .	pro:per:1|lo=him prep|que=than pro:dem|un=one co|chin=clink adv|más=more  +/ .	\N	1548100	1550108	2008	
910	sastre5_m	NAT	+< más oscurito .	adv|más=more adj|oscuro=dark .	\N	1549447	1550259	812	
911	sastre5_m	LIL	más &e más fuerte .	adv|más=more adv|más=more adj|fuerte=strong .	\N	1550410	1551908	1498	
912	sastre5_m	NAT	sí está bonito .	co|sí=yes vpres|esta-3S&PRES=be adj|bonito=pretty .	\N	1551943	1553365	1422	
913	sastre5_m	LIL	entonces no lo quería todo amarillo .	adv|entonces=then adv|no=no pro:per:1|lo=him vpas|quere-13S=want det:indef|todo=all  adj|amarillo=yellow .	\N	1554631	1556280	1649	
914	sastre5_m	LIL	y por eso le dije +. . .	adv|ya=already prep|por=for pro:dem|eso=that_one pro:per|le=him vpret|deci-1S=say  +. . .	\N	1556262	1557783	1521	
915	sastre5_m	NAT	sí está más o menos igual .	co|sí=yes vpres|esta-3S&PRES=be adv|más=more conj|o=or adv|menos=less  co|igual=equal .	\N	1557494	1559196	1702	
916	sastre5_m	LIL	dónde está el sample@s:eng ?	adv:int|dónde=where vpres|esta-3S&PRES=be det:art|el=the L2|sample ?	\N	1559167	1560868	1701	
917	sastre5_m	NAT	+< o sea si +// .	conj|o=or vsub|se-13S&PRES=be conj|si=if +// .	\N	1559243	1560346	1103	
918	sastre5_m	LIL	yeah it's a +. . .	?|yeah ?|it's prep|a=to +. . .	\N	1560913	1562016	1103	
919	sastre5_m	NAT	+< Lily@s:eng&spa el [/] el [/] el sample@s:eng no lo han puesto todavía .	L2|Lily det:art|el=the L2|sample adv|no=no pro:per:1|lo=him v:aux|habe&PRES=have  vpart|pone=put adv|todavía=still .	\N	1561459	1563926	2467	
920	sastre5_m	NAT	xxx .	unk|xxx .	\N	1563786	1564756	970	
921	sastre5_m	LIL	+< se parece .	pro:refl|se=itself vpres|parece-3S&PRES=seem .	\N	1563868	1564622	754	
922	sastre5_m	LIL	eso es lo que quería algo que se pareciera pero que +/ .	pro:dem|eso=that_one vpres|se-3S&PRES=be pro:per:1|lo=him rel|que=that  vpas|quere-13S=want pro:dem|algo=something rel|que=that pro:refl|se=itself  vpsub|parece-13S=seem conj|pero=but rel|que=that +/ .	\N	1564680	1567002	2322	
923	sastre5_m	NAT	+< sí .	co|sí=yes .	\N	1565336	1565882	546	
924	sastre5_m	NAT	+< se parece .	pro:refl|se=itself vpres|parece-3S&PRES=seem .	\N	1566155	1567095	940	
925	sastre5_m	LIL	que salga +. . .	rel|que=that vsub|sali-13S&PRES=leave +. . .	\N	1567066	1568697	1631	
926	sastre5_m	LIL	and this is gonna be more um like a copper .	conj:coo|and pro:dem|this v:cop|be&3S adj:part|go-PROG~inf|to aux|be adv|more  ?|um co|like det|a n|copper .	\N	1568755	1572586	3831	eng
927	sastre5_m	LIL	this one and that one so the walls can be similar .	det|this pro:indef|one conj:coo|and det|that pro:indef|one co|so det|the  n|wall-PL aux|can v:cop|be adj|similar .	\N	1573108	1575097	1989	eng
928	sastre5_m	NAT	+< ok vamos para allá ya otra vez .	?|ok vpres|i&PRES=go prep|para=for adv|allá=there adv|ya=already det:indef|otro=other  n|vez=turn .	\N	1574770	1576244	1474	
929	sastre5_m	LIL	www .	unk|www .	\N	1576552	1578619	2067	
930	sastre5_m	LIL	oh yeah .	co|oh co|yeah .	\N	1578507	1579250	743	eng
931	sastre5_m	NAT	sí &va vamos para allá .	co|sí=yes vpres|i&PRES=go prep|para=for adv|allá=there .	\N	1579207	1581842	2635	
932	sastre5_m	LIL	+< I got the [/] the no smell kind .	pro|I v|get&PAST det|the qn|no n|smell adj|kind .	\N	1580229	1582446	2217	eng
933	sastre5_m	NAT	+< ve tú alante .	co|ve=see pro:per|tú=you ?|alante .	\N	1580869	1581723	854	
934	sastre5_m	LIL	ya .	adv|ya=already .	\N	1583548	1584674	1126	
935	sastre5_m	LIL	Enrique@s:eng&spa got@s:eng mad@s:eng at@s:eng me@s:eng (be)cause@s:eng we@s:eng did@s:eng the@s:eng handrails@s:eng <the@s:eng other@s:eng> [/] two@s:eng weeks@s:eng ago@s:eng .	L2|Enrique L2|got L2|mad L2|at L2|me L2|because L2|we L2|did L2|the L2|handrails  L2|two L2|weeks L2|ago .	\N	1584594	1587609	3015	
936	sastre5_m	OSE	www .	unk|www .	\N	1587334	1587966	632	
937	sastre5_m	LIL	and I [/] I wanted the no smell kind .	conj:coo|and pro|I v|want-PAST det|the qn|no n|smell adj|kind .	\N	1587945	1590755	2810	eng
938	sastre5_m	LIL	it's xxx friendly .	pro|it~aux|be&3S unk|xxx adj:n|friend-LY .	\N	1590720	1592398	1678	eng
939	sastre5_m	LIL	but it [/] it's +/ .	conj:coo|but pro|it~v:cop|be&3S +/ .	\N	1592531	1593907	1376	eng
940	sastre5_m	NAT	+< siéntate .	vimpsh|senta-2S&IMP~pro:clit|2S .	\N	1592566	1593303	737	
941	sastre5_m	NAT	+< no no yo voy para allá .	adv|no=no adv|no=no pro:per|yo=I vpres|i-1S&PRES=go prep|para=for adv|allá=there  .	\N	1593384	1594551	1167	
942	sastre5_m	NAT	mira siéntate tú en aquel de allá .	co|mira=look vimpsh|senta-2S&IMP~pro:clit|2S pro:per|tú=you prep|en=in  det:dem|aquel=that prep|de=of adv|allá=there .	\N	1594516	1595683	1167	
943	sastre5_m	NAT	y yo me siento acá .	adv|ya=already pro:per|yo=I pro:per|me=me vpres|senti-1S&PRES=feel adv|acá=there  .	\N	1595689	1596722	1033	
944	sastre5_m	NAT	+< pero te digo <por los> [/] por los cables &=laugh .	conj|pero=but pro:per|te=you vpres|deci-1S&PRES=say prep|por=for det:art|el-PL=the  n|cable-PL=cable .	\N	1596720	1599280	2560	
945	sastre5_m	LIL	but the +// .	conj:coo|but det|the +// .	\N	1596783	1598316	1533	eng
946	sastre5_m	LIL	but the friendly xxx friendly no smell kind doesn't have high gloss .	conj:coo|but det|the adj:n|friend-LY unk|xxx adj:n|friend-LY qn|no n|smell  adj|kind aux|do&3S~neg|not v|have n|high n|gloss .	\N	1599762	1605294	5532	eng
947	sastre5_m	OSE	www .	unk|www .	\N	1602717	1603553	836	
948	sastre5_m	LIL	and I needed high gloss for the stairway .	conj:coo|and pro|I v|need-PAST n|high n|gloss prep|for det|the n|stairway  .	\N	1605256	1607729	2473	eng
949	sastre5_m	LIL	so it can be smooth .	conj:sub|so pro|it aux|can v:cop|be adj|smooth .	\N	1607752	1609563	1811	eng
950	sastre5_m	OSE	www .	unk|www .	\N	1607668	1608974	1306	
951	sastre5_m	LIL	and what I got was a semi gloss .	conj:coo|and pro:wh|what pro|I v|get&PAST v:cop|be&PAST&13S det|a n|semi  n|gloss .	\N	1609927	1611518	1591	eng
952	sastre5_m	LIL	and it's kind of &gue when you touch it it's rough .	conj:coo|and pro|it~v:cop|be&3S n|kind prep|of adv:wh|when pro|you v|touch  pro|it pro|it~v:cop|be&3S adj|rough .	\N	1611553	1613962	2409	eng
953	sastre5_m	OSE	www .	unk|www .	\N	1613712	1614490	778	
954	sastre5_m	LIL	I went to the neighbor's house again for dinner .	pro|I v|go&PAST prep|to det|the n|neighbor~poss|s n|house adv|again prep|for  n|dinner .	\N	1614368	1616324	1956	eng
955	sastre5_m	LIL	and they got a new carpet .	conj:coo|and pro|they v|get&PAST det|a adj|new n|carpet .	\N	1616290	1618252	1962	eng
956	sastre5_m	LIL	they installed new carpet in their townhouse .	pro|they v|install-PAST adj|new n|carpet prep|in pro:poss:det|their n|+n|town+n|house  .	\N	1618378	1620706	2328	eng
957	sastre5_m	LIL	I went to look .	pro|I v|go&PAST prep|to co|look .	\N	1620799	1621379	580	eng
958	sastre5_m	LIL	and@s:eng Enrique@s:eng&spa goes@s:eng up@s:eng the@s:eng stairs@s:eng .	L2|and L2|Enrique L2|goes L2|up L2|the L2|stairs .	\N	1621367	1622383	1016	
959	sastre5_m	LIL	he goes +"/ .	pro|he v|go-3S +"/ .	\N	1622366	1622824	458	eng
960	sastre5_m	LIL	+" look look how smooth this handrail is .	v|look n|look adv:wh|how adj|smooth det|this ?|handrail v:cop|be&3S .	\N	1622791	1625274	2483	eng
961	sastre5_m	LIL	+" they have high gloss .	pro|they v|have n|high n|gloss .	\N	1625354	1626683	1329	eng
962	sastre5_m	LIL	I'm like +"/ .	pro|I~aux|be&1S co|like +"/ .	\N	1626625	1627978	1353	eng
963	sastre5_m	LIL	+" you wanna you know hurt your baby with the smell .	pro|you v|want~inf|to pro|you v|know adj|hurt pro:poss:det|your n|baby  prep|with det|the n|smell .	\N	1627216	1630316	3100	eng
964	sastre5_m	LIL	or whatever they have now .	conj:coo|or pro:wh|whatever pro|they aux|have adv|now .	\N	1630240	1631651	1411	eng
965	sastre5_m	LIL	and he had to be quite .	conj:coo|and pro|he v|have&PAST inf|to v:cop|be adv:int|quite .	\N	1632349	1633405	1056	eng
966	sastre5_m	LIL	but he's like +. . .	conj:coo|but pro|he~v:cop|be&3S rel|like +. . .	\N	1633399	1634334	935	eng
967	sastre5_m	LIL	+" but@s:eng Enrique@s:eng&spa you@s:eng do@s:eng it@s:eng later@s:eng on@s:eng .	L2|but L2|Enrique L2|you L2|do L2|it L2|later L2|on .	\N	1635042	1636743	1701	
968	sastre5_m	NAT	pero mira lo que podemos hacer es lo siguiente .	conj|pero=but vpres|mira-3S&PRES=look pro:per:1|lo=him rel|que=that vpres|pode&PRES=can  vinf|hace=do vpres|se-3S&PRES=be pro:per:1|lo=him adj|siguiente=successive  .	\N	1636675	1638324	1649	
969	sastre5_m	NAT	later@s:eng on@s:eng me dejas el bebito dos o tres días en casa .	L2|later L2|on pro:per|me=me vpres|deja&PRES=leave det:art|el=the n|bebito=baby  num|dos=two conj|o=or num|tres=three n|día-PL=day prep|en=in n|casa=house  .	\N	1638237	1641435	3198	
970	sastre5_m	NAT	pintas .	vpres|pinta&PRES=paint .	\N	1641442	1642690	1248	
971	sastre5_m	NAT	y entonces cuando ya esté el bebito ya que pueda entrar +// .	conj|y=and adv|entonces=then conj|cuando=when adv|ya=already vimp|esta-3S=be  det:art|el=the n|bebito=baby adv|ya=already prep|que=than vimp|pode-3S=can  vinf|entra=come_in +// .	\N	1642980	1646092	3112	
972	sastre5_m	NAT	por dos o tres días que tú te separes del bebito no pasa nada .	prep|por=for num|dos=two conj|o=or num|tres=three n|día-PL=day rel|que=that  pro:per|tú=you pro:per|te=you vsub|separa&PRES=separate prep|de~det|el&MASC  n|bebito=baby adv|no=no vpres|pasa-3S&PRES=pass pro:indef|nada=nothing  .	\N	1646185	1648187	2002	
973	sastre5_m	LIL	+< olvídalo .	?|olvídalo .	\N	1647955	1648739	784	
974	sastre5_m	OSE	www .	unk|www .	\N	1649280	1650528	1248	
975	sastre5_m	NAT	&=laugh .	\N	\N	1649280	1650528	1248	
976	sastre5_m	LIL	I already told him <I wanna be> [///] I can I [/] <I and> [//] I know I'm gonna be very possessive .	pro|I adv|already v|tell&PAST pro|him pro|I aux|can pro|I v|know pro|I~v:cop|be&1S  adj:part|go-PROG~inf|to v:cop|be adv:int|very adj|possessive .	\N	1650389	1654389	4000	eng
977	sastre5_m	LIL	xxx .	unk|xxx .	\N	1654828	1656000	1172	
978	sastre5_m	NAT	entonces cuando vayas a correr para adelgazarte ponle el bebito .	adv|entonces=then conj|cuando=when vsub|i&PRES=go prep|a=to vinf|corre=run  prep|para=for vinf|adelgaza-INF~pro:clit|2S vimp|pone-2S&IMP~pro:clit|3S  det:art|el=the n|bebito=baby .	\N	1656081	1659025	2944	
979	sastre5_m	NAT	y corre con el bebito .	adv|ya=already vpres|corre-3S&PRES=run prep|con=with det:art|el=the n|bebito=baby  .	\N	1658996	1659942	946	
980	sastre5_m	LIL	no iré con una [/] un coche .	adv|no=no vfut|i-1S=go prep|con=with pro:dem|un=one n|coche=car .	\N	1659815	1662921	3106	
981	sastre5_m	LIL	o vienes .	conj|o=or vpres|veni&PRES=come .	\N	1663239	1665166	1927	
982	sastre5_m	NAT	+< xxx .	unk|xxx .	\N	1663558	1664539	981	
983	sastre5_m	NAT	<no puedo> [//] yo no me puedo quedar sola con el bebito mamita .	pro:per|yo=I adv|no=no pro:per|me=me vpres|pode-1S&PRES=can vinf|queda=stay  adj|solo=alone prep|con=with det:art|el=the n|bebito=baby n|mama=mamma  .	\N	1665401	1667607	2206	
984	sastre5_m	LIL	no sí sí aquí una hora .	co|no=no co|sí=yes co|sí=yes adv|aquí=here det:art|un=one n|hora=hour  .	\N	1667004	1668722	1718	
985	sastre5_m	NAT	qué descaradita es &=laugh .	pro:int|qué=what ?|descaradita vpres|se-3S&PRES=be .	\N	1668365	1671262	2897	
986	sastre5_m	LIL	te dije que Enrique@s:eng&spa me [/] me pelió por esto .	pro:per|te=you vpret|deci-1S=say rel|que=that L2|Enrique pro:per|me=me  ?|pelió prep|por=for pro:dem|esto=this_one .	\N	1669639	1671305	1666	
987	sastre5_m	OSE	www .	unk|www .	\N	1673297	1674847	1550	
988	sastre5_m	LIL	yeah but I didn't ask for his permission .	co|yeah conj:coo|but pro|I aux|do&PAST~neg|not v|ask prep|for pro:poss:det|his  n|permission .	\N	1674907	1676826	1919	eng
989	sastre5_m	LIL	I did't ask for his permission .	pro|I ?|did't v|ask prep|for pro:poss:det|his n|permission .	\N	1679178	1680450	1272	eng
990	sastre5_m	LIL	and it's monthly instalments for six months .	conj:coo|and pro|it~v:cop|be&3S adj|monthly ?|instalments prep|for det:num|six  n|month-PL .	\N	1680420	1682655	2235	eng
991	sastre5_m	LIL	it's expensive .	pro|it~v:cop|be&3S adj|expensive .	\N	1682621	1683979	1358	eng
992	sastre5_m	LIL	but he came in .	conj:coo|but pro|he v|come&PAST adv:loc|in .	\N	1684386	1686163	1777	eng
993	sastre5_m	LIL	+" &ba &ba &ba &ba .	\N	\N	1686163	1686987	824	
994	sastre5_m	LIL	xxx Enrique@s:eng&spa .	unk|xxx L2|Enrique .	\N	1686977	1688626	1649	
995	sastre5_m	NAT	tenías que haberle pedido el permiso .	vpas|tene=have prep|que=than vinf|habe-INF~pro:clit|3S vpart|pedi=request  det:art|el=the n|permiso=permission .	\N	1688601	1690307	1706	
996	sastre5_m	NAT	lo que pasa es que no te peleó porque estás embarazada [=! laugh] .	pro:per:1|lo=him rel|que=that vpres|pasa-3S&PRES=pass vpres|se-3S&PRES=be  rel|que=that adv|no=no pro:per|te=you vpret|pelea-3S=fight conj|porque=because  v:aux|esta&PRES=be adj|embarazada=pregnant .	\N	1690241	1692186	1945	
997	sastre5_m	LIL	+< no no mami para estas cosas I@s:eng no@s:eng&spa I@s:eng didn't@s:eng want@s:eng to@s:eng hear@s:eng it@s:eng .	adv|no=no adv|no=no n|mami=mommy prep|para=for det:dem|este-PL=this vsub|cose&PRES=sew  L2|I L2|no L2|I L2|didn't L2|want L2|to L2|hear L2|it .	\N	1692228	1697104	4876	
998	sastre5_m	NAT	si no te pelea más [=! laugh] .	conj|si=if adv|no=no pro:per|te=you vpres|pelea-3S&PRES=fight adv|más=more  .	\N	1692270	1694604	2334	
999	sastre5_m	LIL	Enrique@s:eng&spa tiene un [/] un [//] una [//] un método de hacer las cosas .	L2|Enrique vpres|tene-3S&PRES=have pro:dem|un=one n|método=method prep|de=of  vinf|hace=do det:art|el-PL=the vsub|cose&PRES=sew .	\N	1697271	1700690	3419	
1000	sastre5_m	LIL	el pelea .	det:art|el=the vpres|pelea-3S&PRES=fight .	\N	1700823	1701490	667	
1001	sastre5_m	LIL	dice no .	vpres|deci-3S&PRES=say adv|no=no .	\N	1701490	1702233	743	
1002	sastre5_m	LIL	y después .	adv|ya=already adv|después=after .	\N	1702222	1703168	946	
1003	sastre5_m	LIL	+" you@s:eng know@s:eng what@s:eng por qué no .	L2|you L2|know L2|what prep|por=for pro:int|qué=what adv|no=no .	\N	1703098	1705246	2148	
1004	sastre5_m	NAT	él es hijo de su padre o de o de mi esposo ?	pro:per|él=he vpres|se-3S&PRES=be n|hijo=child prep|de=of det:pos|su&3S=his  n|padre=father conj|o=or prep|de=of conj|o=or prep|de=of det:pos|mi=my  n|esposo=spouse ?	\N	1704786	1707648	2862	
1005	sastre5_m	LIL	el hijo de es idéntico a mi padre y a su padre .	det:art|el=the n|hijo=child prep|de=of vpres|se-3S&PRES=be adj|idéntico=identical  prep|a=to det:pos|mi=my n|padre=father adv|ya=already prep|a=to det:pos|su&3S=his  n|padre=father .	\N	1707305	1710880	3575	
1006	sastre5_m	LIL	el dice no primero .	det:art|el=the vpres|deci-3S&PRES=say adv|no=no num:adj|primero=first  .	\N	1711141	1712320	1179	
1007	sastre5_m	LIL	pelea .	vpres|pelea-3S&PRES=fight .	\N	1712314	1712854	540	
1008	sastre5_m	LIL	y entonces no quería oírlo .	adv|ya=already adv|entonces=then adv|no=no vpas|quere-13S=want vinf|oí-INF~pro:clit|OBJ&MASC  .	\N	1712917	1714078	1161	
1009	sastre5_m	LIL	se va a hacer y ya .	pro:refl|se=itself vpres|i-3S&PRES=go prep|a=to vinf|hace=do adv|ya=already  adv|ya=already .	\N	1714073	1715396	1323	
1010	sastre5_m	LIL	pero me peleó de todas formas .	conj|pero=but pro:per|me=me vpret|pelea-3S=fight prep|de=of det:indef|todo-PL=all  vpres|forma&PRES=form .	\N	1716362	1718010	1648	
1011	sastre5_m	LIL	y yo lo ignoré .	adv|ya=already pro:per|yo=I pro:per:1|lo=him vpret|ignora-1S=ignore .	\N	1718072	1719523	1451	
1012	sastre5_m	LIL	estaba aquí en la cocina le +/ .	vpas|esta-13S=be adv|aquí=here prep|en=in det:art|el=the vpres|cocina-3S&PRES=cook  pro:per|le=him +/ .	\N	1719471	1721073	1602	
1013	sastre5_m	NAT	+< eso es muy ventajoso hacerlo hoy en día la verdad .	pro:dem|eso=that_one vpres|se-3S&PRES=be adv|muy=very ?|ventajoso vinf|hace-INF~pro:clit|OBJ&MASC  adv|hoy=today prep|en=in n|día=day det:art|el=the co|verdad=right .	\N	1720362	1722702	2340	
1014	sastre5_m	NAT	lo que es super caro .	pro:per:1|lo=him rel|que=that vpres|se-3S&PRES=be n|super=super adj|caro=dear  .	\N	1722688	1723640	952	
1015	sastre5_m	LIL	uno nunca sabe lo que va a pasar .	det:art|un=one adv|nunca=never vpres|sabe-3S&PRES=know pro:per:1|lo=him  rel|que=that vpres|i-3S&PRES=go prep|a=to vinf|pasa=pass .	\N	1723611	1724795	1184	
1016	sastre5_m	NAT	+< es muy caro .	vpres|se-3S&PRES=be adv|muy=very adj|caro=dear .	\N	1724700	1725652	952	
1017	sastre5_m	LIL	y es &e <es solamente> [//] no es para solamente el bebe .	adv|ya=already vpres|se-3S&PRES=be adv|no=no vpres|se-3S&PRES=be prep|para=for  adv|solamente=only det:art|el=the vpres|bebe-3S&PRES=drink .	\N	1725603	1728476	2873	
1018	sastre5_m	LIL	sino los bebés que tengamos .	conj|sino=except det:art|el-PL=the n|bebé-PL=baby rel|que=that vsub|tene&PRES=have  .	\N	1728463	1730222	1759	
1019	sastre5_m	NAT	+< los primos y todo .	det:art|el-PL=the n|primo-PL=cousin adv|ya=already det:indef|todo=all  .	\N	1729601	1730797	1196	
1020	sastre5_m	LIL	+< nosotros los primos .	pro:per|nosotro-PL=we det:art|el-PL=the n|primo-PL=cousin .	\N	1730414	1732204	1790	
1021	sastre5_m	LIL	tiene un bueno cien por ciento el bebé .	vpres|tene-3S&PRES=have pro:dem|un=one co|bueno=good num|cien=hundred  prep|por=for num:adj|ciento=hundred det:art|el=the n|bebé=baby .	\N	1732147	1735479	3332	
1022	sastre5_m	LIL	setenta y cinco por ciento el hermano que tengamos o una hermana .	num|setenta=seventy adv|ya=already num|cinco=five prep|por=for num:adj|ciento=hundred  det:art|el=the n|hermano=sibling rel|que=that vsub|tene&PRES=have conj|o=or  det:art|un=one n|hermano=sibling .	\N	1735702	1740131	4429	
1023	sastre5_m	LIL	y ciencuenta por cierto +/ .	adv|ya=already ?|ciencuenta prep|por=for adj|cierto=certain +/ .	\N	1740398	1741994	1596	
1024	sastre5_m	NAT	+< llegó la vecina tuya .	vpret|llega-3S=arrive det:art|el=the n|vecino=neighbor pro:pos|tuyo=your  .	\N	1741106	1742790	1684	
\.


--
-- Name: sastre5_m_cgutterances_pk; Type: CONSTRAINT; Schema: public; Owner: kevin; Tablespace: 
--

ALTER TABLE ONLY sastre5_m_cgutterances
    ADD CONSTRAINT sastre5_m_cgutterances_pk PRIMARY KEY (utterance_id);


--
-- PostgreSQL database dump complete
--

