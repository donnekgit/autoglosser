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
-- Name: stammers8_cgutterances; Type: TABLE; Schema: public; Owner: kevin; Tablespace: 
--

CREATE TABLE stammers8_cgutterances (
    utterance_id integer NOT NULL,
    filename character varying(50),
    speaker character varying(10),
    surface text,
    gls text,
    eng text,
    com text,
    comment text,
    durbegin integer,
    durend integer,
    duration character varying(50),
    precode character varying(10)
);


ALTER TABLE public.stammers8_cgutterances OWNER TO kevin;

--
-- Name: stammers8_cgutterances_utterance_id_seq; Type: SEQUENCE; Schema: public; Owner: kevin
--

CREATE SEQUENCE stammers8_cgutterances_utterance_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.stammers8_cgutterances_utterance_id_seq OWNER TO kevin;

--
-- Name: stammers8_cgutterances_utterance_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kevin
--

ALTER SEQUENCE stammers8_cgutterances_utterance_id_seq OWNED BY stammers8_cgutterances.utterance_id;


--
-- Name: stammers8_cgutterances_utterance_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kevin
--

SELECT pg_catalog.setval('stammers8_cgutterances_utterance_id_seq', 945, true);


--
-- Name: utterance_id; Type: DEFAULT; Schema: public; Owner: kevin
--

ALTER TABLE stammers8_cgutterances ALTER COLUMN utterance_id SET DEFAULT nextval('stammers8_cgutterances_utterance_id_seq'::regclass);


--
-- Data for Name: stammers8_cgutterances; Type: TABLE DATA; Schema: public; Owner: kevin
--

