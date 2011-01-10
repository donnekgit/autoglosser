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
-- Name: sastre1_cgutterances; Type: TABLE; Schema: public; Owner: kevin; Tablespace: 
--

CREATE TABLE sastre1_cgutterances (
    utterance_id integer NOT NULL,
    filename character varying(50),
    speaker character varying(10),
    surface text,
    com text,
    comment text,
    durbegin integer,
    durend integer,
    duration character varying(50),
    precode character varying(10)
);


ALTER TABLE public.sastre1_cgutterances OWNER TO kevin;

--
-- Name: sastre1_cgutterances_utterance_id_seq; Type: SEQUENCE; Schema: public; Owner: kevin
--

CREATE SEQUENCE sastre1_cgutterances_utterance_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.sastre1_cgutterances_utterance_id_seq OWNER TO kevin;

--
-- Name: sastre1_cgutterances_utterance_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kevin
--

ALTER SEQUENCE sastre1_cgutterances_utterance_id_seq OWNED BY sastre1_cgutterances.utterance_id;


--
-- Name: sastre1_cgutterances_utterance_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kevin
--

SELECT pg_catalog.setval('sastre1_cgutterances_utterance_id_seq', 968, true);


--
-- Name: utterance_id; Type: DEFAULT; Schema: public; Owner: kevin
--

ALTER TABLE sastre1_cgutterances ALTER COLUMN utterance_id SET DEFAULT nextval('sastre1_cgutterances_utterance_id_seq'::regclass);


--
-- Data for Name: sastre1_cgutterances; Type: TABLE DATA; Schema: public; Owner: kevin
--

