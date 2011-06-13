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
-- Name: stammers9_cgutterances; Type: TABLE; Schema: public; Owner: kevin; Tablespace: 
--

CREATE TABLE stammers9_cgutterances (
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


ALTER TABLE public.stammers9_cgutterances OWNER TO kevin;

--
-- Name: stammers9_cgutterances_utterance_id_seq; Type: SEQUENCE; Schema: public; Owner: kevin
--

CREATE SEQUENCE stammers9_cgutterances_utterance_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.stammers9_cgutterances_utterance_id_seq OWNER TO kevin;

--
-- Name: stammers9_cgutterances_utterance_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kevin
--

ALTER SEQUENCE stammers9_cgutterances_utterance_id_seq OWNED BY stammers9_cgutterances.utterance_id;


--
-- Name: stammers9_cgutterances_utterance_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kevin
--

SELECT pg_catalog.setval('stammers9_cgutterances_utterance_id_seq', 713, true);


--
-- Name: utterance_id; Type: DEFAULT; Schema: public; Owner: kevin
--

ALTER TABLE stammers9_cgutterances ALTER COLUMN utterance_id SET DEFAULT nextval('stammers9_cgutterances_utterance_id_seq'::regclass);


--
-- Data for Name: stammers9_cgutterances; Type: TABLE DATA; Schema: public; Owner: kevin
--

COPY stammers9_cgutterances (utterance_id, filename, speaker, surface, gls, eng, com, comment, durbegin, durend, duration, precode) FROM stdin;
1	stammers9	ENF	um@s:cym&eng # xxx .	\N	\N	\N	\N	128	2508	2380	
27	stammers9	ENF	well@s:cym&eng # dw i (we)di deffro (y)n fuan bore (y)ma +/ .	well be.1S.PRES PRON.1S PRT.PAST wake.NONFIN PRT soon morning here	well, I got up early this morning	\N	\N	62903	66734	3831	
2	stammers9	ENF	<dan ni &d> [/] er@s:cym&eng dan ni (we)di gwneud ein siopa (y)n_do .	be.1PL.PRES PRON.1PL IM be.1PL.PRES PRON.1PL PRT.PAST do.NONFIN POSS.1PL shop.NONFIN yes	we've...we've done our shopping, haven't we	\N	\N	2508	4957	2449	
17	stammers9	ENF	achos um@s:cym&eng +. . .	because IM	because um...	\N	\N	43201	44373	1172	
3	stammers9	RNW	do # (we)di wneud o ddoe .	yes PRT.PAST do.NONFIN PRON.3SM yesterday	yes, did it yesterday	\N	\N	4957	7442	2485	
4	stammers9	ENF	wedyn # fydd ddim isio rhuthro i_lawr <i (y)r um@s:cym&eng> [/] # i (y)r dre gan <mae (y)n> [/] mae (y)n brysur wan <rhwng y &d> [//] yn y dre yn_dydy .	then be.3S.FUT NEG want rush.NONFIN down to DET IM to DET town because be.3S.PRES PRT now between DET in DET town be.3S.PRES.NEG	so, there'll be no need to rush down to the, um...to the town because it's...it's busy now between the...in town, isn't it	\N	\N	6687	14710	8023	
5	stammers9	RNW	+< yndy # yndy .	be.3S.PRES be.3S.PRES	yes, yes	\N	\N	13642	15395	1753	
18	stammers9	RNW	&m # mae (y)r daffodils@s:cym&eng allan rŵan .	be.3S.PRES DET daffodils out now	the daffodils are out now	\N	\N	44373	47787	3414	
6	stammers9	ENF	tibod mae nhw (y)n codi (y)r ffordd a (fe)lly (y)n_dydyn .	know.2S be.3PL.PRES PRON.3PL PRT raise.NONFIN DET road and thus be.3PL.PRES.NEG	you know, they're pulling up the road and so on, aren't they	\N	\N	14988	17438	2450	
7	stammers9	RNW	yndyn .	be.3PL.PRES	yes	\N	\N	17438	18181	743	
8	stammers9	ENF	deud y gwir .	say.NONFIN DET truth	to tell the truth	\N	\N	18181	19017	836	
19	stammers9	ENF	yndyn mae daffodils@s:cym&eng yn digon del .	be.3PL.PRES be.3S.PRES daffodils PRT enough pretty	yes, daffodils are pretty enough	\N	\N	47752	49876	2124	
9	stammers9	ENF	felly um@s:cym&eng # mae o (y)n er@s:cym&eng # dipyn o nuisance@s:cym&eng efo (y)r traffic@s:cym&eng yn_dydy +/ .	thus IM be.3S.PRES PRON.3SM PRT IM a_little of nuisance with DET traffic be.3S.PRES.NEG	so, um, it's, er, a bit of a nuisance with the traffic, isn't it	\N	\N	19017	24903	5886	
20	stammers9	RNW	+< xx +// .	\N	\N	\N	\N	48669	49215	546	
10	stammers9	RNW	yndy .	be.3S.PRES	yes	\N	\N	24903	25530	627	
11	stammers9	ENF	+, deud y gwir .	say.NONFIN DET truth	to tell the truth	\N	\N	25530	26308	778	
28	stammers9	RNW	ia .	yes	yes	\N	\N	66734	68650	1916	
12	stammers9	RNW	yndy .	be.3S.PRES	yes	\N	\N	26308	26819	511	
21	stammers9	RNW	yndyn .	be.3PL.PRES	yes	\N	\N	49876	50399	523	
13	stammers9	ENF	yndy # well@s:cym&eng mae (y)n gaddo # xx glaw dydd Sul eto (y)n_dydy .	be.3S.PRES well be.3S.PRES PRT promise.NONFIN xx rain day Sunday again be.3S.PRES.NEG	yes, well, it's supposed to [...] rain again on Sunday, isn't it	\N	\N	26749	32415	5666	
14	stammers9	RNW	yndy # yndy .	be.3S.PRES be.3S.PRES	yes, yes	\N	\N	32415	34157	1742	
15	stammers9	ENF	dw i (y)n gobeithio # erbyn ganol wsnos nesa # y bydd hi (y)n # ddigon sych i # dorri (y)r lawnt yn_de .	be.1S.PRES PRON.1S PRT hope.NONFIN by middle week next PRT be.3S.FUT PRON.3SF PRT enough dry to cut.NONFIN DET lawn TAG	I hope by the middle of next week it'll be dry enough to mow the lawn	\N	\N	33019	42469	9450	
22	stammers9	ENF	ond mae [/] # mae (y)r lawnt yn barod i w thorri (y)n_dydy ti (y)n gwybod .	but be.3S.PRES be.3S.PRES DET lawn PRT ready to POSS.3SF cut.NONFIN be.3S.PRES.NEG PRON.2S PRT know.NONFIN	but the...the lawn is ready to be mown, isn't it, you know	\N	\N	49876	53557	3681	
16	stammers9	RNW	ia # ia .	yes yes	yes, yes	\N	\N	42469	43642	1173	
33	stammers9	ENF	yndyn dw i meddwl .	be.3PL.PRES be.1S.PRES PRON.1S think.NONFIN	yes, I think so	\N	\N	75059	76196	1137	
23	stammers9	RNW	+< yndy .	be.3S.PRES	yes	\N	\N	52361	52918	557	
29	stammers9	ENF	+, hefo (y)r # gwylanod yn +/ .	with DET seagulls PRT	with the seagulls...	\N	\N	68650	70716	2066	
24	stammers9	ENF	um@s:cym&eng # <mae (y)n er@s:cym&eng> [/] mae (y)n dew yn_dydy o +// .	IM be.3S.PRES PRT IM be.3S.PRES PRT thick be.3S.PRES.NEG of	um, it's er...it's thick, isn't it, of...	\N	\N	53557	58839	5282	
25	stammers9	RNW	+< yndy .	be.3S.PRES	yes	\N	\N	58201	58839	638	
26	stammers9	ENF	xx bydd (y)na dipyn o waith ar er@s:cym&eng # torri (y)r lawnt .	xx be.3S.FUT there a_little of work on IM cut.NONFIN DET lawn	[...] there'll be quite a lot of work, er, mowing the lawn	\N	\N	58839	62903	4064	
36	stammers9	ENF	oh@s:cym&eng # do wnes i fwynhau o # xx fwynhau o (y)n fawr # er bod (y)na feirniadaeth am y llwyfan oedd yn # troi round@s:cym&eng a round@s:cym&eng .	IM yes do.1S.PAST PRON.1S enjoy.NONFIN PRON.3SM xx enjoy.NONFIN PRON.3SM PRT big although be.NONFIN there criticism about DET stage be.3S.IMP PRT turn.NONFIN round and round	oh yes, I enjoyed it, [...] enhjoyed it immensely, although there was criticism about the stage that turned around	\N	\N	81699	92740	11041	
30	stammers9	RNW	oh@s:cym&eng ia .	IM yes	oh yes	\N	\N	70716	71726	1010	
34	stammers9	ENF	mi fyddan nhw (y)n gwneud beth bynnag .	PRT be.3PL.FUT PRON.3PL PRT do.NONFIN what ever	they will be anyway	\N	\N	76196	77787	1591	
31	stammers9	ENF	+, sglerio .	squawk.NONFIN	squawking	uncertain of the meaning of 'sglerio'. Geiriadur Prifysgol Cymru notes it as a variant of 'sglefrio' - to slide or skate, but this meaning is improbable here	uncertain of the meaning of 'sglerio'. Geiriadur Prifysgol Cymru notes it as a variant of 'sglefrio' - to slide or skate, but this meaning is improbable here	71483	72609	1126	
35	stammers9	RNW	ddaru ti fwynhau Cysgod_y_Cryman@s:cym&eng ?	happen.PAST PRON.2S enjoy.NONFIN Cysgod_y_Cryman	did you enjoy Cysgod y Cryman?	\N	\N	77787	81699	3912	
32	stammers9	RNW	yn paratoi nyth &θ ar y to .	PRT prepare.NONFIN nest on DET roof	making a nest on the roof	\N	\N	72609	75105	2496	
37	stammers9	RNW	ia &g .	yes	yes	\N	\N	92740	93391	651	
38	stammers9	ENF	ond # &=sigh fel dwedodd John_Gruffydd_Jones@s:cym&eng <yn y> [/] # yn y Goleuad@s:cym&eng # &b <oedd o (y)n &k> [//] oedd <y &x> [//] yr hen # a (y)r # modern@s:cym&eng yn cyfuno (y)n right@s:cym&eng dda .	but like say.3S.PAST John_Gruffydd_Jones in DET in DET Goleuad be.3S.IMP PRON.3SM PRT be.3S.IMP DET DET old and DET modern PRT combine.NONFIN right good	but as John Gruffydd Jones said in the...in the Goleuad, it was...the old and the modern merged quite well	\N	\N	93012	108492	15480	
75	stammers9	ENF	er # dw (ddi)m yn edrych ymlaen am darllen rhai o (y)r llyfrau sydd wedi dewis chwaith +/ .	although be.1S.PRES NEG PRT look.NONFIN ahead to read.NONFIN some of DET books be.PRES.REL PRT.PAST choose.NONFIN either	although, I'm not looking forward to reading some of the books that have been chosen either	\N	\N	192873	198237	5364	
39	stammers9	ENF	ac o'n i meddwl bod o (y)n_de .	and be.1S.IMP PRON.1S  think.NONFIN PRON.3SM TAG	and I thought it did, you know	\N	\N	108480	110094	1614	
55	stammers9	RNW	+< ah@s:cym&eng .	IM	ah	\N	\N	146689	147188	499	
40	stammers9	RNW	ia .	yes	yes	\N	\N	110094	111000	906	
41	stammers9	ENF	do mi wnes i fwynhau o .	yes PRT do.1S.PAST PRON.1S enjoy.NONFIN PRON.3SM	yes I did enjoy it	\N	\N	110605	112253	1648	
64	stammers9	ENF	achos &m # oedd o (y)n lyfr yn perthyn i [/] # i (y)r pumdegau (y)n_doedd xx .	because be.3S.IMP PRON.3SM PRT book PRT belong.NONFIN to to DET fifties be.3S.IMP.NEG xx	because it was a book that belonged to...to the fifties, wasn't it [...]	\N	\N	170396	177362	6966	
42	stammers9	ENF	um@s:cym&eng # er efallai # um@s:cym&eng # &m nad o(edd) (y)na (y)r un actor@s:cym&eng +// .	IM although perhaps IM NEG be.3S.IMP there DET one actor	um, although perhaps none of the actors...	\N	\N	112253	121530	9277	
56	stammers9	RNW	yn nes ymlaen dan ni mynd i ddarllen # um@s:cym&eng # Yn_ôl_i_Leifior@s:cym&eng gan Islwyn_Ffowc_Elis@s:cym&eng eto .	PRT closer ahead be.1PL.PRES PRON.1PL go.NONFIN to read.NONFIN IM Yn_ôl_i_Leifior by Islwyn_Ffowc_Elis again	further on we're going to read Yn ôl i Leifior by Islwyn Ffowc Elis again	\N	\N	148384	156244	7860	
43	stammers9	ENF	oedden nhw (y)n actorion da .	be.3PL.IMP PRON.3PL PRT actors good	they were good actors	\N	\N	121530	122900	1370	
44	stammers9	ENF	ond i mi do(edd) (y)na neb yn # sefyll allan te +/ .	but for PRON.1S be.3S.IMP.NEG there nobody PRT stand.NONFIN out TAG	but for me, nobody stood out, you know	\N	\N	122900	125895	2995	
45	stammers9	RNW	ia .	yes	yes	\N	\N	125895	126487	592	
57	stammers9	ENF	+< yndan yndan .	be.3PL.PRES be.3PL.PRES	yes, yes	\N	\N	154966	156731	1765	
46	stammers9	ENF	+, <fel (yn)a (y)r> [?] [//] yn arbennig .	like there DET PRT special	like that...in particular	\N	\N	126383	127880	1497	
47	stammers9	RNW	+< ia .	yes	yes	\N	\N	127265	127741	476	
70	stammers9	ENF	do(edd) (yn)a (dd)im_byd debyg (we)di [//] iddyn nhw (we)di bod y(n) nag oedd .	be.3S.IMP.NEG there nothing similar PRT.PAST to.3PL PRON.3PL PRT.PAST be.NONFIN PRT NEG be.3S.IMP	there'd been nothing like them previously, had there	\N	\N	183980	187242	3262	
48	stammers9	ENF	<ond do> [?] # mi wnes i fwynhau # Cysgod_y_Cryman@s:cym&eng a deud y gwir .	but yes PRT do.1S.PAST PRON.1S enjoy.NONFIN Cysgod_y_Cryman with say.NONFIN DET truth	but yes, I did enjoy Cysgod y Cryman actually	\N	\N	127880	132513	4633	
58	stammers9	ENF	wnes i ddim +// .	do.1S.PAST PRON.1S NEG	I didn't...	\N	\N	156731	158473	1742	
49	stammers9	RNW	oedd o wedi bod yn help@s:cym&eng bod ni wedi ddarllen o ymlaen llaw # yn y cylch darllen .	be.3S.IMP PRON.3SM PRT.PAST be.NONFIN PRT help be.NONFIN PRON.1PL PRT.PAST read.NONFIN PRON.3SM ahead hand in DET circle read.NONFIN	it was a help that we'd read it beforehand in the reading group	\N	\N	132513	137993	5480	
50	stammers9	ENF	+< xx darllen er@s:cym&eng # oedd # mi oedd o .	xx read.NONFIN IM be.3S.IMP PRT be.3S.IMP PRON.3SM	[...] reading, er, yes, it was	\N	\N	135485	138109	2624	
65	stammers9	RNW	oedd .	be.3S.IMP	yes	\N	\N	176921	177548	627	
51	stammers9	ENF	neu faswn i ddim +// .	or be.1S.CONDIT PRON.1S NEG	or I wouldn't...	\N	\N	138109	139142	1033	
59	stammers9	ENF	dw (y)n cofio fi (y)n darllen hwnnw ond dim ei fwynhau o gymaint â Cysgod_y_Cryman@s:cym&eng de .	be.1S.PRES PRT remember.NONFIN PRON.1S PRT read.NONFIN that but NEG POSS.3SM enjoy.NONFIN PRON.3SM so_much PRT Cysgod_y_Cryman TAG	I remember me reading that but not enjoying it as much as Cysgod y Cryman, you know	\N	\N	158473	163012	4539	
52	stammers9	ENF	<doeddwn i> [//] do'n i ddim (we)di ddarllen o ers oeddwn i # yn yr ysgol a deud y gwir .	be.1S.IMP.NEG PRON.1S be.1S.IMP.NEG PRON.1S NEG PRT.PAST read.NONFIN PRON.3SM since be.1S.IMP PRON.1S in DET school with say.NONFIN DET truth	I hadn't...I hadn't read it since I was at school, to tell the truth	\N	\N	139142	143705	4563	
53	stammers9	RNW	ia na finnau chwaith .	yes NEG PRON.1S either	yes, me neither	\N	\N	143705	145272	1567	
54	stammers9	ENF	um@s:cym&eng # er@s:cym&eng [?] # Cysgod_y_Cryman@s:cym&eng ac um@s:cym&eng +/ .	IM IM Cysgod_y_Cryman and IM	um, er, Cysgod y Cryman and um...	\N	\N	144192	148384	4192	
60	stammers9	RNW	na .	no	no	\N	\N	162606	163117	511	
61	stammers9	ENF	ond er@s:cym&eng # oh@s:cym&eng dw meddwl bydda i (y)n falch o (e)i ddarllen o hefyd yn_de .	but IM IM be.1S.PRES think.NONFIN be.1S.FUT PRON.1S PRT glad of POSS.3SM read.NONFIN PRON.3SM also TAG	but er, oh I think I'll be glad to read it too, you know	\N	\N	163117	167888	4771	
66	stammers9	ENF	a oedden nhw <yn lyfrau> [//] # yn rhywbeth newydd doedd xx .	and be.3PL.IMP PRON.3PL PRT books.NONFIN PRT something new be.3S.IMP.NEG xx	and they were books...something new, weren't they [...]	\N	\N	177548	181577	4029	
62	stammers9	RNW	ia .	yes	yes	\N	\N	167888	168678	790	
63	stammers9	ENF	a [?] # deud y gwir .	with say.NONFIN DET truth	to tell the truth	\N	\N	168411	170396	1985	
74	stammers9	ENF	felly # mi fydd er@s:cym&eng [?] hwnna +// .	thus PRT be.3S.FUT IM that	so, er, that will be...	\N	\N	188995	192873	3878	
67	stammers9	RNW	oedd adeg hynny oedd .	be.3S.IMP time that be.3S.IMP	yes, that time, yes	\N	\N	181577	184026	2449	
71	stammers9	RNW	+< oedd .	be.3S.IMP	yes	\N	\N	184340	185013	673	
68	stammers9	ENF	+< do(edd) (y)na (ddi)m +// .	be.3S.IMP.NEG there NEG	there wasn't...	\N	\N	182633	183132	499	
69	stammers9	ENF	oedd .	be.3S.IMP	yes	\N	\N	183457	183980	523	
72	stammers9	RNW	+< nag oedd .	NEG be.3S.IMP	no	\N	\N	185686	186580	894	
73	stammers9	RNW	nag oedd # nag oedd .	NEG be.3S.IMP NEG be.3S.IMP	no, no	\N	\N	186952	188995	2043	
76	stammers9	RNW	na .	no	no	\N	\N	198237	199026	789	
77	stammers9	ENF	+, a deud y gwir yn_de .	with say.NONFIN DET truth TAG	to tell the truth, you know	\N	\N	198841	200002	1161	
78	stammers9	RNW	well@s:cym&eng # mi ddylai # Euog@s:cym&eng gan Llion_Iwan@s:cym&eng fod yn dda .	well PRT should.3S.CONDIT Euog by Llion_Iwan be.NONFIN PRT good	well, Euog by Llion Iwan should be good	\N	\N	199479	206120	6641	
79	stammers9	ENF	+< ia .	yes	yes	\N	\N	205168	205923	755	
80	stammers9	ENF	dylai ti (y)n hoffi llyfrau detective@s:cym&eng dwyt .	should.3S.CONDIT PRON.2S PRT like.NONFIN books detective be.2S.PRES.NEG	yes, you like detective books, don't you	\N	\N	206120	208825	2705	
81	stammers9	RNW	yndw # yndw .	be.1S.PRES be.1S.PRES	yes, yes	\N	\N	208372	209800	1428	
82	stammers9	RNW	xx +/ .	\N	\N	\N	\N	209800	210799	999	
98	stammers9	RNW	oh@s:cym&eng ia .	IM yes	oh yes	\N	\N	247986	248752	766	
83	stammers9	ENF	dydw i ddim gymaint â hynny de .	be.1S.PRES.NEG PRON.1S NEG so_much with that TAG	I don't that much, you know	\N	\N	210346	212180	1834	
84	stammers9	RNW	wedyn dan ni mynd i ddarllen Prifio@s:cym&eng Maureen_Rhys@s:cym&eng .	and then be.1PL.PRES PRON.1PL go.NONFIN to read.NONFIN Prifio Maureen_Rhys	and then we're going to read Maureen Rhys's Prifio	\N	\N	212180	215756	3576	
107	stammers9	ENF	mi fydd Sara@s:cym&eng ein ffrind ni # isio ni fynd yna i Bryn_Trallwyn@s:cym&eng # mae (we)di deud # i weld y gegin newydd .	PRT be.3S.FUT Sara POSS.1PL friend PRON.1PL want PRON.1PL go.NONFIN there to Bryn_Trallwyn be.3S.PRES PRT.PAST say.NONFIN to see.NONFIN DET kitchen new	Sara, our friend, will want us to go there, to Bryn Trallwyn, she's said, to see the new kitchen	\N	\N	275223	286682	11459	
85	stammers9	ENF	yndyn hunangofiant hi [?] .	be.1PL.PRES autobiography PRON.3SF	yes, her autobiography	\N	\N	215756	217985	2229	
99	stammers9	ENF	ond wnes i (ddi)m o (e)i ddarllen o (y)n_de a deud y gwir ond (y)chydig o ryw bytiau yma a thraw ohono fo .	but do.1S.PAST PRON.1S NEG of POSS.3SM read.NONFIN PRON.3SM TAG with say.NONFIN DET truth but a_little of some bits here and over of.3PL PRON.3PL	but I didn't read it, you know, to tell the truth, only some bits here and there of it	\N	\N	248717	254104	5387	
86	stammers9	RNW	+< a wedyn +// .	and then	and then...	\N	\N	216720	217486	766	
87	stammers9	RNW	ia .	yes	yes	\N	\N	217835	218403	568	
88	stammers9	ENF	dw i (ddi)m yn edrych ymlaen am hwnnw chwaith gymaint â hynny .	be.1S.PRES PRON.1S NEG PRT look.NONFIN ahead for that either so_much with that	I'm not looking forward to that either, that much	\N	\N	217985	220958	2973	
100	stammers9	ENF	mae well gynna i xx um@s:cym&eng # ddarllen um@s:cym&eng # gwaith Angharad_Tomos@s:cym&eng a deud y gwir .	be.3S.PRES better with.1S PRON.1S xx IM read.NONFIN IM work Angharad_Tomos with say.NONFIN DET truth	I prefer [...] um reading Angharad Tomos's work, to tell the truth	\N	\N	254104	261186	7082	
89	stammers9	RNW	a Hi_yw_fy_Ffrind@s:cym&eng Bethan_Gwanas@s:cym&eng .	and Hi_yw_fy_Ffrind Bethan_Gwanas	and Bethan Gwanas's Hi yw fy Ffrind	\N	\N	220958	223744	2786	
90	stammers9	ENF	well@s:cym&eng ia # ia # ia .	well yes yes yes	well yes, yes, yes	\N	\N	223245	225578	2333	
91	stammers9	RNW	xx .	\N	\N	\N	\N	225578	226147	569	
111	stammers9	ENF	fydd y gwanwyn (we)di dŵad adeg hynny .	be.3S.FUT DET spring PRT.PAST come.NONFIN time that	the spring will have arrived then	\N	\N	293079	294902	1823	
92	stammers9	ENF	wyt ti (we)di darllen um@s:cym&eng yr hyn mae (we)di sgwennu (y)n yr Herald@s:cym&eng yr wythnos yma ?	be.2S.PRES PRON.2S PRT.PAST read.NONFIN IM DET this be.3S.PRES PRT.PAST write.NONFIN in DET Herald DET week here	have you read, um, what she's read in the Herald this week?	\N	\N	225892	230478	4586	
101	stammers9	RNW	+< ia .	yes	yes	\N	\N	260664	261105	441	
93	stammers9	RNW	um@s:cym&eng na dw i wedi (e)i ddarllen o .	IM no be.1S.PRES PRON.1S PRT.PAST POSS.3SM read.NONFIN PRON.3SM	um no, I've read it [I think she means 'I haven't read it']	\N	\N	230478	233357	2879	
94	stammers9	ENF	ia .	yes	yes	\N	\N	233032	233578	546	
108	stammers9	RNW	oh@s:cym&eng bydd fydd hynny (y)n ddiddorol # achos mae (y)n byw mewn lle mor braf wrth ben afon Gonwy@s:cym&eng .	IM be.3S.FUT be.3S.FUT that PRT interesting because be.3S.PRES PRT live.NONFIN in place so fine by head river Conwy	oh yes, that will be interesting because she lives in such a nice place above the river Conwy	\N	\N	286682	292347	5665	
95	stammers9	ENF	na mae [//] er@s:cym&eng hanes hi wedi cael ci bach # ci bach um@s:cym&eng # ci defaid cymreig # um@s:cym&eng sydd ddim yn +// .	no be.3S.PRES IM history PRON.3SF PRT.PAST get.NONFIN dog small dog small IM dog sheep welsh IM be.PRES.REL NEG PRT	no er, her story having had a puppy, a puppy um...a welsh sheepdog, um, that isn't...	\N	\N	233578	241856	8278	
102	stammers9	ENF	um@s:cym&eng mae mwy at y nant i de +/ .	IM be.3S.PRES more to POSS.1S tooth PRON.1S TAG	um, it's more to my taste, you know...	\N	\N	261186	264785	3599	
96	stammers9	ENF	nid ci <du a &g> [/] du a gwyn ydy o # yr un gwir gymreig .	NEG dog black and black and white be.3S.PRES PRON.3SM DET one true welsh	it's not a black and...black and white one, the real welsh one	\N	\N	241856	245791	3935	
97	stammers9	ENF	y breed@s:cym&eng cymreig brown@s:cym&eng a gwyn yn_de .	DET breed welsh brown and white TAG	the brown and white breed isn't it	\N	\N	245791	248241	2450	
103	stammers9	RNW	ia .	yes	yes	\N	\N	264785	265377	592	
104	stammers9	ENF	+, a # deud y gwir .	with say.NONFIN DET truth	to tell the truth	\N	\N	265377	267351	1974	
109	stammers9	ENF	+< yndy .	be.3S.PRES	yes	\N	\N	291268	292069	801	
105	stammers9	ENF	(fe)lly um@s:cym&eng # mi fydda i yn +// .	thus IM PRT be.1S.FUT PRON.1S PRT	so, um, I'll, um...	\N	\N	267351	271240	3889	
106	stammers9	ENF	yndy well@s:cym&eng gynna i # hwnnw o gryn dipyn .	be.3S.PRES better with.1S PRON.1S that of considerable a_little	yes, I prefer that a lot	\N	\N	271240	275223	3983	
114	stammers9	RNW	+< ia .	yes	yes	\N	\N	305664	306221	557	
110	stammers9	ENF	yndy .	be.3S.PRES	yes	\N	\N	292347	293079	732	
112	stammers9	RNW	bydd # bydd .	be.3S.FUT be.3S.FUT	yes, yes	\N	\N	294576	295749	1173	
113	stammers9	ENF	ac um@s:cym&eng # mi gawn ni um@s:cym&eng # weld y [/] # y gegin a # edrych o_gwmpas # ac um@s:cym&eng +// .	and IM PRT get.1PL.NONPAST PRON.1PL IM see.NONFIN DET DET kitchen and look.NONFIN around and IM	and um, we can, um, see the...the kitchen and look around and um...	\N	\N	295320	306639	11319	
116	stammers9	ENF	wedyn +/ .	then	then...	\N	\N	309913	311910	1997	
115	stammers9	ENF	gan bod hi wedi orffen o wythnos yma (y)n_de .	for be.NONFIN PRON.3SF PRT.PAST finish.NONFIN PRON.3SM week here TAG	because she's finished it this week, isn't it	\N	\N	306639	309913	3274	
117	stammers9	RNW	gobeithio mynd i_lawr i Gernyw i weld y niece@s:eng .	hope.NONFIN go.NONFIN down to Cornwall to see.NONFIN DET niece	hope to go down to Cornwall to see the niece	\N	\N	311446	314859	3413	
118	stammers9	ENF	well@s:cym&eng ia pa bryd xx wyt ti meddwl am fynd Rhianwen@s:cym&eng ?	well yes what time xx be.2S.PRES PRON.2S think.NONFIN for go.NONFIN Rhianwen	well yes, when [...] are you thinking of going, Rhianwen?	\N	\N	314859	318063	3204	
119	stammers9	RNW	+< xxx .	\N	\N	\N	\N	315904	317077	1173	
120	stammers9	RNW	tua mis Gorffennaf .	approximately month July	about July	\N	\N	318063	319654	1591	
447	stammers9	RNW	+< giât +// .	gate	gate...	\N	\N	968057	968858	801	
448	stammers9	RNW	oes .	be.3S.PRES	yes	\N	\N	968997	969624	627	
121	stammers9	ENF	oh@s:cym&eng ia mae (y)n braf adeg hynny (y)n_dydy .	IM yes be.3S.PRES PRT fine time that be.3S.PRES.NEG	oh yes, it's nice at that time, isn't it	\N	\N	319654	322057	2403	
154	stammers9	RNW	wedi treulio amser yn Awstralia ac yn Seland_Newydd # yn feddyg .	PRT.PAST spend.NONFIN time in Australia and in New_Zealand PRT doctor	spent time in Australia and in New Sealand as a doctor	\N	\N	365444	369925	4481	
122	stammers9	RNW	+< ia .	yes	yes	\N	\N	320397	320850	453	
143	stammers9	ENF	ia # mae sure@s:cym&eng .	yes be.3S.PRES sure	yes, probably	\N	\N	347936	349399	1463	
123	stammers9	RNW	+< yndy .	be.3S.PRES	yes	\N	\N	321221	321848	627	
124	stammers9	RNW	a wedyn +/ .	and then	and then...	\N	\N	322057	322951	894	
125	stammers9	ENF	yndy .	be.3S.PRES	yes	\N	\N	322440	323067	627	
144	stammers9	RNW	mae well na mynd xx hefo awyren o Manceinion yn_dydy .	be.3S.PRES better PRT go.NONFIN xx with aeorplane from Manchester be.3S.PRES.NEG	it's better than going [...] by aeroplane from Manchester, isn't it	\N	\N	348911	352266	3355	
126	stammers9	RNW	ie .	yes	yes	\N	\N	323067	323590	523	
127	stammers9	ENF	yndy <mae yn> [?] braf i_lawr yn +/ .	be.3S.PRES be.3S.PRES PRT fine down in	yes, it is nice down in...	\N	\N	323590	326353	2763	
128	stammers9	RNW	ia .	yes	yes	\N	\N	326353	327119	766	
145	stammers9	ENF	well@s:cym&eng # ydy mae well i ni beth bynnag dw meddwl # yn siwtio ni .	well be.3S.PRES be.3S.PRES better for PRON.1PL what ever be.1S.PRES PRT suit.NONFIN PRON.1PL	well yes, it's better for us anyway, I think, suits us	\N	\N	352046	356156	4110	
129	stammers9	ENF	yn Penzance@s:cym&eng wyt [=? o't] ti feddwl am aros ia ?	in Penzance be.2S.PRES PRON.2S think.NONFIN about stay.NONFIN yes	it's Penzance you're thinking of staying, is it?	\N	\N	327119	329592	2473	
130	stammers9	RNW	ia dyna fo ddim yn bell o_wrthi .	yes there PRON.3SM NEG PRT far from.3SF	yes, that's it, not far from her	\N	\N	329592	331972	2380	
131	stammers9	ENF	+< xx +// .	\N	\N	\N	\N	330370	331067	697	
155	stammers9	ENF	+< well@s:cym&eng yndy .	well be.3S.PRES	well yes	\N	\N	367185	368033	848	
132	stammers9	ENF	ia oh@s:cym&eng +/ .	yes IM	yes oh...	\N	\N	331972	333005	1033	
146	stammers9	RNW	+< yndy .	be.3S.PRES	yes	\N	\N	354612	355227	615	
133	stammers9	RNW	<gan bod hi> [/] # gan bod hi feddyg i_lawr yn # Penzance@s:cym&eng .	for be.NONFIN PRON.3SF for be.NONFIN PRON.3SM doctor down in Penzance	brecause she's...because she's a doctor down in Penzance	\N	\N	332286	336547	4261	
134	stammers9	ENF	ia # oh@s:cym&eng +/ .	yes IM	yes, oh...	\N	\N	336036	337255	1219	
135	stammers9	RNW	mae dipyn yn bell o_wrthan ni .	be.3S.PRES a_little PRT far from.1PL PRON.1PL	she's a bit far from us	\N	\N	336547	338230	1683	
147	stammers9	RNW	yndy .	be.3S.PRES	yes	\N	\N	356156	356980	824	
136	stammers9	ENF	yndy .	be.3S.PRES	yes	\N	\N	338230	338810	580	
137	stammers9	ENF	oh@s:cym&eng fydd hi (y)n braf adeg hynny .	IM be.3S.FUT PRON.3SF PRT fine time that	oh, it'll be nice at that time	\N	\N	338810	340285	1475	
161	stammers9	RNW	+< mae o wir .	be.3S.PRES PRON.3SM true	it does, indeed	\N	\N	375103	375986	883	
138	stammers9	RNW	mi fydd # bydd .	PRT be.3S.FUT be.3S.FUT	it will be, yes	\N	\N	340285	341876	1591	
148	stammers9	RNW	yndy mae hi (we)di dod yn_ôl i (y)r wlad yma rŵan # ers +/ .	be.3S.PRES be.3S.PRES PRON.3SF PRT.PAST come.NONFIN back to DET country here now since	yes, she's come back to this country now since...	\N	\N	356980	361775	4795	
139	stammers9	ENF	pa ffordd (y)dy gorau i ni fynd dŵad ?	what way be.3S.PRES best for PRON.1PL go.NONFIN say.2S.IMPER	which way is the best for us to go, say?	\N	\N	341876	344163	2287	
140	stammers9	RNW	dw i (ddi)m yn sure@s:cym&eng iawn .	be.1S.PRES PRON.1S NEG PRT sure very	I'm not very sure	\N	\N	344163	346078	1915	
156	stammers9	ENF	+< ia .	yes	yes	\N	\N	368695	369252	557	
141	stammers9	ENF	efo train@s:cym&eng .	with train	with the train	\N	\N	346078	347321	1243	
149	stammers9	ENF	faint ?	how_much	how much?	\N	\N	361775	362530	755	
142	stammers9	RNW	i_lawr ar y train@s:cym&eng ia .	down on DET train yes	down on the train, yes	\N	\N	346682	348307	1625	
150	stammers9	ENF	bron i ddwy flynedd tydy .	almost to two.F year be.3S.PRES.NEG	almost two years, isn't it	\N	\N	362530	364410	1880	
151	stammers9	RNW	+< xx +// .	\N	\N	\N	\N	363238	363714	476	
152	stammers9	RNW	yndy .	be.3S.PRES	yes	\N	\N	364410	365200	790	
157	stammers9	ENF	ia mae (y)n amser yn mynd yn gyflym yn_dydy a deud y gwir .	yes  be.3S.PRES PRT time PRT go.NONFIN PRT fast be.3S.PRES.NEG with say.NONFIN DET truth	yes, time goes quickly, doesn't it, to tell the truth	\N	\N	369925	373408	3483	
153	stammers9	ENF	yndy .	be.3S.PRES	yes	\N	\N	365003	365444	441	
165	stammers9	ENF	mae mynd i sychu rŵan dw meddwl yn_tydy .	be.3S.PRES go.NONFIN to dry.NONFIN now be.1S.PRES think.NONFIN be.3S.PRES.NEG	it's going to dry now, I think, isn't it	\N	\N	387050	389384	2334	
162	stammers9	ENF	um@s:cym&eng +. . .	IM	um...	\N	\N	376311	379805	3494	
158	stammers9	RNW	+< yndy .	be.3S.PRES	yes	\N	\N	372352	372932	580	
159	stammers9	RNW	yndy .	be.3S.PRES	yes	\N	\N	373408	374035	627	
160	stammers9	ENF	um@s:cym&eng # gyflymach rŵan .	IM faster now	um, more quickly now	\N	\N	374035	376311	2276	
163	stammers9	RNW	fydd hi (y)n amser i ni ddechrau # garddio [=! laughs] yn_bydd .	be.3S.FUT PRON.3SF PRT time for PRON.1PL start.NONFIN garden.NONFIN be.3S.FUT.NEG	it'll be time for us to start gardening, won't it	\N	\N	379805	385459	5654	
167	stammers9	ENF	fydd y glaw yn [/] # yn cilio a mwy o haul a # mwy o gynhesrwydd .	be.3S.FUT DET rain PRT PRT recede.NONFIN and more of sun and more of warmth	the rain will recede and more sun and more warmth	\N	\N	389384	394643	5259	
164	stammers9	ENF	oh@s:cym&eng bydd wir .	IM be.3S.FUT true	oh yes, really	\N	\N	385459	387050	1591	
166	stammers9	RNW	+< yndy # yndy .	be.3S.PRES be.3S.PRES	yes, yes	\N	\N	388362	389906	1544	
168	stammers9	ENF	achos um@s:cym&eng +// .	because IM	because um...	\N	\N	394643	396152	1509	
169	stammers9	ENF	oh@s:cym&eng faswn i yn hoffi os fydd hi (y)n +// .	IM be.1S.CONDIT PRON.1S PRT like.NONFIN if be.3S.FUT PRON.3SF PRT	oh I would like, if it's...	\N	\N	396152	398196	2044	
170	stammers9	ENF	er # mae yn gaddo glaw dydd Sul tydy dw meddwl .	although be.3S.PRES PRT promise.NONFIN rain day Sunday be.3S.PRES.NEG be.1S.PRES think.NONFIN	although, it is supposed to rain on Sunday, isn't it, I think	\N	\N	398196	401655	3459	
171	stammers9	RNW	yndy # yndy .	be.3S.PRES be.3S.PRES	yes, yes	\N	\N	401086	402352	1266	
350	stammers9	ENF	ah@s:cym&eng .	IM	ah	\N	\N	772010	772556	546	
351	stammers9	ENF	ond +/ .	but	but...	\N	\N	772556	773589	1033	
172	stammers9	ENF	um@s:cym&eng # &m faswn i (y)n hoffi cael mynd i_fyny am dro # um@s:cym&eng i gyfeiriad um@s:cym&eng # Llanelian@s:cym&eng .	IM be.1S.CONDIT PRON.1S PRT like.NONFIN get.NONFIN go.NONFIN up for turn IM to direction IM Llanelian	um, I'd like to go up for a work, um, in the direction of, um, Llanelian	\N	\N	402213	411419	9206	
188	stammers9	ENF	a wedyn # <mae modd gweld yr um@s:cym&eng> [/] # mae modd gweld y [/] # y blodau .	and then be.3S.PRES mean see.NONFIN DET IM be.3S.PRES mean see.NONFIN DET DET flowers	and then one can see the, um...one can see the...the flowers	\N	\N	447596	454852	7256	
173	stammers9	RNW	ia .	yes	yes	\N	\N	411419	412383	964	
174	stammers9	ENF	achos (ba)swn i (y)n hoffi # gweld oes (yn)a dipyn o flodau (y)r gwanwyn # o_gwmpas .	because be.1S.CONDIT PRON.1S PRT like.NONFIN see.NONFIN be.3S.PRES there a_little of flowers DET spring around	because I'd like to see whether there are some spring flowers around	\N	\N	412383	419070	6687	
198	stammers9	RNW	well@s:cym&eng [?] mae trip@s:cym&eng Merched_y_Wawr@s:cym&eng # yn mynd yn mis Mehefin a gobeithio mynd i weld # cartre # Kate_Roberts@s:cym&eng .	well be.3S.PRES trip Merched_y_Wawr PRT go.NONFIN in month June and hope.NONFIN go.NONFIN to see.NONFIN home Kate_Roberts	well, a Merched y Wawr trip is going in June and hoping to go to see the home of Kate Roberts	\N	\N	472999	482778	9779	
175	stammers9	RNW	ia .	yes	yes	\N	\N	419070	419686	616	
189	stammers9	ENF	mae nhw er@s:cym&eng &f &f &d (we)di dod allan yn yr haul mae sure@s:cym&eng de .	be.3PL.PRES PRON.3PL IM PRT.PAST come.NONFIN out in DET sun be.3S.PRES sure TAG	they've er, come out in the sun, probably, you know	\N	\N	454852	458161	3309	
176	stammers9	ENF	do(edd) (y)na ddim nag oedd bythefnos yn_ôl .	be.3S.IMP there NEG NEG be.3S.IMP two_weeks back	there weren't any, were there, two weeks ago	\N	\N	419686	421741	2055	
177	stammers9	RNW	nag oedd nag oedd .	NEG be.3S.IMP NEG be.3S.IMP	no, no	\N	\N	421276	422774	1498	
199	stammers9	ENF	+< xx +// .	\N	\N	\N	\N	478235	478571	336	
178	stammers9	ENF	fyswn i yn hoffi # i weld um@s:cym&eng # &a faint sy (we)di dod allan ohonyn erbyn rŵan +/ .	be.1S.CONDIT PRON.1S PRT like.NONFIN to see.NONFIN IM how_much be.PRES.REL PRT.PAST come.NONFIN out of.3PL by now	I would like, to see, um, how many of them have come out by now	\N	\N	422182	428672	6490	
190	stammers9	ENF	fydd llygad Ebrill ac amryw o rei eraill wedi dŵad de # tibod .	be.3S.FUT eye April and some of some others PRT.PAST come.NONFIN TAG know.2S	the celandine and various others will have come, you know	\N	\N	458161	463177	5016	
179	stammers9	RNW	ia # ia .	yes yes	yes, yes	\N	\N	428277	429357	1080	
180	stammers9	ENF	+, well@s:cym&eng # &=sigh i weld os ydy (y)r gwanwyn yn # llawer # cynharach nag oedd o (y)n_de .	well to see.NONFIN if be.3S.PRES DET spring PRT much earlier PRT be.3S.IMP PRON.3SM TAG	well, to see if spring is much earlier than it was, isn't it	\N	\N	428950	435487	6537	
181	stammers9	RNW	ie .	yes	yes	\N	\N	435220	435754	534	
191	stammers9	RNW	ia .	yes	yes	\N	\N	463177	463711	534	
182	stammers9	ENF	deud y gwir .	say.NONFIN DET truth	to tell the truth	\N	\N	435754	437669	1915	
192	stammers9	ENF	&=gasp .	\N	\N	\N	\N	463711	464175	464	
183	stammers9	RNW	wyt ti isio mynd i_fyny cyn_belled â Cefn_Ffynnon@s:cym&eng ?	be.2S.PRES PRON.2S want go.NONFIN up as_far PRT Cefn_Ffynnon	do you want to go up as far as Cefn Ffynnon?	\N	\N	437669	440595	2926	
184	stammers9	ENF	oes # gobeithio # <neu fydd> [//] i gael gweld i_fyny (y)r top@s:cym&eng yn_de +/ .	be.3S.PRES hope.NONFIN or be.3S.FUT to get.NONFIN see.NONFIN up to DET top TAG	yes, I hope so, or...to see up to the top, isn't it	\N	\N	440595	445669	5074	
213	stammers9	ENF	oh@s:cym&eng bydd hynny (y)n diddorol iawn yn_bydd .	IM be.3S.FUT that PRT interesting very be.3S.FUT	oh, that'll be very interesting, won't it	\N	\N	493931	496497	2566	
185	stammers9	RNW	ia .	yes	yes	\N	\N	445541	446098	557	
193	stammers9	RNW	ia .	yes	yes	\N	\N	464175	464605	430	
186	stammers9	ENF	+, allan o (y)r goedwig .	out of DET wood	out of the wood	\N	\N	446098	447596	1498	
187	stammers9	RNW	ia .	yes	yes	\N	\N	447050	447596	546	
200	stammers9	ENF	+< oh@s:cym&eng yndy ?	IM be.3S.PRES	oh yes?	\N	\N	478885	479790	905	
194	stammers9	ENF	deud y gwir .	say.NONFIN DET truth	to tell the truth	\N	\N	464605	465568	963	
206	stammers9	ENF	er@s:cym&eng Rhosgadfan@s:cym&eng ia ?	IM Rhosgadfan yes	er, Rhosgadfan, yes?	\N	\N	484585	485770	1185	
195	stammers9	ENF	(fe)lly um@s:cym&eng # fydd [?] hynny (y)n +// .	thus IM be.3S.FUT that PRT	so um, that will be...	\N	\N	465568	469330	3762	
201	stammers9	ENF	+< oh@s:cym&eng ia ?	IM yes	oh yes?	\N	\N	481497	482066	569	
196	stammers9	ENF	oh@s:cym&eng gan obeithio bydd hi (y)n braf yn_de .	IM with hope.NONFIN be.3S.FUT PRON.3SF PRT fine TAG	oh, hoping it'll be nice, you know	\N	\N	469330	472406	3076	
197	stammers9	RNW	ia .	yes	yes	\N	\N	472406	472999	593	
211	stammers9	RNW	dw i meddwl mis Ebrill .	be.1S.PRES PRON.1S think.NONFIN month April	April I think	\N	\N	490913	493142	2229	
202	stammers9	ENF	+< fan (y)na .	place there	there	\N	\N	482356	482832	476	
207	stammers9	RNW	ia .	yes	yes	\N	\N	485561	486129	568	
203	stammers9	ENF	ia [=! gasp] .	yes	yes	\N	\N	482832	483633	801	
204	stammers9	RNW	yeah@s:cym&eng .	yeah	yeah	\N	\N	483610	483866	256	
205	stammers9	ENF	lle mae o dŵed [?] .	where be.3S.PRES PRON.3SM say.2S.IMPER	where is it, say?	\N	\N	483703	484585	882	
208	stammers9	ENF	oh@s:cym&eng .	IM	oh	\N	\N	486129	486559	430	
209	stammers9	ENF	bydd o (y)n +// .	be.3S.FUT PRON.3SM PRT	it'll...	\N	\N	486559	488138	1579	
212	stammers9	ENF	oh@s:cym&eng ia .	IM yes	oh yes	\N	\N	492945	493931	986	
210	stammers9	ENF	&pr pa bryd mae o # er@s:cym&eng yn ailagor ?	what time be.3S.PRES PRON.3SM IM PRT reopen.NONFIN	when is it, er, reopening?	\N	\N	488138	490913	2775	
258	stammers9	ENF	&n wnes i ddim gwylio llawer ar Pawb_A'i_Farn@s:cym&eng neithiwr .	do.1S.PAST PRON.1S NEG watch.NONFIN much on Pawb_A'i_Farn last_night	I didn't watch much of Pawb A'i Farn last night	\N	\N	589335	592458	3123	
215	stammers9	ENF	ti (y)n hoffi gwaith Kate_Roberts@s:cym&eng ?	PRON.2S PRT like.NONFIN work Kate_Roberts	do you like Kate Roberts's work?	\N	\N	496625	498262	1637	
214	stammers9	RNW	bydd .	be.3S.FUT	yes	\N	\N	496195	496625	430	
216	stammers9	RNW	yndw dw (y)n hoffi (y)n arw .	be.1S.PRES be.1S.PRES PRT like.NONFIN PRT rough	yes, I like her a lot	\N	\N	498262	499643	1381	
217	stammers9	ENF	oh@s:cym&eng yeah@s:cym&eng .	IM yeah	oh yeah	\N	\N	499643	500665	1022	
259	stammers9	ENF	wnes i gysgu de .	do.1S.PAST PRON.1S sleep.NONFIN TAG	I slept, you know	\N	\N	592458	593503	1045	
218	stammers9	ENF	<dw i> [/] er@s:cym&eng dw i mynd i ddarll(en) [//] ailddarllen rei o (e)i llyfrau hi rŵan .	be.1S.PRES PRON.1S IM be.1S.PRES PRON.1S go.NONFIN  to read.NONFIN re_read.NONFIN some of POSS.3SF books PRON.3SF now	I'm...er, I'm going to read...re-read some of her books now	\N	\N	500665	505065	4400	
242	stammers9	RNW	well@s:cym&eng # ddaru mi xx # ei gwylio hi gyd .	well happen.PAST PRON.1S xx POSS.3SF watch.NONFIN PRON.3SF all	well, I didn't [?] watch all of it	\N	\N	561518	565697	4179	
219	stammers9	ENF	dw (y)n gobeithio [/] # gobeithio darllen um@s:cym&eng +/ .	be.1S.PRES PRT hope.NONFIN hope.NONFIN read.NONFIN IM	I'm hoping...hoping to read, um...	\N	\N	505065	508154	3089	
234	stammers9	ENF	ti (we)di darllen y Daily_Post@s:cym&eng heddiw ?	PRON.2S PRT.PAST read.NONFIN DET Daily_Post today	have you read the Daily Post today?	\N	\N	541734	543441	1707	
220	stammers9	RNW	Lôn_Wen@s:cym&eng ia ?	Lôn_Wen yes	Lôn Wen, yes?	\N	\N	508154	509524	1370	
221	stammers9	ENF	well@s:cym&eng dw (y)n gobeithio darllen +// .	well be.1S.PRES PRT hope.NONFIN read.NONFIN	well, I'm hoping to read...	\N	\N	509524	511513	1989	
222	stammers9	ENF	mae [//] ond [?] y llyfr # hawsa ohonyn nhw i_gyd wrth_gwrs (y)dy +/ .	be.3S.PRES but DET book easiest of.3PL PRON.3PL all of_course be.3S.PRES	but the easiest book of them all, of course, is...	\N	\N	511513	515995	4482	
235	stammers9	RNW	naddo # ddim eto .	no NEG yet	no, not yet	\N	\N	543441	545414	1973	
223	stammers9	RNW	++ Te_(y)n_y_Grug@s:cym&eng .	Te_yn_y_Grug	Te yn y Grug	\N	\N	515995	516877	882	
224	stammers9	ENF	Te_yn_y_Grug@s:cym&eng ia .	Te_yn_y_Grug yes	Te yn y Grug, yes	\N	\N	516761	518085	1324	
225	stammers9	ENF	ond um@s:cym&eng # mae xx hwnnw yn hunangofiant go iawn ganddi Y_Lôn_Wen@s:cym&eng yn_tydy .	but IM be.3S.PRES xx that PRT autobiography rather right by.3SF Y_Lôn_Wen be.3S.PRES.NEG	but um, [...] that is a real autobiography of hers, Y Lôn Wen, isn't it	\N	\N	518085	523646	5561	
236	stammers9	ENF	dw i (we)di cael ryw gip arno .	be.1S.PRES PRON.1S PRT.PAST get.NONFIN some glance at.3SM	I've glanced at it	\N	\N	545414	546831	1417	
226	stammers9	RNW	+< yndy # yndy .	be.3S.PRES be.3S.PRES	yes, yes	\N	\N	522554	523878	1324	
227	stammers9	ENF	ac o'n i awydd ei ailddarllen o (y)n_de .	and be.1S.IMP PRON.1S desire POSS.3SM re_read.NONFIN PRON.3SM TAG	and I wanted to read it again, you know	\N	\N	523878	526630	2752	
243	stammers9	ENF	naddo .	no	no	\N	\N	565221	566011	790	
228	stammers9	ENF	achos mae o (y)n dweud hanes um@s:cym&eng # &=sigh dechrau (y)r ganrif ddwytha (y)n_dydy .	because be.3S.PRES PRON.3SM PRT say.NONFIN history IM start.NONFIN DET century previous be.3S.PRES.NEG	because it tells the history of the beginning of the last century, doesn't it	\N	\N	526630	532841	6211	
237	stammers9	ENF	does fawr o ddim_byd arno fo # a fawr ddim_byd ar y teledu # heno chwaith .	be.3S.PRES.NEG much of nothing on.3SM PRON.3SM and much nothing on DET television tonight either	there isn't much on it, and not much on television tonight either	\N	\N	546831	552032	5201	
229	stammers9	RNW	+< y cyfnod yna .	DET period there	that period	\N	\N	530612	531715	1103	
230	stammers9	RNW	yndy # yndy .	be.3S.PRES be.3S.PRES	yes, yes	\N	\N	532249	533456	1207	
231	stammers9	ENF	yndy fyswn i yn hoffi ailddarllen o .	be.3S.PRES be.1S.CONDIT PRON.1S PRT like.NONFIN re_read.NONFIN PRON.3SM	yes, I would like to read it again	\N	\N	532841	535116	2275	
238	stammers9	ENF	does (y)na ddim ar nos Wener nag oes a deud y gwir .	be.3S.PRES.NEG there NEG on night Friday NEG be.3S.PRES with say.NONFIN DET truth	there isn't on Friday night, is there, to tell the truth	\N	\N	552032	554575	2543	
232	stammers9	ENF	mae [?] rywun yn hoffi cael ryw um@s:cym&eng # ailolwg ar lyfrau weithiau (y)n_tydy .	be.3S.PRES someone PRT like.NONFIN get.NONFIN some IM second_look at books sometimes be.3S.PRES.NEG	one does like to look at books again sometimes, doesn't one	\N	\N	535116	541142	6026	
233	stammers9	RNW	yndy # yndy .	be.3S.PRES be.3S.PRES	yes, yes	\N	\N	540747	542245	1498	
247	stammers9	RNW	+< dda iawn .	good very	very good	\N	\N	576274	576912	638	
239	stammers9	RNW	+< nag oes # nag oes .	NEG be.3S.PRES NEG be.3S.PRES	no, no	\N	\N	553646	555538	1892	
244	stammers9	ENF	ond dw i (we)di mwynhau y [/] y [/] # y ddwy rhaglen olaf yr un ar um@s:cym&eng # Llywelyn_Fawr a # Llywelyn_Ein_Llyw_Olaf .	but be.1S.PRES PRON.1S PRT.PAST enjoy.NONFIN DET DET DET two.F programme last DET one on IM Llywelyn_the_Great and Llywelyn_Our_Last_Leader	but I've enjoyed the...the...the last two programmes, the one on, um, Llywelyn the Great and Llywelyn Our Last Leader	\N	\N	566011	574997	8986	
240	stammers9	ENF	a &dɪ +// .	and	and...	\N	\N	555538	556154	616	
241	stammers9	ENF	yeah@s:cym&eng ti (we)di mwynhau <yr er@s:cym&eng> [//] # yn wir <yr um@s:cym&eng> [//] # y gyfres Tywysogion@s:cym&eng ?	yeah PRON.2S PRT.PAST enjoy.NONFIN DET IM PRT true DET IM DET series Tywysogion	yeah, have you enjoyed the, er...really the er...the Tywysogion series?	\N	\N	556154	561518	5364	
251	stammers9	RNW	dw i meddwl bod nhw (y)n dda iawn xx .	be.1S.PRES PRON.1S think.NONFIN be.NONFIN PRON.3PL PRT good very xx	I think they're very good xx	\N	\N	579861	581707	1846	
245	stammers9	RNW	+< do .	yes	yes	\N	\N	567032	567543	511	
248	stammers9	RNW	+< yndy # yndy .	be.3S.PRES be.3S.PRES	yes, yes	\N	\N	577179	578433	1254	
246	stammers9	ENF	(we)dyn mae gorffen tro nesa (y)n_dydy # efo Owain_Glyndŵr@s:cym&eng .	then be.3S.PRES finish.NONFIN turn next be.3S.PRES.NEG with Owain_Glyndŵr	then it's finishing next time, isn't it, with Owain Glyndŵr	\N	\N	574997	578967	3970	
249	stammers9	RNW	yndy .	be.3S.PRES	yes	\N	\N	578851	579397	546	
253	stammers9	RNW	rhoi cyfle i rywun wybod am hanes rywun nad oedd ddim yn gwybod # hanes yn_de .	give.NONFIN opportunity to somebody know.NONFIN about history somebody NEG be.3S.IMP NEG PRT know.NONFIN history TAG	gives one the opportunity to know about someone's history that one didn't know before, isn't it	\N	\N	582334	587826	5492	
250	stammers9	ENF	yndy ond mae (we)di bod +/ .	be.3S.PRES but be.3S.PRES PRT.PAST be.NONFIN	yes, but it has been...	\N	\N	579397	580395	998	
252	stammers9	ENF	yndy # &ɔ +/ .	be.3S.PRES	yes...	\N	\N	581382	582334	952	
254	stammers9	ENF	+< ia # yeah@s:cym&eng .	yes yeah	yes, yeah	\N	\N	584308	586096	1788	
255	stammers9	ENF	+< ia .	yes	yes	\N	\N	586467	587176	709	
256	stammers9	ENF	oh@s:cym&eng yeah@s:cym&eng .	IM yeah	oh yeah	\N	\N	587477	588197	720	
257	stammers9	ENF	wyt ti (we)di um@s:cym&eng +// .	be.2S.PRES PRON.2S PRT.PAST IM	have you um...	\N	\N	588197	589335	1138	
260	stammers9	RNW	do [?] na wnes i (ddi)m o (e)i wylio fo chwaith .	yes no do.1S.PAST PRON.1S NEG of POSS.3SM watch.NONFIN PRON.3SM either	yes, no, I didn't watch it either	\N	\N	593503	595813	2310	
261	stammers9	ENF	+< er # mi oedd o (y)n right@s:cym&eng dda (y)n_doedd # a deud y gwir .	although PRT be.3S.IMP PRON.3SM PRT right good be.3S.IMP.NEG with say.NONFIN DET truth	although, it was quite good, wasn't it, to tell the truth	\N	\N	594327	598286	3959	
289	stammers9	ENF	+< ia # ia .	yes yes	yes, yes	\N	\N	646874	648128	1254	
262	stammers9	RNW	oedd # oedd .	be.3S.IMP be.3S.IMP	yes, yes	\N	\N	596580	597764	1184	
278	stammers9	ENF	ia .	yes	yes	\N	\N	633070	633499	429	
263	stammers9	ENF	xx oedd y Gymraeg yn fwy um@s:cym&eng # gloyw neithiwr yn_doedd er@s:cym&eng gan bod o (y)n dŵad o # Bethesda@s:cym&eng (y)n_doedd .	xx be.3S.IMP DET Welsh PRT more IM bright last_night be.3S.IMP.NEG IM for be.NONFIN PRON.3SM PRT come.NONFIN from Bethesda be.3S.IMP.NEG	the Welsh was more pure last night, wasn't it, er, Because it came from Bethesda, wasn't it	\N	\N	598286	605612	7326	
264	stammers9	RNW	+< oedd .	be.3S.IMP	yes	\N	\N	602919	603337	418	
265	stammers9	RNW	ia oedd .	yes be.3S.IMP	yes, it was	\N	\N	605229	606053	824	
279	stammers9	RNW	ia .	yes	yes	\N	\N	633499	633999	500	
266	stammers9	ENF	oedd o (ddi)m mor um@s:cym&eng # garbwl y Gymraeg yn nag oedd .	be.3S.IMP PRON.3SM NEG so IM clumsy DET Welsh PRT NEG be.3S.IMP	it wasn't as, um, clumsy, the Welsh, was it	\N	\N	605879	609188	3309	
267	stammers9	RNW	nag oedd # oedd xx # lot@s:cym&eng gwell .	NEG be.3S.IMP be.3S.IMP xx lot better	no, [...] was a lot better	\N	\N	608039	610686	2647	
295	stammers9	RNW	ia .	yes	yes	\N	\N	657648	658147	499	
268	stammers9	ENF	oedd um@s:cym&eng # y safon yn # well na deud y gwir .	be.3S.IMP IMP DET standard PRT better PRT say.NONFIN DET truth	the, um, standard was better than, to tell the truth	\N	\N	609536	614842	5306	
280	stammers9	ENF	(y)marfer ia ?	rehearsal yes	rehearsal, yes?	\N	\N	633917	634753	836	
269	stammers9	ENF	ac mi oedd y panel@s:cym&eng yn eitha da neithiwr hefyd doedden ar y cyfan .	and PRT be.3S.IMP DET panel PRT quite good last_night als be.3PL.IMP.NEG on DET whole	and the panel were quite good last night too, weren't they, on the whole	\N	\N	614842	618824	3982	
270	stammers9	RNW	+< oedd .	be.3S.IMP	yes	\N	\N	617443	617954	511	
290	stammers9	ENF	o(edd) hi am fynd hefyd .	be.3S.IMP PRON.3SF for go.NONFIN also	she was going to go too	\N	\N	648128	649823	1695	
271	stammers9	ENF	um@s:cym&eng # xxx ond does (yn)a (ddi)m llawer o (di)m_byd um@s:cym&eng +// .	IM xxx but be.3S.PRES.NEG there NEG much of nothing IM	um [...] but there's nothing much, um...	\N	\N	618824	624374	5550	
281	stammers9	RNW	ar_gyfer # y rhaglen Dechrau_Canu_Dechrau_Canmol@s:cym&eng # ia .	for DET programme Dechrau_Canu_Dechrau_Canmol yes	for the programme Dechrau Canu Dechrau Canmol, yes	\N	\N	634753	638526	3773	
272	stammers9	ENF	oh@s:cym&eng mae (y)na ymarfer yng nghapel um@s:cym&eng +/ .	IM be.3S.PRES there rehearsal in chapel IM	oh there's a rehearsal in chapel, um...	\N	\N	624374	627137	2763	
273	stammers9	RNW	++ Horeb@s:cym&eng Bae_Colwyn ia ?	Horeb Colwyn_Bay yes	Horeb, Colwyn Bay, yes?	\N	\N	627137	629656	2519	
274	stammers9	ENF	oes nos Sul .	be.3S.PRES night Sunday	yes, on Sunday night	\N	\N	629656	631247	1591	
282	stammers9	ENF	+< ia .	yes	yes	\N	\N	637377	638039	662	
275	stammers9	ENF	ti am fynd ?	PRON.2S for go.NONFIN	are you going to go?	\N	\N	631247	631978	731	
276	stammers9	RNW	+< oes .	be.3S.PRES	yes	\N	\N	631514	632025	511	
277	stammers9	RNW	yndw dw i am fynd .	be.1S.PRES be.1S.PRES PRON.1S for go.NONFIN	yes, I'm going to go	\N	\N	632025	633290	1265	
283	stammers9	ENF	ar y # teledu fydd o (y)n_de .	on DET television be.3S.FUT PRON.3SM TAG	it'll be on the television, won't it	\N	\N	638376	640326	1950	
291	stammers9	ENF	achos mae (y)n hoffi canu (y)n_dydy .	because be.3S.PRES PRT like.NONFIN sing.NONFIN be.3S.PRES.NEG	because she likes singing, doesn't she	\N	\N	649823	651982	2159	
284	stammers9	RNW	ia .	yes	yes	\N	\N	640256	640814	558	
285	stammers9	ENF	oedd Jessica@s:cym&eng (y)n deud ei bod hi am fynd hefyd .	be.3S.IMP Jessica PRT say.NONFIN POSS.3SF be.NONFIN PRON.3SF for go.NONFIN also	Jessica was saying that she was going to go, too	\N	\N	640814	644889	4075	
286	stammers9	RNW	+< xx dw i meddwl .	xx be.1S.PRES PRON.1S think.NONFIN	[...] I think so	\N	\N	642288	643298	1010	
292	stammers9	RNW	oh@s:cym&eng yndy mae yn .	IM be.3S.PRES be.3S.PRES PRT	oh yes, she does	\N	\N	651611	652784	1173	
287	stammers9	RNW	ia .	yes	yes	\N	\N	644854	645283	429	
288	stammers9	RNW	dw i meddwl mai Trystan_Lewis@s:cym&eng sy (y)n arwain yn_de .	be.1S.PRES PRON.1S think.NONFIN PRT Trystan_Lewis be.PRES.REL PRT conduct.NONFIN TAG	I think it's Trystan Lewis that's conducting, isn't it	\N	\N	645283	647861	2578	
296	stammers9	ENF	perthyn i gôr mawr rŵan dw i (ddi)m yn meddwl nac (y)dy .	belong.NONFIN to choir big now be.1S.PRES PRON.1S NEG PRT think.NONFIN NEG be.3S.PRES	part of a big choir now, I don't think, is she	\N	\N	658147	660713	2566	
293	stammers9	RNW	mae (y)n perthyn i gôr yn_dydy .	be.3S.PRES PRT belong.NONFIN to choir be.3S.PRES.NEG	she's part of a choir, doesn't she	\N	\N	652784	654351	1567	
300	stammers9	ENF	a mae (y)n llawn o ryw Steddfod@s:cym&eng .	and be.3S.pers PRT full of some Eisteddfod	and she's full of the Eisteddfod	\N	\N	662687	665160	2473	
294	stammers9	ENF	yndy # oh@s:cym&eng yndy mae i gôr bach yn_de .	be.3S.PRES IM be.3S.PRES be.3S.PRES to choir small TAG	yes, oh yes, she is, of a small choir, isn't it	\N	\N	654351	658054	3703	
297	stammers9	RNW	+< na .	no	no	\N	\N	659784	660330	546	
302	stammers9	ENF	isio mynd i (y)r cyngerdd nos Wener # gymanfa # nos Sul .	want go.NONFIN to DET concert night Friday assembly	wants to go to the concert on Friday night, the congregation on Sunday night	'cymanfa', translated here as 'congregation' is, in fact, a kind of concert where people gather to sing hymns, usually held in a chapel	'cymanfa', translated here as 'congregation' is, in fact, a kind of concert where people gather to sing hymns, usually held in a chapel	665536	671573	6037	
298	stammers9	RNW	na .	no	no	\N	\N	660713	661120	407	
301	stammers9	RNW	oh@s:cym&eng yndy .	IM be.3S.PRES	oh yes	\N	\N	665160	666321	1161	
299	stammers9	ENF	deud y gwir .	say.NONFIN DET truth	to tell the truth	\N	\N	661120	662687	1567	
303	stammers9	RNW	ia .	yes	yes	\N	\N	671573	672594	1021	
352	stammers9	RNW	a [=? y] lluniau da iawn o (y)r pontydd mae o (we)di adeiladu .	and picture good very of DET bridges be.3S.PRES PRON.3SM PRT.PAST build.NONFIN	and very good photographs of the bridges he built	\N	\N	773090	776422	3332	
353	stammers9	ENF	+< oedd er@s:cym&eng oedd # mmm@s:cym&eng .	be.3S.IMP IM be.3S.IMP IM	yes, er, yes, mm	\N	\N	774622	777025	2403	
304	stammers9	ENF	ac um@s:cym&eng # dw i meddwl mae ffrind hi # Julie@s:cym&eng yn mynd i # drefnu # bus@s:cym&eng hefyd yn ystod yr wythnos .	and IM be.1S.PRES PRON.1S think.NONFIN be.3S.PRES friend PRON.3SF Julie PRT go.NONFIN to organise.NONFIN bus also in range DET week	and, um, I think her friend, Julie, is going to organise a bus, too, during the week	\N	\N	672594	681940	9346	
329	stammers9	RNW	+< dylai .	should.3S.CONDIT	yes	\N	\N	734858	735357	499	
305	stammers9	ENF	ac fydd (y)na fus@s:cym&eng yn mynd dydd Gwener hefyd yn_bydd .	and be.3S.FUT there bus PRT go.NONFIN day Friday also be.3S.FUT	and, there'll be a bus going on Friday, too, won't there	\N	\N	681940	685389	3449	
321	stammers9	RNW	well@s:cym&eng ia bydd mi fydd .	well yes be.3S.FUT PRT be.3S.FUT	well yes, you will	\N	\N	720763	722493	1730	
306	stammers9	RNW	bydd .	be.3S.FUT	yes	\N	\N	685389	686271	882	
307	stammers9	ENF	<gan er@s:cym&eng> [//] # Dyfed_Alun@s:cym&eng yn [/] # yn trefnu (y)r bus@s:cym&eng yno (y)n_dydy .	for IM Dyfed_Alun PRT PRT organise.NONFIN DET bus there be.3S.PRES.NEG	by, er...Dyfed Alun's organising that bus, isn't he	\N	\N	686155	690265	4110	
308	stammers9	RNW	+< bydd .	be.3S.FUT	yes	\N	\N	687142	687792	650	
322	stammers9	ENF	+< ia .	yes	yes	\N	\N	721634	722087	453	
309	stammers9	RNW	+< ia .	yes	yes	\N	\N	688361	688872	511	
310	stammers9	RNW	yndy .	be.3S.PRES	yes	\N	\N	690265	690869	604	
339	stammers9	RNW	do .	yes	yes	\N	\N	758124	758821	697	
311	stammers9	ENF	deud y gwir yndy .	say.NONFIN DET truth be.3S.PRES	actually, yes	\N	\N	690613	691902	1289	
323	stammers9	ENF	dw (ddi)m yn gwybod wyt ti isio mynd ar y ddau .	be.1S.PRES NEG PRT know.NONFIN be.2S.PRES PRON.2S want go.NONFIN on DET two.M	I don't know whether you want to go on both	\N	\N	722493	724653	2160	
312	stammers9	RNW	yndy .	be.3S.PRES	yes	\N	\N	691623	692285	662	
313	stammers9	RNW	mae (y)n gyfle i ni # gan bod y Steddfod@s:cym&eng mor agos yn_dydy .	be.3S.PRES PRT opportunity for PRON.1PL for be.NONFIN DET Eisteddfod so close be.3S.PRES.NEG	it's an opportunity for us, because the Eisteddfod's so close, isn't it	\N	\N	692285	696093	3808	
330	stammers9	RNW	ia .	yes	yes	\N	\N	737633	738202	569	
314	stammers9	ENF	yndy ydy gan obeithio mynd i wrando ar dipyn o # ddarlithoedd a +/ .	be.3S.PRES be.3S.PRES by hope.NONFIN go.NONFIN to listen.NONFIN to a_little of lectures and	yes, yes, hoping to go listen to a few lectures and...	\N	\N	695489	701867	6378	
324	stammers9	RNW	+< mi fydd .	PRT be.3S.FUT	you will	\N	\N	723515	724142	627	
315	stammers9	RNW	oh@s:cym&eng ia # ymryson y beirdd .	IM yes contest DET bards	oh yes, the contest of the bards	\N	\N	701344	703840	2496	
316	stammers9	ENF	well@s:cym&eng ia os fydd (y)na le i fynd i_mewn de .	well yes if be.3S.FUT there place to go.NONFIN in TAG	well yes, if there's room to go in, isn't it	\N	\N	703840	706305	2465	
317	stammers9	RNW	ia .	yes	yes	\N	\N	706305	706747	442	
325	stammers9	RNW	well@s:cym&eng dw i (ddi)m yn sure@s:cym&eng iawn yn_de .	well be.1S.PRES PRON.1S NEG PRT sure very TAG	well, I'm not very sure, you know	\N	\N	724653	727950	3297	
318	stammers9	ENF	ia # ia # hollol .	yes yes complete	yes, yes, exactly	\N	\N	706634	708573	1939	
319	stammers9	ENF	oh@s:cym&eng # well@s:cym&eng ydw i (ddi)m yn gwybod ydan ni (y)n mynd i fynd +// .	IM well be.1S.PRES PRON.1S NEG PRT know.NONFIN be.1PL.PRES PRON.1PL PRT go.NONFIN to go.NONFIN	oh well, I don't know whether we're going to go...	\N	\N	708573	712996	4423	
335	stammers9	ENF	mmm@s:cym&eng .	IM	mm	\N	\N	752482	753051	569	
320	stammers9	ENF	(r)haid mi yrru (y)r arian yr wythnos nesa # i fynd ar um@s:cym&eng # um@s:cym&eng # &d ar y tripiau (y)r W_E_A@s:eng yn_bydd .	necessity PRON.1S send.NONFIN DET money DET week next to go.NONFIN on IM IM on DET trips DET W_E_A be.3S.FUT.NEG	I'll have to send the money next week to go on, um, um, on the WEA trips, won't I	\N	\N	712985	721123	8138	
326	stammers9	ENF	ia # fydd (r)haid gyrru nhw wythnos nesa (y)n_bydd i [/] i Dwynwen@s:cym&eng .	yes be.3S.FUT necessity send.NONFIN PRON.3PL week next be.3S.FUT.NEG to to Dwynwen	yes, they'll have to be sent next week, won't they, to...to Dwynwen	\N	\N	727056	730887	3831	
331	stammers9	ENF	ac am bod hi (y)n # ddau gan mlwyddiant leni y diddymu (y)r um@s:cym&eng # caethwasiaeth .	and for be.NONFIN PRON.3SF PRT two.M hundred anniversary this_year DET abolish.NONFIN DET IM slavery	and because it's the two hundredth anniversary, this year, of the abolition of, um, slavery	\N	\N	738202	745899	7697	
327	stammers9	RNW	+< bydd .	be.3S.FUT	yes	\N	\N	729680	730214	534	
328	stammers9	ENF	um@s:cym&eng # mi ddylai un ohonyn nhw fod yn diddorol a deud y gwir yn # dweud hanes cotwm yn_de .	IM PRT should.3S.CONDIT one of.3PL PRON.3PL be.NONFIN PRT interesting with say.NONFIN DET truth PRT say.NONFIN history cotton TAG	um, one of them should be interesting, acutally, telling the history of cotton, isn't it	\N	\N	730887	737726	6839	
332	stammers9	RNW	ia .	yes	yes	\N	\N	745899	746828	929	
336	stammers9	RNW	yndy .	be.3S.PRES	yes	\N	\N	753051	753771	720	
333	stammers9	ENF	mae hynny (y)n # gwneud o (y)n fwy diddorol dydy .	be.3S.PRES that PRT do.NONFIN PRON.3SM PRT more interesting be.3S.PRES.NEG	that makes it more interesting, doesn't it	\N	\N	746828	751576	4748	
337	stammers9	ENF	&=gasp .	\N	\N	\N	\N	753771	754270	499	
334	stammers9	RNW	yndy # yndy debyg iawn .	be.3S.PRES be.3S.PRES probable very	yes, yes, very probably	\N	\N	750845	752586	1741	
343	stammers9	ENF	oedd .	be.3S.IMP	yes	\N	\N	763047	763535	488	
338	stammers9	ENF	wnest ti fwynhau yr er@s:cym&eng ddarlith yn y W_E_A@s:eng xx +/?	do.2S.PAST PRON.2S enjoy.NONFIN DET IM lecture in DET W_E_A xx	did you enjoy the lecture in the WEA [...] ..?	\N	\N	754270	758554	4284	
342	stammers9	ENF	+< ia # oedd .	yes be.3S.IMP	yes, he was	\N	\N	761294	762745	1451	
340	stammers9	ENF	oh@s:cym&eng .	IM	oh	\N	\N	758821	759727	906	
341	stammers9	RNW	&ɪ Eryl_Rothwell_Hughes@s:cym&eng yn dda iawn fel arfer .	Eryl_Rothwell_Hughes PRT good very like habit	Eryl Rothwell Hughes was very good, as usual	\N	\N	759727	763047	3320	
344	stammers9	RNW	oedd [=! gasps] .	be.3S.IMP	yes	\N	\N	763535	763964	429	
345	stammers9	ENF	ai dau gan # mlynedd a hanner oedd o # o geni um@s:cym&eng +/ .	PRT.INT two.M hundred year and half be.3S.IMP PRON.3SM from birth IM	was it two hundred and fifty years since the birth of, um..?	\N	\N	763964	769154	5190	
346	stammers9	RNW	+< er@s:cym&eng &d +// .	er	er...	\N	\N	767842	768747	905	
347	stammers9	RNW	++ Thomas_Telford@s:cym&eng ia ?	Thomas_Telford yes	Thomas Telford, yes?	\N	\N	769154	770454	1300	
348	stammers9	ENF	ia dw meddwl de .	yes be.1S.PRES think.NONFIN TAG	yes, I think so, isn't it	\N	\N	770384	771627	1243	
349	stammers9	RNW	ia # ia .	yes yes	yes, yes	\N	\N	771371	772370	999	
382	stammers9	ENF	yeah@s:cym&eng # cystadleuaeth er@s:cym&eng Merched_y_Wawr@s:cym&eng (y)dy (y)n_de .	yeah competition IM Merched_y_Wawr be.3S.PRES TAG	yeah, it's a, er, Merched y Wawr competition, isn't it	\N	\N	856360	859588	3228	
354	stammers9	ENF	ac oedd o (y)n medru cadw diddordeb um@s:cym&eng # cynulleidfa # am awr a hanner .	and be.3S.IMP PRON.3SM PRT can.NONFIN keep.NONFIN interest IM audience for hour and half	and he could keep an audience interested for an hour and a half	\N	\N	777025	783260	6235	
370	stammers9	ENF	(ba)swn i (y)n # &ɔ well@s:cym&eng # hoffi mynd i gerdded +// .	be.1S.CONDIT PRON.1S PRT well like.NONFIN go.NONFIN to walk.NONFIN	I'd, well, like to go walking...	\N	\N	814506	818524	4018	
355	stammers9	ENF	a mae hynny (y)n # rywbeth # eitha prin dw feddwl eitha anodd <i wneud> [?] dydy .	and be.3S.PRES that PRT something quite rare be.1S.PRES think.NONFIN quite difficult to do.NONFIN be.3S.PRES.NEG	and that's something quite rare, I think, quite difficult to do, isn't it	\N	\N	783260	787892	4632	
356	stammers9	RNW	+< yndy .	be.3S.PRES	yes	\N	\N	785919	786638	719	
377	stammers9	RNW	ia .	yes	yes	\N	\N	844298	844809	511	
357	stammers9	RNW	yndy .	be.3S.PRES	yes	\N	\N	787660	788159	499	
371	stammers9	ENF	dw (ddi)m yn sure@s:cym&eng i le chwaith .	be.1S.PRES NEG PRT sure to where either	I'm not sure where either	\N	\N	818524	819766	1242	
358	stammers9	ENF	medru cadw um@s:cym&eng # diddordeb .	can.NONFIN keep.NONFIN IM interest	being able to, um, keep people interested	\N	\N	788159	791073	2914	
359	stammers9	RNW	yndy .	be.3S.PRES	yes	\N	\N	790923	791503	580	
360	stammers9	ENF	a hyd_(y)n_oed fyswn i (we)di medru gwrando &n arno fo (y)n hirach .	and even be.1S.CONDIT PRON.1S PRT.PAST can.NONFIN listen.NONFIN to.3SM PRON.3SM PRT longer	and I could have even listened to him for longer	\N	\N	791410	794394	2984	
372	stammers9	ENF	ond um@s:cym&eng # falle i cerdded # <ar_hyd y> [//] # i gyfeiriad Llandrillo_yn_Rhos a +. . .	but IM perhaps to walk.NONFIN along DET to direction Rhos_on_Sea and	but, um, perhaps walking along the...in the direction of Rhos-on-Sea and...	\N	\N	819766	826755	6989	
361	stammers9	RNW	ia oedd o (y)n dda iawn doedd # oedd .	yes be.3S.IMP PRON.3SM PRT good very be.3S.IMP.NEG be.3S.IMP	yes he was very good, wasn't he, yes	\N	\N	794394	797196	2802	
362	stammers9	ENF	+< ond +// .	but	but...	\N	\N	795362	795907	545	
363	stammers9	ENF	+< oedd # oedd mi oedd o (y)n dda .	be.3S.IMP be.3S.IMP PRT be.3S.IMP PRON.3SM PRT good	yes, yes, he was good	\N	\N	795907	797858	1951	
373	stammers9	RNW	+< na .	no	no	\N	\N	819812	820265	453	
364	stammers9	ENF	oedd o (y)n um@s:cym&eng # bleser gwrando (ar)no fo deud y gwir yn_doedd .	be.3S.IMP PRON.3SM PRT IM pleasure listen.NONFIN at.3SM PRON.3SM say.NONFIN DET truth be.3S.IMP.NEG	it was a, um, pleasure to listen to him to tell the truth, wasn't it	\N	\N	797858	803001	5143	
365	stammers9	RNW	oedd .	be.3S.IMP	yes	\N	\N	802862	803837	975	
378	stammers9	ENF	dw (ddi)m awydd cerdded yn_ôl chwaith .	be.1S.PRES NEG desire walk.NONFIN back either	I don't feel like walking back either	\N	\N	844600	846399	1799	
366	stammers9	ENF	oh@s:cym&eng dw isio mynd i # gerdded dipyn bach mwy rŵan hefyd os fydd (y)na amser .	IM be.1S.PRES want go.NONFIN to walk.NONFIN a_little small more now also if be.3S.FUT there time	oh, I want to go walking a little bit more now too, if there's time	\N	\N	803837	809804	5967	
374	stammers9	RNW	ia mae (y)na le da iawn i gerdded yma ar_hyd lan y môr yn_does .	yes be.3S.PRES there place good very to walk.NONFIN here along shore DET sea be.3S.PRES.NEG	yes, there's a very good place to walk here along the seaside, isn't there	\N	\N	826755	831457	4702	
367	stammers9	ENF	xx # (ba)swn i hoffi +/ .	xx be.1S.CONDIT PRON.1S like.NONFIN	[...] I'd like to...	\N	\N	809804	812475	2671	
368	stammers9	RNW	ia mae o (y)n dda iawn i (ei)ch iechyd chi xx cerdded dydy .	yes be.3S.PRES PRON.3SM PRT good very to POSS.2PL health PRON.2PL xx walk.NONFIN be.3S.PRES.NEG	yes, it's very good for your health, [...] walking, isn't it	\N	\N	811627	814785	3158	
369	stammers9	ENF	+< yndy .	be.3S.PRES	yes	\N	\N	813705	814344	639	
375	stammers9	ENF	xx i_lawr am y +// .	xx down for DET	[...] down towards the...	\N	\N	830528	831805	1277	
389	stammers9	RNW	+, cael y pier@s:cym&eng i_mewn +/ .	get.NONFIN DET pier in	get the pier in...	\N	\N	871604	872893	1289	
376	stammers9	ENF	fysan [?] ni xx cerdded i_lawr um@s:cym&eng # trwy (y)r park@s:cym&eng # heibio (y)r pier@s:cym&eng # i [/] # i gyfeiriad um@s:cym&eng # Llandrillo_yn_Rhos a cael bus@s:cym&eng adre falle .	be.1PL.CONDIT PRON.1PL xx walk.NONFIN down IM though DET park past DET pier to to direction IM Rhos_on_Sea and get.NONFIN bus home perhaps	we could walk down, um, through the park, past the pier in...in the direction of, um, Rhos-on-Sea and get a bus home perhaps	\N	\N	831805	844600	12795	
379	stammers9	RNW	+< na .	no	no	\N	\N	845981	846469	488	
383	stammers9	RNW	+< ia .	yes	yes	\N	\N	857498	857963	465	
380	stammers9	ENF	a fyddai [//] mi <fyddet ti> [//] # fyddi di # isio mynd i um@s:cym&eng # dynnu lluniau .	and be.3S.CONDIT PRT be.2S.CONDIT PRON.2S be.2S.FUT PRON.2S want go.NONFIN to IM take.NONFIN pictures	and you'd...you'll want to go take photos	\N	\N	846469	853795	7326	
381	stammers9	RNW	oh@s:cym&eng bydd # i (y)r gystadleuaeth .	IM be.3S.FUT for DET competition	oh yes, for the competition	\N	\N	853795	856360	2565	
387	stammers9	RNW	well@s:cym&eng o'n i meddwl mynd i_fyny # at Penmaen_Rhos@s:cym&eng a # tynnu llun yr arfordir +/ .	well be.1S.IMP PRON.1S think.NONFIN go.NONFIN up to Penmaen_Rhos and take.NONFIN picture DET coast	well I was thinking of going up to Penmaen Rhos and taking a photo of the coast	\N	\N	863768	871163	7395	
384	stammers9	RNW	ia .	yes	yes	\N	\N	859588	860018	430	
388	stammers9	ENF	ia .	yes	yes	\N	\N	871163	871953	790	
385	stammers9	ENF	ia [=! gasps] .	yes	yes	\N	\N	859797	860389	592	
386	stammers9	ENF	er@s:cym&eng # <be oeddet ti am> [//] # be o't ti feddwl dynnu llun ?	IM what be.2S.IMP PRON.2S for what be.2S.IMP PRON.2S think.NONFIN take.NONFIN picture	er, what were you going to...what were you thinking of taking a photo of?	\N	\N	860389	863768	3379	
390	stammers9	ENF	ia .	yes	yes	\N	\N	872893	873555	662	
391	stammers9	RNW	+, ac ar_hyd lan y môr .	and along shore DET beach	and along the seafront	\N	\N	873555	875482	1927	
392	stammers9	ENF	ia .	yes	yes	\N	\N	875482	875993	511	
393	stammers9	RNW	a llun arall fyswn i feddwl fasai hwyrach Bryn_Euryn@s:cym&eng [?] .	and picture other be.1S.CONDIT PRON.1S think.NONFIN be.3S.CONDIT perhaps Bryn_Euryn	and another photo I'd think would perhaps be Bryn Euryn	\N	\N	875865	879627	3762	
394	stammers9	ENF	ia .	yes	yes	\N	\N	879627	881194	1567	
395	stammers9	RNW	a eglwy(s) +/ .	and church	and church...	\N	\N	881101	881949	848	
415	stammers9	RNW	well@s:cym&eng yr eglwys bach # ar lan y môr yn Llandrillo_yn_Rhos hwyrach .	well DET church small on shore DET sea in Rhos_on_Sea perhaps	well, the small church on the seaside in Rhos-on-Sea perhaps	\N	\N	910161	914654	4493	
396	stammers9	ENF	<yr hen um@s:cym&eng> [//] # Bryn_Euryn@s:cym&eng ei hun ta <(y)r er@s:cym&eng> [/] # yr hen dŷ ?	DET old IM Bryn_Euryn POSS.3S self PRT DET IM DET old house	the old, um...Bryn Euryn itself or the, er...the old house?	\N	\N	881403	885908	4505	
397	stammers9	RNW	oh@s:cym&eng na (y)r [//] yr hen adfail .	IM no DET DET old ruin	oh no, the...the old ruin	\N	\N	885095	887173	2078	
427	stammers9	ENF	oh@s:cym&eng yeah@s:cym&eng oh@s:cym&eng +. . .	IM yeah oh	oh yeah, oh	\N	\N	929863	932742	2879	
398	stammers9	ENF	&d er@s:cym&eng tŷ [//] er@s:cym&eng plas Ednyfed_Fychan@s:cym&eng ia ?	IM house IM palace Ednyfed_Fychan yes	er, the house...er, palace of Ednyfed Fychan, yes?	\N	\N	887173	890076	2903	
416	stammers9	ENF	+< ia ia hollol ia yeah@s:cym&eng [=! gasps] .	yes yes complete yes yeah	yes, yes, exactly, yes, yeah	\N	\N	913284	916547	3263	
399	stammers9	RNW	ia .	yes	yes	\N	\N	889809	890238	429	
400	stammers9	ENF	oh@s:cym&eng ia .	IM yes	oh yes	\N	\N	890238	890974	736	
401	stammers9	ENF	a lle arall ?	and where other	and where else?	\N	\N	890974	891915	941	
417	stammers9	RNW	+< ia .	yes	yes	\N	\N	915548	916001	453	
402	stammers9	RNW	xx # well@s:cym&eng hwyrach eglwys Saint_Paul@s:cym&eng .	xx well perhaps church Saint_Paul	[...] well perhaps Saint Paul's	\N	\N	891399	894221	2822	
403	stammers9	ENF	ia .	yes	yes	\N	\N	894221	895138	917	
434	stammers9	ENF	yndy ac efallai mynd draw i Gonwy@s:cym&eng wedyn .	be.3S.PRES and perhaps go.NONFIN over to Conwy then	yes, and perhaps go over to Conwy after	\N	\N	944770	947243	2473	
404	stammers9	RNW	a (y)r clock@s:cym&eng # yng &ŋwɪr [//] ngwaelod +/ .	and DET clock in bottom	and the clock at the bottom...	\N	\N	895138	898505	3367	
418	stammers9	ENF	o (y)r pier@s:cym&eng ia ?	of DET pier yes	of/from the pier, yes?	\N	\N	916547	918091	1544	
405	stammers9	ENF	+< ia .	yes	yes	\N	\N	897262	897808	546	
406	stammers9	ENF	ia # <mae nhw (y)n> [?] ddel dydy .	yes be.3PL.PRES PRON.3PL PRT pretty be.3S.PRES.NEG	yes, they're pretty, isn't it	\N	\N	898505	900571	2066	
428	stammers9	ENF	(ba)swn i hoffi mynd i siopa i Tesco's@s:cym&eng wsnos xx dwytha [//] nesa .	be.1S.CONDIT PRON.1S like.NONFIN go.NONFIN to shop.NONFIN in Tescos week xx previous next	I'd like to go shopping at Tesco's last...next week	\N	\N	932742	938350	5608	
407	stammers9	RNW	+, +< er@s:cym&eng Station_Road@s:cym&eng .	IM Station_Road	er, Station Road	\N	\N	899283	900641	1358	
419	stammers9	RNW	ia .	yes	yes	\N	\N	918091	918903	812	
408	stammers9	RNW	yndy mae hwnnw (y)n # ddel iawn .	be.3S.PRES be.3S.PRES that PRT pretty very	yes, that's very pretty	\N	\N	900641	902359	1718	
409	stammers9	ENF	mae isio mynd yn gynnar yn y fore (ba)swn i ddeud i dynnu hwnnw .	be.3S.PRES want go.NONFIN PRT early in DET morning be.1S.CONDIT PRON.1S say.NONFIN to take.NONFIN that	you need to go early in the morning, I'd say, to take that	\N	\N	901872	905227	3355	
410	stammers9	RNW	+< oes .	be.3S.PRES	yes	\N	\N	903613	904333	720	
420	stammers9	ENF	+< beth am y pier@s:cym&eng ?	what about DET pier	what about the pier?	\N	\N	918474	919333	859	
411	stammers9	RNW	cyn i bobl ddod o_gwmpas .	before for people come.NONFIN around	before people get about	\N	\N	904890	906585	1695	
412	stammers9	ENF	ia .	yes	yes	\N	\N	906585	907386	801	
413	stammers9	ENF	a # rywle arall # ta +. . .	and somewhere other PRT	and somewhere else, or..?	\N	\N	907386	910161	2775	
421	stammers9	RNW	ia .	yes	yes	\N	\N	919333	919948	615	
414	stammers9	RNW	+< ia .	yes	yes	\N	\N	908721	909209	488	
429	stammers9	RNW	oh@s:cym&eng ia # gan bod gyn ti docynnau ia ?	IM yes for be.NONFIN with PRON.2S tickets yes	oh yes, because you've got vouchers, yes?	\N	\N	938350	941253	2903	
422	stammers9	ENF	a (y)r môr .	and DET sea	and the sea	\N	\N	919948	920749	801	
441	stammers9	ENF	i gael <mynd i (y)r um@s:cym&eng> [//] # oh@s:cym&eng mynd i (y)r shop@s:cym&eng gig efallai yeah@s:cym&eng ?	for get.NONFIN go.NONFIN to DET IM IM go.NONFIN to DET shop meat perhaps yeah	to go to the um, oh go to the meat shop perhaps, yeah?	\N	\N	952886	957286	4400	
423	stammers9	ENF	ah@s:cym&eng yeah@s:cym&eng .	IM yeah	ah yeah	\N	\N	920749	922398	1649	
430	stammers9	ENF	+< ia .	yes	yes	\N	\N	940835	941345	510	
424	stammers9	ENF	oh@s:cym&eng <fydd raid ti> [?] fynd right@s:cym&eng fuan i weld .	IM be.3S.FUT necessity PRON.2S go.NONFIN right soon to see.NONFIN	oh, you'll have to go quite soon to see	\N	\N	922398	925231	2833	
425	stammers9	RNW	bydd .	be.3S.FUT	yes	\N	\N	925231	925765	534	
435	stammers9	RNW	+< ia .	yes	yes	\N	\N	946744	947243	499	
426	stammers9	ENF	cei di hwyl arni # yn_de # a deud y gwir .	get.2S.NONPAST PRON.2S fun on.3SF TAG with say.NONFIN DET truth	you'll do well, you know, to tell the truth	\N	\N	925765	929863	4098	
431	stammers9	ENF	gan [//] ia .	for yes	because...yes	\N	\N	941345	942971	1626	
432	stammers9	ENF	xx +/ .	\N	\N	\N	\N	942971	943935	964	
439	stammers9	ENF	ia i Gonwy@s:cym&eng ia .	yes to Conwy yes	yes, to Conwy, yes	\N	\N	951156	952781	1625	
433	stammers9	RNW	oh@s:cym&eng mae (y)n syniad da yn_dydy .	IM be.3S.PRES PRT idea good be.3S.PRES.NEG	oh, it's a good idea, isn't it	\N	\N	943633	945003	1370	
436	stammers9	RNW	gallu cerdded o Tesco@s:cym&eng +/ .	can.NONFIN walk.NONFIN from Tesco	can walk from Tesco...	\N	\N	947243	949356	2113	
437	stammers9	ENF	ia .	yes	yes	\N	\N	949356	950088	732	
440	stammers9	RNW	+< ia .	yes	yes	\N	\N	952503	952886	383	
438	stammers9	RNW	+, dros y bont i Gonwy@s:cym&eng .	over DET bridge to Conwy	over the bridge to Conwy	\N	\N	950088	951864	1776	
442	stammers9	RNW	+< achos +// .	because	because...	\N	\N	953745	954279	534	
443	stammers9	RNW	ia # ac # cerdded at y bont i weld yr hen bont yn_de .	yes and walk.NONFIN to DET bridge to see.NONFIN DET old bridge TAG	yes, and walk to the bridge to see the old bridge, isn't it	\N	\N	957286	962963	5677	
444	stammers9	ENF	+< neu &k # xx +// .	or xx	or [...] ...	\N	\N	958691	960165	1474	
445	stammers9	ENF	oh@s:cym&eng ia # ia # i weld yr hen bont a hefyd gweld um@s:cym&eng # y &g +// .	IM yes yes to see.NONFIN DET old bridge and also see.NONFIN IM DET	oh yes, yes, to see the old bridge and also to see, um, the...	\N	\N	961953	967310	5357	
446	stammers9	ENF	er@s:cym&eng mae (y)na giât um@s:cym&eng +/ .	IM be.3S.PRES there gate IM	er, there's a gate, um...	\N	\N	967310	968997	1687	
483	stammers9	ENF	dw i (di)m ond isio iw # ailsgwennu o .	be.1S.PRES PRON.1S NEG but want POSS.3SM re_write.NONFIN PRON.3SM	I only need to re-write it	\N	\N	1028046	1030577	2531	
449	stammers9	ENF	+, er@s:cym&eng Thomas_Telford@s:cym&eng yna (y)n_does .	IM Thomas_Telford there be.3S.PRES.NEG	er, of Thomas Telford's there, isn't there	\N	\N	969497	971354	1857	
468	stammers9	ENF	oh@s:cym&eng oes ond dan ni (we)di gweld <nhw lawer> [?] gwaith yn_do .	IM be.3S.PRES but be.1PL.PRES PRON.1PL PRT.PAST see.NONFIN PRON.3PL many time yes	oh yes, but we've seen them many times, haven't we	\N	\N	999334	1002620	3286	
450	stammers9	RNW	+< oes oes .	be.3S.PRES be.3S.PRES	yes, yes	\N	\N	970843	972132	1289	
451	stammers9	ENF	faswn i yn licio mynd i fan (y)no # i +// .	be.1S.CONDIT PRON.1S PRT like.NONFIN go.NONFIN to place there to	I would like to go there, to...	\N	\N	971354	974292	2938	
477	stammers9	ENF	y [?] sgwennu ar_gyfer Y_Pentan@s:cym&eng ?	DET write.NONFIN for Y_Pentan	the writing for Y Pentan?	\N	\N	1023471	1025004	1533	
452	stammers9	RNW	oes .	be.3S.PRES	yes	\N	\N	974292	975429	1137	
469	stammers9	RNW	do # do .	yes yes	yes, yes	\N	\N	1001947	1003305	1358	
453	stammers9	ENF	+< dan ni wedi gweld hi unwaith dw meddwl dydan .	be.1PL.PRES PRON.1PL PRT.PAST see.NONFIN PRON.3SF once be.1S.PRES think.NONFIN be.1PL.PRES.NEG	we have seen it once, I think, haven't we	\N	\N	974779	977090	2311	
454	stammers9	RNW	+< do # do .	yes yes	yes, yes	\N	\N	976335	977438	1103	
455	stammers9	ENF	um@s:cym&eng # mae xx # giât right@s:cym&eng arbennig a deud y gwir dydy .	IM be.3S.PRES xx gate right special with say.NONFIN DET truth be.3S.PRES.NEG	um, it's [...] quite a special gate actually, isn't it	\N	\N	977438	981014	3576	
456	stammers9	RNW	+< xx +// .	\N	\N	\N	\N	978901	979330	429	
470	stammers9	ENF	+< dan ni (ddi)m +// .	be.1PL.PRES PRON.1PL NEG	we're not...	\N	\N	1002620	1003247	627	
457	stammers9	RNW	+< mmm@s:cym&eng .	IM	mm	\N	\N	980491	980874	383	
458	stammers9	ENF	ond mae (y)na rei ohonyn nhw w gweld yn_does yn dal i fod yn Sir_Fôn .	but be.3S.PRES there some of.3PL PRON.3PL POSS.3S see.NONFIN be.3S.PRES.NEG PRT still to be.NONFIN in Anglesey	but there are still some to be seen, aren't there, in Anglesey	\N	\N	981014	985008	3994	
459	stammers9	RNW	oes .	be.3S.PRES	yes	\N	\N	985008	985681	673	
471	stammers9	ENF	timbod ond fyswn i licio mynd i weld hwnna # gan bod Eryl_Rothwell@s:cym&eng (we)di sôn amdanyn nhw (y)n ei ddarlith de .	know.2S but be.1S.CONDIT PRON.1S like.NONFIN go.NONFIN to see.NONFIN that for be.NONFIN Eryl_Rothwell PRT.PAST mention.NONFIN about.3PL PRON.3PL in POSS.3SM lecture TAG	you know, but I'd like to go see that, seeing that Eryl Rothwell had mentioned them in his lecture, you know	\N	\N	1003247	1009087	5840	
460	stammers9	ENF	giatiau (y)r um@s:cym&eng +// .	gates DET IM	the gates of the, um...	\N	\N	985333	986738	1405	
461	stammers9	ENF	mae nhw (y)n galw nhw Saesneg yn Sunray_Gates@s:eng .	be.3PL.PRES PRON.3PL PRT call.NONFIN PRON.3PL English PRT Sunray_Gates	they call them in English Sunray Gates	\N	\N	986738	991289	4551	
478	stammers9	RNW	ia .	yes	yes	\N	\N	1025004	1025387	383	
462	stammers9	ENF	dw meddwl ia ?	be.1S.PRES think.NONFIN yes	I think, yes?	\N	\N	991289	991858	569	
472	stammers9	RNW	+< oes .	be.3S.PRES	yes	\N	\N	1004048	1004756	708	
463	stammers9	RNW	oh@s:cym&eng ia .	IM yes	oh yes	\N	\N	991544	992206	662	
464	stammers9	ENF	dw (y)n meddwl .	be.1S.PRES PRT think.NONFIN	I think so	\N	\N	992125	992856	731	
465	stammers9	RNW	ia .	yes	yes	\N	\N	992601	993146	545	
473	stammers9	RNW	+< ia # ia ia .	yes yes yes	yes, yes yes	\N	\N	1007624	1009876	2252	
466	stammers9	ENF	os dw i (y)n iawn .	if be.1S.PRES PRON.1S PRT right	if I'm right	\N	\N	993146	994180	1034	
467	stammers9	RNW	ond mae # (y)na lawer o bethau diddorol fedrwch chi weld yng Nghonwy@s:cym&eng (y)n_does # heblaw (y)r castell a (y)r +/ .	but be.3S.PRES there lot of things interesting can.2PL.NONPAST PRON.2PL see.NONFIN in Conway be.3S.PRES.NEG except DET castle and DET	but there are many interesting things you can see in Conwy, aren't there, apart from the castle and the...	\N	\N	994180	1000600	6420	
474	stammers9	RNW	ia .	yes	yes	\N	\N	1009876	1011351	1475	
479	stammers9	ENF	dw i (we)di gwneud bore (y)ma .	be.1S.PRES PRON.1S PRT.PAST do.NONFIN morning here	I've done it this morning	\N	\N	1025387	1026339	952	
475	stammers9	ENF	ie so@s:cym&eng # felly +. . .	yes so thus	yes, so...	\N	\N	1011351	1015403	4052	
476	stammers9	RNW	dw i meddwl bod gyn ti dipyn o waith i wneud hefyd ar_ôl # noson # cinio Merched_y_Wawr@s:cym&eng .	be.1S.PRES PRON.1S think.NONFIN be.NONFIN with PRON.2S a_little of work to do.NONFIN also after night dinner Merched_y_Wawr	I think you've got a lot of work to do, too, after the Merched y Wawr dinner	\N	\N	1015403	1023471	8068	
484	stammers9	RNW	ia .	yes	yes	\N	\N	1030577	1031041	464	
480	stammers9	RNW	oh@s:cym&eng ti (we)di sgwennu ar_gyfer +/?	IM PRON.2S PRT.PAST write.NONFIN for	oh, you're written for..?	\N	\N	1026049	1027570	1521	
481	stammers9	ENF	+< do (y)n fras do .	yes PRT rough yes	yes, roughly, yes	\N	\N	1026780	1028046	1266	
487	stammers9	RNW	ia .	yes	yes	\N	\N	1039040	1039656	616	
482	stammers9	RNW	+< ia .	yes	yes	\N	\N	1027639	1028046	407	
485	stammers9	ENF	a dyna ni .	and there PRON.1PL	and that's it	\N	\N	1030867	1031784	917	
489	stammers9	ENF	ond bod gynna isio sgwennu cofnodion um@s:cym&eng Merched_y_Wawr@s:cym&eng i_gyd .	but be.NONFIN with.1S want write.NONFIN minutes IM Merched_y_Wawr all	but that I need to write all of Merched y Wawr's minutes	\N	\N	1042454	1046517	4063	
486	stammers9	ENF	achos do(edd) (yn)a (ddi)m gymaint â hynny i w ddweud <a deud y> [//] gan # nad oe(dd) gynnan ni ddim um@s:cym&eng # gŵr gwadd de .	because be.3S.IMP.NEG there NEG so_much with that to POSS.3SM say with say.NONFIN DET for.NONFIN NEG be.3S.IMP with.1PL PRON.1PL NEG man guest TAG	because there wasn't that much to say, to tell the...because we didn't have a guest speaker, you know	\N	\N	1031784	1039191	7407	
488	stammers9	ENF	ond um@s:cym&eng # do dw i (we)di wneud o (y)n fras .	but IM yes be.1S.PRES PRON.1S PRT.PAST do.NONFIN PRON.3SM PRT rough	but um, yes, I've done it roughly	\N	\N	1039656	1042454	2798	
490	stammers9	RNW	+< ia .	yes	yes	\N	\N	1045507	1046053	546	
491	stammers9	ENF	dw i (ddi)m (we)di gwneud hynny ers # mis Ionawr de .	be.1S.PRES PRON.1S NEG PRT.PAST do.NONFIN that since month January TAG	I haven't done that since January, you know	\N	\N	1046517	1049965	3448	
492	stammers9	RNW	ia .	yes	yes	\N	\N	1049965	1050360	395	
543	stammers9	ENF	+< (oe)s gynnot ti isio &prə +//?	be.3S.PRES with.2S PRON.2S want	do you want to..?	\N	\N	1136982	1137969	987	
544	stammers9	ENF	+< ia &=gasp .	yes	yes	\N	\N	1138793	1140546	1753	
493	stammers9	ENF	um@s:cym&eng # felly # fydd raid mi wneud hynny ryw ddiwrnod de .	IM thus be.3S.FUT necessity PRON.1S do.NONFIN that some day TAG	um, so I'll have to do that some day, you know	\N	\N	1050360	1056444	6084	
534	stammers9	ENF	+< ia .	yes	yes	\N	\N	1123120	1123631	511	
494	stammers9	RNW	ia .	yes	yes	\N	\N	1056444	1056839	395	
513	stammers9	ENF	oh@s:cym&eng # <raid ti> [?] fynd pnawn (y)ma (y)n_bydd .	IM necessity PRON.2S go.NONFIN afternoon here be.3S.FUT.NEG	oh, you'll have to go this afternoon, won't you	\N	\N	1090008	1092888	2880	
495	stammers9	ENF	&s fyswn i (we)di medru gwneud bore (y)ma (y)n_de .	be.1S.CONDIT PRON.1S PRT.PAST can.NONFIN do.NONFIN morning here TAG	I would have been able to do this morning, you know	\N	\N	1056711	1058975	2264	
496	stammers9	RNW	ia [=! gasps] .	yes	yes	\N	\N	1058928	1059393	465	
525	stammers9	ENF	oh@s:cym&eng well@s:cym&eng fyset ti (we)di gwneud wedyn byset .	IM well be.2S.CONDIT PRON.2S PRT.PAST do.NONFIN then be.2S.CONDIT	oh well, you'd have done it then, wouldn't you	\N	\N	1102965	1105786	2821	
497	stammers9	ENF	ond um@s:cym&eng # wnes i ddim yn_de .	but IM do.1S.PAST PRON.1S NEG TAG	but um, I didn't, you know	\N	\N	1059393	1063236	3843	
514	stammers9	RNW	bydd .	be.3S.FUT	yes	\N	\N	1092888	1093247	359	
498	stammers9	ENF	mi [?] # dw i (y)n gadael o tan y funud ola de .	PRT be.1S.PRES PRON.1S PRT leave.NONFIN PRON.3SM until DET minute last TAG	I leave it until the last minute, you know	\N	\N	1063236	1067752	4516	
499	stammers9	RNW	ia .	yes	yes	\N	\N	1067752	1068158	406	
500	stammers9	ENF	&=laugh achos [=! laughs] does gynna i (ddi)m <awydd sgwennu de> [=! laughs] &=laugh .	because be.3S.PRES.NEG with.1S PRON.1S NEG desire write.NONFIN TAG	because I don't feel like writing it, you know	\N	\N	1068158	1074892	6734	
501	stammers9	RNW	+< &=laugh .	\N	\N	\N	\N	1071119	1071908	789	
515	stammers9	ENF	neu bore fory .	or morning tomorrow	or tomorrow morning	\N	\N	1093247	1094211	964	
502	stammers9	ENF	&d sgwn i pryd mae (y)r blodyn yna mynd i agor .	if_know.1S.NONPAST PRON.1S when be.3S.PRES DET flower there go.NONFIN to open.NONFIN	I wonder when that flower's going to open	\N	\N	1074892	1078596	3704	
503	stammers9	RNW	+< ah@s:cym&eng .	IM	ah	\N	\N	1076262	1076692	430	
531	stammers9	ENF	ia # ia .	yes yes	yes, yes	\N	\N	1115190	1117199	2009	
504	stammers9	ENF	dw i (we)di hen flino aros amdano fo .	be.1S.PRES PRON.1S PRT.PAST old tire.NONFIN wait.NONFIN for.3SM PRON.3SM	I've had enough of waiting for it	\N	\N	1078596	1080326	1730	
516	stammers9	RNW	bydd .	be.3S.FUT	yes	\N	\N	1094060	1094443	383	
505	stammers9	RNW	+< well@s:cym&eng mmm@s:cym&eng ie .	well IM yes	well mm, yes	\N	\N	1079199	1080581	1382	
506	stammers9	RNW	oh@s:cym&eng mae hynna (y)n atgoffa fi mae gynna isio mynd i osod blodau yn y capel # erbyn Sul nesa eto .	IM be.3S.PRES that PRT remind.NONFIN PRON.1S be.3S.PRES with.1S want go.NONFIN to set.NONFIN flowers in DET chapel by Sunday next again	oh, that reminds me, I need to go put flowers in the chapel by next Sunday	\N	\N	1080581	1086374	5793	
526	stammers9	RNW	baswn mi faswn i # baswn .	be.1S.CONDIT PRT be.1S.CONDIT PRON.1S be.1S.CONDIT	yes, I would have, yes	\N	\N	1105670	1108991	3321	
507	stammers9	ENF	oh@s:cym&eng ia .	IM yes	oh yes	\N	\N	1085933	1086908	975	
517	stammers9	RNW	dw isio glanhau nghar hefyd .	be.1S.PRES want clean.NONFIN car.POSSD.1S also	I want to clean my car, too	\N	\N	1094443	1095918	1475	
508	stammers9	RNW	ia .	yes	yes	\N	\N	1086908	1087373	465	
509	stammers9	ENF	oes ?	be.3S.PRES	yes?	\N	\N	1087326	1087733	407	
510	stammers9	RNW	oes .	be.3S.PRES	yes	\N	\N	1087733	1088406	673	
518	stammers9	ENF	oes ?	be.3S.PRES	do you?	\N	\N	1095918	1096626	708	
511	stammers9	ENF	xx blodau ffug yeah@s:cym&eng ?	xx flowers fake yeah	[...] fake flowers, yeah?	\N	\N	1088267	1089521	1254	
512	stammers9	RNW	ia .	yes	yes	\N	\N	1089521	1090008	487	
519	stammers9	RNW	oes .	be.3S.PRES	yes	\N	\N	1096626	1097114	488	
527	stammers9	ENF	wnei di (ddi)m gwerthu dy gar@s:cym&eng wan ?	do.2S.NONPAST PRON.2S NEG sell.NONFIN POSS.2S car now	you won't sell your car now?	\N	\N	1108991	1110755	1764	
520	stammers9	ENF	ti am wneud heddiw ?	PRON.2S for do.NONFIN today	you going to do so today?	\N	\N	1097114	1097799	685	
521	stammers9	RNW	ella wna i pnawn (y)ma gan bod hi (y)n braf .	perhaps do.1S.NONPAST PRON.1S afternoon here for be.NONFIN PRON.3SF PRT fine	perhaps I will this afternoon seeing that it's nice	\N	\N	1097799	1100388	2589	
522	stammers9	ENF	+< yeah@s:cym&eng # mae (y)n braf yndy ac yn sych yndy .	yeah be.3S.PRES PRT fine be.3S.PRES and PRT dry be.3S.PRES	yeah, it is nice, yes, and dry, yes	\N	\N	1099784	1102477	2693	
528	stammers9	RNW	(ddi)m yn gwybod .	NEG PRT know.NONFIN	don't know	\N	\N	1110755	1111974	1219	
523	stammers9	RNW	+< yndy .	be.3S.PRES	yes	\N	\N	1101165	1101676	511	
524	stammers9	RNW	(y)dy .	be.3S.PRES	yes	\N	\N	1102477	1102965	488	
532	stammers9	ENF	fydd raid ti # benderfynu yn_bydd erbyn dydd Llun .	be.3S.FUT necessity PRON.2S decide.NONFIN be.3S.FUT.NEG by day Monday	you'll have decide, won't you, by Monday	\N	\N	1117199	1120241	3042	
529	stammers9	ENF	well@s:cym&eng +/ .	well	well	\N	\N	1111974	1114412	2438	
530	stammers9	RNW	heb benderfynu eto .	without decide.NONFIN yet	haven't decided yet	\N	\N	1114145	1115492	1347	
538	stammers9	ENF	well@s:cym&eng # dw i (ddi)m yn gwybod .	well be.1S.PRES PRON.1S NEG PRT know.NONFIN	well, I don't know	\N	\N	1126011	1130260	4249	
533	stammers9	RNW	well@s:cym&eng # dw i (ddi)m yn gwybod be wna i .	well be.1S.PRES PRON.1S NEG PRT know.NONFIN what do.1S.NONPAST PRON.1S	well, I don't know what I'll do	\N	\N	1120241	1123445	3204	
537	stammers9	RNW	ia .	yes	yes	\N	\N	1125697	1126046	349	
535	stammers9	RNW	ella mai gadw fo gwna i .	perhaps PRT keep.NONFIN PRON.3SM do.1S.NONPAST PRON.1S	perhaps I'll keep it	\N	\N	1123445	1124629	1184	
536	stammers9	ENF	+< yeah@s:cym&eng # ia am (y)chydig yeah@s:cym&eng ?	yeah yes for a_little yeah	yeah, yes, for a little, yeah?	\N	\N	1123828	1125697	1869	
539	stammers9	ENF	gawn ni fynd i (y)r shop@s:cym&eng llyfrau Gymraeg er@s:cym&eng dydd Llun .	get.1PL.NONPAST PRON.1PL go.NONFIN to DET shop books Welsh IM day Monday	we can go to the Welsh book shop on Monday	\N	\N	1130260	1135020	4760	
540	stammers9	RNW	cawn .	get.1PL.NONPAST	yes	\N	\N	1135020	1135554	534	
541	stammers9	ENF	yn Rhyl@s:cym&eng .	in Rhyl	in Rhyl	\N	\N	1135554	1136123	569	
542	stammers9	RNW	cawn dan ni isio &pr [/] prynu (y)chydig o gardiau Cymraeg .	get.1PL.NONPAST be.1PL.PRES PRON.1PL want buy.NONFIN a_little of cards Welsh	yes, we want to buy a few Welsh cards	\N	\N	1136123	1139281	3158	
588	stammers9	RNW	yndyn mae nhw dda iawn # yndyn .	be.3PL.PRES be.3PL.PRES PRON.3PL good very be.3PL.PRES	yes, they're very good, yes	\N	\N	1212184	1215458	3274	
545	stammers9	ENF	dw i (ddi)m yn meddwl bod gynna isio prynu llyfr a deud y gwir .	be.1S.PRES PRON.1S NEG PRT think.NONFIN be.NONFIN with.1S want buy.NONFIN book with say.NONFIN DET truth	I don't think I want to buy a book, to tell the truth	\N	\N	1140546	1144749	4203	
564	stammers9	RNW	ia .	yes	yes	\N	\N	1176386	1176816	430	
546	stammers9	RNW	ia .	yes	yes	\N	\N	1144749	1145469	720	
547	stammers9	ENF	um@s:cym&eng # ga i fenthyg nhw yn y llyfrgell rhein rŵan caf .	IM get.1S.NONPAST PRON.1S borrow.NONFIN PRON.3PL in DET library these now get.1S.NONPAST	um, I can borrow them in the library, these now, can't I	\N	\N	1145237	1148557	3320	
576	stammers9	RNW	mae [?] (y)na luniau +/ .	be.3S.PRES there pictures	there are photos...	\N	\N	1194363	1195373	1010	
548	stammers9	RNW	cei mi gei di # benthyg nhw .	get.2S.NONPAST PRT get.2S.NONPAST PRON.2S borrow.NONFIN PRON.3PL	yes you can borrow them	\N	\N	1148557	1151564	3007	
565	stammers9	ENF	&=gasp yeah@s:cym&eng .	yeah	yeah	\N	\N	1176816	1177431	615	
549	stammers9	ENF	+< mmm@s:cym&eng .	IM	mm	\N	\N	1150334	1150763	429	
550	stammers9	ENF	ah@s:cym&eng [?] .	IM	ah	\N	\N	1151564	1152365	801	
551	stammers9	RNW	mmm@s:cym&eng .	IM	mm	\N	\N	1152365	1152923	558	
566	stammers9	RNW	Cefn_Gwlad@s:cym&eng gan Geoff_Charles@s:cym&eng .	Cefn_Gwlad by Geoff_Charles	Cefn Gwlad by Geoff Charles	\N	\N	1177350	1179289	1939	
552	stammers9	ENF	<so@s:cym&eng felly> [?] # mi um@s:cym&eng +. . .	so thus PRT um	so, um...	\N	\N	1152923	1156011	3088	
553	stammers9	ENF	dim ond cael golwg be sy (y)na (y)n_te .	NEG but get.NONFIN look what be.PRES.REL there TAG	only have a look at what's there, right	\N	\N	1156011	1160376	4365	
582	stammers9	RNW	ie .	yes	yes	\N	\N	1202467	1203105	638	
554	stammers9	RNW	ia .	yes	yes	\N	\N	1160167	1160818	651	
567	stammers9	ENF	ia .	yes	yes	\N	\N	1179289	1179742	453	
555	stammers9	ENF	xx # ti wedi cael golwg ar dy lyfr ar llyfr &d er@s:cym&eng Geoff_Charles@s:cym&eng ?	xx PRON.2S PRT.PAST get.NONFIN look at POSS.2S book at book IM Geoff_Charles	[...] have you had a look at your book, er Geoff Charles's book?	\N	\N	1160818	1166959	6141	
556	stammers9	RNW	ydw .	be.1S.PRES	yes	\N	\N	1166959	1168248	1289	
577	stammers9	ENF	+< ia darlunio (y)r chwedegau .	yes portray.NONFIN DET sixties	yes, portraying the sixties	\N	\N	1194386	1195977	1591	
557	stammers9	RNW	<mae o (y)n> [?] +/ .	be.3S.PRES PRON.3SM PRT	it's...	\N	\N	1168248	1168991	743	
568	stammers9	RNW	oedd o (y)n gip ar [//] nôl # ar yr hen ffordd gymreig o fyw .	be.3S.IMP PRON.3SM PRT glance at back at DET old way welsh of live.NONFIN	it was a look back at the old Welsh way of living	\N	\N	1179742	1183693	3951	
558	stammers9	ENF	+< do ?	yes	have you?	\N	\N	1168585	1168886	301	
559	stammers9	RNW	do mae o (y)n dda iawn .	yes be.3S.PRES PRON.3SM PRT good very	yes, it's very good	\N	\N	1168991	1170442	1451	
560	stammers9	ENF	yndy .	be.3S.PRES	yes	\N	\N	1170349	1170849	500	
569	stammers9	ENF	oedd .	be.3S.IMP	yes	\N	\N	1183693	1184332	639	
561	stammers9	RNW	yr llyfr wnes i brynu # ar_ôl i mi ennill # croesair .	DET book do.1S.NONPAST PRON.1S buy.NONFIN after for PRON.1S win.NONFIN crossword	the book I bought after I won a crossword	\N	\N	1170849	1174935	4086	
562	stammers9	ENF	+< yeah@s:cym&eng # oh@s:cym&eng yeah@s:cym&eng .	yeah oh yeah	yeah, oh yeah	\N	\N	1172706	1174517	1811	
563	stammers9	ENF	ia hwnna wnest ti brynu yeah@s:cym&eng ?	yes that do.2S.NONPAST PRON.2S buy.NONFIN yeah	yes, you bought that one, did you?	\N	\N	1174935	1176386	1451	
570	stammers9	ENF	&ɒ &v yn y pumdegau ydy o # ia rhan fwya ?	in DET fifties be.3S.PRES PRON.3SM yes part biggest	it's in the fifties, yes, most of it?	\N	\N	1184332	1188419	4087	
578	stammers9	RNW	ie mae (y)na luniau da iawn yma .	yes be.3S.PRES there pictures good very here	yes there are very good photos here	\N	\N	1195977	1198032	2055	
571	stammers9	RNW	ia # ia .	yes yes	yes, yes	\N	\N	1187943	1189080	1137	
572	stammers9	ENF	pumdegau (y)dy rhan fwya yeah@s:cym&eng ?	fifties be.3S.PRES part biggest yeah	most of it's the fifties, yeah?	\N	\N	1188976	1190358	1382	
586	stammers9	RNW	xx yndyn .	xx be.3PL.PRES	xx yes	\N	\N	1210176	1211256	1080	
573	stammers9	RNW	ia dw meddwl ia .	yes be.1S.PRES think.NONFIN yes	yes, I think so, yes	\N	\N	1190358	1192250	1892	
579	stammers9	ENF	oh@s:cym&eng mae (y)na rei da iawn # yn (enw)edig o (y)r +// .	IM be.3S.PRES there some good very PRT particular of DET	oh there are some very good ones, especially of the...	\N	\N	1197068	1199541	2473	
574	stammers9	ENF	oes (yn)a chwedegau (y)na hefyd ?	be.3S.PRES there sixties there also	is there some sixties there too?	\N	\N	1191809	1193295	1486	
575	stammers9	RNW	well@s:cym&eng dw i (ddi)m yn gwybod .	well be.1S.PRES PRON.1S NEG PRT know.NONFIN	well, I don't know	\N	\N	1193295	1194363	1068	
583	stammers9	ENF	+, dramps@s:cym&eng yn_de (y)r hen gardotwyr .	tramps TAG DET old beggars	tramps, isn't it, the old beggars	\N	\N	1203012	1205207	2195	
580	stammers9	RNW	+< oes y chwedegau hefyd .	be.3S.PRES DET sixties also	yes, the sixties too	\N	\N	1198345	1200029	1684	
581	stammers9	ENF	oh@s:cym&eng yeah@s:cym&eng # a (y)r hen gardotwyr y hen +/ .	IM yeah and DET old beggars DET old	oh yeah, and the old beggars, the old...	\N	\N	1199622	1202467	2845	
584	stammers9	RNW	ia .	yes	yes	\N	\N	1205207	1205961	754	
585	stammers9	ENF	a <dw i &g> [//] dw i meddwl bod rheiny dda # yn arbennig o dda dw i meddwl .	and be.1S.PRES PRON.1S be.1S.PRES PRON.1S think.NONFIN be.NONFIN those good PRT special of good be.1S.PRES PRON.1S think.NONFIN	and I...I think those are good, very good, I think	\N	\N	1205636	1210176	4540	
587	stammers9	ENF	yn_dydyn .	be.3PL.PRES.NEG	aren't they	\N	\N	1211256	1212184	928	
589	stammers9	RNW	xx mae (y)na lun da +/ .	xx be.3S.PRES there picture good	[...] there's a good photo...	\N	\N	1215458	1217711	2253	
590	stammers9	ENF	mae dda bod um@s:cym&eng +// .	be.3S.PRES good be.NONFIN IM	it's good that, um...	\N	\N	1217525	1218802	1277	
591	stammers9	ENF	mae rheina luniau bob un o (y)r lluniau yna mae nhw (we)di ymddangos yn eu tro yn y [=? er@s:cym&eng] # er@s:cym&eng +/ .	be.3S.PRES those picture every one of DET pictures there be.3PL.PRES PRON.3PL PRT.PAST appear.NONFIN in POSS.3PL turn in DET IM	those are photos...every one of those photos, they've appeared in turn in the, er...	\N	\N	1218802	1225304	6502	
592	stammers9	RNW	yn y Cymro@s:cym&eng ia ?	in DET Cymro yes	in the Cymro, yes?	\N	\N	1224851	1225872	1021	
593	stammers9	ENF	ia # dyna ti ia .	yes there PRON.2S yes	yes, that's it, yes	\N	\N	1225872	1227777	1905	
594	stammers9	RNW	ia .	yes	yes	\N	\N	1227777	1228334	557	
595	stammers9	RNW	ia yndyn mae nhw dda iawn .	yes be.3PL.PRES be.3PL.PRES PRON.3PL good very	yes, yes, they're very good	\N	\N	1228334	1231213	2879	
611	stammers9	ENF	ia .	yes	yes	\N	\N	1273315	1273837	522	
596	stammers9	ENF	heb feddwl bod y # cyfnod i_gyd er@s:cym&eng # well@s:cym&eng # yn cael ei gofnodi de .	without think.NONFIN be.NONFIN DET period all IM well PRT get.NONFIN POSS.3SM record.NONFIN TAG	without mentioning that the whole period is, er, well, being put on record, you know	\N	\N	1231016	1238272	7256	
597	stammers9	RNW	+< yn +// .	PRT	\N	\N	\N	1236716	1237215	499	
598	stammers9	RNW	ia # yeah@s:cym&eng mae (y)na +/ .	yes yeah be.3S.PRES there	yes, yeah there's...	\N	\N	1238272	1241151	2879	
679	stammers9	ENF	am # be oedd o (y)n siarad ?	about what be.3S.IMP PRON.3SM PRT speak.NONFIN	what was he talking about?	\N	\N	1441052	1443618	2566	
599	stammers9	ENF	wrth_gwrs mae (y)na rei yn gynharach na (y)r pumdegau (y)n_does # neu yn llyfr arall Geoff_Charles@s:cym&eng .	of_course be.3S.PRES there some PRT earlier PRT DET fifties be.3S.PRES.NEG or in book other Geoff_Charles	of course, some are earlier than the fifties, aren't they, or in Geoff Charles's other book	\N	\N	1241151	1247177	6026	
612	stammers9	RNW	+, clawr y llyfr # mwy diweddar .	cover DET book more recent	the cover of the more recent book	\N	\N	1273837	1276031	2194	
600	stammers9	RNW	+< oes .	be.3S.PRES	yes	\N	\N	1245110	1245818	708	
601	stammers9	RNW	ia # yeah@s:cym&eng mae hwnnw gynna i hefyd .	yes yeah be.3S.PRES that with.1S PRON.1S also	yes, yeah I've got that too	\N	\N	1246898	1248988	2090	
622	stammers9	ENF	a fedra i (ddi)m cofio be oedd ei enw fo .	and can.1S.NONPAST PRON.1S NEG remember.NONFIN what be.3S.IMP POSS.3SM name PRON.3SM	and I can't remember what his name was	\N	\N	1289929	1291867	1938	
602	stammers9	ENF	(y)ndy # mmm@s:cym&eng .	be.3S.PRES IM	yes, mm	\N	\N	1248825	1251043	2218	
613	stammers9	ENF	+< ia fedra i (ddi)m cofio be (y)dy enw nhw .	yes can.1S.NONPAST PRON.1S NEG remember.NONFIN what be.3S.PRES name PRON.3PL	yes, I can't remember what they're called	\N	\N	1274464	1276589	2125	
603	stammers9	RNW	xx <be oedd y> [//] &ɬ llun pwy oedd ar # flaen hwnnw ?	xx what be.3S.IMP DET picture who be.3S.IMP on front that	[...] what was the...whose picture was on the front of that?	\N	\N	1251043	1256302	5259	
604	stammers9	ENF	um@s:cym&eng llun um@s:cym&eng +// .	IM picture IM	um, picture, um...	\N	\N	1256302	1258442	2140	
605	stammers9	ENF	oh@s:cym&eng dydw i (ddi)m yn cofio be (y)dy enw fo .	IM be.1S.PRES.NEG PRON.1S NEG PRT remember.NONFIN what be.3S.PRES name PRON.3SM	oh, I don't remember his name	\N	\N	1258442	1261055	2613	
614	stammers9	ENF	<oedd o (y)n> [/] # &ba er@s:cym&eng oedd o (y)n fardd yn_doedd .	be.3S.IMP PRON.3SM PRT IM be.3S.IMP PRON.3SM PRT poet be.3S.IMP.NEG	he was...er, he was a poet, wasn't he	\N	\N	1276589	1279085	2496	
606	stammers9	ENF	<(oe)dden nhw (y)n> [/] # oedden nhw mynd i ymddeol yn_doedden i Loegr a +. . .	be.3PL.PRES PRON.3PL PRT be.3PL.PRES PRON.3PL go.NONFIN to retire.NONFIN be.3PL.PRES.NEG to England and	they were...they were going to retire, weren't they, to England, and...	\N	\N	1261055	1264189	3134	
607	stammers9	RNW	um@s:cym&eng # oedden .	IM be.3PL.PRES	um, yes	\N	\N	1264189	1265373	1184	
628	stammers9	RNW	ia at y mab yn_de .	yes to DET son TAG	yes, with their son, isn't it	\N	\N	1307367	1308853	1486	
608	stammers9	ENF	+< ia .	yes	yes	\N	\N	1264863	1265222	359	
615	stammers9	RNW	oedd .	be.3S.IMP	yes	\N	\N	1278922	1279503	581	
609	stammers9	ENF	&d ia dw (ddi)m yn cofio be oedd +. . .	yes be.1S.PRES NEG PRT remember.NONFIN what be.3S.IMP	yes, I don't remember what was...	\N	\N	1265373	1267440	2067	
610	stammers9	RNW	xx (y)r llun er@s:cym&eng # dau fachgen bach # yn godro buwch sydd ar er@s:cym&eng [=? y] +/ .	xx DET picture IM two.M boy small PRT milk.NONFIN cow be.PRES.REL on IM	[...] the picture of two little boys milking a cow is on er...	\N	\N	1267440	1273315	5875	
623	stammers9	ENF	um@s:cym&eng # yfo a (e)i wraig # xx gorod gadael y farm@s:cym&eng # yn +/ .	IM PRON.3SM and POSS.3SM wife xx must.NONFIN leave.NONFIN DET farm in	um, him and his wife [...] had to leave the farm in...	\N	\N	1291867	1300389	8522	
616	stammers9	ENF	bardd gwlad oedd o (y)n_de .	poet country be.3S.IMP PRON.3SM TAG	he was a peasant poet, wasn't he	\N	\N	1279085	1280687	1602	
617	stammers9	RNW	ia .	yes	yes	\N	\N	1280385	1280884	499	
624	stammers9	RNW	oedden .	be.3PL.IMP	yes	\N	\N	1300389	1301039	650	
618	stammers9	RNW	a (y)r geiriau # <y mae nhw (y)n eu> [//] # yn disgrifio (y)r llun # ydy +"/ .	and DET words PRT be.3PL.PRES PRON.3PL PRT POSS.3PL PRT describe.NONFIN DET picture be.3S.PRES	and the words they...describing the photo are:	\N	\N	1280884	1287351	6467	
619	stammers9	RNW	+" rw i (y)n edrych dros y bryniau pell .	be.1S.PRES PRON.1S PRT look.NONFIN over DET hills far	"I'm looking over the distant hills"	\N	\N	1287351	1289224	1873	
632	stammers9	ENF	+< oedd [=! gasp] oedd .	be.3S.IMP be.3S.IMP	yes, yes	\N	\N	1312313	1313857	1544	
620	stammers9	ENF	+< ia # ia ia .	yes yes yes	yes, yes yes	\N	\N	1288361	1289929	1568	
625	stammers9	ENF	+, yn ymyl Beddgelert@s:cym&eng yn_de +/ .	in side Beddgelert TAG	near Beddgelert, right	\N	\N	1301039	1302967	1928	
621	stammers9	RNW	ia ?	yes	yes?	\N	\N	1289224	1289433	209	
629	stammers9	ENF	ia .	yes	yes	\N	\N	1308412	1309178	766	
626	stammers9	RNW	ia .	yes	yes	\N	\N	1302630	1303199	569	
627	stammers9	ENF	+, oh@s:cym&eng # a mynd i fyw i # berfeddion Lloegr de .	IM and go.NONFIN to live.NONFIN to entrails England TAG	oh, and go live in deepest darkest England, right	\N	\N	1303199	1307703	4504	
630	stammers9	ENF	er@s:cym&eng llun trist iawn mewn ffordd de .	IM picture sad very in way TAG	er, a very sad photo in a way, you know	\N	\N	1309178	1312162	2984	
634	stammers9	ENF	ond um@s:cym&eng # dw meddwl bod nhw (y)n [/] # yn lyfr um@s:cym&eng # well@s:cym&eng gwerth ei brynu &d &=laugh dim_ond cofnod o hanes .	but IM be.1S.PRES think.NONFIN be.NONFIN PRON.3PL PRT PRT book IM well worth POSS.3SM buy.NONFIN only record of history	but um, I think they're a book, um, well, worth buying, only as a record of history	\N	\N	1317653	1329913	12260	
631	stammers9	RNW	oedd oedd .	be.3S.IMP be.3S.IMP	yes, yes	\N	\N	1311837	1313056	1219	
633	stammers9	ENF	trist iawn # deud y gwir .	sad very say.NONFIN DET truth	very sad to tell the truth	\N	\N	1313857	1317653	3796	
635	stammers9	RNW	+< yndy mae (y)n dda iawn .	be.3S.PRES be.3S.PRES PRT good very	yes, it's very good	\N	\N	1327351	1328721	1370	
680	stammers9	RNW	um@s:cym&eng # er@s:cym&eng # caneuon gwerin .	IM IM songs folk	um, er, folk songs	\N	\N	1443618	1448935	5317	
681	stammers9	ENF	oh@s:cym&eng ia .	IM yes	oh yes	\N	\N	1448935	1449829	894	
682	stammers9	RNW	ia .	yes	yes	\N	\N	1449771	1450247	476	
683	stammers9	ENF	ia [=! gasps] .	yes	yes	\N	\N	1450247	1450816	569	
636	stammers9	ENF	dw i (y)n gobeithio rhywbryd yn ystod yr ha # cael mynd i_fyny i um@s:cym&eng # uwchben Conwy@s:cym&eng # i weld eglwys Llangelynin@s:cym&eng .	be.1S.PRES PRON.1S PRT hope.NONFIN sometime in range DET summer get.NONFIN go.NONFIN up to IM above Conwy to see.NONFIN church Llangelynin	I hope sometime during the summer to go up to, um, above Conwy, to see Llangelynin church	\N	\N	1329913	1340087	10174	
659	stammers9	RNW	oh@s:cym&eng yeah@s:cym&eng ?	IM yeah	oh yeah?	\N	\N	1413292	1414024	732	
637	stammers9	RNW	ia fysai (y)n ddiddorol yn_bysai .	yes be.3S.CONDIT PRT interesting be.3S.CONDIT	yes, it would be interesting, wouldn't it	\N	\N	1340076	1341701	1625	
651	stammers9	RNW	ia .	yes	yes	\N	\N	1394496	1395494	998	
638	stammers9	ENF	basai .	be.3S.CONDIT	yes	\N	\N	1341434	1341887	453	
639	stammers9	ENF	mae [/] mae [/] mae (y)r hanes um@s:cym&eng # yr eglwys yn un o (y)r # <cant o eglwysi mwya diddorol> [//] # <y rei> [//] er@s:cym&eng um@s:cym&eng cant o (y)r eglwysi er@s:cym&eng gorau # yng Nghymru # y llyfr wnes i ennill # yn y Daily_Post@s:cym&eng yn_de .	be.3S.PRES be.3S.PRES be.3S.PRES DET history IM DET church in one of DET hundred of churches most interesting DET some IM IM hundred of DET churches IM best in Wales DET book do.1S.PAST PRON.1S win.NONFIN in DET Daily_Post TAG	the histroy, um, of the curch is in one of the hundred most interesting churches...the ones...er, um, hundred of the, er, best churches in Wales, the book I won in the Daily Post, you know	\N	\N	1341887	1358129	16242	
640	stammers9	RNW	+< yndy .	DET book	the book	\N	\N	1354217	1354681	464	
652	stammers9	ENF	sure@s:cym&eng bod o (y)n gobeithio gwerthu (e)i dŷ yn_tydy .	sure be.NONFIN PRON.3SM PRT hope.NONFIN sell.NONFIN POSS.3SM house be.3S.PRES.NEG	he's probably trying to sell his house, isn't he	\N	\N	1395111	1397526	2415	
641	stammers9	RNW	+< ia .	yes	yes	\N	\N	1355610	1356109	499	
642	stammers9	RNW	+< yndy .	be.3S.PRES	yes	\N	\N	1357618	1358141	523	
665	stammers9	RNW	wnes i fwynhau y noson # cinio Gŵyl_Ddewi (y)r gymdeithas # noson o (y)r blaen .	do.1S.PAST PRON.1S enjoy.NONFIN DET night dinner St_David's_Day DET society night of DET front	I enjoyed the society's St David's Day dinner the other night	\N	\N	1420595	1426272	5677	
643	stammers9	RNW	yndy .	be.3S.PRES	yes	\N	\N	1358141	1359650	1509	
653	stammers9	RNW	yndy mae o .	be.3S.PRES be.3S.PRES PRON.3SM	yes, he is	\N	\N	1397131	1398339	1208	
644	stammers9	ENF	um@s:cym&eng # (fe)lly dw i (y)n gobeithio mae sure@s:cym&eng mai tua mis Mehefin yn_de # y bydd (y)na wasanaeth yno # ar bnawn Sul .	IM thus be.1S.PRES PRON.1S PRT hope.NONFIN be.3S.PRES sure PRT approximately month June TAG PRT be.3S.FUT there service there on afternoon Sunday	um, so I hope, it'll probably be about June you know, that there'll be a service there on a Sunday afternoon	\N	\N	1359093	1366570	7477	
645	stammers9	RNW	+< ia .	yes	yes	\N	\N	1363981	1364457	476	
660	stammers9	ENF	mae (y)na ddau gar@s:cym&eng er@s:cym&eng yn ei le fo .	be.3S.PRES there two.M car IM in POSS.3SM place PRON.3SM	there are two cars at his place	\N	\N	1414024	1416094	2070	
646	stammers9	ENF	(fe)lly gobeithio cael mynd yno .	thus hope.NONFIN get.NONFIN go.NONFIN there	so hope to be able to go there	\N	\N	1366570	1369600	3030	
654	stammers9	ENF	ond um@s:cym&eng # mae sure@s:cym&eng mai dipyn yn hir yn mynd fydd o (y)n_de # a deud y gwir .	but IM be.3S.PRES sure PRT a_little PRT long PRT go.NONFIN be.3S.FUT PRON.3SM TAG with say.NONFIN DET truth	but um, he'll probably be quite long going, won't he, to tell the truth	\N	\N	1398339	1405328	6989	
647	stammers9	ENF	mae (y)r dyn er@s:cym&eng # Mr_Griffiths@s:cym&eng yn byw yn y cefn # mae o (y)n brysur heddiw (y)n_dydy .	be.3S.PRES DET man IM Mr_Griffiths PRT live.NONFIN in DET back be.3S.PRES PRON.3SM PRT busy today be.3S.PRES.NEG	the man, er, Mr Griffiths, living at the back, he's busy today, isn't he	\N	\N	1369600	1390456	20856	
648	stammers9	RNW	+< ie .	yes	yes	\N	\N	1388993	1389480	487	
649	stammers9	RNW	oh@s:cym&eng yndy ?	IM be.3S.PRES	oh is he?	\N	\N	1390189	1391083	894	
655	stammers9	RNW	ie sure@s:cym&eng o fod .	yes sure of be.NONFIN	yes, probably	\N	\N	1405328	1406756	1428	
650	stammers9	ENF	<mae fab o (y)n> [//] # mae o wrthi (y)n cario ryw bethau .	be.3S.PRES son PRON.3SM PRT be.3S.PRES PRON.3SM at.3SF carry.NONFIN some things	his son is...he's busy carrying some things	\N	\N	1390908	1394496	3588	
656	stammers9	ENF	yndy ond mae (y)n gwella rŵan gan bod y gwanwyn (we)di dŵad dydy .	be.3S.PRES but be.3S.PRES PRT improve.NONFIN now for be.NONFIN DET spring PRT.PAST come.NONFIN be.3S.PRES.NEG	yes but it's getting better now as spring has arrived, isn't it	\N	\N	1406582	1410227	3645	
661	stammers9	ENF	felly mae mynd ar ddydd Gwener i gerdded dydy .	thus be.3S.PRES go.NONFIN on day Friday to walk.NONFIN be.3S.PRES.NEG	so he goes walking on Fridays, doesn't he	\N	\N	1416094	1418412	2318	
657	stammers9	RNW	yndy .	be.3S.PRES	yes	\N	\N	1410181	1410761	580	
658	stammers9	ENF	dw i meddwl bod Mr_Samuel@s:cym&eng (we)di mynd i gerdded .	be.1S.PRES PRON.1S think.NONFIN be.NONFIN Mr_Samuel PRT.PAST go.NONFIN to walk.NONFIN	I think Mr Samuel's gone walking	\N	\N	1410761	1413292	2531	
668	stammers9	ENF	+< fedrwn +// .	can.1S.PAST	I could...	\N	\N	1428502	1429012	510	
666	stammers9	ENF	oh@s:cym&eng do # do .	IM yes yes	oh yes, yes	\N	\N	1425065	1427840	2775	
662	stammers9	RNW	yndy .	be.3S.PRES	yes	\N	\N	1418354	1418981	627	
663	stammers9	RNW	ges i +/ .	get.1S.PAST PRON.1S	I got...	\N	\N	1418981	1420467	1486	
664	stammers9	ENF	+< deud y gwir .	say.NONFIN DET truth	to tell the truth	\N	\N	1419887	1420595	708	
670	stammers9	RNW	+< um@s:cym&eng +// .	IM	um...	\N	\N	1430661	1431311	650	
667	stammers9	RNW	gaethon ni # bryd blasus iawn .	get.1PL.PAST PRON.1PL meal tasty very	we had a very tasty meal	\N	\N	1427642	1429906	2264	
669	stammers9	ENF	ia (fe)drwn i (ddi)m dŵad na fedrwn .	yes can.1S.PAST PRON.1S NEG come.NONFIN NEG can.1S.PAST	yes, I couldn't come, could I	\N	\N	1429813	1431392	1579	
672	stammers9	RNW	oedd .	be.3S.IMP	yes	\N	\N	1432762	1433204	442	
671	stammers9	ENF	o'n i (we)di tynnu dant doeddwn .	be.1S.IMP PRON.1S PRT.PAST take.NONFIN tooth be.1PL.IMP.NEG	I'd lost [?] a tooth, hadn't I	\N	\N	1431392	1433064	1672	
673	stammers9	RNW	Aled_Lloyd_Davies@s:cym&eng # yn siarad yn dda iawn ia .	Aled_Lloyd_Davies PRT speak.NONFIN PRT good very yes	Aled Lloyd Davies spoke very well, yes	\N	\N	1433204	1437302	4098	
674	stammers9	ENF	+< ia ?	yes	yes?	\N	\N	1435502	1435978	476	
675	stammers9	ENF	+< ia .	yes	yes	\N	\N	1436640	1437174	534	
676	stammers9	ENF	ia .	yes	yes	\N	\N	1437302	1438463	1161	
677	stammers9	RNW	oedd .	be.3S.IMP	yes	\N	\N	1438463	1439252	789	
678	stammers9	ENF	ia .	yes	yes	\N	\N	1439252	1441052	1800	
684	stammers9	RNW	xx y Cymdeithas_Alawon_Gwerin # yn gant oed eleni .	xx DET Society_of_Folk_Songs PRT hundred age this_year	[...] the Society of Folk Songs is a hundred this year	\N	\N	1450816	1455634	4818	
703	stammers9	RNW	+< oedd .	be.3S.IMP	yes	\N	\N	1493467	1493966	499	
685	stammers9	ENF	+< oedd o (y)n &ka +// .	be.3S.IMP PRON.3SM PRT	he was...	\N	\N	1451942	1452801	859	
686	stammers9	ENF	yndy ?	be.3S.PRES	is it?	\N	\N	1455634	1456157	523	
687	stammers9	RNW	yndy .	be.3S.PRES	yes	\N	\N	1456157	1456679	522	
704	stammers9	RNW	oedd .	be.3S.IMP	yes	\N	\N	1494256	1495150	894	
688	stammers9	ENF	ah@s:cym&eng .	IM	ah	\N	\N	1456679	1457445	766	
689	stammers9	RNW	yndy .	be.3S.PRES	yes	\N	\N	1457445	1458444	999	
690	stammers9	ENF	a pwy oedd (we)di sefydlu ?	and who be.3S.IMP PRT.PAST establish.NONFIN	and who established?	\N	\N	1458444	1460232	1788	
705	stammers9	ENF	well@s:cym&eng mae sure@s:cym&eng xx llawer o ganeuon # bron (we)di mynd ar_go(ll) [//] # difancoll de .	well be.3S.PRES sure xx many of songs almost PRT.PAST go.NONFIN lost oblivion	well, probably [...] a lot of songs had almost gone into oblivion, isn't it	\N	\N	1495150	1500387	5237	
691	stammers9	RNW	um@s:cym&eng # &=sigh Lady@s:cym&eng Herbert_Lewis@s:cym&eng .	IM Lady Herbert_Lewis	um, Lady Herbert Lewis	\N	\N	1460232	1465839	5607	
692	stammers9	ENF	oh@s:cym&eng .	IM	oh	\N	\N	1465630	1466211	581	
693	stammers9	RNW	oedd hi (y)n byw yn Plas_Penucha@s:cym&eng Caerwys@s:cym&eng .	be.3S.IMP PRON.3SM PRT live.NONFIN in Plas_Penucha Caerwys	he lived at Plas Penucha, Caerwys	\N	\N	1465839	1467952	2113	
706	stammers9	RNW	+< &a ar_goll .	lost	lost	\N	\N	1498993	1500050	1057	
694	stammers9	ENF	oh@s:cym&eng ia ?	IM yes	oh yes?	\N	\N	1467952	1468510	558	
695	stammers9	RNW	ia .	yes	yes	\N	\N	1468510	1468962	452	
696	stammers9	ENF	o:h@s:cym&eng .	IM	oh	\N	\N	1468962	1470448	1486	
707	stammers9	RNW	ia ia .	yes yes	yes, yes	\N	\N	1500143	1501106	963	
697	stammers9	RNW	ia .	yes	yes	\N	\N	1470007	1470448	441	
698	stammers9	RNW	oedd hi (we)di gwneud lot@s:cym&eng iawn o waith +/ .	be.3S.IMP PRON.3SF PRT.PAST do.NONFIN lot very of work	she'd done a lot of work...	\N	\N	1470448	1472979	2531	
699	stammers9	ENF	cant oed felly un naw # dim saith <oedd o (we)di> [/] # <oedd o (we)di dechr(au)> [//] oedd o <(we)di &g> [//] wedi sefydlu .	hundred age thus one nine zero seven be.3S.IMP PRON.3SM PRT.PAST be.3S.IMP PRON.3SM PRT.PAST start.NONFIN be.3S.IMP PRON.3SM PRT.PAST PRT.PAST established.NONFIN	hundred years, so nineteen oh seven it was...it was started...it was...was established	\N	\N	1472979	1480596	7617	
708	stammers9	ENF	ond efallai # wedi cael ryw [?] # bobl # wedi gwra(ndo) [//] clywed rei (y)n canu +/ .	but perhaps PRT.PAST get.NONFIN some people PRT.PAST listen.NONFIN hear.NONFIN some PRT sing.NONFIN	but perhaps had had some people listening...hearing some singing...	\N	\N	1501106	1510069	8963	
700	stammers9	RNW	+, +< i gofno(di) +// .	to record.NONFIN	to record	\N	\N	1474605	1475220	615	
701	stammers9	RNW	ia .	yes	yes	\N	\N	1480596	1481211	615	
702	stammers9	ENF	a wedyn # oedd o (we)di cymryd um@s:cym&eng # can mlynedd i wahanol bobl # &sigh gasglu &n nhw i_gyd at ei_gilydd xx .	and then be.3S.IMP PRON.3SM PRT.PAST take.NONFIN IM hundred year for different people collect.NONFIN PRON.3PL all to each_other xx	and then it took, um, a hundred years for various people to collect them all together [...]	\N	\N	1481211	1494256	13045	
709	stammers9	RNW	ia .	yes	yes	\N	\N	1510069	1510510	441	
710	stammers9	ENF	+, &n er@s:cym&eng hen bobl neu fallai neu # morwynion neu +/ .	IM old people or perhaps or maids or	er, old people or perhaps, or maids or...	\N	\N	1510418	1514504	4086	
711	stammers9	RNW	ia dyna fo .	yes there PRON.3SM	yes, that's it	\N	\N	1514319	1515271	952	
712	stammers9	ENF	+, neu pobl timod um@s:cym&eng # pobl wledig yn_de .	or people know.2S IM people rural TAG	or people, you know, um, rural people, isn't it	\N	\N	1515271	1519385	4114	
713	stammers9	RNW	ia .	yes	yes	\N	\N	1519257	1521869	2612	
\.


--
-- Name: stammers9_cgutterances_pk; Type: CONSTRAINT; Schema: public; Owner: kevin; Tablespace: 
--

ALTER TABLE ONLY stammers9_cgutterances
    ADD CONSTRAINT stammers9_cgutterances_pk PRIMARY KEY (utterance_id);


--
-- PostgreSQL database dump complete
--