COPY stammers8_cgutterances (utterance_id, filename, speaker, surface, gls, eng, com, comment, durbegin, durend, duration, precode) FROM stdin;
34	stammers8	ISL	<oh@s:cym&eng dw i gyn &s> [?] +. . .	IM be.1S.PRES PRON.1S with	oh, I've got...	\N	\N	56252	57622	1370	
1	stammers8	ISL	Ann_Andrews@s:cym&eng sy (y)n sefyll ## i (y)r Cynulliad yn yr ardal yma .	Ann_Andrews be.PRES.REL PRT stand.NONFIN to DET Assembly in DET area here	it's Ann Andrews standing for the Assembly in this area.	\N	\N	313	5074	4761	
24	stammers8	ISL	mae (y)n annwyd i dipyn bach well .	be.3S.PRES POSS.1S cold PRON.1S a_little little better	my cold's a little bit better.	\N	\N	41916	43901	1985	
2	stammers8	CAR	ia ?	yes	yes?	\N	\N	5039	5689	650	
3	stammers8	ISL	un da (y)dy hi .	one good be.3S.PRES PRON.3SF	she's a good one.	\N	\N	5793	7152	1359	
4	stammers8	CAR	oh@s:cym&eng .	\N	\N	\N	\N	7198	7767	569	
5	stammers8	ISL	mae (y)n ferch i &s # A_A_Andrews@s:cym&eng .	be.3S.PRES PRT daughter to A_A_Andrews	she's the daughter of A.A.Andrews.	\N	\N	8951	11564	2613	
25	stammers8	CAR	mae o yndy .	be.3S.PRES PRON.3SM be.3S.PRES	it is, yes.	\N	\N	43518	44586	1068	
6	stammers8	CAR	yndy ?	be.3S.PRES	is she?	\N	\N	11819	12771	952	
7	stammers8	ISL	y bardd .	DET poet	the poet.	\N	\N	12748	14164	1416	
40	stammers8	CAR	<peth bychan> [?] ?	thing tiny	a small thing?	\N	\N	67061	68001	940	
8	stammers8	CAR	ia .	yes	yes.	\N	\N	13746	14373	627	
9	stammers8	ISL	&n yeah@s:cym&eng .	\N	\N	\N	\N	14478	15023	545	
26	stammers8	ISL	a mae gynna i andros o ddolur annwyd yn fa(n) (y)ma .	and be.3S.PRES with.1S PRON.1S devil of soreness cold in place here	and I've got one heck of a cold sore here.	\N	\N	44614	47134	2520	
10	stammers8	ISL	mae (y)n enwog .	be.3S.PRES PRT famous	he's famous.	\N	\N	16313	17009	696	
11	stammers8	ISL	mae (we)di sgwennu llyfrau (be)th bynnag .	be.3S.PRES PRT.PAST write.NONFIN books what ever	he's written some books anyway.	\N	\N	17009	18739	1730	
12	stammers8	ISL	wnaethon ni wrando arni (y)n ## Mynydd_Isa@s:cym&eng noson o_blaen .	do.1PL.PAST PRON.1PL listen.NONFIN to.3SF in Mynydd_Isa night before	we listened to her in Mynydd Isa the other night.	\N	\N	19180	23523	4343	
13	stammers8	CAR	+< oh@s:cym&eng .	\N	\N	\N	\N	22420	23314	894	
27	stammers8	CAR	o:h@s:cym&eng wyt .	IM be.2S.PRES	oh, you have.	\N	\N	46373	47940	1567	
14	stammers8	ISL	oedd y lle yn llawn .	be.3S.IMP DET place PRT full	the place was full.	\N	\N	23778	25427	1649	
15	stammers8	ISL	ac oedd Dafydd_Wigley@s:cym&eng yna .	and be.3S.IMP Dafydd_Wigley there	and Dafydd Wigley was there.	\N	\N	25717	27307	1590	
16	stammers8	CAR	oedd ?	be.3S.IMP	was he?	\N	\N	27412	28387	975	
28	stammers8	ISL	mae (y)n debyg iawn mai [?] ringworm@s:eng ydy [?] .	be.3S.PRES PRT likely very PRT ringworm be.3S.PRES	it's quite likely to be ringworm.	\N	\N	48346	50238	1892	
17	stammers8	ISL	+, a Anna@s:cym&eng a Bridget@s:cym&eng a # lot@s:cym&eng o bobl .	and Anna and Bridget and lot of people	and Anna and Bridget, and lots of people.	\N	\N	28813	32180	3367	
18	stammers8	CAR	oh@s:cym&eng .	\N	\N	\N	\N	32099	32528	429	
19	stammers8	CAR	ti (y)n mynd i (y)r côr heno ?	PRON.2S PRT go.NONFIN to DET choir tonight	are you going to choir tonight?	\N	\N	32737	34293	1556	
35	stammers8	ISL	oh@s:cym&eng [=! laughs] # mae yn y pocket@s:cym&eng (y)na !	IM be.3S.PRES in DET pocket there	oh, it's in that pocket!	ISL cannot get at his shirt pocket because the radio-mic is clipped to it.	ISL cannot get at his shirt pocket because the radio-mic is clipped to it.	57878	59770	1892	
20	stammers8	ISL	+, enwog [?] .	famous	...who are famous.	\N	\N	33771	34572	801	
29	stammers8	CAR	nac ydy !	NEG be.3S.PRES	no!	\N	\N	50366	51295	929	
21	stammers8	ISL	question@s:cym&eng da iawn !	question good very	a very good question!	\N	\N	35094	36661	1567	
22	stammers8	CAR	oes (y)na (ry)wbeth arall xxx ?	be.3S.PRES there something other xxx	is there something else [...] ?	\N	\N	37288	38798	1510	
23	stammers8	ISL	ah@s:cym&eng hwyrach a i heno .	IM perhaps go.1S.NONPAST PRON.1S tonight	ah, maybe I'll go tonight.	\N	\N	39966	41905	1939	
30	stammers8	ISL	basai # ofnadwy !	be.3S.CONDIT awful	it would be awful.	\N	\N	51271	53129	1858	
41	stammers8	ISL	ie !	yes	yes!	\N	\N	67583	68001	418	
31	stammers8	CAR	+< oedd [/] oedd Bob@s:cym&eng gyn rywbeth hefyd .	be.3S.IMP be.3S.IMP Bob with.3SM something too	Bob had something as well.	\N	\N	52467	55126	2659	
36	stammers8	ISL	Cymex@s:cym&eng ["] (y)dy enw fo .	Cymex be.3S.PRES name PRON.3SM	"Cymex", it's called.	\N	\N	59932	61395	1463	
32	stammers8	CAR	oedd o (y)r u(n) fath oedd .	be.3S.IMP PRON.3SM DET one kind be.3S.IMP	he was the same, yes.	\N	\N	55149	56473	1324	
37	stammers8	CAR	xxx +/ .	\N	\N	\N	\N	62127	62905	778	
33	stammers8	ISL	+< oedd ?	be.3S.IMP	did he?	\N	\N	55219	55718	499	
38	stammers8	ISL	C_Y_M_E_X@s:cym&eng .	\N	\N	\N	\N	62614	65575	2961	
45	stammers8	CAR	mae [/] mae Adam@s:cym&eng +/ .	be.3S.PRES be.3S.PRES Adam	Adam is...	\N	\N	71612	72687	1075	
39	stammers8	CAR	+< mmm@s:cym&eng # yeah@s:cym&eng dan +// .	IM yeah be.1PL.PRES	mmm, yeah we...	\N	\N	64936	67045	2109	
42	stammers8	CAR	ie dw i gyn hwnna .	yes be.1S.PRES PRON.1S with.1S that	yes, I've got that.	\N	\N	68013	69522	1509	
47	stammers8	CAR	well@s:cym&eng mae (y)n dibynnu be sy matter@s:cym&eng efo ti yndy ?	well be.3S.PRES PRT depend.NONFIN what be.PRES.REL matter with PRON.2S be.3S.PRES	well, it depends what's the matter with you, doesn't it?	\N	\N	75420	78079	2659	
43	stammers8	ISL	+< tube@s:cym&eng melyn .	tube yellow	a yellow tube.	\N	\N	68768	69592	824	
46	stammers8	ISL	p(a) (y)r un (y)dy (y)r gorau Cymex@s:cym&eng neu Germolene@s:cym&eng ?	which DET one be.3S.PRES DET best Cymex or Germolene	which is the best, Cymex or Germolene?	\N	\N	72262	74654	2392	
44	stammers8	CAR	mae (y)n un da yndy ?	be.3S.PRES PRT one good be.3S.PRES	it's a good one, isn't it?	\N	\N	69720	70916	1196	
48	stammers8	ISL	yndy mae o .	be.3S.PRES be.3S.PRES PRON.3SM	yes, it does.	\N	\N	77986	79286	1300	
49	stammers8	CAR	mae Adam@s:cym&eng yn llawn o annwyd .	be.3S.PRES Adam PRT full of cold	Adam's full of cold.	\N	\N	79275	81039	1764	
50	stammers8	CAR	oedd o (y)n mynd at y meddyg bore (y)ma .	be.3S.IMP PRON.3SM PRT go.NONFIN to DET doctor morning here	he was going to the doctor this morning.	\N	\N	81097	82955	1858	
51	stammers8	CAR	Zoe@s:cym&eng [/] Zoe@s:cym&eng ac Adam@s:cym&eng .	Zoe Zoe and Adam	Zoe and Adam.	\N	\N	83569	85368	1799	
52	stammers8	ISL	+< pwy ?	who	who?	\N	\N	83755	84161	406	
101	stammers8	CAR	+< well@s:cym&eng &bə &bə lle mae +. . .	well where be.3S.PRES	well. . . where's...	\N	\N	183749	186349	2600	
53	stammers8	CAR	<oedd o> [//] mae o (y)n llawn # annwyd .	be.3S.IMP PRON.3SM be.3S.PRES PRON.3SM PRT full cold	he's full of cold.	\N	\N	85426	87609	2183	
54	stammers8	ISL	+< oh@s:cym&eng .	\N	\N	\N	\N	85740	86285	545	
55	stammers8	ISL	oh@s:cym&eng !	\N	\N	\N	\N	87644	88631	987	
56	stammers8	CAR	hmm@s:cym&eng .	\N	\N	\N	\N	88712	89304	592	
93	stammers8	ISL	yeah@s:cym&eng ond oedd o (y)n meddwl fasen nhw (we)di cael llymaid o rywbeth !	yeah but be.3S.IMP PRON.3SM PRT think.NONFIN be.3PL.CONDIT PRON.3PL PRT.PAST get.NONFIN sip of something	yeah, but he'd thought they'd get a sip of something!	\N	\N	171202	174023	2821	
57	stammers8	ISL	well@s:cym&eng xxx alaw [?] gyn Ben@s:cym&eng # Bennett@s:cym&eng # Pistyll_Isa@s:cym&eng .	well xxx tune from Ben Bennett Pistyll_Isa	well, [?there'll be] a tune by Ben Bennett from Pistyll Isa.	\N	\N	89282	93914	4632	
75	stammers8	ISL	fo (y)dy prifathro Llysfasi@s:cym&eng .	PRON.3SM be.3S.PRES headmaster Llysfasi	he's the headmaster of Llysfasi.	\N	\N	142551	144583	2032	
58	stammers8	ISL	Argian !	Lord	God!	\N	\N	94335	95090	755	
84	stammers8	CAR	oedd oedd .	be.3S.IMP be.3S.IMP	yes, I did.	\N	\N	157839	159197	1358	
76	stammers8	CAR	wyt ti (y)n +/ .	be.2S.PRES PRON.2S PRT	are you...	\N	\N	146185	146750	565	
59	stammers8	ISL	ar_ôl bod i # Llysfasi@s:cym&eng yeah@s:cym&eng .	after be.NONFIN to Llysfasi yeah	after going to Llysfasi, yeah.	Llysfasi is the name of an agricultural college.	Llysfasi is the name of an agricultural college.	95067	97946	2879	
60	stammers8	ISL	wsnos i heno neu bythefnos i heno oedd hi .	week to tonight or fortnight to tonight be.3S.IMP PRON.3SF	it was a week or a fortnight ago tonight.	\N	\N	99513	101859	2346	
61	stammers8	ISL	nos Wener oedd hi bynnag .	night Friday be.3S.IMP PRON.3SF ever	it was a Friday night, anyway.	\N	\N	103127	104996	1869	
77	stammers8	ISL	a mae (y)n dod o Gogledd_Iwerddon .	and be.3S.PRES PRT come.NONFIN from Northern_Ireland	and he comes from Northern Ireland.	\N	\N	146251	147787	1536	
62	stammers8	ISL	ew oedd o (y)n y # stafell ## gwrando ar +// .	IM be.3S.IMP PRON.3SM in DET room listen.NONFIN on	ooh, he was in the room listening to...	\N	\N	105023	110154	5131	
63	stammers8	ISL	well@s:cym&eng oedd hi (y)n forum@s:cym&eng .	well be.3S.IMP PRON.3SF PRT forum	well, it was a forum.	\N	\N	110768	112092	1324	
90	stammers8	CAR	+" dyna cwbl !	there all	"that's all!"	\N	\N	167661	168590	929	
64	stammers8	ISL	oedd (y)na bedwar o bobl yna ## o bob plaid &we wleidyddol .	be.3S.IMP there four of people there from every party political	there were four people there, from each political party.	\N	\N	112231	117305	5074	
78	stammers8	ISL	mae (we)di dysgu Cymraeg yn rhugl .	be.3S.PRES PRT.PAST learn.NONFIN Welsh PRT fluent	he's learnt Welsh fluently.	\N	\N	147775	149737	1962	
65	stammers8	ISL	Colin_Collins@s:cym&eng Dickie_Dixon@s:cym&eng Cilcain@s:cym&eng ## Eddie_Evans@s:cym&eng ## dros y blaid +. . .	Colin_Collins Dickie_Dixon Cilcain Eddie_Evans over DET party	Colin Collins, Dickie Dixon from Cilcain, Eddie Evans for the party...	\N	\N	117387	123901	6514	
66	stammers8	CAR	+< mmm@s:cym&eng .	\N	\N	\N	\N	117527	117910	383	
67	stammers8	ISL	mmm@s:cym&eng xx <enw (y)r llall> [?] # rhyddfrydwr # oedd arfer bod (y)n athro (y)n y ## canoldir .	IM xx name DET other liberal be.3S.IMP use.NONFIN be.NONFIN PRT teacher in DET midland	mmm, [..] the name of the other one, a liberal, who used to be a teacher in the midlands.	\N	\N	125642	132480	6838	
85	stammers8	CAR	<(dd)aru o (ddi)m> [?] cael &kumn paned o de na ddim_byd efo fo !	happen.PAST PRON.3SM NEG get.NONFIN hot_drink of tea nor nothing with PRON.3SM	he didn't get a cup of tea or anything with it!	\N	\N	159139	162715	3576	
68	stammers8	ISL	a [?] mae (we)di prynu dwy farm@s:cym&eng rŵan yn [?] ## Sir_Drefaldwyn .	and be.3S.PRES PRT.PAST buy.NONFIN two.F farm now in Montgomeryshire	and he's bought two farms now in Montgomeryshire.	\N	\N	132387	135957	3570	
79	stammers8	CAR	+< yndy ?	be.3S.PRES	has he?	\N	\N	149018	149498	480	
69	stammers8	CAR	+< oh@s:cym&eng oh@s:cym&eng yndy ?	IM IM be.3S.PRES	oh, has he?	\N	\N	133794	134816	1022	
70	stammers8	CAR	oh@s:cym&eng .	\N	\N	\N	\N	136511	136963	452	
71	stammers8	ISL	xxx +// .	\N	\N	\N	\N	137338	138093	755	
72	stammers8	ISL	oh@s:cym&eng ## Francis@s:cym&eng !	\N	\N	\N	\N	138174	140194	2020	
73	stammers8	ISL	Frankie_Francis@s:cym&eng !	\N	\N	\N	\N	140844	142168	1324	
74	stammers8	CAR	oh@s:cym&eng yeah@s:cym&eng !	\N	\N	\N	\N	142342	143468	1126	
80	stammers8	CAR	ew dyna ardderchog yn_de !	IM there excellent TAG	ooh, that's excellent, isn't it!	\N	\N	149475	151653	2178	
81	stammers8	ISL	a mae (y)n # nabod Chris@s:cym&eng ac Olga@s:cym&eng .	and be.3S.PRES PRT know.NONFIN Chris and Olga	and he knows Chris and Olga.	\N	\N	151356	153794	2438	
86	stammers8	ISL	+< a mae (y)n +/ .	and be.3S.PRES PRT	and he's...	\N	\N	160451	161043	592	
82	stammers8	CAR	yndy ?	be.3S.PRES	does he?	\N	\N	153747	154386	639	
83	stammers8	ISL	well@s:cym&eng ti (y)n gwybod bod Chris@s:cym&eng (we)di cael M_B_E@s:cym&eng oedd [=? wyt] ?	well PRON.2S PRT know.NONFIN be.NONFIN Chris PRT.PAST get.NONFIN M_B_E be.3S.IMP	well, you know Chris's had an M.B.E., didn't you?	\N	\N	155326	157892	2566	
87	stammers8	ISL	&=laugh <am anrhyd(edd)> [?] +/ .	for honour	what an honour...	\N	\N	162715	165555	2840	
91	stammers8	ISL	+< +, anrhydedd ## am ei waith .	honour for POSS.3SM work	...honour for his work.	\N	\N	167719	170691	2972	
88	stammers8	CAR	hynny [?] just@s:cym&eng roi iddo fo !	those just give.NONFIN to.3SM PRON.3SM	they just give it to him!	\N	\N	165176	166604	1428	
89	stammers8	CAR	+" ta_ra@s:cym&eng !	\N	\N	\N	\N	166721	167301	580	
92	stammers8	CAR	+< na ddwn i (ddi)m .	no know.1S.NONPAST.NEG PRON.1S NEG	no, I don't know.	\N	\N	169553	170563	1010	
95	stammers8	ISL	mae Chris@s:cym&eng yn gefnder gynta i ni yndy ?	be.3S.PRES Chris PRT cousin first to PRON.1PL be.3S.PRES	Chris's a first cousin of ours, isn't he?	\N	\N	174290	176577	2287	
94	stammers8	ISL	+< mae Chris@s:cym&eng yn &ge +/ .	be.3S.PRES Chris PRT	Chris is...	\N	\N	171852	173013	1161	
96	stammers8	ISL	hmm@s:cym&eng !	\N	\N	\N	\N	177251	177785	534	
97	stammers8	CAR	&=sniff .	\N	\N	\N	\N	177948	178668	720	
98	stammers8	ISL	chwarae teg iddo fo .	play.NONFIN fair to.3SM PRON.3SM	fair play to him.	\N	\N	178807	180502	1695	
99	stammers8	ISL	Chris@s:cym&eng ac Olga@s:cym&eng # mab Auntie@s:cym&eng Dawn@s:cym&eng # a Uncle@s:cym&eng Daniel@s:cym&eng .	Chris and Olga son Auntie Dawn and Uncle Daniel	Chris and Olga, son of Auntie Dawn and Uncle Daniel.	\N	\N	180440	184515	4075	
100	stammers8	CAR	+< yeah@s:cym&eng sure@s:cym&eng ia .	yeah sure yes	yeah, sure, yes.	\N	\N	181798	183226	1428	
193	stammers8	CAR	<daru o> [?] ddod yma ?	happen.PAST PRON.3SM come.NONFIN here	did he come here?	\N	\N	354268	355359	1091	
102	stammers8	CAR	&=sigh &bə hwnnw sy (y)n byw yn Sir_Fôn be +// .	that be.PRES.REL PRT live in Anglesey what	oh, the one who lives on Anglesey, what...	\N	\N	187650	190153	2503	
103	stammers8	CAR	Gary@s:cym&eng !	\N	\N	\N	\N	190146	190924	778	
104	stammers8	ISL	oh@s:cym&eng Gary_Graham@s:cym&eng .	\N	\N	\N	\N	190459	191806	1347	
132	stammers8	ISL	soldier@s:cym&eng ydy o .	soldier be.3S.PRES PRON.3SM	he's a soldier.	\N	\N	240332	241447	1115	
105	stammers8	CAR	lle mae (y)n byw ?	where be.3S.PRES PRT live.NONFIN	where does he live?	\N	\N	191005	192004	999	
106	stammers8	ISL	Cemaes@s:cym&eng neu rywle felly .	Cemaes or somewhere thus	Cemaes, or somewhere like that.	\N	\N	193292	195463	2171	
122	stammers8	ISL	<(dd)a(ru) nhw> [?] [/] ## (dd)a(ru) nhw ddod yn arbennig o Lundain do ?	do.3PL.NONPAST PRON.3PL do.3PL.NONPAST PRON.3PL come.NONFIN PRT special from London yes	they came from London especially, didn't they?	Islwyn often seems to shorten the word "ddaru" to [a]	Islwyn often seems to shorten the word "ddaru" to [a]	220676	224287	3611	
107	stammers8	CAR	ia ia .	yes yes	yes, yes.	\N	\N	194662	195951	1289	
108	stammers8	ISL	rywle felly .	somewhere thus	somewhere like that.	\N	\N	196253	197449	1196	
137	stammers8	CAR	<be (y)dy hwnna> [=! whispers] ?	what be.3S.PRES that	what's that?	\N	\N	247113	248727	1614	
109	stammers8	CAR	so@s:cym&eng oedd o gyn um@s:cym&eng +/ .	so be.3S.IMP PRON.3SM with IM	so he had, er...	\N	\N	198830	200583	1753	
123	stammers8	ISL	yeah@s:cym&eng oedd Freda@s:cym&eng yn ffrindiau efo ### Betty_Brown@s:cym&eng yn_doedd o Trelogan@s:cym&eng .	yeah be.3S.IMP Freda PRT friends with Betty_Brown be.3S.IMP.NEG from Trelogan	yes, Freda was friends with Betty Brown, wasn't she, from Trelogan?	\N	\N	225274	230823	5549	
110	stammers8	ISL	+, a ei wraig Em(ma)@s:cym&eng [/] Emma@s:cym&eng .	and POSS.3SM wife Emma Emma	and his wife Emma.	\N	\N	200049	202139	2090	
124	stammers8	CAR	+< mmm@s:cym&eng .	\N	\N	\N	\N	227329	227898	569	
111	stammers8	CAR	oedd o gyn exhibition@s:eng neu <be (y)dy gair> [?] yn yr Oriel@s:cym&eng yn_doedd yn Llangefni@s:cym&eng ?	be.3S.IMP PRON.3SM with exhibition or what be.3S.PRES word in DET Oriel be.3S.IMP.NEG in Llangefni	he had an exhibition or, what's the word, at the Oriel in Llangefni?	\N	\N	202739	207685	4946	
112	stammers8	ISL	+< oe(dd) .	be.3S.IMP	yes.	\N	\N	204713	205119	406	
133	stammers8	CAR	ia ac oedd o (y)n mynd +/ .	yes and be.3S.IMP PRON.3SM PRT go.NONFIN	yes, and he was going...	\N	\N	241158	243131	1973	
113	stammers8	ISL	oe(dd) # ti (y)n iawn oedd !	be.3S.IMP PRON.2S PRT right be.3S.IMP	yes, you're right, yes.	\N	\N	207998	210587	2589	
125	stammers8	CAR	+< oedd oedd .	be.3S.IMP be.3S.IMP	yes, she was.	\N	\N	229848	230963	1115	
114	stammers8	ISL	(dd)aru Chris@s:cym&eng fynd ?	happen.PAST Chris go.NONFIN	did Chris go?	\N	\N	210727	211771	1044	
115	stammers8	CAR	do !	yes	yes!	\N	\N	212433	213234	801	
116	stammers8	ISL	oh@s:cym&eng do ?	IM yes	oh, yes?	\N	\N	213165	213966	801	
126	stammers8	CAR	oeddet ti (y)n siarad am Zimbabwe@s:cym&eng yn_de ?	be.2S.IMP PRON.2S PRT talk.NONFIN about Zimbabwe TAG	you were talking about Zimbabwe, right?	\N	\N	232112	234016	1904	
117	stammers8	CAR	+< dw i meddwl bod nhw (we)di mynd .	be.1S.PRES PRON.1S think.NONFIN be.NONFIN PRON.3PL PRT.PAST go.NONFIN	I think they went.	\N	\N	213501	214987	1486	
118	stammers8	CAR	dwn i (dd)im os xx [//] ddaru Auntie@s:cym&eng Dawn@s:cym&eng mynd .	know.1S.NONPAST.NEG PRON.1S NEG if xx happen.PAST Auntie Dawn go.NONFIN	I don't know whether [...] Auntie Dawn went.	\N	\N	214987	217182	2195	
138	stammers8	ISL	major .	\N	\N	\N	\N	248785	249795	1010	eng
119	stammers8	CAR	ond ddaru Freda@s:cym&eng fynd .	but happen.PAST Freda go.NONFIN	but Freda went.	\N	\N	217158	218807	1649	
127	stammers8	ISL	+< a mae hi +/ .	and be.3S.PRES PRON.3SF	and she...	\N	\N	232785	233633	848	
120	stammers8	ISL	oh@s:cym&eng do Freda@s:cym&eng a Eric@s:cym&eng .	IM yes Freda and Eric	oh yes, Freda and Eric.	\N	\N	218691	220688	1997	
128	stammers8	ISL	yeah@s:cym&eng .	\N	\N	\N	\N	233935	234330	395	
121	stammers8	CAR	+< oedd [?] fi (y)n meddwl bod Auntie@s:cym&eng Dawn@s:cym&eng yn sâl .	be.1S.IMP PRON.1S PRT think.NONFIN be.NONFIN Auntie Dawn PRT sick	I thought Auntie Dawn was ill.	\N	\N	218923	221222	2299	
134	stammers8	ISL	+< mae (y)n ## uwch_ringyll .	be.3S.PRES PRT sargeant_major	he's a sargeant-major.	\N	\N	242853	245117	2264	
129	stammers8	CAR	ddaru # Frank@s:cym&eng mynd yna efo ryw +. . .	happen.PAST Frank go.NONFIN there with some	Frank went there with some...	\N	\N	234063	237274	3211	
130	stammers8	CAR	o (y)r fyddin (y)n_de [?] ?	from DET army TAG	from the Army, right?	\N	\N	237204	239426	2222	
131	stammers8	ISL	yeah@s:cym&eng .	\N	\N	\N	\N	239484	239821	337	
142	stammers8	CAR	oedd (y)na naw ohonyn nhw yn mynd ar sleeper@s:eng # ar y train@s:cym&eng yn_de .	be.3S.IMP there nine of.3PL PRON.3PL PRT go.NONFIN on sleeper on DET train TAG	there were nine of them going on a sleeper on the train, right.	\N	\N	254103	257980	3877	
139	stammers8	CAR	yndy .	be.3S.PRES	yes.	\N	\N	249702	250782	1080	
135	stammers8	CAR	nhw gorfod [?] mynd ar train@s:cym&eng .	PRON.3PL must.NONFIN go.NONFIN on train	they had to go on a train.	dialectal form of gorfod apparently used: "gafo" .	dialectal form of gorfod apparently used: "gafo" .	243363	245175	1812	
136	stammers8	ISL	uwch_ringyll .	sargeant_major	a sargeant-major.	\N	\N	245523	247218	1695	
143	stammers8	ISL	oh@s:cym&eng yeah@s:cym&eng ?	\N	\N	\N	\N	257853	258329	476	
140	stammers8	CAR	ac er@s:cym&eng pan oedd o (y)n # dechrau oedd hwn yn_de [?] .	and IM when be.3S.IMP PRON.3SM PRT start.NONFIN be.3S.IMP this TAG	and this was when he was starting, right.	\N	\N	250805	253360	2555	
141	stammers8	CAR	ac o'n nhw gorfod +// .	and be.3PL.IMP PRON.3PL must.NONFIN	and they had to...	\N	\N	253348	254149	801	
144	stammers8	CAR	ac <oedd (y)na (he)blaw> [?] ## le i um@s:cym&eng +// .	and be.3S.IMP there except  place for IM	and [?that was quite apart from any] space for, um...	CAR here and later uses "heblaw" in an unusual way	CAR here and later uses "heblaw" in an unusual way	258375	261672	3297	
145	stammers8	CAR	neu wyth neu (ry)wbeth .	or eight or something	or eight or something.	\N	\N	261731	262903	1172	
146	stammers8	CAR	wyth oedd o .	eight be.3S.IMP PRON.3SM	eight, it was.	\N	\N	262892	263821	929	
147	stammers8	ISL	+< yeah@s:cym&eng # yeah@s:cym&eng .	\N	\N	\N	\N	263031	264239	1208	
194	stammers8	ISL	naddo .	no	no.	\N	\N	355928	356764	836	
195	stammers8	CAR	xxx +/ .	\N	\N	\N	\N	356822	357565	743	
196	stammers8	ISL	+< Iceland@s:cym&eng ?	\N	\N	\N	\N	356938	357797	859	
148	stammers8	CAR	ac <o'n nhw> [///] oedd y dynion ar y railway@s:cym&eng methu dallt sut i roi nhw i_mewn yn_de .	and be.3PL.IMP PRON.3PL be.3S.IMP DET men on DET railway fail.NONFIN understand.NONFIN how to put.NONFIN PRON.3PL in TAG	and they. . . the men on the railway couldn't see how to get them in, right.	\N	\N	264262	269533	5271	
149	stammers8	ISL	yeah@s:cym&eng .	\N	\N	\N	\N	269463	269788	325	
183	stammers8	ISL	a hwnna a hwnna # a hwnna hwnna # crochet@s:eng [?] .	and that and that and that that crochet	and that and that, and that, that, crochet	\N	\N	335297	339174	3877	
150	stammers8	CAR	ac o'n nhw yna am hydoedd [?] .	and be.3PL.IMP PRON.3PL there for ages	and they were there for ages.	\N	\N	270114	272192	2078	
167	stammers8	CAR	ac oedden nhw methu dallt sut i wneud o &=laugh .	and be.3PL.IMP PRON.3PL fail.NONFIN understand.NONFIN how to do.NONFIN PRON.3SM	and they couldn't understand how to do it.	\N	\N	309433	312510	3077	
151	stammers8	CAR	sut i roi nhw mewn lle (he)blaw xxx +. . .	how to put.NONFIN PRON.3PL in place besides xxx	how to put them in place ?besides [...] ...	\N	\N	272935	276743	3808	
168	stammers8	ISL	oh@s:cym&eng .	\N	\N	\N	\N	312471	313249	778	
152	stammers8	CAR	naw oedden nhw yeah@s:cym&eng naw .	nine be.3PL.IMP PRON.3PL yeah nine	there were nine of them, yeah, nine.	\N	\N	276929	278403	1474	
153	stammers8	CAR	ac <o'n nhw &me> [///] na (he)blaw # dau wely neu rywbeth xxx nhw (ddi)m yn gwybod be i wneud .	and be.3PL.IMP PRON.3PL  no besides two.M bed or something xxx PRON.3PL NEG PRT know.NONFIN what to do.NONFIN	and they. . . no, apart from two beds or something, they didn't know what to do.	\N	\N	278391	282792	4401	
179	stammers8	CAR	+< dw i (y)n gwybod do .	be.1S.PRES PRON.1S PRT know.NONFIN yes	yes, I know.	\N	\N	330931	332092	1161	
154	stammers8	CAR	neu pedwar .	or four	or four.	\N	\N	282884	283941	1057	
169	stammers8	ISL	oedd (y)na (ddi)m raid i nhw gysgu ar dop@s:cym&eng ei_gilydd .	be.3S.IMP there NEG necessity to PRON.3PL sleep.NONFIN on top each_other	they didn't have to sleep on top of each other.	\N	\N	313365	315397	2032	
155	stammers8	CAR	oh@s:cym&eng xxx gau [/] gau ngheg rŵan dw i (we)di colli hi xxx .	IM xxx shut.NONFIN shut.NONFIN mouth.POSSD.1S now be.1S.PRES PRON.1S PRT.PAST lose.NONFIN PRON.3SF xxx	oh [...] shut up now, I've lost it [...]	\N	\N	284309	287734	3425	
156	stammers8	ISL	+< ie .	yes	yes.	\N	\N	286909	287339	430	
157	stammers8	ISL	a be (dd)aru ddigwydd ?	and what happen.PAST happen.NONFIN	and what happened?	\N	\N	288152	289162	1010	
158	stammers8	CAR	+< xxx .	\N	\N	\N	\N	288407	288999	592	
170	stammers8	CAR	nag oedd .	NEG be.3S.IMP	no.	\N	\N	315409	316128	719	
159	stammers8	CAR	ac o'n nhw methu deu(d) (wr)thyn nhw sut i # &s roi nhw mewn .	and be.3PL.IMP PRON.3PL fail.NONFIN say.NONFIN to.3PL PRON.3PL how to put.NONFIN PRON.3PL in	and they couldn't tell them how to get them in.	\N	\N	289742	293720	3978	
160	stammers8	CAR	ac yn y diwedd ddaru # Frank@s:cym&eng siarad fel nhw yn_de <yn ddeud> [//] daru [?] ddeud +"/ .	and in DET end happen.PAST Frank talk.NONFIN like PRON.3PL TAG PRT say.NONFIN happen.PAST say.NONFIN	and in the end Frank spoke ?like them, right, and said:	\N	\N	293720	298810	5090	
161	stammers8	CAR	+" we are three # and three # and three !	\N	\N	\N	\N	298892	302108	3216	eng
162	stammers8	CAR	<oedden nhw (y)n deud> [?] +"/ .	be.3PL.IMP PRON.3PL PRT say.NONFIN	they said:	\N	\N	302084	302642	558	
163	stammers8	CAR	+" oh@s:cym&eng fine@s:eng !	\N	\N	\N	\N	302642	304046	1404	
171	stammers8	ISL	oedd (y)na ddigon o le i nhw <ar wahân> [?] !	be.3S.IMP there enough of space for PRON.3PL on separate	there was enough room for them separately !	\N	\N	316070	317626	1556	
164	stammers8	CAR	ac oedden nhw (y)n roi # tri # ohonyn nhw <a lle oedd (y)na> [?] &be [//] le i bedwar ti (y)n gweld .	and be.3PL.IMP PRON.3PL PRT put.NONFIN three of.3PL PRON.3PL and place be.3S.IMP there place to four.M PRON.2S PRT see.NONFIN	and so they were putting three of them where there was room for four, you see.	\N	\N	304023	308806	4783	
165	stammers8	ISL	+< oh@s:cym&eng yeah@s:cym&eng .	\N	\N	\N	\N	305765	306624	859	
172	stammers8	CAR	&=laugh .	\N	\N	\N	\N	317022	318892	1870	
166	stammers8	ISL	oh@s:cym&eng nice@s:cym&eng iawn !	IM nice very	oh, very nice!	\N	\N	308806	309956	1150	
180	stammers8	CAR	mae (y)n ardderchog yn_dydy ?	be.3S.PRES PRT excellent be.3S.PRES.NEG	it's excellent, isn't it?	\N	\N	332081	333567	1486	
173	stammers8	ISL	&=laugh <yn mwy> [=? ymddwyn] fath â brechdanau !	PRT more kind with sandwiches	more like sandwiches!	\N	\N	318323	321817	3494	
174	stammers8	ISL	un ar dop@s:cym&eng y llall !	one on top DET other	one on top of the other.	\N	\N	322375	323559	1184	
175	stammers8	CAR	&=laugh !	\N	\N	\N	\N	323380	325149	1769	
176	stammers8	ISL	&=sigh ## well@s:cym&eng &ɔ +/ .	\N	\N	\N	\N	324894	327959	3065	
187	stammers8	ISL	mae (y)na lot@s:cym&eng o rheiny ym bob man does ?	be.3S.PRES there lot of those in every place be.3S.PRES.NEG	there are a lot of those everywhere, aren't there?	\N	\N	343470	345583	2113	
177	stammers8	CAR	mae nhw gyn +/ .	be.3PL.PRES PRON.3PL with	they've got...	\N	\N	327959	328876	917	
181	stammers8	ISL	+< oh@s:cym&eng ti (we)di gweld o_blaen do ?	IM PRON.2S PRT.PAST see.NONFIN before yes	oh, you've seen it before, have you?	\N	\N	332777	334217	1440	
178	stammers8	ISL	y wraig wnaeth hwnnw ## y ddraig goch (y)na .	DET wife do.3S.PAST that DET dragon red there	the wife did that. . . that red dragon.	\N	\N	328795	331930	3135	
184	stammers8	CAR	+< &d ewadd mae [/] mae (y)n andros o dda yndy ?	gosh be.3S.PRES be.3S.PRES PRT devil of good be.3S.PRES	gosh, it's really good, isn't it?	\N	\N	336783	339383	2600	
182	stammers8	CAR	do mae (y)n ardderchog hwnna [?] .	yes be.3S.PRES PRT excellent that	yes, it's excellent, that.	\N	\N	333764	335598	1834	
186	stammers8	CAR	mae hwn yn un da yndy ?	be.3S.PRES this PRT one good be.3S.PRES	that's a good one, isn't it?	\N	\N	342181	344050	1869	
185	stammers8	ISL	a dyma &s llun y lle o (y)r awyr .	and here picture DET place from DET air	and here's a picture of the place from the air.	\N	\N	339627	342228	2601	
188	stammers8	CAR	<dan ni gyn un o fan (y)na> [?] yndan ?	be.1PL.PRES PRON.1PL with one of place there be.1PL.PRES	we've got one of there, haven't we?	\N	\N	345397	346988	1591	
189	stammers8	ISL	yndach .	be.2PL.PRES	you have.	\N	\N	347011	348114	1103	
190	stammers8	ISL	(dy)dyn [=? (we)dyn] +/ .	be.3PL.PRES	they...	\N	\N	349124	349716	592	
191	stammers8	CAR	oedd (y)na dyn newydd fod i &we +// .	be.3S.IMP there man new be.NONFIN to	there's was a man who just came to...	\N	\N	349681	351504	1823	
192	stammers8	CAR	mae (y)n gwerthu # pethau (we)di rhewi yndy ?	be.3S.PRES PRT sell.NONFIN things PRT.PAST freeze.NONFIN be.3S.PRES	he sells frozen stuff, doesn't he?	\N	\N	351516	354232	2716	
217	stammers8	CAR	a (y)r llun yna ?	and DET picture there	and that picture?	\N	\N	397980	399814	1834	
197	stammers8	CAR	naci dyn ar ben ei hun ydy o yn_de ?	no man on head POSS.3S self be.3S.PRES PRON.3SM TAG	no, he's a man on his own, right?	\N	\N	357855	360874	3019	
198	stammers8	CAR	mae gyn # +// .	be.3S.PRES with	he's got...	\N	\N	360839	361849	1010	
229	stammers8	ISL	dyma fel mae mynd .	here like be.3S.PRES go.NONFIN	this is how it goes.	\N	\N	419954	421196	1242	
199	stammers8	CAR	wnes i (dd)im weld o blaen .	do.1S.PAST PRON.1S NEG see.NONFIN PRON.3SM before	I've not seen him before.	\N	\N	362011	363323	1312	
218	stammers8	ISL	ia .	yes	yes.	\N	\N	400786	401726	940	
200	stammers8	CAR	+, cig a ### pysgod a bethau fel (y)na .	meat and fish and things like there	meat and fish and things like that.	\N	\N	363312	367770	4458	
201	stammers8	ISL	+< oh@s:cym&eng !	\N	\N	\N	\N	364926	365599	673	
202	stammers8	ISL	ie ?	yes	really?	\N	\N	368188	368873	685	
203	stammers8	CAR	mae (y)n <dympio pethau> [?] .	be.3S.PRES PRT dump.NONFIN things	he ?dumps stuff.	\N	\N	368188	369918	1730	
219	stammers8	CAR	ew mae hwnna (y)n <cymryd yn lot@s:cym&eng> [?] yndy ?	IM be.3S.PRES that PRT take.NONFIN PRT lot be.3S.PRES	oh, that takes a lot, doesn't it?	\N	\N	401784	404373	2589	
204	stammers8	CAR	ond dan ni (dd)im isio fo .	but be.1PL.PRES PRON.1PL NEG want PRON.3SM	but we don't want it.	\N	\N	369883	371044	1161	
205	stammers8	ISL	oh@s:cym&eng .	\N	\N	\N	\N	371160	371671	511	
206	stammers8	CAR	mae ry fawr i ni yndy ?	be.3S.PRES too big for PRON.1PL be.3S.PRES	it's too big for us, isn't it?	\N	\N	371427	372855	1428	
207	stammers8	ISL	isio teuluoedd mawr oedd o .	want families big be.3S.IMP PRON.3SM	he wanted big families	\N	\N	372786	374330	1544	
208	stammers8	CAR	mmm@s:cym&eng .	\N	\N	\N	\N	374342	375143	801	
220	stammers8	ISL	yndy wir .	be.3S.PRES true	absolutely.	\N	\N	404571	405476	905	
209	stammers8	ISL	oh@s:cym&eng (doe)s (y)na (ddi)m llawer o rheiny wan nag oes ?	IM be.3S.PRES.NEG there NEG many of those now NEG be.3S.PRES	oh, there aren't many of those now, are there?	\N	\N	375364	378069	2705	
210	stammers8	CAR	nag oes .	NEG be.3S.PRES	no.	\N	\N	377988	379033	1045	
230	stammers8	ISL	oedd o (y)n Saesneg .	be.3S.IMP PRON.3SM in English	it was in English.	\N	\N	421103	422647	1544	
211	stammers8	ISL	a dyna # videos@s:cym&eng yn fan (y)na ## a: # theledu .	and there videos in place there and television	and there's the videos, there, and a television.	\N	\N	379567	385592	6025	
221	stammers8	CAR	o [/] o lle +//?	from from where	from where..?	\N	\N	404698	405314	616	
212	stammers8	ISL	a dacw ## enwau # fi a (y)r wraig a (y)r plant .	and there names PRON.1S and DET wife and DET children	and there are the names of myself and the wife and kids.	\N	\N	385476	390317	4841	
213	stammers8	CAR	+< o:h@s:cym&eng yeah@s:cym&eng <pwy (y)dy hwnna [?]> [//] ddaru [?] # Gladys@s:cym&eng wneud hwnna hefyd ?	IM yeah who be.3S.PRES that happen.PAST Gladys make.NONFIN that too	oh, yeah, who. . . did Gladys make that too?	\N	\N	389145	392674	3529	
231	stammers8	ISL	+" the@s:eng ## Llwyni@s:cym&eng Methodists@s:cym&eng have@s:eng built@s:eng a@s:eng church@s:eng .	\N	\N	\N	\N	423832	429637	5805	
214	stammers8	ISL	do .	yes	yes.	\N	\N	392732	393208	476	
222	stammers8	CAR	mae hwn yn un da hefyd .	be.3S.PRES this PRT one good too	this is a good one too.	\N	\N	405279	407508	2229	
215	stammers8	CAR	ew mae (y)n nice@s:cym&eng yndy ?	IM be.3S.PRES PRT nice be.3S.PRES	oh, it's nice, isn't it?	\N	\N	393185	394834	1649	
216	stammers8	ISL	yndy ## mae raid mi ddeud .	be.3S.PRES be.3S.PRES necessity PRON.1S say.NONFIN	it is, I have to say.	\N	\N	395286	398050	2764	
232	stammers8	ISL	+" the@s:eng front@s:cym&eng looks@s:eng like@s:eng an@s:eng abbey@s:eng .	\N	\N	\N	\N	430265	432831	2566	
233	stammers8	ISL	+" but@s:eng thinking@s:eng they@s:eng could@s:eng # fool@s:cym&eng the@s:eng Lord@s:eng ## the@s:eng back@s:eng looks@s:eng partly@s:eng shabby@s:cym&eng !	\N	\N	\N	\N	434376	441933	7557	
223	stammers8	ISL	ac wedyn +. . .	and then	and so...	\N	\N	408054	409273	1219	
224	stammers8	ISL	oh@s:cym&eng mae gynna i bennill i (y)r gweinidog .	IM be.3S.PRES with.1S PRON.1S verse for DET minister	oh, I've got a verse for the minister.	\N	\N	410248	412512	2264	
237	stammers8	CAR	oh@s:cym&eng ie .	IM yes	oh yes.	\N	\N	454554	455448	894	
225	stammers8	CAR	oes ?	be.3S.PRES	yes?	\N	\N	412616	413394	778	
234	stammers8	CAR	&=laugh <fath â Carmel@s:cym&eng> [=! laughs] !	kind with Carmel	like Carmel!	\N	\N	441898	447517	5619	
226	stammers8	ISL	oes .	be.3S.PRES	yes.	\N	\N	413441	414416	975	
227	stammers8	ISL	a [=? (dd)a(ru)] fi ddarllen o mewn llyfr yn llyfrgell ddoe yn Dreffynnon .	and PRON.1S read.NONFIN PRON.3SM in book in library yesterday in Holywell	I read it in a book in the library yesterday, in Holywell.	\N	\N	415182	418468	3286	
228	stammers8	CAR	do ?	yes	really?	\N	\N	418410	419071	661	
240	stammers8	ISL	<fath â> [?] Bethesda@s:cym&eng Wyddgrug yn_de ?	kind with Bethesda Mold TAG	like Bethesda in Mold, right	\N	\N	460626	462425	1799	
235	stammers8	ISL	oedd # Greg@s:cym&eng yn pregethu yn Carmel@s:cym&eng .	be.3S.IMP Greg PRT preach.NONFIN in Carmel	Greg was preaching in Carmel.	\N	\N	447471	450420	2949	
238	stammers8	ISL	ac mae hwnnw (y)n hardd yn y pen blaen polion .	and be.3S.PRES that PRT beautiful in DET head front poles	and that's beautiful at the front, poles.	\N	\N	455784	459256	3472	
236	stammers8	ISL	ac oedd o (y)n # pan o'n nhw (y)n altro Bethesda@s:cym&eng Wyddgrug .	and be.3S.IMP PRON.3SM PRT when be.3PL.IMP PRON.3PL PRT alter.NONFIN Bethesda Mold	and it was when they were altering Bethesda in Mold.	\N	\N	450466	453508	3042	
241	stammers8	CAR	yeah@s:cym&eng .	\N	\N	\N	\N	462390	463029	639	
239	stammers8	CAR	yndy .	be.3S.PRES	yes.	\N	\N	459279	460335	1056	
242	stammers8	ISL	+" Queen@s:cym&eng Anne@s:cym&eng front@s:cym&eng .	\N	\N	\N	\N	463354	464875	1521	
243	stammers8	ISL	meddai fo +" .	say.3S.PAST PRON.3SM	he said.	\N	\N	464887	465467	580	
244	stammers8	ISL	+" Mary_Anne@s:cym&eng back@s:eng !	\N	\N	\N	\N	465827	467441	1614	
245	stammers8	CAR	+< &=laugh yeah@s:cym&eng ond tu mewn mae fel # llety mawr yndy ?	yeah but side in be.3S.PRES like accommodation big be.3S.PRES	yeah, but inside it's like a big lodging house, isn't it?	\N	\N	466640	471667	5027	
246	stammers8	ISL	+< ++ hardd .	beautiful	beautiful	\N	\N	469867	470529	662	
247	stammers8	ISL	llety ?	accommodation	a lodging house?	\N	\N	472038	472805	767	
248	stammers8	CAR	yndy ti (y)n gwybod efo xxx o lefydd .	be.3S.PRES PRON.2S PRT know.NONFIN with xxx of places	yes, you know, with [...] of places.	\N	\N	472793	476079	3286	
292	stammers8	CAR	mae (y)n sure@s:cym&eng .	be.3S.PRES PRT sure	I'm sure.	\N	\N	568038	568909	871	
249	stammers8	CAR	digon o le .	enough of place	plenty of room.	\N	\N	476589	477994	1405	
270	stammers8	CAR	ew oh@s:cym&eng pwy oedd yn wneud hynna ?	IM IM who be.3S.IMP PRT do.NONFIN that	oh, who was doing that?	\N	\N	516513	518557	2044	
250	stammers8	ISL	oh@s:cym&eng yndy yn y cefn stafelloedd yndy .	IM be.3S.PRES in DET back rooms be.3S.PRES	oh, yes, at the back, rooms, yes.	\N	\N	477182	480247	3065	
271	stammers8	ISL	Clare@s:cym&eng !	\N	\N	\N	\N	518812	519404	592	
251	stammers8	CAR	ew mae nice@s:cym&eng yn tu mewn yndy ?	IM be.3S.PRES nice in side in be.3S.PRES	oh, it's nice inside, isn't it?	\N	\N	478296	480757	2461	
252	stammers8	ISL	(y)sgoldy .	schoolroom	a schoolroom.	\N	\N	480305	481164	859	
283	stammers8	ISL	well@s:cym&eng ## o'n i # yn Steddfod@s:cym&eng yr Urdd@s:cym&eng pnawn Sadwrn dwytha .	well be.1S.IMP PRON.1S in Eisteddfod DET Urdd afternoon Saturday previous	well, I was at the Urdd Eisteddfod last Saturday afternoon.	\N	\N	540271	545298	5027	
253	stammers8	CAR	ew yndy ardderchog .	IM be.3S.PRES excellent	oh, yes, it's excellent.	\N	\N	481199	483265	2066	
272	stammers8	CAR	oh@s:cym&eng ddaru hi wneud o iddyn nhw ?	IM happen.PAST PRON.3SF make.NONFIN PRON.3SM to.3PL PRON.3PL	oh, did she do it for them?	\N	\N	519346	521088	1742	
254	stammers8	ISL	+< +, a cegin .	and kitchen	...and a kitchen.	\N	\N	482243	483242	999	
255	stammers8	CAR	cegin da a bopeth .	kitchen good and everything	a good kitchen and everything.	\N	\N	483463	485367	1904	
284	stammers8	CAR	+< oh@s:cym&eng yeah@s:cym&eng .	\N	\N	\N	\N	544915	545786	871	
256	stammers8	ISL	oes wir .	be.3S.PRES true	absolutely.	\N	\N	485401	487050	1649	
273	stammers8	ISL	Clare_Cook@s:cym&eng y gweinidoges # o Wyddgrug .	Clare_Cook DET minister from Mold	Clare Cook, the minister, from Mold.	\N	\N	521122	524907	3785	
257	stammers8	CAR	ddim fath â fa(n) (y)ma &=laugh !	NEG kind with place here	not like here!	\N	\N	486725	488896	2171	
258	stammers8	ISL	oh@s:cym&eng &=laugh !	\N	\N	\N	\N	489093	490997	1904	
259	stammers8	CAR	&=laugh .	\N	\N	\N	\N	491055	492553	1498	
274	stammers8	CAR	+< oh@s:cym&eng .	\N	\N	\N	\N	522852	523259	407	
260	stammers8	ISL	ac wedyn +. . .	and then	and so...	\N	\N	492329	493513	1184	
261	stammers8	ISL	well@s:cym&eng er@s:cym&eng wyt ti ar dy golled yn fawr bore Sul .	well IM be.2S.PRES PRON.2S on POSS.2S loss PRT big morning Sunday	well, you're really missing out on a Sunday morning.	\N	\N	493919	497193	3274	
262	stammers8	ISL	Clare@s:cym&eng oedd yn pregethu yn Penbryn@s:cym&eng .	Clare be.3S.IMP PRT preach.NONFIN in Penbryn	it was Clare preaching at Penbryn.	\N	\N	497356	499527	2171	
263	stammers8	CAR	+< oh@s:cym&eng yeah@s:cym&eng !	\N	\N	\N	\N	498830	500049	1219	
275	stammers8	CAR	a be oedd y poppets@s:eng ?	and what be.3S.IMP DET poppets	and what were the puppets?	\N	\N	524269	525569	1300	
264	stammers8	ISL	ac <er@s:cym&eng mi gynorthwyo(dd) hi> [?] i gludo # ryw fath o ffrâm yn [?] i_fewn i (y)r capel .	and IM PRT assist.3S.PAST PRON.1S to bear.NONFIN some kind of frame in in to DET chapel	and she helped carry some kind of frame into the chapel.	\N	\N	500398	506493	6095	
265	stammers8	ISL	ac oedd o fath â # sioe &pəp pypedau .	and be.3S.IMP PRON.3SM kind with show puppets	and it was like a puppet show.	\N	\N	506970	511173	4203	
266	stammers8	CAR	+< oh@s:cym&eng nice@s:cym&eng !	\N	\N	\N	\N	510952	512020	1068	
288	stammers8	ISL	ond o'n i (y)n eistedd ar y gadair ac o'n i meddwl amdanat ti .	but be.1S.IMP PRON.1S PRT sit.NONFIN on DET chair and be.1S.IMP PRON.1S think.NONFIN about.2S PRON.2S	but I was sitting on the chair and I was thinking about you.	\N	\N	559222	562624	3402	
267	stammers8	CAR	oh@s:cym&eng efo (y)r [?] plant .	IM with DET children	oh, with the children.	\N	\N	511974	513251	1277	
276	stammers8	ISL	oh@s:cym&eng mond un .	IM only one	oh, just one.	\N	\N	526463	527485	1022	
268	stammers8	CAR	oh@s:cym&eng yeah@s:cym&eng ardderchog !	IM yeah excellent	oh, yes, excellent!	\N	\N	513320	515433	2113	
277	stammers8	CAR	oh@s:cym&eng .	\N	\N	\N	\N	527438	527914	476	
269	stammers8	ISL	yeah@s:cym&eng yn arbennig i (y)r plant # oedd .	yeah PRT special for DET children be.3S.IMP	yes, especially for the children, it was.	\N	\N	513750	516548	2798	
285	stammers8	ISL	i # blant # iau plant # ysgolion cynradd yn_de yn ## Dinas_Basing@s:cym&eng (y)r ysgol uwchradd Treffynnon .	for children younger children schools primary TAG in Dinas_Basing DET school secondary Holywell	for younger children, primary school children, right, at Dinas Basing, the secondary school in Holywell.	\N	\N	546053	556409	10356	
278	stammers8	ISL	sut i weddïo .	how to pray.NONFIN	how to pray.	\N	\N	528235	529559	1324	
279	stammers8	CAR	oh@s:cym&eng yeah@s:cym&eng !	\N	\N	\N	\N	529524	530650	1126	
280	stammers8	ISL	a &p sut i mynd i (y)r Nefoedd .	and how to go.NONFIN to DET Heavens	and how to go to Heaven.	\N	\N	531045	533286	2241	
281	stammers8	CAR	oh@s:cym&eng pity@s:cym&eng bod <mi (dd)im (we)di bod yna> [?] yndy [=? yn_de] ?	IM pity be.NONFIN PRON.1S NEG PRT.PAST be.NONFIN there be.3S.PRES	oh, a pity I wasn't there, isn't it?	\N	\N	533437	535910	2473	
286	stammers8	ISL	y [?] glamp o neuadd yn fan (y)na !	DET clamp of hall in place there	an enormous hall there!	\N	\N	556506	558247	1741	
282	stammers8	ISL	a bethau felly yn_de ## ia .	and things thus TAG yes	and things like that, right, yes.	\N	\N	535852	538650	2798	
291	stammers8	ISL	oedd ac oedd o dipyn yn anghyfforddus .	be.3S.IMP and be.3S.IMP PRON.3SM a_bit PRT uncomfortable	yes, and it was a bit uncomfortable.	\N	\N	565670	568119	2449	
287	stammers8	CAR	oh@s:cym&eng oes ?	IM be.3S.PRES	oh, is there?	\N	\N	558212	559130	918	
289	stammers8	ISL	oedd o fel hyn .	be.3S.IMP PRON.3SM like this	it was like this.	\N	\N	563499	564671	1172	
290	stammers8	CAR	na !	no	no!	\N	\N	564706	565554	848	
293	stammers8	ISL	ond fasai dy draed ti (we)di twtsio (y)r llawr ynddo fo .	but be.3S.CONDIT POSS.2S feet PRON.2S PRT.PAST touch.NONFIN DET floor in.3SM PRON.3SM	but your feet would have touched the floor in it.	\N	\N	568723	571637	2914	
294	stammers8	CAR	ond dw i (dd)im isio bod +/ .	but be.1S.PRES PRON.1S NEG want be.NONFIN	but I don't want to be...	\N	\N	572137	573263	1126	
295	stammers8	ISL	ond (dd)a(ru) mi symud wedyn # a [?] gadair oedd ddim +// .	but happen.PAST PRON.1S move.NONFIN then and chair be.3S.IMP NEG	but then I moved, and a chair that wasn't...	\N	\N	572775	575887	3112	
296	stammers8	CAR	+< yeah@s:cym&eng .	\N	\N	\N	\N	574261	574702	441	
395	stammers8	CAR	mae (y)n # poen yn ofnadwy .	be.3S.PRES in pain PRT awful	she's in terrible pain.	\N	\N	759384	761613	2229	
396	stammers8	ISL	+< ++ poen .	pain	...pain.	\N	\N	760556	760998	442	
297	stammers8	ISL	raid bod o (we)di torri o_dano neu (ryw)beth .	necessity be.NONFIN PRON.3SM PRT.PAST break.NONFIN under.3SM or something	it must have broken underneath or something.	\N	\N	575956	577883	1927	
315	stammers8	ISL	oedd hi (y)n byw drws nesa i (y)r capel # yn Trelawnyd@s:cym&eng .	be.3S.IMP PRON.3SF PRT live.NONFIN door next to DET chapel in Trelawnyd	she lived next door to the chapel in Trelawnyd.	\N	\N	621789	624680	2891	
298	stammers8	CAR	raid raid yeah@s:cym&eng .	necessity necessity yeah	must have, yeah.	\N	\N	577245	578626	1381	
316	stammers8	CAR	oh@s:cym&eng yeah@s:cym&eng .	\N	\N	\N	\N	624262	625353	1091	
299	stammers8	ISL	ond es i i (y)r gadair nesa .	but go.1S.PAST PRON.1S to chair next	but I went to the next chair.	\N	\N	578615	580681	2066	
300	stammers8	ISL	ac oedd hwnnw gan mil gwell .	and be.3S.IMP that hundred thousand better	and that was a hundred thousand times better.	\N	\N	581123	582887	1764	
333	stammers8	CAR	(be)cause@s:eng <dw i> [//] dan [=? daru] ni brynu (u)n [?] i Harry@s:cym&eng # yn_de .	because be.1S.PRES PRON.1S be.1PL.PRES PRON.1PL buy.NONFIN one for Harry TAG	cause we're buying one for Harry, right.	\N	\N	664741	667481	2740	
301	stammers8	CAR	oh@s:cym&eng job@s:cym&eng dda yn_de xx ?	IM job good TAG xx	oh, good job, eh [..]?	\N	\N	582899	584780	1881	
317	stammers8	ISL	ac oedd hi (y)n llawn annwyd .	and be.3S.IMP PRON.3SF PRT full cold	and she was full of cold.	\N	\N	625326	626963	1637	
302	stammers8	ISL	ac oedd (y)na wraig yn yn ymyl fi fa(n) (y)ma .	and be.3S.IMP there woman in POSS.1S side PRON.1S place here	and there was a woman next to me here.	\N	\N	584722	587137	2415	
303	stammers8	ISL	mae (we)di symud o Pentre_Lygian@s:cym&eng [?] i: fyw ym Bagill@s:cym&eng .	be.3S.PRES PRT.PAST move.NONFIN from Pentre_Lygian to live.NONFIN in Bagill	she's moved from Pentre Lygian to live in Bagill.	\N	\N	588286	591548	3262	
327	stammers8	ISL	fath â bwyta xxx rheiny yndy [?] !	kind with eat.NONFIN xxx those be.3S.PRES	like eating [...] those are, right!	\N	\N	646586	648594	2008	
304	stammers8	CAR	oh@s:cym&eng am bod hi (y)n gynhesach ?	IM for be.NONFIN PRON.3SF PRT warmer	oh, because it's warmer?	\N	\N	591523	593381	1858	
318	stammers8	CAR	oh@s:cym&eng ddaru hi roi o i ti ?	IM happen.PAST PRON.3SF give.NONFIN PRON.3SM to PRON.2S	oh, did she give it to you?	\N	\N	627033	628763	1730	
305	stammers8	ISL	na xxx .	no xxx	no [...] .	\N	\N	593895	595718	1823	
306	stammers8	CAR	oedd ?	be.3S.IMP	really?	\N	\N	595741	596438	697	
328	stammers8	CAR	&=laugh .	\N	\N	\N	\N	647875	650963	3088	
307	stammers8	ISL	ac oedd hi ar ### adran damweiniau yn ysbyty Dreffynnon (y)ma hefyd .	and be.3S.IMP PRON.3SF on department accidents in hospital Holywell here too	and she was on the accidents department in Holywell Hospital here too.	\N	\N	596818	602878	6060	
308	stammers8	ISL	(Y)sbyty_Bwthyn@s:cym&eng .	\N	\N	\N	\N	603374	604767	1393	
309	stammers8	CAR	o:h@s:cym&eng yeah@s:cym&eng .	\N	\N	\N	\N	604732	605928	1196	
319	stammers8	ISL	&=laugh naddo !	no	no!	\N	\N	628531	630435	1904	
310	stammers8	ISL	ac oedd gynni hi ferch .	and be.3S.IMP with.3SF PRON.3SF girl	and she had a daughter.	\N	\N	606004	607536	1532	
320	stammers8	CAR	&=laugh !	\N	\N	\N	\N	629901	631445	1544	
311	stammers8	ISL	xxx o ferch # hardd .	xxx of girl beautiful	a beautiful [...] of a girl.	\N	\N	608211	610382	2171	
312	stammers8	ISL	ac (dd)aru hi ennill # yn y Steddfod@s:cym&eng ## cynta ail neu trydydd .	and happen.PAST PRON.3SF win.NONFIN in DET Eisteddfod first second or third	and she won at the Eisteddfod, first, second or third.	\N	\N	610417	615351	4934	
313	stammers8	ISL	ond daru ennill .	but happen.PAST win.NONFIN	but she won.	\N	\N	615409	617116	1707	
321	stammers8	ISL	(dd)aru gymryd o wrtha fi &=laugh !	happen.PAST take.NONFIN PRON.3SM from.1S PRON.1S	she got it off me!	\N	\N	631531	633226	1695	
314	stammers8	ISL	a wedyn oedd [=? ddoth] (y)na wraig o Trelawnyd@s:cym&eng i [?] eistedd ochr yma # i mi .	and then be.3S.IMP there woman from Trelawnyd to sit.NONFIN side here to PRON.1S	and then there was a woman from Trelawnyd sat this side of me.	\N	\N	617656	621789	4133	
334	stammers8	ISL	yeah@s:cym&eng .	\N	\N	\N	\N	667353	667643	290	
329	stammers8	ISL	ac wedyn # lle est ti ddoe ?	and then where go.2S.PAST PRON.2S yesterday	and so, where did you go yesterday?	\N	\N	651276	653888	2612	
322	stammers8	CAR	&=laugh wneud hi (y)n waeth do &=laugh !	make.NONFIN PRON.3SF PRT worse yes	made her worse, yes!	\N	\N	632959	636965	4006	
323	stammers8	ISL	&=laugh y greadures # o'n i cynnig Fisherman's_Friend@s:cym&eng iddi .	DET creature be.1S.IMP PRON.1S offer.NONFIN Fisherman's_Friend to.3SF	the poor thing, I offered her a Fisherman's Friend.	\N	\N	636973	641106	4133	
324	stammers8	CAR	do [=! laughs] <oedd o right@s:cym&eng> [?] boeth oedd ?	yes be.3S.IMP PRON.3SM right hot be.3S.IMP	yes, it was quite hot, was it?	\N	\N	641129	643405	2276	
330	stammers8	CAR	i [/] # &va i er@s:cym&eng # Gonwy@s:cym&eng .	to to IM Conwy	to Conwy.	\N	\N	654708	658110	3402	
325	stammers8	ISL	oedd ddigon am llosgi cheg yn dwll [?] !	be.3S.IMP enough for burn.NONFIN mouth.POSSD.3SF PRT hole	it was enough to burn a hole in her mouth!	\N	\N	643092	645391	2299	
326	stammers8	CAR	&=laugh !	\N	\N	\N	\N	644671	646157	1486	
331	stammers8	ISL	oh@s:cym&eng ?	\N	\N	\N	\N	658400	659085	685	
394	stammers8	ISL	+< xxx .	\N	\N	\N	\N	758083	758699	616	
332	stammers8	CAR	i # drio cael # car@s:cym&eng ## O_O_Seven@s:eng .	to try.NONFIN get.NONFIN car O_O_Seven	to try and get a "007" car.	\N	\N	659082	664562	5480	
337	stammers8	CAR	mae fod i # fynd o_dan y dŵr neu rywbeth yndy fel oedd yn y film@s:cym&eng .	be.3S.PRES be.NONFIN to go.NONFIN under DET water or something be.3S.PRES like be.3S.IMP in DET film	it's supposed to go under the water or something, doesn't it, like in the film.	\N	\N	670290	674783	4493	
335	stammers8	CAR	mae (y)n saethu <missiles@s:eng neu (ry)wbeth a> [?] +. . .	be.3S.PRES PRT shoot.NONFIN missiles or something and	it shoots missiles or something, and...	\N	\N	667469	669396	1927	
336	stammers8	ISL	oh@s:cym&eng yeah@s:cym&eng .	\N	\N	\N	\N	669454	670139	685	
338	stammers8	ISL	+< oh@s:cym&eng .	\N	\N	\N	\N	673622	674110	488	
339	stammers8	CAR	ac wedyn oedd y llall isio fo yn_de ?	and then be.3S.IMP DET other want PRON.3SM TAG	and then the other one wanted it, didn't he?	\N	\N	674841	676850	2009	
340	stammers8	CAR	ac o'n nhw (y)n paffio o_hyd .	and be.3PL.IMP PRON.3PL PRT box.NONFIN always	and they were fighting all the time.	\N	\N	676838	678382	1544	
341	stammers8	ISL	oh@s:cym&eng yeah@s:cym&eng .	\N	\N	\N	\N	678313	679079	766	
342	stammers8	CAR	xxx gorfod [?] cael un arall .	xxx must.NONFIN get.NONFIN one other	[...] have to get another one.	\N	\N	678657	680774	2117	
343	stammers8	ISL	oh@s:cym&eng yeah@s:cym&eng .	\N	\N	\N	\N	680879	681715	836	
344	stammers8	CAR	anyway@s:eng [?] o'n i methu cael yr # <un (y)na> [?] .	anyway be.1S.IMP PRON.1S fail.NONFIN get.NONFIN DET one there	anyway, I couldn't get that one.	\N	\N	681645	683932	2287	
345	stammers8	ISL	oh@s:cym&eng .	\N	\N	\N	\N	684440	684881	441	
346	stammers8	CAR	a wnes i fynd i Colwyn_Bay@s:eng .	and do.1S.PAST PRON.1S go.NONFIN to Colwyn_Bay	and I went to Colwyn Bay.	\N	\N	684695	686204	1509	
365	stammers8	ISL	+< (dd)a(ru) mi ro i galwad i +/ .	happen.PAST give.1S.NONPAST PRON.1S call to	I gave a call to...	Islwyn may also sometimes pronounce "rhaid" as [a] or [ai]	Islwyn may also sometimes pronounce "rhaid" as [a] or [ai]	710222	711453	1231	
347	stammers8	CAR	ac o'n i methu cael <o yna> [?] .	and be.1S.IMP PRON.1S fail.NONFIN get.NONFIN PRON.3SM there	and I couldn't get it there.	\N	\N	686181	687377	1196	
348	stammers8	CAR	a ddaru o ddeud lle i fynd .	and happen.PAST PRON.3SM say.NONFIN where to go.NONFIN	and he said where to go.	\N	\N	687354	689142	1788	
376	stammers8	ISL	mae (y)n gwaetiad i gael o (we)di +. . .	be.3S.PRES PRT wait.NONFIN to get.NONFIN PRON.3SM PRT.PAST	she's watching it to have it ...	\N	\N	730338	732231	1893	
349	stammers8	CAR	mae (y)na le yn Hen_Gonwy .	be.3S.PRES there place in Old_Conwy	there's a place in the Old Conwy.	\N	\N	689142	691088	1946	
366	stammers8	CAR	dw i isio mynd heddiw xxx meddwl .	be.1S.PRES PRON.1S want go.NONFIN today xxx think.NONFIN	I want to go today, I think.	\N	\N	710826	712776	1950	
350	stammers8	ISL	ie .	yes	yes.	\N	\N	691174	691429	255	
351	stammers8	CAR	a mae drws nesa i warehouse@s:eng teganau .	and be.3S.PRES door next to warehouse toys	and it's next door to a toy factory.	\N	\N	691382	694122	2740	
352	stammers8	ISL	oh@s:cym&eng yeah@s:cym&eng .	\N	\N	\N	\N	694227	694924	697	
353	stammers8	CAR	ddaru nhw ddeud +"/ .	happen.PAST PRON.3PL say.NONFIN	they said:	\N	\N	694645	695283	638	
367	stammers8	ISL	(dd)a(ru) [?] mi roi galwad iddi ar y # phone@s:cym&eng .	happen.PAST PRT give.NONFIN call to.3SF on DET phone	I gave her a call on the phone.	\N	\N	712796	714978	2182	
354	stammers8	CAR	+" well@s:cym&eng dw i (dd)im gynno fo .	well be.1S.PRES PRON.1S NEG with.3SM PRON.3SM	"well, I've not got it."	\N	\N	695272	696375	1103	
355	stammers8	CAR	ond medra i gael o mewn dau funud .	but can.1S.NONPAST PRON.1S get.NONFIN PRON.3SM in two.M minute	"but I can get it in two minutes" .	\N	\N	696352	698766	2414	
381	stammers8	ISL	dydd Llun nesa yeah@s:cym&eng ?	day Monday next yeah	next Monday, yeah?	\N	\N	740022	740951	929	
356	stammers8	CAR	&=laugh <a dyma> [?] ffonio drws nesa !	and here phone.NONFIN door next	and he phoned next door!	\N	\N	698256	700821	2565	
357	stammers8	ISL	oh@s:cym&eng yeah@s:cym&eng .	\N	\N	\N	\N	700752	701483	731	
368	stammers8	CAR	ia .	yes	yes.	\N	\N	714967	715385	418	
358	stammers8	CAR	a ddaru nhw nôl o .	and happen.PAST PRON.3PL fetch.NONFIN PRON.3SM	and they fetched it.	\N	\N	701425	702749	1324	
359	stammers8	ISL	oedd [?] ti gael un ?	be.3S.IMP PRON.2S get.NONFIN one	did you get one?	\N	\N	702842	703921	1079	
377	stammers8	CAR	oedd [/] oedd hi (y)n mynd i (y)r ysbyty dydd Llun yma ?	be.3S.IMP be.3S.IMP PRON.3SF PRT go.NONFIN to DET hospital day Monday here	was she going to the hospital this Monday?	\N	\N	732660	735261	2601	
360	stammers8	CAR	do .	yes	yes.	\N	\N	703875	704757	882	
369	stammers8	ISL	ac # mae (y)n disgwyl .	and be.3S.PRES PRT wait.NONFIN	and she's waiting.	\N	\N	716685	719379	2694	
361	stammers8	ISL	ew !	IM	oh!	\N	\N	704869	705647	778	
362	stammers8	ISL	a [=? (dd)a(ru)] ti mynd i weld Natalie@s:cym&eng ?	and PRON.2S go.NONFIN to see.NONFIN Natalie	and you're going to see Natalie?	\N	\N	705740	707458	1718	
363	stammers8	CAR	na o'n i ry hwyr wedyn yn_de .	no be.1S.IMP PRON.1S too late after be.3S.PRES	no, I was too late afterwards, you know.	\N	\N	707528	709606	2078	
370	stammers8	ISL	oedd Ian@s:cym&eng (we)di mynd i Sir_Fôn efo batteries@s:cym&eng .	be.3S.IMP Ian PRT.PAST go.NONFIN to Anglesey with batteries	Ian had gone to Anglesey with some batteries.	\N	\N	719738	722525	2787	
364	stammers8	CAR	o'n i (y)n meddwl mynd +// .	be.1S.IMP PRON.1S PRT think.NONFIN go.NONFIN	I was thinking of going...	\N	\N	709630	710710	1080	
378	stammers8	ISL	+< oedd .	be.3S.IMP	yes.	\N	\N	734181	734599	418	
371	stammers8	CAR	heddiw ?	today	today?	\N	\N	722455	723454	999	
372	stammers8	ISL	na diwrnod ei phen_blwydd seithfed yn_de .	no day POSS.3SF birthday seventh TAG	no, the day of her birthday, the seventh, right?	\N	\N	723512	725752	2240	
373	stammers8	CAR	+< o:h@s:cym&eng yeah@s:cym&eng .	\N	\N	\N	\N	724951	725892	941	
386	stammers8	CAR	ond am bod hi dydd Sul o'n nhw (he)blaw [?] (we)di X_ray@s:eng # &ʔə ochr yma a ddim yr ochr arall .	but for be.NONFIN PRON.3SF day Sunday be.3PL.IMP PRON.3PL besides PRT.PAST X_ray side here and NEG DET side other	but because it was Sunday, they'd X-rayed this side, and not the other side.	\N	\N	745905	752000	6095	
374	stammers8	ISL	seithfed .	seventh	the seventh.	\N	\N	726066	726797	731	
379	stammers8	CAR	dydd Llun oedd hi (y)n mynd yeah@s:cym&eng ?	day Monday be.3S.IMP PRON.3SF PRT go.NONFIN yeah	it was Monday she was going, yeah?	\N	\N	735830	737653	1823	
375	stammers8	ISL	ac er@s:cym&eng mae braich hi +// .	and IM be.3S.PRES arm PRON.3SF	and, er, her arm...	\N	\N	728295	730327	2032	
382	stammers8	CAR	+< o:h@s:cym&eng yeah@s:cym&eng w [?] i (y)n meddwl mai [=? mae] (y)r Llun # wsnos yma .	IM yeah be.1S.PRES PRON.1S PRT think.NONFIN PRT DET Monday week here	oh yeah, I think it's Monday this week.	\N	\N	740150	743029	2879	
380	stammers8	ISL	yeah@s:cym&eng dydd Llun sydd i ddŵad .	yeah day Monday be.PRES.REL to come.NONFIN	yeah, Monday coming.	\N	\N	738130	739778	1648	
383	stammers8	ISL	oh@s:cym&eng .	\N	\N	\N	\N	743703	744086	383	
384	stammers8	CAR	dw i (dd)im yn sure@s:cym&eng .	be.1S.PRES PRON.1S NEG PRT sure	I'm not sure.	\N	\N	744109	745142	1033	
385	stammers8	ISL	well@s:cym&eng +. . .	\N	\N	\N	\N	745502	745967	465	
387	stammers8	ISL	+< ++ ei hysgwydd .	POSS.3SF shoulder	...her shoulder.	\N	\N	749736	750479	743	
388	stammers8	ISL	oh@s:cym&eng .	\N	\N	\N	\N	752313	752557	244	
389	stammers8	CAR	a dyna pam oedd o (y)n brifo .	and there why be.3S.IMP PRON.3SM PRT hurt.NONFIN	and that's why it was hurting.	\N	\N	752360	753881	1521	
390	stammers8	ISL	oh@s:cym&eng yeah@s:cym&eng .	\N	\N	\N	\N	754241	754902	661	
391	stammers8	CAR	o'n nhw (ddi)m (we)di setio fo (y)n iawn .	be.3PL.IMP PRON.3PL NEG PRT.PAST set.NONFIN PRON.3SM PRT right	they hadn't set it right.	\N	\N	754751	756458	1707	
392	stammers8	ISL	&as:kw !	\N	\N	\N	\N	756446	757468	1022	
393	stammers8	CAR	dyna pam oedd hi (y)n mynd +// .	there why be.3S.IMP PRON.3SF PRT go.NONFIN	that's why she was going...	\N	\N	757921	759337	1416	
397	stammers8	ISL	oh@s:cym&eng yeah@s:cym&eng .	\N	\N	\N	\N	761892	762646	754	
398	stammers8	CAR	yeah@s:cym&eng oh@s:cym&eng &w oh@s:cym&eng well@s:cym&eng wna i &fɔ +// .	yeah IM IM well do.1S.NONPAST PRON.1S	yeah, oh well, I'll...	\N	\N	762797	764945	2148	
412	stammers8	ISL	+< dietician@s:eng dw i (y)n meddwl ydy .	dietician be.1S.PRES PRON.1S PRT think.NONFIN be.3S.PRES	a dietician, I think she is.	\N	\N	804626	806193	1567	
399	stammers8	CAR	o'n i am ffonio i weld os oedd o (y)n iawn i xxx fynd heno [=? yna] .	be.1S.IMP PRON.1S for phone.NONFIN to see.NONFIN if be.3S.IMP PRON.3SM PRT right to xxx go.NONFIN tonight	I was going to phone to see if it was alright to [...] go tonight.	\N	\N	764910	768370	3460	
413	stammers8	CAR	oh@s:cym&eng yeah@s:cym&eng .	\N	\N	\N	\N	805915	806948	1033	
400	stammers8	CAR	ew gest ti andros o golled ## <pan y> [?] +// .	IM have.2S.PAST PRON.2S devil of loss when PRT	oh, you really missed out when...	\N	\N	768440	772399	3959	
401	stammers8	ISL	oh@s:cym&eng o't ti (dd)im (we)di dod adre o cynhebrwng dy fam_yng_nghyfraith nag oedd ?	IM be.2S.IMP PRON.2S NEG PRT.PAST come.NONFIN home from funeral POSS.2S mother_in_law NEG be.3S.IMP	oh, you hadn't come home from your mother-in-law's funeral, had you?	\N	\N	772411	775465	3054	
428	stammers8	ISL	ond geith o ei ateb ei hun .	but get.3S.NONPAST PRON.3SM POSS.3S answer.NONFIN POSS.3S self	but it'll get answered itself.	\N	\N	831399	832955	1556	
402	stammers8	CAR	na .	no	no.	\N	\N	775418	776045	627	
414	stammers8	ISL	adeg oedd Iago_Irons@s:cym&eng yn brifathro (y)na .	period be.3S.IMP Iago_Irons PRT headmaster there	at the time when Iago_Irons was the headmaster there.	\N	\N	806983	809479	2496	
403	stammers8	ISL	dydd Gwener ## dwytha wsnos i heno oedd hi yeah@s:cym&eng ?	day Friday previous week to tonight be.3S.IMP PRON.3SF yeah	last Friday, a week ago tonight, it was, yeah?	\N	\N	776440	780260	3820	
404	stammers8	ISL	o'n ni (y)n dathlu Gŵyl_Dewi yn y [?] Stanford_Gate@s:cym&eng yn dre .	be.1PL.IMP PRON.1PL PRT celebrate.NONFIN David's_Feast in DET Stanford_Gate in town	we were celebrating St. David's Day at the Stanford_Gate in town.	\N	\N	780620	783987	3367	
405	stammers8	CAR	+< o:h@s:cym&eng yeah@s:cym&eng oedd o (y)n dda oedd ?	IM yeah be.3S.IMP PRON.3SM PRT good be.3S.IMP	oh yeah, it was good, wasn't it?	\N	\N	782570	784555	1985	
415	stammers8	CAR	na !	no	no!	\N	\N	809027	810432	1405	
406	stammers8	ISL	Humph_Humphreys@s:cym&eng oedd y # gŵr gwadd .	Humph_Humphreys be.3S.IMP DET man invited	Humph_Humphreys was the guest speaker.	\N	\N	784277	787551	3274	
407	stammers8	ISL	a mae wraig o Debbie@s:cym&eng yn dŵad o Cilcain@s:cym&eng # Debbie_Davies@s:cym&eng .	amd be.3S.PRES wife PRON.3SM Debbie PRT come.NONFIN from Cilcain Debbie_Davies	and his wife Debbie comes from Cilcain; Debbie Davies.	\N	\N	789107	792996	3889	
423	stammers8	CAR	oh@s:cym&eng oedd hwnna right@s:cym&eng [/] ## right@s:cym&eng agos yn_do ?	IM be.3S.IMP that right right close yes	oh, that was very close, wasn't it?	phone heard ringing from another room. It continues to ring for a while through the following dialogue.	phone heard ringing from another room. It continues to ring for a while through the following dialogue.	824457	827998	3541	
408	stammers8	ISL	oedd ei thad a ei mam@s:cym&eng yn cadw (y)r swyddfa post@s:cym&eng yn Cilcain@s:cym&eng .	be.3S.IMP POSS.3SF father and POSS.3SF mother PRT keep.NONFIN DET office post in Cilcain	her father and her mother used to run the post office in Cilcain.	\N	\N	792985	796782	3797	
416	stammers8	ISL	sawl blwyddyn yn_ôl .	several year back	several years ago.	\N	\N	810397	811802	1405	
409	stammers8	ISL	ac o'n i (y)n deud +"/ .	and be.1S.IMP PRON.1S PRT say.NONFIN	and I was saying:	\N	\N	796848	797475	627	
410	stammers8	ISL	dw i (y)n cofio hi (y)n dod i Ysgol_Llan@s:cym&eng (y)ma ### efo ## be o'n i (y)n gael i ginio .	be.1S.PRES PRON.1S PRT remember.NONFIN PRON.3SF PRT come.NONFIN to Ysgol_Llan here with what be.1S.IMP PRON.1S PRT have.NONFIN for dinner	I remember her coming to Ysgol Llan here to do with what I was having for dinner.	\N	\N	797463	804034	6571	
411	stammers8	CAR	o:h@s:cym&eng yeah@s:cym&eng .	\N	\N	\N	\N	804243	805404	1161	
417	stammers8	CAR	well mae (y)n ychydig rŵan &=laugh !	well be.3S.PRES PRT a_little now	well, it's quite a while now!	\N	\N	811651	816086	4435	
418	stammers8	ISL	+< &=laugh !	\N	\N	\N	\N	813125	814995	1870	
431	stammers8	ISL	cymryd polion i (y)r cae .	take.NONFIN poles to DET field	taking poles to the field.	\N	\N	835219	837030	1811	
419	stammers8	ISL	ond er@s:cym&eng +. . .	but IM	but, er...	\N	\N	816272	818489	2217	
424	stammers8	ISL	wneith hwnnw ateb ei hun yli [?] .	do.3S.NONPAST that answer.NONFIN POSS.3S self see.2S.IMPER	that'll answer itself, eh.	\N	\N	826686	828311	1625	
420	stammers8	ISL	oh@s:cym&eng ac o'n i (y)n meddwl mai Ford_Popular@s:cym&eng oedd gynni .	IM and be.1S.IMP PRON.1S PRT think.NONFIN PRT Ford_Popular be.3S.IMP with.3SF	oh, and I was thinking it was a Ford Popular she had.	\N	\N	819395	822007	2612	
425	stammers8	CAR	huh@s:cym&eng ?	\N	\N	\N	\N	828392	829333	941	
421	stammers8	ISL	ond oedd hi (y)n gywiro fi .	but be.3S.IMP PRON.3SF PRT correct.NONFIN PRON.1S	but she corrected me.	\N	\N	822088	823296	1208	
422	stammers8	ISL	Ford_Anglia@s:cym&eng oedd gynni hi .	Ford_Anglia be.3S.IMP with.3SF PRON.3SF	she had a Ford Anglia.	\N	\N	823284	824700	1416	
429	stammers8	CAR	+< <ond (y)dy Gladys@s:cym&eng ddim yna> [?] ?	but be.3S.PRES Gladys NEG there	but is Gladys not there?	\N	\N	832259	833605	1346	
426	stammers8	ISL	mae (y)r phone@s:cym&eng yn canu ym ben draw .	be.3S.PRES DET phone PRT sing.NONFIN in end beyond	the phone's ringing through there.	\N	\N	829762	831411	1649	
427	stammers8	CAR	xxx +/ .	\N	\N	\N	\N	831063	831992	929	
430	stammers8	ISL	na mae (y)n fine@s:cym&eng [?] .	no be.3S.PRES PRT fine	no, it's fine.	\N	\N	834197	835184	987	
433	stammers8	CAR	oh@s:cym&eng mae Jason@s:cym&eng yna .	IM be.3S.PRES Jason there	oh, Jason's there.	\N	\N	838331	839875	1544	
432	stammers8	ISL	Jason@s:cym&eng yn gosod polion .	Jason PRT set.NONFIN poles	Jason's putting up poles.	\N	\N	837355	838551	1196	
434	stammers8	ISL	yndy .	be.3S.PRES	yes.	\N	\N	840049	840618	569	
435	stammers8	CAR	oh@s:cym&eng .	\N	\N	\N	\N	840595	841233	638	
436	stammers8	ISL	&=laugh .	\N	\N	\N	\N	842092	842533	441	
437	stammers8	CAR	+< <dw i (y)n> [?] meddwl fysai fo (y)n roir [//] wneud tap@s:cym&eng i mi yn y bath@s:cym&eng (y)ma [?] [=! laughs] .	be.1S.PRES PRON.1S PRT think.NONFIN be.3S.CONDIT PRON.3SM PRT put.NONFIN make.NONFIN tap for PRON.1S in DET bath here	I think he'd put...make me a tap in this bath.	\N	\N	842313	845517	3204	
438	stammers8	ISL	tap@s:cym&eng ?	\N	\N	\N	\N	845668	846330	662	
467	stammers8	ISL	oedd .	be.3S.IMP	yes.	\N	\N	893592	894219	627	
439	stammers8	CAR	<mi oedd> [?] [//] yn y gegin .	PRT be.3S.IMP in DET kitchen	it was...in the kitchen.	\N	\N	846341	847386	1045	
457	stammers8	CAR	hwnna (y)n rhad yn_doedd ?	that PRT cheap be.3S.IMP.NEG	that was cheap, wasn't it?	\N	\N	878487	879544	1057	
440	stammers8	CAR	dw i isio tap@s:cym&eng gwahanol .	be.1S.PRES PRON.1S want tap different	I want a different tap.	\N	\N	847386	848780	1394	
441	stammers8	ISL	oh@s:cym&eng basai mae sure@s:cym&eng # llawen .	IM be.3S.CONDIT be.3S.PRES sure joyful	oh, I'm sure he would, happily.	\N	\N	848791	851740	2949	
442	stammers8	CAR	+< mmm@s:cym&eng .	\N	\N	\N	\N	849418	849917	499	
468	stammers8	CAR	oh@s:cym&eng !	\N	\N	\N	\N	894381	895461	1080	
443	stammers8	CAR	oh@s:cym&eng wna i ofyn iddo fo ta .	IM do.1S.NONPAST PRON.1S ask.NONFIN to.3SM PRON.3SM then	oh, I'll ask him then.	\N	\N	852367	854492	2125	
458	stammers8	ISL	+< oedd oedd .	be.3S.IMP be.3S.IMP	yes, it was.	\N	\N	878812	880078	1266	
444	stammers8	ISL	+< xxx ry falch xx +/ .	xxx too proud xx	[...] only too glad [..]...	\N	\N	852727	853772	1045	
445	stammers8	ISL	xxx mae (y)n ateb ei hun wan .	xxx be.3S.PRES PRT answer.NONFIN POSS.3S self now	[...] it's answering itself now	\N	\N	854596	856500	1904	
446	stammers8	CAR	yndy mae (y)n ardderchog yndy ?	be.3S.PRES be.3S.PRES PRT excellent be.3S.PRES	yes, it's excellent, isn't it?	\N	\N	856036	858057	2021	
447	stammers8	ISL	&=laugh .	\N	\N	\N	\N	857604	859508	1904	
459	stammers8	CAR	+< be o'ch chi (y)n gael am hwnna ?	what be.2PL.IMP PRON.2PL PRT get.NONFIN for that	what did you get for that?	\N	\N	879544	880705	1161	
460	stammers8	ISL	oh@s:cym&eng !	\N	\N	\N	\N	881506	882214	708	
448	stammers8	CAR	oedd Merched_y_Wawr@s:cym&eng (we)di mynd i rywle yn Nanerch@s:cym&eng i gael cinio .	be.3S.IMP Merched_y_Wawr PRT.PAST go.NONFIN to somewhere in Nanerch to have.NONFIN dinner	Merched y Wawr went somewhere in Nanerch to have a dinner.	Merched y Wawr is a Welsh language group for women, similar to the Women's Institute	Merched y Wawr is a Welsh language group for women, similar to the Women's Institute	859624	864047	4423	
449	stammers8	ISL	oh@s:cym&eng yeah@s:cym&eng cinio Gŵyl_Dewi ?	IM yeah dinner David's_Feast	oh, yes, a St. David's day dinner?	\N	\N	864362	865999	1637	
461	stammers8	CAR	bob peth ?	every thing	everything?	\N	\N	881947	882609	662	
450	stammers8	CAR	ie cyn y Gŵyl_Dewi yndy .	yes before DET David's_Feast be.3S.PRES	yes, before St. David's day, yes?	\N	\N	865995	867992	1997	
451	stammers8	ISL	oh@s:cym&eng yeah@s:cym&eng .	\N	\N	\N	\N	868143	869013	870	
452	stammers8	CAR	o'n nhw ddeud bod o (y)n ardderchog .	be.3PL.IMP PRON.3PL say.NONFIN be.NONFIN PRON.3SM PRT excellent	they were saying it was excellent.	\N	\N	869106	870871	1765	
453	stammers8	ISL	+< &=clears_throat .	\N	\N	\N	\N	869617	870406	789	
469	stammers8	CAR	well@s:cym&eng ## oh@s:cym&eng hwyrach mai dyna be oedd ## +// .	well IM perhaps PRT there what be.3S.IMP	well. . . oh, maybe that was what...	\N	\N	895948	899606	3658	
454	stammers8	ISL	glywes i am un arall ## tua # ochrau Wyddgrug rywle .	hear.1S.PAST PRON.1S about one other about sides Mold somewhere	I heard about another one round Mold way, somewhere.	\N	\N	871103	875898	4795	
462	stammers8	ISL	cawl a cinio iawn a pudding@s:cym&eng wedyn .	soup and lunch right and pudding after	soup, and a decent dinner, and pudding afterwards.	\N	\N	883050	886347	3297	
455	stammers8	ISL	oedd o bob [?] chwe phunt !	be.3S.IMP PRON.3SM every six pound	it was £6 each!	\N	\N	875968	877256	1288	
463	stammers8	CAR	oh@s:cym&eng !	\N	\N	\N	\N	886173	886753	580	
456	stammers8	CAR	oedd ?	be.3S.IMP	was it?	\N	\N	877721	878475	754	
464	stammers8	CAR	ew ardderchog yn_de !	IM excellent TAG	oh, excellent, isn't it!	\N	\N	886927	888414	1487	
475	stammers8	CAR	oh@s:cym&eng mae (y)n sure@s:cym&eng !	IM be.3S.PRES PRT sure	oh, I'm sure!	\N	\N	907361	908568	1207	
470	stammers8	CAR	oedd Keith@s:cym&eng yn mynd yno ?	be.3S.IMP Keith PRT go.NONFIN there	was Keith going there?	\N	\N	899896	901521	1625	
465	stammers8	ISL	oedd hwnnw rywbeth i wneud efo Menter_Iaith@s:cym&eng Sir_Fflint dw i meddwl .	be.3S.IMP that something to do.NONFIN with Menter_Iaith Flintshire be.1S.PRES PRON.1S think.NONFIN	that was something to do with the Flintshire Menter Iaith, I think.	Menter Iaith is an organisation promoting the Welsh language in local communities.	Menter Iaith is an organisation promoting the Welsh language in local communities.	889331	892941	3610	
476	stammers8	ISL	&=belch &=clears_throat .	\N	\N	\N	\N	908696	910298	1602	
466	stammers8	CAR	oedd ?	be.3S.IMP	was it?	\N	\N	893034	893510	476	
471	stammers8	CAR	dw (ddi)m yn gwybod .	be.1S.PRES NEG PRT know.NONFIN	I don't know.	\N	\N	901637	902322	685	
479	stammers8	ISL	timod be oedd ei enw o ?	know.2S what be.3S.IMP POSS.3SM name PRON.3SM	do you know what it was called?	\N	\N	914722	915755	1033	
472	stammers8	ISL	hwyrach bod o .	perhaps be.NONFIN PRON.3SM	perhaps he did.	\N	\N	902253	903483	1230	
477	stammers8	CAR	xxx ond (dy)dy o (ddi)m (we)di bod ti (y)n gweld yn y +. . .	xxx but be.3S.PRES.NEG PRON.3SM NEG PRT.PAST be.NONFIN PRON.2S PRT see.NONFIN in DET	[...] but he/it hasn't been, you see, in the...	\N	\N	909288	912017	2729	
473	stammers8	ISL	rheitiach bod o (we)di .	likely be.NONFIN PRON.3SM PRT.PAST	quite likely he did.	\N	\N	903971	905097	1126	
474	stammers8	ISL	oedd y tocynnau (we)di mynd &=click:fingers fel (y)na .	be.3S.IMP DET tickets PRT.PAST go.NONFIN like there	the tickets went like that.	\N	\N	905062	907361	2299	
478	stammers8	ISL	ti (y)n cofio (y)r rhaglen (y)na ar y teledu ?	PRON.2S PRT remember.NONFIN DET programme there on DET television	do you remember that programme on the television?	\N	\N	912655	914664	2009	
481	stammers8	ISL	Torri_Gwynt@s:cym&eng ["] .	\N	\N	literally "breaking wind"	literally "breaking wind"	916359	917624	1265	
480	stammers8	CAR	be ?	what	what?	\N	\N	915860	916243	383	
482	stammers8	ISL	&=laugh oedd Dewi_Pws@s:cym&eng yno fo .	be.3S.IMP Dewi_Pws in.3SM PRON.3SM	Dewi Pws was in it.	\N	\N	918669	920620	1951	
483	stammers8	CAR	oedd [=! laughs] ?	be.3S.IMP	was he?	\N	\N	920840	921665	825	
484	stammers8	ISL	+< yeah@s:cym&eng [?] .	\N	\N	\N	\N	921212	921525	313	
485	stammers8	ISL	ew oedd o (y)n ddoniol !	IM be.3S.IMP PRON.3SM PRT funny	oh, it was funny!	\N	\N	921815	922953	1138	
486	stammers8	CAR	ew oedd o (y)n da yn_doedd ?	IM be.3S.IMP PRON.3SM PRT good be.3S.IMP.NEG	oh, it/he was good, wasn't it/he?	\N	\N	922837	924741	1904	
487	stammers8	ISL	mae o dal yn (dy)dy ?	be.3S.PRES PRON.3SM still PRT be.3S.PRES.NEG	it/he still is, isn't it/he?	\N	\N	924753	926030	1277	
509	stammers8	ISL	o:h@s:cym&eng mae Dai_Jones@s:cym&eng yn cychwyn eto # Cefn_Gwlad@s:cym&eng .	IM be.3S.PRES Dai_Jones PRT start.NONFIN again Cefn_Gwlad	oh, Dai Jones is starting again, in "Cefn Gwlad" .	\N	\N	957262	960373	3111	
488	stammers8	ISL	mae Rownd_a_Rownd@s:cym&eng wan .	be.3S.PRES Round_and_Round now	there's "Rownd a Rownd" now.	\N	\N	926065	927307	1242	
489	stammers8	ISL	ti (y)n gwatsio hwnnw ?	PRON.2S PRT watch.NONFIN that	do you watch that?	\N	\N	927435	928305	870	
490	stammers8	CAR	+< yndy ?	be.3S.PRES	is there?	\N	\N	927551	928096	545	
510	stammers8	CAR	yndy ?	be.3S.PRES	is he?	\N	\N	960420	961314	894	
491	stammers8	CAR	na dw i (dd)im yn gweld hwnna llawer .	no be.1S.PRES PRON.1S NEG PRT see.NONFIN that much	no, I don't see that very much.	\N	\N	928317	930059	1742	
492	stammers8	ISL	nos Lun a nos Fercher hanner (we)di chwech tan saith .	night Monday and night Wednesday half after six until seven	Monday night and Wednesday night, 6:30 till 7 .	\N	\N	930151	933089	2938	
523	stammers8	ISL	dw i (we)di bod yn # postio rei i # John_Johnson@s:cym&eng Fron_Hendre@s:cym&eng # achos oedd ei lun o ar ei flaen o .	be.1S.PRES PRON.1S PRT.PAST be.NONFIN PRT post.NONFIN some to John_Johnson Fron_Hendre because be.3S.IMP POSS.3SM picture PRON.3SM on POSS.3SM front PRON.3SM	I've been posting some to John Johnson at Fron Hendre, because his picture was on the front of it.	\N	\N	979856	986148	6292	
493	stammers8	ISL	cofia !	remember.2S.IMPER	remember!	\N	\N	934052	934679	627	
511	stammers8	CAR	oh@s:cym&eng da iawn !	IM good very	oh, very good!	\N	\N	961291	962637	1346	
494	stammers8	ISL	S_pedwar_C .	S_Four_C	S4C.	\N	\N	934714	935666	952	
495	stammers8	CAR	&=stutter # <oeddwn i (y)n> [?] &=stutter +// .	be.1S.IMP PRON.1S PRT	I was...	\N	\N	935852	937802	1950	
496	stammers8	CAR	nos Llun ?	night Monday	Monday night?	\N	\N	937791	938882	1091	
512	stammers8	ISL	+< yndy wir .	be.3S.PRES true	yes indeed.	\N	\N	961349	962173	824	
497	stammers8	ISL	ia .	yes	yes.	\N	\N	938871	939300	429	
498	stammers8	ISL	+, a (y)r nos Mercher oh@s:cym&eng right@s:cym&eng .	and DET night Wednesday IM right	...and Wednesday night, oh right.	\N	\N	939288	940844	1556	
517	stammers8	ISL	+, a (y)r Cymro@s:cym&eng [?] .	and DET Cymro	and the "Cymro" .	Y Cymro is a national Welsh language weekly newspaper	Y Cymro is a national Welsh language weekly newspaper	973006	974202	1196	
499	stammers8	ISL	yeah@s:cym&eng mae ar [?] tua amser cinio dydd Sul .	yeah be.3S.PRES on about time lunch day Sunday	yeah, and it's on around lunch time on Sunday.	\N	\N	941100	943166	2066	
513	stammers8	ISL	ie .	yes	yes.	\N	\N	962637	963276	639	
500	stammers8	CAR	yndy ?	be.3S.PRES	is it?	\N	\N	943259	943782	523	
501	stammers8	ISL	yndy .	be.3S.PRES	yes.	\N	\N	943805	944176	371	
502	stammers8	CAR	+< oh@s:cym&eng dyna ni ta .	IM there PRON.1PL then	oh, there we are, then.	\N	\N	943956	945244	1288	
526	stammers8	ISL	oedd y Parch Erin_Evans@s:cym&eng (we)di ### sgwennu hanes yr achos ## mewn llyfr # dwyieithog .	be.3S.IMP DET Reverend Erin_Evans PRT.PAST write.NONFIN history DET cause in book bilingual	the Rev Erin Evans had written the history of the cause, in a bilingual book.	\N	\N	989736	998919	9183	
503	stammers8	ISL	+< y # omnibus@s:cym&eng .	DET omnibus	the omnibus.	\N	\N	944792	946696	1904	
504	stammers8	CAR	oh@s:cym&eng # right@s:cym&eng .	\N	\N	\N	\N	946813	948438	1625	
518	stammers8	ISL	ti (dd)im yn cael y Goleuad@s:cym&eng .	PRON.2S NEG PRT get.NONFIN DET Goleuad	you don't get the "Goleuad" .	\N	\N	974248	975560	1312	
505	stammers8	CAR	dyna dda yn_de .	there good TAG	that's good, isn't it?	\N	\N	949681	950934	1253	
514	stammers8	CAR	mae isio nhw wneud Dechrau_Canu@s:cym&eng (y)n iawn hefyd xxx .	be.3S.PRES want PRON.3PL make.NONFIN Dechrau_Canu PRT right too	they need to put "Dechrau Canu" right, too, [...].	Dechrau Canu Dechrau Canmol is a welsh language programme of religious music [specifically that commonly sung in Wales]	Dechrau Canu Dechrau Canmol is a welsh language programme of religious music [specifically that commonly sung in Wales]	963660	967213	3553	
506	stammers8	ISL	ew oh@s:cym&eng mae (y)na raglenni da ar S_pedwar_C .	IM IM be.3S.PRES there programmes good on S_four_C	oh, there are some good programmes on S4C.	\N	\N	950017	953222	3205	
507	stammers8	CAR	ew oes .	IM be.3S.PRES	oh, yes.	\N	\N	953280	954696	1416	
508	stammers8	ISL	oes wir # mae (y)na .	be.3S.PRES true be.3S.PRES there	yes indeed, there are.	\N	\N	955567	957262	1695	
524	stammers8	CAR	oh@s:cym&eng dyna nice@s:cym&eng .	IM there nice	oh, that's nice.	\N	\N	986125	987576	1451	
519	stammers8	CAR	nac ydw .	NEG be.1S.PRES	no.	\N	\N	975827	976675	848	
515	stammers8	ISL	mae (y)na lythyr yn y Goleuad@s:cym&eng am hynny .	be.3S.PRES there letter in DET Goleuad about that	there's a letter in the "Goleuad" about that.	Y Goleuad is the weekly paper of the Presbyterian Church of Wales	Y Goleuad is the weekly paper of the Presbyterian Church of Wales	967596	970719	3123	
516	stammers8	CAR	oh@s:cym&eng raid mi sgwennu hefyd .	IM necessity PRON.1S write.NONFIN too	oh, I'll have to write as well.	\N	\N	970719	972646	1927	
520	stammers8	ISL	nag wyt .	NEG be.2S.PRES	no.	\N	\N	976826	977650	824	
521	stammers8	CAR	well@s:cym&eng pam ti (dd)im yn <roi un i mi> [?] [=! laughs] ?	well why PRON.2S NEG PRT give.NONFIN one to PRON.1S	well, why don't you give me one?	\N	\N	977476	979217	1741	
525	stammers8	ISL	+, ynglŷn â Capel_y_Gad@s:cym&eng Cilcain@s:cym&eng .	regarding with Capel_y_Gad Cilcain	to do with Capel y Gad, Cilcain.	\N	\N	987066	989330	2264	
522	stammers8	ISL	mi wna i !	PRT do.1S.NONPAST PRON.1S	I will!	\N	\N	979136	979879	743	
528	stammers8	ISL	+, am dair punt .	for three pound	for £3 .	\N	\N	999825	1000940	1115	
527	stammers8	CAR	ew !	IM	oh!	\N	\N	999152	999848	696	
530	stammers8	ISL	+< <oedd o fath â> [///] # oedd o ratach na cerdyn Dolig .	be.3S.IMP PRON.3SM kind with be.3S.IMP PRON.3SM cheaper than card Christmas	it was like. . . it was cheaper than a Christmas card.	\N	\N	1001625	1004341	2716	
529	stammers8	CAR	mae (y)n rhad yndy ?	be.3S.PRES PRT cheap be.3S.PRES	it's cheap, isn't it?	\N	\N	1001462	1002646	1184	
531	stammers8	CAR	yndy .	be.3S.PRES	it is.	\N	\N	1004364	1004922	558	
532	stammers8	ISL	es i +// .	go.1S.PAST PRON.1S	I went...	\N	\N	1004933	1005514	581	
533	stammers8	ISL	oh@s:cym&eng o'n i mynd i lle Pauline@s:cym&eng i nôl un do ?	IM be.1S.IMP PRON.1S go.NONFIN to place Pauline to fetch.NONFIN one yes	oh, I went to Pauline's place to get one, didn't I?	\N	\N	1005514	1007766	2252	
534	stammers8	CAR	do do !	yes yes	yes!	\N	\N	1007813	1009113	1300	
535	stammers8	ISL	ti (y)n cofio i Bwcle ?	PRON.2S PRT remember.NONFIN to Buckley	you remember, to Buckley?	\N	\N	1008707	1009960	1253	
570	stammers8	CAR	a mae nhw am aros am [//] # yn er@s:cym&eng rhieni # Imogen@s:cym&eng ar y ffordd yn_de ?	and be.3PL.PRES PRON.3PL for stay.NONFIN for in IM parents Imogen on DET way TAG	and they're going to stay with Imogen's parents on the way, right.	\N	\N	1077137	1083442	6305	
536	stammers8	CAR	yndw <raid ni> [?] fynd fyny ac i_lawr yn_do ?	be.1S.PRES necessity PRON.1PL go.NONFIN up and down yes	yes, we had to go and down, didn't we?	\N	\N	1009264	1011865	2601	
553	stammers8	CAR	well@s:cym&eng dim yn # &ða [///] mae (y)n go_lew yndy ?	well NEG PRT be.3S.PRES PRT alright be.3S.PRES	well, not. . . it's alright, isn't it?	\N	\N	1045814	1048717	2903	
537	stammers8	ISL	&nan Ffordd_Nant_Mawr@s:cym&eng # well@s:cym&eng dyna ti le (y)dy hwnnw &=laugh !	Ffordd_Nant_Mawr well there PRON.2S place be.3S.PRES that	Ffordd Nant Mawr, well there's a place for you!	\N	\N	1011552	1016150	4598	
538	stammers8	CAR	&=laugh .	\N	\N	\N	\N	1016115	1017299	1184	
539	stammers8	ISL	mae (y)r tai (we)di rhifo bob siâp .	be.3S.PRES DET houses PRT.PAST number.NONFIN every shape	the houses have been numbered in all shapes.	\N	\N	1017241	1019273	2032	
565	stammers8	CAR	oedd [?] fi meddwl bod ni mynd wsnos nesa .	be.1S.IMP PRON.1S think.NONFIN be.NONFIN PRON.1PL go.NONFIN week next	I thought we were going next week.	\N	\N	1069044	1070739	1695	
540	stammers8	ISL	a mae nhw [?] (y)n deud bod Rhosllanerchrugog@s:cym&eng (y)r u(n) fath .	and be.3PL.PRES PRON.3PL PRT say.NONFIN be.NONFIN Rhosllanerchrugog DET one kind	and they say Rhosllanerchrugog's the same.	\N	\N	1019599	1021851	2252	
554	stammers8	ISL	yndy .	be.3S.PRES	yes.	\N	\N	1049169	1049831	662	
541	stammers8	CAR	be ?	what	what?	\N	\N	1021874	1022722	848	
542	stammers8	CAR	y ffyrdd yn newid eu henwau hanner ffordd &=laugh ?	DET ways PRT change.NONFIN POSS.3PL names half way	the roads changing their names half way?	\N	\N	1022710	1026565	3855	
543	stammers8	ISL	a rhifau bob siâp .	and numbers every shape	and numbers of all shapes.	\N	\N	1026669	1028539	1870	
555	stammers8	CAR	mae (ddi)m yn glawio .	be.3S.PRES NEG PRT rain.NONFIN	it's not raining.	\N	\N	1049959	1050923	964	
544	stammers8	CAR	a un ochr <yn un le> [/] &en &ne yn un +/ .	and one side PRT one place PRT one	and one side is one place...	\N	\N	1027459	1030152	2693	
545	stammers8	ISL	++ un enw .	one name	...one name.	\N	\N	1029827	1030605	778	
546	stammers8	CAR	a (y)r llall # <enw arall> [=! laughs] !	and DET other name other	and the other, another name!	\N	\N	1030582	1032695	2113	
556	stammers8	CAR	dyna (y)r peth +. . .	there DET thing	that's the thing.	\N	\N	1050899	1051573	674	
547	stammers8	ISL	+< ++ enw arall .	name other	...another name.	\N	\N	1031534	1032451	917	
548	stammers8	CAR	ochr arall +/ .	side other	the other side...	\N	\N	1033078	1033937	859	
566	stammers8	CAR	ac yr wsnos arall dan ni mynd .	and DET week other be.1PL.PRES PRON.1PL go.NONFIN	and it's the other week we're going.	\N	\N	1070728	1072690	1962	
549	stammers8	ISL	yeah@s:cym&eng well@s:cym&eng wrth bod nhw (we)di dal i adeiladu (y)dy o (y)n_de ?	yeah well by be.NONFIN PRON.3PL PRT.PAST keep.NONFIN to build.NONFIN be.3S.PRES PRON.3SM TAG	yeah, well it's because they carried on building, isn't it?	\N	\N	1033252	1035911	2659	
550	stammers8	CAR	oh@s:cym&eng yeah@s:cym&eng .	\N	\N	\N	\N	1035818	1036700	882	
557	stammers8	ISL	yeah@s:cym&eng (dy)na peth mawr yn_de ?	yeah there thing big TAG	yeah, that's the main thing, isn't it?	\N	\N	1051886	1053686	1800	
551	stammers8	CAR	well@s:cym&eng bysen medru wneud # phase@s:eng two@s:eng neu rywbeth yn_de (y)r un &ə enw .	well be.3PL.CONDIT can.NONFIN do.NONFIN phase two or something TAG DET one name	well, they could do a phase two or something, right, with the same name.	\N	\N	1038152	1042819	4667	
558	stammers8	CAR	+< mmm@s:cym&eng .	\N	\N	\N	\N	1052920	1053419	499	
552	stammers8	ISL	(dy)dy hi (ddi)m yn gynnes iawn heddiw nac (y)dy ?	be.3S.PRES.NEG PRON.3SF NEG PRT warm very today NEG be.3S.PRES	it's not very warm today, is it?	\N	\N	1043190	1044978	1788	
567	stammers8	ISL	oh@s:cym&eng yeah@s:cym&eng .	\N	\N	\N	\N	1072678	1073201	523	
559	stammers8	ISL	hwyrach ddylsen [?] ni wneud tân yn fa(n) (y)ma .	perhaps should.1PL.CONDIT PRON.1PL make.NONFIN fire in place here	maybe we should make a fire here.	\N	\N	1054279	1056322	2043	
560	stammers8	CAR	(y)dy (y)r plant yn dod yndyn ?	be.3S.PRES DET children PRT come.NONFIN be.3PL.PRES	are the children coming, are they?	\N	\N	1057693	1059713	2020	
561	stammers8	CAR	xxx .	\N	\N	\N	\N	1059783	1060166	383	
562	stammers8	ISL	oh@s:cym&eng nos Wener yndyn .	IM night Friday be.3PL.PRES	oh, yes, on Friday night.	\N	\N	1060084	1062070	1986	
568	stammers8	CAR	ac wedyn mae nhw (y)n dod yma am y Pasg .	and then be.3PL.PRES PRON.3PL PRT come.NONFIN here for DET Easter	and then they're coming here for Easter.	\N	\N	1073178	1075720	2542	
563	stammers8	ISL	mi ddawn i (ei)n gweld ni .	PRT come.3PL.NONPAST to POSS.1PL see.NONFIN PRON.1PL	they'll come to see us.	\N	\N	1062054	1063227	1173	
564	stammers8	CAR	dan ni (y)n mynd yna &=cough i # Gaerdydd .	be.1PL.PRES PRON.1PL PRT go.NONFIN there to Cardiff	we're going there, to Cardiff.	\N	\N	1064517	1068394	3877	
571	stammers8	CAR	mae nhw (y)n +// .	be.3PL.PRES PRON.3PL PRT	they're...	\N	\N	1083442	1083860	418	
569	stammers8	ISL	oh@s:cym&eng nice@s:cym&eng iawn .	IM nice very	oh, very nice.	\N	\N	1075918	1077125	1207	
574	stammers8	ISL	(dd)aru Ken_King@s:cym&eng ffonio diwrnod o_blaen .	happen.PAST Ken_King phone.NONFIN day before	Ken_King phoned the other day.	\N	\N	1088295	1091232	2937	
572	stammers8	ISL	oh@s:cym&eng yeah@s:cym&eng .	\N	\N	\N	\N	1083709	1084347	638	
573	stammers8	CAR	+, a dod i_fyny a aros yna ar y ffordd yn_ôl .	and come.NONFIN up and stay.NONFIN there on DET way back	...and come up, and stay there on the way back.	\N	\N	1084359	1087389	3030	
575	stammers8	ISL	oedd isie canwyl [*] [//] canol # i olwyn # Ford@s:cym&eng # Four_Thousand@s:cym&eng .	be.3S.IMP want middle middle for wheel Ford Four_Thousand	he wanted a middle of a wheel for a Ford 4000 .	\N	\N	1091720	1097920	6200	
576	stammers8	ISL	raid bod un o (we)di cracio [?] neu rywbeth .	necessity be.NONFIN one PRON.3SM PRT.PAST crack.NONFIN or something	his one must have cracked or something.	\N	\N	1098732	1100532	1800	
577	stammers8	ISL	oedd gynna i un yma .	be.3S.IMP with.1S PRON.1S one here	I had one here.	\N	\N	1100486	1101902	1416	
578	stammers8	ISL	ond mae raid bod nhw (we)di cael gafael ar un ## o rywle arall .	but be.3S.PRES necessity be.NONFIN PRON.3PL PRT.PAST get.NONFIN hold on one from somewhere other	but they must have got hold of one from somewhere else.	\N	\N	1102285	1106558	4273	
579	stammers8	ISL	tyre@s:cym&eng oedd er@s:cym&eng [=? y] # xxx (we)di prynu <am bunt> [?] timod .	tyre be.3S.IMP IM xxx PRT.PAST buy.NONFIN for pound know.2S	[...] had bought a tyre for a pound, you know.	\N	\N	1107128	1110924	3796	
597	stammers8	CAR	oedd fi (dd)im yn gwybod bod nhw wneud olwynion fel (y)na .	be.1S.IMP PRON.1S NEG PRT know be.NONFIN PRON.3PL make.NONFIN wheels like there	I didn't know they made wheels like that.	\N	\N	1142294	1145475	3181	
580	stammers8	CAR	oh@s:cym&eng dda(ru) [?] ti ddeud do .	IM happen.PAST PRON.2S say.NONFIN yes	oh, you said, yes.	\N	\N	1110901	1112387	1486	
581	stammers8	ISL	<super@s:eng singles@s:eng> ["] mae nhw (y)n galw nhw .	super singles be.3PL.PRES PRON.3PL PRT call.NONFIN PRON.3PL	"super singles", they call them.	\N	\N	1112898	1115173	2275	
606	stammers8	ISL	mi allan fod yn beryg hefyd .	PRT can.3PL.NONPAST be.NONFIN PRT dangerous too	they can be dangerous as well.	\N	\N	1173026	1175441	2415	
582	stammers8	ISL	<mae nhw gyn_lleted â hynny> [?] .	be.3PL.PRES PRON.3PL as_wide as that	they're that wide	\N	\N	1115789	1117275	1486	
598	stammers8	ISL	yndy .	be.3S.PRES	yes.	\N	\N	1146091	1146706	615	
583	stammers8	ISL	<yn lle # bod # fath â> [///] # lorries@s:cym&eng ers_talwm gyn twin@s:eng wheels@s:eng yn_doedd ?	in place be.NONFIN kind with lorries in_the_past with twin wheels be.3S.IMP.NEG	instead of being like. . . lorries used to have twin wheels, didn't they?	\N	\N	1117228	1121501	4273	
584	stammers8	CAR	oh@s:cym&eng yeah@s:cym&eng mae nhw wneud un mawr ?	IM yeah be.3PL.PRES PRON.3PL make.NONFIN one big	oh, yeah, they make one big one?	\N	\N	1120944	1122824	1880	
585	stammers8	ISL	super@s:eng single@s:eng yeah@s:cym&eng .	\N	\N	\N	\N	1122581	1124009	1428	
586	stammers8	ISL	xxx naw_deg [=? naw deg] modfedd o led .	xxx ninety inch of width	[...] 90 [or nine or ten] inches in width.	\N	\N	1124009	1126133	2124	
599	stammers8	ISL	a mae nhw # +// .	and be.3PL.PRES PRON.3PL	and they...	\N	\N	1146660	1147565	905	
587	stammers8	CAR	ew !	IM	ooh!	\N	\N	1126075	1126714	639	
588	stammers8	ISL	ac oedd (y)na ## ddigon o gig yno fo [?] # ti (y)n dallt .	and be.3S.IMP there enough of meat in.3SM PRON.3SM PRON.2S PRT understand.NONFIN	and there was plenty of meat on it, if you get me.	\N	\N	1126574	1130568	3994	
589	stammers8	CAR	mmm@s:cym&eng .	\N	\N	\N	\N	1130557	1131033	476	
610	stammers8	ISL	well@s:cym&eng mae nhw (we)di mynd wan .	well be.3PL.PRES PRON.3PL PRT.PAST go.NONFIN now	well, they've gone now.	\N	\N	1186621	1188572	1951	
590	stammers8	ISL	oedd y llall yn foel .	be.3S.IMP DET other PRT bald	the other one was bald.	\N	\N	1131439	1132704	1265	
600	stammers8	ISL	mae gynna i rei hen olwynion yma .	be.3S.PRES with.1S PRON.1S some old wheels here	I've got some old wheels here.	\N	\N	1147844	1149969	2125	
591	stammers8	ISL	(we)dyn mae (we)di newid o .	then be.3S.PRES PRT.PAST change.NONFIN PRON.3SM	so he's changed it.	\N	\N	1133308	1134469	1161	
592	stammers8	CAR	ew mae (y)na +// .	IM be.3S.PRES there	oh, there's...	\N	\N	1134434	1135270	836	
607	stammers8	ISL	<os wyt ti> [?] (dd)im yn cael nhw (y)n iawn <fedr yr> [?] holl wynt chwythu (y)r # knock_off@s:eng rim@s:cym&eng (y)ma # i_ffwrdd .	if be.2S.PRES PRON.2S NEG PRT get.NONFIN PRON.3PL PRT right can.3S.NONPAST DET whole wind blow.NONFIN DET knock_off rim here away	if you don't get them right, all the wind can blow this knock-off rim away.	\N	\N	1176126	1181931	5805	
593	stammers8	ISL	+< a rywbeth felly mae (y)n gwneud wan o_hyd .	and something thus be.3S.PRES PRT make.NONFIN now always	and it's something like he's doing now all the time.	\N	\N	1134504	1136571	2067	
601	stammers8	ISL	mae nhw gyn be mae nhw galw <knock_off@s:eng rims@s:cym&eng> ["] .	be.3PL.PRES PRON.3PL with what be.3PL.PRES PRON.3PL call.NONFIN knock_off rims	they've got what they call "knock-off rims" .	\N	\N	1149969	1153126	3157	
594	stammers8	CAR	fasai (we)di # costio andros o lot@s:cym&eng am un newydd yn_basai ?	be.3S.CONDIT PRT.PAST cost.NONFIN devil of lot for one new be.3S.CONDIT.NEG	it would have cost a hell of a lot for a new one, wouldn't it?	\N	\N	1135270	1138695	3425	
602	stammers8	CAR	oh@s:cym&eng .	\N	\N	\N	\N	1153231	1154078	847	
595	stammers8	ISL	mi fasai .	PRT be.3S.CONDIT	it would.	\N	\N	1138811	1139868	1057	
596	stammers8	ISL	fasai .	be.3S.CONDIT	it would.	\N	\N	1141017	1141911	894	
603	stammers8	ISL	ac (dd)aru dyn Saracen@s:cym&eng # o Cerrigydrudion@s:cym&eng ddod yma ## i newid tyres@s:cym&eng a # gwerthu un newydd unwaith .	and happen.PAST man Saracen from Cerrigydrudion come.NONFIN here to change.NONFIN tyres and sell.NONFIN one new once	and a man from Saracen, from Cerrigydrudion, came here to change some tyres, and sell a new one once.	\N	\N	1154090	1163483	9393	
604	stammers8	ISL	ond oedd o (y)n methu lân â cael y tyre@s:cym&eng ar y knock_off@s:eng rim@s:cym&eng (y)ma .	but be.3S.IMP PRON.3SM PRT fail.NONFIN clean with get.NONFIN DET tyre on DET knock_off rim here	but he completely failed to get the tyre onto this knock-off rim.	\N	\N	1164028	1168730	4702	
605	stammers8	ISL	xxx .	\N	\N	\N	\N	1170414	1171760	1346	
608	stammers8	ISL	a # mae (y)na ddamweiniau wedi bod .	and be.3S.PRES there accidents PRT.PAST be.NONFIN	and there have been accidents.	\N	\N	1181942	1184659	2717	
613	stammers8	ISL	os wnei di sylwi wan # rims@s:cym&eng ## whiliau lorries@s:cym&eng # mae nhw (we)di plygu right@s:cym&eng [?] drosodd fel bod o (y)n hawddach ## cael y tyre@s:cym&eng dros yr ymyl ## heb y knock_off@s:eng rims@s:cym&eng (y)ma .	if do.2S.NONPAST PRON.2S notice.NONFIN now rims wheels lorries be.3PL.PRES PRON.3PL PRT.PAST fold.NONFIN right over like be.NONFIN PRON.3SM PRT easier get.NONFIN DET tyre over DET side without DET knock_off rims here	if you notice now, the rims of lorry wheels, they're folded right over so that it's easier to get the tyre over the edge, without these knock-off rims.	\N	\N	1190244	1205460	15216	
609	stammers8	CAR	ew ti (dd)im isio xxx (r)heina !	IM PRON.2S NEG want xxx those	ooh, you don't want [...] those!	\N	\N	1184555	1186343	1788	
611	stammers8	CAR	dyn nhw (ddi)m yn wneud nhw +/?	be.3PL.PRES.NEG PRON.3PL NEG PRT make.NONFIN PRON.3PL	do they not make them...	\N	\N	1189106	1190267	1161	
614	stammers8	CAR	+< oh@s:cym&eng .	\N	\N	\N	\N	1199098	1199980	882	
612	stammers8	ISL	+< a mae (y)r +// .	and be.3S.PRES DET	and the...	\N	\N	1189632	1190329	697	
648	stammers8	CAR	well@s:cym&eng dach chi (dd)im yn # ffwndro p(a) (y)r un (y)dy (y)r &k # &kɔ &=laugh +. . .	well be.2PL.PRES PRON.2PL NEG PRT confuse.NONFIN which DET one be.3S.PRES DET	well, you don't get confused about which one's the...	\N	\N	1266851	1271333	4482	
615	stammers8	CAR	+< yeah@s:cym&eng well@s:cym&eng mae (y)n +/ .	yeah well be.3S.PRES PRT	yeah, well, it's...	\N	\N	1202314	1203505	1191	
616	stammers8	CAR	oh@s:cym&eng .	\N	\N	\N	\N	1205414	1206064	650	
636	stammers8	CAR	melyn yn_de ?	yellow TAG	yellow, isn't it?	\N	\N	1248612	1250086	1474	
617	stammers8	ISL	wneith peiriant neu # tyre@s:cym&eng lever@s:eng mawr # ei osod o .	do.3S.NONPAST machine or tyre lever big POSS.3SM set.NONFIN PRON.3SM	a machine, or a big tyre lever, will set it.	\N	\N	1206331	1211474	5143	
637	stammers8	ISL	oh@s:cym&eng yeah@s:cym&eng .	\N	\N	\N	\N	1250074	1250794	720	
618	stammers8	CAR	+< ++ wneud o .	do.NONFIN PRON.3SM	...do it.	\N	\N	1209942	1210511	569	
619	stammers8	CAR	y ffordd hen ffasiwn yn well .	DET way old fashion PRT better	the old-fashioned way's best.	\N	\N	1211161	1213262	2101	
620	stammers8	ISL	&j well@s:cym&eng oedd y # knock_off@s:eng rims@s:cym&eng (y)ma (y)n <ryw bethau go> [?] +. . .	well be.3S.IMP DET knock_off rims here PRT some things rather	well, these knock-off rims were quite...	\N	\N	1214702	1218522	3820	
638	stammers8	CAR	+< melyn ia melyn .	yellow yes yellow	yellow, yes, yellow.	\N	\N	1250411	1251874	1463	
621	stammers8	ISL	o'n nhw (y)n beryg .	be.3PL.IMP PRON.3PL PRT dangerous	they were dangerous.	\N	\N	1219532	1220983	1451	
622	stammers8	ISL	&=sigh lle est ti # dydd Llun ?	where go.2S.PAST PRON.2S day Monday	where did you go on Monday?	\N	\N	1222678	1226277	3599	
654	stammers8	ISL	(dy)dy o (ddi)m quite@s:cym&eng (y)r u(n) fath â (y)r llall .	be.3S.PRES.NEG PRON.3SM NEG quite DET one kind with DET other	it's not quite the same as the other one.	\N	\N	1278028	1279677	1649	
623	stammers8	ISL	o'n i (y)n chwilio amdanat ti .	be.1S.IMP PRON.1S PRT search.NONFIN for.2S PRON.2S	I was looking for you.	\N	\N	1226300	1227554	1254	
639	stammers8	ISL	gwyn (y)dy rei ni hefyd .	white be.3S.PRES some PRON.1PL too	ours are white too.	\N	\N	1252629	1254091	1462	
624	stammers8	CAR	dydd Llun ?	day Monday	Monday?	\N	\N	1227461	1228506	1045	
640	stammers8	CAR	xxx +/ .	\N	\N	\N	\N	1256158	1256808	650	
625	stammers8	ISL	ia .	yes	yes.	\N	\N	1228564	1229122	558	
626	stammers8	CAR	oh@s:cym&eng o'n i mynd i edrych ar bathrooms@s:cym&eng .	IM be.1S.IM PRON.1S go.NONFIN to look.NONFIN on bathrooms	oh, I went to look at some bathrooms.	\N	\N	1230143	1232628	2485	
649	stammers8	ISL	++ poeth ac oer .	hot and cold	...hot and cold.	\N	\N	1271356	1272320	964	
627	stammers8	ISL	oh@s:cym&eng do ?	IM yes	oh, yes?	\N	\N	1232616	1233649	1033	
628	stammers8	ISL	bathroom@s:cym&eng suite@s:eng ?	\N	\N	\N	\N	1233940	1235228	1288	
629	stammers8	ISL	oh@s:cym&eng .	\N	\N	\N	\N	1236587	1237353	766	
641	stammers8	ISL	powlen ail law o Flint@s:cym&eng xx ni gael .	bowl second hand from Flint xx PRON.1PL get.NONFIN	a second-hand basin from Flint, we got.	\N	\N	1256588	1258736	2148	
630	stammers8	ISL	George_Henry_Wright@s:cym&eng <ddaru nhad> [?] gael hwnnw # yn un_naw_chwech_wyth .	George_Henry_Wright happen.PAST father.POSS.1S get.NONFIN that in nineteen_sixty_eight	my Dad got that from George Henry Wright's in 1968 .	\N	\N	1238348	1242598	4250	
631	stammers8	CAR	+< ie mae hwnnw [?] yn un da yndy ?	yes be.3S.PRES that PRT one good be.3S.PRES	yes, that's a good one, isn't it?	\N	\N	1240229	1242621	2392	
632	stammers8	ISL	pa liw wyt ti isio ?	which colour be.2S.PRES PRON.2S want	which colour do you want?	\N	\N	1243979	1245221	1242	
642	stammers8	CAR	do ?	yes	did you?	\N	\N	1258736	1259131	395	
633	stammers8	CAR	gwyn .	white	white.	\N	\N	1245361	1246220	859	
634	stammers8	ISL	oh@s:cym&eng yeah@s:cym&eng .	\N	\N	\N	\N	1246545	1247137	592	
635	stammers8	ISL	pa liw sy (y)na wan ?	which colour be.PRES.REL there now	which colour's there now?	\N	\N	1247172	1248426	1254	
643	stammers8	ISL	+< ac [//] # a does [?] yr un o (y)r tapiau (y)n matsio .	and and be.3S.PRES.NEG DET one of DET taps PRT match.NONFIN	and none of the taps match.	\N	\N	1258771	1261639	2868	
650	stammers8	CAR	dyna ti yeah@s:cym&eng .	there PRON.2S yeah	there you are, yes.	\N	\N	1272366	1273701	1335	
644	stammers8	ISL	felly mae hi orau .	thus be.3S.PRES PRON.3SF better	it's better that way.	\N	\N	1262231	1263334	1103	
645	stammers8	CAR	+< oh@s:cym&eng [?] well@s:cym&eng (doe)s (di)m isio bob peth (y)r u(n) fath nag wyt ?	IM well be.3S.PRES.NEG NEG want every thing DET one kind NEG be.2S.PRES	oh, well you don't want everything to be the same, do you?	\N	\N	1262509	1265087	2578	
657	stammers8	CAR	+< ond dw i gyn ofn i (y)r # bowlen # dorri yn_de ?	but be.1S.PRES PRON.1S with fear to DET bowl break.NONFIN TAG	but I'm afraid of the basin breaking, right?	\N	\N	1282033	1285168	3135	
646	stammers8	CAR	mae xxx .	be.3S.PRES xxx	it's [...].	\N	\N	1265052	1265714	662	
647	stammers8	ISL	&=laugh .	\N	\N	\N	\N	1265094	1266894	1800	
655	stammers8	CAR	well@s:cym&eng dim ots naci ?	well NEG odds no	well, it doesn't matter, does it?	\N	\N	1279607	1280919	1312	
651	stammers8	ISL	mae (y)r bath@s:cym&eng (y)r u(n) fath .	be.3S.PRES DET bath DET one kind	the bath's the same.	\N	\N	1273934	1275176	1242	
652	stammers8	ISL	oedd raid ni newid un tap@s:cym&eng yn fan (y)na .	be.3S.IMP necessity PRON.1PL change.NONFIN one tap in place there	we had to change one tap there.	\N	\N	1275164	1277126	1962	
653	stammers8	CAR	oh@s:cym&eng .	\N	\N	\N	\N	1276890	1277564	674	
656	stammers8	ISL	mae rei (y)n # cael tapiau aur .	be.3S.PRES some PRT get.NONFIN taps gold	some get gold taps.	\N	\N	1281093	1283136	2043	
659	stammers8	ISL	y bath@s:cym&eng neu +/?	DET bath or	the bath, or...?	\N	\N	1288616	1289789	1173	
658	stammers8	CAR	a mae (we)di cracio (y)n fwy ac yn fwy yndy &=sniff ?	and be.3S.PRES PRT.PAST crack.NONFIN PRT more and PRT more be.3S.PRES	and it's cracked more and more, hasn't it?	\N	\N	1285145	1288187	3042	
660	stammers8	CAR	na y bowlen .	no DET bowl	no, the basin.	\N	\N	1289452	1290694	1242	
661	stammers8	ISL	+< oh@s:cym&eng .	\N	\N	\N	\N	1290009	1290660	651	
662	stammers8	ISL	oh@s:cym&eng yeah@s:cym&eng .	\N	\N	\N	\N	1291240	1292146	906	
663	stammers8	ISL	yeah@s:cym&eng # potyn <dyn nhw (y)n_de> [?] ?	yeah pot be.3PL.PRES PRON.3PL TAG	yeah, they're pot, aren't they?	\N	\N	1294050	1296174	2124	
664	stammers8	CAR	ia .	yes	yes.	\N	\N	1296105	1296581	476	
665	stammers8	ISL	clai yn_de ?	clay be.3S.PRES	clay, isn't it?	\N	\N	1296271	1296991	720	
666	stammers8	CAR	ia .	yes	yes.	\N	\N	1297045	1297556	511	
767	stammers8	ISL	yr ha(f) # dwytha ?	DET summer previous	last summer?	\N	\N	1475129	1476615	1486	
667	stammers8	ISL	well@s:cym&eng fyswn i (y)n hoffi llond +/ .	well be.1S.CONDIT PRON.1S PRT like.NONFIN full	well, I'd like a full...	\N	\N	1298694	1300458	1764	
668	stammers8	CAR	ond [/] # ond mae (y)na rei yn_de ti (y)n golchi a mae (y)r dŵr yn <mynd dros y> [//] &=noise ## mynd ar y llawr [?] .	but but be.3S.PRES there some TAG PRON.2S PRT wash.NONFIN and be.3S.PRES DET water PRT go.NONFIN over DET go.NONFIN on DET floor	but there are some, aren't there, where you're washing and the water goes over. . . goes on the floor.	\N	\N	1300215	1306194	5979	
669	stammers8	ISL	+< oh@s:cym&eng .	\N	\N	\N	\N	1304650	1305277	627	
687	stammers8	CAR	na mae (y)n rhedeg <o lawr> [?] yndy ?	no be.3S.PRES PRT run.NONFIN PRON.3SM down be.3S.PRES	no, it runs it down, doesn't it?	\N	\N	1331879	1333760	1881	
670	stammers8	ISL	oes &=cough .	be.3S.PRES	yes.	\N	\N	1306706	1308111	1405	
688	stammers8	ISL	oh@s:cym&eng yeah@s:cym&eng .	\N	\N	\N	\N	1333772	1334712	940	
671	stammers8	CAR	+< ac oedd [///] oedd nhw gyn fo (y)n yr ysgol yn_de ?	and be.3S.IMP be.3PL.IMP PRON.3PL with PRON.3SM in DET school TAG	and they had it at school, right?	\N	\N	1306931	1309284	2353	
672	stammers8	CAR	ac o'ch chi (y)n # dod allan a golchi # eich dillad ynddi [=? yndy] .	and be.2PL.IMP PRON.2PL PRT come.NONFIN out and wash.NONFIN POSS.2PL clothes in.3SF	and you'd go out and wash your clothes in it.	\N	\N	1309265	1313352	4087	
698	stammers8	CAR	ond mae nhw yn wneud rhei # llai .	but be.3PL.PRES PRON.3PL PRT make.NONFIN some less	but they do make some smaller ones.	\N	\N	1354473	1356876	2403	
673	stammers8	ISL	wlyb ?	wet	wet?	\N	\N	1313352	1313874	522	
689	stammers8	ISL	oh@s:cym&eng wela i .	IM see.1S.NONPAST PRON.1S	oh, I see.	\N	\N	1334712	1337657	2945	
674	stammers8	CAR	ia .	yes	yes.	\N	\N	1313897	1314513	616	
675	stammers8	ISL	yeah@s:cym&eng well@s:cym&eng +/ .	\N	\N	\N	\N	1315226	1315911	685	
676	stammers8	CAR	ond dw i (dd)im isio un fel (y)na .	but be.1S.PRES PRON.1S NEG want one like there	but I don't want one like that.	\N	\N	1315807	1317153	1346	
677	stammers8	ISL	ochrau serth (y)dy (y)r # +/ .	sides steep be.3S.PRES DET	steep sides are the...	\N	\N	1316384	1317638	1254	
690	stammers8	ISL	ac er@s:cym&eng +. . .	and IM	and, er...	\N	\N	1337693	1339736	2043	
678	stammers8	CAR	++ gorau ie .	best yes	...best, yes.	\N	\N	1318172	1319518	1346	
679	stammers8	ISL	+< xxx yn_de (y)dy [//] sy (y)n arbed hynny .	xxx TAG be.3S.PRES be.PRES.REL PRT save.NONFIN that	[...] isn't it, that stops that.	\N	\N	1318299	1321306	3007	
704	stammers8	CAR	ac oeddech chi methu troi (y)r tap@s:cym&eng .	and be.2PL.IMP PRON.2PL fail.NONFIN turn.NONFIN DET tap	and you couldn't turn the tap.	\N	\N	1364464	1366450	1986	
680	stammers8	CAR	+< ond +/ .	but	but...	\N	\N	1320134	1320633	499	
691	stammers8	ISL	be o'n i (y)n sôn am ?	what be.1S.IMP PRON.1S PRT talk.NONFIN about	what was I talking about?	\N	\N	1340445	1341884	1439	
681	stammers8	CAR	ia mae nhw (y)n roi o mewn # work@s:eng surface@s:eng yndyn weithiau .	yes be.3PL.PRES PRON.3PL PRT put.NONFIN PRON.3SM in work surface be.3PL.PRES times	yes, they put it in a work surface, don't they, sometimes.	\N	\N	1321370	1325642	4272	
682	stammers8	ISL	oh@s:cym&eng yndy .	IM be.3S.PRES	oh, yes.	\N	\N	1325793	1326571	778	
699	stammers8	CAR	daru nhw wneud hynna efo +/ .	happen.PAST PRON.3PL do.NONFIN that with	they did that with...	\N	\N	1356987	1358450	1463	
683	stammers8	CAR	+, gan [?] wneud y job@s:cym&eng .	with do.NONFIN DET job	...while doing the job.	\N	\N	1326211	1327430	1219	
692	stammers8	CAR	a mae nhw isio <roi bath@s:cym&eng> [?] yn y # wal .	and be.3PL.PRES PRON.3PL want put.NONFIN bath in DET wall	and they want to put a bath in the wall.	\N	\N	1341145	1343792	2647	
684	stammers8	ISL	(y)dy hynny (y)n help@s:cym&eng ?	be.3S.PRES that PRT help	is that a help?	\N	\N	1327430	1328173	743	
685	stammers8	CAR	nac ydy &bw mae (y)n wneud yn waeth .	NEG be.3S.PRES be.3S.PRES PRT make.NONFIN PRT worse	no, makes it worse.	\N	\N	1328336	1330240	1904	
686	stammers8	ISL	bellach i_ffwrdd ?	further away	further away?	\N	\N	1330379	1331482	1103	
693	stammers8	CAR	ond dw i (dd)im isio nhw wneud hynna .	but be.1S.PRES PRON.1S NEG want PRON.3PL do.NONFIN that	but I don't want them to do that.	\N	\N	1343850	1345591	1741	
694	stammers8	ISL	bath@s:cym&eng ?	bath	bath?	\N	\N	1346658	1347158	500	
700	stammers8	ISL	chip_io@s:eng+cym (y)r plaster@s:cym&eng ?	chip.NONFIN DET plaster	chipping the plaster?	\N	\N	1358473	1359669	1196	
695	stammers8	CAR	yeah@s:cym&eng mae isio roi o yn y wal neu wneud twll .	yeah be.3S.PRES want put.NONFIN PRON.3SM in DET wall or make.NONFIN hole	yeah, he/she wants to put it in the wall, or make a hole.	\N	\N	1347200	1350764	3564	
696	stammers8	ISL	ia am be ?	yes for what	yes, what for?	\N	\N	1350787	1352401	1614	
707	stammers8	ISL	o:h@s:cym&eng wela i !	IM see.1S.NONPAST PRON.1S	oh, I see!	\N	\N	1369479	1371743	2264	
697	stammers8	CAR	am bod o ry fawr .	for be.NONFIN PRON.3SM too big	because it's too big.	\N	\N	1353103	1354415	1312	
701	stammers8	CAR	ia &=sigh !	yes	yes!	\N	\N	1359622	1360876	1254	
705	stammers8	ISL	oh@s:cym&eng ar y pen !	IM on DET head	oh, at the end!	\N	\N	1367227	1368516	1289	
702	stammers8	CAR	daru nhw wneud hynna yn lle # xxx yn_de .	happen.PAST PRON.3PL do.NONFIN that in place xxx TAG	they did that in [...] place, right.	\N	\N	1361225	1364348	3123	
703	stammers8	ISL	+< well@s:cym&eng wneith <o (ddi)m gollwng> [?] xxx +/ .	well do.3S.NONPAST PRON.3SM NEG leak.NONFIN xxx	well it won't leak [...] ...	\N	\N	1361364	1362850	1486	
706	stammers8	CAR	yeah@s:cym&eng oedd o mor agos .	yeah be.3S.IMP PRON.3SM so close	yeah, it was so close.	\N	\N	1368458	1369746	1288	
709	stammers8	CAR	ond dw i (dd)im isio xx +/ .	but be.1S.PRES PRON.1S NEG want xx	but I don't want [..]...	\N	\N	1373508	1374808	1300	
708	stammers8	CAR	+< well@s:cym&eng o [/] o_gwmpas dw i meddwl .	well of around be.1S.PRES PRON.1S think.NONFIN	well, around it, I think.	\N	\N	1370431	1372614	2183	
710	stammers8	ISL	y pen a (y)r ochrau ?	DET end and DET sides	the end and the sides?	\N	\N	1373775	1375435	1660	
711	stammers8	CAR	well@s:cym&eng yr ochrau +// .	well DET sides	well, the sides...	\N	\N	1375528	1376468	940	
712	stammers8	CAR	er@s:cym&eng ie pennau .	IM yes heads	er, yes, the ends.	\N	\N	1376468	1377722	1254	
713	stammers8	ISL	oh@s:cym&eng yeah@s:cym&eng .	\N	\N	\N	\N	1377722	1379150	1428	
714	stammers8	CAR	ac o'n [///] <ond oedden nhw> [///] # ac <oedden nhw &me> [/] oedden nhw cau wneud dim_byd .	and be.3PL.IMP but be.3PL.IMP PRON.3PL and be.3PL.IMP PRON.3PL be.3PL.IMP PRON.3PL refuse.NONFIN do.NONFIN nothing	and they were. . . they refused to do anything.	\N	\N	1379162	1383272	4110	
715	stammers8	CAR	ond ddaru nhw wneud yn y # diwedd .	but happen.PAST PRON.3PL do.NONFIN in DET end	but they did in the end.	\N	\N	1385245	1387428	2183	
738	stammers8	CAR	w i (dd)im isio .	be.1S.PRES PRON.1S NEG want	don't want to.	\N	\N	1417112	1417983	871	
716	stammers8	ISL	dw i (y)n mynd i xxx yn y cae o_flaen Tyddyn_Ucha@s:cym&eng # eleni .	be.1S.PRES PRON.1S PRT go.NONFIN to xxx in DET field in_front Tyddyn_Ucha this_year	I'm going to [...] in the field in front of Tyddyn Ucha this year.	\N	\N	1387939	1391921	3982	
717	stammers8	CAR	wyt ?	be.2S.PRES	are you?	\N	\N	1391956	1392444	488	
754	stammers8	ISL	oedd o (y)n felyn .	be.3S.IMP PRON.3SM PRT yellow	it was yellow.	\N	\N	1451909	1453128	1219	
718	stammers8	ISL	ar_ôl i (y)r defaid orffen pori .	after to DET sheep finish.NONFIN graze.NONFIN	after the sheep have finished grazing.	\N	\N	1392487	1394658	2171	
719	stammers8	CAR	+< oh@s:cym&eng .	\N	\N	\N	\N	1393985	1394298	313	
739	stammers8	ISL	mae (y)n &=laugh +. . .	be.3S.PRES PRT	it's...	\N	\N	1417983	1419406	1423	
720	stammers8	ISL	y swêj (y)ma .	DET swede here	this swede.	\N	\N	1395738	1397119	1381	
740	stammers8	CAR	&=laugh !	\N	\N	\N	\N	1418772	1420223	1451	
721	stammers8	CAR	<(y)dy (y)r &ma> [///] (y)dy (y)r swêj (we)di gorffen rŵan yndyn ?	be.3S.PRES DET be.3S.PRES DET swede PRT.PAST finish.NONFIN now be.3PL.PRES	is the swede finished now, is it?	\N	\N	1396771	1399174	2403	
722	stammers8	ISL	ew na mi baran &mi +// .	IM no PRT last.3PL.NONPAST	oh, no [...] they'll last...	\N	\N	1399124	1400772	1648	
749	stammers8	CAR	mae (y)n raid bod dim yn nice@s:cym&eng [=! laughs] !	be.3S.PRES PRT necessity be.NONFIN NEG PRT nice	it must not be nice!	\N	\N	1437273	1439003	1730	
723	stammers8	ISL	mae nhw (we)di bwyta (y)r dail ond mae nhw +. . .	be.3PL.PRES PRON.3PL PRT.PAST eat.NONFIN DET leaves but be.3PL.PRES PRON.3PL	they've eaten the leaves, but they're...	\N	\N	1400772	1402560	1788	
741	stammers8	ISL	<rhaid i> [?] llnau dannedd ## ceg y ddafad right@s:cym&eng iach dw i (y)n sure@s:cym&eng !	necessity to wash.NONFIN teeth mouth DET sheep right healthy be.1S.PRES PRON.1S PRT sure	[...] cleaned its teeth, I'm sure the sheep's mouth is quite clean!	\N	\N	1420120	1425286	5166	
724	stammers8	CAR	oh@s:cym&eng yndyn ?	IM be.3PL.PRES	oh, have they?	\N	\N	1402502	1403443	941	
742	stammers8	CAR	&=laugh # oh@s:cym&eng .	\N	\N	\N	\N	1423684	1425786	2102	
725	stammers8	CAR	mae nhw (y)n alright@s:cym&eng i fwyta ?	be.3PL.PRES PRON.3PL PRT alright to eat.NONFIN	they're alright to eat?	\N	\N	1403405	1404786	1381	
726	stammers8	ISL	mae [?] (y)na swêj mawr yna .	be.3S.PRES there swede big there	there's big swede there.	\N	\N	1404078	1405378	1300	
750	stammers8	ISL	+< oh@s:cym&eng .	\N	\N	\N	\N	1437486	1438008	522	
727	stammers8	CAR	yndyn ?	be.3PL.PRES	are they?	\N	\N	1405042	1405611	569	
728	stammers8	ISL	xxx .	\N	\N	\N	\N	1405862	1406582	720	
729	stammers8	CAR	oh@s:cym&eng .	\N	\N	\N	\N	1406605	1407371	766	
730	stammers8	ISL	xxx .	\N	\N	\N	\N	1407952	1408776	824	
743	stammers8	CAR	wnes i luchio rywbeth i (y)r ci bore (y)ma .	do.1S.PAST PRON.1S throw.NONFIN something to DET dog morning here	I threw something for the dog this morning.	\N	\N	1426811	1429156	2345	
731	stammers8	CAR	ew mae nhw nice@s:cym&eng yndy ?	IM be.3PL.PRES PRON.3PL nice be.3S.PRES	oh, they're nice, aren't they?	\N	\N	1408869	1410517	1648	
732	stammers8	ISL	swêj ?	swede	swedes?	\N	\N	1410750	1411365	615	
733	stammers8	CAR	mmm@s:cym&eng .	\N	\N	\N	\N	1411330	1412015	685	
751	stammers8	ISL	oh@s:cym&eng .	\N	\N	\N	\N	1439007	1440388	1381	
734	stammers8	ISL	yndy .	be.3S.PRES	yes.	\N	\N	1412735	1413176	441	
744	stammers8	CAR	ac oedd o (y)n cau bwyta fo (y)n_de ?	and be.3S.IMP PRON.3SM PRT refuse.NONFIN eat.NONFIN PRON.3SM TAG	and it refused to eat it, right?	\N	\N	1429133	1430828	1695	
735	stammers8	ISL	faset ti (y)n bwyta un (pe)tasai (y)r ddafad (we)di brathu o ?	be.2S.CONDIT PRON.2S PRT eat.NONFIN one if_be.3S.CONDIT DET sheep PRT.PAST bite.NONFIN PRON.3SM	would you eat one if a sheep had bitten it?	\N	\N	1413188	1415324	2136	
736	stammers8	CAR	na fysai .	NEG be.3S.CONDIT	no.	\N	\N	1415324	1416148	824	
737	stammers8	ISL	am be ?	for what	why?	\N	\N	1416334	1417019	685	
745	stammers8	CAR	oedd o just@s:cym&eng yn eistedd wrth ymyl o .	be.3S.IMP PRON.3SM just PRT sit.NONFIN by side PRON.3SM	he just sat next to it.	\N	\N	1430849	1432416	1567	
746	stammers8	ISL	yeah@s:cym&eng .	\N	\N	\N	\N	1432404	1432880	476	
752	stammers8	ISL	well@s:cym&eng # ges i rywbeth melyn diwrnod o_blaen .	well have.1S.PAST PRON.1S something yellow day before	well, I had something yellow the other day.	\N	\N	1440802	1443647	2845	
747	stammers8	CAR	ac o'n i am roi o (y)n y bin@s:cym&eng .	and be.1S.IMP PRON.1S for put.NONFIN PRON.3SM in DET bin	and I was going to put it in the bin.	\N	\N	1433043	1434424	1381	
748	stammers8	CAR	ond # ar y diwedd ddaru fwyta fo .	but on DET end happen.PAST eat.NONFIN PRON.3SM	but in the end it ate it.	\N	\N	1434436	1437315	2879	
757	stammers8	CAR	+< be oedd o ## yn y diwedd ?	what be.3S.IMP PRON.3SM in DET end	what was it in the end?	\N	\N	1457900	1460594	2694	
753	stammers8	ISL	ac o'n i (dd)im yn sure@s:cym&eng os oedd o (y)n bysgodyn [//] cig pysgodyn neu ## darn o ffrwyth # o ryw fath .	and be.1S.IMP PRON.1S NEG PRT sure if be.3S.IMP PRON.3SM PRT fish meat fish or piece of fruit of some kind	and I wasn't sure whether it was fish. . . fish-meat, or a piece of fruit of some kind.	\N	\N	1443693	1451921	8228	
755	stammers8	CAR	ddim smoked@s:eng haddock@s:cym&eng neu rywbeth fel (y)na [?] ?	NEG smoked haddock or something like there	not smoked haddock or anything like that?	\N	\N	1453918	1456286	2368	
759	stammers8	ISL	penwaig ["] !	herring	"penwaig"!	\N	\N	1462234	1463279	1045	
756	stammers8	ISL	+< ie ## hwyrach .	yes perhaps	yes, could be.	\N	\N	1455973	1458476	2503	
758	stammers8	ISL	be (y)dy haddock@s:cym&eng ["] ?	what be.3S.PRES haddock	what's "haddock"?	\N	\N	1461313	1462242	929	
761	stammers8	ISL	oedd (y)na sôn am (r)heiny .	be.3S.IMP there talk.NONFIN about those	there was talk about them.	\N	\N	1466077	1467587	1510	
760	stammers8	ISL	penwaig Nefyn@s:cym&eng .	herring Nefyn	the Nefyn herring.	\N	\N	1464162	1465508	1346	
762	stammers8	CAR	oes sure@s:cym&eng .	be.3S.PRES sure	I'm sure.	\N	\N	1468248	1469386	1138	
763	stammers8	ISL	ti byth (we)di fod i Nefyn@s:cym&eng naddo ?	PRON.2S never PRT.PAST be.NONFIN to Nefyn no	you've never been to Nefyn, have you?	\N	\N	1469881	1471507	1626	
764	stammers8	CAR	do dw i (we)di bod <yn &ne Nefyn@s:cym&eng> [?] .	yes be.1S.PRES PRON.1S PRT.PAST be.NONFIN in Nefyn	yes, I've been to Nefyn.	\N	\N	1471449	1473817	2368	
765	stammers8	ISL	+< pryd ?	when	when?	\N	\N	1473283	1473806	523	
766	stammers8	CAR	ew !	IM	oh!	\N	\N	1473856	1474436	580	
768	stammers8	CAR	na ddim [///] flwyddyn cynt neu rywbryd .	no NEG year before or some_time	no, the year before or some time.	\N	\N	1475957	1478790	2833	
787	stammers8	ISL	mae (y)n andros o un da am weldio a pethau .	be.3S.PRES PRT devil of one good for weld.NONFIN and things	he's really good at welding and stuff.	\N	\N	1514874	1517115	2241	
769	stammers8	CAR	dan [?] ni fynd yn hir yn_ôl .	be.1PL.PRES PRON.1PL go.NONFIN PRT long back	we go a long time ago.	\N	\N	1478894	1480485	1591	
770	stammers8	CAR	wnaen [?] ni fynd i (y)r bedd yn_do ?	do.1PL.PAST PRON.1PL go.NONFIN to DET grave yes	we went to the grave, didn't we?	\N	\N	1480586	1483001	2415	
771	stammers8	ISL	oh@s:cym&eng ?	\N	\N	\N	\N	1482908	1483465	557	
801	stammers8	ISL	well@s:cym&eng oedd William@s:cym&eng (y)n deud hanes .	well be.3S.IMP William PRT say.NONFIN story	well William was telling the story.	\N	\N	1540574	1542432	1858	
772	stammers8	CAR	dw i gyn llun ohono rywle .	be.1S.PRES PRON.1S with picture of.3SM somewhere	I've got a picture of it somewhere.	\N	\N	1483488	1484998	1510	
773	stammers8	ISL	oh@s:cym&eng yeah@s:cym&eng .	\N	\N	\N	\N	1485067	1486251	1184	
788	stammers8	CAR	yndy ?	be.3S.PRES	is he?	\N	\N	1516863	1517502	639	
774	stammers8	ISL	a pan oedd fi a Greg@s:cym&eng yn dod o (y)na pwy oedd yn canlyn ni fewn lorry@s:cym&eng heblaw [?] Lyn_Lloyd@s:cym&eng ?	and when be.3S.IMP PRON.1S and Greg PRT come.NONFIN from there who be.3S.IMP PRT follow.NONFIN PRON.1PL in lorry except Lyn_Lloyd	and when me and Greg were leaving there, who should be following us in a lorry but Lyn Lloyd?	\N	\N	1486631	1491008	4377	
775	stammers8	CAR	pwy (y)dy hynna [?] ?	who be.3S.PRES that	who's that?	\N	\N	1491073	1492037	964	
776	stammers8	ISL	Lyn_Lloyd@s:cym&eng ?	\N	\N	\N	\N	1492490	1493291	801	
802	stammers8	ISL	oh@s:cym&eng !	\N	\N	\N	\N	1543059	1544104	1045	
777	stammers8	ISL	o'n i (y)n dreifio lorry@s:cym&eng efo ei +// .	be.1S.IMP PRON.1S PRT drive.NONFIN lorry with POSS.3S	she drives a lorry with her...	\N	\N	1493303	1494812	1509	
789	stammers8	ISL	<(dd)ar(u) o> [?] drwsio (y)r ## beth cymysgu [?] blawd [?] (y)na .	happen.PAST PRON.3SM mend.NONFIN DET thing mix.NONFIN flour there	he mended that thing for mixing flour.	\N	\N	1517560	1520799	3239	
778	stammers8	ISL	mae nhw (y)n byw ym Pentreffynnon@s:cym&eng .	be.3PL.PRES PRON.3PL PRT live in Pentreffynnon	they live in Pentreffynnon.	\N	\N	1494731	1496135	1404	
790	stammers8	ISL	fabricator .	\N	\N	\N	\N	1522563	1523724	1161	eng
779	stammers8	ISL	gwraig Larry_Lloyd@s:cym&eng .	wife Larry_Lloyd	Larry Lloyd's wife.	\N	\N	1496182	1497575	1393	
780	stammers8	CAR	oh@s:cym&eng .	\N	\N	\N	\N	1497505	1498167	662	
781	stammers8	ISL	mae (y)n ferch i # Ffion_Foster@s:cym&eng yn wreiddiol xxx y garage@s:cym&eng yeah@s:cym&eng .	be.3S.PRES PRT daughter to Ffion_Foster PRT original xxx DET garage yeah	she's the daughter of Ffion Foster originally, [...] the garage, yeah.	\N	\N	1498214	1502544	4330	
782	stammers8	CAR	+< o:h@s:cym&eng yeah@s:cym&eng .	\N	\N	\N	\N	1501894	1503206	1312	
783	stammers8	ISL	byw ym Pen_y_Bryn@s:cym&eng yn gartre .	live.NONFIN in Pen_y_Bryn in home	lives in Pen-y-Bryn, in a home.	\N	\N	1502532	1504065	1533	
791	stammers8	ISL	a # gwneud bob math o bethau felly .	and do.NONFIN every kind of things thus	and doing all kinds of stuff like that.	\N	\N	1523724	1525907	2183	
784	stammers8	CAR	+< oh@s:cym&eng mae [///] oh@s:cym&eng !	IM be.3S.PRES IM	oh, she. . . oh!	\N	\N	1503206	1504692	1486	
792	stammers8	CAR	+< oh@s:cym&eng .	\N	\N	\N	\N	1524015	1524398	383	
785	stammers8	ISL	ac Owain_Owens@s:cym&eng ## (y)dy ei thad hi .	and Owain_Owens be.3S.PRES POSS.3SF father PRON.3SF	and Owain_Owens is her father.	\N	\N	1504692	1508964	4272	
786	stammers8	ISL	a # ei brawd hi # oedd yn apprentice@s:eng of@s:eng the@s:eng year@s:eng .	and POSS.3SF brother PRON.3SF be.3S.IMP PRT apprentice of the year	and her brother was "apprentice of the year" .	\N	\N	1510369	1514502	4133	
808	stammers8	CAR	o:h@s:cym&eng ia ia .	IM yes yes	oh, yes, yes.	\N	\N	1550083	1551917	1834	
793	stammers8	CAR	well@s:cym&eng pwy oedd yn # dreifio (y)r bus@s:cym&eng oedden [?] ni fynd i Aberystwyth@s:cym&eng ?	well who be.3S.IMP PRT drive.NONFIN DET bus be.1PL.IMP PRON.1PL go.NONFIN to Aberystwyth	well, who was driving the bus when we went to Aberystwyth?	\N	\N	1526453	1530563	4110	
794	stammers8	ISL	+< &=cough .	\N	\N	\N	\N	1527418	1527928	510	
795	stammers8	ISL	oh@s:cym&eng Glenda@s:cym&eng .	\N	\N	\N	\N	1530528	1531341	813	
803	stammers8	ISL	mae gynna i gynhebrwng dydd Mawrth .	be.3S.PRES with.1S PRON.1S funeral day Tuesday	I've got a funeral on Tuesday.	\N	\N	1544766	1546519	1753	
796	stammers8	CAR	oh@s:cym&eng Glenda_Gregory@s:cym&eng oedd hynna yeah@s:cym&eng ?	IM Glenda_Gregory be.3S.IMP that yeah	oh, that was Glenda Gregory, yeah?	\N	\N	1531097	1532653	1556	
797	stammers8	ISL	+< xxx .	\N	\N	\N	\N	1531964	1533810	1846	
798	stammers8	CAR	xx wnes i weld hi (y)n ddiweddar yn y dre .	xx do.1S.PAST PRON.1S see.NONFIN PRON.3SF PRT recent in DET town	[..] I saw her recently in town.	\N	\N	1534878	1537571	2693	
799	stammers8	ISL	oh@s:cym&eng yeah@s:cym&eng ?	\N	\N	\N	\N	1537978	1538860	882	
800	stammers8	CAR	mmm@s:cym&eng .	\N	\N	\N	\N	1538488	1538999	511	
804	stammers8	CAR	oes ?	be.3S.PRES	really?	\N	\N	1546530	1547273	743	
811	stammers8	ISL	+< (dd)aru o briodi +/ .	happen.PAST PRON.3SM marry.NONFIN	he married...	\N	\N	1554742	1555636	894	
805	stammers8	ISL	oes Mike_Mitchell@s:cym&eng .	be.3S.PRES Mike_Mitchell	yes, Mike Mitchell.	\N	\N	1547215	1548848	1633	
806	stammers8	CAR	+< &pw +/ .	\N	\N	\N	\N	1548016	1548361	345	
807	stammers8	ISL	Mike_Myers_Mitchell@s:cym&eng .	\N	\N	\N	\N	1549150	1551112	1962	
809	stammers8	ISL	o xxx .	from xxx	from [...].	\N	\N	1551844	1553156	1312	
812	stammers8	ISL	Jenny@s:cym&eng ?	\N	\N	\N	\N	1557970	1558632	662	
810	stammers8	CAR	sut oedd y cynhebrwng efo xxx +. . .	how be.3S.IMP DET funeral with	how was the funeral with ...	\N	\N	1554626	1557807	3181	
813	stammers8	CAR	yeah@s:cym&eng Jenny@s:cym&eng .	\N	\N	\N	\N	1558527	1559491	964	
814	stammers8	ISL	oh@s:cym&eng iawn diolch .	IM right thanks	oh, fine, thanks.	\N	\N	1559688	1560547	859	
815	stammers8	CAR	oedd ?	be.3S.IMP	was it?	\N	\N	1560501	1561081	580	
816	stammers8	ISL	oedd .	be.3S.IMP	yes.	\N	\N	1561198	1561546	348	
817	stammers8	CAR	oedd (y)na lot@s:cym&eng yna ?	be.3S.IMP there lot there	were there many there?	\N	\N	1561569	1562405	836	
818	stammers8	ISL	oedd .	be.3S.IMP	yes.	\N	\N	1562587	1563237	650	
819	stammers8	CAR	oedd .	be.3S.IMP	yes.	\N	\N	1563272	1563806	534	
820	stammers8	ISL	Luke@s:cym&eng a Martin@s:cym&eng a lot@s:cym&eng o bobl .	Luke and Martin and lot of people	Luke and Martin, and lots of people.	\N	\N	1564805	1567626	2821	
859	stammers8	ISL	ie .	yes	yes.	\N	\N	1636156	1636876	720	
821	stammers8	CAR	oedd e [?] (we)di cael braw yn_do ?	be.3S.IMP PRON.3SM PRT.PAST have.NONFIN fright yes	he'd had a fright, hadn't he?	\N	\N	1567731	1569078	1347	
841	stammers8	ISL	a mi ddoth # clause@s:eng pan ddaru werthu (y)r tŷ yn_de ?	and PRT come.3S.PAST clause when happen.PAST sell.NONFIN DET house TAG	and a clause came up when they were selling the house, right?	\N	\N	1600189	1603648	3459	
822	stammers8	CAR	oedd ddim yn disgwyl iddi farw nac oedd ?	be.3S.IMP NEG PRT wait.NONFIN to.3SF die.NONFIN NEG be.3S.IMP	he wasn't expecting her to die, was he?	\N	\N	1569113	1571191	2078	
842	stammers8	CAR	yeah@s:cym&eng .	\N	\N	\N	\N	1603683	1604136	453	
823	stammers8	ISL	na:c oedd .	NEG be.3S.IMP	no.	\N	\N	1571086	1572050	964	
824	stammers8	CAR	oedd neb .	be.3S.IMP nobody	no one was.	\N	\N	1571725	1572781	1056	
853	stammers8	ISL	ti (y)n gwybod bod Paul_Pritchard@s:cym&eng adre o (y)r ysbyty wyt ?	PRON.2S PRT know.NONFIN be.NONFIN Paul_Pritchard home from DET hospital be.2S.PRES	you know Paul_Pritchard's home from hospital, do you?	\N	\N	1629446	1631814	2368	
825	stammers8	ISL	nac oedd wir .	NEG be.3S.IMP true	absolutely not.	\N	\N	1572886	1574279	1393	
843	stammers8	ISL	oedd raid rywun oedd (y)n prynu (y)r tŷ # brynu tatws gynno fi .	be.3S.IMP necessity someone be.3S.IMP PRT buy.NONFIN DET house buy.NONFIN potatoes with.1S PRON.1S	anyone who bought the house had to buy potatoes off me.	\N	\N	1605518	1609117	3599	
826	stammers8	ISL	nac oedd .	NEG be.3S.IMP	no.	\N	\N	1574279	1576225	1946	
844	stammers8	ISL	&=laugh !	\N	\N	\N	\N	1610162	1611183	1021	
827	stammers8	ISL	oedd hi nice@s:cym&eng gweld Kathy@s:cym&eng a Neil@s:cym&eng .	be.3S.IMP PRON.3SF nice see.NONFIN Kathy and Neil	it was nice to see Kathy and Neil.	\N	\N	1576295	1579109	2814	
828	stammers8	ISL	o'n i (dd)im (we)di weld nhw ers_talwm .	be.1S.IMP PRON.1S NEG PRT.PAST see.NONFIN PRON.3PL in_a_while	I hadn't seen them for a long while.	\N	\N	1579109	1580212	1103	
829	stammers8	ISL	mae nhw (y)n byw yn Glyn_Ceiriog@s:cym&eng .	be.3PL.PRES PRON.3PL PRT live.NONFIN in Glyn_Ceiriog	they live in Glyn Ceiriog.	\N	\N	1580177	1581617	1440	
845	stammers8	CAR	&=laugh <ddaru o ddim> [=! laughs] &=laugh !	happen.PAST PRON.3SM NEG	he did not!	\N	\N	1610568	1616083	5515	
830	stammers8	CAR	ew yndyn ?	IM be.3PL.PRES	oh, do they?	\N	\N	1581524	1582487	963	
831	stammers8	ISL	ac oedd eu mherch nhw # yno .	and be.3S.IMP POSS.3PL daughter PRON.3PL there	and their daughter was there.	\N	\N	1583149	1585587	2438	
832	stammers8	ISL	a mae hi (y)n briod .	and be.3S.PRES PRON.3SF PRT married	and she's married.	\N	\N	1585610	1586748	1138	
846	stammers8	ISL	a mae raid i nhw # brynu tatws gynno fi .	and be.3S.PRES necessity to PRON.3PL buy.NONFIN potatoes with.1S PRON.1S	and they have to buy potatoes off me.	\N	\N	1617913	1620328	2415	
833	stammers8	ISL	wn i (ddi)m oes [=? os] gynni fabi@s:cym&eng !	know.1S.NONPAST PRON.1S NEG be.3S.PRES with.3SF baby	I don't know whether she's got a baby!	\N	\N	1586737	1588153	1416	
834	stammers8	CAR	ew !	IM	oh!	\N	\N	1588188	1589581	1393	
854	stammers8	CAR	na .	no	no.	\N	\N	1632116	1632592	476	
835	stammers8	ISL	ond mae (y)n dangos # fel mae amser (y)n mynd .	but be.3S.PRES PRT show.NONFIN like be.3S.PRES time PRT go.NONFIN	but it shows, how time flies.	\N	\N	1590866	1593362	2496	
847	stammers8	CAR	&=laugh ddaru nhw ?	happen.PAST PRON.3PL	did they?	\N	\N	1618900	1620154	1254	
836	stammers8	ISL	oedden nhw (y)n by(w) [//] arfer byw ym xxx timod .	be.3PL.IMP PRON.3PL PRT live.NONFIN use.NONFIN live.NONFIN in xxx know.2S	they used to live in [...] you know.	\N	\N	1593420	1595858	2438	
837	stammers8	CAR	oedd ?	be.3S.IMP	did they?	\N	\N	1595963	1596531	568	
838	stammers8	CAR	oh@s:cym&eng !	\N	\N	\N	\N	1596659	1597240	581	
839	stammers8	ISL	oedd .	be.3S.IMP	yes.	\N	\N	1596984	1597356	372	
848	stammers8	CAR	&=laugh ddaru nhw ?	happen.PAST PRON.3PL	did they?	\N	\N	1620676	1621919	1243	
840	stammers8	ISL	ac oedd nhw [=? o] (y)n prynu tatws gynna i .	and be.3PL.IMP PRON.3PL PRT buy.NONFIN potatoes with.1S PRON.1S	and they bought potatoes off me.	\N	\N	1597309	1599295	1986	
849	stammers8	ISL	oh@s:cym&eng dw i (y)n sure@s:cym&eng bod nhw !	IM be.1S.PRES PRON.1S PRT sure be.NONFIN PRON.3PL	oh, I'm sure they do.	\N	\N	1621176	1622940	1764	
850	stammers8	CAR	&=laugh .	\N	\N	\N	\N	1622696	1624124	1428	
855	stammers8	ISL	+< <yn y &g> [///] nôl yn y Gelli@s:cym&eng .	in DET back in DET Gelli	back at Gelli	\N	\N	1632290	1633753	1463	
851	stammers8	ISL	os na ydyn nhw mae rywun arall yn prynu tatws gynno fi .	if NEG be.3PL.PRES PRON.3PL be.3S.PRES someone other PRT buy.NONFIN potatoes with.1S PRON.1S	if they don't, then someone else buys potatoes off me.	\N	\N	1624109	1626837	2728	
852	stammers8	CAR	&=laugh .	\N	\N	\N	\N	1627054	1628610	1556	
860	stammers8	ISL	Louise@s:cym&eng (y)n dda efo fo yndy chwaer ?	Louise PRT good with PRON.3SM be.3S.PRES sister	Louise is good with him, isn't she, the sister?	\N	\N	1637352	1639558	2206	
856	stammers8	CAR	oh@s:cym&eng yndy ?	IM be.3S.PRES	oh, is he?	\N	\N	1633672	1634531	859	
857	stammers8	ISL	yndy .	be.3S.PRES	yes.	\N	\N	1634368	1634949	581	
862	stammers8	CAR	yndy ?	be.3S.PRES	has he?	\N	\N	1648823	1649601	778	
858	stammers8	CAR	ew dyna dda yn_de ?	IM there good be.3S.PRES	oh, that's good, isn't it?	\N	\N	1634867	1636110	1243	
861	stammers8	ISL	um@s:cym&eng ## Owen@s:cym&eng Plas_Ucha@s:cym&eng (we)di symud o ## Bodelwyddan@s:cym&eng i Lluesty@s:cym&eng .	IM Owen Plas_Ucha@0 PRT.PAST move.NONFIN from Bodelwyddan to Lluesty	um, Owen from Plas Ucha has moved from Bodelwyddan to Lluesty.	\N	\N	1642588	1648741	6153	
865	stammers8	ISL	a mae nhw (y)n sôn am symud Margaret@s:cym&eng ar y +// .	and be.3PL.PRES PRON.3PL PRT talk.NONFIN about move.NONFIN Margaret on DET	and they're talking about moving Margaret on the...	\N	\N	1652294	1654930	2636	
863	stammers8	ISL	yndy mae o (y)n gwella .	be.3S.PRES be.3S.PRES PRON.3SM PRT improve.NONFIN	yes, he's improving.	\N	\N	1649542	1651110	1568	
864	stammers8	CAR	oh@s:cym&eng .	\N	\N	\N	\N	1651203	1652062	859	
866	stammers8	ISL	(y)dy xxx ddeu(d) (wr)that ti ?	be.3S.PRES xxx say.NONFIN to.2S PRON.2S	has [...] told you?	\N	\N	1654930	1655998	1068	
867	stammers8	CAR	naddo .	no	no.	\N	\N	1656195	1657054	859	
868	stammers8	ISL	symud hi o Bodelwyddan@s:cym&eng i Llys_Gwenffrwd@s:cym&eng .	move.NONFIN PRON.3SF from Bodelwyddan to Llys_Gwenffrwd	moving her from Bodelwyddan to Llys Gwenffrwd.	\N	\N	1657159	1659806	2647	
869	stammers8	CAR	ew mae dal yn ysbyty !	IM be.3S.PRES still in hospital	oh, she's still in hospital!	\N	\N	1659991	1661687	1696	
870	stammers8	ISL	yndy !	be.3S.PRES	yes!	\N	\N	1661628	1662348	720	
871	stammers8	CAR	ew oedd fi (dd)im yn gwybod .	IM be.1S.IMP PRON.1S NEG PRT know.NONFIN	oh, I didn't know.	\N	\N	1662476	1663858	1382	
887	stammers8	ISL	(dd)a(ru) [?] mi ddeu(d) (wr)tho bod Richard_Brunstrom@s:cym&eng yn siarad Cymraeg .	happen.PAST PRON.1S say.NONFIN to.3SM be.NONFIN Richard_Brunstrom PRT speak.NONFIN Welsh	I told him Richard Brunstrom speaks Welsh.	\N	\N	1695646	1698792	3146	
872	stammers8	CAR	ddim yn sylweddoli [?] bod hi dal yna .	NEG PRT realise.NONFIN be.NONFIN PRON.3SF still there	didn't realise she was still there.	\N	\N	1663950	1665738	1788	
873	stammers8	ISL	mae ei char@s:cym&eng hi dal yma .	be.3S.PRES POSS.3SF car PRON.3SF still here	her car's still here.	\N	\N	1665425	1667016	1591	
901	stammers8	ISL	ond pan o'n i (y)n mynd ar y ### bypass@s:eng Ffynnongroyw@s:cym&eng (y)na ## o'n i isio mynd dipyn cynt ## er_mwyn cyrraedd adre .	but when be.1S.IMP PRON.1S PRT go.NONFIN on DET bypass Ffynnongroyw there be.1S.IMP PRON.1S want go.NONFIN a_bit quicker for arrive.NONFIN home	but when I was going on the Ffynnongroyw bypass there, I wanted to go a bit quicker, so as to get home.	\N	\N	1732404	1742807	10403	
874	stammers8	CAR	o:h@s:cym&eng dyna +/ .	IM there	oh, that's...	\N	\N	1667108	1668304	1196	
888	stammers8	ISL	mae (we)di dysgu (y)n rugl ## chwarae teg iddo fo .	be.3S.PRES PRT.PAST learn.NONFIN PRT fluent play.NONFIN fair to.3SM PRON.3SM	he's learnt it fluently, fair play to him.	\N	\N	1699245	1702565	3320	
875	stammers8	ISL	+< ni (y)n edrych ar ei ôl o # rag ofn i rywun ddwyn +// .	PRON.1PL PRT look.NONFIN on POSS.3SM track PRON.3SM from fear to someone steal.NONFIN	we're looking after it, so nobody steals...	\N	\N	1667828	1670243	2415	
876	stammers8	ISL	ddaru rywun ddwyn o .	happen.PAST someone steal.NONFIN PRON.3SM	somebody stole it.	\N	\N	1670220	1671323	1103	
896	stammers8	ISL	ac wedyn # fedri di altro (y)r drych tu fewn i (y)r car@s:cym&eng fedri # i dywyllu o ?	and then can.2S.NONPAST PRON.2S alter.NONFIN DET mirror side in to DET car can.2S.NONPAST to darken.NONPAST PRON.3SM	and so, you can alter the mirror inside the car, can't you, to darken it?	\N	\N	1721141	1725507	4366	
877	stammers8	CAR	do do .	yes yes	yes, yes.	\N	\N	1670905	1672008	1103	
889	stammers8	ISL	un da (y)dy o .	one good be.3S.PRES PRON.3SM	he's good, he is.	\N	\N	1702588	1703912	1324	
878	stammers8	CAR	ddaru gael o nôl .	happen.PAST get.NONFIN PRON.3SM back	she got it back.	\N	\N	1671996	1673146	1150	
879	stammers8	ISL	<oedd o dan> [///] oedd o (we)di cloi # yn y garage@s:cym&eng a drysau (y)r garage@s:cym&eng (we)di cloi .	be.3S.IMP PRON.3SM under be.3S.IMP PRON.3SM PRT.PAST lock.NONFIN in DET garage and doors DET garage PRT.PAST lock.NONFIN	it was locked, in the garage, and the garage doors were locked.	\N	\N	1673320	1678440	5120	
880	stammers8	ISL	(dd)a(ru) [?] mi ddeu(d) (wr)that ti bod fi (we)di cael # test@s:cym&eng ar yn anadl gyn blismon nos # Fawrth ?	happen.PAST PRON.1S say.NONFIN to.2S PRON.2S be.NONFIN PRON.1S PRT.PAST have.NONFIN test on POSS.1S breath with policeman night Tuesday	did I tell you that I had a breath test off a policeman on Tuesday night?	\N	\N	1680611	1685882	5271	
890	stammers8	ISL	pennaeth # heddlu Gogledd Cymru .	principal police North Wales	Head of the North Wales police.	\N	\N	1704086	1707616	3530	
881	stammers8	CAR	pam +! ?	why	why?!	\N	\N	1686752	1687484	732	
882	stammers8	ISL	<ar y bypass@s:eng yn Ffynnongroyw@s:cym&eng> [=! laughs] !	on DET bypass in Ffynnongroyw	on the bypass in Ffynnongroyw!	\N	\N	1687321	1689400	2079	
883	stammers8	CAR	dyna ch:eek@s:cym&eng !	there cheek	what a cheek!	\N	\N	1689574	1691095	1521	
891	stammers8	ISL	&=laugh un da (y)dy o .	one good be.3S.PRES PRON.3SM	he's good, he is.	\N	\N	1708568	1710356	1788	
884	stammers8	ISL	<oedd o (y)n yng nghanlyn> [?] i .	be.3S.IMP PRON.3SM PRT POSS.1S follow.NONFIN PRON.1S	he was following me.	\N	\N	1691118	1692256	1138	
885	stammers8	ISL	Smith@s:cym&eng oedd ei enw fo .	Smith be.3S.IMP POSS.3SM name PRON.3SM	Smith was his name.	\N	\N	1692244	1693614	1370	
897	stammers8	CAR	ia .	yes	yes.	\N	\N	1725518	1726075	557	
886	stammers8	ISL	oedd o ddim yn siarad Cymraeg .	be.3S.IMP PRON.3SM NEG PRT speak.NONFIN Welsh	he didn't speak Welsh.	\N	\N	1693649	1695506	1857	
892	stammers8	CAR	well@s:cym&eng pam oedd o (y)n mynd ar &ə dy [?] ôl di ?	well why be.3S.IMP PRON.3SM PRT go.NONFIN on POSS.2S track PRON.2S	well, why was he going after you?	\N	\N	1710367	1712596	2229	
893	stammers8	ISL	mi ddoth <allan o (y)r ffordd wrth Gronant@s:cym&eng> [//] lawr o Gronant@s:cym&eng .	PRT come.3S.PAST out from DET road by Gronant down from Gronant	he came out of the road near Gronant. . . down from Gronant.	\N	\N	1713177	1716927	3750	
898	stammers8	ISL	ond fedri di (dd)im altro (y)r ddau ar y drws .	but can.2S.NONPAST PRON.2S NEG alter.NONFIN DET two.M on DET door	but you can't alter the two on the door.	\N	\N	1726308	1728769	2461	
894	stammers8	ISL	ac oedd o (y)n y nghanlyn i .	and be.3S.IMP PRON.3SM PRT POSS.1S follow.NONFIN PRON.1S	and he was following me.	\N	\N	1716938	1718390	1452	
895	stammers8	ISL	ac oedd ei oleuadau fo (y)n dallu fi .	and be.3S.IMP POSS.3SM lights PRON.3SM PRT blind.NONFIN PRON.1S	and his lights were blinding me.	\N	\N	1718726	1721141	2415	
902	stammers8	ISL	&=laugh a wedyn rois i mraich fel hyn i just@s:cym&eng codi # a codi (y)r llall fel hyn .	and then put.1S.PAST PRON.1S arm.POSSD.1S like this to just raise.NONFIN and raise.NONFIN DET other like this	and then I put my arm like this to just raise it, and raised the other one like this.	\N	\N	1743476	1750570	7094	
899	stammers8	CAR	na .	no	no.	\N	\N	1728711	1729245	534	
900	stammers8	ISL	a wedyn ## o'n i (y)n iawn mynd ara deg .	and then be.1S.IMP PRON.1S PRT right go.NONFIN slow fair	and so, I was alright going slowly.	\N	\N	1729338	1732415	3077	
903	stammers8	ISL	a raid bod fi (we)di twtsio (y)r olwyn mymryn a just@s:cym&eng twtsiad y white@s:eng line@s:eng fel hyn efo (y)r car@s:cym&eng de [?] .	and necessity be.NONFIN PRON.1S PRT.PAST touch.NONFIN DET wheel bit and just touch.NONFIN DET white line like this with DET car TAG	and I must have touched the wheel a tiny bit, and touched the white line like this with the car, right.	\N	\N	1751383	1756615	5232	
904	stammers8	CAR	<ewadd annwyl> [?] !	God dear xx	dear me !	\N	\N	1756151	1757440	1289	
905	stammers8	ISL	oedd o (y)n meddwl bod fi (we)di meddwi xxx !	be.3S.IMP PRON.3SM PRT think.NONFIN be.NONFIN PRON.1S PRT.PAST inebriate.NONFIN xxx	he thought I was drunk [...]	\N	\N	1756863	1758396	1533	
906	stammers8	CAR	&=laugh !	\N	\N	\N	\N	1758454	1761473	3019	
907	stammers8	ISL	+< &=laugh !	\N	\N	\N	\N	1758651	1760927	2276	
908	stammers8	ISL	a # mi ddoth allan o (y)r car@s:cym&eng a [//] # â (y)r holl oleuadau glas (y)ma (y)n ## flash_io@s:eng+cym fel (y)r Andros xxx .	and PRT come.3S.PAST out from DET car and with DET whole lights blue here PRT flash.NONFIN like DET Devil xxx	and he came out of the car, and. . . with all these blue lights flashing like hell [...].	\N	\N	1761515	1770060	8545	
944	stammers8	ISL	a (r)heiny (y)n tywynnu (y)n y golau (y)n tywyllwch .	and those PRT glow.NONFIN in DET light in darkness	and those glow in the light in the darkness.	\N	\N	1824106	1827020	2914	
909	stammers8	CAR	+< o:h@s:cym&eng # be oedd haru o +! ?	IM what be.3S.IMP matter PRON.3SM	oh, what was his problem!?	\N	\N	1766728	1769178	2450	
929	stammers8	CAR	hwyrach bod o (he)blaw (y)n chwarae !	perhaps be.NONFIN PRON.3SM besides PRT play.NONFIN	perhaps he was ?only playing!	\N	\N	1799163	1800905	1742	
910	stammers8	ISL	ac o'n nhw (y)n dallu fi .	and be.3PL.IMP PRON.3PL PRT blind.NONFIN PRON.1S	and they were blinding me.	\N	\N	1771291	1772475	1184	
930	stammers8	ISL	&=laugh yeah@s:cym&eng [=! laughs] .	\N	\N	\N	\N	1801032	1803122	2090	
911	stammers8	ISL	a be (pe)taswn i (y)n epileptic@s:cym&eng ?	and what if_be.1S.CONDIT PRON.1S PRT epileptic	and what if I was epileptic?	\N	\N	1772475	1774065	1590	
912	stammers8	CAR	well@s:cym&eng ie .	well yes	well, yes.	\N	\N	1774019	1774936	917	
939	stammers8	ISL	oedd o &ka +/ .	be.3S.IMP PRON.3SM	it was...	\N	\N	1818161	1819531	1370	
913	stammers8	ISL	(ba)sai (we)di effeithio fawr arna fi .	be.3S.CONDIT PRT.PAST affect.NONFIN big on.1S PRON.1S	it would have affected me greatly.	\N	\N	1774971	1776608	1637	
931	stammers8	ISL	Smith@s:cym&eng oedd ei enw o .	Smith be.3S.IMP POSS.3SM name PRON.3SM	Smith was his name.	\N	\N	1803494	1804829	1335	
914	stammers8	CAR	+< basai basai .	be.3S.CONDIT be.3S.CONDIT	yes, it would.	\N	\N	1775865	1777072	1207	
915	stammers8	ISL	xxx .	\N	\N	\N	\N	1777673	1778950	1277	
916	stammers8	ISL	oedd o (ddi)m yn gwisgo jacket@s:cym&eng # melyn .	be.3S.IMP PRON.3SM NEG PRT wear.NONFIN jacket yellow	he wasn't wearing a yellow jacket.	\N	\N	1779940	1782936	2996	
917	stammers8	CAR	oh@s:cym&eng .	\N	\N	\N	\N	1783272	1784108	836	
918	stammers8	ISL	ac o'n i (y)n methu weld ei [/] # ei rifau fo (y)n iawn chwaith .	and be.1S.IMP PRON.1S PRT fail.NONFIN see.NONFIN POSS.3S POSS.3SM numbers PRON.3SM PRT right either	and I couldn't see his numbers properly either.	\N	\N	1783516	1786964	3448	
932	stammers8	ISL	ddaru o [?] ddeud yn diwedd .	happen.PAST PRON.3SM say.NONFIN in end	he said in the end.	\N	\N	1804829	1806001	1172	
919	stammers8	CAR	+< o't ti (dd)im yn gwybod be oedd o .	be.2S.IMP PRON.2S NEG PRT know.NONFIN what be.3S.IMP PRON.3SM	you didn't know what it was.	\N	\N	1785234	1786918	1684	
920	stammers8	CAR	ia .	yes	yes.	\N	\N	1787092	1787649	557	
945	stammers8	ISL	&=sigh !	\N	\N	\N	\N	1829179	1830711	1532	
921	stammers8	ISL	hwyrach bod o (we)di dwyn car@s:cym&eng plismon !	perhaps be.NONFIN PRON.3SM PRT.PAST steal.NONFIN car policeman	he could have stolen a policeman's car!	\N	\N	1787452	1789367	1915	
933	stammers8	ISL	(dd)a(ru) [?] mi ofyn be oedd ei enw fo # am bod fi methu gweld ei rif o .	happen.PAST PRON.1S ask.NONFIN what be.3S.IMP POSS.3SM name PRON.3SM for be.NONFIN PRON.1S fail.NONFIN see.NONFIN POSS.3SM number PRON.3SM	I asked what his name was, since I couldn't see his number.	\N	\N	1806265	1810076	3811	
922	stammers8	CAR	(ba)sach chi (dd)im yn gwybod nac (y)dach [?] ?	be.2PL.CONDIT PRON.2PL NEG PRT know.NONFIN NEG be.2PL.PRES	you wouldn't know, do you?	\N	\N	1789356	1790726	1370	
934	stammers8	CAR	+< yeah@s:cym&eng .	\N	\N	\N	\N	1807693	1808180	487	
923	stammers8	ISL	&=laugh na fysai !	NEG be.3S.CONDIT	no!	\N	\N	1790420	1791999	1579	
924	stammers8	ISL	xxx +/ .	\N	\N	\N	\N	1792754	1793312	558	
925	stammers8	CAR	+< na oedd o gyn y pethau i gwneud test@s:cym&eng ?	no be.3S.IMP PRON.3SM with DET things to do.NONFIN test	no, he had the things to do a test?	\N	\N	1792762	1794914	2152	
940	stammers8	CAR	+< ia xx +// .	yes xx	yes, [..]...	\N	\N	1818533	1819381	848	
926	stammers8	ISL	oh@s:cym&eng oedd .	IM be.3S.IMP	oh yes.	\N	\N	1795158	1795866	708	
927	stammers8	CAR	hmm@s:cym&eng .	\N	\N	\N	\N	1795924	1796470	546	
935	stammers8	CAR	xxx gofyn am ei # I_D@s:eng !	xxx ask.NONFIN for POSS.3S I_D	[...] asked for his ID!	\N	\N	1809860	1812182	2322	
928	stammers8	ISL	xxx o (we)di dwyn (r)heiny hefyd &=laugh !	xxx PRON.3SM PRT.PAST steal.NONFIN those too	[...] have stolen those too!	\N	\N	1796679	1799186	2507	
936	stammers8	ISL	Smith@s:cym&eng oedd o .	Smith be.3S.IMP PRON.3SM	Smith, he was.	\N	\N	1812484	1813854	1370	
937	stammers8	CAR	oedd o &ð unmarked@s:eng car@s:eng fel mae nhw (y)n deud ?	be.3S.IMP PRON.3SM unmarked car like be.3PL.PRES PRON.3PL PRT say.NONFIN	was it an unmarked car, as they say?	\N	\N	1813854	1817031	3177	
941	stammers8	ISL	+< oedd y car@s:cym&eng +/ .	be.3S.IMP DET car	the car was...	\N	\N	1819508	1820275	767	
938	stammers8	ISL	oh@s:cym&eng nac oedd .	IM NEG be.3S.IMP	oh, no.	\N	\N	1816374	1817465	1091	
942	stammers8	CAR	(dy)dy o (dd)im yn deud mai plismon sydd tu mewn nac ydy ?	be.3S.PRES.NEG PRON.3SM NEG PRT say.NONFIN PRT policeman be.PRES.REL side in NEG be.3S.PRES	that doesn't mean that it's a policeman inside it, does it?	\N	\N	1819566	1822225	2659	
943	stammers8	ISL	melyn a coch dyn nhw .	yellow and red be.3PL.PRES PRON.3PL	yellow and red, they are.	\N	\N	1821227	1823351	2124	
\.


--
-- Name: stammers8_cgutterances_pk; Type: CONSTRAINT; Schema: public; Owner: kevin; Tablespace: 
--

ALTER TABLE ONLY stammers8_cgutterances
    ADD CONSTRAINT stammers8_cgutterances_pk PRIMARY KEY (utterance_id);


--
-- PostgreSQL database dump complete
--