COPY sastre1_cgutterances (utterance_id, filename, speaker, surface, com, comment, durbegin, durend, duration, precode) FROM stdin;
1	sastre1	KEV	bueno@3 y@3 qué@3 tú@3 crees@3 de@3 [/] de@3 aquí@3 la@3 cuadra@3 lo@3 que@3 están@3 haciendo@3 ?	\N	\N	1538	4342	2804	
2	sastre1	KEV	la@3 rotondita@3 esa@3 do@2 you@2 like@2 that@2 ?	\N	\N	4336	6914	2578	
3	sastre1	SOF	+< pero@3 that's@2 illegal@2 .	\N	\N	5989	7005	1016	
4	sastre1	SOF	esa@3 rotonda@3 es@3 illegal@2 .	\N	\N	7005	9588	2583	
5	sastre1	SOF	from@2 what@2 I@2 know@2 .	\N	\N	9583	10564	981	
6	sastre1	SOF	supuesto@3 de@3 eso@3 es@3 illegal@2 .	\N	\N	10579	11821	1242	
7	sastre1	SOF	<y@3 si@3> [/] y@3 si@3 entra@3 algún@3 camión@3 ahí@3 por@3 ejemplo@3 a@3 dejar@3 muebles@3 o@3 cualquier@3 cosa@3 .	\N	\N	11733	15321	3588	
8	sastre1	SOF	yo@3 no@3 sé@3 .	\N	\N	15321	16325	1004	
9	sastre1	SOF	cómo@3 va@3 a@3 doblar@3 esa@3 rotondita@3 ?	\N	\N	16309	17702	1393	
10	sastre1	SOF	porque@3 no@3 está@3 fácil@3 para@3 los@3 carros@3 de@3 uno@3 .	\N	\N	17697	19392	1695	
11	sastre1	KEV	no@0 .	\N	\N	19378	21108	1730	
12	sastre1	KEV	no@3 pero@3 +/ .	\N	\N	21071	21669	598	
13	sastre1	SOF	+< no@3 tanto@3 este@3 lado@3 sino@3 el@3 [/] el@3 lado@3 izquierdo@3 .	\N	\N	21657	24622	2965	
14	sastre1	KEV	el@3 de@3 entrar@3 o@3 el@3 de@3 salir@3 ?	\N	\N	24598	25846	1248	
15	sastre1	SOF	cuando@3 tú@3 entras@3 .	\N	\N	25815	27545	1730	
16	sastre1	KEV	mmhm@0 .	\N	\N	27545	28004	459	
17	sastre1	KEV	bueno@3 ese@3 está@3 en@3 la@3 intersección@3 .	\N	\N	28001	30062	2061	
18	sastre1	KEV	ese@3 tiene@3 bastante@3 espacio@3 .	\N	\N	30012	30976	964	
19	sastre1	KEV	<lo@3 malo@3> [///] el@3 otro@3 yo@3 lo@3 veo@3 más@3 difícil@3 porque@3 es@3 más@3 [/] más@3 estrechito@3 .	\N	\N	30970	36600	5630	
20	sastre1	SOF	+< pero@3 viste@3 las@3 cositas@3 que@3 compraron@3 para@3 los@3 speed@2 bumps@2 ?	\N	\N	36580	39465	2885	
21	sastre1	SOF	tú@3 viste@3 lo@3 que@3 van@3 a@3 hacer@3 ?	\N	\N	39438	40895	1457	
22	sastre1	KEV	+< no@3 .	\N	\N	40497	41025	528	
23	sastre1	SOF	tú@3 no@3 has@3 visto@3 una@3 +/ .	\N	\N	40883	42750	1867	
24	sastre1	KEV	sí@3 los@3 [/] los@3 bloquecitos@3 esos@3 .	\N	\N	42737	44432	1695	
25	sastre1	SOF	+< los@3 bloquecitos@3 esos@3 para@3 ponerlos@3 en@3 el@3 medio@3 .	\N	\N	43865	45670	1805	
26	sastre1	KEV	sí@3 .	\N	\N	45653	46106	453	
27	sastre1	SOF	donde@3 estaban@3 las@3 tablitas@3 esas@3 .	\N	\N	46106	48039	1933	
28	sastre1	KEV	en@3 lo@3 que@3 hicieron@3 de@3 concreto@3 .	\N	\N	48026	49396	1370	
29	sastre1	SOF	ajá@3 .	\N	\N	49363	49943	580	
30	sastre1	KEV	pero@3 [//] y@3 pero@3 eso@3 lo@3 que@3 va@3 a@3 ser@3 como@3 un@3 pedacito@3 de@3 [/] de@3 [/] de@3 tile@2 ahí@3 .	\N	\N	49896	56421	6525	
31	sastre1	SOF	+< sí@3 pero@3 a@3 lo@3 mejor@3 xxx .	\N	\N	55133	56375	1242	
32	sastre1	KEV	pero@3 yo@3 no@3 creo@3 que@3 eso@3 sea@3 mucho@3 speed@2 bump@2 .	\N	\N	56379	59049	2670	
33	sastre1	SOF	bueno@3 .	\N	\N	59123	59773	650	
34	sastre1	KEV	eso@3 más@3 bien@3 yo@3 creo@3 que@3 lo@3 que@3 va@3 a@3 hacer@3 es@3 como@3 un@3 adorno@3 pero@3 .	\N	\N	60356	63286	2930	
35	sastre1	KEV	baja@3 la@3 velocidad@3 ahí@3 ?	\N	\N	63286	65895	2609	
36	sastre1	SOF	pero@3 la@3 calle@3 no@3 la@3 van@3 a@3 hacer@3 no@3 ?	\N	\N	65876	70050	4174	
37	sastre1	KEV	sí@3 la@3 van@3 a@3 asfaltar@3 +/ .	\N	\N	70101	71244	1143	
38	sastre1	SOF	+< pero@3 es@3 que@3 yo@3 no@3 entiendo@3 .	\N	\N	70735	72017	1282	
39	sastre1	SOF	porque@3 primero@3 se@3 asfalta@3 antes@3 de@3 poner@3 el@3 [/] el@3 [//] la@3 hierba@3 .	\N	\N	72013	76223	4210	
40	sastre1	KEV	bueno@3 .	\N	\N	76206	76885	679	
41	sastre1	SOF	no@3 que@3 yo@3 sepa@3 .	\N	\N	76862	78023	1161	
42	sastre1	KEV	sí@3 sí@3 sí@3 no@3 tiene(s)@3 [/] tienes@3 razón@3 .	\N	\N	78034	80002	1968	
43	sastre1	KEV	el@3 asfalto@3 era@3 +/ .	\N	\N	79991	81285	1294	
44	sastre1	SOF	+< están@3 [/] están@3 gastando@3 doble@3 dinero@3 ahí@3 .	\N	\N	80855	82533	1678	
45	sastre1	KEV	el@3 asfalto@3 era@3 para@3 que@3 lo@3 hubieran@3 hecho@3 primero@3 .	\N	\N	82513	85085	2572	
46	sastre1	KEV	hubieran@3 limpiado@3 todos@3 los@3 leftovers@2 de@3 asfalto@3 y@3 toda@3 esa@3 cosa@3 .	\N	\N	85173	88157	2984	
47	sastre1	KEV	entonces@3 después@3 # haber@3 sembrado@3 la@3 hierba@3 .	\N	\N	89468	92956	3488	
48	sastre1	KEV	haber@3 recogido@3 .	\N	\N	92810	93455	645	
49	sastre1	KEV	limpiado@3 .	\N	\N	93536	94006	470	
50	sastre1	KEV	y@3 ya@3 acabado@3 y@3 eso@3 .	\N	\N	93994	95643	1649	
51	sastre1	KEV	pero@3 bueno@3 ellos@3 tendrán@3 su@3 idea@3 .	\N	\N	95229	98212	2983	
52	sastre1	SOF	y@3 el@3 parquecito@3 viste@3 que@3 van@3 a@3 hacer@3 ?	\N	\N	98186	100462	2276	
53	sastre1	KEV	aquí@3 atrás@3 ?	\N	\N	100456	101332	876	
54	sastre1	SOF	+< el@3 parquecito@3 .	\N	\N	100456	101332	876	
55	sastre1	KEV	no@3 no@3 me@3 he@3 fijado@3 .	\N	\N	101331	102567	1236	
56	sastre1	SOF	+< no@3 viste@3 que@3 te@3 mandaron@3 una@3 hoja@3 hoy@3 con@3 todo@3 lo@3 de@3 [/] del@3 meeting@2 ?	\N	\N	102074	106403	4329	
57	sastre1	KEV	+< no@3 # no@3 no@3 e(staba)@3 [/] e(staba)@3 [//] estaba@3 en@3 la@3 puerta@3 .	\N	\N	102074	106403	4329	
58	sastre1	KEV	cuando@3 salimos@3 que@3 nos@3 íbamos@3 pal(@3 bicycle@2 shop@2 .	\N	\N	106413	109512	3099	
59	sastre1	SOF	mmhm@0 .	\N	\N	109512	109866	354	
60	sastre1	KEV	estaba@3 puesto@3 en@3 la@3 puerta@3 y@3 yo@3 lo@3 tiré@3 para@3 dentro@3 de@3 la@3 casa@3 y@3 nos@3 fuimos@3 .	\N	\N	109860	112467	2607	
61	sastre1	KEV	y@3 ahora@3 les@3 [///] ya@3 vi@3 que@3 lo@3 había@3 sacado@3 de@3 [/] de@3 la@3 maleta@3 .	\N	\N	112468	116348	3880	
62	sastre1	KEV	pero@3 <no@3 me@3 había@3 fijado@3> [/] # <no@3 me@3 había@3> [//] no@3 me@3 he@3 fijado@3 qué@3 cosa@3 hay@3 dentro@3 .	\N	\N	116336	121294	4958	
63	sastre1	SOF	&=sigh .	\N	\N	121282	124783	3501	
64	sastre1	KEV	y@3 <se@3 ha@3 &pa> [///] está@3 rico@3 el@3 tiempo@3 .	\N	\N	124758	126656	1898	
65	sastre1	SOF	it's@2 beautiful@2 .	\N	\N	126635	128475	1840	
66	sastre1	KEV	+< mmhm@0 mmhm@0 mmhm@0 .	\N	\N	126635	130884	4249	
67	sastre1	SOF	(es)tá@3 tan@3 lindo@3 .	\N	\N	130855	131900	1045	
68	sastre1	KEV	sí@3 .	\N	\N	131900	132521	621	
69	sastre1	SOF	+< &=cough .	\N	\N	132237	132806	569	
70	sastre1	KEV	esta@3 terraza@3 déjame@3 decirte@3 que@3 vale@3 el@3 precio@3 de@3 la@3 casa@3 .	\N	\N	132788	135383	2595	
71	sastre1	KEV	xxx espacio@3 .	\N	\N	135367	138391	3024	
560	sastre1	KEV	mmhm@0 .	\N	\N	1133083	1134430	1347	
72	sastre1	SOF	+< y@3 eso@3 que@3 no@3 la@3 has@3 puesto@3 en@3 una@3 # cómo@3 se@3 llama@3 esto@3 una@3 # un@3 hammock@2 de@3 esos@3 .	\N	\N	135367	144176	8809	
73	sastre1	KEV	una@3 hamaca@3 ?	\N	\N	144228	145064	836	
74	sastre1	SOF	una@3 hamaca@3 .	\N	\N	145058	145737	679	
75	sastre1	KEV	no@3 .	\N	\N	145720	147241	1521	
76	sastre1	SOF	no@3 te@3 ha@3 dado@3 por@3 eso@3 ?	\N	\N	147247	148559	1312	
77	sastre1	SOF	xxx ahí@3 mira@3 entre@3 las@3 dos@3 palmas@3 las@3 puede@3 poner@3 ahí@3 .	\N	\N	148542	150637	2095	
78	sastre1	KEV	+< ahí@3 se@3 pudiera@3 poner@3 sí@3 .	\N	\N	150341	151670	1329	
79	sastre1	KEV	yo@3 tengo@3 una@3 que@3 cada@3 vez@3 que@3 nos@3 vamos@3 camping@2 we@2 take@2 it@2 .	\N	\N	151656	154756	3100	
80	sastre1	KEV	and@2 I@2 set@2 it@2 up@2 <in@2 the@2> [/] in@2 the@2 campground@2 .	\N	\N	154739	157261	2522	
81	sastre1	KEV	pero@3 # no@3 aquí@3 no@3 se@3 nos@3 ha@3 ocurrido@3 como@3 aquí@3 lo@3 que@3 pasa@3 es@3 que@3 the@2 [/] the@2 ground@2 in@2 the@2 back@2 it's@2 # slanted@2 .	\N	\N	157253	164818	7565	
82	sastre1	SOF	yeah@2 .	\N	\N	164797	165366	569	
83	sastre1	KEV	it's@2 not@2 even@2 .	\N	\N	165355	166649	1294	
84	sastre1	KEV	so:@2 # that's@2 something@2 to@2 +.. .	\N	\N	166642	168912	2270	
85	sastre1	KEV	pero@3 sí@3 se@3 pudieran@3 poner@3 un@3 par@3 de@3 tubos@3 o@3 algo@3 # so@2 we@2 could@2 uh@0 # install@2 the@2 hammock@2 .	\N	\N	168925	175310	6385	
86	sastre1	SOF	xxx this@2 is@2 great@2 back@2 here@2 .	\N	\N	175331	176701	1370	
87	sastre1	KEV	mmhm@0 yeah@2 .	\N	\N	176695	177322	627	
88	sastre1	SOF	and@2 this@2 month@2 that@2 is@2 pretty@2 cool@2 .	\N	\N	177303	180229	2926	
89	sastre1	KEV	it's@2 really@2 really@2 nice@2 .	\N	\N	180221	182543	2322	
90	sastre1	KEV	when@2 it@2 gets@2 to@2 July@2 and@2 August@2 it@2 gets@2 hot@2 .	\N	\N	182537	185118	2581	
91	sastre1	KEV	you@2 gotta@2 wait@2 until@2 almost@2 the@2 end@2 of@2 the@2 day@2 .	\N	\N	185097	187541	2444	
92	sastre1	KEV	that@2 # starts@2 cooling@2 off@2 a@2 little@2 bit@2 to@2 be@2 out@2 here@2 .	\N	\N	187535	191487	3952	
93	sastre1	KEV	at@2 [/] a(t)@2 [/] at@2 three@2 thirty@2 four@2 o'clock@2 it's@2 fine@2 .	\N	\N	191456	194388	2932	
94	sastre1	SOF	+< ah@2 but@2 thank@2 God@2 you@2 don't@2 have@2 to@2 worry@2 about@2 a@2 pool@2 .	\N	\N	193064	195612	2548	
95	sastre1	KEV	bueno@3 we@2 +/ .	\N	\N	195585	197511	1926	
96	sastre1	SOF	because@2 pool(s)@2 are@2 good@2 for@2 when@2 you@2 have@2 smaller@2 kids@2 but@2 already@2 .	\N	\N	197059	200228	3169	
97	sastre1	SOF	they@2 don't@2 even@2 wanna@2 jump@2 in@2 it@2 .	\N	\N	200210	202433	2223	
98	sastre1	KEV	eh@0 we@2 had@2 a@2 hard@2 time@2 finding@2 the@2 house@2 .	\N	\N	202440	206353	3913	
99	sastre1	KEV	because@2 we@2 were@2 looking@2 for@2 a@2 house@2 in@2 Miami@2 Lakes@2 on@2 the@2 lake@2 without@2 the@2 pool@2 .	\N	\N	206346	210554	4208	
100	sastre1	KEV	and@2 that's@2 [//] that@2 made@2 it@2 very@2 difficult@2 in@2 nineteen@2 ninety@2 eight@2 when@2 we@2 bought@2 here@2 finding@2 that@2 .	\N	\N	210520	215663	5143	
101	sastre1	KEV	we@2 couldn't@2 find@2 it@2 .	\N	\N	215667	217066	1399	
102	sastre1	KEV	we@2 couldn't@2 find@2 any@2 house@2 +/ .	\N	\N	217048	219074	2026	
103	sastre1	SOF	+< most@2 of@2 the@2 houses@2 xxx have@2 pool@2 .	\N	\N	218488	220868	2380	
104	sastre1	KEV	+< they@2 all@2 have@2 pools@2 .	\N	\N	220282	221216	934	
105	sastre1	KEV	and@2 then@2 we@2 came@2 across@2 this@2 one@2 .	\N	\N	221222	223318	2096	
106	sastre1	SOF	&=cough .	\N	\N	223300	223758	458	
107	sastre1	KEV	que@3 la@3 est(aban)@3 [/] estaban@3 vendiendo@3 desde@3 abril@3 .	\N	\N	223753	225651	1898	
108	sastre1	KEV	el@3 viejito@3 se@3 había@3 muerto@3 .	\N	\N	225643	227837	2194	
109	sastre1	KEV	la@3 estaban@3 vendiendo@3 desde@3 abril@3 .	\N	\N	227826	229678	1852	
110	sastre1	SOF	+< ya@3 yo@3 me@3 recuerdo@3 .	\N	\N	228861	229935	1074	
111	sastre1	KEV	habían@3 bajado@3 el@3 precio@3 un@3 viaje@3 .	\N	\N	229900	231316	1416	
112	sastre1	KEV	y@3 entonces@3 como@3 en@3 agosto@3 # que@3 nosotros@3 encontramos@3 la@3 casa@3 habían@3 vuelto@3 a@3 bajar@3 el@3 precio@3 .	\N	\N	231300	237318	6018	
113	sastre1	KEV	y@3 entonces@3 negociamos@3 con@3 [/] con@3 la@3 hija@3 de@3 Lucía@3 la@3 señora@3 que@3 vive@3 aquí@3 .	\N	\N	237273	243407	6134	
114	sastre1	SOF	+< mmhm@0 .	\N	\N	242547	243180	633	
115	sastre1	KEV	xxx and@2 we@2 # got@2 it@2 pero@3 .	\N	\N	243400	245931	2531	
116	sastre1	KEV	a@2 house@2 on@2 the@2 lake@2 without@2 a@2 pool@2 is@2 almost@2 impossible@2 # to@2 find@2 .	\N	\N	245910	250248	4338	
117	sastre1	SOF	but@2 you've@2 done@2 a@2 lot@2 to@2 this@2 house@2 .	\N	\N	250242	253029	2787	
118	sastre1	KEV	+< mmhm@0 yeah@2 .	\N	\N	251711	252970	1259	
119	sastre1	SOF	you@2 have@2 done@2 so@2 much@2 .	\N	\N	252962	254390	1428	
120	sastre1	SOF	it's@2 incredible@2 .	\N	\N	254384	255307	923	
121	sastre1	KEV	+< yeah@2 .	\N	\N	254384	255307	923	
122	sastre1	KEV	y@3 ahora@3 vamos@3 a@3 hacerle@3 el@3 baño@3 .	\N	\N	255313	256921	1608	
123	sastre1	SOF	yeah@2 .	\N	\N	256915	257675	760	
124	sastre1	KEV	porque@3 el@3 baño@3 está@3 el@3 baño@3 original@3 .	\N	\N	257652	259191	1539	
125	sastre1	KEV	eh@0 we@2 are@2 gonna@2 redo@2 the@2 bathroom@2 .	\N	\N	259179	261414	2235	
126	sastre1	KEV	ah@0 my@2 idea@2 originally@2 was@2 just@2 to@2 leave@2 the@2 tub@2 .	\N	\N	261419	266722	5303	
127	sastre1	KEV	y@3 change@2 everything@2 else@2 .	\N	\N	266707	269436	2729	
128	sastre1	KEV	pero@3 ahora@3 the@2 new@2 idea@2 is@2 gonna@2 be@2 that@2 # we@2 are@2 gonna@2 to@2 replace@2 everything@2 .	\N	\N	269438	275689	6251	
129	sastre1	KEV	change@2 +/ .	\N	\N	275683	277099	1416	
130	sastre1	SOF	+< make@2 it@2 a@2 shower@2 .	\N	\N	276606	277708	1102	
131	sastre1	SOF	you@2 don't@2 like@2 showers@2 ?	\N	\N	277701	279326	1625	
132	sastre1	KEV	+< no@2 we@2 are@2 gonna@2 put@2 <a@2 t(ub)> [/] a@2 tub@2 but@2 a@2 new@2 tub@2 .	\N	\N	278316	280917	2601	
133	sastre1	SOF	oh@0 ok@0 .	\N	\N	280889	281876	987	
134	sastre1	KEV	because@2 it's@2 gonna@2 be@2 very@2 hard@2 to@2 leave@2 an@2 old@2 tub@2 .	\N	\N	281847	284732	2885	
135	sastre1	KEV	and@2 then@2 match@2 everything@2 else@2 to@2 the@2 old@2 tub@2 .	\N	\N	284730	287191	2461	
136	sastre1	KEV	so@2 kind@2 of@2 a@2 +.. .	\N	\N	287180	289607	2427	
137	sastre1	KEV	we@2 are@2 gonna@2 re(do)@2 [/] redo@2 the@2 whole@2 thing@2 .	\N	\N	289583	291476	1893	
138	sastre1	KEV	<cambiar@3 las@3 paredes@3> [//] quitar@3 las@3 paredes@3 poner@3 la@3 [//] los@3 dry@2 walls@2 esos@3 nuevos@3 .	\N	\N	291476	295516	4040	
139	sastre1	KEV	que@3 no@3 deja@3 que@3 [/] que@3 no@3 asome@3 la@3 humedad@3 .	\N	\N	295490	300389	4899	
140	sastre1	SOF	+< humidity@2 .	\N	\N	299333	300360	1027	
141	sastre1	KEV	que@3 ah@0 eh@0 eh@0 son@3 como@3 waterproof@2 .	\N	\N	300348	303790	3442	
142	sastre1	SOF	mmhm@0 .	\N	\N	303736	304455	719	
143	sastre1	KEV	y@3 xxx entonces@3 también@3 .	\N	\N	304461	305965	1504	
144	sastre1	KEV	eh@0 llevan@3 los@3 [//] las@3 losas@3 los@3 ladrillos@3 los@3 +.. .	\N	\N	305962	309421	3459	
145	sastre1	SOF	para@3 arriba@3 .	\N	\N	309415	310466	1051	
146	sastre1	KEV	hasta@3 arriba@3 hasta@3 el@3 techo@3 .	\N	\N	310469	311543	1074	
147	sastre1	SOF	y@3 aquí@3 antes@3 was@2 half@2 way@2 .	\N	\N	311516	314494	2978	
148	sastre1	KEV	sí@3 ahora@3 están@3 eh@0 más@3 o@3 menos@3 al@3 nivel@3 de@3 la@3 ventana@3 .	\N	\N	314482	318488	4006	
149	sastre1	SOF	xxx .	\N	\N	318517	319503	986	
150	sastre1	KEV	+< mmhm@0 .	\N	\N	318517	319503	986	
151	sastre1	KEV	y@3 hay@3 lugares@3 que@3 alrededor@3 de(l)@3 [/] del@3 inodoro@3 que@3 están@3 bajitos@3 bajitos@3 .	\N	\N	319467	324145	4678	
152	sastre1	KEV	entonces@3 llevarlo@3 hasta@3 arriba@3 .	\N	\N	324145	326089	1944	
153	sastre1	KEV	después@3 que@3 hagamos@3 uno@3 posiblemente@3 hagamos@3 el@3 otro@3 .	\N	\N	326078	328057	1979	
154	sastre1	KEV	y@3 ya@3 entonces@3 ahora@3 quiero@3 eh:@0 los@3 regadíos@3 [//] the@2 sprinkler@2 system@2 arreglarlos@3 y:@3 +.. .	\N	\N	328038	335577	7539	
155	sastre1	KEV	empezar@3 xxx por@3 retirarnos@3 .	\N	\N	335566	339229	3663	
156	sastre1	KEV	&=laugh .	\N	\N	339219	340659	1440	
157	sastre1	KEV	hoy@3 fuimos@3 a@3 ver@3 un@3 camper@2 un@3 R_V@3 .	\N	\N	340659	342685	2026	
158	sastre1	SOF	yeah@2 .	\N	\N	342679	343538	859	
159	sastre1	KEV	sí@3 .	\N	\N	343542	344245	703	
160	sastre1	KEV	sí@3 porque@3 este@3 the@2 one@2 we@2 have@2 is@2 nice@2 .	\N	\N	344245	346567	2322	
161	sastre1	KEV	but@2 it's@2 fairly@2 small@2 .	\N	\N	346571	348272	1701	
162	sastre1	KEV	and@2 when@2 you@2 get@2 to@2 the@2 place@2 you@2 have@2 to@2 actually@2 put@2 it@2 # up@2 .	\N	\N	348270	352916	4646	
163	sastre1	SOF	+< up@2 .	\N	\N	352435	352800	365	
164	sastre1	KEV	and@2 [/] and@2 open@2 it@2 and@2 put@2 it@2 together@2 .	\N	\N	352792	355010	2218	
165	sastre1	KEV	the@2 other@2 one@2 no@2 .	\N	\N	355339	356297	958	
166	sastre1	KEV	the@2 other@2 one@2 everything@2 is@2 in@2 place@2 .	\N	\N	356309	357870	1561	
167	sastre1	KEV	you@2 just@2 get@2 there@2 .	\N	\N	357871	360286	2415	
168	sastre1	SOF	and@2 press@2 the@2 button@2 .	\N	\N	359107	360210	1103	
169	sastre1	KEV	+< press@2 the@2 xxx .	\N	\N	359380	359967	587	
170	sastre1	SOF	right@2 .	\N	\N	360202	360771	569	
171	sastre1	KEV	and@2 +/ .	\N	\N	360759	361172	413	
172	sastre1	SOF	+< and@2 everything@2 opens@2 up@2 .	\N	\N	360759	361967	1208	
173	sastre1	KEV	you@2 don't@2 even@2 ha(ve)@2 mmhm@0 +/ .	\N	\N	361971	363863	1892	
174	sastre1	SOF	+< my@2 friend@2 has@2 an@2 R_V@2 .	\N	\N	361971	363863	1892	
175	sastre1	SOF	it's@2 beautiful@2 .	\N	\N	363834	364856	1022	
176	sastre1	SOF	oh@0 my@2 god@2 &ap it@2 looks@2 like@2 a@2 house@2 .	\N	\N	364840	367417	2577	
177	sastre1	KEV	+< mmhm@0 .	\N	\N	0	0	0	
178	sastre1	KEV	mmhm@0 .	\N	\N	367394	367928	534	
179	sastre1	SOF	but@2 it's@2 big@2 .	\N	\N	367923	368695	772	
180	sastre1	SOF	you@2 know@2 .	\N	\N	368687	369500	813	
181	sastre1	KEV	+< mmhm@0 .	\N	\N	368687	369500	813	
182	sastre1	SOF	and@2 he@2 takes@2 it@2 with@2 him@2 .	\N	\N	369476	370678	1202	
183	sastre1	SOF	I@2 mean@2 it's@2 wow@2 .	\N	\N	370655	371357	702	
184	sastre1	SOF	he@2 presses@2 the@2 button@2 .	\N	\N	371346	372226	880	
185	sastre1	KEV	+< mmhm@0 .	\N	\N	372000	372313	313	
186	sastre1	SOF	that@2 whole@2 thing@2 like@2 opens@2 up@2 .	\N	\N	372214	373805	1591	
187	sastre1	SOF	it's@2 got@2 a@2 master@2 bedroom@2 .	\N	\N	373793	375291	1498	
188	sastre1	KEV	yeah@2 .	\N	\N	375279	375714	435	
189	sastre1	SOF	and@2 a@2 +.. .	\N	\N	375703	377324	1621	
190	sastre1	KEV	mmhm@0 .	\N	\N	377301	378311	1010	
191	sastre1	SOF	and@2 two@2 other@2 bedrooms@2 # with@2 a@2 bathroom@2 pretty@2 big@2 .	\N	\N	378308	381208	2900	
192	sastre1	KEV	+< mmhm@0 .	\N	\N	379983	380389	406	
193	sastre1	SOF	I@2 mean@2 it's@2 really@2 nice@2 .	\N	\N	381185	382282	1097	
194	sastre1	KEV	+< mmhm@0 .	\N	\N	381777	382340	563	
195	sastre1	SOF	the@2 kitchen@2 is@2 beautiful@2 .	\N	\N	382266	383735	1469	
196	sastre1	KEV	yeah@2 .	\N	\N	383706	384071	365	
197	sastre1	KEV	yeah@2 .	\N	\N	384042	384907	865	
198	sastre1	SOF	flat@2 screen@2 tvs@0 I@2 mean@2 he's@2 got@2 it@2 +.. .	\N	\N	384907	387724	2817	
199	sastre1	KEV	+< mmhm@0 .	\N	\N	0	0	0	
200	sastre1	KEV	yeah@0 .	\N	\N	387722	388372	650	
201	sastre1	SOF	(be)cause@2 he@2 likes@2 to@2 go@2 to@2 the@2 Keys@0 a@2 lot@2 .	\N	\N	388337	390125	1788	
202	sastre1	KEV	yah@2 the@2 Keys@0 are@2 getting@2 very@2 +/ .	\N	\N	390095	391953	1858	
203	sastre1	SOF	expensive@2 .	\N	\N	391930	392911	981	
204	sastre1	KEV	+< right@2 difficult@2 expensive@2 and@2 difficult@2 with@2 .	\N	\N	392493	394754	2261	
205	sastre1	KEV	it's@2 very@2 hard@2 to@2 find@2 a@2 camping@2 sp(ot)@2 [/] spot@2 over@2 there@2 .	\N	\N	394742	398301	3559	
206	sastre1	SOF	+< space@2 now@2 .	\N	\N	397494	398284	790	
207	sastre1	SOF	yeah@2 because@2 what@2 they@2 do@2 is@2 they@2 build@2 now@2 on@2 them@2 instead@2 of@2 .	\N	\N	398296	400989	2693	
208	sastre1	KEV	right@2 they@2 close@2 them@2 .	\N	\N	400954	402104	1150	
209	sastre1	KEV	they@2 close@2 American_Outdoors@2 they@2 close@2 a@2 [/] a@2 bunch@2 of@2 them@2 .	\N	\N	402070	405576	3506	
210	sastre1	SOF	+< yes@2 because@2 people@2 are@2 making@2 money@2 selling@2 the@2 property@2 so@2 .	\N	\N	404827	408013	3186	
211	sastre1	KEV	+< mmhm@0 .	\N	\N	407468	408623	1155	
212	sastre1	KEV	yeah@2 .	\N	\N	408001	410033	2032	
213	sastre1	SOF	+< they@2 don't@2 make@2 as@2 much@2 renting@2 as@2 they@2 do@2 selling@2 .	\N	\N	409584	411767	2183	
214	sastre1	KEV	yeah@2 .	\N	\N	411735	412693	958	
215	sastre1	KEV	and@2 the@2 campgrounds@2 were@2 beautiful@2 places@2 to@2 build@2 on@2 .	\N	\N	412680	417365	4685	
216	sastre1	KEV	because@2 &a they@2 were@2 huge@2 pieces@2 of@2 property@2 a@2 lot@2 of@2 them@2 right@2 on@2 the@2 ocean@2 on@2 the@2 water@2 .	\N	\N	417341	424772	7431	
636	sastre1	KEV	mmhm@0 .	\N	\N	1273442	1276490	3048	
217	sastre1	KEV	so@2 you@2 know@2 it@2 was@2 a@2 good@2 deal@2 .	\N	\N	424767	427007	2240	
218	sastre1	SOF	+< yes@2 .	\N	\N	425330	426363	1033	
219	sastre1	KEV	so@2 they@2 closed@2 them@2 .	\N	\N	426992	428826	1834	
220	sastre1	SOF	+< &=cough .	\N	\N	426992	428826	1834	
221	sastre1	KEV	American_Outdoors@2 was@2 a@2 beautiful@2 place@2 .	\N	\N	428785	431380	2595	
222	sastre1	KEV	and@2 they@2 just@2 closed@2 it@2 down@2 .	\N	\N	431374	432703	1329	
223	sastre1	KEV	mmhm@0 .	\N	\N	432696	434618	1922	
224	sastre1	SOF	wow@0 .	\N	\N	434618	435152	534	
225	sastre1	KEV	mmhm@0 .	\N	\N	435117	436649	1532	
226	sastre1	KEV	viste@3 +/ .	\N	\N	436636	437036	400	
227	sastre1	SOF	oh@0 look@2 at@2 the@2 little@2 +/ .	\N	\N	437048	438075	1027	
228	sastre1	KEV	la@3 coneja@3 de@3 Pepita@0 .	\N	\N	438058	439312	1254	
229	sastre1	SOF	es@3 una@3 conejita@3 ?	\N	\N	439307	441170	1863	
230	sastre1	KEV	+< Cleopatra@0 yeah@2 .	\N	\N	440595	441652	1057	
231	sastre1	KEV	yeah@2 that's@2 &a .	\N	\N	441639	444007	2368	
232	sastre1	SOF	+< oh@0 my@2 god@2 .	\N	\N	441639	444367	2728	
233	sastre1	KEV	when@2 Pepita@0 moved@2 to@2 Tampa@0 she@2 acquired@2 the@2 rabbit@2 .	\N	\N	444363	447730	3367	
234	sastre1	SOF	+< wow@0 .	\N	\N	0	0	0	
235	sastre1	KEV	y:@3 that@2 was@2 her@2 companion@2 .	\N	\N	447728	451070	3342	
236	sastre1	SOF	+< is@2 it@2 a@2 miniature@2 ?	\N	\N	447728	451070	3342	
237	sastre1	KEV	no@2 .	\N	\N	451058	452301	1243	
238	sastre1	KEV	it's@2 a@2 Dutch@2 &a +.. .	\N	\N	452255	453579	1324	
239	sastre1	SOF	+< no@2 .	\N	\N	452388	452928	540	
240	sastre1	KEV	I@2 don't@2 know@2 something@2 Dutch@2 .	\N	\N	453549	456771	3222	
241	sastre1	SOF	+< xxx.	\N	\N	0	0	0	
242	sastre1	SOF	ay@3 how@2 pretty@2 .	\N	\N	456765	459174	2409	
243	sastre1	KEV	+< mmhm@0 .	\N	\N	0	0	0	
244	sastre1	SOF	I@2 have@2 a@2 friend@2 of@2 mine@2 that@2 has@2 two@2 miniature@2 rabbits@2 .	\N	\N	459150	462308	3158	
245	sastre1	KEV	yeah@2 .	\N	\N	462291	462674	383	
246	sastre1	SOF	he@2 keep@2 the(m)@2 [///] he@2 has@2 them@2 as@2 pets@2 .	\N	\N	462654	464436	1782	
247	sastre1	SOF	and@2 they@2 are@2 little@2 .	\N	\N	464430	465051	621	
248	sastre1	KEV	+< mmhm@0 .	\N	\N	464511	465028	517	
249	sastre1	SOF	they@2 don't@2 grow@2 much@2 .	\N	\N	465040	466102	1062	
250	sastre1	KEV	+< yeah@2 .	background noise-something may have dropped.	background noise-something may have dropped.	465040	466102	1062	
251	sastre1	SOF	&=cough .	\N	\N	466095	469113	3018	
252	sastre1	KEV	esta@3 # she@2 got@2 it@2 .	\N	\N	469090	470894	1804	
253	sastre1	SOF	+< and@2 I@2 have@2 some@2 [///] another@2 doctor@2 over@2 there@2 that@2 has@2 a@2 miniature@2 pig@2 .	\N	\N	476129	477017	888	
254	sastre1	KEV	yeah@2 .	\N	\N	473873	474761	888	
255	sastre1	SOF	that's@2 the@2 daughter's@2 pet@2 .	\N	\N	474732	476114	1382	
256	sastre1	SOF	it's@2 a@2 pig@2 .	\N	\N	476100	476820	720	
257	sastre1	KEV	+< that@2 that@2 real@2 real@2 pig@2 los@3 los@3 los@3 wi(th)@2 with@2 a@2 big@2 belly@2 ?	\N	\N	476530	480406	3876	
258	sastre1	SOF	+< mmhm@0 but@2 the@2 little@2 ones@2 the@2 miniature@2 ones@2 .	\N	\N	477739	479869	2130	
259	sastre1	SOF	yeah@2 .	\N	\N	480391	480914	523	
260	sastre1	KEV	yeah@2 .	\N	\N	480885	481256	371	
261	sastre1	KEV	how@2 cute@2 .	\N	\N	481227	482179	952	
262	sastre1	SOF	everybody@2 has@2 their@2 own@2 pet@2 .	\N	\N	482151	484613	2462	
263	sastre1	KEV	+< mmhm@0 .	\N	\N	0	0	0	
264	sastre1	KEV	how@2 is@2 everything@2 at@2 the@2 hospital@2 ?	\N	\N	484584	485820	1236	
265	sastre1	SOF	good@2 .	\N	\N	485806	487234	1428	
266	sastre1	KEV	sí@3 ?	\N	\N	487234	487803	569	
267	sastre1	SOF	+< it's@2 busy@2 but@2 it's@2 good@2 .	\N	\N	487234	488459	1225	
268	sastre1	KEV	mmhm@0 .	\N	\N	488436	488709	273	
269	sastre1	SOF	you@2 know@2 they@2 have@2 # more@2 work@2 # less@2 people@2 .	\N	\N	488704	493563	4859	
270	sastre1	KEV	yeah@2 and@2 less@2 money@2 .	\N	\N	493551	494712	1161	
271	sastre1	SOF	every@2 yeah@2 because@2 you@2 have@2 to@2 work@2 double@2 so@2 .	\N	\N	494688	497561	2873	
272	sastre1	KEV	+< yeah@2 .	\N	\N	496116	496545	429	
273	sastre1	KEV	yeah@2 yeah@2 we've@2 been@2 three@2 years@2 without@2 a@2 raise@2 .	\N	\N	497555	501825	4270	
274	sastre1	KEV	because@2 +/ .	\N	\N	501800	504476	2676	
275	sastre1	SOF	+< I@2 mean@2 what@2 we@2 do@2 is@2 they@2 give@2 us@2 like@2 a@2 raise@2 I@2 mean@2 is@2 # it@2 depends@2 on@2 how@2 much@2 you@2 make@2 .	\N	\N	503774	508334	4560	
276	sastre1	SOF	but@2 basically@2 what@2 it@2 does@2 is@2 then@2 every@2 year@2 they@2 put@2 up@2 the@2 insurances@2 so@2 high@2 .	\N	\N	508337	513915	5578	
277	sastre1	KEV	+< mmhm@0 .	\N	\N	0	0	0	
278	sastre1	SOF	that@2 the@2 little@2 money@2 that@2 you@2 are@2 making@2 +/ .	\N	\N	513910	515553	1643	
279	sastre1	KEV	they@2 take@2 it@2 away@2 .	\N	\N	515536	516302	766	
280	sastre1	SOF	+, it's@2 # they@2 take@2 it@2 away@2 with@2 the@2 insurance@2 so@2 really@2 you@2 are@2 not@2 seeing@2 much@2 .	\N	\N	515588	519123	3535	
281	sastre1	KEV	+< sí@3 .	\N	\N	517834	518159	325	
282	sastre1	SOF	it's@2 just@2 like@2 there's@2 no@2 raise@2 .	\N	\N	519140	520772	1632	
283	sastre1	KEV	así@3 mismo@3 nos@3 pasa@3 a@3 nosotros@3 .	\N	\N	520760	522194	1434	
284	sastre1	SOF	+< you@2 know@2 .	\N	\N	520772	521573	801	
285	sastre1	SOF	and@2 I'm@2 the@2 one@2 that@2 pays@2 the@2 insurance@2 because@2 my@2 husband's@2 insurance@2 is@2 much@2 more@2 expensive@2 .	\N	\N	522177	526661	4484	
286	sastre1	KEV	that's@2 it@2 yeah@2 .	\N	\N	526632	527532	900	
287	sastre1	SOF	yeah@2 because@2 since@2 I@2 work@2 for@2 xxx you@2 know@2 they@2 have@2 a@2 lot@2 more@2 .	\N	\N	527526	530255	2729	
288	sastre1	KEV	+< yeah@2 .	\N	\N	530034	530533	499	
289	sastre1	SOF	so@2 you@2 know@2 it's@2 +.. .	\N	\N	530532	532360	1828	
290	sastre1	KEV	mmhm@0 .	\N	\N	532349	532691	342	
291	sastre1	SOF	insurance@2 is@2 cheaper@2 but@2 still@2 .	\N	\N	532671	534424	1753	
292	sastre1	KEV	+< sí@3 .	\N	\N	532671	534424	1753	
293	sastre1	KEV	ahora@3 one@2 advantage@2 I@2 have@2 is@2 that@2 Pepita@0 since@2 she@2 is@2 working@2 for@2 the@2 county@2 she's@2 gonna@2 be@2 independent@2 .	\N	\N	534832	541304	6472	
294	sastre1	KEV	I'm@2 not@2 gonna@2 have@2 to@2 carry@2 her@2 # in@2 my@2 insurance@2 any@2 more@2 .	\N	\N	540917	544156	3239	
295	sastre1	SOF	yeah@2 .	\N	\N	544156	545172	1016	
296	sastre1	KEV	because@2 # she'll@2 have@2 her@2 own@2 insurance@2 and@2 for@2 her@2 # working@2 for@2 the@2 county@2 the@2 insurance@2 is@2 free@2 .	\N	\N	545151	550863	5712	
297	sastre1	KEV	and@2 for@2 Pepa@0 is@2 free@2 .	\N	\N	550850	552777	1927	
298	sastre1	KEV	and@2 I@2 pay@2 if@2 it's@2 just@2 for@2 me@2 it's@2 just@2 like@2 thirty@2 dollars@2 a@2 month@2 .	\N	\N	552765	555830	3065	
299	sastre1	SOF	no@2 that's@2 not@2 bad@2 .	\N	\N	555816	557006	1190	
300	sastre1	KEV	no@2 that's@2 not@2 bad@2 pero@3 # right@2 now@2 +/ .	\N	\N	556986	559396	2410	
301	sastre1	SOF	and@2 isn't@2 it@2 better@2 for@2 you@2 to@2 go@2 with@2 her@2 <with@2 the@2> [/] with@2 the@2 county@2 no@2 ?	\N	\N	559396	562853	3457	
302	sastre1	KEV	no@2 because@2 if@2 we@2 go@2 into@2 the@2 family@2 plan@2 her@2 plan@2 is@2 more@2 expensive@2 than@2 mine@2 .	\N	\N	562853	567300	4447	
303	sastre1	SOF	oh@0 I@2 see@2 .	\N	\N	567282	568036	754	
304	sastre1	KEV	that's@2 why@2 I@2 had@2 it@2 .	\N	\N	568019	568784	765	
305	sastre1	KEV	I@2 had@2 # the@2 insurance@2 under@2 me@2 # for@2 Pepita@0 .	\N	\N	568784	572888	4104	
306	sastre1	SOF	oh@0 ok@0 .	\N	\N	572861	573662	801	
307	sastre1	KEV	and@2 me@2 because@2 Pepa@0 had@2 her@2 own@2 .	\N	\N	573627	575791	2164	
308	sastre1	KEV	but@2 now@2 # that@2 Pepa@0 has@2 her@2 own@2 and@2 Pepita@0 is@2 gonna@2 get@2 her@2 own@2 then@2 I@2 can@2 get@2 mine@2 on@2 my@2 own@2 .	\N	\N	576329	583149	6820	
309	sastre1	KEV	it's@2 thirty@2 some@2 dollars@2 which@2 is@2 not@2 a@2 bad@2 deal@2 .	\N	\N	583165	585928	2763	
310	sastre1	SOF	but@2 <my@2 brother@2> [/] my@2 brother@2 was@2 telling@2 me@2 that@2 [/] that@2 [/] that@2 law@2 that@2 came@2 about@2 with@2 the@2 homestead@2 exemption@2 .	\N	\N	586008	593228	7220	
311	sastre1	KEV	mmhm@0 .	\N	\N	593236	593758	522	
312	sastre1	SOF	that@2 he@2 was@2 saying@2 that@2 # you@2 know@2 that@2 it's@2 not@2 worth@2 it@2 .	\N	\N	593746	597038	3292	
313	sastre1	SOF	he@2 was@2 telling@2 me@2 that@2 so@2 many@2 people@2 from@2 the@2 county@2 are@2 gonna@2 lose@2 # jobs@2 because@2 of@2 that@2 .	\N	\N	597050	602968	5918	
314	sastre1	SOF	they@2 are@2 gonna@2 take@2 you@2 know@2 they@2 are@2 gonna@2 cut@2 [//] the@2 cut@2 down@2 xxx is@2 gonna@2 be@2 so@2 drastic@2 .	\N	\N	602950	607089	4139	
315	sastre1	SOF	and@2 the@2 people@2 what@2 they@2 are@2 gonna@2 save@2 for@2 the@2 homestead@2 is@2 so@2 minimal@2 that@2 it@2 wasn't@2 worth@2 it@2 .	\N	\N	607090	612024	4934	
316	sastre1	SOF	and@2 I@2 said@2 well@2 .	\N	\N	612009	613228	1219	
317	sastre1	KEV	yeah@2 .	\N	\N	613199	613832	633	
318	sastre1	KEV	pero@3 +/ .	\N	\N	613808	615411	1603	
319	sastre1	SOF	+< everybody@2 is@2 looking@2 for@2 # a@2 buck@2 .	\N	\N	613808	616635	2827	
320	sastre1	KEV	pero@3 you@2 know@2 &e &e I@2 don't@2 agree@2 with@2 him@2 .	\N	\N	616626	619191	2565	
321	sastre1	SOF	no@2 ?	\N	\N	619180	621920	2740	
322	sastre1	KEV	in@2 two@2 thousand@2 and@2 three@2 # that@2 the@2 taxes@2 were@2 more@2 or@2 less@2 # what@2 they@2 are@2 now@2 .	\N	\N	621893	628275	6382	
323	sastre1	SOF	mmhm@0 .	\N	\N	628281	630388	2107	
324	sastre1	KEV	right@2 ?	\N	\N	630383	632420	2037	
325	sastre1	KEV	that@2 was@2 five@2 years@2 ago@2 .	\N	\N	632397	633959	1562	
326	sastre1	KEV	the@2 salaries@2 of@2 [/] of@2 employees@2 and@2 the@2 hiring@2 of@2 employees@2 have@2 not@2 increased@2 what@2 they@2 increased@2 in@2 revenues@2 .	\N	\N	633965	642947	8982	
327	sastre1	KEV	so@2 where@2 is@2 all@2 that@2 extra@2 money@2 that@2 they@2 made@2 when@2 the@2 [/] when@2 the@2 boom@2 was@2 going@2 on@2 ?	\N	\N	642919	648660	5741	
328	sastre1	KEV	xxx tú@3 sabes@3 ?	\N	\N	648638	650565	1927	
329	sastre1	KEV	it@2 was@2 misspent@2 .	\N	\N	650571	651871	1300	
330	sastre1	KEV	ah:@0 &p they@2 bought@2 things@2 that@2 maybe@2 they@2 didn't@2 need@2 to@2 buy@2 .	\N	\N	651871	655679	3808	
331	sastre1	KEV	they@2 made@2 +.. .	\N	\N	655676	656883	1207	
332	sastre1	KEV	tú@3 sabes@3 ?	\N	\N	656871	657986	1115	
333	sastre1	KEV	let's@2 bring@2 it@2 back@2 to@2 # where@2 we@2 are@2 [//] # donde@3 estamos@3 ahora@3 .	\N	\N	657986	661382	3396	
334	sastre1	KEV	tú@3 sabes@3 u(na)@3 [/] una@3 cosa@3 básica@3 # lo@3 [/] lo@3 [/] lo@3 necesario@3 .	A phone is ringing .	A phone is ringing .	661393	666455	5062	
335	sastre1	KEV	contéstalo@3 [/] contéstalo@3 si@3 quieres@3 .	\N	\N	666444	667762	1318	
336	sastre1	KEV	así@3 hablas@3 un@3 poco@3 xxx .	\N	\N	667769	670120	2351	
337	sastre1	SOF	+< hello@2 .	\N	\N	669539	670265	726	
338	sastre1	SOF	hey@2 baby@2 are@2 you@2 back@2 ?	\N	\N	670270	672767	2497	
348	sastre1	SOF	ok@0 .	phone conversation.	phone conversation.	699150	703510	4360	
339	sastre1	SOF	oh@0 but@2 I'm@2 not@2 home@2 .	you can hear the other person on the phone.	you can hear the other person on the phone.	672766	677729	4963	
340	sastre1	SOF	I'm@2 in@2 the@2 xxx .	\N	\N	677707	679890	2183	
341	sastre1	SOF	estoy@3 haciendo@3 una@3 cosa@3 ahí@3 que@3 necesitaba@3 mi@3 +.. .	\N	\N	679873	684516	4643	
342	sastre1	SOF	cómo@3 se@3 llama@3 esto@3 &e cómo@3 es@3 que@3 se@3 llama@3 esto@3 que@3 estamos@3 haciendo@3 aquí@3 un@3 +.. .	\N	\N	684510	689794	5284	
343	sastre1	KEV	es@3 un@3 estudio@3 para@3 la@3 universidad@3 .	\N	\N	689777	693202	3425	
344	sastre1	SOF	un@3 estudio@3 para@3 la@3 universidad@3 .	\N	\N	693138	694879	1741	
345	sastre1	SOF	y@3 necesitamos@3 hablar@3 por@3 thirty@2 minutes@2 .	\N	\N	694850	697713	2863	
346	sastre1	KEV	+< xxx .	\N	\N	0	0	0	
347	sastre1	SOF	ya@3 ahorita@3 estamos@3 almost@2 over@2 .	\N	\N	697713	699147	1434	
349	sastre1	SOF	ah@0 se@3 está@3 poniendo@3 xxx dile@3 .	\N	\N	703506	706901	3395	
350	sastre1	SOF	uhoh@0 ya@3 empezó@3 los@3 síntomas@3 de@3 xxx .	\N	\N	706890	712413	5523	
351	sastre1	SOF	dile@3 que@3 cuándo@3 se@3 va@3 a@3 comprar@3 la@3 motocicleta@3 .	\N	\N	712403	715038	2635	
352	sastre1	SOF	alright@2 I'll@2 talk@2 to@2 you@2 bye@2 .	\N	\N	715037	719797	4760	
353	sastre1	SOF	home@2 .	\N	\N	719792	721534	1742	
354	sastre1	KEV	mmhm@0 .	\N	\N	721526	725212	3686	
355	sastre1	KEV	se@3 acabó@3 .	\N	\N	725206	725729	523	
356	sastre1	SOF	+< he@2 finished@2 playing@2 golf@2 now@2 .	\N	\N	725206	726820	1614	
357	sastre1	KEV	&e &e they@2 are@2 still@2 playing@2 ?	\N	\N	726805	728071	1266	
358	sastre1	SOF	no@3 no@3 <he@2 &t> [//] he@2 is@2 coming@2 back@2 now@2 .	\N	\N	728065	729818	1753	
359	sastre1	KEV	+< xxx .	\N	\N	728994	729499	505	
360	sastre1	SOF	I@2 [/] I@2 don't@2 think@2 they@2 played@2 all@2 eighteen@2 they@2 played@2 like@2 probably@2 half@2 .	\N	\N	729794	732987	3193	
361	sastre1	KEV	la@3 mitad@3 nueve@3 .	\N	\N	732981	733735	754	
362	sastre1	KEV	mmhm@0 .	\N	\N	733709	735119	1410	
363	sastre1	SOF	pero@3 my@2 friend@2 bought@2 a@2 B_M_W@2 and@2 I@2 bought@2 him@2 a@2 xxx because@2 I@2 have@2 another@2 friend@2 at@2 work@2 that@2 he@2 is@2 like@2 oh@0 man@2 he@2 is@2 crazy@2 .	\N	\N	735108	741460	6352	
364	sastre1	KEV	+< sí@3 .	\N	\N	735111	735883	772	
365	sastre1	KEV	mmhm@0 .	\N	\N	741460	741680	220	
366	sastre1	SOF	but@2 he@2 is@2 crazy@2 crazy@2 crazy@2 crazy@2 .	\N	\N	741680	744397	2717	
367	sastre1	SOF	I@2 don't@2 know@2 how@2 his@2 wife@2 puts@2 up@2 with@2 him@2 you@2 know@2 .	\N	\N	744397	747967	3570	
368	sastre1	KEV	&=laugh .	\N	\N	747954	748796	842	
369	sastre1	SOF	he@2 is@2 like@2 one@2 of@2 these@2 wild@2 guys@2 .	\N	\N	748773	750578	1805	
370	sastre1	SOF	think@2 e(very)@2 [//] he@2 loves@2 every@2 woman@2 every@2 woman@2 loves@2 him@2 .	\N	\N	750559	754820	4261	
371	sastre1	KEV	&=laugh .	\N	\N	754805	755362	557	
372	sastre1	SOF	and@2 he@2 bought@2 himself@2 a@2 Beamer@2 .	\N	\N	755060	756958	1898	
373	sastre1	SOF	and@2 now@2 he@2 bought@2 himself@2 a@2 motorcycle@2 .	\N	\N	756947	760110	3163	
374	sastre1	KEV	+< qué@3 edad@3 tiene@3 cincuenta@3 ?	\N	\N	757696	760116	2420	
375	sastre1	SOF	está@3 en@3 los@3 cuarenta@3 y@3 pico@3 la@3 edad@3 mala@3 esa@3 .	\N	\N	760088	762950	2862	
376	sastre1	KEV	+< mmhm@0 yeah@2 .	\N	\N	761505	762834	1329	
377	sastre1	KEV	mmhm@0 .	\N	\N	762937	766078	3141	
378	sastre1	SOF	and@2 he@2 is@2 a@2 gigolo@2 you@2 know@2 .	\N	\N	766036	767522	1486	
379	sastre1	SOF	he@2 is@2 one@2 of@2 these@2 guys@2 that's@2 crazy@2 .	\N	\N	767528	770100	2572	
380	sastre1	KEV	+< xxx .	\N	\N	0	0	0	
381	sastre1	KEV	xxx saw@2 an@2 american@2 film@2 .	\N	\N	770057	771787	1730	
382	sastre1	SOF	&=cough .	\N	\N	771775	772054	279	
383	sastre1	SOF	yeah@2 .	\N	\N	772030	772355	325	
384	sastre1	KEV	sí@3 .	\N	\N	772350	773162	812	
385	sastre1	SOF	<he@2 is@2 um@2> [//] he@2 is@2 a@2 physician@2 # from@2 Cuba@2 .	\N	\N	772350	775810	3460	
386	sastre1	SOF	and@2 he@2 is@2 er@0 working@2 with@2 us@2 over@2 there@2 and@2 as@2 a@2 case@2 manager@2 .	\N	\N	775812	780411	4599	
387	sastre1	SOF	and@2 he@2 is@2 studying@2 for@2 his@2 R_N@2 to@2 see@2 if@2 he@2 can@2 get@2 it@2 now@2 .	\N	\N	780376	783197	2821	
388	sastre1	KEV	sí@3 .	\N	\N	783127	783621	494	
389	sastre1	KEV	you@2 are@2 still@2 at@2 xxx hospital@2 right@2 ?	\N	\N	783605	785289	1684	
390	sastre1	SOF	yeah@2 .	\N	\N	785270	785926	656	
391	sastre1	KEV	mmhm@0 .	\N	\N	785915	787093	1178	
392	sastre1	SOF	I@2 haven't@2 moved@2 from@2 there@2 because@2 it's@2 so@2 convenient@2 .	\N	\N	787083	789027	1944	
393	sastre1	SOF	and@2 you@2 know@2 I@2 xxx # other@2 offers@2 .	\N	\N	789004	791639	2635	
394	sastre1	KEV	+< hmm@0 .	\N	\N	789292	789524	232	
395	sastre1	SOF	but@2 don't@2 wanna@2 go@2 in@2 the@2 street@2 [?] any_more@2 .	\N	\N	791618	793824	2206	
396	sastre1	KEV	yeah@2 .	\N	\N	793800	794648	848	
397	sastre1	SOF	you@2 know@2 because@2 with@2 sales@2 you@2 can@2 do@2 a@2 lot@2 you@2 can@2 make@2 a@2 lot@2 more@2 money@2 .	\N	\N	794160	797045	2885	
398	sastre1	KEV	yeah@2 .	\N	\N	797008	797350	342	
399	sastre1	SOF	in@2 the@2 industry@2 .	\N	\N	797350	798436	1086	
400	sastre1	KEV	mmhm@0 .	\N	\N	798420	798774	354	
401	sastre1	SOF	but@2 it's@2 just@2 that@2 you@2 have@2 to@2 drive@2 around@2 so@2 much@2 .	\N	\N	798750	801293	2543	
402	sastre1	SOF	you@2 know@2 cars@2 everything@2 is@2 so@2 expensive@2 .	\N	\N	801403	804041	2638	
403	sastre1	KEV	+< no@2 no@2 y@3 .	\N	\N	802064	803730	1666	
404	sastre1	KEV	right@2 .	\N	\N	804009	804445	436	
405	sastre1	KEV	it's@2 not@2 worth@2 it@2 .	\N	\N	804431	805441	1010	
406	sastre1	KEV	it's@2 not@2 worth@2 it@2 being@2 on@2 the@2 streets@2 .	\N	\N	805418	807212	1794	
407	sastre1	SOF	+< I@2 go@2 there@2 I@2 do@2 my@2 eight@2 hours@2 .	\N	\N	805610	807252	1642	
408	sastre1	SOF	and@2 I@2 get@2 out@2 and@2 I@2 go@2 pick@2 up@2 my@2 kid@2 and@2 that's@2 it@2 I'm@2 home@2 .	\N	\N	807258	809807	2549	
409	sastre1	KEV	+< mmhm@0 .	\N	\N	809125	809462	337	
410	sastre1	SOF	you@2 know@2 .	\N	\N	809800	810235	435	
411	sastre1	KEV	mmhm@0 .	\N	\N	810235	810770	535	
412	sastre1	KEV	no@3 vale@3 la@3 pena@3 estar@3 en@3 la@3 calle@3 como@3 está@3 la@3 calle@3 hoy@3 .	\N	\N	810744	813101	2357	
413	sastre1	KEV	donde@3 quieran@3 te@3 roban@3 .	\N	\N	813064	814695	1631	
414	sastre1	SOF	+< no:@3 .	\N	\N	813064	814695	1631	
415	sastre1	SOF	te@3 asaltan@3 te@3 matan@3 por@3 cualquier@3 cosa@3 .	\N	\N	814672	817744	3072	
416	sastre1	KEV	+< er@0 te@3 asaltan@3 # exacto@3 .	\N	\N	814672	817744	3072	
417	sastre1	SOF	mira@3 ahí@3 el@3 tú@3 viste@3 como@3 mataron@3 a@3 la@3 gente@3 esa@3 ahí@3 en@3 el@3 Chili's@0 .	Chili's is an American restaurant.	Chili's is an American restaurant.	817736	821323	3587	
418	sastre1	KEV	+< la@3 del@3 Chili's@3 sí@3 .	\N	\N	820175	821446	1271	
419	sastre1	KEV	sí@3 .	\N	\N	821311	823836	2525	
420	sastre1	SOF	pero@3 mi@3 [//] la@3 [/] la@3 gente@3 que@3 vive@3 aquí@3 en@3 Miami_Lakes@0 they@2 get@2 very@2 upset@2 because@2 of@2 that@2 because@2 they@2 say@2 que@3 Chili's@0 was@2 in@2 Miami_Lakes@0 .	\N	\N	823795	829779	5984	
421	sastre1	SOF	and@2 Chili's@0 is@2 not@2 in@2 Miami_Lakes@0 .	\N	\N	829763	831760	1997	
422	sastre1	KEV	+< xxx .	\N	\N	830668	831435	767	
423	sastre1	SOF	la@3 cincuenta@3 y@3 siete@3 no@3 es@3 Miami_Lakes@0 entienden@3 ?	\N	\N	831753	835997	4244	
424	sastre1	KEV	+< no@2 is@2 [/] is@2 [/] <is@2 not@2> [//] is@2 not@2 tha(t)@2 [/] that@2 [/] that's@2 actually@2 unincorporated@2 Dade_County@0 .	\N	\N	833013	837477	4464	
425	sastre1	SOF	that's@2 Miramar@0 .	\N	\N	837473	839302	1829	
426	sastre1	KEV	+< that's@2 +.. . .	\N	\N	837473	839302	1829	
427	sastre1	SOF	no@2 no@2 that's@2 er@0 Miami_Gardens@0 no@2 ?	\N	\N	839296	841989	2693	
428	sastre1	KEV	+< no@2 that's@2 unincorporate(d)@2 [/] no@2 that's@2 incorporated@2 Dade_County@0 that's@2 Dade_County@0 .	\N	\N	839360	844114	4754	
429	sastre1	SOF	so@2 what@2 [/] what@2 is@2 it@2 called@2 ?	\N	\N	844075	846380	2305	
430	sastre1	KEV	Dade_County@0 unincorporated@2 Dade_County@0 .	\N	\N	846346	848395	2049	
431	sastre1	SOF	so@2 that's@2 Dade@0 +/ .	\N	\N	848366	850873	2507	
432	sastre1	KEV	+< it's@2 like@2 what@2 we@2 were@2 # before@2 .	\N	\N	848366	850873	2507	
433	sastre1	KEV	before@2 we@2 (be)came@2 a@2 town@2 +/ .	\N	\N	850862	852978	2116	
434	sastre1	SOF	yeah@2 .	\N	\N	852955	853529	574	
435	sastre1	KEV	we@2 were@2 unincorporated@2 Dade_County@0 .	\N	\N	853529	855387	1858	
436	sastre1	KEV	the@2 subdivision@2 was@2 Miami_Lakes@0 pero@3 it@2 was@2 unincorporated@2 Dade_County@0 .	\N	\N	855366	859255	3889	
437	sastre1	KEV	then@2 we@2 became@2 a@2 town@2 .	\N	\N	859244	860666	1422	
438	sastre1	KEV	they@2 are@2 not@2 a@2 town@2 they@2 are@2 not@2 a@2 city@2 .	\N	\N	860639	862311	1672	
439	sastre1	KEV	they@2 are@2 just@2 unincorporated@2 Dade_County@0 .	\N	\N	862293	864528	2235	
440	sastre1	SOF	but@2 do(n't)@2 [/] don't@2 they@2 call@2 that@2 area@2 a@2 certain@2 area@2 and@2 they@2 don't@2 they@2 have@2 a@2 name@2 .	\N	\N	864521	869676	5155	
441	sastre1	KEV	+< that's@2 Carol_City@0 .	\N	\N	868736	869862	1126	
442	sastre1	SOF	Carol_City@0 right@2 ?	\N	\N	869847	871013	1166	
443	sastre1	KEV	Carol_City@0 pero@3 +/ .	\N	\N	871002	871803	801	
444	sastre1	SOF	+< ok@0 .	\N	\N	871002	871896	894	
445	sastre1	KEV	Carol_City@0 is@2 not@2 a@2 city@2 # or@2 a@2 town@2 .	\N	\N	871904	874725	2821	
446	sastre1	KEV	it's@2 a@2 subdivision@2 .	\N	\N	874674	876049	1375	
447	sastre1	SOF	ok@0 like@2 we@2 were@2 .	\N	\N	876018	877226	1208	
448	sastre1	KEV	como@3 Miami@0 like@2 we@2 were@2 .	\N	\N	876018	877760	1742	
449	sastre1	SOF	ah@0 ok@0 .	\N	\N	877741	879581	1840	
450	sastre1	KEV	right@2 .	\N	\N	877741	879581	1840	
451	sastre1	KEV	tú@3 sabes@3 .	\N	\N	879558	881375	1817	
452	sastre1	KEV	pero@3 cuando@3 se@3 refiere@3 .	\N	\N	881359	883141	1782	
453	sastre1	SOF	+< just@2 like@2 after@2 that@2 palmero@3 [?] .	\N	\N	881504	883832	2328	
454	sastre1	SOF	that's@2 not@2 # Miami_Lakes@0 .	\N	\N	883821	885423	1602	
455	sastre1	SOF	Navarro@0 .	\N	\N	885411	886682	1271	
456	sastre1	SOF	er@0 los@3 Burger_Kings@0 and@2 McDonalds@0 todo@3 eso@3 pa(ra)@3 allá@3 es@3 .	\N	\N	886671	889833	3162	
457	sastre1	KEV	+< no@3 .	\N	\N	886671	889833	3162	
458	sastre1	KEV	unincorporated@2 Dade_County@0 .	\N	\N	889793	891169	1376	
459	sastre1	SOF	is@2 Miami_Gardens@0 .	\N	\N	891179	892753	1574	
460	sastre1	KEV	no@3 no@3 no@3 Miami_Gardens@0 doesn't@2 come@2 across@2 fifty@2 seventh@2 avenue@2 .	\N	\N	892727	898004	5277	
461	sastre1	SOF	+< tampoco@3 .	\N	\N	892727	898004	5277	
462	sastre1	KEV	that's@2 sixty@2 seventh@2 avenue@2 .	\N	\N	897989	900079	2090	
463	sastre1	KEV	if@2 you@2 are@2 gonna@2 call@2 that@2 anything@2 eso@3 es@3 la@3 zona@3 de@3 Palms_Springs_North@0 .	\N	\N	900073	903696	3623	
464	sastre1	SOF	ok@0 .	\N	\N	903664	905405	1741	
465	sastre1	KEV	eso@3 es@3 lo@3 que@3 le@3 llaman@3 que@3 no@3 es@3 Palms_Springs_North@0 because@2 Palms_Springs_North@0 empieza@3 en@3 la@3 setenta@3 y@3 nueve@3 que@3 es@3 el@3 xxx para@3 allá@3 .	\N	\N	905376	912731	7355	
466	sastre1	KEV	así@3 que@3 esto@3 es@3 un@3 pequeño@3 pocket@2 que@3 hay@3 ahí@3 .	\N	\N	912693	915752	3059	
467	sastre1	SOF	que@3 .	\N	\N	915721	917585	1864	
468	sastre1	KEV	que:@3 +/ .	\N	\N	917573	918299	726	
469	sastre1	SOF	+< y@3 entonces@3 por@3 eso@3 le@3 dicen@3 Miami_Lakes@0 .	\N	\N	917852	919860	2008	
470	sastre1	KEV	+< er@0 le@3 llaman@3 [//] le@3 dicen@3 Miami_Lakes@3 because@2 <es@3 la@3> [//] es@3 el@3 pueblo@3 # o@3 la@3 ciudad@3 más@3 cerca@3 a@3 donde@3 está@3 # le@3 dicen@3 Miami_Lakes@0 .	\N	\N	917852	926336	8484	
471	sastre1	KEV	tú@3 sabes@3 ?	\N	\N	926316	928051	1735	
472	sastre1	SOF	pero@3 fíjate@3 una@3 cosa@3 .	\N	\N	928028	928884	856	
473	sastre1	SOF	siendo@3 nosotros@3 Miami_Lakes@0 y@3 siendo@3 incorporados@3 tú@3 pones@3 +.. .	\N	\N	928872	932425	3553	
474	sastre1	SOF	three@2 three@2 zero@2 one@2 four@2 y@3 sigues@3 saliendo@3 en@3 Hyaleah@2 .	\N	\N	932408	936256	3848	
475	sastre1	KEV	+< sales@3 a@3 Hyaleah@2 [/] sales@3 a@3 Hyaleah@2 .	\N	\N	932408	936256	3848	
476	sastre1	KEV	yeah@2 .	\N	\N	936229	936432	203	
477	sastre1	SOF	why@2 don't@2 we@2 get@2 our@2 own@2 zip@2 code@2 ?	\N	\N	936414	937796	1382	
478	sastre1	KEV	we@2 are@2 getting@2 our@2 own@2 zip@2 code@2 tres@3 tres@3 cero@3 cuatro@3 .	\N	\N	938716	940824	2108	
479	sastre1	KEV	tres@3 tres@3 u(no)@3 [//] cero@3 uno@3 cuatro@3 .	\N	\N	940784	942815	2031	
480	sastre1	SOF	no@3 porque@3 tres@3 tres@3 uno@3 cuatro@3 coge@3 mitad@3 de@3 Hyaleah@2 entonces@3 +/ .	\N	\N	942796	947284	4488	
481	sastre1	KEV	+< bueno@3 pero@3 supuestamente@3 el@3 cambio@3 viene@3 en@3 que@3 # er@0 tres@3 tres@3 cero@3 uno@3 cuatro@3 va@3 a@3 ser@3 Miami_Lakes@0 .	\N	\N	946481	953324	6843	
482	sastre1	SOF	y@3 cuándo@3 ?	\N	\N	953318	954253	935	
483	sastre1	KEV	no@3 sé@3 .	\N	\N	954241	955129	888	
484	sastre1	KEV	pero@3 eso@3 lo@3 dijo@3 +.. .	\N	\N	955104	956474	1370	
485	sastre1	SOF	(be)cause@2 I@2 keep@2 telling@2 like@2 if@2 you@2 call@2 a@2 credit@2 card@2 you@2 call@2 somebody@2 and@2 you@2 give@2 them@2 an@2 address@2 and@2 you@2 tell@2 them@2 Miami_Lakes@0 they@2 are@2 like@2 no@2 madam@2 and@2 ok@0 Hyaleah@0 .	\N	\N	956465	964986	8521	
486	sastre1	KEV	+< er@0 mmhm@0 .	\N	\N	0	0	0	
487	sastre1	KEV	right@2 .	\N	\N	965004	965625	621	
488	sastre1	SOF	because@2 if@2 not@2 they@2 don't@2 know@2 where@2 to@2 put@2 you@2 know@2 they@2 don't@2 know@2 where@2 to@2 send@2 you@2 the@2 stuff@2 .	\N	\N	965584	968725	3141	
489	sastre1	KEV	+< sí@3 .	\N	\N	967135	967953	818	
490	sastre1	KEV	sí@3 pero@3 fíjate@3 # eso@3 no@3 es@3 una@3 cosa@3 que@3 tiene@3 que@3 hacer@3 el@3 town@2 of@2 Miami_Lakes@0 .	\N	\N	968724	973275	4551	
491	sastre1	KEV	eso@3 es@3 una@3 cosa@3 que@3 la@3 tiene@3 que@3 hacer@3 el@3 gobierno@3 federal@3 en@3 la@3 parte@3 de@3 [//] del@3 [/] del@3 post@2 office@2 [/] del@3 correo@3 .	\N	\N	973239	979050	5811	
492	sastre1	SOF	mmhm@0 .	\N	\N	979049	979838	789	
493	sastre1	KEV	ellos@3 son@3 los@3 que@3 tienen@3 que@3 hacer@3 esos@3 cambios@3 .	\N	\N	979784	981572	1788	
494	sastre1	KEV	y@3 supuestamente@3 they@2 are@2 in@2 the@2 process@2 de@3 hacer@3 ese@3 cambio@3 .	\N	\N	981558	984931	3373	
700	sastre1	SOF	xxx .	\N	\N	1443614	1445071	1457	
495	sastre1	KEV	de@3 cambiar@3 # del@3 correo@3 de@3 que@3 tres@3 tres@3 cero@3 uno@3 cuatro@3 va@3 a@3 ser@3 # solamente@3 # Miami_Lakes@0 todo@3 lo@3 que@3 es@3 Miami_Lakes@0 lo@3 que@3 está@3 dentro@3 de@3 [/] # de@3 el@3 town@2 de@3 Miami_Lakes@0 que@3 incluye@3 del@3 lado@3 de@3 allá@3 pal@3 metro@3 Royal_Oaks@0 ahora@3 es@3 Miami_Lakes@0 .	\N	\N	984916	1004658	19742	
496	sastre1	SOF	+< ok@0 .	\N	\N	0	0	0	
497	sastre1	SOF	right@2 .	\N	\N	1004724	1005258	534	
498	sastre1	KEV	y@3 eso@3 ahora@3 no@3 es@3 tres@3 tres@3 cero@3 uno@3 cuatro@3 eso@3 es@3 tres@3 tres@3 uno@3 cero@3 cin(co)@3 uno@3 quince@3 .	\N	\N	1005244	1011224	5980	
499	sastre1	SOF	correcto@3 .	\N	\N	1011202	1012055	853	
500	sastre1	KEV	+< es@3 otro@3 zip@2 code@2 .	\N	\N	1011799	1012937	1138	
501	sastre1	KEV	entonces@3 ese@3 zip@2 code@2 lo@3 van@3 a@3 cambiar@3 también@3 a@3 que@3 sea@3 tres@3 tres@3 cero@3 uno@3 cuatro@3 porque@3 va@3 a@3 ser@3 Miam(i)@0 lo@3 que@3 está@3 dentro@3 de@3 la@3 ciudad@3 de@3 Miami_Lakes@0 .	\N	\N	1012935	1020405	7470	
502	sastre1	KEV	<es@3 eso@3> [?] .	\N	\N	1020393	1020811	418	
503	sastre1	KEV	eso@3 fue@3 lo@3 que@3 yo@3 oí@3 y@3 lo@3 que@3 dijeron@3 .	\N	\N	1020806	1022466	1660	
504	sastre1	KEV	si@3 lo@3 hacen@3 o@3 no@3 lo@3 hacen@3 .	\N	\N	1022442	1023899	1457	
505	sastre1	SOF	pero@3 va@3 a@3 ser@3 tremendo@3 rollo@3 pa(ra)@3 la@3 gente@3 .	\N	\N	1023888	1025699	1811	
506	sastre1	KEV	+< sí@3 .	\N	\N	1025327	1025728	401	
507	sastre1	SOF	&=coughs .	\N	\N	1025705	1027325	1620	
508	sastre1	KEV	er:@0 pero@3 bueno@3 .	\N	\N	1027319	1030796	3477	
509	sastre1	SOF	hoy@3 me@3 llegaron@3 las@3 [/] las@3 planillas@3 para@3 el@3 W@0 ten@2 forty@2 .	\N	\N	1030787	1037227	6440	
510	sastre1	SOF	sabes@3 es@3 la@3 ten@2 forty@2 .	\N	\N	1037217	1038877	1660	
511	sastre1	KEV	xxx .	\N	\N	1038953	1039249	296	
512	sastre1	SOF	la@3 que@3 tienen@3 que@3 hacer@3 ahora@3 la@3 [//] los@3 viejitos@3 que@3 están@3 retirados@3 .	\N	\N	1039220	1042140	2920	
513	sastre1	KEV	ah@0 sí@3 .	\N	\N	1042119	1043907	1788	
514	sastre1	SOF	+< para@3 que@3 sepan@3 .	\N	\N	1042119	1043907	1788	
515	sastre1	KEV	sí@3 .	\N	\N	1043860	1045068	1208	
516	sastre1	SOF	para@3 que@3 puedan@3 # entonces@3 mandarles@3 los@3 trescientos@3 dólares@3 .	\N	\N	1045048	1048508	3460	
517	sastre1	KEV	+< para@3 que@3 le@3 den@3 los@3 quinientos@3 pesos@3 sí@3 .	\N	\N	1045048	1048508	3460	
518	sastre1	KEV	sí@3 son@3 las@3 ten@2 forty@2 or@2 ten@2 ninety@2 nine@2 ?	\N	\N	1048479	1051451	2972	
519	sastre1	SOF	ten@2 forty@2 .	\N	\N	1051410	1052653	1243	
520	sastre1	SOF	yo@3 la@3 tengo@3 ahí@3 en@3 la@3 casa@3 .	\N	\N	1052635	1054098	1463	
521	sastre1	KEV	mmhm@0 .	\N	\N	1054092	1054667	575	
522	sastre1	KEV	ya@3 a@3 mi@3 hermano@3 se@3 lo@3 hizo@3 mi@3 padre@3 .	\N	\N	1054674	1057443	2769	
523	sastre1	SOF	ya@3 se@3 lo@3 hicieron@3 ?	\N	\N	1057443	1058319	876	
524	sastre1	KEV	sí@3 porque@3 ellos@3 normalmente@3 no@3 hacen@3 income@2 taxes@2 porque@3 están@3 retirados@3 .	\N	\N	1058296	1061146	2850	
525	sastre1	SOF	+< porque@3 tiene@3 que@3 +/ .	\N	\N	1060113	1060908	795	
526	sastre1	SOF	correcto@3 pero@3 arriba@3 hay@3 que@3 ponerle@3 un@3 nombre@3 .	\N	\N	1060902	1062934	2032	
527	sastre1	KEV	mmhm@0 .	\N	\N	1062945	1064437	1492	
528	sastre1	KEV	sí@3 .	\N	\N	1064389	1064906	517	
529	sastre1	SOF	+< tienes@3 que@3 ponerle@3 algo@3 arriba@3 de@3 la@3 planilla@3 pa(ra)@3 que@3 sepan@3 que@3 es@3 para@3 eso@3 .	\N	\N	1064662	1067773	3111	
530	sastre1	KEV	exacto@3 .	\N	\N	1067756	1068412	656	
531	sastre1	SOF	<ya@3 se@3 lo@3 puso@3> [//] ya@3 se@3 lo@3 hizo@3 ?	\N	\N	1068382	1070304	1922	
532	sastre1	KEV	mmhm@0 ella@3 se@3 lo@3 está@3 haciendo@3 xxx ese@3 es@3 el@3 campo@3 de@3 ella@3 .	\N	\N	1068527	1072335	3808	
533	sastre1	SOF	oh@0 ok@0 .	\N	\N	1072330	1073172	842	
534	sastre1	KEV	ella@3 es@3 an@2 accountant@2 .	\N	\N	1073160	1074617	1457	
535	sastre1	KEV	y@3 ella@3 es@3 la@3 que@3 le@3 hace@3 +/ .	\N	\N	1074588	1076022	1434	
536	sastre1	SOF	+< no@3 porque@3 yo@3 te@3 dij(e)@3 porque@3 como@3 la@3 prima@3 de@3 Manuel@0 trabaja@3 para@3 el@3 I_R_S@2 .	\N	\N	1074632	1078423	3791	
537	sastre1	SOF	ell(a)@3 [/] ella@3 nos@3 mandó@3 las@3 planillas@3 y@3 nos@3 mandó@3 las@3 copias@3 de@3 cómo@3 llenárselo@3 .	\N	\N	1078415	1081915	3500	
538	sastre1	SOF	porque@3 yo@3 tengo@3 las@3 dos@3 viejitas@3 mías@3 que@3 ya@3 ellas@3 no@3 hacen@3 +/ .	\N	\N	1081858	1084883	3025	
539	sastre1	KEV	si@3 acaso@3 hazme@3 [/] hazme@3 cuando@3 tengas@3 un@3 chance@2 hazme@3 una@3 copia@3 .	\N	\N	1083536	1087448	3912	
540	sastre1	KEV	de:@3 cómo@3 se@3 llena@3 .	\N	\N	1087439	1090672	3233	
541	sastre1	SOF	yo@3 tengo@3 ahí@3 ella@3 me@3 él@3 él@3 me@3 dio@3 una@3 copia@3 que@3 ahora@3 yo@3 tengo@3 que@3 hacérsela@3 pero@3 yo@3 te@3 la@3 voy@3 a@3 hacer@3 una@3 copia@3 esa@3 .	\N	\N	1090621	1095410	4789	
542	sastre1	KEV	+< xxx .	\N	\N	0	0	0	
543	sastre1	KEV	esa@3 exacto@3 .	\N	\N	1095377	1096225	848	
544	sastre1	SOF	ok@0 .	\N	\N	1096196	1096741	545	
545	sastre1	SOF	yo@3 te@3 la@3 hago@3 mañana@3 en@3 el@3 trabajo@3 .	\N	\N	1096730	1098430	1700	
546	sastre1	KEV	+< xxx porque@3 yo@3 sé@3 que@3 xxx le@3 hace@3 xxx .	\N	\N	1096730	1099684	2954	
547	sastre1	SOF	+< pero@3 yo@3 sé@3 que@3 hay@3 que@3 ponerle@3 algo@3 arriba@3 # en@3 la@3 planilla@3 .	\N	\N	1099340	1102710	3370	
548	sastre1	KEV	de@3 que@3 es@3 retirado@3 o@3 algo@3 de@3 eso@3 .	\N	\N	1102704	1104394	1690	
549	sastre1	SOF	tiene@3 un@3 nombre@3 ahora@3 se@3 me@3 olvidó@3 pero@3 tienes@3 que@3 ponerle@3 eso@3 arriba@3 <para@3 que@3> [//] porque@3 si@3 no@3 .	\N	\N	1104382	1108463	4081	
550	sastre1	KEV	sí@3 .	\N	\N	1108436	1110177	1741	
551	sastre1	KEV	es@3 igual@3 que@3 cuando@3 uno@3 manda@3 los@3 cheques@3 al@3 I_R_S@2 .	\N	\N	1110162	1112339	2177	
552	sastre1	SOF	mmhm@0 .	\N	\N	1112327	1112774	447	
553	sastre1	KEV	hay@3 que@3 poner@3 el@3 ten@2 ninety@2 nine@2 xxx con@3 el@3 número@3 de@3 social@2 security@2 y@3 toda@3 esa@3 cosa@3 .	\N	\N	1112751	1117917	5166	
554	sastre1	KEV	que@3 si@3 no@3 no@3 lo@3 acept(an)@3 no@3 no@3 es@3 que@3 no@3 lo@3 acepten@3 si@3 no@3 no@3 te@3 lo@3 acreditan@3 los@3 [/] los@3 xxx tienen@3 que@3 acreditar@3 .	\N	\N	1117897	1123408	5511	
555	sastre1	SOF	+< adonde@3 tienen@3 que@3 acreditarlo@3 .	\N	\N	1122006	1123478	1472	
556	sastre1	KEV	mmhm@0 .	\N	\N	1123460	1126682	3222	
557	sastre1	KEV	ya@3 creo@3 que@3 falta@3 poco@3 para@3 que@3 se@3 acaben@3 los@3 treinta@3 minutos@3 no@3 ?	\N	\N	1126684	1129218	2534	
558	sastre1	SOF	bueno@3 yo@3 no@3 sé@3 llevamos@3 hablando@3 tiempo@3 .	\N	\N	1129216	1132043	2827	
559	sastre1	KEV	+< no@3 sé@3 # casi@3 casi@3 la@3 media@3 hora@3 ya@3 .	\N	\N	1130036	1133095	3059	
561	sastre1	SOF	y@3 ya@3 se@3 está@3 haciendo@3 de@3 noche@3 ya@3 mañana@3 hay@3 que@3 ir@3 a@3 trabajar@3 .	\N	\N	1134406	1137320	2914	
562	sastre1	KEV	+< mmhm@0 sí@3 .	\N	\N	1134406	1137320	2914	
563	sastre1	KEV	hay@3 que@3 cocinar@3 .	\N	\N	1137299	1138989	1690	
564	sastre1	SOF	no@3 yo@3 ya@3 cociné@3 .	\N	\N	1138971	1141333	2362	
565	sastre1	KEV	+< ya@3 cocinaste@3 nosotros@3 comimos@3 nosotros@3 fuimos@3 a@3 Bass@2 Pro@2 shop@2 .	\N	\N	1138971	1142924	3953	
566	sastre1	SOF	+< sí@3 .	\N	\N	1138971	1142924	3953	
567	sastre1	SOF	where@2 ?	\N	\N	1142907	1144028	1121	
568	sastre1	KEV	Bass@2 Pro@2 shop@2 .	\N	\N	1144010	1144782	772	
569	sastre1	SOF	ah@0 ok@0 .	\N	\N	1144777	1145241	464	
570	sastre1	KEV	allá@3 en@3 Grifeny@0 xxx ninety@2 five@2 .	\N	\N	1145229	1147633	2404	
571	sastre1	KEV	eso@3 que@3 es@3 cuestión@3 de@3 casería@3 y@3 toda@3 esa@3 cosa@3 .	\N	\N	1147613	1150434	2821	
572	sastre1	SOF	+< uhhuh@0 yo@3 he@3 estado@3 ahí@3 sí@3 .	\N	\N	1147613	1150440	2827	
573	sastre1	KEV	y@3 cuando@3 salimos@3 y@3 fuimos@3 a:@3 [/] a@3 xxx county@2 a@3 ver@3 los@3 [/] <los@3 muros@3> [/] los@3 campers@0 .	\N	\N	1150410	1157852	7442	
574	sastre1	SOF	mmhm@0 .	\N	\N	1157806	1158323	517	
575	sastre1	KEV	porque@3 andamos@3 pa(ra)@3 [/] pa(ra)@3 el@3 futuro@3 buscando@3 uno@3 más@3 grande@3 .	\N	\N	1158311	1160941	2630	
576	sastre1	KEV	y@3 de@3 ahí@3 salimos@3 .	\N	\N	1160940	1163041	2101	
577	sastre1	KEV	y@3 nos@3 metimos@3 un@3 # barbecue@2 place@2 que@3 hay@3 er:@0 # university@2 and@2 Pince@0 boulevard@2 .	\N	\N	1163033	1172020	8987	
578	sastre1	SOF	ok@0 .	\N	\N	1171984	1172942	958	
579	sastre1	SOF	I@2 know@2 where@2 that@2 is@2 .	\N	\N	1173006	1173894	888	
580	sastre1	KEV	+< allá@3 traen@3 una@3 cosita@3 chiquitica@3 .	\N	\N	1173006	1174747	1741	
581	sastre1	KEV	pero@3 cocinan@3 tan@3 rico@3 .	\N	\N	1174730	1176071	1341	
582	sastre1	SOF	yeah@2 .	\N	\N	1176053	1176657	604	
583	sastre1	KEV	yeah@2 yeah@2 .	\N	\N	1176663	1178015	1352	
584	sastre1	SOF	what@2 ribs@2 and@2 chicken@2 and@2 all@2 +/ .	\N	\N	1178011	1181349	3338	
585	sastre1	KEV	+< yeah@2 yeah@2 the@2 whole@2 barbecue@2 smoked@2 barbecue@2 so@2 .	\N	\N	1179172	1182620	3448	
586	sastre1	SOF	+< yeah@2 .	\N	\N	1179172	1182620	3448	
587	sastre1	KEV	it's@2 delicious@2 .	\N	\N	1182592	1183903	1311	
588	sastre1	SOF	oh@0 that's@2 good@2 .	\N	\N	1183855	1184604	749	
589	sastre1	KEV	+< y@3 we@2 were@2 there@2 and@2 Pepita@0 asked@2 er@0 we@2 asked@2 her@2 what@2 she@2 wanted@2 for@2 dinner@2 .	\N	\N	1184271	1188544	4273	
590	sastre1	KEV	she@2 said@2 well@2 bring@2 me@2 some@2 ribs@2 .	\N	\N	1188487	1190054	1567	
591	sastre1	KEV	so@2 we@2 brought@2 her@2 some@2 ribs@2 so@2 .	\N	\N	1190031	1192492	2461	
592	sastre1	SOF	that's@2 funny@2 .	\N	\N	1192516	1193648	1132	
593	sastre1	KEV	+< <she@2 said@2> [/] she@2 said@2 I'll@2 [/] I'll@2 [/] I'll@2 have@2 them@2 for@2 dinner@2 .	\N	\N	1193033	1195541	2508	
594	sastre1	KEV	so@2 got@2 here@2 she@2 ate@2 them@2 .	\N	\N	1195511	1197531	2020	
595	sastre1	KEV	and@2 I@2 said@2 I@2 thought@2 you@2 were@2 gonna@2 wait@2 for@2 dinner@2 .	\N	\N	1197531	1199475	1944	
596	sastre1	KEV	me@3 dice@3 no@2 no@2 I'm@2 hungry@2 I'm@2 gonna@2 eat@2 now@2 .	\N	\N	1199487	1201489	2002	
597	sastre1	KEV	so@2 she@2 ate@2 xxx so@2 .	\N	\N	1201489	1203562	2073	
598	sastre1	KEV	ya@3 hoy@3 Pepa@0 no@3 tenía@3 que@3 cocinar@3 .	\N	\N	1203545	1205113	1568	
599	sastre1	KEV	mmhm@0 .	\N	\N	1205087	1207746	2659	
600	sastre1	SOF	I@2 had@2 [//] I@2 went@2 this@2 morning@2 I@2 Jennie@0 xxx breakfast@2 and@2 then@2 we@2 haven't@2 eaten@2 anything@2 all@2 day@2 .	\N	\N	1207721	1212342	4621	
601	sastre1	KEV	Jennie@0 is@2 the@2 little@2 one@2 .	\N	\N	1212133	1213143	1010	
602	sastre1	SOF	yeah@2 Maria@0 is@2 working@2 tonight@2 .	\N	\N	1213196	1216238	3042	
603	sastre1	KEV	+< mmhm@0 yeah@2 .	\N	\N	1213196	1216238	3042	
604	sastre1	SOF	&=cough .	\N	\N	1216226	1216772	546	
605	sastre1	SOF	and@2 she@2 is@2 off@2 already@2 for@2 er@0 +.. .	\N	\N	1216757	1219561	2804	
606	sastre1	KEV	mmhm@0 .	\N	\N	1216757	1219561	2804	
607	sastre1	SOF	the@2 schools@2 are@2 off@2 for@2 easter@2 .	\N	\N	1219555	1222277	2722	
608	sastre1	KEV	sí@3 .	\N	\N	1222256	1223562	1306	
609	sastre1	SOF	+< the@2 universities@2 .	\N	\N	1222895	1223887	992	
610	sastre1	KEV	yeah@2 .	\N	\N	1223841	1224961	1120	
611	sastre1	SOF	Pepita@0 no@3 estaba@3 ?	\N	\N	1224921	1226482	1561	
612	sastre1	KEV	todavía@3 ahora@3 acaban@3 estos@3 días@3 .	\N	\N	1226436	1228584	2148	
613	sastre1	SOF	ella@3 ahora@3 empezó@3 Je(nnie)@0 Jennie@0 allá@3 .	\N	\N	1228565	1231386	2821	
614	sastre1	KEV	ya@3 empezó@3 el@3 spring@2 break@2 .	\N	\N	1231381	1232872	1491	
615	sastre1	SOF	yeah@2 .	\N	\N	1232856	1234110	1254	
616	sastre1	KEV	sí@3 yo@3 no@3 sé@3 qué@3 día@3 empieza@3 Pepita@0 pero@3 F_I_U@2 está@3 er@0 .	\N	\N	1234104	1237837	3733	
617	sastre1	SOF	look@2 yo@3 [//] I@2 found@2 that@2 [/] that@2 [/] that@2 Saint@2 Thomas@2 started@2 too@2 early@2 .	\N	\N	1237820	1242371	4551	
618	sastre1	KEV	they@2 tried@2 to@2 stag@2 .	\N	\N	1242363	1245933	3570	
619	sastre1	KEV	tú@3 sabes@3 .	\N	\N	1245858	1246682	824	
620	sastre1	KEV	so@2 not@2 all@2 the@2 kids@2 are@2 out@2 at@2 the@2 same@2 time@2 .	\N	\N	1246677	1249150	2473	
621	sastre1	SOF	+< at@2 the@2 same@2 time@2 yeah@2 because@2 it@2 would@2 be@2 atrocious@2 for@2 Miami@2 +.. .	\N	\N	1248610	1251588	2978	
622	sastre1	KEV	mmhm@0 yeah@2 .	\N	\N	1248610	1251588	2978	
623	sastre1	SOF	beach@2 .	\N	\N	1251520	1252432	912	
624	sastre1	KEV	yeah@2 .	\N	\N	1252414	1253471	1057	
625	sastre1	SOF	&=laugh .	\N	\N	1252414	1253471	1057	
626	sastre1	KEV	and@2 we@2 get@2 a@2 lot@2 of@2 kids@2 from@2 the@2 outside@2 .	\N	\N	1253441	1255769	2328	
627	sastre1	SOF	yeah@2 .	\N	\N	1255763	1256587	824	
628	sastre1	KEV	that@2 come@2 from@2 # northern@2 states@2 er@0 .	\N	\N	1256538	1259759	3221	
629	sastre1	SOF	you@2 know@2 traffic@2 is@2 gonna@2 get@2 bad@2 all@2 these@2 days@2 now@2 .	\N	\N	1259702	1262088	2386	
630	sastre1	KEV	+< yeah@2 .	\N	\N	1259702	1262088	2386	
631	sastre1	KEV	although@2 # before@2 it@2 used@2 to@2 be@2 Fort_Lauderdale@0 Miami@0 where@2 all@2 the@2 kids@2 came@2 down@2 to@2 .	\N	\N	1262065	1266336	4271	
632	sastre1	KEV	now@2 they@2 are@2 spread@2 all@2 over@2 the@2 place@2 .	\N	\N	1266305	1268337	2032	
633	sastre1	SOF	yeah@2 .	\N	\N	1268284	1268743	459	
634	sastre1	KEV	they@2 go@2 to@2 Jacksonville@0 they@2 go@2 to@2 Panama_City@0 .	\N	\N	1268702	1271500	2798	
635	sastre1	KEV	tú@3 sabes@3 different@2 places@2 .	\N	\N	1271593	1273480	1887	
637	sastre1	SOF	the@2 Keys@0 a@2 lot@2 of@2 them@2 like@2 to@2 go@2 down@2 there@2 too@2 .	\N	\N	1276446	1279110	2664	
638	sastre1	KEV	+< the@2 Keys@0 [/] the@2 Keys@0 .	\N	\N	1278095	1280335	2240	
639	sastre1	KEV	lo@3 que@3 pasa@3 que@3 the@2 Keys@0 er@0 .	\N	\N	1280314	1283245	2931	
640	sastre1	SOF	very@2 expensive@2 for@2 them@2 .	\N	\N	1283233	1284533	1300	
641	sastre1	KEV	+< for@2 er@0 er@0 er@0 # college@2 kids@2 es@3 imposible@3 .	\N	\N	1283726	1286100	2374	
642	sastre1	SOF	pero@3 let@2 me@2 tell@2 you@2 Miami_Beach@0 is@2 getting@2 to@2 be@2 the@2 same@2 way@2 .	\N	\N	1288176	1291009	2833	
643	sastre1	KEV	yeah@2 .	\N	\N	1290997	1291497	500	
644	sastre1	SOF	before@2 the@2 kids@2 used@2 to@2 come@2 to@2 Miami_Beach@0 and@2 hang@2 out@2 but@2 .	\N	\N	1291026	1293952	2926	
645	sastre1	KEV	+< yeah@2 .	\N	\N	1292897	1293924	1027	
646	sastre1	KEV	ya@3 pero@3 .	\N	\N	1293901	1295852	1951	
647	sastre1	SOF	+< first@2 of@2 all@2 they@2 are@2 not@2 renting@2 it@2 to@2 the@2 kids@2 any_more@2 you@2 got@2 to@2 have@2 an@2 adult@2 that@2 would@2 rent@2 the@2 place@2 .	\N	\N	1293901	1299603	5702	
648	sastre1	KEV	+< right@2 .	\N	\N	1293901	1299603	5702	
649	sastre1	SOF	and@2 we@2 are@2 talking@2 about@2 # almost@2 two@2 hundred@2 dollars@2 a@2 night@2 minimum@2 # to@2 find@2 [?] anywhere@2 which@2 before@2 for@2 fifty@2 something@2 dollars@2 you@2 can@2 rent@2 out@2 at@2 the@2 beach@2 spend@2 the@2 weekend@2 .	\N	\N	1299597	1308864	9267	
650	sastre1	KEV	+< er@0 yeah@2 .	\N	\N	0	0	0	
651	sastre1	KEV	yeah@2 .	\N	\N	1308818	1309950	1132	
652	sastre1	SOF	yeah@2 .	\N	\N	1309903	1310989	1086	
653	sastre1	KEV	pero@3 everything@2 else@2 # it's@2 cheaper@2 at@2 the@2 beach@2 than@2 in@2 the@2 Keys@0 .	\N	\N	1310975	1315236	4261	
654	sastre1	SOF	yeah@2 .	\N	\N	1315070	1315744	674	
655	sastre1	KEV	like@2 restaurants@2 transportation@2 you@2 know@2 .	\N	\N	1315564	1318408	2844	
656	sastre1	SOF	oh@0 yeah@2 .	\N	\N	0	0	0	
657	sastre1	KEV	ah@0 # in@2 [/] in@2 Miami_Beach@0 er@0 they@2 go@2 to@2 Burger_King@0 they@2 go@2 to@2 McDonalds@0 in@2 the@2 Keys@0 you@2 don't@2 find@2 that@2 mu(ch)@2 that@2 # too@2 often@2 .	\N	\N	1318925	1329559	10634	
658	sastre1	SOF	oh@0 yeah@2 .	\N	\N	1318925	1329559	10634	
659	sastre1	KEV	so@2 if@2 they@2 have@2 to@2 go@2 to@2 regular@2 restaurants@2 es@3 caro@3 .	\N	\N	1329536	1333182	3646	
660	sastre1	KEV	tú@3 sabes@3 algunos@3 de@3 los@3 restaurancitos@3 esos@3 um@0 er@0 # in@2 the@2 Keys@0 er@0 # no@3 son@3 nada@3 del@3 otro@3 mundo@3 pero@3 <te@3 cobran@3> [/] te@3 cobran@3 más@3 que@3 un@3 Burger_King@0 o@3 un@3 MacDonalds@0 so@2 for@2 kids@2 is@2 not@2 # bien@3 bien@3 práctico@3 .	\N	\N	1333179	1350025	16846	
661	sastre1	SOF	yeah@2 .	\N	\N	1350009	1350392	383	
662	sastre1	KEV	mmhm@0 .	\N	\N	1350352	1350735	383	
663	sastre1	SOF	&=cough .	background noise.	background noise.	1350705	1354414	3709	
664	sastre1	KEV	xxx estoy@3 mirando@3 el@3 reloj@3 .	\N	\N	1354390	1358475	4085	
665	sastre1	SOF	&=laugh .	\N	\N	1358445	1359020	575	
666	sastre1	KEV	yo@3 creo@3 que@3 hemos@3 hablado@3 bastante@3 .	\N	\N	1359008	1360674	1666	
667	sastre1	KEV	está@3 bueno@3 el@3 aparatico@3 ese@3 que@3 tiene@3 # la@3 grabadorecita@3 esa@3 .	\N	\N	1360665	1366069	5404	
668	sastre1	SOF	+< xxx grabando@3 a@3 la@3 gente@3 cuando@3 te@3 hacen@3 algo@3 .	\N	\N	1364287	1367683	3396	
669	sastre1	KEV	sí@3 .	\N	\N	1367627	1368097	470	
670	sastre1	SOF	+< hey@2 here@2 you@2 go@2 .	\N	\N	1367778	1369044	1266	
671	sastre1	KEV	er@0 los@3 otros@3 días@3 # sacó@3 Office_Depot@0 # unas@3 tarjeticas@3 # en@3 venta@3 .	\N	\N	1369008	1375801	6793	
672	sastre1	KEV	las@3 de@3 esas@3 de@3 one@2 gig@2 two@2 gigs@2 .	\N	\N	1375774	1378282	2508	
673	sastre1	KEV	yo@3 fui@3 y@3 compré@3 una@3 pa(ra)@3 mi@3 cámara@3 .	\N	\N	1378270	1380952	2682	
674	sastre1	KEV	pero@3 yo@3 uso@3 la@3 regular@3 la@3 S_T@0 .	\N	\N	1380929	1383158	2229	
675	sastre1	KEV	Pepita@0 # en@3 la@3 cámara@3 de@3 ella@3 u(sa)@3 [/] usa@3 una@3 que@3 se@3 llama@3 dualpro@0 o@3 una@3 cosa@3 así@3 .	\N	\N	1383135	1388778	5643	
676	sastre1	SOF	mmhm@0 .	\N	\N	1388753	1389176	423	
677	sastre1	KEV	que@3 esa@3 nunca@3 la@3 habían@3 puesto@3 en@3 venta@3 pero@3 por@3 fin@3 Office_Depot@0 las@3 puso@3 en@3 venta@3 .	\N	\N	1389169	1392466	3297	
678	sastre1	KEV	y@3 ese@3 día@3 tenían@3 una@3 cosita@3 de@3 estas@3 en@3 venta@3 también@3 .	\N	\N	1392440	1395093	2653	
679	sastre1	KEV	un@3 Sandisk@0 que@3 es@3 un@3 M_(P_three)@2 [/] M_P_three@2 player@2 con@3 [/] con@3 un@3 recording@2 [?] un@3 radiecito@3 F_M@3 todo@3 una@3 piececita@3 .	\N	\N	1395075	1404773	9698	
680	sastre1	KEV	estaba@3 bueno@3 .	\N	\N	1404738	1405737	999	
681	sastre1	KEV	pero@3 cuando@3 llegué@3 na(da)@3 más@3 que@3 tenían@3 el@3 [/] el@3 de@3 muestra@3 .	\N	\N	1405711	1408491	2780	
682	sastre1	KEV	no@3 tenían@3 ninguno@3 allí@3 .	\N	\N	1408474	1409681	1207	
683	sastre1	SOF	pero@3 mira@3 before@2 you@2 used@2 to@2 go@2 to@2 the@2 classes@2 in@2 the@2 university@2 .	\N	\N	1409666	1413412	3746	
684	sastre1	SOF	and@2 you@2 used@2 to@2 be@2 able@2 to@2 record@2 classes@2 .	\N	\N	1413387	1416232	2845	
685	sastre1	KEV	+< to@2 record@2 not@2 any_more@2 .	\N	\N	1414757	1416209	1452	
686	sastre1	SOF	I@2 guess@2 not@2 .	\N	\N	1416196	1417275	1079	
687	sastre1	SOF	maybe@2 the@2 teachers@2 are@2 not@2 .	\N	\N	1417252	1418918	1666	
688	sastre1	KEV	yeah@2 .	\N	\N	1417252	1418918	1666	
689	sastre1	SOF	&=laugh .	\N	\N	1418911	1419863	952	
690	sastre1	KEV	bueno@3 .	\N	\N	1419857	1420751	894	
691	sastre1	SOF	+< they@2 are@2 teaching@2 so@2 properly@2 that@2 they@2 are@2 afraid@2 that@2 they@2 might@2 be@2 recorded@2 or@2 might@2 say@2 something@2 that@2 they@2 shouldn't@2 say@2 and@2 they@2 could@2 +/ .	\N	\N	1420241	1429048	8807	
692	sastre1	KEV	+< that's@2 [/] that's@2 er@0 .	\N	\N	1425728	1429037	3309	
693	sastre1	SOF	you@2 know@2 banish@2 them@2 .	\N	\N	1429030	1430336	1306	
694	sastre1	KEV	+< tú@3 sabes@3 opens@2 the@2 door@2 for@2 a@2 lawsuit@2 si@3 pasa@3 cualquier@3 cosa@3 .	\N	\N	1429570	1432913	3343	
695	sastre1	SOF	+< yeah@2 .	\N	\N	1431990	1432913	923	
696	sastre1	KEV	tienen@3 al@3 maestro@3 grabado@3 un@3 maestro@3 que@3 diga@3 cualquier@3 disparate@3 en@3 la@3 clase@3 sin@3 querer@3 o@3 queriendo@3 tú@3 sabes@3 lo@3 tienen@3 grabado@3 .	\N	\N	1432900	1439541	6641	
697	sastre1	KEV	mmhm@0 .	\N	\N	1439511	1440248	737	
698	sastre1	SOF	pero@3 this@2 country@2 has@2 gotten@2 .	\N	\N	1439511	1441606	2095	
699	sastre1	KEV	es@3 todo@3 lawsuit@2 todo@3 lawsuit@2 .	\N	\N	1441577	1443655	2078	
701	sastre1	KEV	todo@3 es@3 un@3 problema@3 todo@3 .	\N	\N	1445069	1446962	1893	
702	sastre1	SOF	+< just@2 [/] like@2 the@2 lady@2 that@2 [/] that@2 chocó@3 a@3 Myriam@0 because@2 ella@3 fue@3 la@3 que@3 lo@3 [//] la@3 chocó@3 you@2 know@2 .	\N	\N	1445598	1450845	5247	
703	sastre1	KEV	+< mmhm@0 mmhm@0 .	\N	\N	1449517	1451374	1857	
704	sastre1	SOF	the@2 lady@2 is@2 already@2 her@2 back@2 hurts@2 this@2 and@2 that@2 everything@2 hurts@2 and@2 I'm@2 like@2 .	\N	\N	1450985	1456363	5378	
705	sastre1	KEV	+< oh@0 for@2 sure@2 mmhm@0 .	\N	\N	1450985	1456665	5680	
706	sastre1	SOF	the@2 one@2 who@2 should@2 be@2 hurting@2 is@2 my@2 kid@2 .	\N	\N	1456624	1459200	2576	
707	sastre1	KEV	mmhm@0 que@3 fue@3 la@3 que@3 le@3 dieron@3 # de@3 lado@3 .	\N	\N	1458695	1461348	2653	
708	sastre1	SOF	no@3 que@3 le@3 dieron@3 <por@3 la@3 ven(tana)@3> [//] por@3 la@3 puerta@3 le@3 desbarató@3 la@3 puerta@3 .	\N	\N	1460535	1464499	3964	
709	sastre1	KEV	+< mmhm@0 .	\N	\N	0	0	0	
710	sastre1	SOF	el@3 axel@2 de@3 la@3 [/] de@3 la@3 goma@3 de@3 alante@3 se@3 la@3 partió@3 con@3 eso@3 yo@3 te@3 digo@3 el@3 golpe@3 tan@3 grande@3 que@3 le@3 dio@3 esa@3 mujer@3 .	\N	\N	1464484	1470235	5751	
711	sastre1	KEV	increíble@3 # increíble@3 .	\N	\N	1470166	1470729	563	
712	sastre1	SOF	she's@2 just@2 got@2 one@2 of@2 these@2 nineteen@2 ninety@2 five@2 Toyotas@0 that@2 are@2 like@2 .	\N	\N	1472673	1476293	3620	
713	sastre1	KEV	+< mmhm@0 duro@3 .	\N	\N	1475899	1477089	1190	
714	sastre1	SOF	remember@2 those@2 Toyotas@0 really@2 heavy@2 ?	\N	\N	1477066	1479690	2624	
715	sastre1	KEV	+< mmhm@0 .	\N	\N	0	0	0	
716	sastre1	SOF	<and@2 the@2> [/] and@2 the@2 bumper@2 used@2 to@2 be@2 a@2 different@2 color@2 that@2 they@2 used@2 to@2 .	\N	\N	1479652	1482938	3286	
717	sastre1	KEV	+< mmhm@0 mmhm@0 .	\N	\N	1479652	1482926	3274	
718	sastre1	KEV	pero@3 tipo@3 S_U_V@2 o@3 +.. .	\N	\N	1482897	1484714	1817	
719	sastre1	SOF	no@3 no@3 it@2 was@2 a@2 car@2 .	\N	\N	1484702	1486089	1387	
720	sastre1	KEV	+< un@3 carrito@3 .	\N	\N	1485352	1486124	772	
721	sastre1	KEV	mmhm@0 .	\N	\N	1486119	1486787	668	
722	sastre1	SOF	Thank@2 God@2 .	\N	\N	1486769	1487901	1132	
723	sastre1	KEV	mmhm@0 .	\N	\N	1487872	1488580	708	
724	sastre1	SOF	imagine@2 if@2 you@2 xxx for@2 a@2 little@2 PT_Cruiser@0 .	\N	\N	1488556	1492416	3860	
725	sastre1	KEV	imagínate@3 .	\N	\N	1492373	1493348	975	
726	sastre1	KEV	imagínate@3 .	\N	\N	1492940	1494222	1282	
727	sastre1	SOF	+< la@3 hubiera@3 matado@3 .	\N	\N	1492373	1493348	975	
728	sastre1	SOF	porque@3 yo@3 no@3 tenía@3 airbags@0 en@3 el@3 PT_Cruiser@0 .	\N	\N	1494199	1496469	2270	
729	sastre1	KEV	no@3 .	\N	\N	1496446	1496840	394	
730	sastre1	KEV	los@3 PT_Cruisers@0 no@3 vienen@3 con@3 airbag@0 ?	\N	\N	1496808	1499409	2601	
731	sastre1	SOF	yes@2 but@2 what@2 happened@2 was@2 my@2 [/] my@2 husband@2 being@2 such@2 a@2 small@2 person@2 wanted@2 to@2 buy@2 her@2 a@2 car@2 a@2 used@2 car@2 didn't@2 want@2 her@2 to@2 have@2 a@2 new@2 car@2 like@2 I@2 told@2 him@2 .	\N	\N	1499391	1509317	9926	
732	sastre1	SOF	get@2 the@2 kid@2 a@2 good@2 car@2 when@2 we@2 ended@2 up@2 finding@2 out@2 when@2 we@2 had@2 already@2 payed@2 everything@2 for@2 the@2 car@2 [?] that@2 car@2 had@2 been@2 chocado@3 de@3 alante@3 completamente@3 .	\N	\N	1509299	1517960	8661	
733	sastre1	SOF	fíjate@3 que@3 tiene@3 el@3 sticker@2 .	\N	\N	1517924	1519776	1852	
734	sastre1	KEV	mmhm@0 .	\N	\N	1519759	1520130	371	
735	sastre1	SOF	pero@3 parece@3 que@3 it@2 wasn't@2 in@2 the@2 system@2 yet@2 because@2 it@2 had@2 just@2 happened@2 .	\N	\N	1520110	1524377	4267	
736	sastre1	KEV	mmhm@0 .	\N	\N	1524361	1524663	302	
737	sastre1	SOF	so@2 they@2 fixed@2 the@2 car@2 .	\N	\N	1524657	1526575	1918	
738	sastre1	SOF	and@2 they@2 sold@2 it@2 to@2 us@2 thinking@2 that@2 [//] que@3 no@3 nada@3 [/] nada@3 tenía@3 el@3 carro@3 .	\N	\N	1526558	1529501	2943	
739	sastre1	SOF	when@2 we@2 went@2 to@2 trade@2 in@2 the@2 car@2 # for@2 the@2 Honda@0 the@2 guy@2 told@2 me@2 that@2 he@2 couldn't@2 take@2 that@2 car@2 .	\N	\N	1529442	1535041	5599	
740	sastre1	SOF	and@2 we@2 say@2 why@2 can't@2 you@2 take@2 this@2 car@2 ?	\N	\N	1535030	1536684	1654	
741	sastre1	SOF	because@2 that@2 car@2 is@2 no@2 good@2 .	\N	\N	1536657	1538317	1660	
742	sastre1	KEV	mmhm@0 .	\N	\N	1538306	1539513	1207	
743	sastre1	SOF	+< it's@2 been@2 crashed@2 from@2 the@2 front@2 .	\N	\N	1539380	1541110	1730	
744	sastre1	KEV	mmhm@0 .	\N	\N	1541099	1542312	1213	
745	sastre1	SOF	and@2 they@2 put@2 a@2 special@2 sticker@2 when@2 you@2 open@2 up@2 the@2 door@2 of@2 the@2 car@2 on@2 the@2 side@2 right@2 there@2 .	\N	\N	1542281	1549403	7122	
746	sastre1	SOF	they@2 put@2 a@2 sticker@2 when@2 a@2 [/] a@2 [/] a@2 car@2 has@2 been@2 crashed@2 from@2 the@2 front@2 .	\N	\N	1549396	1553297	3901	
747	sastre1	SOF	because@2 of@2 xxx .	\N	\N	1553244	1555137	1893	
748	sastre1	KEV	+< como@3 un@3 rebuilt@2 .	\N	\N	1553244	1555137	1893	
749	sastre1	SOF	yes@2 .	\N	\N	1555137	1556698	1561	
750	sastre1	KEV	mmhm@0 .	\N	\N	1556648	1557304	656	
751	sastre1	SOF	and@2 <they@2 wouldn't@2> [/] they@2 wouldn't@2 take@2 the@2 car@2 for@2 nothing@2 .	\N	\N	1557281	1560706	3425	
752	sastre1	KEV	ya@3 tú@3 sabes@3 [?] .	\N	\N	1560682	1561320	638	
753	sastre1	SOF	no@3 ni@3 lo@3 querían@3 .	\N	\N	1561326	1562232	906	
754	sastre1	SOF	they@2 said@2 no@2 we@2 don't@2 want@2 this@2 .	\N	\N	1562220	1563463	1243	
755	sastre1	SOF	this@2 is@2 the@2 liability@2 for@2 us@2 .	\N	\N	1563425	1565074	1649	
756	sastre1	KEV	+< mmhm@0 .	\N	\N	1563425	1565074	1649	
757	sastre1	SOF	you@2 try@2 to@2 sell@2 it@2 the@2 best@2 way@2 you@2 can@2 .	\N	\N	1565044	1567935	2891	
758	sastre1	SOF	and@2 I@2 told@2 xxx let's@2 sue@2 the@2 guy@2 who@2 sold@2 you@2 the@2 car@2 .	\N	\N	1567910	1570633	2723	
759	sastre1	SOF	xxx no@2 no@2 no@2 no@2 I@2 don't@2 wanna@2 worry@2 .	\N	\N	1570602	1572884	2282	
760	sastre1	KEV	+< sí@3 .	\N	\N	1570602	1572884	2282	
761	sastre1	SOF	you@2 know@2 I@2 don't@2 wanna@2 deal@2 with@2 that@2 .	\N	\N	1572872	1574079	1207	
762	sastre1	KEV	sí@3 .	\N	\N	1574056	1574741	685	
763	sastre1	KEV	+< oh@0 ok@0 .	\N	\N	1574056	1574741	685	
764	sastre1	SOF	<but@2 thank@2 God@2> [?] .	\N	\N	1574719	1576320	1601	
765	sastre1	KEV	mmhm@0 mmhm@0 .	\N	\N	1576308	1577911	1603	
766	sastre1	SOF	hello@2 .	\N	\N	1577841	1580291	2450	
767	sastre1	KEV	are@2 we@2 +/ .	\N	\N	1580278	1581009	731	
768	sastre1	SOF	I@2 don't@2 know@2 if@2 we@2 are@2 almost@2 over@2 [=! laughs] .	\N	\N	1581009	1585287	4278	
769	sastre1	SOF	we've@2 been@2 talking@2 so@2 much@2 already@2 .	\N	\N	1585267	1587757	2490	
770	sastre1	KEV	+< <are@2 we@2> [/] are@2 we@2 on@2 time@2 ?	\N	\N	1585267	1587757	2490	
771	sastre1	SOF	I@2 think@2 they@2 forgot@2 about@2 us@2 [=! laughs] .	\N	\N	1587714	1591917	4203	
772	sastre1	SOF	keep@2 talking@2 .	\N	\N	1591896	1594113	2217	
773	sastre1	KEV	+< keep@2 on@2 talking@2 .	\N	\N	1591896	1594113	2217	
774	sastre1	KEV	four@2 more@2 minutes@2 five@2 more@2 minutes@2 .	\N	\N	1594094	1596805	2711	
775	sastre1	SOF	+< we@2 got@2 five@2 more@2 minutes@2 [=! laughs] .	\N	\N	1594094	1596805	2711	
776	sastre1	KEV	mmhm@0 .	\N	\N	1596803	1597982	1179	
777	sastre1	SOF	&=laugh .	\N	\N	1596803	1597982	1179	
778	sastre1	SOF	we@2 are@2 tired@2 talking@2 to@2 each@2 other@2 we@2 wanna@2 watch@2 the@2 news@2 and@2 the@2 tv@0 right@2 now@2 .	\N	\N	1597969	1603263	5294	
779	sastre1	KEV	mmhm@0 .	\N	\N	1603228	1604174	946	
780	sastre1	SOF	&=laugh .	\N	\N	1603228	1606348	3120	
781	sastre1	KEV	pues@3 sí@3 lo@3 de@3 Chili's@0 está@3 impresionante@3 no@3 verdad@3 ?	\N	\N	1606301	1608559	2258	
782	sastre1	KEV	el@3 tiroteo@3 ese@3 ahí@3 en@3 Chili's@0 .	\N	\N	1608553	1610347	1794	
783	sastre1	SOF	yes@2 .	\N	\N	1608553	1610347	1794	
784	sastre1	KEV	y@3 los@3 otros@3 días@3 el@3 tiroteo@3 en@3 el@3 colegio@3 xxx .	\N	\N	1610325	1614934	4609	
785	sastre1	SOF	yeah@2 .	\N	\N	1614905	1615247	342	
786	sastre1	KEV	y@3 ayer@3 o@3 anteayer@3 el@3 [/] el@3 riot@2 en@3 el@3 Edison@0 .	\N	\N	1615232	1619452	4220	
787	sastre1	SOF	+< xxx .	\N	\N	1615232	1619452	4220	
788	sastre1	SOF	Edison@0 .	\N	\N	1619493	1620004	511	
789	sastre1	KEV	+< en@3 [/] en@3 el@3 otro@3 .	\N	\N	1619861	1620923	1062	
790	sastre1	KEV	esto@3 está@3 calientica@3 la@3 calle@3 .	\N	\N	1620913	1624111	3198	
791	sastre1	KEV	y@3 dónde@3 fue@3 otro@3 tamb(ién)@3 [//] lugar@3 aquí@3 también@3 que@3 tirotearon@3 ?	\N	\N	1624099	1628546	4447	
792	sastre1	KEV	los@3 otros@3 días@3 aquí@3 pegaditos@3 nosotros@3 .	\N	\N	1628548	1631114	2566	
793	sastre1	SOF	no@3 yo@3 pero@3 no@3 fue@3 four@2 forty@2 one@2 ahí@3 en@3 la@3 four@2 forty@2 one@2 yo@3 creo@3 que@3 fue@3 un@3 poquito@3 más@3 pa(ra)@3 allá@3 .	\N	\N	1631108	1635688	4580	
794	sastre1	KEV	no@3 pero@3 er@0 estuvo@3 Chili's@0 .	\N	\N	1635014	1636797	1783	
795	sastre1	KEV	en@3 Chili's@0 habían@3 robado@3 y@3 habían@3 tiroteado@3 a@3 alguien@3 hace@3 unos@3 días@3 atrás@3 .	\N	\N	1636768	1642270	5502	
796	sastre1	KEV	y@3 ahora@3 se@3 formó@3 un@3 tiroteo@3 de@3 nuevo@3 .	\N	\N	1642250	1644021	1771	
797	sastre1	KEV	pero@3 había@3 otro@3 lugar@3 más@3 que@3 había@3 habido@3 un@3 [/] un@3 robo@3 un@3 tiroteo@3 .	\N	\N	1644015	1647660	3645	
798	sastre1	KEV	la@3 calle@3 está@3 # que@3 mete@3 miedo@3 .	\N	\N	1647628	1650432	2804	
799	sastre1	SOF	claro@3 .	\N	\N	1650426	1651198	772	
800	sastre1	KEV	mmhm@0 .	\N	\N	1651182	1651733	551	
801	sastre1	SOF	la@3 gente@3 está@3 desesperada@3 .	\N	\N	1651739	1652929	1190	
802	sastre1	KEV	sí@3 .	\N	\N	1652906	1655257	2351	
803	sastre1	KEV	la@3 gente@3 estaba@3 desesperada@3 pa(ra)@3 tratar@3 de@3 resolverlo@3 # a@3 cualquier@3 costo@3 .	\N	\N	1655225	1659092	3867	
804	sastre1	SOF	xxx .	\N	\N	1659070	1660190	1120	
805	sastre1	KEV	mmhm@0 mmhm@0 .	\N	\N	1660190	1662123	1933	
806	sastre1	SOF	&=cough .	\N	\N	1662123	1663900	1777	
807	sastre1	KEV	estos@3 muchachitos@3 se@3 han@3 pasado@3 todo@3 el@3 día@3 # xxx ahí@3 pescando@3 .	\N	\N	1663886	1667328	3442	
808	sastre1	KEV	y@3 compran@3 xxx .	\N	\N	1667322	1669571	2249	
809	sastre1	SOF	ay@3 at@2 least@2 they@2 do@2 .	\N	\N	1669531	1671063	1532	
810	sastre1	KEV	yeah@2 .	\N	\N	1671046	1671412	366	
811	sastre1	SOF	they@2 are@2 doing@2 something@2 better@2 than@2 watching@2 er@0 tv@0 and@2 computers@2 all@2 day@2 .	\N	\N	1671397	1675263	3866	
812	sastre1	KEV	+< yeah@2 yeah@2 .	\N	\N	1671397	1675263	3866	
813	sastre1	KEV	no@2 they'll@2 be@2 catch(ing)@2 [/] catching@2 fish@2 because@2 you@2 see@2 them@2 you@2 know@2 bringing@2 up@2 fish@2 every@2 once@2 in@2 a@2 while@2 .	\N	\N	1675248	1681285	6037	
814	sastre1	KEV	mmhm@0 .	\N	\N	1681274	1682702	1428	
815	sastre1	KEV	pero@3 ya@3 le@3 está@3 cogiendo@3 la@3 noche@3 y@3 ya@3 se@3 van@3 .	\N	\N	1682678	1685337	2659	
816	sastre1	SOF	+< and@2 are@2 they@2 planning@2 on@2 doing@2 something@2 on@2 the@2 lake@2 like@2 cleaning@2 xxx ?	\N	\N	1684356	1687601	3245	
817	sastre1	SOF	have@2 you@2 heard@2 anything@2 ?	\N	\N	1687607	1688437	830	
818	sastre1	SOF	they@2 haven't@2 mentioned@2 anything@2 about@2 that@2 ?	\N	\N	1688408	1690173	1765	
819	sastre1	KEV	+< no@2 .	\N	\N	1689581	1690202	621	
820	sastre1	KEV	no@2 there@2 is@2 not@2 .	\N	\N	1690186	1692444	2258	
821	sastre1	SOF	because@2 I@2 think@2 it's@2 been@2 a@2 while@2 .	\N	\N	1691683	1693315	1632	
822	sastre1	SOF	I@2 mean@2 we've@2 been@2 moved@2 in@2 here@2 for@2 almost@2 six(teen)@2 yo@3 creo@3 que@3 like@2 fifteen@2 or@2 sixteen@2 years@2 and@2 they@2 haven't@2 done@2 anything@2 .	\N	\N	1693303	1698394	5091	
823	sastre1	KEV	+< because@2 you@2 know@2 the@2 [/] the@2 thing@2 here@2 is@2 that@2 the@2 lake@2 doesn't@2 belong@2 just@2 to@2 one@2 # entity@2 .	\N	\N	1697958	1704729	6771	
824	sastre1	KEV	the@2 part@2 of@2 the@2 lake@2 is@2 the@2 # water@2 management@2 district@2 .	\N	\N	1704746	1711527	6781	
825	sastre1	KEV	pero@3 then@2 when@2 you@2 come@2 from@2 like@2 the@2 thirteen@2 feet@2 .	\N	\N	1711534	1715282	3748	
826	sastre1	KEV	that@2 [/] that@2 strip@2 there@2 el@3 canal@3 +/ .	\N	\N	1715305	1717970	2665	
827	sastre1	SOF	+< mmhm@0 .	\N	\N	1715305	1717984	2679	
828	sastre1	KEV	is@2 a@2 water@2 management@2 .	\N	\N	1717962	1719552	1590	
829	sastre1	KEV	but@2 then@2 when@2 you@2 come@2 into@2 the@2 lake@2 that's@2 Miami_Lakes@0 .	\N	\N	1719515	1722882	3367	
830	sastre1	KEV	is@2 the@2 residence@2 of@2 Miami_Lakes@0 in@2 that@2 so@2 since@2 it's@2 such@2 a@2 mix@2 they@2 don't@2 do@2 anything@2 .	\N	\N	1722854	1728915	6061	
831	sastre1	KEV	I@2 had@2 a@2 +...	\N	\N	1728904	1730314	1410	
832	sastre1	KEV	when@2 we@2 first@2 moved@2 here@2 not@2 when@2 we@2 first@2 moved@2 here@2 .	\N	\N	1730284	1733395	3111	
833	sastre1	KEV	cuando@3 fueron@3 las@3 elecciones@3 de@3 [/] de@3 aquí@3 en@3 Miami_Lakes@0 que@3 se@3 formó@3 el@3 primer@3 viaje@3 .	\N	\N	1733377	1739110	5733	
834	sastre1	SOF	mmhm@0 .	\N	\N	1739070	1739488	418	
835	sastre1	KEV	uno@3 <de@3 los@3> [/] de@3 los@3 comisionados@3 que@3 corrió@3 .	\N	\N	1739473	1742851	3378	
836	sastre1	SOF	mmhm@0 .	\N	\N	1742846	1743548	702	
837	sastre1	KEV	uno@3 de@3 los@3 muchachitos@3 jóvenes@3 vino@3 por@3 aquí@3 .	\N	\N	1743546	1746239	2693	
903	sastre1	KEV	mmhm@0 .	\N	\N	1904538	1905235	697	
904	sastre1	SOF	ah@0 sí@3 .	\N	\N	1905235	1906024	789	
905	sastre1	KEV	sí@3 el@3 nieto@3 está@3 viviendo@3 con@3 ella@3 .	\N	\N	1906001	1907748	1747	
838	sastre1	KEV	y@3 <le@3 digo@3> [?] listen@2 look@2 this@2 is@2 a@2 good@2 thing@2 for@2 you@2 to@2 look@2 at@2 to@2 do@2 .	phone ringing, SOF picks up the phone, and phone conversation starts.	phone ringing, SOF picks up the phone, and phone conversation starts.	1746242	1751595	5353	
839	sastre1	SOF	excuse@2 me@2 hello@2 .	\N	\N	1751542	1754160	2618	
840	sastre1	SOF	I'm@2 in@2 the@2 xxx I@2 got@2 five@2 more@2 minutes@2 .	\N	\N	1754168	1759079	4911	
841	sastre1	SOF	talking@2 .	\N	\N	1759073	1761847	2774	
842	sastre1	SOF	talking@2 .	\N	\N	1761851	1763702	1851	
843	sastre1	SOF	I'll@2 be@2 right@2 there@2 .	\N	\N	1763656	1769025	5369	
844	sastre1	KEV	dile@3 que@3 venga@3 pa(ra)@3 acá@3 .	\N	\N	1768999	1771402	2403	
845	sastre1	SOF	dile@3 que@3 venga@3 pa(ra)@3 acá@3 .	\N	\N	1771402	1772969	1567	
846	sastre1	SOF	&=laugh no@3 déjanos@3 acabar@3 de@3 hablar@3 que@3 nos@3 quedan@3 five@2 more@2 minutes@2 and@2 they@2 are@2 recording@2 us@2 bye@2 .	\N	\N	1772968	1777652	4684	
847	sastre1	KEV	+< we@2 have@2 # usamos@3 [/] usamos@3 este@3 xxx como@3 guinea_pig@2 .	\N	\N	1775493	1780304	4811	
848	sastre1	SOF	&=moan .	\N	\N	1780274	1781597	1323	
849	sastre1	KEV	er:@0 .	\N	\N	1781568	1782619	1051	
850	sastre1	KEV	qué@3 te@3 estaba@3 diciendo@3 ?	\N	\N	1782615	1786504	3889	
851	sastre1	SOF	oh@0 lo@3 del@3 muchachito@3 que@3 vino@3 aquí@3 .	\N	\N	1786446	1788966	2520	
852	sastre1	KEV	ah@0 sí@3 el@3 que@3 estaba@3 corriendo@3 pa(ra)@3 (a)cá@3 xxx tú@3 ves@3 tú@3 eso@3 .	\N	\N	1788977	1792095	3118	
853	sastre1	KEV	le@3 digo@3 esa@3 basura@3 no@3 es@3 basura@3 de@3 nosotros@3 .	\N	\N	1792091	1795603	3512	
854	sastre1	KEV	esa@3 basura@3 es@3 cuando@3 el@3 condado@3 # o@3 el@3 water@2 management@2 district@2 viene@3 y@3 limpia@3 el@3 pedazo@3 de@3 ellos@3 .	\N	\N	1795581	1801993	6412	
855	sastre1	KEV	ellos@3 vienen@3 con@3 las@3 palas@3 .	\N	\N	1802004	1803850	1846	
856	sastre1	SOF	+< xxx everything@2 .	\N	\N	1802004	1803867	1863	
857	sastre1	KEV	y@3 arrancan@3 toda@3 la@3 basura@3 .	\N	\N	1803886	1805813	1927	
858	sastre1	KEV	entonces@3 caminan@3 tres@3 millas@3 con@3 las@3 palas@3 para@3 abajo@3 rompiendo@3 toda@3 la@3 hierba@3 .	\N	\N	1805963	1809823	3860	
859	sastre1	KEV	y@3 después@3 echan@3 un@3 palazo@3 arriba@3 del@3 camión@3 .	\N	\N	1809784	1813325	3541	
860	sastre1	KEV	pero@3 tú@3 sabes@3 cuántos@3 palazos@3 iban@3 rotos@3 por@3 ahí@3 que@3 los@3 dejan@3 flotando@3 .	\N	\N	1813298	1816636	3338	
861	sastre1	KEV	xxx eso@3 es@3 lo@3 que@3 tú@3 estás@3 viendo@3 ahí@3 .	\N	\N	1816618	1818493	1875	
862	sastre1	KEV	dice@3 no@3 ahora@3 ahora@3 vamos@3 a@3 mirar@3 esto@3 que@3 lo@3 otro@3 .	\N	\N	1818563	1820937	2374	
863	sastre1	KEV	nunca@3 han@3 hecho@3 na(da)@3 .	\N	\N	1820914	1821907	993	
864	sastre1	KEV	cada@3 vez@3 que@3 pasa@3 el@3 [/] el@3 condado@3 por@3 ahí@3 con@3 la@3 +/ .	\N	\N	1821890	1825054	3164	
865	sastre1	SOF	y@3 pasa@3 ?	\N	\N	1825055	1826303	1248	
866	sastre1	KEV	sí@3 sí@3 ellos@3 pasan@3 .	\N	\N	1826286	1827755	1469	
867	sastre1	SOF	cada@3 qué@3 tiempo@3 ?	\N	\N	1826286	1827755	1469	
868	sastre1	KEV	&bu: dos@3 o@3 tres@3 veces@3 al@3 año@3 vienen@3 .	\N	\N	1827758	1830150	2392	
869	sastre1	SOF	right@2 now@2 .	\N	\N	1830150	1830725	575	
870	sastre1	KEV	sí@3 .	\N	\N	1830684	1831444	760	
871	sastre1	KEV	un@3 aparato@3 que@3 son@3 los@3 que@3 ponen@3 allá@3 en@3 Red@2 Road@2 .	\N	\N	1831427	1834126	2699	
872	sastre1	KEV	tú@3 no@3 te@3 has@3 fijado@3 allá@3 en@3 la@3 esquina@3 <del@3 aero(puerto)@3> [//] del@3 aeropuerto@3 xxx?	\N	\N	1834115	1837964	3849	
873	sastre1	SOF	+< sí@3 yo@3 sí@3 .	\N	\N	1837012	1837807	795	
874	sastre1	KEV	una@3 un@3 lugar@3 que@3 ponen@3 .	\N	\N	1837805	1839401	1596	
875	sastre1	SOF	+< ahí@3 sí@3 yo@3 veo@3 .	\N	\N	1837805	1839436	1631	
876	sastre1	KEV	eso@3 bueno@3 .	\N	\N	1839430	1840104	674	
877	sastre1	SOF	+< mmhm@0 .	\N	\N	1839430	1840104	674	
878	sastre1	KEV	esos@3 vienen@3 hasta@3 aquí@3 .	\N	\N	1840069	1841398	1329	
879	sastre1	SOF	no@3 de@3 verdad@3 <yo@3 no@3> [/] yo@3 no@3 me@3 había@3 fijado@3 nunca@3 .	\N	\N	1841372	1843700	2328	
880	sastre1	KEV	ellos@3 caminan@3 por@3 xxx caminando@3 .	\N	\N	1841372	1843787	2415	
881	sastre1	KEV	pero@3 qué@3 pasa@3 ?	\N	\N	1843743	1844742	999	
882	sastre1	KEV	que@3 ellos@3 limpian@3 ellos@3 bajan@3 la@3 pala@3 y@3 van@3 caminando@3 y@3 van@3 rompiendo@3 esa@3 hierba@3 .	\N	\N	1844742	1848521	3779	
883	sastre1	KEV	pero@3 en@3 vez@3 de@3 # hacer@3 un@3 pedacito@3 cortico@3 .	\N	\N	1848505	1852081	3576	
884	sastre1	KEV	y@3 lle(var)@3 [/] llevarla@3 hasta@3 el@3 camión@3 no@3 .	\N	\N	1852046	1853962	1916	
885	sastre1	KEV	imagínate@3 si@3 el@3 camión@3 está@3 parado@3 a@3 cuatro@3 cuadras@3 .	\N	\N	1853985	1856922	2937	
886	sastre1	KEV	tú@3 crees@3 que@3 ellos@3 van@3 a@3 [/] a@3 recoger@3 un@3 poquito@3 y@3 llevarlo@3 y@3 botarlo@3 y@3 regresarlo@3 .	\N	\N	1856925	1860716	3791	
887	sastre1	KEV	ellos@3 ponen@3 la@3 pala@3 y@3 van@3 rompiendo@3 van@3 empujándola@3 pa(ra)@3 allá@3 .	\N	\N	1860699	1863688	2989	
888	sastre1	KEV	pero@3 lo@3 que@3 hace@3 después@3 .	\N	\N	1863653	1865810	2157	
889	sastre1	KEV	que@3 se@3 se@3 queda@3 toda@3 suelta@3 se@3 riega@3 todo@3 .	\N	\N	1865781	1868045	2264	
890	sastre1	KEV	y@3 cuando@3 el@3 aire@3 sopla@3 de@3 allá@3 o@3 de@3 aquí@3 .	\N	\N	1868101	1870179	2078	
891	sastre1	KEV	toda@3 esa@3 hierba@3 muerta@3 xxx .	\N	\N	1870139	1873429	3290	
892	sastre1	SOF	+< va@3 cayendo@3 pa(ra)@3 acá@3 .	\N	\N	1872326	1873533	1207	
893	sastre1	KEV	mmhm@0 .	\N	\N	1873533	1873887	354	
894	sastre1	KEV	y@3 yo@3 le@3 echo@3 ahí@3 cosas@3 .	\N	\N	1873892	1875904	2012	
895	sastre1	KEV	y@3 fumigó@3 y@3 eso@3 pa(ra)@3 mantener@3 la@3 hierba@3 lo@3 menos@3 que@3 no@3 crezca@3 mucho@3 pero@3 con@3 todo@3 y@3 eso@3 .	\N	\N	1875883	1881482	5599	
896	sastre1	KEV	er@0 te@3 encuentras@3 que@3 [/] # que@3 los@3 lily_pads@2 crecen@3 .	\N	\N	1881451	1888648	7197	
897	sastre1	KEV	y@3 [/] y@3 se@3 mete@3 la@3 basura@3 ahí@3 .	\N	\N	1888614	1891784	3170	
898	sastre1	KEV	y@3 vaya@3 .	\N	\N	1891761	1893212	1451	
899	sastre1	KEV	le@3 echas@3 hoy@3 y@3 a@3 los@3 dos@3 o@3 tres@3 meses@3 ya@3 están@3 de@3 nuevo@3 floreciendo@3 y@3 creciendo@3 .	\N	\N	1893172	1899997	6825	
900	sastre1	KEV	so@2 .	\N	\N	1900007	1900848	841	
901	sastre1	SOF	y@3 la@3 señora@3 de@3 al@3 lado@3 tiene@3 ahora@3 <un@3 hij(o)@3> [//] un@3 nieto@3 no@3 .	\N	\N	1900821	1904553	3732	
902	sastre1	KEV	+< un@3 nieto@3 .	\N	\N	1903829	1904578	749	
906	sastre1	SOF	qué@3 bueno@3 así@3 no@3 está@3 solita@3 .	\N	\N	1907718	1909431	1713	
907	sastre1	KEV	tú@3 sabes@3 que@3 yo@3 pensaba@3 que@3 los@3 hijos@3 de@3 Lucía@0 las@3 [/] las@3 hijas@3 de@3 los@3 hijos@3 vivían@3 fuera@3 de@3 Miami@0 .	\N	\N	1909401	1914080	4679	
908	sastre1	KEV	pero@3 este@3 [/] este@3 vive@3 en@3 Core_Gables@0 .	\N	\N	1914046	1916333	2287	
909	sastre1	SOF	really@2 ?	\N	\N	1916316	1917494	1178	
910	sastre1	KEV	+< <el@3 hijo@3 de@3 ella@3> [/] el@3 hijo@3 de@3 ella@3 que@3 es@3 el@3 papá@3 del@3 nieto@3 vive@3 en@3 Core_Gables@0 .	\N	\N	1916687	1921198	4511	
911	sastre1	SOF	xxx .	\N	\N	1921192	1922144	952	
912	sastre1	KEV	porque@3 como@3 yo@3 nunca@3 los@3 veía@3 por@3 aquí@3 ni@3 na(da)@3 .	\N	\N	1922152	1924823	2671	
913	sastre1	SOF	he@2 must@2 have@2 gotten@2 in@2 a@2 fight@2 .	\N	\N	1922152	1924823	2671	
914	sastre1	SOF	I'm@2 gonna@2 go@2 live@2 with@2 my@2 grandma@2 porque@3 siempre@3 dicen@3 así@3 .	\N	\N	1924805	1928381	3576	
915	sastre1	KEV	+< es@3 posible@3 .	\N	\N	1924805	1928375	3570	
916	sastre1	KEV	es@3 posible@3 tú@3 no@3 te@3 acuerdas@3 hace@3 como@3 dos@3 o@3 tres@3 años@3 atrás@3 cuando@3 primero@3 se@3 mudó@3 ahí@3 que@3 tenía@3 un@3 carrito@3 que@3 lo@3 chocó@3 .	\N	\N	1928383	1931523	3140	
917	sastre1	SOF	mmhm@0 .	\N	\N	1934939	1935368	429	
918	sastre1	KEV	que@3 Lucía@0 lo@3 tuvo@3 tapado@3 ahí@3 mucho@3 tiempo@3 .	\N	\N	1935351	1937290	1939	
919	sastre1	SOF	mmhm@0 .	\N	\N	1937278	1938108	830	
920	sastre1	KEV	er@0 le@3 [/] le@3 taparon@3 le@3 chocaron@3 el@3 carro@3 .	\N	\N	1938070	1941477	3407	
921	sastre1	KEV	y@3 parece@3 que@3 el@3 padre@3 estaba@3 bravo@3 con@3 ellos@3 y@3 no@3 se@3 lo@3 arregló@3 ni@3 na(da)@3 .	\N	\N	1941460	1944403	2943	
922	sastre1	KEV	y@3 estaba@3 parado@3 ahí@3 en@3 casa@3 de@3 Lucía@0 todo@3 ese@3 tiempo@3 .	\N	\N	1944400	1946740	2340	
923	sastre1	KEV	hasta@3 que@3 después@3 de@3 una@3 forma@3 o@3 otra@3 resolvieron@3 .	\N	\N	1946709	1949873	3164	
924	sastre1	KEV	mmhm@0 .	\N	\N	1949890	1952027	2137	
925	sastre1	KEV	viste@3 qué@3 rica@3 está@3 la@3 tarde@3 ?	\N	\N	1951998	1953478	1480	
926	sastre1	SOF	yeah@2 .	\N	\N	1953455	1955266	1811	
927	sastre1	KEV	ha@3 bajado@3 ahora@3 está@3 [//] debe@3 estar@3 a@3 setenta@3 y@3 pico@3 grados@3 .	\N	\N	1955228	1957596	2368	
928	sastre1	KEV	está@3 super@0 rica@3 .	\N	\N	1957567	1958420	853	
929	sastre1	KEV	ya@3 [/] <ya@3 nos@3> [/] ya@3 nos@3 están@3 torturando@3 .	\N	\N	1958414	1964373	5959	
930	sastre1	KEV	ya@3 estos@3 últimos@3 cuatro@3 minutos@3 son@3 [=! laugh] .	\N	\N	1964356	1968477	4121	
931	sastre1	SOF	no@3 y@3 yo@3 que@3 estoy@3 haciendo@3 maternidad@3 y@3 maternidad@3 es@3 lo@3 más@3 # pesado@3 .	\N	\N	1967630	1972303	4673	
932	sastre1	KEV	+< y@3 er@0 er@0 las@3 clases@3 son@3 en@3 español@3 ?	\N	\N	1971176	1973928	2752	
933	sastre1	SOF	ay@3 sí@3 escribir@3 es@3 en@3 español@3 pero@3 los@3 libros@3 son@3 en@3 inglés@3 .	\N	\N	1973914	1977647	3733	
934	sastre1	SOF	so@3 tú@3 me@3 ves@3 a@3 mí@3 ahí@3 .	\N	\N	1977561	1978780	1219	
935	sastre1	SOF	y@3 entonces@3 tengo@3 que@3 ponerme@3 .	\N	\N	1978779	1980242	1463	
936	sastre1	SOF	y@3 entonces@3 tengo@3 un@3 diccionario@3 .	\N	\N	1980200	1981373	1173	
937	sastre1	SOF	porque@3 se@3 me@3 olvida@3 .	\N	\N	1981350	1982127	777	
938	sastre1	SOF	olvídate@3 .	\N	\N	1982125	1982787	662	
939	sastre1	SOF	son@3 mucho@3 tiempo@3 .	\N	\N	1982781	1983698	917	
940	sastre1	SOF	y@3 [/] y@3 a@3 uno@3 se@3 le@3 olvida@3 .	\N	\N	1983666	1984996	1330	
941	sastre1	SOF	uno@3 está@3 acostumbrado@3 a@3 leer@3 en@3 inglés@3 y@3 a@3 escribir@3 en@3 inglés@3 .	\N	\N	1984984	1987266	2282	
942	sastre1	KEV	sí@3 .	\N	\N	1987289	1987608	319	
943	sastre1	SOF	+< entonces@3 tienes@3 que@3 escribirlo@3 en@3 español@3 .	\N	\N	1987329	1988978	1649	
944	sastre1	KEV	mmhm@0 .	\N	\N	1988955	1989605	650	
945	sastre1	KEV	hay@3 que@3 .	\N	\N	1989580	1991240	1660	
946	sastre1	SOF	+< lo@3 he@3 dejado@3 y@3 lo@3 he@3 dejado@3 .	\N	\N	1989580	1991269	1689	
947	sastre1	SOF	y@3 tengo@3 que@3 hacer@3 dos@3 trabajos@3 pa(ra)@3 el@3 cuatro@3 y@3 tengo@3 examen@3 el@3 cuatro@3 .	\N	\N	1991263	1994328	3065	
948	sastre1	KEV	mmhm@0 .	\N	\N	1994321	1995035	714	
949	sastre1	SOF	y@3 lo@3 he@3 dejado@3 tanto@3 tiempo@3 que@3 no@3 he@3 acabado@3 .	\N	\N	1995012	1997177	2165	
950	sastre1	KEV	+< sí@3 .	\N	\N	1996469	1997200	731	
951	sastre1	KEV	er@0 tú@3 sabes@3 que@3 te@3 voy@3 a@3 conseguir@3 una@3 copia@3 .	\N	\N	1997148	1999017	1869	
952	sastre1	KEV	yo@3 tengo@3 un@3 diccionario@3 inglés@3 español@3 .	\N	\N	1998982	2001298	2316	
953	sastre1	KEV	que@3 es@3 un@3 C_D@2 que@3 van@3 en@3 la@3 computadora@3 .	\N	\N	2001303	2003056	1753	
954	sastre1	KEV	tú@3 no@3 nunca@3 has@3 usado@3 eso@3 .	\N	\N	2003010	2005198	2188	
955	sastre1	SOF	no@3 no@3 .	\N	\N	2005215	2006086	871	
956	sastre1	KEV	espera@3 te@3 voy@3 a@3 buscar@3 .	\N	\N	2006091	2007583	1492	
957	sastre1	SOF	+< yo@3 lo@3 que@3 tengo@3 es@3 el@3 [//] el@3 que@3 [/] el@3 +/ .	\N	\N	2006254	2009149	2895	
958	sastre1	KEV	el@3 inglés@3 español@3 regular@3 .	\N	\N	2008899	2010304	1405	
959	sastre1	SOF	sí@3 el@3 xxx ese@3 que@3 mi@3 mamá@3 me@3 lo@3 dejó@3 .	\N	\N	2010240	2012632	2392	
960	sastre1	SOF	mis@3 padres@3 siempre@3 lo@3 tenían@3 y@3 me@3 me@3 lo@3 heredé@3 yo@3 .	\N	\N	2012594	2015711	3117	
961	sastre1	SOF	y@3 lo@3 tengo@3 ahí@3 .	\N	\N	2015672	2016410	738	
962	sastre1	KEV	+< yo@3 te@3 voy@3 a@3 conseguir@3 una@3 copia@3 de@3 esto@3 porque@3 esto@3 es@3 en@3 la@3 computadora@3 .	\N	\N	2015764	2019282	3518	
963	sastre1	KEV	y@3 lo@3 tienes@3 en@3 el@3 desktop@2 .	\N	\N	2019286	2020952	1666	
964	sastre1	KEV	aprietas@3 así@3 .	\N	\N	2020935	2022514	1579	
965	sastre1	KEV	pones@3 la@3 palabra@3 en@3 inglés@3 o@3 en@3 español@3 .	\N	\N	2022490	2024232	1742	
966	sastre1	KEV	y@3 te@3 da@3 la@3 [/] la@3 traducción@3 .	\N	\N	2024201	2026889	2688	
967	sastre1	SOF	&=cough .	\N	\N	2026841	2027723	882	
968	sastre1	KEV	y@3 te@3 da@3 usos@3 y@3 cosas@3 de@3 diferentes@3 cosas@3 de@3 la@3 de@3 la@3 .	\N	\N	2027700	2032509	4809	
\.


--
-- Name: sastre1_cgutterances_pk; Type: CONSTRAINT; Schema: public; Owner: kevin; Tablespace: 
--

ALTER TABLE ONLY sastre1_cgutterances
    ADD CONSTRAINT sastre1_cgutterances_pk PRIMARY KEY (utterance_id);


--
-- PostgreSQL database dump complete
--

