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
-- Name: stammers7_cgutterances; Type: TABLE; Schema: public; Owner: kevin; Tablespace: 
--

CREATE TABLE stammers7_cgutterances (
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


ALTER TABLE public.stammers7_cgutterances OWNER TO kevin;

--
-- Name: stammers7_cgutterances_utterance_id_seq; Type: SEQUENCE; Schema: public; Owner: kevin
--

CREATE SEQUENCE stammers7_cgutterances_utterance_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.stammers7_cgutterances_utterance_id_seq OWNER TO kevin;

--
-- Name: stammers7_cgutterances_utterance_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kevin
--

ALTER SEQUENCE stammers7_cgutterances_utterance_id_seq OWNED BY stammers7_cgutterances.utterance_id;


--
-- Name: stammers7_cgutterances_utterance_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kevin
--

SELECT pg_catalog.setval('stammers7_cgutterances_utterance_id_seq', 872, true);


--
-- Name: utterance_id; Type: DEFAULT; Schema: public; Owner: kevin
--

ALTER TABLE stammers7_cgutterances ALTER COLUMN utterance_id SET DEFAULT nextval('stammers7_cgutterances_utterance_id_seq'::regclass);


--
-- Data for Name: stammers7_cgutterances; Type: TABLE DATA; Schema: public; Owner: kevin
--

COPY stammers7_cgutterances (utterance_id, filename, speaker, surface, gls, eng, com, comment, durbegin, durend, duration, precode) FROM stdin;
18	stammers7	ROY	<er mod i> [?] (y)n siarad fel arfer dw i (y)n trio &x cychwyn efo ryw # sketch@s:cym&eng neu ## darlun neu rhywbeth ## a: sgwrsio am ryw: pennod neu darn [?] allan o Beibl # dysgu cân a dysgu adnod iddyn nhw .	though be.NONFIN PRON.1S PRT speak.NONFIN like habit be.1S.PRES PRON.1S PRT try.NONFIN start.NONFIN with some sketch or illustration or something and chat.NONFIN for some chapter or piece out of Bible teach.NONFIN song and teach.NONFIN verse to.3PL PRON.3PL	although I'm speaking, usually I try to start with a sketch or an illustration or something, and talk about some chapter or passage out of the Bible, teach a song, and teach them a verse.	\N	\N	37606	52652	15046	
1	stammers7	ROY	dw i fel arfer yn wneud ryw # gwasanaeth o hanner awr # neu pedwar_deg munud .	be.1S.PRES PRON.1S like habit PRT do.NONFIN some service of half hour or forty minute	I normally do a service of half an hour or 40 minutes.	\N	\N	0	4888	4888	
2	stammers7	GWN	+< oh@s:cym&eng yeah@s:cym&eng ?	\N	\N	\N	\N	3913	4447	534	
3	stammers7	ROY	yeah@s:cym&eng .	\N	\N	\N	\N	5596	6165	569	
19	stammers7	GWN	+< yeah@s:cym&eng .	\N	\N	\N	\N	43230	43392	162	
4	stammers7	ROY	dw (ddi)m yn gwybod os dyna be mae nhw (y)n disgwyl ## am # mod i (y)n mynd yno +// .	be.1S.PRES NEG PRT know.NONFIN if there what be.3PL.PRES PRON.3PL PRT expect.NONFIN for be.NONFIN PRON.1S PRT go.NONFIN there	I don't know whether that's what they're expecting, because we go there...	\N	\N	6281	10472	4191	
20	stammers7	GWN	mmm@s:cym&eng .	\N	\N	\N	\N	49801	50138	337	
5	stammers7	ROY	well@s:cym&eng o'n i (y)n mynd er@s:cym&eng i (y)r um@s:cym&eng ysgol (y)na [?] rhyw # un waith bob mis # pan o'n i (y)n byw ym Mhenygroes@s:cym&eng .	well be.1S.IMP PRON.1S PRT go.NONFIN IM to DET IM school there some one time every month when be.1S.IMP PRON.1S PRT live.NONFIN in Penygroes	well, I used to go to that school about once a month when I lived in Penygroes.	\N	\N	10519	16115	5596	
6	stammers7	GWN	+< mmm@s:cym&eng mmm@s:cym&eng .	\N	\N	\N	\N	14803	16161	1358	
7	stammers7	ROY	ond um@s:cym&eng # ers symud i fa(n) (y)ma dw (ddi)m yn wneud nhw [?] dim_ond # ella bob tri mis rywbeth fel (y)na .	but IM since move.NONFIN to place here be.1S.PRES NEG PRT do.NONFIN PRON.3PL only maybe every three month something like there	but since I moved here I only do them maybe every three months, something like that.	\N	\N	16881	23150	6269	
8	stammers7	GWN	+< yeah@s:cym&eng .	\N	\N	\N	\N	22512	22895	383	
9	stammers7	ROY	um@s:cym&eng # ond dyna [/] dyna (y)r er@s:cym&eng esiampl oedd Dick@s:cym&eng Dixon@s:cym&eng yn dangos i fi .	IM but there there DET IM example be.3S.IMP Dick Dixon PRT show.NONFIN to PRON.1S	um, but that's the example Dick Dixon set for me.	\N	\N	24010	29502	5492	
10	stammers7	GWN	mmm@s:cym&eng .	\N	\N	\N	\N	29513	29839	326	
21	stammers7	ROY	a mae hynny (y)n cymryd rhyw # tri_deg munud .	and be.3S.PRES that take.NONFIN some thirty minute	and that takes about 30 minutes.	\N	\N	53075	55896	2821	
11	stammers7	ROY	so@s:cym&eng # dyna be dw i (y)n wneud .	so there what be.1S.PRES PRON.1S PRT do.NONFIN	so that's what I do.	\N	\N	29595	31685	2090	
12	stammers7	GWN	+< well@s:cym&eng os mai dyna be maen nhw (y)n disgwyl dyna be maen nhw (y)n disgwyl de ?	well if PRT there what be.3PL.PRES PRON.3PL PRT expect.NONFIN there what be.3PL.PRES PRON.3PL PRT expect.NONFIN TAG	well, if that's what they expect, that's what they expect, right?	\N	\N	30721	33507	2786	
13	stammers7	ROY	+< yeah@s:cym&eng .	\N	\N	\N	\N	32242	32764	522	
14	stammers7	ROY	xxx +/ .	\N	\N	\N	\N	33589	34157	568	
28	stammers7	GWN	&bx ti ddim yn cael siarad yn plural@s:eng nag wyt ?	PRON.2S NEG PRT get.NONFIN speak.NONFIN in plural NEG be.2S.PRES	you can't speak in the plural can you?	\N	\N	65858	68215	2357	
15	stammers7	GWN	<maen nhw (y)n> [?] deu(d) (wr)tha fi timod +"/ .	be.3PL.PRES PRON.3PL PRT say.NONFIN to.1S PRON.1S know.2S	they tell me, you know:	\N	\N	33809	34773	964	
22	stammers7	GWN	dw i (dd)im yn wneud canu efo nhw .	be.1S.PRES PRON.1S NEG PRT do.NONFIN sing.NONFIN with PRON.3PL	I don't do singing with them.	\N	\N	56198	58114	1916	
16	stammers7	GWN	+" ti (y)n gael ## deg munud chwarter awr .	PRON.2S PRT get.NONFIN ten minute quarter hour	"you get ten minutes, a quarter of an hour."	\N	\N	34761	37130	2369	
17	stammers7	ROY	+< mmm@s:cym&eng .	\N	\N	\N	\N	36572	37037	465	
33	stammers7	GWN	+" dan ni (y)n credu .	be.1PL.PRES PRON.1PL PRT believe.NONFIN	"we believe..."	\N	\N	72023	73010	987	
23	stammers7	GWN	maen nhw (y)n wneud canu yn yr ysgol .	be.3PL.PRES PRON.3PL PRT do.NONFIN sing.NONFIN in DET school	they do singing at school.	\N	\N	58137	59646	1509	
24	stammers7	ROY	uh_huh@s:cym&eng ?	\N	\N	\N	\N	59646	60239	593	
25	stammers7	GWN	um@s:cym&eng +. . .	\N	\N	\N	\N	60389	61725	1336	
29	stammers7	GWN	ti (y)n gorod siarad am +"/ .	PRON.2S PRT must.NONFIN speak.NONFIN about	you have to talk about:	\N	\N	68191	69422	1231	
26	stammers7	GWN	mae (y)na rhei pethau ti ddim yn cael does ?	be.3S.PRES PRT some things PRON.2S NEG PRT get.NONFIN be.3S.PRES.NEG	there are some things you can't do, aren't there?	\N	\N	62502	64348	1846	
27	stammers7	GWN	ti (y)n gorod bod +. . .	PRON.2S PRT must.NONFIN be.NONFIN	you have to be...	\N	\N	64360	65359	999	
34	stammers7	ROY	+< mmhm@s:cym&eng .	\N	\N	\N	\N	72998	73439	441	
30	stammers7	GWN	+" fel Cristion dw i (y)n credu +. . .	like Christian be.1S.PRES PRON.1S PRT believe.NONFIN	"as a Christian I believe..."	\N	\N	69828	71326	1498	
31	stammers7	ROY	mmhm@s:cym&eng .	\N	\N	\N	\N	71291	71790	499	
32	stammers7	GWN	dim +"/ .	NEG	not:	\N	\N	71663	72034	371	
37	stammers7	GWN	neu # um@s:cym&eng # pethau bach odd@s:cym&eng .	or IM things little odd	or, um, weird little things.	\N	\N	74220	77761	3541	
35	stammers7	GWN	neu +"/ .	or	or:	\N	\N	73033	73195	162	
36	stammers7	GWN	+" dan ni (y)n addoli +. . .	be.1PL.PRES PRON.1PL PRT worship.NONFIN	"we worship..."	\N	\N	73207	74240	1033	
38	stammers7	GWN	(dy)dy o (ddi)m gymaint â hyn ots yn yr ysgolion dw i (y)n mynd achos dw i (y)n nabod nhw anyway@s:eng .	be.3S.PRES.NEG PRON.3SM NEG so_much as this odds in DET schools be.1S.PRES PRON.1S PRT go.NONFIN because be.1S.PRES PRON.1S PRT know.NONFIN PRON.3PL anyway.	it doesn't matter that much in the schools I go to, because I know them anyway.	\N	\N	78017	80873	2856	
39	stammers7	GWN	so@s:cym&eng # fasen nhw (dd)im yn deud dim_byd .	so be.3PL.CONDIT PRON.3PL NEG PRT say.NONFIN nothing	so they wouldn't say anything.	\N	\N	80826	82196	1370	
40	stammers7	ROY	+< yeah@s:cym&eng .	\N	\N	\N	\N	81175	81535	360	
41	stammers7	ROY	yeah@s:cym&eng a finnau .	yeah and PRON.1S	yeah, me too.	\N	\N	82185	83253	1068	
130	stammers7	ROY	na o'n i +// .	no be.1S.IMP PRON.1S	no, I was...	\N	\N	269026	270256	1230	
554	stammers7	GWN	ti (y)n dod ?	PRON.2S PRT come.NONFIN	are you coming?	\N	\N	1248042	1248553	511	
42	stammers7	GWN	um@s:cym&eng a (y)r un peth yn yr ysgol uwchradd .	IM and DET one thing in DET school secondary	um, and same thing in secondary school.	\N	\N	83357	86214	2857	
68	stammers7	GWN	wedyn dw i (we)di bod yn er@s:cym&eng +// .	then be.1S.PRES PRON.1S PRT.PAST be.NONFIN PRT IM	then I've been...	\N	\N	143468	145232	1764	
43	stammers7	GWN	um@s:cym&eng # dw i (y)n gorod mynd i wneud gwasanaeth ym mis Mai .	IM be.1S.PRES PRON.1S PRT must.NONFIN go.NONFIN to do.NONFIN service in month May	um, I have to go and do a service in May.	\N	\N	86585	90045	3460	
61	stammers7	GWN	wnes i gael &=noise lie_in@s:eng bach heddiw .	do.1S.PAST PRON.1S have.NONFIN lie_in little today	I had a bit of a lie-in today.	\N	\N	121904	124446	2542	
44	stammers7	GWN	ond mae yr H_M_Is@s:eng yr arolygwyr yna .	but be.3S.PRES DET H_M_Is DET inspectors there	but the H.M.I.s [= Her Majesty's Inspectors], the inspectors are there.	\N	\N	90033	92483	2450	
45	stammers7	ROY	mmhm@s:cym&eng ?	\N	\N	\N	\N	92506	93168	662	
46	stammers7	GWN	so@s:cym&eng dw i (y)n mynd i gorod bod yn really@s:eng # gwatsiad allan am hynna .	so be.1S.PRES PRON.1S PRT go.NONFIN to must.NONFIN be.NONFIN PRT really watch.NONFIN out for that	so I'm going to have to be really watching out for that.	\N	\N	93121	95989	2868	
47	stammers7	ROY	mmhm@s:cym&eng ?	\N	\N	\N	\N	95908	96372	464	
48	stammers7	GWN	ond (dy)dy (y)r athrawon ddim yn gwybod dim_byd am y peth .	but be.3S.PRES.NEG DET teachers NEG PRT know.NONFIN nothing about DET thing	but the teachers don't know anything about it.	\N	\N	96221	98172	1951	
49	stammers7	ROY	yeah@s:cym&eng .	\N	\N	\N	\N	98218	98694	476	
62	stammers7	GWN	wnes i (dd)im codi tan tua half@s:eng nine@s:eng .	do.1S.PAST PRON.1S NEG rise.NONFIN until about half nine	I didn't get up till around 9:30 .	\N	\N	124458	126014	1556	
50	stammers7	GWN	so@s:cym&eng ddylsen nhw (ddi)m [?] (we)di ddeud dim_byd .	so should.3PL.NONPAST PRON.3PL NEG PRT.PAST say.NONFIN nothing	so they shouldn't have said anything.	\N	\N	98660	99903	1243	
51	stammers7	ROY	huh@s:cym&eng .	\N	\N	\N	\N	99833	100622	789	
52	stammers7	GWN	um@s:cym&eng +/ .	\N	\N	\N	\N	101110	101528	418	
53	stammers7	ROY	fel arfer dydy hynny ddim yn broblem@s:cym&eng i fi am mod i (y)n just@s:cym&eng deud story@s:cym&eng allan o Feibl .	like habit be.3S.PRES.NEG that NEG PRT problem to PRON.1S because be.NONFIN PRON.1S PRT just say.NONFIN story out of Bible	usually that's not a problem for me, because I just tell a story from the Bible.	\N	\N	101598	105278	3680	
54	stammers7	GWN	mmm@s:cym&eng .	\N	\N	\N	\N	104965	105197	232	
75	stammers7	GWN	so@s:cym&eng mae mynd [?] lot@s:cym&eng er@s:cym&eng +// .	so be.3S.PRES go.NONFIN lot IM	so it goes a lot, er...	\N	\N	157633	158736	1103	
55	stammers7	ROY	um@s:cym&eng # ond weithiau dw i (y)n gorod bod yn ofalus efo fo .	IM but times be.1S.PRES PRON.1S PRT must.NONFIN be.NONFIN PRT careful with PRON.3SM	but sometimes I have to be careful with it.	\N	\N	106137	110143	4006	
56	stammers7	ROY	um@s:cym&eng +. . .	\N	\N	\N	\N	110874	111652	778	
63	stammers7	GWN	wedyn ## gwatsio telly@s:cym&eng am ychydig ## shower@s:eng a newid [?] a pethau # um@s:cym&eng # wneud cinio # mynd i (y)r gwaith .	then watch.NONFIN telly for a_bit shower and change.NONFIN and things IM make.NONFIN lunch go.NONFIN to DET work	then, watched telly for a bit, showered and changed and stuff, um, made lunch, went to work.	\N	\N	126409	135395	8986	
57	stammers7	ROY	be ti (we)di bod yn wneud heddiw (y)ma ?	what PRON.2S PRT.PAST be.NONFIN PRT do.NONFIN today here	what have you been doing today?	\N	\N	114531	116110	1579	
58	stammers7	GWN	um@s:cym&eng dw i i fod yn cael day@s:eng off@s:cym&eng .	IM be.1S.PRES PRON.1S to be.NONFIN PRT have.NONFIN day off	um, I'm supposed to have a day off.	\N	\N	116435	118281	1846	
69	stammers7	GWN	mae auntie@s:eng fi (y)n mynd i (y)r capel .	be.3S.PRES auntie PRON.1S PRT go.NONFIN to DET chapel	my auntie goes to the chapel.	\N	\N	145290	146858	1568	
59	stammers7	GWN	ond mae gynna i loads@s:eng o waith i wneud .	but be.3S.PRES with.1S PRON.1S loads of work to do.NONFIN	but I've got loads of work to do.	\N	\N	118409	120313	1904	
64	stammers7	GWN	o'n i (we)di gobeithio mynd i gym@s:eng .	be.1S.IMP PRON.1S PRT.PAST hope.NONFIN go.NONFIN to gym	I had hoped to go to the gym.	\N	\N	135596	136502	906	
60	stammers7	GWN	so@s:cym&eng dw i ddim wedi cael day@s:eng off@s:cym&eng .	so be.1S.PRES PRON.1S NEG PRT.PAST have.NONFIN day off	so I haven't had a day off.	\N	\N	120255	121637	1382	
65	stammers7	GWN	ond wnes i (dd)im cael round@s:cym&eng iddo fo .	but do.1S.PAST PRON.1S NEG get.NONFIN round to.3SM PRON.3SM	but I didn't get round to it.	\N	\N	136513	137686	1173	
66	stammers7	ROY	mmm@s:cym&eng .	\N	\N	\N	\N	137605	138232	627	
73	stammers7	GWN	mae (y)n really@s:eng da timod .	be.3S.PRES PRT really good know.2S	it's really good, you know.	\N	\N	153131	154455	1324	
67	stammers7	GWN	wedyn dan ni (y)n wneud rhyw gwaith crefft yn y capel ar_gyfer Pasg .	then be.1PL.PRES PRON.1PL PRT do.NONFIN some work craft in DET chapel for Easter	then we're doing some craft work at the chapel for Easter.	\N	\N	138696	142353	3657	
70	stammers7	GWN	mae hi (y)n helpu fi wneud hwnna .	be.3S.PRES PRON.3SF PRT help.NONFIN PRON.1S do.NONFIN that	she's helping me do that.	\N	\N	146869	147984	1115	
71	stammers7	GWN	so@s:cym&eng mae hi (y)n mwydro fi (y)n ## sôn am gwahanol stuff@s:cym&eng be <mae (y)n isio> [?] .	so be.3S.PRES PRON.3SF PRT blather.NONFIN PRON.1S PRT talk.NONFIN about different stuff what be.3S.PRES PRT want	so she goes on at me, talking about different stuff; what she wants.	\N	\N	148437	152802	4365	
72	stammers7	ROY	+< &=laugh .	\N	\N	\N	\N	150431	151058	627	
74	stammers7	GWN	ond mae (y)n mynd i_mewn gormod o # detail@s:eng a +. . .	but be.3S.PRES PRT go.NONFIN in too_much of detail and	but she goes into too much detail, and...	\N	\N	154466	157508	3042	
80	stammers7	GWN	wedyn oedd gynna i pwyllgor athrawon ysgol Sul Felinheli@s:cym&eng .	then be.3S.IMP with.1S PRON.1S committee teachers school Sunday Felinheli	then I had the Felinheli Sunday school teachers' committee.	\N	\N	164739	167514	2775	
76	stammers7	GWN	pan dw i efo gymaint o waith i wneud wythnos yma # xxx amser xx +"/ .	when be.1S.PRES PRON.1S with so_much of work to do.NONFIN week here xxx work xx	when I've got so much work to do this week [...] time, [...]	\N	\N	158771	162544	3773	
77	stammers7	ROY	mmm@s:cym&eng .	\N	\N	\N	\N	162545	163032	487	
78	stammers7	GWN	+" come on come on come on !	\N	\N	\N	\N	163067	163880	813	eng
79	stammers7	ROY	&=laugh !	\N	\N	\N	\N	163776	164716	940	
81	stammers7	ROY	oh@s:cym&eng .	\N	\N	\N	\N	167526	168118	592	
82	stammers7	GWN	um@s:cym&eng +. . .	\N	\N	\N	\N	168443	169105	662	
459	stammers7	GWN	mae o (y)n # engaged@s:eng wan .	be.3S.PRES PRON.3SM PRT engaged now	he's engaged now.	\N	\N	1041097	1042711	1614	
83	stammers7	ROY	dw i (y)n meddwl mod i (y)n nabod rhai ohonyn nhw .	be.1S.PRES PRON.1S PRT think.NONFIN be.NONFIN PRON.1S PRT know.NONFIN some of.3PL PRON.3PL	I think I know some of them.	\N	\N	169151	170916	1765	
101	stammers7	ROY	+, neu yn symud .	or PRT move.NONFIN	...or is moving.	\N	\N	207811	208902	1091	
84	stammers7	GWN	++ o +. . .	from	...from..?	\N	\N	170950	171531	581	
85	stammers7	ROY	++ o Felinheli@s:cym&eng .	from Felinheli	...from Felinheli.	\N	\N	171810	172750	940	
112	stammers7	GWN	dw i (y)n teimlo (y)n euog xxx dylswn i xxx .	be.1S.PRES PRON.1S PRT feel.NONFIN PRT guilty xxx should.1S.NONPAST PRON.1S xxx	I feel guilty [...] I should [...].	\N	\N	224680	227234	2554	
86	stammers7	GWN	wyt ?	be.2S.PRES	do you?	\N	\N	172866	173226	360	
102	stammers7	GWN	yndy ?	be.3S.PRES	really?	\N	\N	208914	209286	372	
87	stammers7	ROY	yeah@s:cym&eng am mod i um@s:cym&eng [///] # <a mi es i &ʃ> [?] Llangrannog@s:cym&eng dwywaith .	yeah for be` ;fi IM and PRT go.1S.PAST PRON.1S Llangrannog twice	yeah, because I. . . and I went to Llangrannog twice.	\N	\N	173330	177115	3785	
88	stammers7	GWN	oh@s:cym&eng Anna@s:cym&eng .	\N	\N	\N	\N	177216	178261	1045	
89	stammers7	ROY	uh_huh@s:cym&eng .	\N	\N	\N	\N	178308	178993	685	
90	stammers7	GWN	mmm@s:cym&eng .	\N	\N	\N	\N	179341	179782	441	
91	stammers7	ROY	mmhm@s:cym&eng .	\N	\N	\N	\N	179794	180444	650	
92	stammers7	ROY	oedd hi (y)n gymeriad .	be.3S.IMP PRON.3SF PRT character	she was a character.	\N	\N	181484	183052	1568	
113	stammers7	ROY	hmm@s:cym&eng .	\N	\N	\N	\N	227211	227942	731	
93	stammers7	GWN	<dw (ddi)m yn> [///] dw i meddwl [///] dw i (dd)im yn gwybod fath â +// .	be.1S.PRES NEG PRT be.1S.PRES PRON.1S think.NONFIN be.1S.PRES PRON.1S NEG PRT know.NONFIN kind with	I don't. . . I think. . . I don't know, like...	\N	\N	183679	186488	2809	
103	stammers7	ROY	uh_huh@s:cym&eng mae hi (y)n gwerthu ei thŷ .	IM be.3S.PRES PRON.3SF PRT sell.NONFIN POSS.3SF house	uh-huh, she's selling her house.	\N	\N	209286	210865	1579	
94	stammers7	GWN	ond [?] mae (y)n sure@s:cym&eng bod chdi (we)di bod yn Llangrannog@s:cym&eng cyn i fi fynd yna .	but be.3S.PRES PRT sure be.NONFIN PRON.2S PRT.PAST be.NONFIN in Llangrannog before to PRON.1S go.NONFIN there	but you must have been to Llangrannog before I went there.	\N	\N	186387	188686	2299	
95	stammers7	GWN	(be)cause@s:eng dw i (dd)im yn <gweld chdi (y)na> [?] .	cause be.1S.PRES PRON.1S NEG PRT see.NONFIN PRON.2S there	because I don't see you there.	\N	\N	188907	190079	1172	
96	stammers7	GWN	wedyn # maen nhw (we)di newid lot@s:cym&eng o (y)r athrawon .	then be.3PL.PRES PRON.3PL PRT.PAST change.NONFIN lot of DET teachers	and then they've changed a lot of the teachers.	\N	\N	190068	192192	2124	
104	stammers7	GWN	o'n i (dd)im yn gwybod dim_byd .	be.1S.IMP PRON.1S NEG PRT know.NONFIN nothing	I didn't know anything.	\N	\N	212304	213244	940	
97	stammers7	GWN	ond xxx yn iawn de ?	but xxx PRT right TAG	but [...] alright, isn't it?	\N	\N	192718	194262	1544	
98	stammers7	ROY	isio dwy fil a [///] ## ella dwy fil a thri a dwy fil a phedwar ?	want two thousand and maybe two thousand and three and two thousand and four	maybe 2003 and 2004?	\N	\N	194541	199255	4714	
118	stammers7	ROY	a wnes i cwcio bwyd iddo fo .	and do.1S.PAST PRON.3SM cook.NONFIN food for.3SM PRON.3SM	and I cooked some food for him.	\N	\N	239320	240992	1672	
99	stammers7	GWN	yeah@s:cym&eng dw i (we)di bod wedyn dwy fil a pump dwy fil a chwech .	yeah be.1S.PRES PRON.1S PRT.PAST be.NONFIN after two thousand and five two thousand and six	yeah, I went afterwards, 2005, 2006 .	\N	\N	200230	202900	2670	
105	stammers7	ROY	hmm@s:cym&eng # Al@s:cym&eng wnaeth sôn .	IM Al do.3S.PAST talk.NONFIN	hmm, Al said so.	\N	\N	212977	214800	1823	
100	stammers7	ROY	wnes i glywed bod Bridget@s:cym&eng wedi symud yn_ôl i (y)r de .	do.1S.PAST PRON.1S hear.NONFIN be.NONFIN Bridget PRT.PAST move.NONFIN back to DET south	I heard that Bridget had moved back down south.	\N	\N	204584	207358	2774	
114	stammers7	GWN	dyna ni .	there PRON.1PL	there we go.	\N	\N	229312	230218	906	
106	stammers7	GWN	+< xx # mae o (y)n drist really@s:eng dydy ?	xx be.3S.PRES PRON.3SM PRT sad really be.3S.PRES.NEG	it's sad really, isn't it?	\N	\N	214092	216542	2450	
119	stammers7	ROY	fajitas .	\N	\N	\N	\N	241433	244068	2635	eng
107	stammers7	ROY	yndy mae <o yn> [?] .	be.3S.PRES be.3S.PRES PRON.3SM PRT	yes, it is.	\N	\N	216576	217505	929	
115	stammers7	GWN	lle oedda chdi neithiwr ta ?	where be.2S.IMP PRON.2S last_night then	where were you last night then?	\N	\N	231297	232981	1684	
108	stammers7	ROY	oedd o (y)n dda cael hi yma .	be.3S.IMP PRON.3SM PRT good have.NONFIN PRON.3SF here	it was good to have her here.	\N	\N	218805	220036	1231	
109	stammers7	GWN	mmm@s:cym&eng .	\N	\N	\N	\N	220141	220640	499	
110	stammers7	GWN	dw i (dd)im yn gweld hi yma [?] ddim mwy .	be.1S.PRES PRON.1S NEG PRT see.NONFIN PRON.3SF here NEG more	I don't see her here any more.	\N	\N	221336	222973	1637	
111	stammers7	ROY	na .	no	no.	\N	\N	223066	223705	639	
116	stammers7	ROY	um@s:cym&eng es i capel gyda nos .	IM go.1S.PAST PRON.1S chapel with night	um, I went to chapel in the evening.	\N	\N	234130	236591	2461	
120	stammers7	GWN	<mae Al@s:cym&eng> [?] yn cael effaith drwg ar yr # xxx .	be.3S.PRES Al PRT have.NONFIN efect bad on DET xxx	Al's having a bad effect on the [...].	\N	\N	245009	248689	3680	
117	stammers7	ROY	a wedyn daeth Eddie@s:cym&eng Dixon@s:cym&eng drosodd .	and then come.3S.PAST Eddie Dixon over	and then Eddie Dixon came over.	\N	\N	236626	238495	1869	
122	stammers7	GWN	fi # Frankie@s:cym&eng Francis@s:cym&eng ## Julie@s:cym&eng Jones@s:cym&eng a Carol@s:cym&eng a Al@s:cym&eng xxx .	PRON.1S Frankie Francis Julie Jones and Carol and Al	me, Frankie Francis, Julie Jones and Carol and Al [...].	\N	\N	252056	258952	6896	
123	stammers7	ROY	&=laugh .	\N	\N	\N	\N	258836	260171	1335	
121	stammers7	ROY	oedd &=laugh xx oeddet ti yno ?	be.3S.IMP xx be.2S.IMP PRON.2S there	yes [..], were you there?	\N	\N	248597	251871	3274	
124	stammers7	GWN	oedd o (y)n sgwrs bach da deud y gwir .	be.3S.IMP PRON.3SM PRT conversation little good say.NONFIN DET truth	it was a good little conversation, actually.	\N	\N	260404	262331	1927	
125	stammers7	GWN	oedd .	be.3S.IMP	yes.	\N	\N	263120	263736	616	
126	stammers7	ROY	<o'n i> [/] o'n i (y)n glywed wnaeth o canu cân i chi .	be.1S.IMP PRON.1S be.1S.IMP PRON.1S PRT hear.NONFIN do.3S.PAST PRON.3SM sing.NONFIN song to PRON.2PL	I heard he sang you a song.	\N	\N	264219	266413	2194	
127	stammers7	GWN	do .	yes	yes.	\N	\N	266576	266971	395	
128	stammers7	ROY	&=laugh .	\N	\N	\N	\N	267040	267714	674	
129	stammers7	GWN	oe(dda) chdi (y)n gorod canu hwnna hefyd ?	be.2S.IMP PRON.2S PRT must.NONFIN sing.NONFIN that also	did you have to sing that too?	\N	\N	267679	268944	1265	
131	stammers7	ROY	a deud y gwir &=laugh <o'n i er@s:cym&eng> [/] <o'n i (y)n> [/] o'n i (y)n chwilio ar y We bore (y)ma ## am syniadau am wasanaeth .	given_that say.NONFIN DET truth be.1S.IMP PRON.1S IM be.1S.IMP PRON.1S PRT be.1S.IMP PRON.1S PRT search.NONFIN on DET Web morning here for ideas for service	actually, I was er, I was searching on the Web this morning for ideas for a service.	\N	\N	270233	276479	6246	
144	stammers7	GWN	a # ti (y)n gael bowlen o ddŵr .	and PRON.2S PRT get.NONFIN bowl of water	and you get a bowl of water.	\N	\N	312192	314445	2253	
132	stammers7	ROY	a dyma fi (y)n dod dros y cân .	and here PRON.1S PRT come.NONFIN across DET song	and then I came across the song.	\N	\N	276932	278522	1590	
133	stammers7	ROY	ac o'n i meddwl +"/ .	and be.1S.IMP PRON.1S think.NONFIN	and I thought:	\N	\N	278546	278859	313	
152	stammers7	GWN	+" iawn # ti meddwl fedri di <roid un> [//] balansio un troed ar y dŵr ?	right PRON.2S think.NONFIN can.2S.NONPAST PRON.2S put.NONFIN one balance.NONFIN one foot on DET water	"right, do you think you could balance one foot on the water?"	\N	\N	330110	333663	3553	
134	stammers7	ROY	+" oh@s:cym&eng wna i wrando ar hwn .	IM do.1S.NONPAST PRON.1S listen.NONFIN on this	"oh, I'll listen to this" .	\N	\N	278871	280043	1172	
145	stammers7	GWN	a ti (y)n deud wrthyn nhw +"/ .	and PRON.2S PRT say.NONFIN to.3PL PRON.3PL	and you tell them:	\N	\N	314433	315455	1022	
135	stammers7	ROY	a daeth Al@s:cym&eng i_fewn tra mod i (y)n gwrando arno fo .	and come.3S.PAST Al in while be.NONFIN PRON.1S PRT listen.NONFIN on.3SM PRON.3SM	and Al came in while I was listening to it.	\N	\N	280999	283844	2845	
136	stammers7	ROY	ac yn deud +"/ .	and PRT say.NONFIN	and said:	\N	\N	284292	284652	360	
137	stammers7	ROY	+" oh@s:cym&eng o'n i (y)n dysgu hwnna fel plentyn .	IM be.1S.IMP PRON.1S PRT learn.NONFIN that as child	"oh, I learnt that as a child."	\N	\N	284641	286893	2252	
146	stammers7	GWN	+" well@s:cym&eng [?] ## mae (y)r story@s:cym&eng heddiw (y)ma am rywun yn cerdded ar dŵr .	well be.3S.PRES DET story today here about someone PRT walk.NONFIN on water	"well, the story today is about someone walking on water."	\N	\N	315354	319534	4180	
138	stammers7	ROY	ond er@s:cym&eng # &d do'n i erioed (we)di glywed o .	but IM be.1S.IMP.NEG PRON.1S never PRT.PAST hear.NONFIN PRON.3SM	but I'd never heard it.	\N	\N	287543	290492	2949	
139	stammers7	GWN	mae cân yn [///] timod mae (y)n gwneud i chdi gofio rywbeth dydy ?	be.3S.PRES song PRT know.2S be.3S.PRES PRT make.NONFIN to PRON.2S remember.NONFIN something be.3S.PRES.NEG	a song does, you know, make you remember something, doesn't it?	\N	\N	293348	296402	3054	
140	stammers7	ROY	mmm@s:cym&eng .	\N	\N	\N	\N	296205	296577	372	
157	stammers7	GWN	a obviously@s:eng (dy)dyn nhw ddim yn gallu na ?	and obviously be.3PL.PRES.NEG PRON.3PL NEG PRT can.NONFIN no	and obviously they can't, no?	\N	\N	339890	341341	1451	
141	stammers7	ROY	yndy dyna pam dw i (y)n licio wneud nhw yn [//] mewn gwasanaeth .	be.3S.PRES there why be.1S.PRES PRON.1S PRT like.NONFIN do.NONFIN PRON.3PL in in service	yes, that's why I like to do them in services.	\N	\N	298001	300904	2903	
147	stammers7	GWN	xx (ba)sai [?] rywun yn meddwl bod chi (y)n gallu cerdded ar dŵr ?	xx be.3S.CONDIT someone PRT think.NONFIN be.NONFIN PRON.2PL PRT can.NONFIN walk.NONFIN on water	"[..] does anyone think that you'd be able to walk on water?"	\N	\N	319824	322413	2589	
142	stammers7	GWN	be dw i (y)n licio yn gwasanaeth drwy (y)r amser de ydy # ti (y)n wneud story@s:cym&eng <a ti (y)n deud um@s:cym&eng> [///] # fel story@s:cym&eng Pedr cerdded ar y dŵr .	what be.1S.PRES PRON.1S PRT like.NONFIN in service through DET time TAG be.3S.PRES PRON.2S PRT do.NONFIN story and PRON.2S PRT say.NONFIN IM like story Peter walk.NONFIN on DET water	what I always like in services is, you do a story and you say. . . um, like the story of Peter walking on water.	\N	\N	301174	309847	8673	
143	stammers7	GWN	wnes i [///] dyna be wnes i wneud tro dwytha .	do.1S.PAST PRON.1S there what do.1S.PAST PRON.1S do.NONFIN turn previous	that's what I did last time.	\N	\N	309905	311600	1695	
153	stammers7	GWN	+" medri .	can.2S.NONPAST	"you could."	\N	\N	333698	334452	754	
148	stammers7	GWN	wedyn fel arfer mae (y)na un neu ddau yn roi llaw fyny .	then like habit be.3S.PRES there one or two PRT put.NONFIN hand up	then usually there are one or two who put their hands up.	\N	\N	323040	325675	2635	
149	stammers7	GWN	so@s:cym&eng ti (y)n cael nhw i ddod i_fyny a ddeud wrthyn nhw xx tynnu # (e)sgidiau a socks@s:eng off@s:cym&eng [?] .	so PRON.2S PRT get.NONFIN PRON.3PL to come.NONFIN up and say.NONFIN to.3PL PRON.3PL xx pull.NONFIN shoes and socks off	so you get them to come up and tell them to [..] take off their shoes and socks.	\N	\N	325675	329518	3843	
150	stammers7	ROY	+< &=laugh .	\N	\N	\N	\N	326233	326558	325	
151	stammers7	GWN	a wedyn ti ddeud +"/ .	and then PRON.2S say.NONFIN	and then you say:	\N	\N	329507	330099	592	
154	stammers7	GWN	+" fedri di wneud # y troed arall ?	can.2S.NONPAST PRON.2S do.NONFIN DET foot other	"could you do the other foot?"	\N	\N	334580	336902	2322	
160	stammers7	GWN	a wedyn # ti (y)n roid geiriau fel um@s:cym&eng Pedr ["] # rhwyfo ["] # gwynt ["] # ysbryd ["] # um@s:cym&eng i_gyd i_mewn yn y story@s:cym&eng .	and then PRON.2S PRT put.NONFIN words like IM Peter row.NONFIN wind spirit IM all in in DET story	and then you put words like "Peter", "rowing", "wind", "ghost", all into the story.	\N	\N	344909	356147	11238	
155	stammers7	GWN	+" fedri ?	can.2S.NONPAST	"you could?"	\N	\N	337521	337986	465	
158	stammers7	GWN	so@s:cym&eng ti (y)n ddeud +"/ .	so PRON.2S PRT say.NONFIN	so you say:	\N	\N	342084	342723	639	
156	stammers7	GWN	+" oh@s:cym&eng fedri di wneud y ddau efo ei gilydd ?	IM can.2S.NONPAST PRON.2S do.NONFIN DET two with POSS.3S each_other	"oh, could you do them both together?"	\N	\N	337986	339286	1300	
159	stammers7	GWN	+" oh@s:cym&eng mae (y)r story@s:cym&eng (y)ma am rywun sydd yn .	IM be.3S.PRES PRT story here about someone be.PRES.REL PRT	"oh, this story's about someone who does."	\N	\N	342723	344406	1683	
161	stammers7	GWN	a ti (y)n rhoid fath â action@s:cym&eng iddyn nhw .	and PRON.2S PRT give.NONFIN kind with action to.3PL PRON.3PL	and you give them, like, an action.	\N	\N	356260	357781	1521	
162	stammers7	GWN	so@s:cym&eng bob tro ti (y)n deud rhwyfo ["] maen nhw gyd yn gorod mynd fel hyn .	so every turn PRON.2S PRT say.NONFIN row.NONFIN be.3PL.PRES PRON.3PL all PRT must.NONFIN go.NONFIN like this	so every time you say "rowing" they all have to go like this.	\N	\N	357792	359963	2171	
163	stammers7	ROY	uh_huh@s:cym&eng .	\N	\N	\N	\N	359820	360424	604	
164	stammers7	GWN	um@s:cym&eng bob tro ti (y)n deud rhwyfo ["] maen nhw (y)n gorod mynd fel (y)na .	every turn PRON.2S PRT say.NONFIN Peter be.3PL.PRES PRON.3PL PRT must.NONFIN go.NONFIN like there	every time you say "Peter", they have to go like that	\N	\N	360563	363454	2891	
165	stammers7	GWN	bob tro ti (y)n deud ysbryd ["] maen nhw (y)n gorod bod yn ofn .	every turn PRON.2S PRT say.NONFIN spirit be.3PL.PRES PRON.3PL PRT must.NONFIN be.NONFIN PRT fear	every time you say "ghost", they have to be afraid.	\N	\N	363756	366473	2717	
166	stammers7	ROY	uh_huh@s:cym&eng ?	\N	\N	\N	\N	366643	367107	464	
189	stammers7	GWN	a dw i (y)n meddwl maen nhw licio cael fi yna .	and be.1S.PRES PRON.1S PRT think.NONFIN be.3PL.PRES PRON.3PL like.NONFIN have.NONFIN PRON.1S there	and I think they like having me there.	\N	\N	421617	423614	1997	
167	stammers7	GWN	a wedyn wrth i chdi fynd trwy (y)r story@s:cym&eng mae (y)r geiriau (y)ma (y)n dod i_fyny .	and then by to PRON.2S go.NONFIN through DET story be.3S.PRES DET words here PRT come.NONFIN up	and then as you go through the story these words come up.	\N	\N	367119	369708	2589	
178	stammers7	GWN	wedyn # &kəv roi hwnna mewn yn y gweddi .	then put.NONFIN that in in DET prayer	then put that into the prayer.	\N	\N	406238	408734	2496	
168	stammers7	GWN	so@s:cym&eng maen nhw (y)n gwrando ar y story@s:cym&eng a maen nhw (y)n # cael rhan yno fo hefyd .	so be.3PL.PRES PRON.3PL PRT listen.NONFIN on DET story and be.3PL.PRES PRON.3PL PRT have.NONFIN part in.3SM PRON.3SM also	so they listen to the story and they take part in it as well.	\N	\N	369685	372587	2902	
169	stammers7	ROY	mmhm@s:cym&eng ?	\N	\N	\N	\N	372599	373133	534	
179	stammers7	ROY	+< mmm@s:cym&eng .	\N	\N	\N	\N	406454	406733	279	
170	stammers7	GWN	hwnna (y)n gweithio dda fel arfer .	that PRT work.NONFIN good like habit	that usually works well.	\N	\N	373284	375281	1997	
171	stammers7	GWN	a mae o (y)n # short@s:eng and@s:eng sweet@s:eng .	and be.3S.PRES PRON.3SM PRT short and sweet	and it's short and sweet.	\N	\N	375584	377997	2413	
172	stammers7	GWN	wedyn &=cough [///] so@s:cym&eng mae hwnna (y)n para tua [/] # tua saith munud ella .	then so be.3S.PRES that PRT last.NONFIN about about seven minute maybe	so that lasts maybe around seven minutes.	\N	\N	378439	382839	4400	
180	stammers7	ROY	mae hynny yn syniad da .	be.3S.PRES that PRT idea good	that is a good idea.	\N	\N	408637	409670	1033	
173	stammers7	GWN	um@s:cym&eng maen nhw (we)di wneud cân yn [//] fel arfer yn y dechrau .	IM be.3PL.PRES PRON.3PL PRT.PAST do.NONFIN song PRT like habit in DET start	um, normally they've done a song at the start.	\N	\N	383431	386670	3239	
174	stammers7	GWN	a wedyn ## pan dw i (y)n gweddïo dw i fel arfer yn gofyn +"/ .	and then when be.1S.PRES PRON.1S PRT pray.NONFIN be.1S.PRES PRON.1S like habit PRT ask.NONFIN	and then when I pray I usually ask:	\N	\N	386949	390989	4040	
194	stammers7	GWN	so@s:cym&eng mae hwnna mynd +// .	so be.3S.PRES that go.NONFIN	so that goes...	\N	\N	433297	433993	696	
175	stammers7	GWN	+" oes (y)na rywbeth yn mynd ymlaen yn yr ysgol heddiw (y)ma ?	be.3S.PRES there something PRT go.NONFIN forward in DET school today here	"is there anything going on in the school today?"	\N	\N	391082	393172	2090	
181	stammers7	GWN	um@s:cym&eng wedyn maen nhw (y)n gwrando wedyn achos maen nhw (y)n clywed # am pobl maen nhw nabod dydy ?	IM then be.3PL.PRES PRON.3PL PRT listen.NONFIN then because be.3PL.PRES PRON.3PL PRT hear.NONFIN about people be.3PL.PRES PRON.3PL PRT know.NONFIN be.3S.PRES.NEG	so they listen then because they're hearing about people they know, aren't they?	\N	\N	410367	415290	4923	
176	stammers7	GWN	a wedyn timod fel arfer <yn ysgo(l)> [/] yn ysgol dw i (y)n mynd mae (y)na # un o (y)r dosbarthiadau (y)n mynd am trip@s:cym&eng neu # mae (y)na rhei o (y)r plant yn rywle <neu (dd)im yma> [?] # maen nhw (y)n deud rhei eraill [?] sy (y)n sâl neu mae un o (y)r athrawon yn disgwyl babi a pethau wedyn # &kəv roi hwnna mewn yn y gweddi .	and then know.2S like habit in school in school be.1S.PRES PRON.1S PRT go.NONFIN be.3S.PRES there one of DET classes PRT go.NONFIN for trip or be.3S.PRES there some of DET children PRT somewhere or NEG here be.3PL.PRES PRON.3PL PRT say.NONFIN some others be.PRES.REL PRT sick or be.3S.PRES one of DET teachers PRT expect.NONFIN baby and things	and then, you know, usually at the school I go to there's one of the classes going on a trip, or there are some of the children somewhere or not here, they mention some others who are ill, or one of the teachers is expecting a baby and things.	\N	\N	393172	408659	15487	
177	stammers7	ROY	+< mmhm@s:cym&eng .	\N	\N	\N	\N	399725	400363	638	
182	stammers7	ROY	uh_huh@s:cym&eng ?	\N	\N	\N	\N	415115	415696	581	
183	stammers7	GWN	um@s:cym&eng +. . .	\N	\N	\N	\N	416207	417020	813	
184	stammers7	ROY	huh@s:cym&eng .	\N	\N	\N	\N	417031	417821	790	
190	stammers7	GWN	ond # maen nhw (di)m_ond yn wneud gwasanaeth # i (y)r ysgol # unwaith bob wythnos .	but be.3PL.PRES PRON.3PL only PRT do.NONFIN service for DET school once every week	but they only do a service for the school once a week.	\N	\N	423985	429941	5956	
185	stammers7	ROY	mae hynny (y)n syniad da iawn .	be.3S.PRES that PRT idea good very	that's a very good idea.	\N	\N	418297	419365	1068	
191	stammers7	ROY	mmhm@s:cym&eng .	\N	\N	\N	\N	429953	430383	430	
186	stammers7	GWN	yndy .	be.3S.PRES	yes.	\N	\N	419295	419806	511	
187	stammers7	GWN	ond mae (y)n bity@s:cym&eng really@s:eng +// .	but be.3S.PRES PRT pity really	but it's a pity really.	\N	\N	419794	420595	801	
188	stammers7	GWN	achos dw i (y)n enjoio mynd .	because be.1S.PRES PRON.1S PRT enjoy.NONFIN go.NONFIN	because I enjoy going.	\N	\N	420572	421710	1138	
192	stammers7	GWN	a mae (y)r gwahanol dosbarthiadau (y)n cymryd rhan yn hwnna .	and be.3S.PRES DET different classes PRT take.NONFIN part in that	and the different classes take part in that.	\N	\N	430417	432983	2566	
193	stammers7	ROY	mmhm@s:cym&eng .	\N	\N	\N	\N	432948	433332	384	
197	stammers7	GWN	dw i just@s:cym&eng +/ .	be.1S.PRES PRON.1S just	I just...	\N	\N	441280	441698	418	
195	stammers7	GWN	so@s:cym&eng does (y)na (di)m_ond ella ## dau # neu tri Sul y flwyddyn lle maen nhw (y)n gallu gofyn i rywun mynd i_mewn .	so be.3S.PRES.NEG there only maybe two or three Sunday DET year where be.3PL.PRES PRON.3PL PRT can.NONFIN ask.NONFIN to someone go.NONFIN in	so there are only maybe two or three Sundays in the year where they can ask someone to come in.	\N	\N	434017	439798	5781	
196	stammers7	ROY	hmm@s:cym&eng .	\N	\N	\N	\N	439957	440421	464	
198	stammers7	ROY	be dau neu tri gwaith pob blwyddyn ?	what two or three time every year	what, two or three times a year?	\N	\N	441547	443173	1626	
199	stammers7	GWN	so@s:cym&eng &d dw i (y)n trio perswadio xxx # cael fi mewn bob tro .	so be.1S.PRES PRON.1S PRT try.NONFIN persuade.NONFIN xxx get.NONFIN PRON.1S in every turn	so I'm trying to persuade [...] to have me in each time.	\N	\N	443440	446702	3262	
200	stammers7	ROY	yeah@s:cym&eng .	\N	\N	\N	\N	446636	447240	604	
201	stammers7	GWN	um@s:cym&eng +. . .	\N	\N	\N	\N	447507	448436	929	
202	stammers7	ROY	huh@s:cym&eng .	\N	\N	\N	\N	448761	449365	604	
214	stammers7	GWN	so@s:cym&eng hwnna (y)dy (y)r dechrau (y)r daith .	so that be.3S.PRES DET start DET journey	so that's the beginning of the journey.	\N	\N	499118	500789	1671	
203	stammers7	GWN	wedyn dw i (y)n cael [///] dw i (dd)im yn &dex [///] dw i (we)di dechrau mynd i (y)r ysgol uwchradd wan .	then be.1S.PRES PRON.1S PRT get.NONFIN be.1S.PRES PRON.1S NEG PRT be.1S.PRES PRON.1S PRT.PAST start.NONFIN go.NONFIN to DET school secondary now	then, I get. . . I've started going into the secondary school now.	\N	\N	449284	452441	3157	
204	stammers7	GWN	so@s:cym&eng mae hwnna beth [?] eitha da .	so be.3S.PRES that thing quite good	so that's a pretty good thing.	\N	\N	453324	454415	1091	
223	stammers7	GWN	so@s:cym&eng (y)n gweithio (y)n # eitha +// .	so PRT work.NONFIN PRT quite	so it works fairly...	\N	\N	517187	519033	1846	
205	stammers7	GWN	wnes i wneud gwasanaeth i (y)r chweched dosbarth ychydig yn_ôl # um@s:cym&eng ar U_Two@s:cym&eng .	do.1S.PAST PRON.1S do.NONFIN service for DET sixth class a_bit back IM on U_Two	I did a service for the sixth form a while back, about U2 .	\N	\N	454404	458885	4481	
206	stammers7	ROY	+< huh@s:cym&eng .	\N	\N	\N	\N	456563	457039	476	
207	stammers7	ROY	U_Two@s:cym&eng ?	\N	\N	\N	\N	459117	459767	650	
208	stammers7	GWN	I_still_haven't_found_what_I'm_looking_for@s:cym&eng ["] .	\N	\N	\N	\N	459825	461822	1997	
209	stammers7	ROY	hmm@s:cym&eng .	\N	\N	\N	\N	461695	462031	336	
215	stammers7	GWN	a mae (y)na pethau eraill ti ddim yn hapus efo nhw .	and be.3S.PRES there things others PRON.2S NEG PRT happy with PRON.3PL	and there are other things you're not happy with.	\N	\N	500917	503274	2357	
210	stammers7	GWN	+, yn gwrando ar y cân ### a wedyn deud <fel # Cristion> [///] mae pobl yn meddwl ti (y)n dod yn Gristion a mae bywyd chdi (y)n hunky_dory@s:eng # a mae bob_dim yn nice@s:cym&eng .	PRT listen.NONFIN on DET song and then say.NONFIN like Christian be.3S.PRES people PRT think.NONFIN PRON.2S PRT come.NONFIN PRT Christian and be.3S.PRES life PRON.2S PRT hunky_dory and be.3S.PRES everything PRT nice	...listening to the song, and then saying that as a Christian. . . people think you become a Christian and your life's hunky-dory and everything's nice.	\N	\N	461985	472863	10878	
211	stammers7	GWN	a wedyn o'n i (y)n dangos fel slides@s:cym&eng o um@s:cym&eng # timod yr ## bombings@s:eng yn Llundain ar y bus@s:cym&eng um@s:cym&eng a newyn a rhyfel # a marwolaeth a pethau .	and then be.1S.IMP PRON.1S PRT show.NONFIN like slides of IM know.2S DET bombings in London on DET bus IM and famine and war and death and things	and then I showed, like, slides of, you know, the bombings in London on the bus, and famine and war and death and stuff.	\N	\N	473204	485894	12690	
212	stammers7	GWN	a wedyn o'n i (y)n deud timod &pa fel Cristion ti (y)n edrych ar y pethau fel (y)na # a ti ddim yn gallu deud bod chdi (we)di ffeindio be ti (y)n chwilio am .	and then be.1S.IMP PRON.1S PRT say.NONFIN know.NONFIN like Christian PRON.2S PRT look.NONFIN on DET things like there and PRON.2S NEG PRT can.NONFIN say.NONFIN be.NONFIN PRON.2S PRT.PAST find.NONFIN what PRON.2S PRT search.NONFIN for	and then I was saying, you know, as a Christian you look at things like that and you can't say that you've found what you're looking for.	\N	\N	485886	491935	6049	
216	stammers7	GWN	ond # mae (y)r daith +// .	but be.3S.PRES DET journey	but the journey's...	\N	\N	503580	505333	1753	
213	stammers7	GWN	achos mae pethau fel (y)na # <pan mae ffydd> [///] &=cough a dod yn Gristion yn [/] # yn daith .	because be.3S.PRES things like there when be.3S.PRES faith and come.NONFIN PRT Christian PRT PRT journey	because things like that, when faith. . . and becoming a Christian is a journey.	\N	\N	492291	498873	6582	
224	stammers7	GWN	ac # mae gwasanaeth fel (y)na (y)n eitha perthnasol iddyn nhw .	and be.3S.PRES service like there PRT quite relevant to.3PL PRON.3PL	and a service like that is fairly relevant to them.	\N	\N	519056	522783	3727	
217	stammers7	GWN	ti (y)n cyrraedd ar y ddiwedd yr # amser .	PRON.2S PRT arrive.NONFIN on DET end DET time	you arrive at the end of the time.	\N	\N	505368	508305	2937	
218	stammers7	GWN	so@s:cym&eng ti (y)n ddod yn nes at Dduw .	so PRON.2S PRT come.NONFIN PRT closer towards God	so you become closer to God.	\N	\N	508293	509942	1649	
228	stammers7	GWN	er wnaeth yr &i athrawes bytio mewn a roid ryw # humanist@s:eng # um@s:cym&eng thing@s:eng iddo fo er@s:cym&eng &hi ar_ôl fi orffen .	although do.3S.PAST DET female_teacher butt.NONFIN in and give.NONFIN some humanist IM thing to.3SM PRON.3SM IM after PRON.1S finish.NONFIN	even though the teacher did butt in and give it some humanist, er, thing after I'd finished.	\N	\N	531420	539524	8104	
219	stammers7	GWN	ti (y)n dod yn fwy fel Iesu_Grist .	PRON.2S PRT come.NONFIN PRT more like Jesus_Christ	you become more like Jesus Christ.	\N	\N	509930	511312	1382	
225	stammers7	GWN	ond ### dydy o (ddi)m yn um@s:cym&eng rhy in@s:eng your@s:eng face@s:eng fel bod yr athrawon yn dychryn .	but be.3S.PRES.NEG PRON.3SM NEG PRT IM too in your face like be.NONFIN DET teachers PRT scare.NONFIN	but it's not too in-your-face, so that the teachers are scared.	\N	\N	523410	530271	6861	
220	stammers7	GWN	a ti (y)n mynd # yn hapusach am dy sefyllfa di bob tro .	and PRON.2S PRT go.NONFIN PRT happier for POSS.2S situation PRON.2S every turn	and you get happier about your situation every time.	\N	\N	511393	514667	3274	
226	stammers7	ROY	mmm@s:cym&eng .	\N	\N	\N	\N	530283	530747	464	
221	stammers7	GWN	ond # mae (y)n dal cario (y)mlaen .	but be.3S.PRES PRT still carry.NONFIN forward	but it still carries on.	\N	\N	514679	516606	1927	
222	stammers7	ROY	hmm@s:cym&eng .	\N	\N	\N	\N	516525	517071	546	
230	stammers7	ROY	+< ar_ôl gorffen o ?	after end.NONFIN PRON.3SM	after it had finished?	\N	\N	537643	538537	894	
227	stammers7	GWN	maen nhw (y)n +// .	be.3PL.PRES PRON.3PL PRT	they're...	\N	\N	530712	531479	767	
229	stammers7	ROY	+< do be ar_ôl o ?	yes what after PRON.3SM	yes, what, after it?	\N	\N	535797	537109	1312	
233	stammers7	GWN	+" oh@s:cym&eng da iawn diolch yn fawr iawn .	IM good very thanks PRT big very	oh, very good, thanks very much.	\N	\N	541823	543564	1741	
231	stammers7	GWN	ond # timod wnaeth hi ddeud +"/ .	but know.2S do.3S.PAST PRON.3SF say.NONFIN	but, you know, she said:	\N	\N	539524	541777	2253	
232	stammers7	ROY	+< huh@s:cym&eng .	\N	\N	\N	\N	539896	540302	406	
234	stammers7	GWN	+" um@s:cym&eng so@s:cym&eng [?] raid ni gofio # mai taith ydy bywyd .	IM so necessity PRON.1PL remember.NONFIN PRT journey be.3S.PRES life	"um, so we have to remember that life is a journey."	\N	\N	543739	547477	3738	
235	stammers7	GWN	a pethau +" .	and things	and stuff.	\N	\N	547454	548023	569	
236	stammers7	ROY	huh@s:cym&eng .	\N	\N	\N	\N	547605	548011	406	
237	stammers7	GWN	ac o'n i (y)n meddwl +"/ .	and be.1S.IMP PRON.1S PRT think.NONFIN	and I was thinking:	\N	\N	548139	548522	383	
370	stammers7	ROY	ym mis Mehefin .	in month June	in June.	\N	\N	812886	814004	1118	
238	stammers7	GWN	+" well@s:cym&eng na dan ni (dd)im yn deud hynna .	well no be.1PL.PRES PRON.1PL NEG PRT say.NONFIN that	"well, no, we're not saying that",	\N	\N	548522	550043	1521	
258	stammers7	GWN	a tro nesa dw i (y)n mynd achos bod (y)na H_M_Is@s:eng yna so@s:cym&eng +. . .	and turn next be.1S.PRES PRON.1S PRT go.NONFIN because be.NONFIN there H_M_Is there so	and next time I'm going because there are H.M.I.s there, so...	\N	\N	578992	581534	2542	
239	stammers7	GWN	o'n i (y)n deud +" .	be.1S.IMP PRON.1S PRT say.NONFIN	I said.	\N	\N	549603	550009	406	
240	stammers7	ROY	huh@s:cym&eng .	\N	\N	\N	\N	550090	550589	499	
259	stammers7	ROY	uh_huh@s:cym&eng .	\N	\N	\N	\N	581557	582300	743	
241	stammers7	GWN	taith ydy bywyd Cristnogol .	journey be.3S.PRES life Christian	Christian life is a journey.	\N	\N	550566	552331	1765	
242	stammers7	GWN	dead_end@s:eng journey@s:eng ydy bywyd fel arall .	dead_end journey be.3S.PRES life like other	life's a dead-end journey otherwise.	\N	\N	553190	555245	2055	
243	stammers7	ROY	hmm@s:cym&eng .	\N	\N	\N	\N	555257	555721	464	
274	stammers7	GWN	achos mae (y)na # pethau am gwasanaethau dach chi ddim yn cael deud a pethau # o ran safbwynt o # +// .	because be.3S.PRES there things about services be.2PL.PRES PRON.2PL NEG PRT get.NONFIN say.NONFIN and things of part standpoint of	because there are things about services that you can't say and things, in terms of the standpoint of...	\N	\N	603678	609580	5902	
244	stammers7	GWN	&=laugh ond dan ni (dd)im yn cael deud hynna so@s:cym&eng wnes i ddim .	but be.1PL.PRES PRON.1PL NEG PRT get.NONFIN say.NONFIN that so do.1S.PAST PRON.1S NEG	but we're not allowed to say that, so I didn't.	\N	\N	555907	558182	2275	
245	stammers7	ROY	mmm@s:cym&eng .	\N	\N	\N	\N	558275	558670	395	
260	stammers7	GWN	<mae hynna (y)n> [?] +. . .	be.3S.PRES that PRT	that's...	\N	\N	582544	583856	1312	
246	stammers7	GWN	so@s:cym&eng dyna ni .	so there PRON.1PL	so there we are.	\N	\N	558647	559599	952	
247	stammers7	GWN	timod gobeithio ga i fynd yn_ôl .	know.2S hope.NONFIN get.1S.NONPAST PRON.1S go.NONFIN back	you know, I hope I can go back.	\N	\N	559587	560853	1266	
248	stammers7	ROY	yeah@s:cym&eng .	\N	\N	\N	\N	560922	561352	430	
271	stammers7	GWN	mae hi yn aelod yn y capel ti weld .	be.3S.PRES PRON.3SF PRT member in DET chapel PRON.2S see.NONFIN	she's a member at the chapel, you see.	\N	\N	597653	599232	1579	
249	stammers7	GWN	maen nhw (y)n gorod +// .	be.3PL.PRES PRON.3PL PRT must.NONFIN	they have to...	\N	\N	562025	562548	523	
261	stammers7	ROY	be (y)dy H_M_I@s:eng ?	what be.3S.PRES H_M_I	what's an H.M.I. ?	\N	\N	583740	584808	1068	
250	stammers7	GWN	<a maen> [//] a maen nhw fath [///] athrawon yn eitha # yn enwedig yn yr ysgol uwchradd +"/ .	and be.3PL.PRES and be.3PL.PRES PRON.3PL kind teachers PRT quite PRT specially in DET school secondary	and they're like. . . teachers are quite. . . especially at secondary school:	\N	\N	562548	566425	3877	
262	stammers7	ROY	Her Majesty's Inspectors ?	\N	\N	\N	\N	584820	586225	1405	eng
251	stammers7	GWN	+" um@s:cym&eng well@s:cym&eng dan ni ddim (we)di cael neb i_mewn yn siarad .	IM well be.1PL.PRES PRON.1PL NEG PRT.PAST have.NONFIN nobody in PRT speak.NONFIN	"um, well, we've not had anyone in to speak."	\N	\N	566975	570749	3774	
263	stammers7	GWN	yeah@s:cym&eng .	\N	\N	\N	\N	586283	586701	418	
252	stammers7	GWN	+" so@s:cym&eng dan ni (y)n trio # boost_io@s:eng+cym fyny hynna .	so be.1PL.PRES PRON.1PL PRT try.NONFIN boost.NONFIN up that	so we're trying to boost that up.	\N	\N	570923	573558	2635	
253	stammers7	ROY	yeah@s:cym&eng .	\N	\N	\N	\N	573535	574382	847	
264	stammers7	ROY	yeah@s:cym&eng !	\N	\N	\N	\N	586886	587304	418	
254	stammers7	GWN	iawn <fydd roi> [?] rywbeth iddyn nhw roid i_lawr .	right be.3S.FUT give.NONFIN something to.3PL PRON.3PL put.NONFIN down	fine, it'll give them something to put down.	\N	\N	574359	576739	2380	
255	stammers7	ROY	uh_huh@s:cym&eng .	\N	\N	\N	\N	576821	577401	580	
256	stammers7	GWN	mae (y)n excuse@s:eng i fi gael mynd yna dydy ?	be.3S.PRES PRT excuse to PRON.1S get.NONFIN go.NONFIN there be.3S.PRES.NEG	it's an excuse for me to get to go there, isn't it?	\N	\N	577111	578748	1637	
257	stammers7	ROY	ydy .	be.3S.PRES	yes.	\N	\N	578667	578968	301	
265	stammers7	GWN	so@s:cym&eng maen nhw (y)n tsiecio (y)r ysgol .	so be.3PL.PRES PRON.3PL PRT check.NONFIN DET school	so they're checking the school.	\N	\N	587281	588303	1022	
266	stammers7	ROY	huh@s:cym&eng .	\N	\N	\N	\N	588233	588837	604	
272	stammers7	GWN	so@s:cym&eng # wnes i ddeu(d) (wr)th hi (y)n syth +"/ .	so do.1S.PAST PRON.1S say.NONFIN to PRON.3SF PRT straight	so I told her straight away:	\N	\N	599243	600706	1463	
267	stammers7	GWN	um@s:cym&eng yn gwneud yn sure@s:cym&eng bod o (y)n +// .	um PRT make.NONFIN PRT sure be.NONFIN PRON.3SM PRT	um, making sure that it's ...	\N	\N	589847	591821	1974	
268	stammers7	GWN	so@s:cym&eng fydd hynna (y)n eitha # profiad o ran # +// .	so be.3S.FUT that PRT quite experience of part	so that will be quite an experience in terms of...	\N	\N	591832	594862	3030	
269	stammers7	GWN	ond mae (y)r ddynes sy (we)di gofyn i fi +// .	but be.3S.PRES DET woman be.PRES.REL PRT.PAST ask.NONFIN to PRON.1S	but the woman who's asked me...	\N	\N	594913	596759	1846	
273	stammers7	GWN	+" well@s:cym&eng ## fydd raid fi watsiad felly .	well be.3S.FUT necessity PRON.1S watch.NONFIN thus	"well, I'll have to watch it, then."	\N	\N	600683	603690	3007	
270	stammers7	GWN	er@s:cym&eng mae hi (y)n athrawes .	IM be.3S.PRES PRON.3SF PRT teacher	er, she's a teacher.	\N	\N	596770	597664	894	
278	stammers7	GWN	timod achos ti (y)n gallu iwsio fo fel just@s:cym&eng mynd yna deud dwyt ?	know.2S because PRON.2S PRT can.NONFIN use.NONFIN PRON.3SM like just go.NONFIN there say.NONFIN be.2S.PRES.NEG	you know, because you can use it as [a chance to] just go there and say it, can't you?	\N	\N	613330	616360	3030	
275	stammers7	GWN	wna i wneud yn sure@s:cym&eng bod fi (y)n ### xxx .	do.1S.NONPAST PRON.1S make.NONFIN PRT sure be.NONFIN PRON.1S PRT xxx	I'll make sure I'm [...].	\N	\N	609603	613330	3727	
276	stammers7	ROY	+< mmm@s:cym&eng .	\N	\N	\N	\N	610474	610857	383	
277	stammers7	ROY	+< mmhm@s:cym&eng .	\N	\N	\N	\N	612262	612738	476	
279	stammers7	GWN	ond # os dyn nhw (ddi)m yn deud dim_byd nag yn +// .	but if be.3PL.PRES PRON.3PL NEG PRT say.NONFIN nothing nor PRT	but if they don't say anything, or...	\N	\N	616449	619247	2798	
280	stammers7	GWN	os ti (y)n gofyn +"/ .	if PRON.2S PRT ask.NONFIN	if you ask:	\N	\N	620095	620791	696	
281	stammers7	GWN	+" be dw i (y)n cael deud ?	what be.1S.PRES PRON.1S PRT get.NONFIN say.NONFIN	"what can I say?"	\N	\N	620791	621511	720	
282	stammers7	GWN	+" a be dw i ddim yn cael ddeud ?	and what be.1S.PRES PRON.1S NEG PRT get.NONFIN say.NONFIN	"and what can I not say?"	\N	\N	621499	622382	883	
305	stammers7	GWN	a maen nhw gyd yn hen really@s:eng (he)blaw am un teulu .	and be.3PL.PRES PRON.3PL all PRT old really except about one family	and they're all old really, except for one family.	\N	\N	650869	652866	1997	
283	stammers7	GWN	+, a dyn nhw (ddi)m yn deud dim_byd (ba)sa chdi gallu mynd mewn a deud rywbeth .	and be.3PL.PRES PRON.3PL NEG PRT say.NONFIN nothing be.2S.CONDIT PRON.2S can.NONFIN go.NONFIN in and say.NONFIN something	...and they don't say anything, you could go in and say anything.	\N	\N	622370	624495	2125	
284	stammers7	ROY	+< mmhm@s:cym&eng .	\N	\N	\N	\N	623403	623868	465	
285	stammers7	GWN	ond # mae (y)n well # xxx ti (y)n gael cyfle i ddod yn_ôl wedyn .	but be.3S.PRES PRT better xxx PRON.2S PRT have.NONFIN opportunity to come.NONFIN back after	but it's better [...] you get a chance to come back afterwards.	\N	\N	624506	628791	4285	
286	stammers7	ROY	+< mmm@s:cym&eng .	\N	\N	\N	\N	625296	625633	337	
287	stammers7	ROY	mmhm@s:cym&eng ?	\N	\N	\N	\N	628779	629313	534	
288	stammers7	GWN	+, gobeithio .	hope.NONFIN	...hopefully.	\N	\N	629801	630625	824	
289	stammers7	ROY	mmm@s:cym&eng .	\N	\N	\N	\N	632517	633063	546	
306	stammers7	GWN	a maen nhw (y)n really@s:eng da chwarae teg .	and be.3PL.PRES PRON.3PL PRT really good play.NONFIN fair	and they are really good, to be fair.	\N	\N	652878	654457	1579	
290	stammers7	GWN	a dw i (y)n dechrau clwb plant yn um@s:cym&eng Abergwyngregyn@s:cym&eng .	and be.1S.PRES PRON.1S PRT start.NONFIN club children in IM Abergwyngregyn	and I'm starting up a children's club in Abergwyngregyn.	\N	\N	633156	635826	2670	
291	stammers7	ROY	yn_dwyt ?	be.2S.PRES.NEG	aren't you?	\N	\N	635826	636743	917	
315	stammers7	GWN	yeah@s:cym&eng dw i [///] ond mae &dar darlithydd fi er@s:cym&eng &da +// .	yeah be.1S.PRES PRON.1S but be.3S.PRES lecturer PRON.1S IM	yeah, but my lecturer is, er...	\N	\N	669689	671976	2287	
292	stammers7	GWN	nos (y)fory .	night tomorrow	tomorrow evening.	\N	\N	636546	637150	604	
307	stammers7	GWN	um@s:cym&eng wedyn mae mam@s:cym&eng yr teulu (y)na (y)n [/] yn helpu fi .	IM then be.3S.PRES mother DET family there PRT PRT help.NONFIN PRON.1S	so the mother of that family is helping me.	\N	\N	655188	658706	3518	
293	stammers7	GWN	un newydd .	one new	a new one.	\N	\N	637150	637939	789	
308	stammers7	ROY	huh@s:cym&eng .	\N	\N	\N	\N	658845	659171	326	
294	stammers7	GWN	so@s:cym&eng be wnaethon ni gael oedd fath â ryw +. . .	so what do.1PL.PAST PRON.1PL have.NONFIN be.3S.IMP kind with some	so what we got was some kind of...	\N	\N	637901	640420	2519	
295	stammers7	ROY	+< xxx [=! mumbles] .	\N	\N	\N	\N	638888	639689	801	
296	stammers7	ROY	be gen [/] gen ti capel yno ?	what with with PRON.2S chapel there	what, have you got a chapel there?	\N	\N	640386	641988	1602	
316	stammers7	ROY	+< &=laugh .	\N	\N	\N	\N	670003	670734	731	
297	stammers7	GWN	oedd .	be.3S.IMP	yes.	\N	\N	642069	642708	639	
298	stammers7	ROY	oh@s:cym&eng .	\N	\N	\N	\N	642766	643311	545	
309	stammers7	GWN	&=cough a wedyn # +/ .	and then	and then...	\N	\N	659287	660355	1068	
299	stammers7	GWN	(doe)s (y)na (dd)im lot@s:cym&eng yn mynd +/ .	be.3S.PRES.NEG there NEG lot PRT go.NONFIN	there aren't many who go...	\N	\N	643567	644368	801	
300	stammers7	ROY	(di)m_ond un o (y)r saith ?	only one of DET seven	just one of the seven?	\N	\N	643787	644728	941	
301	stammers7	GWN	tri .	three	three.	\N	\N	645285	646016	731	
310	stammers7	ROY	<dyna lle> [/] dyna lle oedd y hen llys # Llewelyn@s:cym&eng .	there where there where be.3S.IMP DET old court Llewelyn	that's where Llewelyn's old court was.	\N	\N	660424	663861	3437	
302	stammers7	GWN	tri sy gynnof fi .	three be.PRES.REL with.1S PRON.1S	I've got three.	\N	\N	646005	646945	940	
303	stammers7	ROY	+< tri .	three	three.	\N	\N	646249	646713	464	
322	stammers7	GWN	so@s:cym&eng # dw i (y)n coelio fo mwy na neb arall .	so be.1S.PRES PRON.1S PRT believe.NONFIN PRON.3SM more than nobody other	so I believe him more than anybody else.	\N	\N	678861	681044	2183	
304	stammers7	GWN	um@s:cym&eng # ond um@s:cym&eng (doe)s (y)na (ddi)m lot@s:cym&eng yn mynd .	IM but IM be.3S.PRES.NEG there NEG lot PRT go.NONFIN	um, but there aren't many who go.	\N	\N	647166	650521	3355	
317	stammers7	GWN	Griff@s:cym&eng Griffiths@s:cym&eng oedd yn darlith i fi yn hanes Cymru .	Griff Griffiths be.3S.IMP PRT lecture.NONFIN to PRON.1S in history Wales	Griff Griffiths lectured me in Welsh history.	\N	\N	672069	674066	1997	
311	stammers7	GWN	yeah@s:cym&eng maen nhw (y)n deud .	yeah be.3PL.PRES PRON.3PL PRT say.NONFIN	yeah, so they say.	\N	\N	664151	665173	1022	
318	stammers7	ROY	uh_huh@s:cym&eng .	\N	\N	\N	\N	673788	674252	464	
312	stammers7	GWN	ond oedd y darlithydd fi (y)n deud mae hwnna (y)n rwtsh .	but be.3S.IMP DET lecturer PRON.1S PRT say.NONFIN be.3S.PRES that PRT nonsense	but my lecturer was saying that's nonsense.	\N	\N	665185	667344	2159	
313	stammers7	GWN	doedd o ddim yna go iawn .	be.3S.IMP.NEG PRON.3SM NEG there quite right	he wasn't really there.	\N	\N	667356	668319	963	
323	stammers7	ROY	huh@s:cym&eng .	\N	\N	\N	\N	681009	681984	975	
314	stammers7	ROY	oedd ar y teledu .	be.3S.IMP on DET television	it was on TV.	\N	\N	668331	669202	871	
319	stammers7	GWN	a fo ydy # main@s:eng man@s:eng hanes Cymru .	and PRON.3SM be.3S.PRES main man history Wales	and he's the main man of Welsh history.	\N	\N	674414	677421	3007	
320	stammers7	ROY	+< oh@s:cym&eng .	\N	\N	\N	\N	676864	677456	592	
321	stammers7	GWN	fo (y)dy (y)r chief@s:eng .	PRON.3SM be.3S.PRES DET chief	he's the chief.	\N	\N	677549	678455	906	
325	stammers7	GWN	dan ni (we)di bod round@s:cym&eng y pentre yn roi flyers@s:eng a pethau cyn Dolig .	be.1PL.PRES PRON.1PL PRT.PAST be.NONFIN round DET village PRT give.NONFIN flyers and things before Christmas	we've been round the village giving out flyers and things before Christmas.	\N	\N	686667	689186	2519	
324	stammers7	GWN	um@s:cym&eng # a wedyn # yeah@s:cym&eng so@s:cym&eng <mae (y)n> [/] <mae (y)n> [/] <mae (y)n> [/] gyfle [?] bach da .	IM and then yeah so be.3S.PRES PRT be.3S.PRES PRT be.3S.PRES PRT opportunity little good	and so. . . yeah, so it's a good little opportunity.	\N	\N	682534	686667	4133	
326	stammers7	GWN	um@s:cym&eng # a wnaeth (y)na # pump troi fyny a rhieni nhw .	IM and do.3S.PAST there five turn.NONFIN up and parents PRON.3PL	and there were five turned up, and their parents.	\N	\N	689871	694782	4911	
327	stammers7	GWN	so@s:cym&eng oedd hynna (y)n dda .	so be.3S.IMP that PRT good	so that was good.	\N	\N	695885	696744	859	
328	stammers7	ROY	mmhm@s:cym&eng .	\N	\N	\N	\N	696744	697104	360	
460	stammers7	GWN	wedyn mae o (y)n priodi .	then be.3S.PRES PRON.3SM PRT marry.NONFIN	then he's getting married.	\N	\N	1042699	1043651	952	
555	stammers7	ROY	gobeithio yeah@s:cym&eng .	hope.NONFIN yeah	hopefully, yeah.	\N	\N	1248820	1250063	1243	
329	stammers7	GWN	a wedyn wnaeth [///] o hynna # oedden nhw (y)n deud bod nhw (y)n cael ryw fath o ## children's@s:eng day@s:eng of@s:eng fun@s:eng yn y pentre .	and then do.3S.PAST from that be.3PL.IMP PRON.3PL PRT say.NONFIN be.NONFIN PRON.3PL PRT have.NONFIN some kind of children's day of fun in DET village	and then they. . . from that, they were saying they were having some kind of children's day of fun in the village.	\N	\N	696861	703072	6211	
356	stammers7	GWN	dan ni wneud um@s:cym&eng ### Dydd # Mawrth ### Ynyd yeah@s:cym&eng # ac Dydd Mercher Lludw # dechrau (y)r Grawys a # diwrnod cyn dechrau (y)r Grawys a # Dydd Sul y Mamau # Sul y Palmwydd .	be.1PL.PRES PRON.1PL do.NONFIN IM day Tuesday initial yeah and day Wednesday ash start DET Lent and day before start DET Lent and day Sunday DET mothers Sunday DET palms	we do, um, Shrove Tuesday, yeah, and Ash Wednesday, the start of Lent and the day before the start of Lent, and Mothering Sunday, Palm Sunday.	\N	\N	753710	770509	16799	
330	stammers7	GWN	um@s:cym&eng a wedyn wnes i ddeud +"/ .	IM and then do.1S.PAST PRON.1S say.NONFIN	and then I said:	\N	\N	703154	704768	1614	
345	stammers7	ROY	ti wybod bod o (y)n wahanol yn America@s:cym&eng ?	PRON.2S know.NONFIN be.NONFIN PRON.3SM PRT different in America	you know it's different in America?	\N	\N	731413	733061	1648	
331	stammers7	GWN	+" well@s:cym&eng dach chi isio help@s:cym&eng ?	well be.2PL.PRES PRON.2PL want help	"well, do you want some help?"	\N	\N	704756	705836	1080	
332	stammers7	GWN	so@s:cym&eng wnes i fynd i fod yn Sion_Corn a # um@s:cym&eng wneud ychydig [?] o games@s:cym&eng a pethau .	so do.1S.PAST PRON.1S go.NONFIN to be.NONFIN PRT Santa_Claus and IM do.NONFIN a_bit of games and things	so I went along to be Father Christmas and do a few games and things.	\N	\N	705848	710050	4202	
333	stammers7	ROY	oh@s:cym&eng cool@s:cym&eng .	\N	\N	\N	\N	709992	710654	662	
334	stammers7	GWN	so@s:cym&eng dw i (we)di dod i nabod y pobl # ychydig .	so be.1S.PRES PRON.1S PRT.PAST come.NONFIN to know.NONFIN DET people a_bit	so I've gotten to know the people a bit.	\N	\N	710561	713371	2810	
346	stammers7	GWN	na .	no	no.	\N	\N	734571	734919	348	
335	stammers7	GWN	timod maen nhw (y)n +// .	know.2S be.3PL.PRES PRON.3PL PRT	you know, they're...	\N	\N	713359	714195	836	
336	stammers7	GWN	a dw i (we)di wneud rywbeth iddyn nhw am free@s:cym&eng .	and be.1S.PRES PRON.1S PRT.PAST do.NONFIN something to.3PL PRON.3PL for free	and I've done something for them for free.	\N	\N	714172	716064	1892	
360	stammers7	GWN	wedyn +. . .	then	then...	\N	\N	786411	788304	1893	
337	stammers7	GWN	so@s:cym&eng # gobeithio fydden nhw (y)n ddechrau ddod i (y)r # club@s:cym&eng plant .	so hope.NONFIN be.3PL.FUT PRON.3PL PRT start.NONFIN come.NONFIN to DET club children	so hopefully they'll start coming to the children's club.	\N	\N	716053	719571	3518	
347	stammers7	ROY	yndy mae (y)n mis Mai .	be.3S.PRES be.3S.PRES in month May	yes, it's in May.	\N	\N	734954	735929	975	
338	stammers7	GWN	wedyn dan ni (y)n mynd i wneud # cardiau Dydd Sul y Mamau efo nhw ac ychydig o games@s:cym&eng .	then be.1PL.PRES PRON.1PL PRT go.NONFIN to do.NONFIN cards day Sunday DET mothers with PRON.3PL and a_bit of games	then we're going to do some Mothering Sunday cards with them, and a few games.	\N	\N	720058	725794	5736	
348	stammers7	GWN	+< xx +/ .	\N	\N	\N	\N	735325	735639	314	
339	stammers7	ROY	+< syniad da .	idea good	good idea.	\N	\N	724749	725561	812	
349	stammers7	GWN	oh@s:cym&eng yeah@s:cym&eng ?	\N	\N	\N	\N	736451	736846	395	
340	stammers7	ROY	pryd mae hwnna ?	when be.3S.PRES that	when is that?	\N	\N	725735	726653	918	
350	stammers7	ROY	uh_huh@s:cym&eng .	\N	\N	\N	\N	736893	737357	464	
341	stammers7	GWN	be ?	what	what?	\N	\N	727071	727698	627	
342	stammers7	GWN	y club@s:cym&eng ?	DET club	the club?	\N	\N	727930	728417	487	
357	stammers7	GWN	Dydd Iau # Cablyd ydy Iau y Swper Ola(f) .	day Thursday Maundy be.3S.PRES Thursday DET supper last	Maundy Thursday is the Thursday of the Last Supper,	\N	\N	772170	775235	3065	
343	stammers7	ROY	+< Dydd Sul y Mamau .	day Sunday DET mothers	Mothering Sunday.	\N	\N	728127	729126	999	
351	stammers7	GWN	pam ?	why	why?	\N	\N	737671	738123	452	
344	stammers7	GWN	wythnos i dydd Sul .	week to day Sunday	a week this Sunday.	\N	\N	729520	730705	1185	
352	stammers7	ROY	yr ail neu trydydd Sul ym mis Mai .	DET second or third Sunday in month May	the second or third Sunday in May.	\N	\N	737798	739482	1684	
353	stammers7	GWN	mae o (y)n fath â (y)n bron yn rhan o (y)r calendar@s:cym&eng Cristnogol yn y # gwlad yma .	be.3S.PRES PRON.3SM PRT kind with PRT nearly PRT part of DET calendar Christian in DET country here	it's almost like a part of the Christian calendar in this country.	\N	\N	742953	747643	4690	
354	stammers7	ROY	huh@s:cym&eng .	\N	\N	\N	\N	747760	748154	394	
358	stammers7	GWN	+, Dydd_Gwener_Groglith ac Dydd Sul ### yr um@s:cym&eng # Atgyfodiad .	Good_Friday and day Sunday DET IM resurrection	...Good Friday and the Sunday of the. . . Resurrection.	\N	\N	775432	781841	6409	
355	stammers7	GWN	yn y gwaith dan ni (y)n wneud ar y Pasg crefft wan # mae hwnna (y)n rhan .	in DET work be.1PL.PRES PRON.1PL PRT do.NONFIN on DET Easter craft now be.3S.PRES that PRT part	in the craft work we're doing on Easter now, that's a part.	\N	\N	750144	753616	3472	
359	stammers7	ROY	hmm@s:cym&eng .	\N	\N	\N	\N	781829	782259	430	
364	stammers7	GWN	Mothering_Sunday@s:eng ["] dw i (y)n meddwl maen nhw (y)n galw fo (y)n # Lloegr .	Mothering_Sunday be.1S.PRES PRON.1S PRT think.NONFIN be.3PL.PRES PRON.3PL PRT call.NONFIN PRON.3SM in England	"Mothering Sunday", I think they call it in England.	\N	\N	796721	800111	3390	
361	stammers7	GWN	mae hynna (y)n rhyfedd hefyd yeah@s:cym&eng # bod o (y)n ## +//?	be.3S.PRES that PRT strange also yeah be.NONFIN PRON.3SM PRT	that's strange too, isn't it, that it's...?	\N	\N	788455	791508	3053	
365	stammers7	ROY	+< mmm@s:cym&eng .	\N	\N	\N	\N	798698	799232	534	
362	stammers7	GWN	be dach chi (y)n galw o ?	what be.2PL.PRES PRON.2PL PRT call.NONFIN PRON.3SM	what do you call it?	\N	\N	791740	792657	917	
363	stammers7	ROY	er@s:cym&eng Mother's_Day@s:eng .	\N	\N	\N	\N	793145	794190	1045	
366	stammers7	ROY	mae Father's_Day@s:eng yr un peth ## yn America@s:cym&eng .	be.3S.PRES Father's_Day DET one thing in America	Father's Day is the same, in America.	\N	\N	804886	809542	4656	
367	stammers7	GWN	dw i (dd)im yn gwybod pryd mae Father's_Day@s:eng yn # wlad yma .	be.1S.PRES PRON.1S NEG PRT know.NONFIN when be.3S.PRES Father's_Day in coutry here	I don't know when Father's Day is in this country.	\N	\N	809681	812375	2694	
368	stammers7	ROY	+< yndy mae [/] mae o (y)r un peth .	be.3S.PRES be.3S.PRES be.3S.PRES PRON.3SM DET one thing	yes, it's the same thing.	\N	\N	810471	812421	1950	
369	stammers7	GWN	oh@s:cym&eng yeah@s:cym&eng ?	\N	\N	\N	\N	812433	812874	441	
371	stammers7	ROY	&=sigh so@s:cym&eng <os dw i isio> [/] os dw i isio # prynu cerdyn # bydd rhaid wneud o cyn +. . .	so if be.1S.PRES PRON.1S want if be.1S.PRES PRON.1S want buy.NONFIN card be.3S.FUT necessity do.NONFIN PRON.3SM before	so if I want to buy a card, I'll have to do it before...	\N	\N	816036	821992	5956	
390	stammers7	ROY	mmm@s:cym&eng dw i (y)n siarad efo hyna (y)n mwy aml na (y)r ## un iau .	IM be.1S.PRES PRON.1S PRT speak.NONFIN with eldest PRT more often than DET one younger	mmm, I talk with the eldest more often than the younger one.	\N	\N	863299	867839	4540	
372	stammers7	GWN	++ dydd Sul .	day Sunday	...Sunday.	\N	\N	823141	823814	673	
373	stammers7	ROY	yeah@s:cym&eng .	\N	\N	\N	\N	824174	824708	534	
374	stammers7	GWN	++ i gael +/ .	to get.NONFIN	...to be able to...	\N	\N	824929	825475	546	
403	stammers7	ROY	chwaer hyna wedi bod yn sôn amdano fo am blynyddoedd .	sister eldest PRT.PAST be.NONFIN PRT talk.NONFIN about.3SM PRON.3SM for years	the elder sister's been talking about it for years.	\N	\N	898957	901511	2554	
375	stammers7	ROY	+< xxx bydd dim un ar gael .	xxx be.3S.FUT NEG one on get.NONFIN	[...] there won't be a single one available.	\N	\N	825138	827054	1916	
376	stammers7	GWN	mmm@s:cym&eng .	\N	\N	\N	\N	827146	827448	302	
391	stammers7	ROY	ella bob pythefnos rywbeth fel (y)na .	maybe every fortnight something like there	maybe every fortnight, something like that.	\N	\N	869932	871407	1475	
377	stammers7	ROY	oh@s:cym&eng no@s:eng well@s:cym&eng unwaith <am mod> [?] i (y)n byw ym Mhenygroes@s:cym&eng ac oedd y postmaster@s:eng +// .	IM no well once for be.NONFIN PRON.1S PRT live.NONFIN in Penygroes and be.3S.IMP DET postmaster	oh no, well once, because I was living in Penygroes, and the postmaster...	\N	\N	827692	831616	3924	
378	stammers7	ROY	fo oedd landlord@s:cym&eng fi .	PRON.3SM be.3S.IMP landlord PRON.1S	he was my landlord.	\N	\N	831871	833346	1475	
399	stammers7	ROY	yndy <mae hi (y)n> [/] # mae hi (y)n gefnogol de .	be.3S.PRES be.3S.PRES PRON.3SF PRT be.3S.PRES PRON.3SF PRT supportive TAG	yes, she's supportive.	\N	\N	889750	892409	2659	
379	stammers7	ROY	so@s:cym&eng &g es i ato fo .	so go.1S.PAST PRON.1S to.3SM PRON.3SM	so I went to him.	\N	\N	834147	835981	1834	
392	stammers7	GWN	be maen nhw (y)n meddwl o bod chdi (y)n byw yn fa(n) (y)ma ta ?	what be.3PL.PRES PRON.3PL PRT think.NONFIN of be.NONFIN PRON.2S PRT live.NONFIN in place here then	what do they think of you living here then?	\N	\N	871291	873659	2368	
380	stammers7	ROY	ac oedd gynno fo rhai ## sbâr .	and be.3S.IMP with.3SM PRON.3SM some spare	and he had some spare.	\N	\N	836306	839325	3019	
381	stammers7	ROY	so@s:cym&eng ges i un yno .	so get.1S.PAST PRON.1S one there	so I got one there.	\N	\N	840033	841310	1277	
382	stammers7	ROY	dw i meddwl na [?] # mmm@s:cym&eng blwyddyn diwetha wnes i colli o .	be.1S.PRES PRON.1S think.NONFIN PRT IM year previous do.1S.PAST PRON.1S lose.NONFIN PRON.3SM	I think that, mmm, last year I missed it.	\N	\N	841566	845002	3436	
393	stammers7	ROY	um@s:cym&eng # Mam@s:cym&eng yn ngholli .	IM Mam PRT lose.NONFIN	um, my mother's missing me.	\N	\N	873961	877305	3344	
383	stammers7	ROY	xx so@s:cym&eng fydd rhaid gwneud un &=laugh !	xx so be.3S.FUT necessity make.NONFIN one	so I'll have to make one!	\N	\N	845734	850169	4435	
384	stammers7	ROY	xx +/ .	\N	\N	\N	\N	851748	852224	476	
385	stammers7	GWN	+< pa mor aml wyt ti (y)n ffonio adre a pethau ?	which so often be.2S.PRES PRON.2S PRT phone.NONFIN home and things	how often do you phone home and things?	\N	\N	851852	853919	2067	
386	stammers7	ROY	er@s:cym&eng trio ffonio Mam@s:cym&eng bob wythnos .	IM try.NONFIN phone.NONFIN mother every week	um, I try to phone my mother every week.	\N	\N	853837	856426	2589	
394	stammers7	ROY	&pss a dw i (y)n gallu dallt hynny .	and be.1S.PRES PRON.1S PRT can.NONFIN understand.NONFIN that	and I can understand that.	\N	\N	877595	879418	1823	
387	stammers7	ROY	ond mae o (y)n gweithio allan i ryw bob wsnos bob bythefnos .	but be.3S.PRES PRON.3SM PRT work.NONFIN out to some every week every fortnight	but it's works out roughly each week or each fortnight.	\N	\N	856891	859642	2751	
388	stammers7	GWN	mmm@s:cym&eng .	\N	\N	\N	\N	859654	859979	325	
395	stammers7	GWN	hmm@s:cym&eng .	\N	\N	\N	\N	879487	879917	430	
389	stammers7	ROY	a: dwy chwaer +. . .	and two sister	and [my] two sisters...	\N	\N	860710	862765	2055	
400	stammers7	ROY	ond er@s:cym&eng # ella hi [?] dim cymaint â (y)r chwaer arall .	but IM maybe PRON.3SF NEG so_much with DET sister other	but maybe not as much as the other sister.	\N	\N	893071	895683	2612	
396	stammers7	ROY	um@s:cym&eng mae chwaer hyna mae hi (y)n gefnogol iawn .	IM be.3S.PRES sister eldest be.3S.PRES PRON.3SF PRT supportive very	the elder sister, she's very supportive.	\N	\N	880346	883539	3193	
405	stammers7	ROY	oedden [/] oedden nhw (y)n &bwr bwriadu wneud o # ha(f) diwetha .	be.3PL.IMP be.3PL.IMP PRON.3PL PRT plan.NONFIN do.NONFIN PRON.3SM summer previous	they were planning to do it last summer.	\N	\N	906701	909719	3018	
397	stammers7	ROY	mae hi (y)n # right@s:cym&eng falch ohona i .	be.3S.PRES PRON.3SF PRT right proud of.1S PRON.1S	she's very proud of me.	\N	\N	884247	886871	2624	
401	stammers7	GWN	dyn nhw (we)di dod drosodd i weld chdi ?	be.3PL.PRES PRON.3PL PRT.PAST come.NONFIN over to see.NONFIN PRON.2S	have they been over to see you?	\N	\N	895695	897100	1405	
398	stammers7	ROY	a (y)r [/] um@s:cym&eng yr un iau ?	and DET IM DET one younger	and, um, the younger one?	\N	\N	887452	890935	3483	
404	stammers7	ROY	ond um@s:cym&eng <wnaeth stuff@s:cym&eng dod> [?] fel teulu hi yn # mynd ar y ffordd .	but IM do.3S.PAST stuff come.NONFIN like family PRON.3SF PRT go.NONFIN on DET way	but stuff came up, like her family going on the road.	\N	\N	902335	906155	3820	
402	stammers7	ROY	na yn anffodus na .	no PRT unfortunate no	no, unfortunately not.	\N	\N	897088	898702	1614	
406	stammers7	ROY	ond dyma nhw (y)n ffeindio allan oedd hi (y)n feichiog eto .	but here PRON.3PL PRT find.NONFIN out be.3S.IMP PRON.3SF PRT pregnant again	but then they found out she was pregnant again.	\N	\N	910567	912819	2252	
407	stammers7	ROY	so@s:cym&eng wnaeth hynny sbwylio hwnna .	so do.3S.PAST that spoil.NONFIN that	so that spoilt that.	\N	\N	912889	914654	1765	
408	stammers7	ROY	um@s:cym&eng +/ .	\N	\N	\N	\N	915188	915849	661	
409	stammers7	GWN	o'n i (dd)im yn gwybod bod chdi (y)n Uncle@s:cym&eng Roy@s:cym&eng .	be.1S.IMP PRON.1S NEG PRT know.NONFIN be.NONFIN PRON.2S PRT uncle Roy	I didn't know you were Uncle Roy.	\N	\N	915838	917486	1648	
410	stammers7	ROY	yndw .	be.1S.PRES	yes.	\N	\N	917452	917928	476	
411	stammers7	ROY	pedwar a <bydd un> [//] mae un arall ar y ffordd .	four and be.3S.FUT one be.3S.PRES one other on DET way	four, and there's another one on the way.	\N	\N	918868	921910	3042	
550	stammers7	ROY	gyn i ddigon i wneud .	with.1S PRON.1S enough to do.NONFIN	I've got enough to do.	\N	\N	1242981	1244501	1520	
412	stammers7	GWN	(y)dy efo pump o blant neu (y)dy (y)r llall efo rei ?	be.3S.PRES with five of children or be.3S.PRES DET other with some	has she got five children, or has the other one got some?	\N	\N	922397	924592	2195	
450	stammers7	ROY	ti (dd)im isio gadael o <tan y> [//] tan munud ola .	PRON.2S NEG want leave.NONFIN PRON.3SM until DET until minute last	you don't want to leave it till the last minute.	\N	\N	1018578	1021167	2589	
413	stammers7	ROY	mae un efo pedwar .	be.3S.PRES one with four	one has four.	\N	\N	924580	927715	3135	
429	stammers7	GWN	yn +. . .	in	in..?	\N	\N	977602	978031	429	
414	stammers7	ROY	a mae llall yn mynd i cael ei un cynta .	and be.3S.PRES other PRT go.NONFIN to have.NONFIN POSS.3S one first	and the other's going to have her first one.	\N	\N	925950	927866	1916	
415	stammers7	GWN	&=cough .	\N	\N	\N	\N	928202	929456	1254	
416	stammers7	GWN	&bə ti (y)n [///] faint o weithiau ti (we)di gweld y plant ?	PRON.2S PRT how_much of times PRON.2S PRT.PAST see.NONFIN DET children	you. . . how many times have you seen the children?	\N	\N	931894	933996	2102	
444	stammers7	GWN	mae hynna (y)n typical@s:eng Al@s:cym&eng actually@s:eng .	be.3S.PRES that PRT typical Al actually	that's typical Al, actually.	\N	\N	1005180	1006677	1497	
417	stammers7	ROY	lot@s:cym&eng o weithiau .	lot of times	lots of times.	\N	\N	934797	935667	870	
430	stammers7	ROY	y swyddfa .	DET office	the office.	\N	\N	978078	978867	789	
418	stammers7	GWN	oh@s:cym&eng do ?	IM yes	oh, really?	\N	\N	935621	936074	453	
419	stammers7	ROY	uh_huh@s:cym&eng .	\N	\N	\N	\N	936097	936666	569	
420	stammers7	ROY	gaeth [/] um@s:cym&eng # gaeth y hyna # ei geni # ella pan o'n i yn prifysgol .	have.3S.PAST IM have.3S.PAST DET eldest POSS.3S bear.NONFIN maybe when be.1S.IMP PRON.1S in university	the eldest was born maybe when I was at university.	\N	\N	936887	943168	6281	
421	stammers7	ROY	so@s:cym&eng ## mae mwy: anodd rwan i mi byw yma .	so be.3S.PRES more difficult now to PRON.1S live.NONFIN here	so it's harder for me now, living here.	\N	\N	943725	948624	4899	
431	stammers7	GWN	lle mae (y)r swyddfa ?	where be.3S.PRES DET office	where's the office?	\N	\N	979076	979843	767	
422	stammers7	ROY	ond <pan o'n yn &bi> [//] pan o'n i (y)n byw yn America@s:cym&eng o'n i (y)n gweld nhw ryw ella # unwaith pob blwyddyn neu # dwywaith .	but when be.1S.IMP PRT when be.1S.IMP PRON.1S PRT live.NONFIN in America be.1S.IMP PRON.1S PRT see.NONFIN PRON.3PL some maybe once every year or twice	but when I was living in America I used to see them maybe once a year, or twice.	\N	\N	949166	955609	6443	
423	stammers7	GWN	mmm@s:cym&eng .	\N	\N	\N	\N	955923	956236	313	
424	stammers7	ROY	am mod i (y)n byw yn Texas@s:cym&eng a nhw yn byw yn Florida@s:cym&eng .	for be.NONFIN PRON.1S PRT live.NONFIN in Texas and PRON.3PL PRT live.NONFIN in Florida	because of me living in Texas and them living in Florida.	\N	\N	956526	958814	2288	
425	stammers7	ROY	gŵr hi o Florida@s:cym&eng .	husband PRON.3SF from Florida	her husband's from Florida.	\N	\N	961986	963287	1301	
432	stammers7	ROY	e:r@s:cym&eng &s y swyddfa er@s:cym&eng (y)stafell gwaith ni .	IM DET office IM room work PRON.1PL	er, the office. . . our work room.	\N	\N	979866	983337	3471	
426	stammers7	ROY	ond mae hi (we)di cael # dau arall ## mmm@s:cym&eng ers [?] i mi symud tramor [//] dros môr .	but be.3S.PRES PRON.3SF PRT.PAST have.NONFIN two other IM since to PRON.1S move.NONFIN foreign over sea	but she's had two more, since I moved overseas.	\N	\N	965156	970740	5584	
433	stammers7	GWN	oh@s:cym&eng .	\N	\N	\N	\N	983419	983836	417	
427	stammers7	GWN	lle mae Ali@s:cym&eng heno ta ?	where be.3S.PRES Ali tonight then	where's Ali tonight then?	\N	\N	974432	976325	1893	
428	stammers7	ROY	yn y swyddfa .	in DET office	in the office.	\N	\N	976429	977370	941	
445	stammers7	GWN	trefnu fo (y)n iawn dydy ?	organize.NONFIN PRON.3SM PRT right be.3S.PRES.NEG	organises it properly, doesn't he?	\N	\N	1006677	1007873	1196	
434	stammers7	ROY	ti heb (we)di gweld o ?	PRON.2S without PRT.PAST see.NONFIN PRON.3SM	have you not seen it?	\N	\N	983616	984254	638	
446	stammers7	ROY	&=laugh .	\N	\N	\N	\N	1007897	1009847	1950	
435	stammers7	GWN	na .	no	no.	\N	\N	984452	984696	244	
436	stammers7	ROY	na ?	no	no?	\N	\N	984777	985253	476	
437	stammers7	ROY	oh@s:cym&eng .	\N	\N	\N	\N	985497	986031	534	
453	stammers7	ROY	mae (y)n sure@s:cym&eng .	be.3S.PRES PRT sure	it's sure to be.	\N	\N	1025474	1026263	789	
438	stammers7	GWN	trefnu (y)r briodas mae (y)n sure@s:cym&eng .	organise.NONFIN DET wedding be.3S.PRES PRT sure	organising the wedding, I'm sure.	\N	\N	990164	991708	1544	
447	stammers7	GWN	os dw i (y)n priodi fydda i # just@s:cym&eng fel +"/ .	if be.1S.PRES PRON.1S PRT marry.NONFIN be.1S.FUT PRON.1S just like	If I get married, I'll just be like:	\N	\N	1009371	1011078	1707	
439	stammers7	ROY	mae (y)n sure@s:cym&eng &=laugh !	be.3S.PRES PRT sure	I'm sure!	\N	\N	991824	994332	2508	
448	stammers7	GWN	+" oh@s:cym&eng # xx # whatever@s:eng !	\N	\N	\N	\N	1011043	1013307	2264	
440	stammers7	GWN	chwarae teg !	play.NONFIN fair	fair-play!	\N	\N	994448	995330	882	
449	stammers7	ROY	+< &=laugh .	\N	\N	\N	\N	1012262	1015803	3541	
441	stammers7	ROY	gynno fo brochure@s:eng am ## ella cael [?] # rhyw [//] # rywbeth i mis mêl .	with PRON.3SM brochure about maybe get.NONFIN some something for month honey	he's got a brochure about. . . perhaps getting something for the honeymoon.	\N	\N	995326	1001700	6374	
442	stammers7	GWN	oh@s:cym&eng yeah@s:cym&eng ?	\N	\N	\N	\N	1002339	1002768	429	
443	stammers7	ROY	yeah@s:cym&eng .	\N	\N	\N	\N	1002804	1003268	464	
451	stammers7	GWN	right@s:cym&eng # pwy ydy (y)r best_man@s:eng o ?	right who be.3S.PRES DET best_man PRON.3SM	right, who's his best man?	\N	\N	1022560	1024638	2078	
452	stammers7	GWN	Brian@s:cym&eng ?	\N	\N	\N	\N	1024638	1025114	476	
456	stammers7	GWN	mae um@s:cym&eng +. . .	be.3S.PRES IM	\N	\N	\N	1034286	1035575	1289	
455	stammers7	GWN	dw i (y)n mynd ar stag@s:eng do@s:eng ## yn # mis # Medi .	be.1S.PRES PRON.1S PRT go.NONFIN on stag do in month September	I'm going on a stag do in September.	\N	\N	1029886	1034332	4446	
454	stammers7	GWN	Brian@s:cym&eng yn trefnu (y)r stag@s:eng do@s:eng felly .	Brian PRT organize.NONFIN DET stag do thus	Brian's organizing the stag do, then.	\N	\N	1026716	1028736	2020	
457	stammers7	GWN	ti (we)di cyfarfod Humph@s:cym&eng Humphreys@s:cym&eng ?	PRON.2S PRT.PAST meet.NONFIN Humph Humphreys	have you met Humph Humphreys?	\N	\N	1035710	1037312	1602	
458	stammers7	ROY	er@s:cym&eng ## dw (ddi)m yn meddwl mod i (y)n nabod o .	IM be.1S.PRES NEG PRT think.NONFIN be.NONFIN PRON.1S PRT know.NONFIN PRON.3SM	er, I don't think I know him.	\N	\N	1038229	1041144	2915	
461	stammers7	GWN	ond &=cough mae (y)n priodi fath â Pasg nesa .	but be.3S.PRES PRT marry.NONFIN kind with Easter next	but he's getting married, like, next Easter.	\N	\N	1043709	1046333	2624	
491	stammers7	ROY	i (y)r um@s:cym&eng # Home_Office@s:eng .	to DET IM Home_Office	to the Home Office.	\N	\N	1092727	1095618	2891	
462	stammers7	GWN	ond um@s:cym&eng # dan ni (y)n mynd i weld y: rugby@s:cym&eng World_Cup@s:eng yn Ffrainc@s:cym&eng .	but IM be.1PL.PRES PRON.1PL PRT go.NONFIN to see.NONFIN DET rugby World_Cup in France	but we're going to see the rugby World Cup in France.	\N	\N	1046623	1050710	4087	
463	stammers7	ROY	oh@s:cym&eng !	\N	\N	\N	\N	1050850	1051198	348	
482	stammers7	GWN	well@s:cym&eng dw i (dd)im yn +// .	well be.1S.PRES PRON.1S NEG PRT	well, I'm not...	\N	\N	1076817	1077990	1173	
464	stammers7	GWN	weld Cymru (y)n erbyn Canada@s:cym&eng .	see.NONFIN Wales PRT against Canada	to see Wales against Canada.	\N	\N	1051024	1052161	1137	
465	stammers7	ROY	cool@s:cym&eng !	\N	\N	\N	\N	1052115	1052835	720	
466	stammers7	GWN	so@s:cym&eng mae (y)na gang@s:cym&eng o ni (y)n mynd .	so be.3S.PRES there gang of PRON.1PL PRT go.NONFIN	so there's a gang of us going.	\N	\N	1053160	1054182	1022	
492	stammers7	ROY	so@s:cym&eng # +/ .	\N	\N	\N	\N	1097823	1098648	825	
467	stammers7	ROY	ti (we)di cael tocynnau eto ?	PRON.2S PRT.PAST get.NONFIN tickets yet	have you got tickets yet?	\N	\N	1054170	1055459	1289	
483	stammers7	GWN	dw i just@s:cym&eng gadael nhw trefnu .	be.1S.PRES PRON.1S just leave.NONFIN PRON.3PL organize.NONFIN	I'm just letting them organize it.	\N	\N	1078083	1079557	1474	
468	stammers7	GWN	na &d maen nhw (y)n trefnu .	no be.3PL.PRES PRON.3PL PRT organize.NONFIN	no, they're organizing it.	\N	\N	1055668	1057107	1439	
484	stammers7	ROY	huh@s:cym&eng .	\N	\N	\N	\N	1079511	1080068	557	
469	stammers7	GWN	so@s:cym&eng dw i (y)n meddwl un_ai +// .	so be.1S.PRES PRON.1S PRT think.NONFIN either	so I reckon either...	\N	\N	1057107	1058559	1452	
470	stammers7	GWN	os dyn nhw (y)n gallu cael tocynnau i ni gyd # dan ni (y)n mynd .	if be.3PL.PRES PRON.3PL PRT can.NONFIN get.NONFIN tickets to PRON.1PL all be.1PL.PRES PRON.1PL PRT go.NONFIN	if they can get tickets for all of us, we're going.	\N	\N	1058512	1061206	2694	
471	stammers7	ROY	uh_huh@s:cym&eng ?	\N	\N	\N	\N	1061217	1061740	523	
472	stammers7	GWN	os dyn nhw (y)n [//] (di)m_ond yn gallu cael rhei dan ni ddim yn boddran .	if be.3PL.PRES PRON.3PL PRT only PRT can.NONFIN get.NONFIN some be.1PL.PRES PRON.1PL NEG PRT bother.NONFIN	if they can only get a few, we're not bothering.	\N	\N	1061635	1064155	2520	
485	stammers7	GWN	(dy)dy o (ddi)m ots gynnof fi .	be.3S.PRES.NEG PRON.3SM NEG odds with.1S PRON.1S	I don't mind.	\N	\N	1080091	1081612	1521	
473	stammers7	GWN	dan ni just@s:cym&eng yn mynd i fynd yna # a # gweld # cael yr atmosphere@s:eng a pethau .	be.1PL.PRES PRON.1PL just PRT go.NONFIN to go.NONFIN there and see.NONFIN get.NONFIN DET atmosphere and things	we're just going to go there and see, take in the atmosphere and things.	\N	\N	1064155	1068961	4806	
474	stammers7	ROY	+< uh_huh@s:cym&eng .	\N	\N	\N	\N	1064201	1064503	302	
475	stammers7	ROY	huh@s:cym&eng .	\N	\N	\N	\N	1068961	1069611	650	
476	stammers7	ROY	oh@s:cym&eng be a gwatsiad o mewn pub@s:cym&eng neu rywbeth ?	IM what and watch.NONFIN PRON.3SM in pub or something	oh, what, and watch it in a pub or something?	\N	\N	1070273	1072038	1765	
477	stammers7	GWN	yeah@s:cym&eng .	\N	\N	\N	\N	1072096	1072525	429	
478	stammers7	ROY	hmm@s:cym&eng .	\N	\N	\N	\N	1072850	1073373	523	
479	stammers7	GWN	xx +/ .	\N	\N	\N	\N	1074580	1074987	407	
480	stammers7	ROY	gyrru lawr byddech chi # ta fflio ?	drive.NONFIN down be.2PL.FUT PRON.2PL or fly.NONFIN	will you be driving down, or flying?	\N	\N	1074754	1076380	1626	
486	stammers7	ROY	mae Dick@s:cym&eng yn mynd i Lydaw # dros y penwythnos # efo gwaith .	be.3S.PRES Dick PRT go.NONFIN to Brittany over DET weekend with work	Dick's going to Brittany over the weekend with work.	\N	\N	1081558	1086248	4690	
481	stammers7	GWN	+< dw i (dd)im yn gwybod .	be.1S.PRES PRON.1S NEG PRT know.NONFIN	I don't know.	\N	\N	1076132	1076875	743	
493	stammers7	GWN	pam xx chdi +// .	why xx PRON.2S	why [..] you...	\N	\N	1098597	1099515	918	
487	stammers7	ROY	(ba)swn i (y)n licio mynd efo fo .	be.1S.CONDIT PRON.1S PRT like.NONFIN go.NONFIN with PRON.3SM	I'd like to go with him.	\N	\N	1086411	1087432	1021	
488	stammers7	ROY	ond mae passport@s:cym&eng fi wedi mynd i Lerpwl .	but be.3S.PRES passport PRON.1S PRT.PAST go.NONFIN to Liverpool	but my passport's gone to Liverpool.	\N	\N	1087444	1089232	1788	
489	stammers7	GWN	oh@s:cym&eng yeah@s:cym&eng ?	\N	\N	\N	\N	1089139	1089975	836	
498	stammers7	ROY	bydd &=laugh .	be.3S.FUT	I will.	\N	\N	1108938	1109716	778	
490	stammers7	ROY	yeah@s:cym&eng # a dw i (y)n methu cael o yn_ôl .	yeah and be.1S.PRES PRON.1S PRT fail.NONFIN get.NONFIN PRON.3SM back	yeah, and I can't get it back.	\N	\N	1089940	1092181	2241	
494	stammers7	GWN	oh@s:cym&eng efo # citizenship@s:eng chdi neu +. . .	IM with citizenship PRON.2S or	oh, to do with your citizenship, or...	\N	\N	1099754	1102483	2729	
495	stammers7	ROY	+< mmhm@s:cym&eng yeah@s:cym&eng .	\N	\N	\N	\N	1101972	1103249	1277	
503	stammers7	ROY	dw i (y)n cael wneud o yn y Cymraeg .	be.1S.PRES PRON.1S PRT get.NONFIN do.NONFIN PRON.3SM in DET Welsh	I'm allowed to do it in Welsh.	\N	\N	1114244	1115997	1753	
496	stammers7	ROY	ond er@s:cym&eng +/ .	but IM	but, er...	\N	\N	1106001	1107092	1091	
499	stammers7	GWN	+, i (y)r Queen@s:cym&eng neu rywbeth ?	to DET Queen or something	...to the Queen or something?	\N	\N	1109774	1110529	755	
497	stammers7	GWN	ti (y)n gorod wneud ryw fath â pledge@s:eng o allegiance@s:eng ?	PRON.2S PRT must.NONFIN do.NONFIN some kind with pledge of allegiance	have you got to make some kind of pledge of allegiance?	\N	\N	1106953	1109031	2078	
500	stammers7	ROY	&=laugh yeah@s:cym&eng !	\N	\N	\N	\N	1110529	1111655	1126	
501	stammers7	GWN	da iawn !	good very	very good!	\N	\N	1111864	1112630	766	
502	stammers7	ROY	&=laugh .	\N	\N	\N	\N	1112200	1113559	1359	
504	stammers7	ROY	bydd o ym Mangor@s:cym&eng dw i meddwl .	be.3S.FUT PRON.3SM in Bangor be.1S.PRES PRON.1S think.NONFIN	it'll be in Bangor, I think.	\N	\N	1119143	1120490	1347	
505	stammers7	GWN	oh@s:cym&eng yeah@s:cym&eng ?	\N	\N	\N	\N	1120618	1121175	557	
506	stammers7	ROY	uh_huh@s:cym&eng .	\N	\N	\N	\N	1121140	1121686	546	
507	stammers7	ROY	a mae [/] mae (y)n mynd i cymryd ryw pedair mis .	and be.3S.PRES be.3S.PRES PRT go.NONFIN to take.NONFIN some four month	and it's going to take about four months.	\N	\N	1124940	1127042	2102	
551	stammers7	ROY	a gen ti <Sold@s:eng Out@s:eng> ["] nos Wener .	and with.2S PRON.2S Sold Out night Friday	and you've got "Sold Out" on Wednesday night.	\N	\N	1244966	1246707	1741	
552	stammers7	GWN	oes .	be.3S.PRES	yes.	\N	\N	1247137	1247590	453	
553	stammers7	ROY	so@s:cym&eng +/ .	\N	\N	\N	\N	1247555	1248101	546	
508	stammers7	GWN	oeddech chi (y)n gorod wneud pledge@s:eng o allegiance@s:eng yn ysgol a pethau yn y bore ?	be.2PL.IMP PRON.2PL PRT must.NONFIN do.NONFIN pledge of allegiance in school and things in DET morning	did you used to have to make a pledge of allegiance at school and stuff, in the morning?	\N	\N	1127088	1129886	2798	
528	stammers7	ROY	ie ond mae pawb yn canu o # de ?	yes but be.3S.PRES everyone PRT sing.NONFIN PRON.3SM TAG	yes, but everyone sings it, right?	\N	\N	1185460	1187875	2415	
509	stammers7	ROY	o'n .	be.1S.IMP	I did.	\N	\N	1129909	1130258	349	
510	stammers7	GWN	oeddech ?	be.2PL.IMP	did you?	\N	\N	1130548	1130908	360	
511	stammers7	ROY	uh_huh@s:cym&eng ?	\N	\N	\N	\N	1130978	1131419	441	
512	stammers7	ROY	o'n .	be.1S.IMP	I did.	\N	\N	1133485	1134077	592	
529	stammers7	GWN	yndy .	be.3S.PRES	yes.	\N	\N	1188072	1188397	325	
513	stammers7	GWN	be ydy o ?	what be.3S.PRES PRON.3SM	what is it?	\N	\N	1135262	1136167	905	
514	stammers7	ROY	u:m@s:cym&eng just@s:cym&eng <ryw beth> [//] rywbeth i +/ .	IM just some thing something to	um, just something to...	\N	\N	1137290	1139972	2682	
535	stammers7	GWN	so@s:cym&eng does (y)na (dd)im boint@s:cym&eng .	so be.3S.PRES.NEG there NEG point	so there's no point.	\N	\N	1207693	1208692	999	
515	stammers7	GWN	na be (y)dy (y)r geiriau yno fo ?	no what be.3S.PRES DET words in.3SM PRON.3SM	no, what are the words to it?	\N	\N	1140042	1141203	1161	
516	stammers7	ROY	oh@s:cym&eng um@s:cym&eng +"/ .	\N	\N	\N	\N	1141017	1141806	789	
517	stammers7	ROY	+" I@s:eng pledge@s:eng allegiance@s:eng to@s:eng the@s:eng flag@s:cym&eng # of@s:eng the@s:eng United@s:eng States@s:eng of@s:eng America@s:cym&eng # and@s:eng to@s:eng the@s:eng republic@s:eng for@s:eng which@s:eng it@s:eng stands@s:eng # one@s:eng nation@s:eng under@s:eng God@s:eng # with@s:eng liberty@s:eng indivisible@s:eng # +// .	\N	\N	\N	\N	1141772	1151617	9845	
518	stammers7	ROY	I@s:eng think@s:eng I@s:eng just@s:cym&eng messed@s:eng up@s:eng !	\N	\N	\N	\N	1152120	1153618	1498	
519	stammers7	ROY	+" with liberty and justice for all .	\N	\N	\N	\N	1154419	1156079	1660	eng
530	stammers7	ROY	+< <a mae ## bob> [//] ym bob Eisteddfod@s:cym&eng # dach chi (y)n gorffen efo fo .	and be.3S.PRES every in every Eisteddfod be.2PL.PRES PRON.2PL PRT finish.NONFIN with PRON.3SM	and every. . . at every Eisteddfod you finish with it.	\N	\N	1188188	1192751	4563	
520	stammers7	ROY	rywbeth fel (y)na +" .	something like there	something like that.	\N	\N	1156056	1156810	754	
531	stammers7	GWN	+< oh@s:cym&eng yeah@s:cym&eng .	\N	\N	\N	\N	1192345	1192914	569	
521	stammers7	ROY	mae [/] mae rywbeth da dw i meddwl .	be.3S.PRES be.3S.PRES something good be.1S.PRES PRON.1S think.NONFIN	it's a good thing, I think.	\N	\N	1160019	1162132	2113	
522	stammers7	GWN	+< mmm@s:cym&eng .	\N	\N	\N	\N	1161644	1161957	313	
523	stammers7	ROY	beth i ## cadw [///] well@s:cym&eng rywbeth i ## gwneud chi teimlo dros eich # gwlad .	thing to keep.NONFIN well something to make.NONFIN PRON.2PL feel.NONFIN over POSS.2PL country	a thing to keep. . . well, something to make you feel for your country.	\N	\N	1162840	1170456	7616	
524	stammers7	ROY	ond <dan ni (dd)im yn> [/] dan ni (dd)im yn canu yr um@s:cym&eng # cân cenedlaethol cymaint â chi yng Nghymru .	but be.1PL.PRES PRON.1PL NEG PRT be.1PL.PRES PRON.1PL NEG PRT sing.NONFIN DET IM song national so_much with PRON.2PL in Wales	but we don't sing the national anthem as much as you do in Wales.	\N	\N	1170735	1176075	5340	
532	stammers7	GWN	ond dach chi (dd)im yn chwarae sports@s:cym&eng yn erbyn pobl eraill lot@s:cym&eng na neu fysech chi (y)n wneud .	but be.2PL.PRES PRON.2PL NEG PRT play.NONFIN sports PRT against people others lot no or be.2PL.CONDIT PRON.2PL PRT do.NONFIN	but you don't play sports against other people much, do you, or else you would do.	\N	\N	1194713	1198301	3588	
525	stammers7	ROY	ella <(ba)sai hwn(na) [?]> [//] (ba)sai hynny mwy ## fath â # +/ .	maybe be.3S.CONDIT that be.3S.CONDIT that more kind with	that might be more, like...	\N	\N	1177271	1180963	3692	
526	stammers7	GWN	well@s:cym&eng dwyt ti ddim really@s:eng yn Cymru .	well be.2S.PRES.NEG PRON.2S NEG really in Wales	well, you don't really in Wales.	\N	\N	1181125	1182553	1428	
540	stammers7	GWN	yndy .	be.3S.PRES	yes.	\N	\N	1217287	1217682	395	
527	stammers7	GWN	(di)m_ond mewn # gemau <football@s:cym&eng a rugby@s:cym&eng> [=! laughs] .	only in games football and rugby	only at rugby or football matches.	\N	\N	1182542	1185282	2740	
536	stammers7	ROY	+< na .	no	no.	\N	\N	1208065	1208726	661	
533	stammers7	GWN	sure@s:cym&eng bod y team@s:cym&eng &r rugby@s:cym&eng yn wneud .	sure be.NONFIN DET team rugby PRT do	I'm sure the rugby team do.	\N	\N	1199102	1200878	1776	
534	stammers7	GWN	ond dydy [///] dach chi (dd)im yn chwarae American@s:eng football@s:cym&eng na basketball@s:eng na baseball@s:eng yn_erbyn gwlad arall na ?	but be.3S.PRES.NEG be.2PL.PRES PRON.2PL NEG PRT play.NONFIN American football nor basketball nor baseball against country other no	but the. . . you don't play American football or basketball or baseball against another country, do you?	\N	\N	1202387	1207333	4946	
537	stammers7	GWN	so@s:cym&eng ti (dd)im yn &k really@s:eng canu .	so PRON.2S NEG PRT really sing.NONFIN	so you don't really sing.	\N	\N	1208912	1210213	1301	
543	stammers7	ROY	a meddwl bod o (y)n addas i ddod yn # dinesydd .	and think.NONFIN be.NONFIN PRON.3SM PRT suitable to come.NONFIN PRT citizen	and I think it's suitable for becoming a citizen.	\N	\N	1230941	1233600	2659	
538	stammers7	ROY	yeah@s:cym&eng ella dyna pam .	yeah maybe there why	yeah, that might be why.	\N	\N	1209679	1211327	1648	
541	stammers7	ROY	gormod yn peth ddrwg .	too_much PRT thing bad	too much is a bad thing.	\N	\N	1217705	1218982	1277	
539	stammers7	ROY	mmm@s:cym&eng na mae ychydig bach o patriotism@s:eng yn peth dda .	IM no be.3S.PRES a_bit little of patriotism PRT thing good	no, a little bit of patriotism is a good thing.	\N	\N	1212585	1216254	3669	
544	stammers7	GWN	mmm@s:cym&eng .	\N	\N	\N	\N	1233611	1234111	500	
542	stammers7	ROY	<ond dw i (y)n gweld &p> [?] hynny fel peth dda # y pledge@s:eng .	but be.1S.PRES PRON.1S PRT see.NONFIN that like thing good DET pledge	but I see that as a good thing, the pledge.	\N	\N	1221324	1224261	2937	
545	stammers7	ROY	be wnei di yn er@s:cym&eng [?] lle mynd i Llydaw .	what do.2S.NONPAST PRON.2S in IM place go.NONFIN to Brittany	what will you do instead of going to Brittany?	\N	\N	1235144	1237292	2148	
546	stammers7	ROY	be wneith Dick@s:cym&eng ?	what do.3S.NONPAST Dick	what will Dick do?	\N	\N	1238406	1239521	1115	
547	stammers7	ROY	oh@s:cym&eng be [/] be wna i yn lle ?	IM what what do.1S.NONPAST PRON.1S in place	oh, what will I do instead?	\N	\N	1239590	1240682	1092	
548	stammers7	GWN	+< na be wnei di ?	no what do.2S.NONPAST PRON.2S	no, what will you do?	\N	\N	1239950	1240682	732	
549	stammers7	ROY	oh@s:cym&eng aros yma i gweithio .	IM stay.NONFIN here to work.NONFIN	oh, stay here to work.	\N	\N	1240682	1242714	2032	
592	stammers7	ROY	um@s:cym&eng ## so@s:cym&eng dyma fi yn ffonio hi # ac yn deud # um@s:cym&eng +"/ .	IM so here PRON.1S PRT phone.NONFIN PRON.3SF and PRT say.NONFIN IM	um, so then I phoned her and said, er:	\N	\N	1326456	1333376	6920	
556	stammers7	GWN	<da iawn> [=! quietly] .	good very	very good	\N	\N	1249912	1250388	476	
580	stammers7	GWN	a wnes i ofyn iddi +"/ .	and do.1S.PAST PRON.1S ask.NONFIN to.3SF	and I asked her:	\N	\N	1287075	1288283	1208	
557	stammers7	GWN	mae Karen@s:cym&eng Kelly@s:cym&eng yn dod xxx .	be.3S.PRES Karen Kelly PRT come.NONFIN xxx	Karen Kelly is coming [...].	\N	\N	1252222	1254428	2206	
558	stammers7	ROY	hmm@s:cym&eng .	\N	\N	\N	\N	1254579	1254869	290	
559	stammers7	GWN	dw i (dd)im yn gwybod be wneith Dawn@s:cym&eng ddeud # bod fi (we)di bod yn invite_io@s:eng+cym loads@s:eng o bobl ond +. . .	be.1S.PRES PRON.1S NEG PRT know.NONFIN what do.3S.NONPAST Dawn say.NONFIN be.NONFIN PRON.1S PRT.PAST be.NONFIN PRT invite.NONFIN loads of people but	I don't know what Dawn will say, because I've been inviting loads of people, but...	\N	\N	1254811	1258445	3634	
560	stammers7	ROY	oh@s:cym&eng .	\N	\N	\N	\N	1258940	1259451	511	
561	stammers7	GWN	my house !	\N	\N	\N	\N	1259463	1260496	1033	eng
589	stammers7	ROY	a wnes i aros # braidd yn rhy hir # cyn i mi ddod yn_ôl .	and do.1S.PAST PRON.1S wait.NONFIN somewhat PRT too long before to PRON.1S come.NONFIN back	and I waited a bit too long before I came back.	\N	\N	1311096	1315647	4551	
562	stammers7	GWN	&=laugh iawn i fi wneud !	right to PRON.1S do.NONFIN	it's alright for me to!	\N	\N	1260752	1263143	2391	
581	stammers7	GWN	+" be (y)dy (y)r gorau ## fath â os fasai rywun yn &t text_io@s:eng+cym neu e_bostio ?	what be.3S.PRES DET best kind with if be.3S.CONDIT someone PRT text.NONFIN or email.NONFIN	"what's best, like whether someone would text or email?"	\N	\N	1288387	1293275	4888	
563	stammers7	GWN	ga i wneud be bynnag dw i isio !	get.1S.NONPAST PRON.1S do.NONFIN what ever be.1S.PRES PRON.1S want	I can do whatever I want!	\N	\N	1262481	1264304	1823	
564	stammers7	ROY	mmm@s:cym&eng .	\N	\N	\N	\N	1264037	1264455	418	
565	stammers7	GWN	wedyn +. . .	then	so...	\N	\N	1265036	1265663	627	
566	stammers7	ROY	o'n i (y)n meddwl <ella (ba)sai> [//] # gofyn i Emma@s:cym&eng dod .	be.1S.IMP PRON.1S think.NONFIN maybe be.3S.CONDIT ask.NONFIN to Emma come.NONFIN	I was thinking. . . maybe it would be. . . of asking Emma to come.	\N	\N	1265790	1268658	2868	
582	stammers7	GWN	wnaeth hi ddeud fasai &n +// .	do.3S.PAST PRON.3SF say.NONFIN be.3S.CONDIT	she said it would be...	\N	\N	1293298	1294285	987	
567	stammers7	GWN	(ba)sa chdi gallu .	be.2S.CONDIT PRON.2S can.NONFIN	you could.	\N	\N	1268937	1269738	801	
568	stammers7	ROY	yeah@s:cym&eng .	\N	\N	\N	\N	1269738	1270260	522	
569	stammers7	GWN	dw i (dd)im yn gwybod be wnaeth ddigwydd i um@s:cym&eng # yr e_bost (y)na .	be.1S.PRES PRON.1S NEG PRT know.NONFIN what do.3S.PAST happen.NONFIN to IM DET email there	I don't know what happened to that email.	\N	\N	1270481	1273453	2972	
593	stammers7	ROY	+" Freda@s:cym&eng # this@s:eng is@s:eng Roy@s:cym&eng .	\N	\N	\N	\N	1333956	1336696	2740	
570	stammers7	ROY	na .	no	no.	\N	\N	1273395	1273790	395	
583	stammers7	GWN	+" dw i (y)n meddwl fasai e_bost yn well .	be.1S.PRES PRON.1S PRT think.NONFIN be.3S.CONDIT email PRT better	"I think email would be better."	\N	\N	1294030	1295527	1497	
571	stammers7	GWN	dw i (dd)im (we)di cael amser i ffonio neb heddiw [?] chwaith .	be.1S.PRES PRON.1S NEG PRT.PAST have.NONFIN time to phone.NONFIN nobody today either	I've not had time to phone anyone today either.	\N	\N	1274416	1275972	1556	
572	stammers7	ROY	yeah@s:cym&eng .	\N	\N	\N	\N	1275868	1276123	255	
584	stammers7	ROY	ah@s:cym&eng .	\N	\N	\N	\N	1295597	1296003	406	
573	stammers7	GWN	i Dawn@s:cym&eng wnes i ofyn .	to Dawn do.1S.PAST PRON.1S ask.NONFIN	I did ask Dawn.	\N	\N	1276564	1277807	1243	
574	stammers7	GWN	wnes i ddeu(d) (wr)thi +"/ .	do.1S.PAST PRON.1S say.NONFIN to.3SF	I told her:	\N	\N	1277853	1278492	639	
575	stammers7	GWN	+" keep it under your hat .	\N	\N	\N	\N	1278747	1279780	1033	eng
576	stammers7	ROY	&=laugh .	\N	\N	\N	\N	1279827	1280651	824	
590	stammers7	ROY	so@s:cym&eng [///] ond o'n i (we)di gweld o (y)n [/] yn y capel # y dydd Sul cynta mi fod yno .	so but be.1S.IMP PRON.1S PRT.PAST see.NONFIN PRON.3SM in in DET chapel DET day Sunday first PRON.1S be.NONFIN there	so. . . but I'd seen him [=?her] at church the first Sunday I was there.	\N	\N	1316820	1321952	5132	
577	stammers7	GWN	wneith Dawn@s:cym&eng hefyd .	do.3S.NONPAST Dawn also	Dawn will do, as well.	\N	\N	1280384	1281464	1080	
585	stammers7	GWN	<meddai hi> [=! quietly] +" .	say.3S.PAST PRON.3SF	she said.	\N	\N	1295667	1295910	243	
578	stammers7	GWN	wneith hi (dd)im deud wrth neb .	do.3S.NONPAST PRON.3SF NEG say.NONFIN to nobody	she won't tell anyone.	\N	\N	1281533	1282555	1022	
579	stammers7	ROY	&=laugh .	\N	\N	\N	\N	1282590	1283078	488	
586	stammers7	GWN	xx o_k@s:cym&eng .	\N	\N	\N	\N	1296735	1297431	696	
587	stammers7	ROY	wnes i um@s:cym&eng &=laugh +// .	do.1S.PAST PRON.1S IM	I, um...	\N	\N	1299022	1302482	3460	
588	stammers7	ROY	yn America@s:cym&eng tro diwetha mi o'n adre am gyfnod hir ### oedd (y)na hogan o'n i isio gofyn allan .	in America turn previous PRT be.1S.IMP home for period long be.3S.IMP there girl be.1S.IMP PRON.1S want ask.NONFIN out	in America, the last time I was home for a long time, there was a girl I wanted to ask out.	\N	\N	1302516	1309204	6688	
591	stammers7	ROY	ond wnaeth ryw # dau fis mynd heibio .	but do.3S.PAST some two month go.NONFIN past	but about two months went past.	\N	\N	1322346	1325574	3228	
601	stammers7	ROY	<o'n i isio> [/] o'n i isio um@s:cym&eng ## gwneud hang@s:eng <up@s:eng ar_ôl> [=! laughs] # y who@s:eng ["] cynta .	be.1S.IMP PRON.1S want be.1S.IMP PRON.1S want IM do.NONFIN hang up after DET who first	I wanted to hang up after the first "who" .	gwneud with nominalization for phrasal verb "hang up"	gwneud with nominalization for phrasal verb "hang up"	1350129	1355481	5352	
594	stammers7	ROY	a dyma hi (y)n ateb +"/ .	and here PRON.3SF PRT answer.NONFIN	and she answered:	\N	\N	1337172	1338461	1289	
595	stammers7	ROY	+" who ?	\N	\N	\N	\N	1338681	1339564	883	eng
596	stammers7	ROY	+" Roy@s:cym&eng # Williams@s:cym&eng .	\N	\N	\N	\N	1340400	1342176	1776	
597	stammers7	ROY	+" who ?	\N	\N	\N	\N	1342931	1343500	569	eng
598	stammers7	ROY	&=laugh !	\N	\N	\N	\N	1343488	1345694	2206	
599	stammers7	ROY	+" Roy@s:cym&eng Williams@s:cym&eng xxx !	\N	\N	\N	\N	1345647	1347459	1812	
600	stammers7	ROY	+" oh@s:cym&eng !	\N	\N	\N	\N	1348086	1350036	1950	
602	stammers7	ROY	ac ar_ôl yr ail ugh@s:cym&eng ["] !	and after DET second IM	and after the second, "ugh"!	\N	\N	1355458	1357942	2484	
603	stammers7	ROY	oedd hwnna (y)n embarrassing@s:eng .	be.3S.IMP that PRT embarrassing	that was embarrassing.	\N	\N	1362853	1364618	1765	
619	stammers7	ROY	erbyn dydd Iau oedd hi wedi <gorffen efo fi> [=! laughs] !	by day Thursday be.3S.IMP PRON.3SF PRT.PAST finish.NONFIN with PRON.1S	by Thursday she'd finished with me!	\N	\N	1411028	1413571	2543	
604	stammers7	ROY	<oedd hi (y)n mynnu> [//] # oedd hi (y)n honni ## oedd hi (y)n methu glywed fi (y)n iawn # &=laugh !	be.3S.IMP PRON.3SF PRT insist.NONFIN be.3S.IMP PRON.3SF PRT claim.NONFIN be.3S.IMP PRON.3SF PRT fail.NONFIN hear.NONFIN PRON.1S PRT right	she insisted. . . she claimed that she hadn't been able to hear me properly!	\N	\N	1365187	1373059	7872	
620	stammers7	ROY	&=laugh !	\N	\N	\N	\N	1413269	1417634	4365	
605	stammers7	ROY	ond dim yn meddwl mod i (y)n coel(io) [/] coelio hi .	but NEG PRT think.NONFIN be.NONFIN PRON.1S PRT believe.NONFIN believe.NONFIN PRON.3SF	but I don't think I believe her.	\N	\N	1373895	1376112	2217	
606	stammers7	ROY	aethon ni allan unwaith neu dwywaith .	go.1PL.PAST PRON.1PL out once or twice	we went out once or twice.	\N	\N	1376391	1379107	2716	
607	stammers7	ROY	+, cyn i (y)r pethau gorffen yn dagrau .	before to DET things finish.NONFIN in tears	...before things ended in tears.	\N	\N	1381352	1383430	2078	
608	stammers7	GWN	oh@s:cym&eng yeah@s:cym&eng ?	\N	\N	\N	\N	1383581	1384289	708	
621	stammers7	GWN	wnaeth hi ddeud pam ?	do.3S.PAST PRON.3SF say.NONFIN why	did she say why?	\N	\N	1417959	1418842	883	
609	stammers7	GWN	am be ?	for what	why?	\N	\N	1384568	1385125	557	
622	stammers7	ROY	&=laugh .	\N	\N	\N	\N	1418783	1421941	3158	
610	stammers7	GWN	gan fod chdi (y)n dod yn_ôl i fa(n) (y)ma ?	with be.NONFIN PRON.2S PRT come.NONFIN back to place here	because you were coming back here?	\N	\N	1385218	1386565	1347	
611	stammers7	ROY	yeah@s:cym&eng oedden ni (y)n ffonio ein gilydd dros &f ## dros cyfnod # fi yn fa(n) (y)ma hi yno .	yeah be.1PL.IMP PRON.1PL PRT phone.NONFIN POSS.1PL each_other over period PRON.1S PRT place here PRON.3SF there	yeah, we were phoning each other over a period, me here, her there.	\N	\N	1387344	1392301	4957	
632	stammers7	GWN	be wnaeth ddigwydd i chdi a # Gladys@s:cym&eng ta ?	what do.3S.PAST happen.NONFIN to PRON.2S and Gladys then	so what happened with you and Gladys then?	\N	\N	1454554	1457329	2775	
612	stammers7	ROY	ac o'n i fod mynd adre i weld hi dros Dolig # dwy flynedd yn_ôl .	and be.1S.IMP PRON.1S be.NONFIN go.NONFIN home to see.NONFIN PRON.3SF over Christmas two years back	and I was supposed to go home to see her over Christmas two years ago.	\N	\N	1393207	1396202	2995	
623	stammers7	ROY	stupid@s:cym&eng stuff@s:cym&eng fel # irreconcilable@s:eng differences@s:eng neu +. . .	stupid stuff like irreconcilable differences or	stupid stuff like like irreconcilable differences or...	\N	\N	1422208	1426992	4784	
613	stammers7	ROY	so@s:cym&eng dyma fi (y)n # ffonio hi <a &gwa> [//] a gofyn +"/ .	so here PRON.1S PRT phone.NONFIN PRON.3SF and and ask.NONFIN	so I phoned her and asked:	\N	\N	1397073	1400010	2937	
624	stammers7	ROY	&=sigh !	\N	\N	\N	\N	1427096	1428083	987	
614	stammers7	ROY	+" ydy o (y)n [///] # fath â byddi di adre # os dw i (y)n prynu docyn ?	be.3S.PRES PRON.3SM PRT kind with be.2S.FUT PRON.2S home if be.1S.PRES PRON.1S PRT buy.NONFIN ticket	"is it. . . like, will you be home, if I buy a ticket?"	\N	\N	1400057	1403412	3355	
615	stammers7	GWN	+< mmm@s:cym&eng .	\N	\N	\N	\N	1401961	1402204	243	
616	stammers7	ROY	+" oh@s:cym&eng byddaf sure@s:cym&eng .	IM be.1S.FUT sure	oh, sure I will be!	\N	\N	1403551	1405119	1568	
617	stammers7	ROY	hwnnw [/] hwnnw ar # beth fel dydd Llun .	that that on thing like day Monday	that was on something like Monday.	\N	\N	1406117	1408160	2043	
625	stammers7	ROY	roedd hwnna (y)n ddrud &=laugh !	be.3S.IMP that PRT expensive	that was expensive!	\N	\N	1429047	1431508	2461	
618	stammers7	ROY	so@s:cym&eng wnes i prynu tocyn ar dydd Llun .	so do.1S.PAST PRON.1S buy.NONFIN ticket on day Monday	so I bought a ticket on Monday.	\N	\N	1408149	1409867	1718	
640	stammers7	GWN	wnest ti ddod i (y)r lle iawn anyway@s:eng .	do.2S.PAST PRON.2S come.NONFIN to DET place right anyway	you came to the right place, anyway.	\N	\N	1479539	1481059	1520	
633	stammers7	ROY	<oh@s:cym&eng paid â gofyn de> [=! laughs] .	IM desist.2S.IMPER with ask.NONFIN TAG	oh, don't ask.	\N	\N	1457201	1458548	1347	
626	stammers7	GWN	wnest ti fynd yna [?] anyway@s:eng ?	do.2S.PAST PRON.2S go.NONFIN there anyway	did you go there anyway?	\N	\N	1432205	1433331	1126	
627	stammers7	ROY	do .	yes	yes.	\N	\N	1433308	1433749	441	
628	stammers7	ROY	do .	yes	yes.	\N	\N	1434376	1435177	801	
634	stammers7	GWN	o_k@s:cym&eng wna i ddim .	o_k do.1S.NONPAST PRON.1S NEG	okay, I won't.	\N	\N	1458559	1459453	894	
629	stammers7	ROY	o'n i methu cael pres yn_ôl o (y)r # cwmni awyren .	be.1S.IMP PRON.1S PRT fail.NONFIN get.NONFIN money back from DET company aeroplane	I couldn't get the money back off the airline.	\N	\N	1435421	1437998	2577	
635	stammers7	ROY	&=laugh !	\N	\N	\N	\N	1459616	1463134	3518	
630	stammers7	ROY	so@s:cym&eng ges i deg diwrnod <efo &nh> [//] <efo &n> [/] efo (y)n rhieni &=laugh !	so have.1S.PAST PRON.1S ten day with with with POSS.1S parents	so I had ten days with my parents!	\N	\N	1441690	1449039	7349	
631	stammers7	ROY	not what I had in mind &=laugh !	\N	\N	\N	\N	1449631	1452708	3077	eng
642	stammers7	GWN	&=cough so@s:cym&eng # dw (ddi)m yn gwybod os oes (y)na <Cawl a Chwestiwn> [?] ["] wythnos nesa .	so be.1S.PRES NEG PRT know if be.3S.PRES there soup and question week next	I don't know whether there is a "Cawl a Chwestiwn" [Soup and Questions] next week.	\N	\N	1496710	1500169	3459	
636	stammers7	GWN	rhaid chdi watsiad de (fe)lly [?] ?	necessity PRON.2S watch.NONFIN TAG thus	you'll have to watch it, won't you then?	\N	\N	1465676	1466500	824	
641	stammers7	GWN	(be)cause@s:eng mae (y)na lot@s:cym&eng mwy o gennod Cristnogol Cymraeg na sy (y)na hogiau .	because be.3S.PRES there lot more of girls Christian Welsh than be.PRES.REL there boys	cause there are are a lot more Welsh Christian girls than there are lads.	\N	\N	1481048	1484670	3622	
637	stammers7	GWN	fyddi di cael dipyn o reputation@s:eng !	be.2S.FUT PRON.2S get.NONFIN a_bit of reputation	you'll get a bit of a reputation!	\N	\N	1466500	1468103	1603	
638	stammers7	ROY	shut up !	\N	\N	\N	\N	1468138	1469229	1091	eng
639	stammers7	ROY	oh@s:cym&eng !	\N	\N	\N	\N	1470947	1472247	1300	
643	stammers7	GWN	(dy)dy Ali@s:cym&eng ddim yna na ?	be.3S.PRES.NEG Ali NEG there no	Ali's not there, is he?	\N	\N	1501586	1502852	1266	
644	stammers7	ROY	dydy o ddim ?	be.3S.PRES.NEG PRON.3SM NEG	isn't he?	\N	\N	1503084	1503897	813	
645	stammers7	GWN	mae o (y)n Llansannan@s:cym&eng .	be.3S.PRES PRON.3SM in Llansannan	he's in Llansannan	\N	\N	1503943	1504814	871	
646	stammers7	ROY	oh@s:cym&eng !	\N	\N	\N	\N	1505441	1506242	801	
691	stammers7	ROY	yeah@s:cym&eng byth yn gwybod be i wneud efo hwnnw .	yeah never PRT know.NONFIN what to do.NONFIN with that	yeah, I never know what to do about that.	\N	\N	1590065	1592051	1986	
647	stammers7	GWN	a dw i (y)n mynd i Llansannan@s:cym&eng hefyd dw i meddwl .	and be.1S.PRES PRON.1S PRT go.NONFIN to Llansannan also be.1S.PRES PRON.1S think.NONFIN	and I'm going to Llansannan as well, I think.	\N	\N	1506172	1507832	1660	
648	stammers7	ROY	hmm@s:cym&eng .	\N	\N	\N	\N	1509272	1509794	522	
666	stammers7	GWN	yeah@s:cym&eng ond oedd o (y)n fath â # llai o size@s:cym&eng .	yeah but be.3S.IMP PRON.3SM PRT kind with less of size	yeah, but it was, like, smaller in size.	\N	\N	1540038	1542360	2322	
649	stammers7	GWN	um@s:cym&eng ## mae (y)r thing@s:eng xxx yna dydy ?	IM be.3S.PRES DET thing xxx there be.3S.PRES.NEG	um, that [...] thing's there, isn't it.	\N	\N	1510352	1513951	3599	
667	stammers7	ROY	yeah@s:cym&eng .	\N	\N	\N	\N	1542337	1542651	314	
650	stammers7	GWN	so@s:cym&eng wnes i fethu flwyddyn dwytha achos oedd car@s:cym&eng fi (we)di falu .	so do.1S.PAST PRON.1S fail.NONFIN year previous because be.3S.IMP car PRON.1S PRT.PAST smash.NONFIN	so I couldn't last year, because my car had smashed.	\N	\N	1514589	1516737	2148	
651	stammers7	GWN	so@s:cym&eng ## dw i isio mynd y tro nesa really@s:eng .	so be.1S.PRES PRON.1S want go.NONFIN DET turn next really	so I want to go the next time really.	\N	\N	1516772	1519396	2624	
652	stammers7	ROY	mmhm@s:cym&eng ?	\N	\N	\N	\N	1519431	1519953	522	
682	stammers7	GWN	wedyn na oedd o (y)n dda actually@s:eng .	then no be.3S.IMP PRON.3SM PRT good actually	so, no, it was good actually.	\N	\N	1570882	1572426	1544	
653	stammers7	GWN	wedyn +. . .	then	then...	\N	\N	1520882	1521532	650	
668	stammers7	GWN	um@s:cym&eng ## chdi (di)m_ond yn cael wneud fifty@s:eng .	IM PRON.2S only PRT get.NONFIN do.NONFIN fifty	um, you can only do 50 .	\N	\N	1543057	1546308	3251	
654	stammers7	ROY	be dy car@s:cym&eng wedi torri lawr ?	what POSS.2S car PRT.PAST break.NONFIN down	what, your car had broken down?	\N	\N	1521637	1523030	1393	
669	stammers7	ROY	mmhm@s:cym&eng .	\N	\N	\N	\N	1546586	1547260	674	
655	stammers7	GWN	na o'n i (we)di cael blow_out@s:eng .	no be.1S.IMP PRON.1S PRT.PAST have.NONFIN blow_out	no, I'd had a blow-out.	\N	\N	1523030	1524481	1451	
656	stammers7	ROY	oh@s:cym&eng .	\N	\N	\N	\N	1524528	1524957	429	
657	stammers7	GWN	so@s:cym&eng oedd gynnof fi um@s:cym&eng replacement@s:eng tyre@s:cym&eng .	so be.3S.IMP with.1S PRON.1S replacement tyre	so I had a replacement tyre.	\N	\N	1525096	1527279	2183	
677	stammers7	GWN	gawn ni siarad am # siarad mewn tafodau a iacháu a pethau ?	have.1PL.NONPAST PRON.1PL spaek.NONFIN about speak.NONFIN in tongues and heal.NONFIN and things	"can we talk about speaking in tongues and healing and things?"	\N	\N	1560357	1563526	3169	
658	stammers7	GWN	ac oedd hi (y)n dydd Sul .	and be.3S.IMP PRON.3SF PRT day Sunday	and it was Sunday	\N	\N	1527267	1528045	778	
670	stammers7	GWN	wedyn # wythnos wedyn dw i (y)n meddwl dan ni (y)n siarad am # +// .	then week after be.1S.PRES PRON.1S PRT think.NONFIN be.1PL.PRES PRON.1PL PRT speak.NONFIN about	then the week afterwards I think we're speaking on...	\N	\N	1548224	1552323	4099	
659	stammers7	GWN	so@s:cym&eng do'n i (dd)im yn gallu cael teiar iawn .	so be.1S.IMP.NEG PRON.1S NEG PRT can.NONFIN get.NONFIN tyre right	so I couldn't get a proper tyre.	\N	\N	1528045	1529531	1486	
660	stammers7	GWN	so@s:cym&eng ti (dd)im fod i &rd +// .	so PRON.2S NEG be.NONFIN to	so you're not supposed to...	\N	\N	1530425	1531494	1069	
678	stammers7	ROY	+< &=laugh .	\N	\N	\N	\N	1563044	1563474	430	
661	stammers7	GWN	ddylsa chdi (dd)im really@s:eng +// .	should.2S.NONPAST PRON.2S NEG really	you shouldn't really...	\N	\N	1531435	1532585	1150	
671	stammers7	GWN	&de timod dan ni <(we)di bod yn> [?] sôn am yr Ysbryd Glân ?	know.2S be.1PL.PRES PRON.1PL PRT.PAST be.NONFIN PRT talk.NONFIN about DET ghost clean	you know we've been talking about the Holy Spirit?	\N	\N	1552416	1554308	1892	
662	stammers7	GWN	oedd y boy@s:cym&eng yn deud ## i beidio dreifio os na oedd raid i chdi .	be.3S.IMP DET boy PRT say.NONFIN to desist.NONFIN drive.NONFIN if NEG be.3S.IMP necessity to PRON.2S	the guy was saying not to drive if you didn't have to.	\N	\N	1532933	1536950	4017	
663	stammers7	ROY	mmhm@s:cym&eng .	\N	\N	\N	\N	1536869	1537438	569	
672	stammers7	ROY	mmhm@s:cym&eng ?	\N	\N	\N	\N	1554366	1554726	360	
664	stammers7	GWN	wedyn um@s:cym&eng +/ .	then IM	then...	\N	\N	1537821	1538947	1126	
665	stammers7	ROY	be <am y spare@s:eng> [?] ?	what about DET spare	what about the spare?	\N	\N	1538589	1539330	741	
673	stammers7	GWN	well@s:cym&eng ## dan ni (we)di bod yn wneud stuff@s:cym&eng mwy [///] dan ni +// .	well be.1PL.PRES PRON.1PL PRT.PAST be.NONFIN PRT do.NONFIN stuff more be.1PL.PRES PRON.1PL	well, we've been doing stuff that's more. . . we've...	\N	\N	1554691	1557814	3123	
679	stammers7	GWN	wedyn # wnaethon nhw ddeud +"/ .	then do.3PL.PAST PRON.3PL say.NONFIN	then, they said:	\N	\N	1565356	1566029	673	
674	stammers7	GWN	dw i isio +// .	be.1S.PRES PRON.1S want	I want...	\N	\N	1557791	1558325	534	
675	stammers7	GWN	wnes i ddeud +"/ .	do.1S.PAST PRON.1S say.NONFIN	I said:	\N	\N	1558244	1558987	743	
684	stammers7	GWN	timod pan mae rhei (y)n ddistaw a <pan maen nhw (y)n> [?] deud dim_byd ?	know.2S when be.3S.PRES some PRT quiet and when be.3PL.PRES PRON.3PL PRT say.NONFIN nothing	you know when some are quiet, and when they're saying nothing?	\N	\N	1576849	1578777	1928	
676	stammers7	GWN	+" dw i yn er@s:cym&eng awgrymu +"/ .	be.1S.PRES PRON.1S PRT IM suggest.NONFIN	"I suggest:"	\N	\N	1559091	1560357	1266	
680	stammers7	GWN	+" oh@s:cym&eng wnawn <ni &m> [?] ddisgwyl i chdi a Al@s:cym&eng ddod yn_ôl ac i wneud hynna .	IM do.1PL.NONPAST PRON.1PL wait.NONFIN to PRON.2S and Al come.NONFIN back and to do.NONFIN that	"oh, we'll wait for you and Al to come back and do that."	\N	\N	1566029	1568385	2356	
681	stammers7	ROY	&=laugh .	\N	\N	\N	\N	1567956	1568676	720	
685	stammers7	ROY	mmhm@s:cym&eng .	\N	\N	\N	\N	1578754	1579276	522	
683	stammers7	GWN	(y)n teimlo weithiau bod fi (y)n siarad gormod .	PRT feel.NONFIN sometimes be.NONFIN PRON.1S PRT speak.NONFIN too_much	sometimes think I talk too much.	\N	\N	1575224	1576884	1660	
686	stammers7	GWN	wnaeth Hayley@s:cym&eng na ## Frankie@s:cym&eng Francis@s:cym&eng ddim deud dim_byd dw i (dd)im yn meddwl right@s:cym&eng drwyddo fo .	do.3S.PAST Hayley nor Frankie Francis NEG say.NONFIN nothing be.1S.PRES PRON.1S NEG PRT think.NONFIN right through.3SM PRON.3SM	neither Hayley nor Frankie Francis said anything, I don't think, throughout.	\N	\N	1579427	1584373	4946	
687	stammers7	ROY	+< uh_huh@s:cym&eng ?	\N	\N	\N	\N	1583119	1583548	429	
688	stammers7	GWN	ond dyna ni .	but there PRON.1PL	but there we are.	\N	\N	1586346	1586880	534	
689	stammers7	GWN	mae rhei ddim yn isio siarad na ?	be.3S.PRES some NEG PRT want speak.NONFIN no	some don't want to speak, do they?	\N	\N	1586904	1588227	1323	
690	stammers7	ROY	uh_huh@s:cym&eng .	\N	\N	\N	\N	1588227	1588947	720	
692	stammers7	GWN	a dw i isio siarad lot@s:cym&eng .	and be.1S.PRES PRON.1S want speak.NONFIN lot	and I want to speak a lot.	\N	\N	1592144	1593177	1033	
729	stammers7	GWN	faint o hir ydy (y)r cwrs ?	how_much of long be.3S.PRES DET course	how long's the course?	\N	\N	1671033	1672392	1359	
693	stammers7	GWN	so@s:cym&eng mae [/] # mae (y)n iawn .	so be.3S.PRES be.3S.PRES PRT right	so it's alright.	\N	\N	1593189	1594605	1416	
712	stammers7	ROY	do # dw i mynd yno dydd Iau .	yes be.1S.PRES PRON.1S go.NONFIN there day Thursday	yes, I'm going there on Thursday.	\N	\N	1634172	1635925	1753	
694	stammers7	GWN	wna i siarad drostyn nhw .	do.1S.NONPAST PRON.1S speak.NONFIN over.3PL PRON.3PL	I'll speak over them.	\N	\N	1594965	1596335	1370	
695	stammers7	ROY	&=laugh .	\N	\N	\N	\N	1596416	1598111	1695	
696	stammers7	GWN	Ifan@s:cym&eng um@s:cym&eng Ifans@s:cym&eng sy (y)n arwain nos Wener .	Ifan IM Ifans be.PRES.REL PRT lead.NONFIN night Friday	Ifan Ifans leads it on Friday night.	\N	\N	1599876	1603324	3448	
697	stammers7	ROY	yeah@s:cym&eng .	\N	\N	\N	\N	1603336	1604044	708	
721	stammers7	ROY	mae (y)r cwrs yn cychwyn yn [/] yn Ebrill .	be.3S.PRES DET course PRT start.NONFIN in in April	the course starts in April.	\N	\N	1657078	1658866	1788	
698	stammers7	GWN	i fod +// .	to be.NONFIN	supposed to...	\N	\N	1604810	1607666	2856	
713	stammers7	GWN	da iawn .	good very	very good.	\N	\N	1637132	1637794	662	
699	stammers7	GWN	well@s:cym&eng mae (we)di text_io@s:eng+cym fi .	well be.3S.PRES PRT.PAST text.NONFIN PRON.1S	well, he's texted me.	\N	\N	1605391	1606331	940	
700	stammers7	GWN	dw i angen ffonio fo wedyn actually@s:eng .	be.1S.PRES PRON.1S need phone.NONFIN PRON.3SM after actually	I need to phone him afterwards actually.	\N	\N	1606331	1607538	1207	
701	stammers7	ROY	be sy xx nos Wener ?	what be.PRES.REL xx night Friday	what's [..] on Friday night?	\N	\N	1608850	1610696	1846	
702	stammers7	ROY	oh@s:cym&eng er@s:cym&eng <Sold@s:eng Out@s:eng> ["] ?	\N	\N	\N	\N	1611556	1612670	1114	
703	stammers7	GWN	<Sold Out> ["] .	\N	\N	\N	\N	1612600	1612995	395	eng
704	stammers7	ROY	oh@s:cym&eng # &=cough .	\N	\N	\N	\N	1613030	1615607	2577	
714	stammers7	ROY	so@s:cym&eng dw i (dd)im yn gwybod .	so be.1S.PRES PRON.1S NEG PRT know.NONFIN	so I don't know.	\N	\N	1637724	1639269	1545	
705	stammers7	GWN	&=cough mae o (we)di [///] wnaeth o text_io@s:eng+cym fi heddiw yn deud rywbeth fel bod [/] um@s:cym&eng # bod o (y)n brysur efo gwaith cwrs so@s:cym&eng (dy)dy o (ddi)m yn gallu wneud o i_gyd a gofyn i fi wneud o .	be.3S.PRES PRON.3SM PRT.PAST do.3S.PAST PRON.3SM text.NONFIN PRON.1S today PRT say.NONFIN something like be.NONFIN IM be.NONFIN PRON.3SM PRT busy with work course so be.3S.PRES.NEG PRON.3SM NEG PRT can.NONFIN do.NONFIN PRON.3SM all and ask.NONFIN to PRON.1S do.NONFIN PRON.3SM	he's. . . he texted me today saying something like, that he's busy with coursework, so he can't do it all, and asking me to do it.	\N	\N	1615642	1622504	6862	
706	stammers7	ROY	yeah@s:cym&eng .	\N	\N	\N	\N	1622492	1623177	685	
707	stammers7	ROY	wnes i ddeud wrthat ti ?	do.1S.PAST PRON.1S say.NONFIN to.2S PRON.2S	did I tell you?	\N	\N	1623734	1624768	1034	
726	stammers7	ROY	dyna be dw i (y)n gesio .	there what be.1S.PRES PRON.1S PRT guess.NONFIN	that's what I'm guessing.	\N	\N	1665519	1666773	1254	
708	stammers7	ROY	ges i um@s:cym&eng [///] # wnes i cais i Lerpwl ### am cwrs nyrsio .	have.1S.PAST PRON.1S IM make.1S.PAST PRON.1S application to Liverpool for course nurse.NONFIN	I got. . . I made an application to Liverpool, for a nursing course.	\N	\N	1624756	1631652	6896	
715	stammers7	ROY	fath â # tasen nhw (y)n # cynnig o i fi ## dw i (dd)im yn gwybod os (ba)swn i cymryd o .	kind with if_be.3PL.CONDIT PRON.3PL PRT offer.NONFIN PRON.3SM to PRON.1S be.1S.PRES PRON.1S NEG PRT know.NONFIN if be.1S.CONDIT PRON.1S take.NONFIN PRON.3SM	like, if they offered me it, I don't know whether I'd take it.	\N	\N	1639710	1645399	5689	
709	stammers7	GWN	oh@s:cym&eng do .	IM yes	oh, yes.	\N	\N	1631664	1632268	604	
710	stammers7	ROY	dw i (we)di cael cyfweliad .	be.1S.PRES PRON.1S PRT.PAST have.NONFIN interview	I've had an interview.	\N	\N	1632546	1633754	1208	
722	stammers7	GWN	oh@s:cym&eng yndy ?	IM be.3S.PRES	oh, does it?	\N	\N	1658843	1659563	720	
711	stammers7	GWN	oh@s:cym&eng do ?	IM yes	oh, really?	\N	\N	1633742	1634125	383	
716	stammers7	ROY	ond # <dw i isio> [/] dw i isio profiad o wneud o o leia .	but be.1S.PRES PRON.1S want be.1S.PRES PRON.1S want experience of do.NONFIN PRON.3SM of least	but I want experience of doing it, at least.	\N	\N	1645515	1648800	3285	
717	stammers7	ROY	um@s:cym&eng a gawn ni weld .	Im and get.1PL.NONPAST PRON.1PL see.NONFIN	um, and we'll see.	\N	\N	1649799	1651494	1695	
718	stammers7	GWN	mmm@s:cym&eng .	\N	\N	\N	\N	1651691	1652376	685	
719	stammers7	GWN	&pisə fydd ddim rhaid chdi ddewis rwan anyway@s:eng na ?	be.3S.FUT NEG necessity PRON.2S choose.NONFIN now anyway no	you won't have to choose now anyway, will you?	\N	\N	1654280	1656335	2055	
723	stammers7	ROY	dw i meddwl bod rhai pobl wedi tynnu allan .	be.1S.PRES PRON.1S think.NONFIN be.NONFIN some people PRT.PAST pull.NONFIN out	I think some people have pulled out.	\N	\N	1659516	1661827	2311	
720	stammers7	ROY	dw i (dd)im yn gwybod .	be.1S.PRES PRON.1S NEG PRT know.NONFIN	I don't know.	\N	\N	1656533	1657067	534	
724	stammers7	GWN	++ a wedyn bod nhw +/ .	and then be.NONFIN PRON.3PL	...and so they...	\N	\N	1662012	1663057	1045	
727	stammers7	ROY	dw i (dd)im yn gwybod !	be.1S.PRES PRON.1S NEG PRT know.NONFIN	I don't know.	\N	\N	1667098	1667957	859	
725	stammers7	ROY	+< +, a maen nhw angen # lenwi # rhai spots@s:cym&eng .	and be.3PL.PRES PRON.3PL need fill.NONFIN some spots	...and they need to fill some spots.	\N	\N	1662906	1665495	2589	
731	stammers7	GWN	so@s:cym&eng (ba)sa chdi yn Lerpwl wedyn am +// .	so be.2S.CONDIT PRON.2S in Liverpool then for	so you'd be in Liverpool then for...	\N	\N	1674040	1676049	2009	
728	stammers7	ROY	ond # pam arall +/ .	but why other	but, why else...	\N	\N	1669292	1671057	1765	
730	stammers7	ROY	tair blynedd .	three years	three years.	\N	\N	1672438	1673379	941	
732	stammers7	GWN	oh@s:cym&eng na !	IM no	oh, no!	\N	\N	1676026	1676699	673	
733	stammers7	GWN	ti (y)n wneud placement@s:eng mae (y)n sure@s:cym&eng dwyt ?	PRON.2S PRT do.NONFIN placement be.3S.PRES PRT sure be.2S.PRES.NEG	you do a placement, surely, don't you?	\N	\N	1676827	1678301	1474	
734	stammers7	ROY	yeah@s:cym&eng ond # mae sure@s:cym&eng yn Lerpwl fydd o .	yeah but be.3S.PRES sure in Liverpool be.3S.FUT PRON.3SM	yeah, but it'll be in Liverpool, for sure.	\N	\N	1678510	1681030	2520	
735	stammers7	ROY	&click:fingers so@s:cym&eng # mae hynny (y)n yn [?] poeni fi # (y)chydig bach .	so be.3S.PRES that PRT POSS.1S worry.NONFIN PRON.1S a_bit little	so that worries me a little bit.	\N	\N	1682504	1685894	3390	
736	stammers7	ROY	dw i (dd)im yn gwybod os dw i isio byw yn Lerpwl am tair blynedd .	be.1S.PRES PRON.1S NEG PRT know.NONFIN if be.1S.PRES PRON.1S want live.NONFIN in Liverpool for three years	I don't know whether I want to live in Liverpool for three years.	\N	\N	1685941	1687926	1985	
737	stammers7	GWN	+< mmm@s:cym&eng .	\N	\N	\N	\N	1687334	1687938	604	
756	stammers7	GWN	na <so@s:cym&eng [/] so@s:cym&eng timod dw i (y)n meddwl na &n> [?] os wyt ti (y)n mynd mae (y)n sure@s:cym&eng (ba)sai fo (y)n +. . .	no so so know.2S be.1S.PRES PRON.1S PRT think.NONFIN if be.2S.PRES PRON.2S PRT go.NONFIN be.3S.PRES PRT sure be.3S.CONDIT PRON.3SM PRT	no, so you know, I'm think that if you do go, it's sure to be...	\N	\N	1725689	1729149	3460	
738	stammers7	GWN	mae Larry@s:cym&eng Mitchell@s:cym&eng yna dydy ?	be.3S.PRES Larry Mitchell there be.3S.PRES.NEG	Larry Mitchell's there, isn't he?	\N	\N	1688971	1691014	2043	
739	stammers7	ROY	mmm@s:cym&eng .	\N	\N	\N	\N	1691304	1691780	476	
757	stammers7	ROY	hmm@s:cym&eng .	\N	\N	\N	\N	1730763	1731692	929	
740	stammers7	GWN	ti (y)n nabod Mike@s:cym&eng Mitchell@s:cym&eng ?	PRON.2S PRT know.NONFIN Mike Mitchell	do you know Mike Mitchell?	\N	\N	1691525	1692721	1196	
741	stammers7	ROY	&dental_click ydw .	be.1S.PRES	yes.	\N	\N	1692837	1693963	1126	
766	stammers7	GWN	dw i mynd i fynd i nôl pizza@s:cym&eng (y)n munud wan .	be.1S.PRES PRON.1S go.NONFIN to go.NONFIN to fetch.NONFIN pizza in minute now	I'm going to go and get a pizza in a minute now.	\N	\N	1757419	1758998	1579	
742	stammers7	GWN	mab Mike@s:cym&eng Mitchell@s:cym&eng .	son Mike Mitchell	Mike Mitchell's son.	\N	\N	1694311	1695321	1010	
758	stammers7	ROY	mae hynny (y)n syniad .	be.3S.PRES that PRT idea	that's an idea.	\N	\N	1735256	1736498	1242	
743	stammers7	ROY	be mae (y)n wneud yno ?	what be.3S.PRES PRT do.NONFIN there	what does he do there?	\N	\N	1695356	1696378	1022	
744	stammers7	GWN	&do mynd yn ddoctor@s:cym&eng .	go.NONFIN PRT doctor	becoming a doctor.	\N	\N	1696645	1697794	1149	
745	stammers7	ROY	yeah@s:cym&eng ?	\N	\N	\N	\N	1697783	1698050	267	
746	stammers7	GWN	so@s:cym&eng dw i (y)n meddwl mae o (we)di bod dwy flynedd .	so be.1S.PRES PRON.1S PRT think.NONFIN be.3S.PRES PRON.3SM PRT.PAST be.NONFIN two years	so I think he's been two years.	\N	\N	1698897	1700755	1858	
759	stammers7	ROY	dw (ddi)m yn gwybod de ?	be.1S.PRES NEG PRT know.NONFIN TAG	I don't know, eh.	\N	\N	1736487	1737508	1021	
747	stammers7	GWN	so@s:cym&eng mae o (y)na am dair blynedd arall .	so be.3S.PRES PRON.3SM there for three years other	so he's there for another three years.	\N	\N	1700801	1702253	1452	
748	stammers7	ROY	oh@s:cym&eng # hah@s:cym&eng !	\N	\N	\N	\N	1702299	1704180	1881	
749	stammers7	GWN	a mae (y)na Chris@s:cym&eng hogyn arall o <Sold@s:eng Out@s:eng> ["] .	and be.3S.PRES there Chris boy other from sold out	and there's Chris, another lad from "Sold Out" .	\N	\N	1704447	1706502	2055	
771	stammers7	GWN	dw i (y)n sure@s:cym&eng bod finnau # wedi anghofio wneud rywbeth heddiw (y)ma sti .	be.1S.PRES PRON.1S PRT sure be.NONFIN PRON.1S PRT.PAST forget.NONFIN do.NONFIN something today here know.2S	I'm sure that I've forgotten to do something today, you know.	\N	\N	1779525	1782752	3227	
750	stammers7	GWN	mae o (y)na hefyd .	be.3S.PRES PRON.3SM there also	he's there too.	\N	\N	1706502	1707199	697	
760	stammers7	GWN	yeah@s:cym&eng mae (y)n dibynnu be ti isio wneud dydy ?	yeah be.3S.PRES PRT depend.NONFIN what PRON.2S want do.NONFIN be.3S.PRES.NEG	yeah, it depends what you want to do, doesn't it?	\N	\N	1737508	1739076	1568	
751	stammers7	ROY	pa mor hen ydy o ?	which so old be.3S.PRES PRON.3SM	how old is he?	\N	\N	1708627	1709671	1044	
761	stammers7	ROY	+< mmhm@s:cym&eng .	\N	\N	\N	\N	1738681	1739250	569	
752	stammers7	GWN	mae o (y)n ## blwyddyn gynta so@s:cym&eng mae o (y)n un_deg_wyth .	be.3S.PRES PRON.3SM PRT year first so be.3S.PRES PRON.3SM PRT eighteen	he's first year, so he's 18 .	\N	\N	1709997	1713956	3959	
753	stammers7	GWN	mae Larry@s:cym&eng yn # dau_ddeg ## neu dau_ddeg_un ?	be.3S.PRES Larry PRT twenty or twenty_one	Larry is 20, or 21?	\N	\N	1714060	1718576	4516	
754	stammers7	ROY	mmm@s:cym&eng .	\N	\N	\N	\N	1718600	1718832	232	
767	stammers7	GWN	dw i (dd)im (we)di cael supper@s:cym&eng .	be.1S.PRES PRON.1S NEG PRT.PAST have.NONFIN supper	I haven't had any dinner.	\N	\N	1758975	1759765	790	
755	stammers7	ROY	(doe)s gen i ddim clem pwy (ba)swn i (y)n byw efo yno .	be.3S.PRES.NEG with.1S PRON.1S NEG inkling who be.1S.CONDIT PRON.1S PRT live.NONFIN with there	I've no idea who I'd live with there.	\N	\N	1720465	1722822	2357	
762	stammers7	ROY	gawn ni weld .	get.1PL.NONPAST PRON.1PL see.NONFIN	we'll see.	\N	\N	1746076	1747040	964	
763	stammers7	ROY	dw i (y)n gorod &g gweddïo lot@s:cym&eng amdano fo .	be.1S.PRES PRON.1S PRT must.NONFIN pray.NONFIN lot about.3SM PRON.3SM	I need to pray lots about it.	\N	\N	1747110	1749583	2473	
764	stammers7	GWN	be wnest ti gael i supper@s:cym&eng Roy@s:cym&eng ?	what do.2S.PAST PRON.2S have.NONFIN for supper Roy	what did you have for dinner, Roy?	\N	\N	1752613	1754169	1556	
765	stammers7	ROY	u:m@s:cym&eng salad@s:cym&eng .	\N	\N	\N	\N	1754378	1756618	2240	
768	stammers7	GWN	dw i newydd sylwi wan .	be.1S.PRES PRON.1S new notice.NONFIN now	I've just realised now.	\N	\N	1759765	1760682	917	
774	stammers7	GWN	dw i fod wedi wneud rywbeth .	be.1S.PRES PRON.1S be.NONFIN PRT.PAST do.NONFIN something	I'm supposed to have done something.	\N	\N	1787060	1788534	1474	
769	stammers7	GWN	wnes i gael # chicken@s:eng in@s:eng white@s:eng sauce@s:cym&eng on@s:eng toast@s:cym&eng i ginio .	do.1S.PAST PRON.1S have.NONFIN chicken in white sauce on toast for lunch	I had chicken in white sauce on toast for lunch.	\N	\N	1762563	1765825	3262	
770	stammers7	GWN	tin food !	\N	\N	\N	\N	1768217	1769343	1126	eng
772	stammers7	GWN	timod pan ti (y)n gael &n teimlad fath â nagging@s:eng yng nghefn pen chdi ?	know.2S when PRON.2S PRT get.NONFIN feeling kind with nagging in back head PRON.2S	you know when you get a kind of nagging feeling at the back of your head?	\N	\N	1783461	1786514	3053	
773	stammers7	ROY	+< mmhm@s:cym&eng .	\N	\N	\N	\N	1786050	1786700	650	
775	stammers7	GWN	mae gynna i andros o wythnos wythnos yma .	be.3S.PRES with.1S PRON.1S devil of week week here	I've got a hell of a week this week.	\N	\N	1792760	1794513	1753	
776	stammers7	GWN	mae (y)n +. . .	be.3S.PRES PRT	it's...	\N	\N	1794548	1795047	499	
777	stammers7	ROY	oes ?	be.3S.PRES	yes?	\N	\N	1795047	1795500	453	
778	stammers7	GWN	hmm@s:cym&eng .	\N	\N	\N	\N	1795814	1796545	731	
779	stammers7	GWN	so@s:cym&eng dw i fod wedi cael heddiw off@s:cym&eng .	so be.1S.PRES PRON.1S be.NONFIN PRT.PAST have.NONFIN today off	so I'm supposed to have had today off.	\N	\N	1796812	1798263	1451	
780	stammers7	GWN	ond dw i ddim wedi .	but be.1S.PRES PRON.1S NEG PRT.PAST	but I haven't.	\N	\N	1798565	1799552	987	
806	stammers7	GWN	oedden nhw (y)n gorod mynd bob wythnos am dwy flynedd .	be.3PL.IMP PRON.3PL PRT must.NONFIN go.NONFIN every week for two years	they had to go every week for two years.	\N	\N	1852462	1854587	2125	
781	stammers7	GWN	ond <dw i (dd)im (we)di wneud> [//] dw i (dd)im (we)di really@s:eng wneud loads@s:eng o waith .	but be.1S.PRES PRON.1S NEG PRT.PAST do.NONFIN be.1S.PRES PRON.1S NEG PRT.PAST really do.NONFIN loads of work	but I haven't done. . . I haven't really done loads of work.	\N	\N	1799633	1802118	2485	
782	stammers7	ROY	mmhm@s:cym&eng .	\N	\N	\N	\N	1802234	1802872	638	
797	stammers7	GWN	sy (y)n fwy na be mae rhan fwya (y)n wneud .	be.PRES.REL PRT more than what be.3S.PRES part bigger PRT do.NONFIN	which is more than what most do.	\N	\N	1834343	1835806	1463	
783	stammers7	GWN	+< ond dw i (we)di bod i_mewn .	but be.1S.PRES PRON.1S PRT.PAST be.NONFIN in	but I've been in.	\N	\N	1802338	1803209	871	
798	stammers7	ROY	mmhm@s:cym&eng ?	\N	\N	\N	\N	1835829	1836294	465	
784	stammers7	GWN	so@s:cym&eng mae hynna fel +// .	so be.3S.PRES that like	so that's like...	\N	\N	1803186	1804173	987	
785	stammers7	GWN	so@s:cym&eng dw i (we)di wneud dros hanner diwrnod o waith yn braf .	so be.1S.PRES PRON.1S PRT.PAST do.NONFIN over half day of work PRT ample	so I've done over half a day's work, easily.	\N	\N	1804509	1806936	2427	
807	stammers7	ROY	wow@s:cym&eng !	\N	\N	\N	\N	1854587	1855144	557	
786	stammers7	GWN	a o'n i (y)n gweithio ddoe .	and be.1S.IMP PRON.1S PRT work.NONFIN yesterday	and I was working yesterday.	\N	\N	1807470	1808735	1265	
799	stammers7	GWN	ond oedd y gweinidog yn deud mae (y)na <un o (y)r &ə aelod(au)> [//] rhywun newydd ddod yn aelod wan +. . .	but be.3S.IMP DET minister PRT say.NONFIN be.3S.PRES there one of DET members someone new come.NONFIN PRT member now	but the pastor was saying there's one of the members. . . someone who recently became a member now...	\N	\N	1836479	1840938	4459	
787	stammers7	GWN	a wedyn mae gynna i (y)r ysgol (y)ma (y)n dod bore (y)fory # a wedyn paratoi (y)r club@s:cym&eng yn y nos .	and then be.3S.PRES with.1S PRON.1S DET school here PRT come.NONFIN morning tomorrow and then prepare.NONFIN DET club in DET night	and then I've got this school coming tomorrow, and then preparing this club in the evening.	\N	\N	1809560	1814935	5375	
788	stammers7	GWN	a mae (y)na dosbarth derbyn in_between@s:eng syth ar_ôl ysgol .	and be.3S.PRES there class accept.NONFIN in_between straight after school	and there's a confirmation class in-between, straight after school.	\N	\N	1814935	1817803	2868	
789	stammers7	ROY	hmm@s:cym&eng .	\N	\N	\N	\N	1818198	1818894	696	
808	stammers7	ROY	huh@s:cym&eng .	\N	\N	\N	\N	1856259	1856897	638	
790	stammers7	GWN	um@s:cym&eng wedyn dydd Mercher # +/ .	IM then day Wednesday	um, then on Wednesday...	\N	\N	1818534	1820612	2078	
800	stammers7	GWN	um@s:cym&eng maen nhw (y)n byw yn Llanberis@s:cym&eng .	IM be.3PL.PRES PRON.3PL PRT live.NONFIN in Llanberis	um, they live in Llanberis.	\N	\N	1841518	1843306	1788	
791	stammers7	ROY	ydy &hən [///] pa mor hir ydy hynny (y)n bara ?	be.3S.PRES which so long be.3S.PRES that PRT last.NONFIN	does. . . how long does that last?	\N	\N	1820531	1822517	1986	
792	stammers7	GWN	dosbarthiadau derbyn ?	classes accept.NONFIN	confirmation classes?	\N	\N	1822675	1823616	941	
793	stammers7	ROY	uh_huh@s:cym&eng .	\N	\N	\N	\N	1823581	1823999	418	
794	stammers7	GWN	well@s:cym&eng dan ni (we)di bod yn anelu am fath â deg session@s:cym&eng .	well be.1PL.PRES PRON.1PL PRT.PAST be.NONFIN PRT aim.NONFIN for kind with ten session	well, we've been aiming at, like, ten sessions.	\N	\N	1824312	1827319	3007	
801	stammers7	GWN	mae hi (y)n dod o (y)r [/] # yr Almaen .	be.3S.PRES PRON.3SF PRT come.NONFIN from DET DET Germany	she comes from Germany.	\N	\N	1843294	1845872	2578	
795	stammers7	GWN	wneud deg session@s:cym&eng efo nhw a [//] am deg session@s:cym&eng awr .	do.NONFIN ten session with PRON.3PL and for ten session hour	doing ten sessions with them, for ten hour-long sessions.	\N	\N	1827493	1830547	3054	
796	stammers7	GWN	um@s:cym&eng ## <sy (y)n> [/] &m sy (y)n dda .	IM be.PRES.REL PRT be.PRES.REL PRT good	um. . . which is good.	\N	\N	1830918	1834297	3379	
802	stammers7	GWN	a oedd [///] timod faint oedd dosbarthiadau derbyn nhw (y)n para ?	and be.3S.IMP know.2S how_much be.3S.IMP classes accept.NONFIN PRON.3PL PRT last.NONFIN	and. . . do you know how long their confirmation classes lasted?	\N	\N	1846743	1849587	2844	
809	stammers7	GWN	yn rhyw Lutheran@s:eng church@s:eng .	in some Lutheran church	in some Lutheran church.	\N	\N	1856921	1859127	2206	
803	stammers7	ROY	na .	no	no.	\N	\N	1849599	1850156	557	
804	stammers7	GWN	dwy flynedd .	two years	two years.	\N	\N	1850202	1850980	778	
813	stammers7	GWN	so@s:cym&eng wedyn dan ni (y)n fel arfer yn wneud ella un neu ddau extra@s:cym&eng # yn y canol yn [/] um@s:cym&eng ### yn sôn am ## oh@s:cym&eng um@s:cym&eng # timod yr actual@s:eng cwestiynau maen nhw (y)n cael eu [?] gael yn y gwasanaeth a pethau .	so then be.1PL.PRES PRON.1PL like habit PRT do.NONFIN maybe one or two extra PRT DET middle PRT IM PRT talk.NONFIN about IM IM know.2S DET actual questions be.3PL.PRES PRON.3PL PRT get.NONFIN POSS.3PL get.NONFIN in DET service and things	so then we usually do perhaps one or two extra in the middle, talking about, you know, the actual questions they get asked in the service and things.	\N	\N	1865583	1883068	17485	
805	stammers7	ROY	dwy flynedd ?	two years	two years?	\N	\N	1851162	1851928	766	
814	stammers7	ROY	mmhm@s:cym&eng ?	\N	\N	\N	\N	1883153	1883513	360	
810	stammers7	GWN	wedyn # so@s:cym&eng # be [//] ond be dan ni (y)n wneud tro (y)ma (y)dy +// .	then so what but what be.1PL.PRES PRON.1PL PRT do.NONFIN turn here be.3S.PRES	then. . . so what. . . but what we're doing this time is...	\N	\N	1860707	1864062	3355	
811	stammers7	ROY	+< huh@s:cym&eng .	\N	\N	\N	\N	1861786	1862170	384	
812	stammers7	GWN	dan ni bron â gorffen y session@s:cym&eng .	be.1PL.PRES PRON.1PL nearly with finish.NONFIN DET session	we've nearly finished the session.	\N	\N	1864039	1865583	1544	
815	stammers7	GWN	+, um@s:cym&eng be [//] sut mae (y)r gwasanaeth yn mynd # &ɜk ambell un extra@s:cym&eng .	IM what how be.3S.PRES DET service PRT go.NONFIN occasional one extra	...um, how the service goes, the odd extra one.	\N	\N	1883373	1888633	5260	
816	stammers7	GWN	dan ni (y)n mynd drwy +// .	be.1PL.PRES PRON.1PL PRT go.NONFIN through	we go through...	\N	\N	1889074	1889991	917	
817	stammers7	GWN	ti (we)di clywed y <Cyffes Fer o (ei)n Ffydd> ["] ?	PRON.2S PRT.PAST hear.NONFIN DET confession short of POSS.1PL faith	have you heard the "Short Confession of our Faith"?	\N	\N	1890003	1892534	2531	
818	stammers7	ROY	&dental_click dw i (y)n meddwl mod i (we)di gweld o .	be.1S.PRES PRON.1S PRT think.NONFIN be.NONFIN PRON.1S PRT.PAST see.NONFIN PRON.3SM	I think I've seen it.	\N	\N	1892963	1894322	1359	
819	stammers7	GWN	+" &ə credwn yn Nuw Dad@s:cym&eng Hollalluog Creawdwr a Llywodraethwr pob peth .	believe.1PL.NONPAST in God father almighty creator and governor every thing	"we believe in God, the Father Almighty, Creator and Ruler of all things."	\N	\N	1894403	1898106	3703	
831	stammers7	GWN	ond um@s:cym&eng # mae (y)n gallu <mynd fath â (y)n> [//] mynd yn hir ar pethau # sydd yn [//] ddim yn bwysig .	but IM be.3S.PRES PRT can.NONFIN go.NONFIN kind with PRT go.NONFIN PRT long on things be.PRES.REL PRT NEG PRT important	but he can go kind of. . . go on for a long time about things that aren't important.	\N	\N	1936833	1942220	5387	
820	stammers7	GWN	so@s:cym&eng dan ni (y)n wneud fath â session@s:cym&eng ar hwnna .	so be.1PL.PRES PRON.1PL PRT do.NONFIN kind with session on that	so we do, like, a session on that.	\N	\N	1898141	1899836	1695	
821	stammers7	ROY	mmhm@s:cym&eng .	\N	\N	\N	\N	1899709	1900220	511	
832	stammers7	ROY	+< hmm@s:cym&eng .	\N	\N	\N	\N	1940851	1941199	348	
822	stammers7	GWN	ychydig ar yr Eglwys a pethau i ddechrau # a bedydd a # hanes Cristnogaeth a # ychydig o bethau wedyn .	a_bit on DET church and things to start.NONFIN and baptism and history Christianity and a_bit of things after	a bit on the Church and things to start, and baptism and history of Christianity, and a few things afterwards.	\N	\N	1900452	1907987	7535	
833	stammers7	ROY	+< mmhm@s:cym&eng ?	\N	\N	\N	\N	1942360	1942685	325	
823	stammers7	GWN	+" credwn yn Nuw Dad@s:cym&eng Hollalluog .	believe.1PL.NONPAST in God father almighty	"we believe in God, the Father Almighty."	\N	\N	1907975	1909415	1440	
824	stammers7	GWN	wedyn +"/ .	then	then:	\N	\N	1909798	1910134	336	
842	stammers7	GWN	+, &b bod drwyddo fo mae Crist yn preswylio yn pobl sy (y)n credu yno fo .	be.NONFIN through.3SM PRON.3SM be.3S.PRES Christ PRT dwell.NONFIN in people be.PRES.REL PRT believe.NONFIN in.3SM PRON.3SM	...that through him Christ lives within people who believe in him.	\N	\N	1964469	1968765	4296	
825	stammers7	GWN	+" credwn yn Iesu Grist # ei Uniganedig Fab ein Harglwydd ein Gwaredwr .	believe.1PL.NONPAST in Jesus Christ POSS.3S only_begotten son POSS.1PL lord POSS.1PL saviour	we believe in Jesus Christ, His only-begotten Son, our Lord, our Saviour.	\N	\N	1910138	1914527	4389	
834	stammers7	GWN	dw (ddi)m yn gwybod pam .	be.1S.PRES NEG PRT know.NONFIN why	I don't know why.	\N	\N	1944461	1945692	1231	
826	stammers7	GWN	a wedyn tro nesa dan ni (y)n wneud +"/ .	and then turn next be.1PL.PRES PRON.1PL PRT do.NONFIN	and then the next time we do:	\N	\N	1915367	1917247	1880	
827	stammers7	GWN	+" trwy ei fywyd ei farwolaeth ar y groes # a ei atgyfodiad gorchfygodd bechod ac angau # gan faddau i ni ein pechodau ## a (ei)n cymodi â Duw .	through POSS.3SM life POSS.3SM death on DET cross and POSS.3S resurrection defeat.3S.PAST sin and death with forgive.NONFIN to PRON.1PL POSS.1PL sins and POSS.1PL reconcile.NONFIN with God	"through His Life, His death on the Cross, and His Resurrection, He overcame sin and death, forgiving our sins and reconciling us to God."	\N	\N	1917247	1927263	10016	
843	stammers7	GWN	um@s:cym&eng +. . .	\N	\N	\N	\N	1969090	1970959	1869	
828	stammers7	GWN	so@s:cym&eng dan ni (y)n mynd trwy hwnna dw i (y)n meddwl <wneud rywbeth ar> [?] # y gap@s:cym&eng sy rwng ni a Duw a # bod Iesu Grist yn llenwi fo .	so be.1PL.PRES PRON.1PL PRT go.NONFIN through that be.1S.PRES PRON.1S PRT think.NONFIN do.NONFIN something on DET gap be.PRES.REL between PRON.1PL and God and be.NONFIN Jesus Christ PRT fill.NONFIN PRON.3SM	so we're going through that, I think, doing something on the gap between us and God, and that Jesus Christ fills it.	\N	\N	1927406	1932840	5434	
835	stammers7	GWN	dw (ddi)m yn meddwl bod +// .	be.1S.PRES NEG PRT think.NONFIN be.NONFIN	I don't think...	\N	\N	1946656	1947271	615	
829	stammers7	GWN	so@s:cym&eng dw i (y)n gobeithio +// .	so be.1S.PRES PRON.1S PRT hope.NONFIN	so I hope...	\N	\N	1933954	1935196	1242	
830	stammers7	GWN	mae (y)r gweinidog yn dda .	be.3S.PRES DET minister PRT good	the pastor's good.	\N	\N	1935405	1936764	1359	
836	stammers7	GWN	(dy)dy o (ddi)m yn trio .	be.3S.PRES.NEG PRON.3SM NEG PRT try.NONFIN	it's not deliberate.	\N	\N	1947294	1948072	778	
846	stammers7	GWN	a wedyn +. . .	and then	and so...	\N	\N	1983033	1984032	999	
837	stammers7	GWN	ond um@s:cym&eng &wiθ wedyn os ti (y)n mynd yn hir <mae (y)n> [//] maen nhw (y)n colli (y)r # +// .	but IM then if PRON.2S PRT go.NONFIN PRT long be.3S.PRES PRT be.3PL.PRES PRON.3PL PRT lose.NONFIN DET	but then if you go on a long time, they miss the...	\N	\N	1948443	1952658	4215	
844	stammers7	GWN	a wedyn &ə um@s:cym&eng y Beibl a (y)r # sacraments@s:cym&eng .	and then IM DET Bible and DET sacraments	and then the Bible and the sacraments.	\N	\N	1971040	1974407	3367	
838	stammers7	GWN	achos hwn ydy (y)r un pwysig dw i meddwl .	because this be.3S.PRES DET one important be.1S.PRES PRON.1S think.NONFIN	because this is the important one, I think.	\N	\N	1953018	1954701	1683	
839	stammers7	ROY	yeah@s:cym&eng .	\N	\N	\N	\N	1954922	1955235	313	
840	stammers7	GWN	wedyn um@s:cym&eng # dan ni (y)n wneud un ar ## <credwn yn yr Ysbryd Glân> ["] .	then be.1PL.PRES PRON.1PL PRT do.NONFIN one on believe.1PL.NONPAST in DET ghost clean	then we're doing one on "we believe in the Holy Spirit."	\N	\N	1955390	1961520	6130	
841	stammers7	GWN	um@s:cym&eng +. . .	\N	\N	\N	\N	1962170	1963935	1765	
847	stammers7	ROY	+< hmm@s:cym&eng .	\N	\N	\N	\N	1983312	1983521	209	
845	stammers7	GWN	ac # dan ni ddim really@s:eng (y)n pwysleisio ar <credwn yn nyfodiad Teyrnas Dduw> ["] ## um@s:cym&eng digon dw i (dd)im yn meddwl .	and be.1PL.PRES PRON.1PL NEG really PRT emphasise.NONFIN on believe.1PL.NONPAST in arrival kingdom God IM enough be.1S.PRES PRON.1S NEG PRT think.NONFIN	and we don't really emphasise "we believe in the coming of the Kingdom of God", um, enough, I don't think.	\N	\N	1975185	1982279	7094	
849	stammers7	GWN	so@s:cym&eng dan ni (y)n mynd drwy hwnna i_gyd .	so be.1PL.PRES PRON.1PL PRT go.NONFIN through that all	so we go through the whole of that.	\N	\N	1985844	1987458	1614	
848	stammers7	GWN	yndy so@s:cym&eng mae (y)n <ddeu(d) (wr)th pobl> [?] +// .	be.3S.PRES so be.3S.PRES PRT say.NONFIN to people	yes, so it tells people...	\N	\N	1984636	1985890	1254	
850	stammers7	GWN	so@s:cym&eng mae hwnna [?] (y)n eitha da .	so be.3S.PRES that PRT quite good	so that's quite good.	\N	\N	1987678	1988537	859	
851	stammers7	GWN	a wedyn dan ni (we)di adio wan tro (y)ma .	and then be.1PL.PRES PRON.1PL PRT.PAST add.NONFIN now turn here	and then we've added on now, this time.	\N	\N	1988851	1990929	2078	
852	stammers7	GWN	dan ni (y)n mynd i wneud dau session@s:cym&eng ar_ôl nhw cael eu derbyn .	be.1PL.PRES PRON.1PL PRT go.NONFIN to do.NONFIN two session after PRON.3PL have.NONFIN POSS.3PL accept.NONFIN	we're going to do two sessions after they get confirmed.	\N	\N	1991289	1993994	2705	
853	stammers7	GWN	un ar sut mae darllen y Beibl .	one on how be.3S.PRES read.NONFIN DET Bible	one on how to read the Bible.	\N	\N	1994191	1996316	2125	
854	stammers7	ROY	mmhm@s:cym&eng ?	\N	\N	\N	\N	1996420	1997036	616	
855	stammers7	GWN	a un am # ychydig o sut mae gweddïo # yn bersonol .	and one about a_bit of how be.3S.PRES pray.NONFIN PRT personal	and one on a bit of how to pray, personally.	\N	\N	1997160	2002349	5189	
871	stammers7	GWN	ond dw i ddim yna .	but be.1S.PRES PRON.1S NEG there	but I'm not there.	\N	\N	2042876	2043979	1103	
856	stammers7	GWN	a ## ella rhywbeth am ## <dan ni (y)n disgwyl ti ddod i (y)r Eglwys> ["] .	and maybe something about be.1PL.PRES PRON.1PL PRT wait.NONFIN PRON.2S come.NONFIN to DET church	and maybe something to do with, "we expect you to come to Church" .	\N	\N	2002485	2008766	6281	
872	stammers7	GWN	oh@s:cym&eng .	\N	\N	\N	\N	2045179	2045953	774	
857	stammers7	GWN	um@s:cym&eng achos fel arfer maen nhw (y)n cael eu derbyn a ti (y)n gweld nhw weithiau .	IM because like habit be.3PL.PRES PRON.3PL PRT have.NONFIN POSS.3PL accept.NONFIN and PRON.2S PRT see.NONFIN PRON.3PL times	because usually they get confirmed, and you see them sometimes.	\N	\N	2008963	2012435	3472	
858	stammers7	GWN	os ti (y)n gofyn i nhw ddod maen nhw (y)n dod .	if PRON.2S PRT ask.NONFIN to PRON.3PL come.NONFIN be.3PL.PRES PRON.3PL PRT come.NONFIN	if you ask them to come, they come.	\N	\N	2012535	2013998	1463	
859	stammers7	ROY	+< mmhm@s:cym&eng ?	\N	\N	\N	\N	2012593	2013034	441	
860	stammers7	GWN	ond fel arall +. . .	but like other	but otherwise...	\N	\N	2014033	2014869	836	
861	stammers7	GWN	so@s:cym&eng dan ni (y)n trio deud +"/ .	so be.1PL.PRES PRON.1PL PRT try.NONFIN say.NONFIN	so we try to say:	\N	\N	2015078	2016517	1439	
862	stammers7	GWN	+" dan ni (y)n disgwyl i chi ddod be bynnag un waith y mis .	be.1PL.PRES PRON.1PL PRT wait.NONFIN to PRON.2PL come.NONFIN what ever one time DET month	"we expect you to come at least once a month" .	\N	\N	2016726	2019466	2740	
863	stammers7	ROY	mmm@s:cym&eng .	\N	\N	\N	\N	2019455	2020058	603	
864	stammers7	GWN	xx (dy)dy hynna ddim yn ormod iddyn nhw .	xx be.3S.PRES.NEG that NEG PRT too_much to.3PL PRON.3PL	[..] that's not too much for them.	\N	\N	2020221	2022241	2020	
865	stammers7	ROY	mmm@s:cym&eng .	\N	\N	\N	\N	2022299	2022520	221	
866	stammers7	GWN	a dan ni (y)n mynd i wneud gwasanaeth special@s:cym&eng .	and be.1PL.PRES PRON.1PL PRT go.NONFIN to do.NONFIN service special	and we're going to do a special service.	\N	\N	2022404	2024041	1637	
867	stammers7	GWN	so@s:cym&eng &ð ddylsai hynna fod yn ## iawn .	so should.3S.NONPAST that be.NONFIN PRT right	so that should be alright.	\N	\N	2024041	2027013	2972	
868	stammers7	ROY	hmm@s:cym&eng .	\N	\N	\N	\N	2027303	2027756	453	
869	stammers7	GWN	so@s:cym&eng mae gen i hwn(na) [?] [//] dosbarth derbyn .	so be.3S.PRES with.1S PRON.1S that class accept.NONFIN	so I've got that. . . a confirmation class.	\N	\N	2028801	2030542	1741	
870	stammers7	GWN	wedyn dydd Mercher genna i ### club@s:cym&eng plant ## a lot@s:cym&eng o stuff@s:cym&eng # bach i wneud ## ac cyfarfod athrawon ysgol Sul .	then day Wednesday with.1S PRON.1S club children and lot of stuff little to do.NONFIN and meeting teachers school Sunday	then on Wednesday I've got the childrens' club, and lots of little stuff to do, and a Sunday school teachers' meeting.	\N	\N	2030601	2041785	11184	
\.


--
-- Name: stammers7_cgutterances_pk; Type: CONSTRAINT; Schema: public; Owner: kevin; Tablespace: 
--

ALTER TABLE ONLY stammers7_cgutterances
    ADD CONSTRAINT stammers7_cgutterances_pk PRIMARY KEY (utterance_id);


--
-- PostgreSQL database dump complete
--

