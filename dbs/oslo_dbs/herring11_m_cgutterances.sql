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
-- Name: herring11_m_cgutterances; Type: TABLE; Schema: public; Owner: kevin; Tablespace: 
--

CREATE TABLE herring11_m_cgutterances (
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


ALTER TABLE public.herring11_m_cgutterances OWNER TO kevin;

--
-- Name: herring11_m_cgutterances_utterance_id_seq; Type: SEQUENCE; Schema: public; Owner: kevin
--

CREATE SEQUENCE herring11_m_cgutterances_utterance_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.herring11_m_cgutterances_utterance_id_seq OWNER TO kevin;

--
-- Name: herring11_m_cgutterances_utterance_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kevin
--

ALTER SEQUENCE herring11_m_cgutterances_utterance_id_seq OWNED BY herring11_m_cgutterances.utterance_id;


--
-- Name: herring11_m_cgutterances_utterance_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kevin
--

SELECT pg_catalog.setval('herring11_m_cgutterances_utterance_id_seq', 645, true);


--
-- Name: utterance_id; Type: DEFAULT; Schema: public; Owner: kevin
--

ALTER TABLE herring11_m_cgutterances ALTER COLUMN utterance_id SET DEFAULT nextval('herring11_m_cgutterances_utterance_id_seq'::regclass);


--
-- Data for Name: herring11_m_cgutterances; Type: TABLE DATA; Schema: public; Owner: kevin
--

COPY herring11_m_cgutterances (utterance_id, filename, speaker, surface, mor, comment, durbegin, durend, duration, precode) FROM stdin;
1	herring11_m	GRA	es &e <en la> [//] en la primera vez que lo tocaron en mil ochocientos seis .	vpres|se-3S&PRES=be prep|en=in det:art|el=the num:adj|primero=first n|vez=turn  rel|que=that pro:per:1|lo=him vpret|toca=touch prep|en=in n|mil=thousand  num:adj|ochociento-PL=eight_hundred num|seis=six .	\N	99	6838	6739	
2	herring11_m	CAL	uhuh@s:eng&spa .	L2|uhuh .	\N	6936	7818	882	
3	herring11_m	GRA	se oyó y ninguno le gustó .	pro:refl|se=itself vpret|oí-3S=hear adv|ya=already det:indef|ninguno=none  pro:per|le=him vpret|gusta-3S=like .	\N	7752	9981	2229	
4	herring11_m	CAL	sí .	co|sí=yes .	\N	10970	11504	534	
5	herring11_m	GRA	y ah@s:eng&spa y lo tocaron entre otras piezas .	adv|ya=already L2|ah adv|ya=already pro:per:1|lo=him vpret|toca=touch  prep|entre=between det:indef|otro-PL=other n|pieza-PL=piece .	\N	11038	14027	2989	
6	herring11_m	GRA	como él tenía esa costumbre de tener tanta [//] tanto material para tocar .	adv|como=like pro:per|él=he vpas|tene-13S=have det:dem|ese=that n|costumbre=custom  prep|de=of vinf|tene=have det:indef|tanto=so_much n|material=ingredient  prep|para=for vinf|toca=touch .	\N	13670	18251	4581	
7	herring11_m	GRA	y entonces después dice .	adv|ya=already adv|entonces=then adv|después=after vpres|deci-3S&PRES=say  .	\N	18244	21512	3268	
8	herring11_m	GRA	el con [/] el con siempre ha venido a largo tiempo .	det:art|el=the det:art|el=the prep|con=with adv|siempre=always v:aux|habe-3S&PRES=have  vpart|veni=come prep|a=to adj|largo=long n|tiempo=season .	\N	21509	25392	3883	
9	herring11_m	GRA	después de su primera creación empezó a estabilizarse cuando ya tenía trece años &e &e Joseph@s:eng&spa Joachim@s:eng&spa .	adv|después=after prep|de=of det:pos|su&3S=his num:adj|primero=first  n|creación=creation vpret|empeza-3S=begin prep|a=to vinf|estabiliza-INF~pro:clit|3S&REFL  conj|cuando=when adv|ya=already vpas|tene-13S=have num|trece=thirteen n|año-PL=year  L2|Joseph L2|Joachim .	\N	25690	34149	8459	
10	herring11_m	GRA	era una persona que conocía (.) Beethoven@s:eng&spa .	vpas|se-13S=be det:art|un=one n|persona=person rel|que=that vpas|conoce-13S=know  L2|Beethoven .	\N	34096	37921	3825	
11	herring11_m	CAL	+< &be que Beethoven@s:eng&spa conocía .	rel|que=that L2|Beethoven vpas|conoce-13S=know .	\N	36407	38381	1974	
12	herring11_m	GRA	en memoria a +. . .	prep|en=in n|memoria=memory prep|a=to +. . .	\N	38365	43224	4859	
13	herring11_m	GRA	xxx o lo tocó de memoria en Londres por primera vez en mil ochocientos cuarenta y cuatro .	unk|xxx n:let|o pro:per:1|lo=him vpret|toca-3S=touch prep|de=of n|memoria=memory  prep|en=in n:prop|Londres prep|por=for num:adj|primero=first n|vez=turn  prep|en=in n|mil=thousand num:adj|ochociento-PL=eight_hundred num|cuarenta=forty  adv|ya=already num|cuatro=four .	\N	43752	49192	5440	
14	herring11_m	GRA	&a y &me Mendelsson@s:eng&spa estaba ahí .	adv|ya=already L2|Mendelsson vpas|esta-13S=be adv|ahí=there .	\N	49171	52555	3384	
15	herring11_m	GRA	la [//] el &e [//] la composición es increíblemente asociada a Joachim@s:eng&spa porque la tocó ahí primero &e [//] la primera vez .	det:art|el=the det:art|el=the ?|composición vpres|se-3S&PRES=be adv:adj|increíble=incredible  vpart|asocia=associate prep|a=to L2|Joachim conj|porque=because det:art|el=the  vpret|toca-3S=touch adv|ahí=there num:adj|primero=first det:art|el=the  num:adj|primero=first n|vez=turn .	\N	52770	64376	11606	
16	herring11_m	GRA	pero Huberman@s:eng&spa Adolf@s:eng&spa Busch@s:eng&spa Szigeti@s:eng&spa Milstein@s:eng&spa Hogan@s:eng&spa Hermann@s:eng&spa y otros y no [//] y no menos &e xxx .	conj|pero=but L2|Huberman L2|Adolf L2|Busch L2|Szigeti L2|Milstein L2|Hogan  L2|Hermann adv|ya=already det:indef|otro-PL=other adv|ya=already adv|ya=already  adv|no=no adv|menos=less unk|xxx .	\N	64555	77637	13082	
17	herring11_m	GRA	pero &a de todas maneras es el concierto más difícil de tocar .	conj|pero=but prep|de=of det:indef|todo-PL=all n|manera-PL=manner vpres|se-3S&PRES=be  det:art|el=the n|concierto=agreement adv|más=more adj|difícil=difficult  prep|de=of vinf|toca=touch .	\N	78062	83402	5340	
18	herring11_m	CAL	Bueno &e ese &e [/] ese según &se [//] según ese escritor .	n:prop|Bueno det:dem|ese=that det:dem|ese=that prep|según=according_to  prep|según=according_to det:dem|ese=that n|escritor=writer .	\N	83661	88166	4505	
19	herring11_m	GRA	+< xxx .	unk|xxx .	\N	85397	87260	1863	
20	herring11_m	CAL	pero hay [/] hay otros escritores que han dado opiniones +// .	conj|pero=but vpres|habe-3S&PRES=have det:indef|otro-PL=other n|escritor-PL=writer  rel|que=that v:aux|habe&PRES=have vpart|da=give n|opinión-PL=opinion +//  .	\N	87394	90592	3198	
21	herring11_m	CAL	lo que sucede es esto .	pro:per:1|lo=him rel|que=that vpres|sucede-3S&PRES=happen vpres|se-3S&PRES=be  pro:dem|esto=this_one .	\N	90663	92219	1556	
22	herring11_m	CAL	era que muchos de esas &e Beethoven@s:eng&spa puso una música diferente a la de su tiempo .	vpas|se-13S=be rel|que=that det:indef|mucho-PL=many prep|de=of det:dem|ese-PL=that  L2|Beethoven vpret|pone-3S=put vimp|uni-3S=unite n|música=music adj|diferente=different  prep|a=to det:art|el=the prep|de=of det:pos|su&3S=his n|tiempo=season .	\N	91948	99377	7429	
23	herring11_m	CAL	y él rompió el [/] el [/] el [/] el ritmo la o la [//] las impresiones .	adv|ya=already pro:per|él=he vpret|rompe-3S=break det:art|el=the n|ritmo=rithm  det:art|el=the conj|o=or det:art|el-PL=the vsub|impresiona&PRES=impress  .	\N	99495	105636	6141	
24	herring11_m	CAL	él [/] él salió de [/] de lo clásico a lo romántico .	pro:per|él=he vpret|sali-3S=leave prep|de=of pro:per:1|lo=him adj|clásico=classic  n:let|a pro:per:1|lo=him adj|romántico=romantic .	\N	105623	109814	4191	
25	herring11_m	CAL	él fue el primer romántico .	pro:per|él=he vpret|i-3S=go det:art|el=the num|primer=first adj|romántico=romantic  .	\N	109849	111736	1887	
26	herring11_m	CAL	en [/] en [/] y [/] y muchas de sus &ca especialmente en su período en su &e &e del medio segundo período de composición .	adv|ya=already det:indef|mucho-PL=many vsub|da-13S&PRES=give det:pos|su&3S-PL=his  adv|especialmente=especially prep|en=in det:pos|su&3S=his n|período=period  prep|en=in det:pos|su&3S=his prep|de~det|el&MASC adj|medio=half num:adj|segundo=second  n|período=period prep|de=of ?|composición .	\N	111703	121459	9756	
27	herring11_m	CAL	él empezó a crear cosas diferentes a <lo que> [/] lo que &a Mozart@s:eng&spa y Haydn@s:eng&spa habían hecho anteriormente .	pro:per|él=he vpret|empeza-3S=begin prep|a=to vinf|crea=create vsub|cose&PRES=sew  adj|diferente-PL=different n:let|a pro:per:1|lo=him prep|que=than L2|Mozart  adv|ya=already L2|Haydn vpas|habe=have n|hecho=action adv:adj|anterior=anterior  .	\N	121349	131631	10282	
28	herring11_m	CAL	y él empezó a crear cosas románticas él .	adv|ya=already pro:per|él=he vpret|empeza-3S=begin prep|a=to vinf|crea=create  vsub|cose&PRES=sew adj|romántico-PL=romantic pro:per|él=he .	\N	131601	135914	4313	
29	herring11_m	CAL	por eso se le considera a él el [/] <el más &ro> [//] el primer romántico .	prep|por=for pro:dem|eso=that_one pro:refl|se=itself pro:per|le=him vpres|considera-3S&PRES=consider  prep|a=to pro:per|él=he det:art|el=the num|primer=first adj|romántico=romantic  .	\N	135883	141135	5252	
30	herring11_m	CAL	porque +/ .	conj|porque=because +/ .	\N	141465	142469	1004	
31	herring11_m	GRA	+< y [//] y nada de romántico tiene la cara esa de ese hombre .	conj|y=and pro:indef|nada=nothing prep|de=of adj|romántico=romantic vpres|tene-3S&PRES=have  det:art|el=the adj|caro=dear det:dem|ese=that prep|de=of det:dem|ese=that  co:voc|hombre=man .	\N	141563	144704	3141	
32	herring11_m	CAL	&=laugh .	\N	\N	144385	145883	1498	
33	herring11_m	CAL	pero y [/] y recuerda que ya a ese momento empezó él empezó a [/] a [/] a estar &e tener problema con el oído .	conj|pero=but adv|ya=already vpres|recorda-3S&PRES=remember rel|que=that  adv|ya=already prep|a=to det:dem|ese=that n|momento=moment vpret|empeza-3S=begin  pro:per|él=he vpret|empeza-3S=begin prep|a=to vinf|esta=be vinf|tene=have  n|problema=problem prep|con=with det:art|el=the vpart|oí=hear .	\N	146771	156294	9523	
34	herring11_m	CAL	que él empezó a [/] a [/] a ensordecer o a tener que ya no podía escuchar bien las cosas .	rel|que=that pro:per|él=he vpret|empeza-3S=begin prep|a=to ?|ensordecer  conj|o=or prep|a=to vinf|tene=have rel|que=that adv|ya=already adv|no=no  vpas|pode-13S=can vinf|escucha=listen adv|bien=well det:art|el-PL=the vsub|cose&PRES=sew  .	\N	156475	162556	6081	
35	herring11_m	CAL	claro a lo último las composiciones del tercer perío(do) [//] período de su +/ .	co|claro=obvious prep|a=to pro:per:1|lo=him adj|último=last det:art|el-PL=the  ?|composiciones prep|de~det|el&MASC num|tercer=third n|período=period  prep|de=of det:pos|su&3S=his +/ .	\N	162395	167556	5161	
36	herring11_m	GRA	+< &e ellos dicen aquí que el [/] el [/] el caso de que abre con una como [/] como un tímpano .	pro:per|ello-PL=he vpres|deci&PRES=say adv|aquí=here rel|que=that det:art|el=the  vpres|casa-1S&PRES=marry prep|de=of rel|que=that vpres|abri-3S&PRES=open  prep|con=with det:art|un=one adv|como=like pro:dem|un=one ?|tímpano .	\N	167414	174982	7568	
37	herring11_m	GRA	a se [///] haya [//] ha creado muchas preguntas particularmente &e vistas en contraste con el liricismo .	prep|a=to v:aux|habe-3S&PRES=have vpart|crea=create det:indef|mucho-PL=many  n|pregunta-PL=question adv:adj|particular=particular vsub|vesti&PRES=dress  prep|en=in n|contraste=contrast prep|con=with det:art|el=the ?|liricismo  .	\N	175969	188626	12657	
38	herring11_m	GRA	pero &a vamos a ver qué dice el +// .	conj|pero=but vpres|i&PRES=go prep|a=to vinf|ve=see pro:int|qué=what  vpres|deci-3S&PRES=say det:art|el=the +// .	\N	191762	194775	3013	
39	herring11_m	GRA	dónde está el otro ?	adv:int|dónde=where vpres|esta-3S&PRES=be det:art|el=the pro:indef|otro=other  ?	\N	194763	195820	1057	
40	herring11_m	CAL	aquí está aquí está .	adv|aquí=here vpres|esta-3S&PRES=be adv|aquí=here vpres|esta-3S&PRES=be  .	\N	195778	197449	1671	
41	herring11_m	GRA	okey .	co|okey .	\N	196811	197438	627	
42	herring11_m	GRA	la persona que escribe esas notas le pagan harto dinero .	det:art|el=the n|persona=person rel|que=that vpres|escribi-3S&PRES=write  det:dem|ese-PL=that vpres|nota&PRES=note pro:per|le=him vpres|paga&PRES=pay  vpres|harta-1S&PRES=have_enough n|dinero=coin .	\N	197420	201428	4008	
43	herring11_m	CAL	+< sí buey xxx .	adv|sí=yes n|buey=ox unk|xxx .	\N	201428	202873	1445	
44	herring11_m	GRA	+< para &e decir (.) palabras que [/] que suenan bien .	prep|para=for vinf|deci=say n|palabra-PL=word rel|que=that vpres|sona&PRES=sound  adv|bien=well .	\N	202150	207913	5763	
45	herring11_m	GRA	y no &nes [///] bueno tienen que ser ciertas por [/] <por lo> [/] por lo mayor .	adv|ya=already adv|no=no co|bueno=good vpres|tene&PRES=have rel|que=that  vinf|se=be adj|cierto-PL=certain prep|por=for pro:per:1|lo=him adj|mayor=elder  .	\N	207815	213969	6154	
46	herring11_m	GRA	él empezó a trabajar en los primeros años &e towards@s:eng the@s:eng end@s:eng .	pro:per|él=he vpret|empeza-3S=begin prep|a=to vinf|trabaja=work prep|en=in  det:art|el-PL=the num:adj|primero-PL=first n|año-PL=year L2|towards L2|the  L2|end .	\N	214280	219807	5527	
47	herring11_m	CAL	+< xxx a tu a .	unk|xxx prep|a=to det:pos|tu=your prep|a=to .	\N	217607	222669	5062	
48	herring11_m	GRA	+, en Bonn@s:eng&spa .	prep|en=in L2|Bonn .	\N	221117	221918	801	
49	herring11_m	CAL	<en mil ochocientos> [/] en mil ochocientos seis fue cuando él compuso esa [///] el concierto para .	prep|en=in n|mil=thousand num:adj|ochociento-PL=eight_hundred num|seis=six  vpret|i-3S=go conj|cuando=when pro:per|él=he vpret|compone-3S=compose  det:art|el=the n|concierto=agreement vsub|pari-13S&PRES=give_birth .	\N	222223	229762	7539	
50	herring11_m	GRA	+< no .	adv|no=no .	\N	227927	228473	546	
51	herring11_m	GRA	aquí dice mil [/] mil setecientos noventa y dos al noventa al noventa y dos .	adv|aquí=here vpres|deci-3S&PRES=say n|mil=thousand num:adj|seteciento-PL=seven_hundred  num|noventa=ninety adv|ya=already num|dos=two prep|a~det|el&MASC num|noventa=ninety  prep|a~det|el&MASC num|noventa=ninety adv|ya=already num|dos=two .	\N	228397	234056	5659	
52	herring11_m	CAL	sí pero eso es en términos generales cuando él empezó .	co|sí=yes conj|pero=but pro:dem|eso=that_one vpres|se-3S&PRES=be prep|en=in  n|término-PL=in terms of adj|general-PL=general conj|cuando=when pro:per|él=he  vpret|empeza-3S=begin .	\N	234023	237315	3292	
53	herring11_m	GRA	+< yo no sé .	pro:per|yo=I adv|no=no vpres|sabe-1S&PRES=know .	\N	236479	237378	899	
54	herring11_m	GRA	pero eso es lo que dice aquí .	conj|pero=but pro:dem|eso=that_one vpres|se-3S&PRES=be pro:per:1|lo=him  rel|que=that vpres|deci-3S&PRES=say adv|aquí=here .	\N	237286	238708	1422	
55	herring11_m	GRA	eh pero [/] pero solamente escribió doscientos cinquenta y nueve barras del primero &e (.) movimiento .	co|eh conj|pero=but adv|solamente=only vpret|escribi-3S=write num:adj|dosciento-PL=two_hundred  ?|cinquenta adv|ya=already num|nueve=nine vsub|barre&PRES=to_sweep prep|de~det|el&MASC  num:adj|primero=first n|movimiento=movement .	\N	238699	249073	10374	
56	herring11_m	GRA	el concierto en D@s:eng&spa ha sido compuesto como &e quince años .	det:art|el=the n|concierto=agreement prep|en=in L2|D v:aux|habe-3S&PRES=have  vpart|se=be adj|compuesto=composed_of adv|como=like num|quince=fifteen  n|año-PL=year .	\N	249653	256451	6798	
57	herring11_m	GRA	fue compuesto quince años más tarde que sería mil ochocientos +. . .	vpret|i-3S=go adj|compuesto=composed_of num|quince=fifteen n|año-PL=year  adv|más=more adv|tarde=late prep|que=than vcond|se-13S&COND=be n|mil=thousand  num:adj|ochociento-PL=eight_hundred +. . .	\N	256601	262245	5644	
58	herring11_m	CAL	seis .	num|seis=six .	\N	262437	263122	685	
59	herring11_m	CAL	por eso .	prep|por=for pro:dem|eso=that_one .	\N	263075	264579	1504	
60	herring11_m	GRA	sí más o menos .	co|sí=yes adv|más=more conj|o=or adv|menos=less .	\N	264941	265817	876	
61	herring11_m	CAL	+< de [/] de mil setecientos &a noventa y uno a mil ochocientos seis quince años .	prep|de=of n|mil=thousand num:adj|seteciento-PL=seven_hundred num|noventa=ninety  adv|ya=already vpres|uni-1S&PRES=unite prep|a=to num|mil=thousand num:adj|ochociento-PL=eight_hundred  num|seis=six num|quince=fifteen n|año-PL=year .	\N	265019	269948	4929	
62	herring11_m	GRA	+< sí .	co|sí=yes .	\N	267285	267662	377	
63	herring11_m	GRA	ok .	?|ok .	\N	274161	274956	795	eng
64	herring11_m	GRA	en [/] en el otoño de mil ochocientos seis &e Franz@s:eng&spa Clement@s:eng&spa quien era el jefe y conductor de la orquesta de teatro de Wien@s:eng&spa en Viena@s:eng&spa [//] Wein_der_Viena@s:eng&spa .	prep|en=in det:art|el=the n|otoño=Autumn prep|de=of n|mil=thousand num:adj|ochociento-PL=eight_hundred  num|seis=six L2|Franz L2|Clement rel|quien=who vpas|se-13S=be det:art|el=the  n|jefe=boss adv|ya=already n|conductor=conductor prep|de=of det:art|el=the  n|orquesta=orchestra prep|de=of n|teatro=theater prep|de=of L2|Wien prep|en=in  L2|Wein_der_Viena .	\N	274868	289169	14301	
65	herring11_m	GRA	&a mil ochocientos dos hasta mil ochocientos once .	n|mil=thousand num:adj|ochociento-PL=eight_hundred num|dos=two prep|hasta=until  n|mil=thousand num:adj|ochociento-PL=eight_hundred num|once=eleven .	\N	290227	294726	4499	
66	herring11_m	GRA	concerto@s:eng&spa para@s:eng&spa &cle eh [//] clemencia@s:eng&spa para@s:eng&spa un@s:eng&spa clemente@s:eng&spa primo@s:eng&spa .	L2|concerto L2|para L2|clemencia L2|para L2|un L2|clemente L2|primo .	\N	298569	303927	5358	
67	herring11_m	GRA	violino@s:eng&spa e@s:eng&spa editorio@s:eng&spa al@s:eng&spa teatro@s:eng&spa de@s:eng&spa Viena@s:eng&spa .	L2|violino L2|e L2|editorio L2|al L2|teatro L2|de L2|Viena .	\N	303729	308384	4655	
68	herring11_m	GRA	escribió Beethoven@s:eng&spa en sus &a llaman aquí Macarronic@s:eng&spa [?] .	vpret|escribi-3S=write L2|Beethoven prep|en=in det:pos|su&3S-PL=his vpres|llama&PRES=call  adv|aquí=here L2|Macarronic .	\N	308456	315265	6809	
69	herring11_m	GRA	&e forma a la cabeza de la composición .	vpres|forma-3S&PRES=form prep|a=to det:art|el=the n|cabeza=head prep|de=of  det:art|el=the ?|composición .	\N	316465	321532	5067	
70	herring11_m	GRA	pero no [/] no dicen &a +/ .	conj|pero=but adv|no=no vpres|deci&PRES=say +/ .	\N	321526	327557	6031	
71	herring11_m	GRA	el primer movimiento en particular es remarcable .	det:art|el=the num|primer=first n|movimiento=movement prep|en=in adj|particular=particular  vpres|se-3S&PRES=be ?|remarcable .	\N	325547	332112	6565	
72	herring11_m	GRA	la poca bravura yo [/] yo no sé yo lo creo muy más &remarca &e (.) que no le falta nada .	det:art|el=the det:indef|poco=little ?|bravura pro:per|yo=I adv|no=no  vpres|sabe-1S&PRES=know pro:per|yo=I pro:per:1|lo=him vpres|cree-1S&PRES=believe  adv|muy=very adv|más=more rel|que=that adv|no=no pro:per|le=him vpres|falta-3S&PRES=be_lacking  pro:indef|nada=nothing .	\N	332090	341351	9261	
73	herring11_m	CAL	sí &e &e .	co|sí=yes .	\N	341821	343260	1439	
74	herring11_m	GRA	y que thereby@s:eng matching@s:eng the@s:eng style@s:eng of@s:eng Clement's@s:eng&spa+eng piano@s:eng .	adv|ya=already prep|que=than L2|thereby L2|matching L2|the L2|style L2|of  L2|Clement's L2|piano .	\N	343521	348029	4508	
75	herring11_m	GRA	y tengo que seguir en español .	adv|ya=already vpres|tene-1S&PRES=have rel|que=that vinf|segui=follow  prep|en=in adj|español=Spanish .	\N	348194	349796	1602	
76	herring11_m	GRA	lo que pasa es que estoy traduciendo de un [//] una página a la otra .	pro:per:1|lo=him rel|que=that vpres|pasa-3S&PRES=pass vpres|se-3S&PRES=be  rel|que=that vpres|esta-1S&PRES=be vger|traduci-PROG=translate prep|de=of  vimp|uni-3S=unite n|página=page prep|a=to det:art|el=the det:indef|otro=other  .	\N	349775	354691	4916	
77	herring11_m	CAL	sí bueno &e aún aquí lo [//] aquí dice tambien &e de [/] de [/] de su principio cuando él &e la primera vez que lo [//] el [/] él recibió mucha crítica .	co|sí=yes co|bueno=good adv|aún=notwithstanding adv|aquí=here adv|aquí=here  vpres|deci-3S&PRES=say ?|tambien prep|de=of det:pos|su&3S=his n|principio=beginning  conj|cuando=when pro:per|él=he det:art|el=the num:adj|primero=first n|vez=turn  rel|que=that pro:per|él=he vpret|recibi-3S=receive det:indef|mucho=many  ?|crítica .	\N	360626	364620	3994	
78	herring11_m	GRA	para mí francamente cuando yo lo pongo <lo primer> [//] las primeras cinco notas lo que yo recuerdo <es Be(thoven)> [//] es Mozart@s:eng&spa .	prep|para=for pro:per|mí=me adv:adj|franco=frank conj|cuando=when pro:per|yo=I  pro:per:1|lo=him vpres|pone-1S&PRES=put det:art|el-PL=the num:adj|primero-PL=first  num|cinco=five vpres|nota&PRES=note pro:per:1|lo=him rel|que=that pro:per|yo=I  vpres|recorda-1S&PRES=remember vpres|se-3S&PRES=be L2|Mozart .	\N	364593	371199	6606	
79	herring11_m	CAL	sí porque tenía la influencia de Mozart@s:eng&spa él +/ .	co|sí=yes conj|porque=because vpas|tene-13S=have det:art|el=the vpres|influencia-3S&PRES=influence  prep|de=of L2|Mozart pro:per|él=he +/ .	\N	371180	376724	5544	
80	herring11_m	GRA	+< &e .	\N	\N	374742	376066	1324	
81	herring11_m	GRA	+< en un momento oscuro yo puedo o [/] o [/] o equivocarme si es Mozart@s:eng&spa o [/] o [/] o es Beethoven@s:eng&spa .	prep|en=in pro:dem|un=one n|momento=moment adj|oscuro=dark pro:per|yo=I  vpres|pode-1S&PRES=can conj|o=or vinf|equivoca-INF~pro:clit|1S conj|si=if  vpres|se-3S&PRES=be L2|Mozart conj|o=or vpres|se-3S&PRES=be L2|Beethoven  .	\N	376034	382756	6722	
82	herring11_m	CAL	+< y +// .	adv|ya=already +// .	\N	376647	377181	534	
83	herring11_m	CAL	y él &a claro el &a el piano era su [/] su instrumento favorito .	adv|ya=already pro:per|él=he co|claro=obvious det:art|el=the det:art|el=the  n|piano=piano vpas|se-13S=be det:pos|su&3S=his n|instrumento=instrument  adj|favorito=favorite .	\N	382901	389646	6745	
84	herring11_m	CAL	pero el violín llegó a ser su segundo &e instrumento .	conj|pero=but det:art|el=the n|violín=violin vpret|llega-3S=arrive prep|a=to  vinf|se=be det:pos|su&3S=his num:adj|segundo=second n|instrumento=instrument  .	\N	389644	395077	5433	
124	herring11_m	GRA	&e &e ellos [/] ellos están ahí ahora .	pro:per|ello-PL=he vpres|esta&PRES=be adv|ahí=there adv|ahora=now .	\N	500912	503623	2711	
125	herring11_m	CAL	+< &a ahí [/] ahí también ?	adv|ahí=there adv|también=also ?	\N	501098	502328	1230	
126	herring11_m	CAL	sí mmhm@s:eng .	adv|sí=yes L2|mmhm .	\N	503637	504537	900	
127	herring11_m	CAL	&e eso [/] esto es fantástico como tocan ellos .	pro:dem|esto=this_one vpres|se-3S&PRES=be adj|fantástico=fanciful adv|como=like  vpres|toca&PRES=touch pro:per|ello-PL=he .	\N	505002	507265	2263	
128	herring11_m	GRA	+< xxx tener cinco personas que tocan tan +. . .	unk|xxx vinf|tene=have num|cinco=five n|persona-PL=person rel|que=that  vpres|toca&PRES=touch adv|tan=such +. . .	\N	505657	509570	3913	
85	herring11_m	CAL	pero cuando él componía muchas &ka &e muchas piezas de (.) <lo que> [//] <lo más> [//] lo que cuando él estaba más serio en cuanto a composición era cuando componía los &a cuartetos para [/] para instrumentos de [/] de cuerda .	conj|pero=but conj|cuando=when pro:per|él=he vpas|compone-13S=compose  det:indef|mucho-PL=many det:indef|mucho-PL=many n|pieza-PL=piece prep|de=of  pro:per:1|lo=him rel|que=that conj|cuando=when pro:per|él=he vpas|esta-13S=be  adv|más=more adj|serio=serious prep|en=in det:indef|cuanto=how_much n:let|a  ?|composición vpas|se-13S=be conj|cuando=when vpas|compone-13S=compose  det:art|el-PL=the ?|cuartetos prep|para=for n|instrumento-PL=instrument  prep|de=of n|cuerda=string .	\N	395049	412836	17787	
86	herring11_m	CAL	ahí [/] ahí <y en> [/] <y en las> [//] <y en los concier(tos)> [//] <y en los &a> [//] y en las sinfonías .	adv|ahí=there adv|ya=already prep|en=in det:art|el-PL=the ?|sinfonías  .	\N	413462	420103	6641	
87	herring11_m	GRA	&con conciertos y las sinfonías .	n|concierto-PL=agreement conj|y=and det:art|el-PL=the ?|sinfonías .	\N	418024	419835	1811	
88	herring11_m	CAL	<en los> [//] en las sinfonías especialmente y en los &e cuartetos (.) de cuerdas .	prep|en=in det:art|el-PL=the ?|sinfonías adv|especialmente=especially  adv|ya=already prep|en=in det:art|el-PL=the ?|cuartetos prep|de=of n|cuerda-PL=string  .	\N	419746	425838	6092	
89	herring11_m	GRA	+< yo he visto a este señor muchas veces pero &a .	pro:per|yo=I v:aux|habe-1S&PRES=have vpres|vesti-1S&PRES=dress prep|a=to  det:dem|este=this n|señor=sir det:indef|mucho-PL=many n|vez-PL=turn conj|pero=but  .	\N	424390	428662	4272	
90	herring11_m	CAL	quién a [/] a ?	pro:int|quién=who prep|a=to ?	\N	428624	430470	1846	
91	herring11_m	GRA	&aish a Itshak@s:eng&spa Perlman@s:eng&spa .	prep|a=to L2|Itshak L2|Perlman .	\N	430474	432843	2369	
92	herring11_m	CAL	Itshak@s:eng&spa [/] Itshak@s:eng&spa Perlman@s:eng&spa ?	L2|Itshak L2|Perlman ?	\N	431293	433214	1921	
93	herring11_m	CAL	sí@3 .	?|sí@3 .	\N	433353	433934	581	eng
94	herring11_m	GRA	+< pero &a .	conj|pero=but .	\N	433886	435552	1666	
95	herring11_m	CAL	tú sabes que <él es> [/] él es &e tiene malas piernas pues es decir ?	pro:per|tú=you vpres|sabe&PRES=know rel|que=that pro:per|él=he vpres|se-3S&PRES=be  vpres|tene-3S&PRES=have adj|malo-PL=bad n|pierna-PL=leg co|pues=well vpres|se-3S&PRES=be  vinf|deci=say ?	\N	434310	440182	5872	
96	herring11_m	GRA	él [/] él tuvo polio .	pro:per|él=he vpret|tene-3S=have ?|polio .	\N	439728	441237	1509	
97	herring11_m	CAL	polio sí (.) pero .	?|polio co|sí=yes conj|pero=but .	\N	441406	443252	1846	
98	herring11_m	GRA	+< y él [/] él tiene él ha venido aquí muchas veces .	adv|ya=already pro:per|él=he vpres|tene-3S&PRES=have pro:per|él=he v:aux|habe-3S&PRES=have  vpart|veni=come adv|aquí=here det:indef|mucho-PL=many n|vez-PL=turn .	\N	442750	445496	2746	
99	herring11_m	GRA	pero nunca me ha (.) y tiene familia aquí también en Miami@s:eng&spa .	conj|pero=but adv|nunca=never pro:per|me=me v:aux|habe-3S&PRES=have adv|ya=already  vpres|tene-3S&PRES=have n|familia=family adv|aquí=here adv|también=also  prep|en=in L2|Miami .	\N	445487	451612	6125	
100	herring11_m	CAL	uhuh .	co|uhuh .	\N	445663	446081	418	eng
101	herring11_m	GRA	pero él nació en .	conj|pero=but pro:per|él=he vpret|nace-3S=be_born prep|en=in .	\N	451682	452756	1074	
102	herring11_m	CAL	+< él nació en Israel@s:eng&spa .	pro:per|él=he vpret|nace-3S=be_born prep|en=in L2|Israel .	\N	452732	454102	1370	
103	herring11_m	GRA	en Israel@s:eng&spa .	prep|en=in L2|Israel .	\N	454050	454886	836	
104	herring11_m	CAL	sí .	co|sí=yes .	\N	454872	455748	876	
105	herring11_m	GRA	&da Daniel@s:eng&spa Barenboim@s:eng&spa también nació en Israel@s:eng&spa .	L2|Daniel L2|Barenboim adv|también=also vpret|nace-3S=be_born prep|en=in  L2|Israel .	\N	456075	460533	4458	
106	herring11_m	CAL	mmhm .	?|mmhm .	\N	458257	458965	708	eng
107	herring11_m	GRA	pero se <las encontraron> [//] las ha encontrado bien aquí .	conj|pero=but pro:refl|se=itself det:art|el-PL=the v:aux|habe-3S&PRES=have  vpart|encontra=find adv|bien=well adv|aquí=here .	\N	460524	464872	4348	
108	herring11_m	CAL	no pero [/] pero él vino de [/] de [/] de bastante pequeño porque lo [/] lo trajeron para que fuera a [/] a .	co|no=no conj|pero=but pro:per|él=he vpret|veni-3S=come prep|de=of adv|bastante=enough  adj|pequeño=small conj|porque=because pro:per:1|lo=him vpret|trae=carry  prep|para=for rel|que=that adv|fuera=outside prep|a=to .	\N	464687	471648	6961	
109	herring11_m	CAL	cómo es a ?	adv:int|cómo=how vpres|se-3S&PRES=be prep|a=to ?	\N	471364	472072	708	
110	herring11_m	GRA	Daniel@s:eng&spa Barenboim@s:eng&spa ?	L2|Daniel L2|Barenboim ?	\N	471666	472821	1155	
111	herring11_m	CAL	este Itzhak@s:eng&spa Perlman@s:eng&spa .	det:dem|este=this L2|Itzhak L2|Perlman .	\N	472934	475580	2646	
112	herring11_m	GRA	+< oh@s:eng&spa .	L2|oh .	\N	474135	474449	314	
113	herring11_m	GRA	para que fuera al hospital ?	prep|para=for rel|que=that adv|fuera=outside prep|a~det|el&MASC n|hospital=hospital  ?	\N	475575	476817	1242	
114	herring11_m	CAL	no no para que fuera a la [//] al conservatorio de en Nueva_York .	adv|no=no adv|no=no prep|para=for rel|que=that adv|fuera=outside n:let|a  prep|a~det|el&MASC ?|conservatorio prep|de=of prep|en=in n:prop|Nueva_York  .	\N	476887	482414	5527	
115	herring11_m	GRA	se llama .	pro:refl|se=itself vpres|llama-3S&PRES=call .	\N	482414	483686	1272	
116	herring11_m	GRA	cómo es que se llama eso ?	adv:int|cómo=how vpres|se-3S&PRES=be rel|que=that pro:refl|se=itself  vpres|llama-3S&PRES=call pro:dem|eso=that_one ?	\N	483657	487140	3483	
117	herring11_m	CAL	aja .	?|aja .	\N	485316	485833	517	
118	herring11_m	GRA	tiene un nombre especial .	vpres|tene-3S&PRES=have pro:dem|un=one n|nombre=name adj|especial=special  .	\N	488545	490478	1933	
119	herring11_m	CAL	+< sí &a de ahí es donde han salido la mayoría de los buenos violinistas (.) yeah@s:eng&spa .	adv|sí=yes prep|de=of adv|ahí=there vpres|se-3S&PRES=be rel|donde=where  vpres|habe&PRES=have vpart|sali=leave det:art|el=the n|mayoría=majority  prep|de=of det:art|el-PL=the adj|buen-PL=good n|violinista-PL=violinist  L2|yeah .	\N	490119	495013	4894	
120	herring11_m	GRA	&e esos niños &e de la familia Brown@s:eng&spa donde todos cinco hijos están tocando .	det:dem|ese-PL=that n|niño-PL=child prep|de=of det:art|el=the n|familia=family  L2|Brown rel|donde=where det:indef|todo-PL=all num|cinco=five n|hijo-PL=child  v:aux|esta&PRES=be vger|toca-PROG=touch .	\N	493923	498814	4891	
121	herring11_m	CAL	el del piano ?	det:art|el=the prep|de~det|el&MASC n|piano=piano ?	\N	498753	499664	911	
122	herring11_m	GRA	uhuh@s:eng&spa .	L2|uhuh .	\N	499595	500210	615	
123	herring11_m	CAL	sí .	co|sí=yes .	\N	500245	500843	598	
129	herring11_m	CAL	tan bien el piano y .	adv|tan=such adv|bien=well det:art|el=the n|piano=piano adv|ya=already  .	\N	509645	510899	1254	
130	herring11_m	GRA	+< tan fantásticamente .	adv|tan=such adv:adj|fantástico=fanciful .	\N	510440	512449	2009	
131	herring11_m	CAL	y [/] y [/] y [/] y [/] <y que lo> [/] y que lo toquen al mismo tiempo .	adv|ya=already rel|que=that pro:per:1|lo=him vsub|toca&PRES=touch prep|a~det|el&MASC  adj|mismo=same n|tiempo=season .	\N	510680	515499	4819	
132	herring11_m	CAL	varias composiciones según &=mumble los Cds@s:eng que yo tengo .	vpres|varia&PRES=vary ?|composiciones prep|según=according_to det:art|el-PL=the  L2|Cds rel|que=that pro:per|yo=I vpres|tene-1S&PRES=have .	\N	515424	521931	6507	
133	herring11_m	CAL	uno de los Cds@s:eng ellos han tocado varias composiciones todos cinco al mismo tiempo .	det:art|un=one prep|de=of det:art|el-PL=the L2|Cds pro:per|ello-PL=he  v:aux|habe&PRES=have vpart|toca=touch vpres|varia&PRES=vary ?|composiciones  det:indef|todo-PL=all num|cinco=five prep|a~det|el&MASC adj|mismo=same  n|tiempo=season .	\N	521866	526179	4313	
134	herring11_m	CAL	fantástico .	adj|fantástico=fanciful .	\N	528234	528902	668	
135	herring11_m	GRA	+< &cier cierta mezcla .	adj|cierto=certain vpres|mezcla-3S&PRES=mix .	\N	528269	529947	1678	
136	herring11_m	CAL	sí &e &e [//] sí .	co|sí=yes co|sí=yes .	\N	530285	531417	1132	
137	herring11_m	CAL	saben lo que tiene .	vpres|sabe&PRES=know pro:per:1|lo=him rel|que=that vpres|tene-3S&PRES=have  .	\N	531434	532693	1259	
138	herring11_m	CAL	uno tiene +/ .	num|uno=one vpres|tene-3S&PRES=have +/ .	\N	532676	533605	929	
139	herring11_m	GRA	+< aquí no debe estar .	adv|aquí=here adv|no=no vpres|debe-3S&PRES=must vinf|esta=be .	\N	532676	533605	929	
140	herring11_m	CAL	uno toca el bajo .	num|uno=one vpres|toca-3S&PRES=touch det:art|el=the vpres|baja-1S&PRES=come_down  .	\N	533605	535242	1637	
141	herring11_m	CAL	otro toca la melodía .	pro:indef|otro=other vpres|toca-3S&PRES=touch det:art|el=the ?|melodía  .	\N	535224	537076	1852	
142	herring11_m	CAL	otro toca otras cosas más es decir +/ .	pro:indef|otro=other vpres|toca-3S&PRES=touch det:indef|otro-PL=other  vsub|cose&PRES=sew adv|más=more vpres|se-3S&PRES=be vinf|deci=say +/ .	\N	537057	540662	3605	
143	herring11_m	CAL	&e algunas partes o &e especiales y [/] y .	det:indef|alguno-PL=some vpres|parti&PRES=divide conj|o=or adj|especial-PL=special  adv|ya=already .	\N	540992	546657	5665	
144	herring11_m	GRA	+< el chiquito no estaba tocando originalmente .	det:art|el=the n|chico=child adv|no=no vpas|esta-13S=be vger|toca-PROG=touch  adv:adj|original=original .	\N	546414	549979	3565	
145	herring11_m	GRA	cuando lo pusieron la primera vez en [/] en [/] en sesenta minutos +/ .	conj|cuando=when pro:per:1|lo=him vpret|pone=put det:art|el=the num:adj|primero=first  n|vez=turn prep|en=in num|sesenta=sixty n|minuto-PL=minute +/ .	\N	549906	555820	5914	
146	herring11_m	GRA	el chiquito no [/] no [/] no estaba solamente los [/] los dos muchachos y las dos muchachas .	det:art|el=the n|chico=child adv|no=no vpas|esta-13S=be adv|solamente=only  det:art|el-PL=the num|dos=two n|muchacho-PL=child adv|ya=already det:art|el-PL=the  num|dos=two n|muchacho-PL=child .	\N	556146	561585	5439	
147	herring11_m	CAL	+< lo .	pro:per:1|lo=him .	\N	558881	559839	958	
148	herring11_m	CAL	pero son tres muchachas y dos muchachos .	conj|pero=but vpres|se&PRES=be num|tres=three n|muchacho-PL=child conj|y=and  num|dos=two n|muchacho-PL=child .	\N	563371	565722	2351	
149	herring11_m	CAL	son tres muchachas .	vpres|se&PRES=be num|tres=three n|muchacho-PL=child .	\N	567182	568982	1800	
150	herring11_m	GRA	bueno yo sé que el menor es un [/] un niño .	co|bueno=good pro:per|yo=I vpres|sabe-1S&PRES=know rel|que=that det:art|el=the  adj|menor=younger vpres|se-3S&PRES=be pro:dem|un=one n|niño=child .	\N	570759	572861	2102	
151	herring11_m	CAL	no no bueno no .	adv|no=no adv|no=no co|bueno=good adv|no=no .	\N	572901	574387	1486	
152	herring11_m	CAL	yo no sé .	pro:per|yo=I adv|no=no vpres|sabe-1S&PRES=know .	\N	574992	575735	743	
153	herring11_m	CAL	no +/ .	co|no=no +/ .	\N	575723	576466	743	
154	herring11_m	CAL	pero [/] pero ahora todos parecen (.) de a +/ .	conj|pero=but adv|ahora=now det:indef|todo-PL=all vpres|parece&PRES=seem  prep|de=of prep|a=to +/ .	\N	576978	580148	3170	
155	herring11_m	GRA	+< todos .	det:indef|todo-PL=all .	\N	579956	580688	732	
156	herring11_m	GRA	sí .	co|sí=yes .	\N	580635	581117	482	
157	herring11_m	GRA	no el [/] el menor se ve menor todavía .	adv|no=no det:art|el=the adj|menor=younger pro:refl|se=itself vpres|ve-3S&PRES=see  adj|menor=younger adv|todavía=still .	\N	581480	584405	2925	
158	herring11_m	CAL	pero to(dos) .	conj|pero=but det:indef|todo-PL=all .	\N	586229	587216	987	
159	herring11_m	GRA	+< y [/] y la madre empezó a enseñarles a los tres años .	conj|y=and det:art|el=the n|madre=mother vpret|empeza-3S=begin prep|a=to  vinf|enseña-INF~pro:clit|3P prep|a=to det:art|el-PL=the num|tres=three  n|año-PL=year .	\N	586493	589558	3065	
160	herring11_m	GRA	ah@s:eng&spa yo tengo que llamar a Lisa@s:eng&spa porque (.) le dije que (.) el piano no es un juguete .	L2|ah pro:per|yo=I vpres|tene-1S&PRES=have rel|que=that vinf|llama=call  prep|a=to L2|Lisa conj|porque=because pro:per|le=him vpret|deci-1S=say  rel|que=that det:art|el=the n|piano=piano adv|no=no vpres|se-3S&PRES=be  pro:dem|un=one n|juguete=toy .	\N	591310	596738	5428	
161	herring11_m	CAL	y qué pasa ?	conj|y=and pro:int|qué=what vpres|pasa-3S&PRES=pass ?	\N	597339	597961	622	
162	herring11_m	CAL	que no [/] no está xxx .	rel|que=that adv|no=no vpres|esta-3S&PRES=be unk|xxx .	\N	598001	599388	1387	
163	herring11_m	GRA	no está qué ?	adv|no=no vpres|esta-3S&PRES=be pro:int|qué=what ?	\N	600231	601079	848	
164	herring11_m	GRA	no está &a aprendiendo ?	adv|no=no vpres|esta-3S&PRES=be vger|aprende-PROG=learn ?	\N	601529	602806	1277	
165	herring11_m	CAL	+< el niño [/] el [/] el niño .	det:art|el=the det:art|el=the n|niño=child .	\N	601761	603416	1655	
166	herring11_m	GRA	<no ha toma(do)> [//] no está tomando clases todavía .	adv|no=no vpres|esta-3S&PRES=be vger|toma-PROG=take n|clase-PL=rank adv|todavía=still  .	\N	602725	605018	2293	
167	herring11_m	GRA	y &a y no es una cosa para que alquien diga +"/ .	adv|ya=already adv|ya=already adv|no=no vpres|se-3S&PRES=be det:art|un=one  vsub|cose-13S&PRES=sew prep|para=for rel|que=that ?|alquien vsub|deci-13S&PRES=say  +"/ .	\N	606289	608919	2630	
168	herring11_m	GRA	+" ay que lindo y que bueno que le mandan un piano .	co|ay=ay rel|que=that adj|lindo=pretty adv|ya=already prep|que=than adj|buen=good  rel|que=that pro:per|le=him vpres|manda&PRES=order pro:dem|un=one n|piano=piano  .	\N	608913	611125	2212	
169	herring11_m	GRA	es una cosa para estudiar .	vpres|se-3S&PRES=be det:art|un=one vsub|cose-13S&PRES=sew prep|para=for  vinf|estudia=study .	\N	611104	613739	2635	
170	herring11_m	GRA	y cuando yo le hablo a Juan_Pablo@s:eng&spa se pone bien serio .	adv|ya=already conj|cuando=when pro:per|yo=I pro:per|le=him vpres|habla-1S&PRES=speak  prep|a=to L2|Juan_Pablo pro:refl|se=itself vpres|pone-3S&PRES=put adv|bien=well  adj|serio=serious .	\N	615901	619912	4011	
171	herring11_m	GRA	dice que no .	vpres|deci-3S&PRES=say rel|que=that adv|no=no .	\N	620316	621135	819	
172	herring11_m	CAL	+< pero a él si le gusta esa [/] esa +/ .	conj|pero=but prep|a=to pro:per|él=he conj|si=if pro:per|le=him vpres|gusta-3S&PRES=like  det:dem|ese=that +/ .	\N	620606	622597	1991	
173	herring11_m	GRA	+< no entiendes .	adv|no=no vpres|entende&PRES=understand .	\N	621903	622959	1056	
174	herring11_m	GRA	sí .	co|sí=yes .	\N	622936	623174	238	
175	herring11_m	GRA	pero él no tiene ninguno <que le> [/] que le diga cómo es que suena cierta nota .	conj|pero=but pro:per|él=he adv|no=no vpres|tene-3S&PRES=have det:indef|ninguno=none  rel|que=that pro:per|le=him vsub|deci-13S&PRES=say adv:int|cómo=how vpres|se-3S&PRES=be  rel|que=that vpres|sona-3S&PRES=sound adj|cierto=certain vpres|nota-3S&PRES=note  .	\N	623128	628274	5146	
176	herring11_m	CAL	sí sí eso es lo que pasa ahí .	co|sí=yes co|sí=yes pro:dem|eso=that_one vpres|se-3S&PRES=be pro:per:1|lo=him  rel|que=that vpres|pasa-3S&PRES=pass adv|ahí=there .	\N	628266	630118	1852	
177	herring11_m	GRA	+< y Lisa@s:eng&spa quedó en buscarle al maestro .	adv|ya=already L2|Lisa vpret|queda-3S=stay prep|en=in vinf|busca-INF~pro:clit|3S  prep|a~det|el&MASC n|maestro=master .	\N	629789	632957	3168	
178	herring11_m	GRA	y después que la maestra en el edificio no quería porque ella toca <en la &sin> [/] en la sinfónica .	adv|ya=already adv|después=after prep|que=than det:art|el=the n|maestra=mistress  prep|en=in det:art|el=the n|edificio=building adv|no=no vpas|quere-13S=want  conj|porque=because pro:per|ello=he vpres|toca-3S&PRES=touch prep|en=in  det:art|el=the ?|sinfónica .	\N	633348	638032	4684	
179	herring11_m	GRA	y yo no sé qué .	adv|ya=already pro:per|yo=I adv|no=no vpres|sabe-1S&PRES=know pro:int|qué=what  .	\N	638262	639133	871	
180	herring11_m	CAL	ella no tiene tiempo para eso .	pro:per|ello=he adv|no=no vpres|tene-3S&PRES=have n|tiempo=season prep|para=for  pro:dem|eso=that_one .	\N	639121	640694	1573	
181	herring11_m	GRA	+< ella no tiene tiempo para eso .	pro:per|ello=he adv|no=no vpres|tene-3S&PRES=have n|tiempo=season prep|para=for  pro:dem|eso=that_one .	\N	640474	641937	1463	
182	herring11_m	GRA	pero hay maestros en el colegio .	conj|pero=but vpres|habe-3S&PRES=have n|maestro-PL=master prep|en=in det:art|el=the  n|colegio=school .	\N	642301	644379	2078	
183	herring11_m	GRA	él está yendo a un colegio adventista .	pro:per|él=he v:aux|esta-3S&PRES=be vger|i-PROG=go prep|a=to pro:dem|un=one  n|colegio=school ?|adventista .	\N	644322	645964	1642	
184	herring11_m	CAL	<está cogie(ndo)> [//] está yendo a un colegio adventista ?	v:aux|esta-3S&PRES=be vger|i-PROG=go prep|a=to pro:dem|un=one n|colegio=school  ?|adventista ?	\N	646531	649405	2874	
185	herring11_m	GRA	costándole el [//] la [//] los ojos de la cara pero .	vgersh|costa-PROG~pro:clit|3S det:art|el-PL=the n|ojo-PL=eye prep|de=of  det:art|el=the adj|caro=dear conj|pero=but .	\N	649858	655070	5212	
186	herring11_m	CAL	+< quién lo está pagando ?	pro:int|quién=who pro:per:1|lo=him v:aux|esta-3S&PRES=be vger|paga-PROG=pay  ?	\N	655047	655848	801	
187	herring11_m	CAL	la ma(má) la ?	det:art|el=the n|mamá=mommy det:art|el=the ?	\N	655825	656748	923	
188	herring11_m	GRA	yo no sé .	pro:per|yo=I adv|no=no vpres|sabe-1S&PRES=know .	\N	657438	658257	819	
189	herring11_m	CAL	la mamá del muchacho ?	det:art|el=the n|mamá=mommy prep|de~det|el&MASC n|muchacho=child ?	\N	658239	659313	1074	
190	herring11_m	GRA	no sé .	adv|no=no vpres|sabe-1S&PRES=know .	\N	659482	660869	1387	
191	herring11_m	GRA	la mamá del muchacho .	det:art|el=the n|mamá=mommy prep|de~det|el&MASC n|muchacho=child .	\N	660957	662182	1225	
192	herring11_m	GRA	la mamá es [/] es Lisa@s:eng&spa .	det:art|el=the n|mamá=mommy vpres|se-3S&PRES=be L2|Lisa .	\N	662199	663790	1591	
193	herring11_m	CAL	+< del padre .	prep|de~det|el&MASC n|padre=father .	\N	662710	663842	1132	
194	herring11_m	GRA	no sé .	adv|no=no vpres|sabe-1S&PRES=know .	\N	665079	665531	452	
195	herring11_m	CAL	<la ma> [/] la mamá del padre de él .	det:art|el=the n|mamá=mommy prep|de~det|el&MASC n|padre=father prep|de=of  pro:per|él=he .	\N	665477	667456	1979	
196	herring11_m	GRA	+< no no sé .	adv|no=no adv|no=no vpres|sabe-1S&PRES=know .	\N	666945	667851	906	
197	herring11_m	GRA	ella (.) ella trabaja en otro colegio .	pro:per|ello=he pro:per|ello=he vpres|trabaja-3S&PRES=work prep|en=in  det:indef|otro=other n|colegio=school .	\N	667814	669903	2089	
198	herring11_m	GRA	pero el colegio que ella trabaja no es adventista .	conj|pero=but det:art|el=the n|colegio=school rel|que=that pro:per|ello=he  vpres|trabaja-3S&PRES=work adv|no=no vpres|se-3S&PRES=be ?|adventista .	\N	669922	672268	2346	
199	herring11_m	CAL	mmhm .	?|mmhm .	\N	672275	673012	737	eng
200	herring11_m	CAL	y [/] y &a (.) pero sí le gusta él le gustan las canciones y los [/] los .	adv|ya=already conj|pero=but co|sí=yes pro:per|le=him vpres|gusta-3S&PRES=like  pro:per|él=he pro:per|le=him vpres|gusta&PRES=like det:art|el-PL=the n|canción-PL=song  adv|ya=already det:art|el-PL=the .	\N	675015	680663	5648	
201	herring11_m	GRA	no él me dijo que le gusta el colegio .	adv|no=no pro:per|él=he pro:per|me=me vpret|deci-3S=say rel|que=that  pro:per|le=him vpres|gusta-3S&PRES=like det:art|el=the n|colegio=school  .	\N	679207	681389	2182	
202	herring11_m	GRA	<se está &fas> [//] está fascinado con [/] con el colegio porque nunca antes ha entrado en ese +// .	v:aux|esta-3S&PRES=be vpart|fascina=fascinate prep|con=with det:art|el=the  n|colegio=school conj|porque=because adv|nunca=never adv|antes=before v:aux|habe-3S&PRES=have  vpart|entra=come_in prep|en=in det:dem|ese=that +// .	\N	681356	687440	6084	
203	herring11_m	CAL	en esa clase de &co [/] de [/] de colegio .	prep|en=in det:dem|ese=that n|clase=rank vsub|da-13S&PRES=give prep|de=of  n|colegio=school .	\N	687419	689567	2148	
204	herring11_m	GRA	yo creo que <él fue> [/] él va a &es escuela sabática .	pro:per|yo=I vpres|cree-1S&PRES=believe rel|que=that pro:per|él=he vpres|i-3S&PRES=go  prep|a=to n|escuela=school adj|sabático=sabbatical .	\N	689659	692451	2792	
205	herring11_m	CAL	+< escuela (.) <no es &cu> [//] no con +// .	n|escuela=school co|no=no prep|con=with +// .	\N	690576	692491	1915	
390	herring11_m	GRA	ok@s:eng&spa .	L2|ok .	\N	1159518	1159854	336	
206	herring11_m	GRA	no es &i lo mismo que la escuela .	adv|no=no vpres|se-3S&PRES=be pro:per:1|lo=him adj|mismo=same rel|que=that  det:art|el=the n|escuela=school .	\N	692454	694474	2020	
207	herring11_m	GRA	pero en colegio adventista no he estado anteriormente .	conj|pero=but prep|en=in n|colegio=school ?|adventista adv|no=no vpres|habe-1S&PRES=have  v:aux|esta=be adv:adj|anterior=anterior .	\N	694750	698878	4128	
208	herring11_m	CAL	+< escue(la) [/] escuela porque él todavía está muy pequeño para coger al colegio .	n|escuela=school conj|porque=because pro:per|él=he adv|todavía=still  vpres|esta-3S&PRES=be adv|muy=very adj|pequeño=small prep|para=for vinf|coge=take  prep|a~det|el&MASC n|colegio=school .	\N	698455	702100	3645	
209	herring11_m	CAL	escuela te refieres .	n|escuela=school pro:per|te=you vpres|referi&PRES=refer .	\N	702228	703615	1387	
210	herring11_m	GRA	no lo sé .	adv|no=no pro:per:1|lo=him vpres|sabe-1S&PRES=know .	\N	704116	705248	1132	
211	herring11_m	CAL	escuela tiene que ser una escuela .	n|escuela=school vpres|tene-3S&PRES=have rel|que=that vinf|se=be det:art|un=one  n|escuela=school .	\N	705228	707497	2269	
212	herring11_m	GRA	escuela escuelita .	n|escuela=school n|escuela=school .	\N	707500	710692	3192	
213	herring11_m	GRA	y &e a y sale desde bien temprano .	adv|ya=already prep|a=to adv|ya=already vpres|sali-3S&PRES=leave prep|desde=from  adv|bien=well adj|temprano=early .	\N	711400	714634	3234	
214	herring11_m	GRA	y llega bien tarde .	adv|ya=already vpres|llega-3S&PRES=arrive adv|bien=well adv|tarde=late  .	\N	714624	716656	2032	
215	herring11_m	CAL	pero sí sí le gusta +// .	conj|pero=but co|sí=yes co|sí=yes pro:per|le=him vpres|gusta-3S&PRES=like  +// .	\N	717020	718315	1295	
216	herring11_m	CAL	cuando yo hablé con él la [/] la última vez estaba encantado de las &cansi +// .	conj|cuando=when pro:per|yo=I vpret|habla-1S=speak prep|con=with pro:per|él=he  det:art|el=the adj|último=last n|vez=turn vpas|esta-13S=be vpart|encanta=enchant  prep|de=of det:art|el-PL=the +// .	\N	718315	723564	5249	
217	herring11_m	CAL	y dice que sí lo [/] lo toca .	adv|ya=already vpres|deci-3S&PRES=say rel|que=that co|sí=yes pro:per:1|lo=him  vpres|toca-3S&PRES=touch .	\N	723518	725393	1875	
218	herring11_m	CAL	y según +/ .	adv|ya=already prep|según=according_to +/ .	\N	725114	726055	941	
219	herring11_m	GRA	+< cuándo tú hablaste con él ?	adv:int|cuándo=when pro:per|tú=you vpret|habla=speak prep|con=with pro:per|él=he  ?	\N	725602	726920	1318	
220	herring11_m	CAL	hace [/] <hace &tiem> [//] hace como dos meses dos o tres meses .	vpres|hace-3S&PRES=do adv|como=like num|dos=two n|mes-PL=month num|dos=two  conj|o=or num|tres=three n|mes-PL=month .	\N	726812	729673	2861	
221	herring11_m	GRA	en su casa ?	prep|en=in det:pos|su&3S=his n|casa=house ?	\N	729662	730701	1039	
222	herring11_m	CAL	sí bueno no él estaba donde [/] donde Steven@s:eng&spa .	co|sí=yes co|bueno=good adv|no=no pro:per|él=he v:aux|esta-13S=be rel|donde=where  L2|Steven .	\N	731036	734925	3889	
223	herring11_m	CAL	y &a y estaban ahí entonces lo pusieron en el teléfono .	adv|ya=already adv|ya=already vpas|esta=be adv|ahí=there adv|entonces=then  pro:per:1|lo=him vpret|pone=put prep|en=in det:art|el=the n|teléfono=telephone  .	\N	735267	740131	4864	
224	herring11_m	GRA	ah@s:eng&spa .	L2|ah .	\N	739982	740963	981	
225	herring11_m	CAL	y &a .	adv|ya=already .	\N	740940	741904	964	
226	herring11_m	GRA	porque a él le fascina hablar por teléfono .	conj|porque=because prep|a=to pro:per|él=he pro:per|le=him vpres|fascina-3S&PRES=fascinate  vinf|habla=speak prep|por=for n|teléfono=telephone .	\N	741854	743920	2066	
227	herring11_m	CAL	sí ?	co|sí=yes ?	\N	743982	744388	406	
228	herring11_m	GRA	cuando suena el teléfono él dice yo quiero hablar con mi tía .	conj|cuando=when vpres|sona-3S&PRES=sound det:art|el=the n|teléfono=telephone  pro:per|él=he vpres|deci-3S&PRES=say pro:per|yo=I vpres|quere-1S&PRES=want  vinf|habla=speak prep|con=with det:pos|mi=my n|tío=uncle .	\N	745145	748866	3721	
229	herring11_m	CAL	sí él [/] él me estaba diciendo de que sí le gustaba la música esa .	co|sí=yes pro:per|él=he pro:per|me=me v:aux|esta-13S=be vger|deci-PROG=say  prep|de=of rel|que=that co|sí=yes pro:per|le=him vpas|gusta-13S=like det:art|el=the  n|música=music det:dem|ese=that .	\N	749884	753042	3158	
230	herring11_m	CAL	pero no (.) &e toda esa es lo [/] lo +/ .	conj|pero=but adv|no=no det:indef|todo=all det:dem|ese=that vpres|se-3S&PRES=be  pro:per:1|lo=him +/ .	\N	753048	756576	3528	
231	herring11_m	GRA	+< y Lisa@s:eng&spa ?	adv|ya=already L2|Lisa ?	\N	756153	756966	813	
232	herring11_m	CAL	según [/] según Lisa@s:eng&spa dice que le &e él se sienta .	prep|según=according_to L2|Lisa vpres|deci-3S&PRES=say rel|que=that pro:per|le=him  pro:per|él=he pro:refl|se=itself vpres|senta-3S&PRES=sit .	\N	756553	759491	2938	
233	herring11_m	CAL	y se pone [///] empieza a poner un disco tras otro uno tras otro uno tras otro .	adv|ya=already pro:refl|se=itself vpres|empeza-3S&PRES=begin prep|a=to  vinf|pone=put pro:dem|un=one n|disco=disk prep|tras=across det:indef|otro=other  vpres|uni-1S&PRES=unite prep|tras=across det:indef|otro=other vpres|uni-1S&PRES=unite  prep|tras=across det:indef|otro=other .	\N	759489	763506	4017	
234	herring11_m	GRA	+< ella nunca me dijo eso .	pro:per|ello=he adv|nunca=never pro:per|me=me vpret|deci-3S=say pro:dem|eso=that_one  .	\N	763339	764645	1306	
235	herring11_m	CAL	sí según ellos .	adv|sí=yes prep|según=according_to pro:per|ello-PL=he .	\N	764639	765667	1028	
236	herring11_m	GRA	y yo le dije +" .	adv|ya=already pro:per|yo=I pro:per|le=him vpret|deci-1S=say .	\N	765569	766005	436	
237	herring11_m	GRA	+" Lisa@s:eng&spa eso debo ser lo último que él oye por la noche .	L2|Lisa pro:dem|eso=that_one vpres|debe-1S&PRES=must vinf|se=be pro:per:1|lo=him  adj|último=last rel|que=that pro:per|él=he vpres|oí-3S&PRES=hear prep|por=for  det:art|el=the n|noche=night .	\N	766016	769255	3239	
238	herring11_m	GRA	no de esas basuras y esas novelas que tú estás oyendo .	adv|no=no prep|de=of det:dem|ese-PL=that n|basura-PL=refuse adv|ya=already  det:dem|ese-PL=that n|novela-PL=novel rel|que=that pro:per|tú=you v:aux|esta&PRES=be  vger|oí-PROG=hear .	\N	769218	775632	6414	
239	herring11_m	CAL	sí .	co|sí=yes .	\N	775601	775914	313	
240	herring11_m	CAL	pero tú [/] tú no puedes controlar eso desde aquí .	conj|pero=but pro:per|tú=you adv|no=no vpres|pode&PRES=can vinf|controla=control  pro:dem|eso=that_one prep|desde=from adv|aquí=here .	\N	775925	779182	3257	
241	herring11_m	CAL	eso lo controla ella allá .	pro:dem|eso=that_one pro:per:1|lo=him vpres|controla-3S&PRES=control pro:per|ello=he  adv|allá=there .	\N	779246	780773	1527	
242	herring11_m	GRA	bueno le [/] lo estoy contro(lando) [//] yo estoy controlando a ella desde aquí .	co|bueno=good pro:per:1|lo=him vpres|esta-1S&PRES=be pro:per|yo=I v:aux|esta-1S&PRES=be  vger|controla-PROG=control prep|a=to pro:per|ello=he prep|desde=from adv|aquí=here  .	\N	780867	785789	4922	
243	herring11_m	GRA	ella lo tiene que controlar desde allá .	pro:per|ello=he pro:per:1|lo=him vpres|tene-3S&PRES=have rel|que=that  vinf|controla=control prep|desde=from adv|allá=there .	\N	785766	787809	2043	
244	herring11_m	GRA	eso le [///] sí que le han sacado plata a esa [//] a esa canción &e time@s:eng to@s:eng say@s:eng goodbye@s:eng .	pro:dem|eso=that_one co|sí=yes rel|que=that pro:per|le=him v:aux|habe&PRES=have  vpart|saca=bring_out n|plata=silver n:let|a prep|a=to det:dem|ese=that  n|canción=song L2|time L2|to L2|say L2|goodbye .	\N	790541	794866	4325	
245	herring11_m	CAL	mmhm .	?|mmhm .	\N	794839	797509	2670	eng
246	herring11_m	GRA	yo creo que la tienen en todo disco de toda clase para todo el mundo .	pro:per|yo=I vpres|cree-1S&PRES=believe rel|que=that det:art|el=the vpres|tene&PRES=have  prep|en=in det:indef|todo=all n|disco=disk prep|de=of det:indef|todo=all  n|clase=rank prep|para=for det:indef|todo=all det:art|el=the n|mundo=world  .	\N	797481	803715	6234	
247	herring11_m	GRA	ese [/] ese Paul@s:eng&spa &e Potts@s:eng&spa y la persona de Inglaterra@s:eng&spa .	det:dem|ese=that L2|Paul L2|Potts conj|y=and det:art|el=the n|persona=person  prep|de=of L2|Inglaterra .	\N	804156	812082	7926	
248	herring11_m	CAL	+< yo no lo conozco .	pro:per|yo=I adv|no=no pro:per:1|lo=him vpres|conoce-1S&PRES=know .	\N	808546	810230	1684	
249	herring11_m	CAL	él es de Inglaterra@s:eng&spa ?	pro:per|él=he vpres|se-3S&PRES=be prep|de=of L2|Inglaterra ?	\N	812000	813353	1353	
250	herring11_m	GRA	sí .	co|sí=yes .	\N	813195	813613	418	
251	herring11_m	GRA	y cantó en uno de sus programas &e cómo .	adv|ya=already vpret|canta-3S=sing prep|en=in vpres|uni-1S&PRES=unite  prep|de=of det:pos|su&3S-PL=his n|programa-PL=programme adv:int|cómo=how  .	\N	813667	817046	3379	
252	herring11_m	GRA	es algo similar a America@s:eng xxx .	vpres|se-3S&PRES=be pro:dem|algo=something adj|similar=similar prep|a=to  L2|America unk|xxx .	\N	817051	818821	1770	
253	herring11_m	GRA	es el mismo señor que lo +// .	vpres|se-3S&PRES=be det:art|el=the adj|mismo=same co:voc|señor=sir rel|que=that  pro:per:1|lo=him +// .	\N	818804	821019	2215	
254	herring11_m	CAL	America@s:eng que ?	L2|America rel|que=that ?	\N	820848	822374	1526	
255	herring11_m	GRA	Americas_Idol@s:eng&spa .	L2|Americas_Idol .	\N	822282	823872	1590	
256	herring11_m	CAL	ah ah ídolo americano .	co|ah co|ah ?|ídolo adj|americano=American .	\N	823855	826746	2891	
257	herring11_m	GRA	sí .	co|sí=yes .	\N	823855	826746	2891	
258	herring11_m	GRA	pero allá no le llaman ídolo americano .	conj|pero=but adv|allá=there adv|no=no pro:per|le=him vpres|llama&PRES=call  ?|ídolo adj|americano=American .	\N	826765	828732	1967	
259	herring11_m	GRA	ellos lo llaman +/ .	pro:per|ello-PL=he pro:per:1|lo=him vpres|llama&PRES=call +/ .	\N	828531	829553	1022	
260	herring11_m	CAL	+< sí claro <en cada> [/] en cada lugar ponen un nombre distinto .	co|sí=yes co|claro=obvious prep|en=in det:indef|cada=each n|lugar=place  vpres|pone&PRES=put pro:dem|un=one n|nombre=name adj|distinto=distinct  .	\N	829274	832407	3133	
261	herring11_m	CAL	algo que [/] que resuene más .	pro:dem|algo=something rel|que=that vsub|resona-13S&PRES=resound adv|más=more  .	\N	832350	833866	1516	
262	herring11_m	GRA	yo no sé cómo es que lo llaman allá .	pro:per|yo=I adv|no=no vpres|sabe-1S&PRES=know adv:int|cómo=how vpres|se-3S&PRES=be  rel|que=that pro:per:1|lo=him vpres|llama&PRES=call adv|allá=there .	\N	834011	835380	1369	
263	herring11_m	GRA	pero es una cosa distinta .	conj|pero=but vpres|se-3S&PRES=be det:art|un=one n|cosa=thing adj|distinto=distinct  .	\N	835366	836823	1457	
264	herring11_m	GRA	y me parece raro que [/] que ese majadero del hombre ese no ha podido decirle vamos a buscar una canción para tí .	adv|ya=already pro:per|me=me vpres|parece-3S&PRES=seem adj|raro=rare rel|que=that  det:dem|ese=that ?|majadero prep|de~det|el&MASC n|hombre=man det:dem|ese=that  adv|no=no vpres|habe-3S&PRES=have vpart|pode=can vinf|deci-INF~pro:clit|3S  vpres|i&PRES=go prep|a=to vinf|busca=search det:art|un=one n|canción=song  prep|para=for pro:per|tí=you .	\N	837282	844642	7360	
265	herring11_m	CAL	para quién ?	prep|para=for pro:int|quién=who ?	\N	844983	846701	1718	
266	herring11_m	GRA	para que sea la canción de él .	prep|para=for rel|que=that vsub|se-13S&PRES=be det:art|el=the n|canción=song  prep|de=of pro:per|él=he .	\N	847230	849656	2426	
267	herring11_m	GRA	así sea nueva .	adv|así=thus vsub|se-13S&PRES=be adj|nuevo=new .	\N	849634	850847	1213	
268	herring11_m	GRA	o sea vieja .	conj|o=or vsub|se-13S&PRES=be adj|viejo=old .	\N	850818	851868	1050	
269	herring11_m	GRA	pero que sea algo nuevo .	conj|pero=but rel|que=that vsub|se-13S&PRES=be pro:dem|algo=something  adj|nuevo=new .	\N	851835	853135	1300	
270	herring11_m	CAL	quién quién [//] a quién al [/] al cantante ?	pro:int|quién=who prep|a=to pro:int|quién=who prep|a~det|el&MASC n|cantante=singer  ?	\N	853114	856237	3123	
271	herring11_m	GRA	+< Potts@s:eng&spa .	L2|Potts .	\N	855471	856179	708	
272	herring11_m	GRA	él está cantando nessun@s:eng&spa dorma@s:eng&spa en todas partes donde va .	pro:per|él=he v:aux|esta-3S&PRES=be vger|canta-PROG=sing L2|nessun L2|dorma  prep|en=in det:indef|todo-PL=all vpres|parti&PRES=divide rel|donde=where  vpres|i-3S&PRES=go .	\N	856155	859383	3228	
273	herring11_m	GRA	cantó para la reina de Inglaterra la semana pasada .	vpret|canta-3S=sing vsub|pari-13S&PRES=give_birth det:art|el=the vpres|reina-3S&PRES=govern  prep|de=of n:prop|Inglaterra det:art|el=the n|semana=week vpart|pasa=pass  .	\N	859778	863505	3727	
274	herring11_m	CAL	+< mmhm .	?|mmhm .	\N	0	0	0	eng
275	herring11_m	GRA	no la semana antepasada o en enero .	adv|no=no det:art|el=the n|semana=week adj|antepasado=previous conj|o=or  prep|en=in n|enero=January .	\N	865137	868858	3721	
276	herring11_m	GRA	y entonces estaba en Abc@s:eng&spa la semana pasada .	adv|ya=already adv|entonces=then vpas|esta-13S=be prep|en=in L2|Abc det:art|el=the  n|semana=week vpart|pasa=pass .	\N	868663	875402	6739	
277	herring11_m	GRA	y cantó la misma canción otra vez .	adv|ya=already vpret|canta-3S=sing det:art|el=the adj|mismo=same n|canción=song  det:indef|otro=other n|vez=turn .	\N	875684	878157	2473	
278	herring11_m	CAL	mmhm .	?|mmhm .	\N	879008	880071	1063	eng
386	herring11_m	GRA	qué hora es en Francia@s:eng&spa ?	pro:int|qué=what n|hora=hour vpres|se-3S&PRES=be prep|en=in L2|Francia  ?	\N	1156621	1157718	1097	
279	herring11_m	GRA	nessun@s:eng&spa dorma@s:eng&spa es la canción con la cual se clasifica &e .	L2|nessun L2|dorma vpres|se-3S&PRES=be det:art|el=the n|canción=song  prep|con=with det:art|el=the rel|cual=which pro:refl|se=itself vpres|clasifica-3S&PRES=classify  .	\N	880239	884593	4354	
280	herring11_m	CAL	&e que se &re [/] que se [/] se identifica a (.) Paverotti@s:eng&spa .	rel|que=that pro:refl|se=itself rel|que=that pro:refl|se=itself vpres|identifica-3S&PRES=identify  prep|a=to L2|Paverotti .	\N	883945	889930	5985	
281	herring11_m	GRA	+< ah@s:eng&spa Pavorotti@s:eng&spa .	L2|ah L2|Pavorotti .	\N	887357	889261	1904	
282	herring11_m	GRA	no tenía que coger esa .	adv|no=no vpas|tene-13S=have rel|que=that vinf|coge=take det:dem|ese=that  .	\N	889755	891264	1509	
283	herring11_m	CAL	+< sí .	co|sí=yes .	\N	889781	890275	494	
284	herring11_m	GRA	yo no estoy diciendo que sí tal vez él canta esa más que cualquiera otra .	pro:per|yo=I adv|no=no v:aux|esta-1S&PRES=be vger|deci-PROG=say rel|que=that  co|sí=yes adj|tal=such n|vez=turn pro:per|él=he vpres|canta-3S&PRES=sing  det:dem|ese=that adv|más=more prep|que=than pro:indef|cualquiera=whichever  det:indef|otro=other .	\N	891083	894815	3732	
285	herring11_m	CAL	mmhm .	?|mmhm .	\N	894829	896971	2142	eng
286	herring11_m	GRA	+< pero una persona que canta tan bien así muy bien podrían prepararlo con una canción así ya sea +. . .	conj|pero=but det:art|un=one n|persona=person rel|que=that vpres|canta-3S&PRES=sing  adv|tan=such adv|bien=well adv|así=thus adv|muy=very adv|bien=well vcond|pode&COND=can  vinf|prepara-INF~pro:clit|OBJ&MASC prep|con=with det:art|un=one n|canción=song  adv|así=thus adv|ya=already vsub|se-13S&PRES=be +. . .	\N	895604	903931	8327	
287	herring11_m	CAL	+< qué orquesta [?] .	pro:int|qué=what n|orquesta=orchestra .	\N	896972	897814	842	
288	herring11_m	GRA	cómo es que se dice ?	adv:int|cómo=how vpres|se-3S&PRES=be rel|que=that pro:refl|se=itself  vpres|deci-3S&PRES=say ?	\N	904219	906791	2572	
289	herring11_m	GRA	&e It's Been a Day ?	n:prop|It~poss|s n:prop|Been det|a n:prop|Day ?	\N	907035	908410	1375	eng
290	herring11_m	GRA	esa eh que canta el quin(teto) [///] el cuarteto ese de hombres .	det:dem|ese=that co|eh rel|que=that vpres|canta-3S&PRES=sing det:art|el=the  det:art|el=the ?|cuarteto det:dem|ese=that prep|de=of n|hombre-PL=man .	\N	910567	914491	3924	
291	herring11_m	CAL	ah sí sí sí .	co|ah co|sí=yes co|sí=yes co|sí=yes .	\N	914474	916552	2078	
292	herring11_m	GRA	cualquiera de esa canción no tenía que ser clásica no [//] nada .	pro:indef|cualquiera=whichever prep|de=of det:dem|ese=that n|canción=song  adv|no=no vpas|tene-13S=have rel|que=that vinf|se=be adj|clásico=classic  vpres|nada-3S&PRES=swim .	\N	916502	920031	3529	
293	herring11_m	CAL	no pero es que [/] es que él +// .	co|no=no conj|pero=but vpres|se-3S&PRES=be vpres|se-3S&PRES=be rel|que=that  pro:per|él=he +// .	\N	920010	921717	1707	
294	herring11_m	CAL	por ejemplo Pavarotti@s:eng&spa se hizo famoso con esa canción pues será porque lo hacía tan bien .	prep|por=for n|ejemplo=example L2|Pavarotti pro:refl|se=itself vpret|hace-3S=do  adj|famoso=famous prep|con=with det:dem|ese=that n|canción=song co|pues=well  vfut|se-3S=be conj|porque=because pro:per:1|lo=him vpas|hace-13S=do adv|tan=such  adv|bien=well .	\N	921808	927393	5585	
295	herring11_m	CAL	y entonces muchas personas están tratando de imitar a Pavarotti@s:eng&spa <a ver si> [/] y a ver si se identifica +// .	adv|ya=already adv|entonces=then det:indef|mucho-PL=many n|persona-PL=person  v:aux|esta&PRES=be vger|trata-PROG=treat prep|de=of vinf|imita=imitate  prep|a=to L2|Pavarotti adv|ya=already prep|a=to vinf|ve=see conj|si=if  pro:refl|se=itself vpres|identifica-3S&PRES=identify +// .	\N	927723	933898	6175	
296	herring11_m	CAL	bueno ahora Pavarotti@s:eng&spa ya murió así que +/ .	co|bueno=good adv|ahora=now L2|Pavarotti adv|ya=already vpret|mori-3S=die  adv|así=thus rel|que=that +/ .	\N	933947	935996	2049	
297	herring11_m	GRA	+< entonces la otra canción que tiene es &e Time@s:eng to@s:eng Say@s:eng Goodbye@s:eng&spa .	adv|entonces=then det:art|el=the det:indef|otro=other n|canción=song  rel|que=that vpres|tene-3S&PRES=have vpres|se-3S&PRES=be L2|Time L2|to  L2|Say L2|Goodbye .	\N	935881	939944	4063	
298	herring11_m	GRA	esa ya tiene su dueño .	det:dem|ese=that adv|ya=already vpres|tene-3S&PRES=have det:pos|su&3S=his  n|dueño=owner .	\N	939987	941740	1753	
299	herring11_m	GRA	él no [/] no puede estar cantando esa tantas veces .	pro:per|él=he adv|no=no vpres|pode-3S&PRES=can vinf|esta=be vger|canta-PROG=sing  det:dem|ese=that det:indef|tanto-PL=so_much n|vez-PL=turn .	\N	941694	944480	2786	
300	herring11_m	CAL	&=laugh sí pero &e bueno ese [/] ese .	co|sí=yes conj|pero=but co|bueno=good det:dem|ese=that .	\N	944547	948350	3803	
301	herring11_m	GRA	+< yo voy a tener que escribirle una notica a Paul@s:eng&spa .	pro:per|yo=I vpres|i-1S&PRES=go prep|a=to vinf|tene=have rel|que=that  vinf|escribi-INF~pro:clit|3S det:art|un=one n|nota=comment prep|a=to L2|Paul  .	\N	946562	949052	2490	
302	herring11_m	GRA	entonces tiene creo que Ave_María@s:eng&spa +/ .	adv|entonces=then vpres|tene-3S&PRES=have vpres|cree-1S&PRES=believe rel|que=that  L2|Ave_María +/ .	\N	949016	951176	2160	
303	herring11_m	CAL	+< eso es tu opinión .	pro:dem|eso=that_one vpres|se-3S&PRES=be det:pos|tu=your n|opinión=opinion  .	\N	949812	951182	1370	
304	herring11_m	GRA	no todo el mundo está diciendo eso que [/] que [/] que no tiene una canción de sí mismo .	adv|no=no det:indef|todo=all det:art|el=the n|mundo=world v:aux|esta-3S&PRES=be  vger|deci-PROG=say pro:dem|eso=that_one rel|que=that adv|no=no vpres|tene-3S&PRES=have  det:art|un=one n|canción=song prep|de=of adv|sí=yes adj|mismo=same .	\N	951153	955706	4553	
305	herring11_m	CAL	una canción que lo identifica a él .	det:art|un=one n|canción=song rel|que=that pro:per:1|lo=him vpres|identifica-3S&PRES=identify  prep|a=to pro:per|él=he .	\N	955687	957748	2061	
306	herring11_m	CAL	sí .	co|sí=yes .	\N	957684	957974	290	
307	herring11_m	GRA	mmhm .	?|mmhm .	\N	957876	958334	458	eng
308	herring11_m	GRA	y va a tener que ir a un dentista también porque tiene esos dientes encaramados uno encima de los otros .	adv|ya=already vpres|i-3S&PRES=go prep|a=to vinf|tene=have rel|que=that  vinf|i=go prep|a=to pro:dem|un=one n|dentista=dentist adv|también=also  conj|porque=because vpres|tene-3S&PRES=have det:dem|ese-PL=that n|diente-PL=tooth  ?|encaramados det:art|un=one adv|encima=on_top prep|de=of det:art|el-PL=the  det:indef|otro-PL=other .	\N	959169	964056	4887	
309	herring11_m	CAL	&=laugh .	\N	\N	964816	966168	1352	
310	herring11_m	GRA	o un .	conj|o=or pro:dem|un=one .	\N	964983	965662	679	
387	herring11_m	GRA	qué hora es en Egipto@s:eng&spa ?	pro:int|qué=what n|hora=hour vpres|se-3S&PRES=be prep|en=in L2|Egipto  ?	\N	1157712	1159123	1411	
388	herring11_m	GRA	que ?	rel|que=that ?	\N	1158641	1159024	383	
311	herring11_m	GRA	tal vez a un cirujano plástico y que le abra más lo labios para que le quepan los dientes .	adj|tal=such n|vez=turn prep|a=to pro:dem|un=one ?|cirujano n|plástico=plastic  adv|ya=already rel|que=that pro:per|le=him vsub|abri-13S&PRES=open adv|más=more  pro:per:1|lo=him n|labio-PL=lip prep|para=for rel|que=that pro:per|le=him  vsub|cabe&PRES=fit det:art|el-PL=the n|diente-PL=tooth .	\N	966422	972628	6206	
312	herring11_m	CAL	+< aja .	?|aja .	\N	970178	970567	389	
313	herring11_m	GRA	ya yo lo estoy arreglando .	adv|ya=already pro:per|yo=I pro:per:1|lo=him v:aux|esta-1S&PRES=be vger|arregla-PROG=order  .	\N	973045	974653	1608	
314	herring11_m	CAL	&=laugh .	\N	\N	974566	976081	1515	
315	herring11_m	CAL	<me da> [//] me [/] me causa risa porque de seguro que muchas otras personas ha podido notar eso .	pro:per|me=me vpres|causa-3S&PRES=cause n|risa=laugh conj|porque=because  prep|de=of adj|seguro=secure rel|que=that det:indef|mucho-PL=many det:indef|otro-PL=other  n|persona-PL=person v:aux|habe-3S&PRES=have vpart|pode=can vinf|nota=note  pro:dem|eso=that_one .	\N	976071	982403	6332	
316	herring11_m	CAL	<si &e> [//] si y <con el dine(ro) > [/] con el dinero que ganan pue +/ .	conj|si=if adv|ya=already prep|con=with det:art|el=the n|dinero=coin rel|que=that  vpres|gana&PRES=win ?|pue +/ .	\N	982763	988092	5329	
317	herring11_m	GRA	+< sí .	co|sí=yes .	\N	983995	984274	279	
318	herring11_m	GRA	y [/] y [/] y [/] <y &po> [/] <y &po> [/] y porque no lo pueden hacer entonces ?	adv|ya=already conj|porque=because adv|no=no pro:per:1|lo=him vpres|pode&PRES=can  vinf|hace=do adv|entonces=then ?	\N	984405	987447	3042	
319	herring11_m	GRA	está bien vestido ahora .	vpres|esta-3S&PRES=be adv|bien=well vpart|vesti=dress adv|ahora=now .	\N	987460	989074	1614	
320	herring11_m	CAL	mmhm mmhm .	?|mmhm ?|mmhm .	\N	988893	990826	1933	eng
321	herring11_m	GRA	+< eso sí .	pro:dem|eso=that_one co|sí=yes .	\N	989057	990270	1213	
322	herring11_m	CAL	sí porque tiene dinero .	co|sí=yes conj|porque=because vpres|tene-3S&PRES=have n|dinero=coin .	\N	990795	992327	1532	
323	herring11_m	GRA	+< y el [/] el pelo está bien cortado .	adv|ya=already det:art|el=the vpres|pela-1S&PRES=peel vpres|esta-3S&PRES=be  adv|bien=well vpart|corta=cut .	\N	991846	994337	2491	
324	herring11_m	GRA	pero hay que cambiar el [/] las canciones .	conj|pero=but vpres|habe-3S&PRES=have rel|que=that vinf|cambia=change  det:art|el-PL=the n|canción-PL=song .	\N	994769	998833	4064	
325	herring11_m	CAL	&=laugh .	\N	\N	999081	1000405	1324	
326	herring11_m	GRA	por [//] porque .	conj|porque=because .	\N	999423	1000491	1068	
327	herring11_m	CAL	ya lo [/] ya lo +/ .	adv|ya=already adv|ya=already pro:per:1|lo=him +/ .	\N	1002180	1003457	1277	
328	herring11_m	GRA	+< yo [/] yo [/] yo le voy a mandar una lista de los que yo quiero .	pro:per|yo=I pro:per|le=him vpres|i-1S&PRES=go prep|a=to vinf|manda=order  det:art|un=one adj|listo=ready prep|de=of det:art|el-PL=the rel|que=that  pro:per|yo=I vpres|quere-1S&PRES=want .	\N	1002544	1005708	3164	
329	herring11_m	GRA	<él &tie> [///] deber tener una [/] una cosa en el +// .	n|deber=debt vinf|tene=have det:art|un=one vsub|cose-13S&PRES=sew prep|en=in  det:art|el=the +// .	\N	1006705	1010432	3727	
330	herring11_m	GRA	cómo es que se llama ?	adv:int|cómo=how vpres|se-3S&PRES=be rel|que=that pro:refl|se=itself  vpres|llama-3S&PRES=call ?	\N	1010414	1011918	1504	
331	herring11_m	GRA	en el internet uno puede &e mandarle mensajes .	prep|en=in det:art|el=the n|internet=internet det:art|un=one vpres|pode-3S&PRES=can  vinf|manda-INF~pro:clit|3S n|mensaje-PL=message .	\N	1012028	1016382	4354	
332	herring11_m	CAL	+< ajá una [/] una +. . .	co|ajá det:art|un=one +. . .	\N	1014076	1015185	1109	
333	herring11_m	CAL	sí una [/] una [/] una cómo se llama eso ?	adv|sí=yes det:art|un=one adv:int|cómo=how pro:refl|se=itself vpres|llama-3S&PRES=call  pro:dem|eso=that_one ?	\N	1017199	1020548	3349	
334	herring11_m	CAL	una +. . .	det:art|un=one +. . .	\N	1020391	1020925	534	
335	herring11_m	GRA	eh &ba [/] blog@s:eng ?	co|eh L2|blog ?	\N	1021390	1023375	1985	
336	herring11_m	CAL	sí &e no un blog@s:eng bueno blog@s:eng es <cuando ellos escriben> [//] para que ellos escriben .	co|sí=yes adv|no=no pro:dem|un=one L2|blog co|bueno=good L2|blog vpres|se-3S&PRES=be  prep|para=for rel|que=that pro:per|ello-PL=he vpres|escribi&PRES=write  .	\N	1024787	1030313	5526	
337	herring11_m	CAL	el blog@s:eng es para ellos escribir &e cosas en términos más &e &e .	det:art|el=the L2|blog vpres|se-3S&PRES=be prep|para=for pro:per|ello-PL=he  vinf|escribi=write vsub|cose&PRES=sew prep|en=in n|término-PL=in terms  of adv|más=more .	\N	1031195	1037598	6403	
338	herring11_m	GRA	+< por eso .	prep|por=for pro:dem|eso=that_one .	\N	0	0	0	
339	herring11_m	CAL	es decir de cualquier cosas que quieran escribir .	vpres|se-3S&PRES=be vinf|deci=say prep|de=of pro:indef|cualquier=whichever  vsub|cose&PRES=sew prep|que=than vimp|quere=want vinf|escribi=write .	\N	1037645	1040611	2966	
340	herring11_m	CAL	pero ellos tienen que tener un lugar donde ellos reciben mensajes críticas .	conj|pero=but pro:per|ello-PL=he vpres|tene&PRES=have rel|que=that vinf|tene=have  pro:dem|un=one n|lugar=place rel|donde=where pro:per|ello-PL=he vpres|recibi&PRES=receive  n|mensaje-PL=message ?|críticas .	\N	1041939	1047261	5322	
341	herring11_m	GRA	sí ahí uno puede escribirlas ahí .	co|sí=yes adv|ahí=there num|uno=one vpres|pode-3S&PRES=can vinf|escribi-INF~pro:clit|OBJ&FEM&PL  adv|ahí=there .	\N	1048002	1050133	2131	
342	herring11_m	CAL	pero eso sería un blog@s:eng tuyo hacia ellos .	conj|pero=but pro:dem|eso=that_one vcond|se-13S&COND=be pro:dem|un=one  L2|blog pro:pos|tuyo=your prep|hacia=towards pro:per|ello-PL=he .	\N	1051009	1054324	3315	
343	herring11_m	GRA	sí pero <ellos lo leen> [/] ellos lo leen ahí de todas maneras .	co|sí=yes conj|pero=but pro:per|ello-PL=he pro:per:1|lo=him vpres|lee&PRES=read  adv|ahí=there prep|de=of det:indef|todo-PL=all n|manera-PL=manner .	\N	1054469	1057987	3518	
344	herring11_m	GRA	ellos leen lo que él escribe .	pro:per|ello-PL=he vpres|lee&PRES=read pro:per:1|lo=him rel|que=that pro:per|él=he  vpres|escribi-3S&PRES=write .	\N	1057062	1058943	1881	
345	herring11_m	GRA	y lo que la gente corresponde .	conj|y=and pro:per:1|lo=him prep|que=than det:art|el=the n|gente=folk  vpres|corresponde-3S&PRES=correspond .	\N	1058939	1060732	1793	
346	herring11_m	CAL	lo &a lo que la gente le contesta ?	pro:per:1|lo=him pro:per:1|lo=him prep|que=than det:art|el=the n|gente=folk  pro:per|le=him vpres|contesta-3S&PRES=answer ?	\N	1060604	1062897	2293	
347	herring11_m	CAL	bueno sí .	co|bueno=good co|sí=yes .	\N	1062694	1063373	679	
348	herring11_m	CAL	yo no sé mucho de eso .	pro:per|yo=I adv|no=no vpres|sabe-1S&PRES=know adv|mucho=much prep|de=of  pro:dem|eso=that_one .	\N	1063246	1064761	1515	
349	herring11_m	GRA	así que yo [/] yo le voy a decir .	adv|así=thus rel|que=that pro:per|yo=I pro:per|le=him vpres|i-1S&PRES=go  prep|a=to vinf|deci=say .	\N	1064778	1066653	1875	
350	herring11_m	GRA	tiene que arreglarse lo dientes .	vpres|tene-3S&PRES=have rel|que=that vinf|arregla-INF~pro:clit|3S&REFL  pro:per:1|lo=him n|diente-PL=tooth .	\N	1066736	1068519	1783	
351	herring11_m	CAL	&=laugh .	\N	\N	1068431	1069668	1237	
352	herring11_m	GRA	tiene que echarse un poquito de sol .	vpres|tene-3S&PRES=have rel|que=that vinf|echa-INF~pro:clit|3S&REFL pro:dem|un=one  pro:indef|poquito=little prep|de=of adv|solo=just .	\N	1069583	1071563	1980	
353	herring11_m	CAL	bueno .	co|bueno=good .	\N	1073289	1074537	1248	
354	herring11_m	GRA	+< y (.) tiene que encontrar esa canción que solamente sea para él .	adv|ya=already vpres|tene-3S&PRES=have rel|que=that vinf|encontra=find  det:dem|ese=that n|canción=song rel|que=that adv|solamente=only vsub|se-13S&PRES=be  prep|para=for pro:per|él=he .	\N	1073470	1078991	5521	
355	herring11_m	GRA	y yo creo que esa (.) &e .	adv|ya=already pro:per|yo=I vpres|cree-1S&PRES=believe rel|que=that det:dem|ese=that  .	\N	1079061	1081958	2897	
356	herring11_m	CAL	+< tú tienes manera de hacerlo ?	pro:per|tú=you vpres|tene&PRES=have n|manera=manner prep|de=of vinf|hace-INF~pro:clit|OBJ&MASC  ?	\N	1081935	1083642	1707	
357	herring11_m	CAL	&e &e entonces &bue &a .	adv|entonces=then .	\N	1084477	1085528	1051	
358	herring11_m	GRA	+< sí yo xxx creo que lo &e &em +// .	co|sí=yes pro:per|yo=I unk|xxx vpres|cree-1S&PRES=believe rel|que=that  pro:per:1|lo=him +// .	\N	1085079	1087331	2252	
359	herring11_m	GRA	mientras no se haga sucio no &e [/] no tengo restrinciones .	adv|mientras=while adv|no=no pro:refl|se=itself vsub|hace-13S&PRES=do  adj|sucio=dirty adv|no=no adv|no=no vpres|tene-1S&PRES=have ?|restrinciones  .	\N	1087325	1091365	4040	
360	herring11_m	CAL	sí .	co|sí=yes .	\N	1091536	1092221	685	
361	herring11_m	GRA	ah@s:eng&spa (.) esa canción que [/] que cantan (.) It's@s:eng Been@s:eng a@s:eng &e It's@s:eng Been@s:eng a@s:eng Day@s:eng &e It's@s:eng the@s:eng end@s:eng of@s:eng the@s:eng &u the@s:eng&spa .	L2|ah det:dem|ese=that n|canción=song rel|que=that vpres|canta&PRES=sing  L2|It's L2|Been L2|a L2|It's L2|Been L2|a L2|Day L2|It's L2|the L2|end  L2|of L2|the L2|the .	\N	1092937	1104061	11124	
362	herring11_m	CAL	sí .	co|sí=yes .	\N	1103966	1104964	998	
363	herring11_m	GRA	esa es la que yo creo que él debería cantar .	det:dem|ese=that vpres|se-3S&PRES=be det:art|el=the rel|que=that pro:per|yo=I  vpres|cree-1S&PRES=believe rel|que=that pro:per|él=he vcond|debe-13S&COND=must  vinf|canta=sing .	\N	1105921	1108109	2188	
364	herring11_m	CAL	bueno recomiéndalo .	co|bueno=good ?|recomiéndalo .	\N	1109409	1111029	1620	
365	herring11_m	GRA	+< hay [/] hay una [/] una que dice (.) it's@s:eng five@s:eng o'clock@s:eng somewhere@s:eng .	vpres|habe-3S&PRES=have det:art|un=one rel|que=that vpres|deci-3S&PRES=say  L2|it's L2|five L2|o'clock L2|somewhere .	\N	1110435	1114741	4306	
366	herring11_m	CAL	+< &a quizás te &escri [/] quizás te [/] te +// .	adv|quizás=perhaps pro:per|te=you adv|quizás=perhaps pro:per|te=you  +// .	\N	1111539	1114244	2705	
367	herring11_m	CAL	son las cinco de la tarde en [/] en algún eh .	vpres|se&PRES=be det:art|el-PL=the num|cinco=five prep|de=of det:art|el=the  adv|tarde=late prep|en=in det:indef|alguno=some co|eh .	\N	1115533	1117727	2194	
368	herring11_m	GRA	en alguna parte tiene que ser las cinco de la tarde .	prep|en=in det:indef|alguno=some vpres|parti-3S&PRES=divide vpres|tene-3S&PRES=have  rel|que=that vinf|se=be det:art|el-PL=the num|cinco=five prep|de=of det:art|el=the  adv|tarde=late .	\N	1117720	1119873	2153	
369	herring11_m	GRA	<yo no> [/] <yo no> [/] yo no creo eso porque .	pro:per|yo=I adv|no=no vpres|cree-1S&PRES=believe pro:dem|eso=that_one  conj|porque=because .	\N	1120518	1122230	1712	
370	herring11_m	CAL	sí sí puede sí .	co|sí=yes co|sí=yes vpres|pode-3S&PRES=can co|sí=yes .	\N	1122735	1124244	1509	
371	herring11_m	GRA	a [/] a [/] a toda hora no puede haber un lugar donde es las cinco de la tarde .	prep|a=to det:indef|todo=all n|hora=hour adv|no=no vpres|pode-3S&PRES=can  vinf|habe=have pro:dem|un=one n|lugar=place rel|donde=where vpres|se-3S&PRES=be  det:art|el-PL=the num|cinco=five prep|de=of det:art|el=the adv|tarde=late  .	\N	1124213	1127858	3645	
372	herring11_m	CAL	sí .	co|sí=yes .	\N	1127818	1128334	516	
373	herring11_m	CAL	mira el [/] el [/] el [/] el [/] el imperio inglés se vanagloriaba de que el sol <no se ponía> [/] no se ponía en [/] en [/] en [/] en todo su imperio .	co|mira=look det:art|el=the n|imperio=empire adj|inglés=English pro:refl|se=itself  ?|vanagloriaba prep|de=of rel|que=that det:art|el=the adv|solo=just adv|no=no  pro:refl|se=itself vpas|pone-13S=put prep|en=in det:indef|todo=all det:pos|su&3S=his  n|imperio=empire .	\N	1129314	1143077	13763	
374	herring11_m	GRA	+< sí eso sí es cierto .	co|sí=yes pro:dem|eso=that_one co|sí=yes vpres|se-3S&PRES=be adj|cierto=certain  .	\N	1140371	1142304	1933	
375	herring11_m	GRA	ajá .	co|ajá .	\N	1143035	1143447	412	
376	herring11_m	GRA	el [/] el [//] el sol nunca estaba puesto en todo su imperio .	det:art|el=the adv|solo=just adv|nunca=never vpas|esta-13S=be vpart|pone=put  prep|en=in det:indef|todo=all det:pos|su&3S=his n|imperio=empire .	\N	1143399	1147231	3832	
377	herring11_m	CAL	+< porque ellos tenían .	conj|porque=because pro:per|ello-PL=he vpas|tene=have .	\N	1143399	1147231	3832	
378	herring11_m	CAL	exacto .	co|exacto=exactly .	\N	1146598	1147190	592	
379	herring11_m	CAL	porque ellos tenían .	conj|porque=because pro:per|ello-PL=he vpas|tene=have .	\N	1143375	1145477	2102	
380	herring11_m	GRA	+< sí .	co|sí=yes .	\N	1147250	1150924	3674	
381	herring11_m	GRA	el [/] el [/] el sol estaba puesto en todo su imperio .	det:art|el=the adv|solo=just vpas|esta-13S=be vpart|pone=put prep|en=in  det:indef|todo=all det:pos|su&3S=his n|imperio=empire .	\N	1143410	1146614	3204	
382	herring11_m	CAL	exacto .	co|exacto=exactly .	\N	1146607	1147229	622	
383	herring11_m	CAL	porque <ellos tenían> [/] ellos tenían eh dominios en tantos lugares a través de todo el [/] el hemisferio .	conj|porque=because pro:per|ello-PL=he vpas|tene=have co|eh n|dominio-PL=domain  prep|en=in det:indef|tanto-PL=so_much n|lugar-PL=place n:let|a n|través=angle  prep|de=of det:indef|todo=all det:art|el=the ?|hemisferio .	\N	1147240	1154796	7556	
384	herring11_m	GRA	sí .	co|sí=yes .	\N	1147504	1147968	464	
385	herring11_m	GRA	tú sabes esos relojes relajo que tienen la hora .	pro:per|tú=you vpres|sabe&PRES=know det:dem|ese-PL=that n|reloj-PL=clock  vpres|relaja-1S&PRES=relax rel|que=that vpres|tene&PRES=have det:art|el=the  n|hora=hour .	\N	1154845	1156621	1776	
389	herring11_m	CAL	sí .	co|sí=yes .	\N	1159071	1159431	360	
391	herring11_m	CAL	hay +// .	vpres|habe-3S&PRES=have +// .	\N	1160968	1161490	522	
392	herring11_m	GRA	+< tú pones cada uno en &cin &e las cinco la hora no son muchos los lugares .	pro:per|tú=you vpres|pone&PRES=put det:indef|cada=each vpres|uni-1S&PRES=unite  prep|en=in det:art|el-PL=the num|cinco=five det:art|el=the n|hora=hour  adv|no=no vpres|se&PRES=be det:indef|mucho-PL=many det:art|el-PL=the n|lugar-PL=place  .	\N	1161471	1165587	4116	
393	herring11_m	GRA	eh@s:eng&spa tú tendrás unos para Israel tiene unas horas distintas creo .	L2|eh pro:per|tú=you vfut|tene=have pro:dem|un-PL=one prep|para=for n:prop|Israel  vpres|tene-3S&PRES=have vsub|uni&PRES=unite n|hora-PL=hour adj|distinto-PL=distinct  vpres|cree-1S&PRES=believe .	\N	1166546	1171462	4916	
394	herring11_m	GRA	ah@s:eng&spa Londres tiene una hora distinta .	L2|ah n:prop|Londres vpres|tene-3S&PRES=have det:art|un=one n|hora=hour  adj|distinto=distinct .	\N	1171907	1174844	2937	
395	herring11_m	CAL	+< sí hay &zon [/] hay &zon .	adv|sí=yes vpres|habe-3S&PRES=have vpres|habe-3S&PRES=have .	\N	1172110	1173747	1637	
396	herring11_m	GRA	París@s:eng&spa tiene otra hora .	L2|París vpres|tene-3S&PRES=have det:indef|otro=other n|hora=hour .	\N	1174790	1176595	1805	
397	herring11_m	GRA	Inglaterra@s:eng&spa tiene otra hora .	L2|Inglaterra vpres|tene-3S&PRES=have det:indef|otro=other n|hora=hour  .	\N	1176559	1178672	2113	
398	herring11_m	GRA	Japón@s:eng&spa tiene otra hora .	L2|Japón vpres|tene-3S&PRES=have det:indef|otro=other n|hora=hour .	\N	1178738	1180984	2246	
399	herring11_m	GRA	Alaska@s:eng&spa tiene otra hora .	L2|Alaska vpres|tene-3S&PRES=have det:indef|otro=other n|hora=hour .	\N	1182012	1183962	1950	
400	herring11_m	GRA	pero no creo que hay veinticuatro lugares que tenga .	conj|pero=but adv|no=no vpres|cree-1S&PRES=believe rel|que=that vpres|habe-3S&PRES=have  num|veinticuatro=twenty_four n|lugar-PL=place rel|que=that vsub|tene-13S&PRES=have  .	\N	1184385	1189441	5056	
401	herring11_m	CAL	sí bueno sí porque [/] porque [/] <porque hay> [/] <porque hay> [/] hay espacio &e digamos <el &o> [/] el océano .	co|sí=yes co|bueno=good adv|sí=yes vpres|habe-3S&PRES=have n|espacio=space  vsub|deci&PRES=say det:art|el=the n|océano=ocean .	\N	1189329	1194641	5312	
402	herring11_m	GRA	+< es que es una canción .	vpres|se-3S&PRES=be rel|que=that vpres|se-3S&PRES=be det:art|un=one n|canción=song  .	\N	1191446	1193286	1840	
403	herring11_m	CAL	ahí donde hay lugares donde no [/] no [/] no va a haber &e digamos zona .	adv|ahí=there rel|donde=where vpres|habe-3S&PRES=have n|lugar-PL=place  rel|donde=where adv|no=no vpres|i-3S&PRES=go prep|a=to vinf|habe=have vsub|deci&PRES=say  n|zona=zone .	\N	1197199	1203985	6786	
404	herring11_m	CAL	es decir no hay un [/] un lugar específico con una zona de [/] de .	vpres|se-3S&PRES=be vinf|deci=say adv|no=no vpres|habe-3S&PRES=have pro:dem|un=one  n|lugar=place adj|específico=specific prep|con=with det:art|un=one n|zona=zone  prep|de=of .	\N	1204234	1209726	5492	
405	herring11_m	CAL	es decir un [/] un lugar <que esté> [/] que esté en una zona de [/] (.) de [/] de [/] de hora de .	vpres|se-3S&PRES=be vinf|deci=say pro:dem|un=one n|lugar=place rel|que=that  vsub|esta-13S&PRES=be prep|en=in det:art|un=one n|zona=zone prep|de=of  n|hora=hour prep|de=of .	\N	1211905	1219450	7545	
406	herring11_m	CAL	es decir opuesta a Greenwich@s:eng&spa .	vpres|se-3S&PRES=be vinf|deci=say adj|opuesto=opposite n:let|a L2|Greenwich  .	\N	1219814	1223007	3193	
407	herring11_m	GRA	así que (.) yo no creo que es .	adv|así=thus rel|que=that pro:per|yo=I adv|no=no vpres|cree-1S&PRES=believe  rel|que=that vpres|se-3S&PRES=be .	\N	1224162	1226693	2531	
408	herring11_m	GRA	es una canción de [/] de este (.) señor que anda cantando música (.) regular .	vpres|se-3S&PRES=be det:art|un=one n|canción=song prep|de=of det:dem|este=this  co:voc|señor=sir rel|que=that vpres|anda-3S&PRES=walk vger|canta-PROG=sing  n|música=music adj|regular=regular .	\N	1226676	1233352	6676	
409	herring11_m	GRA	y dice que en alguna parte tiene que ser las cinco de la tarde .	adv|ya=already vpres|deci-3S&PRES=say rel|que=that prep|en=in det:indef|alguno=some  vpres|parti-3S&PRES=divide vpres|tene-3S&PRES=have rel|que=that vinf|se=be  det:art|el-PL=the num|cinco=five prep|de=of det:art|el=the adv|tarde=late  .	\N	1233883	1237459	3576	
410	herring11_m	GRA	pero es lo que quiere decir .	conj|pero=but vpres|se-3S&PRES=be pro:per:1|lo=him rel|que=that vpres|quere-3S&PRES=want  vinf|deci=say .	\N	1237442	1239805	2363	
411	herring11_m	GRA	que <en alguna parte> [//] en cualquiera parte tiene que ser hora (.) de [/] de tomar .	rel|que=that prep|en=in pro:indef|cualquiera=whichever vpres|parti-3S&PRES=divide  vpres|tene-3S&PRES=have rel|que=that vinf|se=be n|hora=hour prep|de=of  vinf|toma=take .	\N	1239302	1244515	5213	
412	herring11_m	CAL	+< <de &te> [/] de tomar .	prep|de=of vinf|toma=take .	\N	1243023	1244381	1358	
413	herring11_m	GRA	eso es lo que quiere decir .	pro:dem|eso=that_one vpres|se-3S&PRES=be pro:per:1|lo=him rel|que=that  vpres|quere-3S&PRES=want vinf|deci=say .	\N	1244416	1245624	1208	
414	herring11_m	CAL	sí &e sí .	co|sí=yes co|sí=yes .	\N	1245543	1246339	796	
415	herring11_m	GRA	no es el reloj que [/] que dice que es las cinco de la tarde .	adv|no=no vpres|se-3S&PRES=be det:art|el=the n|reloj=clock rel|que=that  vpres|deci-3S&PRES=say rel|que=that vpres|se-3S&PRES=be det:art|el-PL=the  num|cinco=five prep|de=of det:art|el=the adv|tarde=late .	\N	1246297	1249048	2751	
416	herring11_m	CAL	sí &e [/] sí &e tiene otro significado completamen(te) .	co|sí=yes co|sí=yes vpres|tene-3S&PRES=have det:indef|otro=other vpart|significa=mean  adv:adj|completo=complete .	\N	1248577	1251479	2902	
417	herring11_m	GRA	+< este es lo [/] lo que quiero que el sello tenga .	det:dem|este=this vpres|se-3S&PRES=be pro:per:1|lo=him rel|que=that vpres|quere-1S&PRES=want  rel|que=that det:art|el=the ?|sello vsub|tene-13S&PRES=have .	\N	1250428	1252965	2537	
418	herring11_m	GRA	ustedes lo pueden hacer en una &mara [//] manera bonita o .	pro:per:1|usted-PL=you pro:per:1|lo=him vpres|pode&PRES=can vinf|hace=do  prep|en=in det:art|un=one n|manera=manner adj|bonito=pretty conj|o=or .	\N	1254107	1257207	3100	
419	herring11_m	CAL	no .	adv|no=no .	\N	1259439	1259846	407	
420	herring11_m	CAL	tú tienes que buscarte un artista que te haga eso .	pro:per|tú=you vpres|tene&PRES=have rel|que=that vinf|busca-INF~pro:clit|2S  pro:dem|un=one adj|artista=artist rel|que=that pro:per|te=you vsub|hace-13S&PRES=do  pro:dem|eso=that_one .	\N	1259875	1262133	2258	
421	herring11_m	GRA	ay yo no puedo encontrar un artista así no más .	co|ay=ay pro:per|yo=I adv|no=no vpres|pode-1S&PRES=can vinf|encontra=find  pro:dem|un=one adj|artista=artist adv|así=thus adv|no=no adv|más=more  .	\N	1261962	1265143	3181	
500	herring11_m	CAL	bueno en en aquel entender era harpsichord@s:eng .	co|bueno=good prep|en=in prep|en=in det:dem|aquel=that vinf|entende=understand  vpas|se-13S=be L2|harpsichord .	\N	1452047	1455268	3221	
422	herring11_m	GRA	entonces cada uno y entonces para sellar &po ponerle el sello a cosas distintas .	adv|entonces=then det:indef|cada=each vpres|uni-1S&PRES=unite adv|ya=already  adv|entonces=then prep|para=for ?|sellar vinf|pone-INF~pro:clit|3S det:art|el=the  ?|sello n:let|a vsub|cose&PRES=sew adj|distinto-PL=distinct .	\N	1265069	1270937	5868	
423	herring11_m	CAL	sí &e &e bueno pero también hay letras que ya están hechas más o menos en esta forma .	co|sí=yes co|bueno=good conj|pero=but adv|también=also vpres|habe-3S&PRES=have  n|letra-PL=letter rel|que=that adv|ya=already vpres|esta&PRES=be vpres|hecha&PRES=give  adv|más=more conj|o=or adv|menos=less prep|en=in det:dem|este=this vpres|forma-3S&PRES=form  .	\N	1270958	1276571	5613	
424	herring11_m	CAL	hay &e [/] hay catálogos [/] .	vpres|habe-3S&PRES=have vpres|habe-3S&PRES=have .	\N	1276655	1278606	1951	
425	herring11_m	GRA	+< y usted las tienen ?	adv|ya=already pro:per:1|usted=you det:art|el-PL=the vpres|tene&PRES=have  ?	\N	1277114	1278321	1207	
426	herring11_m	CAL	sí .	co|sí=yes .	\N	1278571	1278809	238	
427	herring11_m	CAL	hay catálogos que +// .	vpres|habe-3S&PRES=have ?|catálogos rel|que=that +// .	\N	1278786	1280005	1219	
428	herring11_m	CAL	hay ir a buscar sí <yo te> [/] yo te traigo un &catá +/ .	vpres|habe-3S&PRES=have vinf|i=go prep|a=to vinf|busca=search co|sí=yes  pro:per|yo=I pro:per|te=you vpres|trae-1S&PRES=carry pro:dem|un=one +/  .	\N	1279981	1283250	3269	
429	herring11_m	GRA	+< pero la tinta entonces de qué color se +// .	conj|pero=but det:art|el=the adj|tinto=red adv|entonces=then prep|de=of  pro:int|qué=what n|color=hue pro:refl|se=itself +// .	\N	1283127	1287475	4348	
430	herring11_m	CAL	uno +// .	det:art|un=one +// .	\N	1285085	1285503	418	
431	herring11_m	CAL	sí no una cualquiera tinta ?	co|sí=yes adv|no=no pro:dem|un=one pro:indef|cualquiera=whichever adj|tinto=red  ?	\N	1285480	1288289	2809	
432	herring11_m	CAL	por qué ?	prep|por=for pro:int|qué=what ?	\N	1288376	1289456	1080	
433	herring11_m	GRA	porque tal vez un día lo quiero brillante y otro día lo quiero rosado .	conj|porque=because adj|tal=such n|vez=turn pro:dem|un=one n|día=day  pro:per:1|lo=him vpres|quere-1S&PRES=want n|brillante=diamond adv|ya=already  det:indef|otro=other n|día=day pro:per:1|lo=him vpres|quere-1S&PRES=want  adj|rosado=rosy .	\N	1289650	1293446	3796	
434	herring11_m	CAL	&=laugh .	\N	\N	1293429	1294502	1073	
435	herring11_m	CAL	bueno &e la forma de hacer eso es hacerlo de [/] de caucho .	co|bueno=good det:art|el=the vpres|forma-3S&PRES=form prep|de=of vinf|hace=do  pro:dem|eso=that_one vpres|se-3S&PRES=be vinf|hace-INF~pro:clit|OBJ&MASC  prep|de=of n|caucho=rubber .	\N	1294807	1300175	5368	
436	herring11_m	CAL	y tener almohadillas de diferentes colores .	conj|y=and vinf|tene=have n|almohada-PL=pillow vsub|da-13S&PRES=give adj|diferente-PL=different  vsub|colora&PRES=color .	\N	1300068	1303186	3118	
437	herring11_m	GRA	+< será que en esto sí puede decir que tengo ganas de ir pa(ra) el baño ?	vfut|se-3S=be rel|que=that prep|en=in pro:dem|esto=this_one co|sí=yes  vpres|pode-3S&PRES=can vinf|deci=say rel|que=that vpres|tene-1S&PRES=have  vpres|gana&PRES=win prep|de=of vinf|i=go prep|para=for det:art|el=the vpres|baña-1S&PRES=bathe  ?	\N	1302395	1305530	3135	
438	herring11_m	CAL	no no .	adv|no=no adv|no=no .	\N	1305473	1306913	1440	
439	herring11_m	GRA	por qué no ?	prep|por=for pro:int|qué=what adv|no=no ?	\N	1306832	1307987	1155	
440	herring11_m	CAL	porque +/ .	conj|porque=because +/ .	\N	1308394	1309074	680	
441	herring11_m	GRA	es una cosa natural .	vpres|se-3S&PRES=be det:art|un=one n|cosa=thing adj|natural=natural .	\N	1308557	1309799	1242	
442	herring11_m	GRA	no &=laugh .	adv|no=no .	\N	1309950	1311181	1231	
443	herring11_m	GRA	me vas a decir que [/] que [/] que [/] que .	pro:per|me=me vpres|i&PRES=go prep|a=to vinf|deci=say rel|que=that .	\N	1311412	1313397	1985	
444	herring11_m	CAL	<tú &pue> [/] tú puedes aguantar hasta que ya no falta si no como unos diez minutos .	pro:per|tú=you vpres|pode&PRES=can vinf|aguanta=endure prep|hasta=until  rel|que=that adv|ya=already adv|no=no vpres|falta-3S&PRES=be_lacking conj|si=if  adv|no=no adv|como=like pro:dem|un-PL=one num|diez=ten n|minuto-PL=minute  .	\N	1313276	1318024	4748	
445	herring11_m	GRA	oh@s:eng&spa .	L2|oh .	\N	1317543	1318019	476	
446	herring11_m	GRA	entonces van a tener (.) que esperarse de que yo pueda hacer eso .	adv|entonces=then vpres|i&PRES=go prep|a=to vinf|tene=have rel|que=that  vinf|espera-INF~pro:clit|3S&REFL prep|de=of rel|que=that pro:per|yo=I vsub|pode-13S&PRES=can  vinf|hace=do pro:dem|eso=that_one .	\N	1318898	1324686	5788	
447	herring11_m	CAL	mmhm .	?|mmhm .	\N	1325221	1326266	1045	eng
448	herring11_m	GRA	eh el Sam@s:eng&spa trató de conseguir al señor que le arreglara la computadora porque él dice que está muy [/] muy lenta .	co|eh det:art|el=the L2|Sam vpret|trata-3S=treat prep|de=of vinf|consegui  prep|a~det|el&MASC co:voc|señor=sir rel|que=that pro:per|le=him vpsub|arregla-13S=order  det:art|el=the n|computador=computer conj|porque=because pro:per|él=he  vpres|deci-3S&PRES=say rel|que=that vpres|esta-3S&PRES=be adv|muy=very  adj|lento=slow .	\N	1326310	1332998	6688	
449	herring11_m	GRA	el bendito hombre le dijo +// .	det:art|el=the ?|bendito co:voc|hombre=man pro:per|le=him vpret|deci-3S=say  +// .	\N	1333979	1335581	1602	
450	herring11_m	GRA	y temí que [/] que iba a hacer eso .	adv|ya=already vpret|teme-1S=dread rel|que=that vpas|i-13S=go prep|a=to  vinf|hace=do pro:dem|eso=that_one .	\N	1335529	1337723	2194	
451	herring11_m	GRA	y no creo que es por la distancia .	adv|ya=already adv|no=no vpres|cree-1S&PRES=believe rel|que=that vpres|se-3S&PRES=be  prep|por=for det:art|el=the n|distancia=distance .	\N	1338123	1339830	1707	
452	herring11_m	CAL	+< que qué ?	rel|que=that pro:int|qué=what ?	\N	1338385	1339238	853	
453	herring11_m	GRA	le dijo que era muy lejos .	pro:per|le=him vpret|deci-3S=say rel|que=that vpas|se-13S=be adv|muy=very  adv|lejos=far .	\N	1339746	1341441	1695	
454	herring11_m	GRA	que no valía la pena .	rel|que=that adv|no=no vpas|vale-13S=cost det:art|el=the n|pena=pain .	\N	1341435	1343252	1817	
455	herring11_m	GRA	lo que yo creo (.) es que tal vez no quería +. . .	pro:per:1|lo=him rel|que=that pro:per|yo=I vpres|cree-1S&PRES=believe  vpres|se-3S&PRES=be rel|que=that adj|tal=such n|vez=turn adv|no=no vpas|quere-13S=want  +. . .	\N	1343190	1351028	7838	
456	herring11_m	GRA	Sam@s:eng&spa no le gusta la gente de Iran@s:eng&spa .	L2|Sam adv|no=no pro:per|le=him vpres|gusta-3S&PRES=like det:art|el=the  n|gente=folk prep|de=of L2|Iran .	\N	1351657	1354111	2454	
457	herring11_m	CAL	de [/] de Iran@s:eng&spa ?	prep|de=of L2|Iran ?	\N	1354457	1356065	1608	
458	herring11_m	GRA	yeah .	co|yeah .	\N	1356126	1356636	510	eng
459	herring11_m	GRA	<ninguno de esos> [/] ninguno <de esos> [/] de esos países +/ .	det:indef|ninguno=none prep|de=of det:dem|ese-PL=that n|países=nations  +/ .	\N	1356623	1360168	3545	
460	herring11_m	CAL	+< mira a Sam@s:eng&spa [/] a Sam@s:eng&spa [/] a Sam@s:eng&spa no le gusta la gente latina tampoco .	co|mira=look prep|a=to n:let|a n:let|a L2|Sam adv|no=no pro:per|le=him  vpres|gusta-3S&PRES=like det:art|el=the n|gente=folk adj|latino=latin adv|tampoco=neither  .	\N	1358682	1362775	4093	
461	herring11_m	GRA	no no dice eso a la gente la(tina) +/ .	adv|no=no adv|no=no vpres|deci-3S&PRES=say pro:dem|eso=that_one prep|a=to  det:art|el=the n|gente=folk adj|latino=latin +/ .	\N	1362801	1364502	1701	
462	herring11_m	CAL	+< sí cuando [/] cuando él fue +/ .	co|sí=yes conj|cuando=when pro:per|él=he vpret|i-3S=go +/ .	\N	1363846	1365715	1869	
463	herring11_m	GRA	mentira no no no no no no no .	n|mentira=lie adv|no=no adv|no=no adv|no=no adv|no=no adv|no=no adv|no=no  adv|no=no .	\N	1364046	1365683	1637	
464	herring11_m	CAL	sí sí .	co|sí=yes co|sí=yes .	\N	1365727	1366505	778	
465	herring11_m	CAL	<cuando él fue conmi(go)> [/] cuando yo fui <con &e> [/] con él a recoger los muebles esos .	conj|cuando=when pro:per|yo=I vpret|se-1S=be prep|con=with pro:per|él=he  prep|a=to vinf|recoge=seclude det:art|el-PL=the n|mueble-PL=furniture det:dem|ese-PL=that  .	\N	1367185	1371891	4706	
466	herring11_m	CAL	él me habló dice +" .	pro:per|él=he pro:per|me=me vpret|habla-3S=speak vpres|deci-3S&PRES=say  .	\N	1372422	1374303	1881	
467	herring11_m	CAL	+" esta gente latina este esto .	det:dem|este=this n|gente=folk adj|latino=latin vsub|esta-13S&PRES=be  pro:dem|esto=this_one .	\N	1374221	1377153	2932	
468	herring11_m	GRA	+< no y &cua y [/] y [/] y [/] y [/] y [/] y [/] y Charlie@s:eng&spa .	adv|no=no adv|ya=already adv|ya=already L2|Charlie .	\N	1374230	1377818	3588	
469	herring11_m	CAL	yo quisiera que se los llevaron a todos .	pro:per|yo=I vpsub|quere-13S=want rel|que=that pro:refl|se=itself det:art|el-PL=the  vpret|lleva=carry n:let|a det:indef|todo-PL=all .	\N	1377661	1380268	2607	
470	herring11_m	GRA	+< no [/] no [/] no [/] no [/] no Charlie@s:eng&spa &a Freddy@s:eng&spa .	adv|no=no L2|Charlie L2|Freddy .	\N	1379397	1381655	2258	
471	herring11_m	GRA	y él ama a Freddy@s:eng&spa como el alma de [/] de como su propia madre .	adv|ya=already pro:per|él=he vpres|ama-3S&PRES=love prep|a=to L2|Freddy  adv|como=like det:art|el=the n|alma=soul prep|de=of adv|como=like det:pos|su&3S=his  adj|propio=own n|madre=mother .	\N	1381528	1385440	3912	
472	herring11_m	CAL	mmhm .	?|mmhm .	\N	1384452	1385015	563	eng
473	herring11_m	GRA	no es cierto que no los quiere .	adv|no=no vpres|se-3S&PRES=be adj|cierto=certain rel|que=that adv|no=no  det:art|el-PL=the vpres|quere-3S&PRES=want .	\N	1385540	1387102	1562	
474	herring11_m	CAL	+< pero .	conj|pero=but .	\N	1385568	1386178	610	
475	herring11_m	CAL	pero él dice que [/] que [/] que son irresponsables que son mentirosos que son esto lo de más .	conj|pero=but pro:per|él=he vpres|deci-3S&PRES=say rel|que=that vpres|se&PRES=be  adj|irresponsable-PL=irresponsible rel|que=that vpres|se&PRES=be adj|mentiroso-PL=lying  rel|que=that vpres|se&PRES=be pro:dem|esto=this_one pro:per:1|lo=him prep|de=of  adv|más=more .	\N	1388010	1393344	5334	
476	herring11_m	CAL	que no cumplen con lo que dicen .	rel|que=that adv|no=no vpres|cumpli&PRES=accomplish prep|con=with pro:per:1|lo=him  rel|que=that vpres|deci&PRES=say .	\N	1393101	1395795	2694	
477	herring11_m	GRA	ah@s:eng&spa eso sí .	L2|ah pro:dem|eso=that_one co|sí=yes .	\N	1395429	1397925	2496	
478	herring11_m	CAL	y [/] y [/] le [/] le han causado tantos problemas .	pro:per|le=him v:aux|habe&PRES=have vpart|causa=cause adj|tanto-PL=so_much  n|problema-PL=problem .	\N	1397692	1403335	5643	
479	herring11_m	GRA	eso sí es cierto .	pro:dem|eso=that_one co|sí=yes vpres|se-3S&PRES=be adj|cierto=certain  .	\N	1404390	1405923	1533	
480	herring11_m	GRA	él [///] yo no más he escuchado una solo dos canciones de este señor .	pro:per|yo=I adv|no=no adv|más=more vpres|habe-1S&PRES=have vpart|escucha=listen  det:art|un=one adv|solo=just num|dos=two n|canción-PL=song prep|de=of  det:dem|este=this co:voc|señor=sir .	\N	1405986	1410033	4047	
481	herring11_m	CAL	sí sí yo &ta .	co|sí=yes co|sí=yes pro:per|yo=I .	\N	1411524	1413120	1596	
482	herring11_m	GRA	+< y de Scarlati@s:eng&spa no más hay dos que me gustan &=laugh .	adv|ya=already prep|de=of L2|Scarlati adv|no=no adv|más=more vpres|habe-3S&PRES=have  num|dos=two rel|que=that pro:per|me=me vpres|gusta&PRES=like .	\N	1412168	1414589	2421	
483	herring11_m	GRA	&=laugh .	\N	\N	1414821	1415512	691	
484	herring11_m	CAL	&=laugh .	\N	\N	1414821	1415512	691	
485	herring11_m	GRA	&a .	\N	\N	1417261	1418085	824	
486	herring11_m	GRA	y &co yo .	adv|ya=already pro:per|yo=I .	\N	1418403	1419640	1237	
487	herring11_m	CAL	+< no de Scarlati@s:eng&spa ?	adv|no=no prep|de=of L2|Scarlati ?	\N	1418537	1419686	1149	
488	herring11_m	GRA	sí .	co|sí=yes .	\N	1419807	1420463	656	
489	herring11_m	GRA	porque yo compré una específica .	conj|porque=because pro:per|yo=I vpret|compra-1S=buy det:art|un=one adj|específico=specific  .	\N	1420639	1423153	2514	
490	herring11_m	GRA	y no tenía lo que yo quería .	adv|ya=already adv|no=no vpas|tene-13S=have pro:per:1|lo=him rel|que=that  pro:per|yo=I vpas|quere-13S=want .	\N	1423129	1426043	2914	
491	herring11_m	CAL	+< pero [/] pero [/] pero .	conj|pero=but .	\N	1423129	1426043	2914	
492	herring11_m	CAL	hay [///] son dos hermanos Scarlati@s:eng&spa .	vpres|se&PRES=be num|dos=two n|hermano-PL=sibling L2|Scarlati .	\N	1426059	1428074	2015	
493	herring11_m	GRA	&pa padre y madre .	n|padre=father adv|ya=already n|madre=mother .	\N	1428033	1429391	1358	
494	herring11_m	GRA	padre e hijo .	n|padre=father n:let|e n|hijo=child .	\N	1429282	1430719	1437	
495	herring11_m	CAL	+< no no (.) padre e hijo .	adv|no=no adv|no=no n|padre=father n:let|e n|hijo=child .	\N	1429540	1431671	2131	
496	herring11_m	CAL	pero el [/] el hijo &e &e tocó sonatas puras sonatas en [/] en piano .	conj|pero=but det:art|el=the n|hijo=child vpret|toca-3S=touch ?|sonatas  adj|puro-PL=pure ?|sonatas prep|en=in n|piano=piano .	\N	1432765	1437984	5219	
497	herring11_m	GRA	+< sí es padre e hijo .	co|sí=yes vpres|se-3S&PRES=be n|padre=father n:let|e n|hijo=child .	\N	1432823	1434176	1353	
498	herring11_m	CAL	y él trabajó <para el> [/] <para el rein> [//] &e <para el> [/] para el reinado de [/] de España (.) y de Portugal .	adv|ya=already pro:per|él=he vpret|trabaja-3S=work prep|para=for det:art|el=the  vpart|reina=govern prep|de=of n:prop|España adv|ya=already prep|de=of  n:prop|Portugal .	\N	1437544	1447839	10295	
499	herring11_m	CAL	y él &pu puras sonatas &e +. . .	adv|ya=already pro:per|él=he adj|puro-PL=pure ?|sonatas +. . .	\N	1448257	1451456	3199	
501	herring11_m	GRA	sí .	co|sí=yes .	\N	1455338	1455919	581	
502	herring11_m	GRA	pero eran [///] es [///] son como &bi composiciones bien corticas .	conj|pero=but vpres|se&PRES=be adv|como=like ?|composiciones adv|bien=well  adj|corto-PL=short .	\N	1455919	1459989	4070	
503	herring11_m	CAL	&a .	\N	\N	1456139	1456662	523	
504	herring11_m	CAL	sí mmhm@s:eng .	adv|sí=yes L2|mmhm .	\N	1460638	1461869	1231	
505	herring11_m	GRA	+< es [/] es [/] es este Domenico@s:eng&spa .	vpres|se-3S&PRES=be det:dem|este=this L2|Domenico .	\N	1461667	1463548	1881	
506	herring11_m	GRA	el padre se llamaba Lorenzo@s:eng&spa .	det:art|el=the n|padre=father pro:refl|se=itself vpas|llama-13S=call L2|Lorenzo  .	\N	1463651	1466291	2640	
507	herring11_m	GRA	no era ?	adv|no=no vpas|se-13S=be ?	\N	1466157	1466755	598	
508	herring11_m	CAL	no .	adv|no=no .	\N	1466569	1467086	517	
509	herring11_m	CAL	&e no me acuerdo ahora el padre pero .	adv|no=no pro:per|me=me vpres|acorda-1S&PRES=remind adv|ahora=now det:art|el=the  n|padre=father conj|pero=but .	\N	1468811	1472543	3732	
510	herring11_m	CAL	y tenían otro creo que tenía el otro hermano también que era músico .	conj|y=and vpas|tene=have pro:indef|otro=other vpres|cree-1S&PRES=believe  rel|que=that vpas|tene-13S=have det:art|el=the det:indef|otro=other n|hermano=sibling  adv|también=also rel|que=that vpas|se-13S=be n|músico=musician .	\N	1474909	1478241	3332	
511	herring11_m	CAL	pero que no [/] no hizo gran cosa .	conj|pero=but rel|que=that adv|no=no vpret|hace-3S=do adj|gran=big vsub|cose-13S&PRES=sew  .	\N	1478015	1481097	3082	
512	herring11_m	GRA	alguien dijo el otro día +"/ .	pro:indef|alguien=someone vpret|deci-3S=say det:art|el=the pro:indef|otro=other  n|día=day +"/ .	\N	1484465	1485870	1405	
513	herring11_m	GRA	+" el pobre +// .	det:art|el=the co:voc|pobre=poor_thing +// .	\N	1486096	1486862	766	
514	herring11_m	GRA	&e a no estaba pensando en [/] enBach@s:eng&spa .	prep|a=to adv|no=no vpas|esta-13S=be vger|pensa-PROG=think L2|enBach .	\N	1486839	1489631	2792	
515	herring11_m	GRA	tenía once hijos .	vpas|tene-13S=have num|once=eleven n|hijo-PL=child .	\N	1490080	1491322	1242	
516	herring11_m	GRA	y todos estaban en el mismo cuarto .	adv|ya=already det:indef|todo-PL=all v:aux|esta=be prep|en=in det:art|el=the  adj|mismo=same adj|cuarto=fourth .	\N	1491078	1492791	1713	
517	herring11_m	GRA	cómo se la arreglaba pa hacer tantos hijos y hacer música también ?	adv:int|cómo=how pro:refl|se=itself det:art|el=the vpas|arregla-13S=order  co|pa vinf|hace=do det:indef|tanto-PL=so_much n|hijo-PL=child adv|ya=already  vinf|hace=do n|música=music adv|también=also ?	\N	1492582	1495972	3390	
518	herring11_m	CAL	&=laugh .	\N	\N	1495705	1497104	1399	
519	herring11_m	CAL	bueno pero era &e <era la> [///] tenían la vida &e +// .	co|bueno=good conj|pero=but vpas|se-13S=be vpas|tene=have det:art|el=the  co:voc|vida=life +// .	\N	1498498	1502358	3860	
520	herring11_m	CAL	bueno especialmente si trabajaban para una iglesia o <para un> [/] para un príncipe .	co|bueno=good adv|especialmente=especially conj|si=if vpas|trabaja=work  prep|para=for pro:dem|un=one n|iglesia=church conj|o=or prep|para=for pro:dem|un=one  n|príncipe=prince .	\N	1502382	1507130	4748	
521	herring11_m	GRA	+< él no .	pro:per|él=he adv|no=no .	\N	1505957	1506851	894	
522	herring11_m	CAL	sí .	co|sí=yes .	\N	1507170	1507548	378	
523	herring11_m	GRA	no dicen [/] dicen que él está +/ .	adv|no=no vpres|deci&PRES=say rel|que=that pro:per|él=he vpres|esta-3S&PRES=be  +/ .	\N	1507698	1509068	1370	
524	herring11_m	CAL	+< Bach@s:eng&spa [/] Bach@s:eng&spa .	L2|Bach .	\N	1507698	1509068	1370	
525	herring11_m	GRA	ves ?	co|ves=see ?	\N	1509045	1509306	261	
526	herring11_m	GRA	ahí está .	adv|ahí=there vpres|esta-3S&PRES=be .	\N	1509271	1509916	645	
527	herring11_m	GRA	con todo xxx .	prep|con=with det:indef|todo=all unk|xxx .	\N	1509838	1512427	2589	
528	herring11_m	CAL	+< Bach@s:eng&spa él trabaja para +// .	L2|Bach pro:per|él=he vpres|trabaja-3S&PRES=work prep|para=for +// .	\N	1511040	1512422	1382	
529	herring11_m	CAL	&=mumble y bueno <los padres> [///] él tenía padres y hermanos que eran músicos también .	adv|ya=already co|bueno=good pro:per|él=he vpas|tene-13S=have n|padre-PL=father  adv|ya=already n|hermano-PL=sibling rel|que=that vpas|se=be n|músico-PL=musician  adv|también=also .	\N	1512363	1517445	5082	
530	herring11_m	GRA	bueno él enseñaba en la escuela de Lepsis@s:eng&spa .	co|bueno=good pro:per|él=he vpas|enseña-13S=teach prep|en=in det:art|el=the  n|escuela=school prep|de=of L2|Lepsis .	\N	1518572	1520865	2293	
531	herring11_m	GRA	pero por la noche se iba pa(ra) su casa .	conj|pero=but prep|por=for det:art|el=the n|noche=night pro:refl|se=itself  vpas|i-13S=go prep|para=for det:pos|su&3S=his n|casa=house .	\N	1520418	1522560	2142	
532	herring11_m	CAL	sí pero estaba trabajando en aquel entonces estaba trabajando para un príncipe .	co|sí=yes conj|pero=but vpas|esta-13S=be vger|trabaja-PROG=work prep|en=in  det:dem|aquel=that adv|entonces=then v:aux|esta-13S=be vger|trabaja-PROG=work  prep|para=for pro:dem|un=one n|príncipe=prince .	\N	1522813	1528206	5393	
533	herring11_m	CAL	pero después de ahí cuando terminó de ahí fue a trabajar en [/] en [/] en [/] en otra iglesia .	conj|pero=but adv|después=after prep|de=of adv|ahí=there conj|cuando=when  vpret|termina-3S=end prep|de=of adv|ahí=there vpret|i-3S=go prep|a=to  vinf|trabaja=work prep|en=in det:indef|otro=other n|iglesia=church .	\N	1528253	1533744	5491	
534	herring11_m	CAL	y era &e haciendo las composiciones .	adv|ya=already vpas|se-13S=be vger|hace-PROG=do det:art|el-PL=the ?|composiciones  .	\N	1534333	1536620	2287	
535	herring11_m	CAL	imagínate que tenía que tener una composición distinta cada [/] <para cada> [/] para cada fin de semana .	?|imagínate rel|que=that vpas|tene-13S=have rel|que=that vinf|tene=have  det:art|un=one ?|composición adj|distinto=distinct vimp|pari-3S=give_birth  det:indef|cada=each n|fin=end prep|de=of n|semana=week .	\N	1536611	1543049	6438	
536	herring11_m	GRA	+< mmhm .	?|mmhm .	\N	1540825	1541539	714	eng
537	herring11_m	GRA	Handel@s:eng&spa tambi(én) +// .	L2|Handel adv|también=also +// .	\N	1543825	1544806	981	
538	herring11_m	GRA	digo (.) Haydn@s:eng&spa también .	vpres|deci-1S&PRES=say L2|Haydn adv|también=also .	\N	1544794	1548062	3268	
539	herring11_m	CAL	sí Haydn@s:eng&spa también .	adv|sí=yes L2|Haydn adv|también=also .	\N	1548080	1549804	1724	
540	herring11_m	CAL	eso [/] eso debe ser cansón no ?	pro:dem|eso=that_one vpres|debe-3S&PRES=must vinf|se=be adj|canso=weary  co|no=no ?	\N	1551429	1553548	2119	
541	herring11_m	CAL	pero tenían tanta práctica .	conj|pero=but vpas|tene=have det:indef|tanto=so_much adj|práctico=skilled  .	\N	1553470	1556233	2763	
542	herring11_m	GRA	pero ellos muchas veces se robaban de aquí y de allí .	conj|pero=but pro:per|ello-PL=he det:indef|mucho-PL=many n|vez-PL=turn  pro:refl|se=itself vpas|roba=rob prep|de=of adv|aquí=here adv|ya=already  prep|de=of adv|allí=there .	\N	1556210	1558422	2212	
543	herring11_m	CAL	bueno .	co|bueno=good .	\N	1556442	1556883	441	
544	herring11_m	CAL	bueno sí todos [/] todos ellos &e copia(ban) .	co|bueno=good co|sí=yes det:indef|todo-PL=all pro:per|ello-PL=he vpas|copia=copy  .	\N	1558358	1560738	2380	
545	herring11_m	CAL	es decir no [/] no [/] no que robaban pero copiaban digamos .	vpres|se-3S&PRES=be vinf|deci=say co|no=no rel|que=that vpas|roba=rob  conj|pero=but vpas|copia=copy vsub|deci&PRES=say .	\N	1560395	1565115	4720	
546	herring11_m	CAL	copiaban algo que ya tenían .	vpas|copia=copy pro:dem|algo=something rel|que=that adv|ya=already vpas|tene=have  .	\N	1567309	1569724	2415	
547	herring11_m	CAL	y lo combinaban con [/] con algo nuevo .	adv|ya=already pro:per:1|lo=him vpas|combina=combine prep|con=with pro:dem|algo=something  adj|nuevo=new .	\N	1569259	1572168	2909	
548	herring11_m	CAL	y [/] y Bach@s:eng&spa &e tomó varias [/] varias &e composiciones de [/] de Vivaldi@s:eng&spa .	adv|ya=already L2|Bach vpret|toma-3S=take vpres|varia&PRES=vary ?|composiciones  prep|de=of L2|Vivaldi .	\N	1573901	1582118	8217	
549	herring11_m	CAL	y él &e también las [/] las [/] las arreglaba a la manera de él .	adv|ya=already pro:per|él=he adv|también=also det:art|el-PL=the vpas|arregla-13S=order  prep|a=to det:art|el=the n|manera=manner prep|de=of pro:per|él=he .	\N	1582215	1588223	6008	
550	herring11_m	GRA	+< ah@s:eng&spa ya .	L2|ah adv|ya=already .	\N	1583304	1584105	801	
551	herring11_m	GRA	cómo se llama ?	adv:int|cómo=how pro:refl|se=itself vpres|llama-3S&PRES=call ?	\N	1588390	1588937	547	
552	herring11_m	GRA	en [/] en Brasil@s:eng&spa hay un hombre que [/] que escribió baquianas brasileñas .	prep|en=in L2|Brasil vpres|habe-3S&PRES=have pro:dem|un=one co:voc|hombre=man  rel|que=that vpret|escribi-3S=write ?|baquianas ?|brasileñas .	\N	1589176	1595265	6089	
553	herring11_m	CAL	+< sí .	co|sí=yes .	\N	1594720	1595126	406	
554	herring11_m	GRA	+< y es [/] es a base de [/] de .	adv|ya=already vpres|se-3S&PRES=be prep|a=to vsub|basa-13S&PRES=base prep|de=of  .	\N	1595288	1597709	2421	
555	herring11_m	CAL	+< ese es [/] es guitarrista .	det:dem|ese=that vpres|se-3S&PRES=be n|guitarrista=guitarist .	\N	1596766	1598536	1770	
556	herring11_m	GRA	cómo se llamaba él ?	adv:int|cómo=how pro:refl|se=itself vpas|llama-13S=call pro:per|él=he  ?	\N	1598447	1600009	1562	
557	herring11_m	CAL	&a .	\N	\N	1599808	1600812	1004	
558	herring11_m	GRA	no sé va +// .	adv|no=no vpres|sabe-1S&PRES=know co|va=go +// .	\N	1601026	1601828	802	
559	herring11_m	CAL	lo tenían en la [/] en la radio &e +// .	pro:per:1|lo=him vpas|tene=have prep|en=in prep|en=in det:art|el=the n|radio=radius  +// .	\N	1602011	1603985	1974	
560	herring11_m	CAL	<yo sé> [/] yo sé cuál es el &e .	pro:per|yo=I vpres|sabe-1S&PRES=know pro:int|cuál=which vpres|se-3S&PRES=be  det:art|el=the .	\N	1605094	1607508	2414	
561	herring11_m	GRA	Lobo@s:eng&spa .	L2|Lobo .	\N	1607300	1608501	1201	
562	herring11_m	CAL	sí .	co|sí=yes .	\N	1608054	1609209	1155	
563	herring11_m	GRA	something@s:eng Lobo@s:eng&spa .	L2|something L2|Lobo .	\N	1609060	1610053	993	
564	herring11_m	CAL	&o .	\N	\N	1610407	1611115	708	
565	herring11_m	CAL	<no y> [/] <no y> [/] y bien sofisticado .	adv|ya=already adv|bien=well ?|sofisticado .	\N	1612855	1615050	2195	
566	herring11_m	CAL	y [/] y pero también él tenía +/ .	adv|ya=already conj|pero=but adv|también=also pro:per|él=he vpas|tene-13S=have  +/ .	\N	1615006	1616849	1843	
567	herring11_m	CAL	él dice que <él &compo> [/] él &a [///] las composiciones de él tenían el espiritú de los brasileros .	pro:per|él=he vpres|deci-3S&PRES=say rel|que=that pro:per|él=he det:art|el-PL=the  ?|composiciones prep|de=of pro:per|él=he vpas|tene=have det:art|el=the  ?|espiritú prep|de=of det:art|el-PL=the ?|brasileros .	\N	1616939	1623574	6635	
568	herring11_m	GRA	ah@s:eng&spa .	L2|ah .	\N	1623549	1624049	500	
569	herring11_m	CAL	él &e [/] él componía con el espiritú de la calle de los [/] de los brasileros .	pro:per|él=he pro:per|él=he vpas|compone-13S=compose prep|con=with det:art|el=the  ?|espiritú prep|de=of det:art|el=the n|calle=street vsub|da-13S&PRES=give  prep|de=of det:art|el-PL=the ?|brasileros .	\N	1624002	1629581	5579	
570	herring11_m	GRA	qué maluco que están esta gente xxx .	pro:int|qué=what ?|maluco rel|que=that vpres|esta&PRES=be det:dem|este=this  n|gente=folk unk|xxx .	\N	1629514	1633287	3773	
571	herring11_m	CAL	tú [/] <tú has escuchado las> [/] tú has escuchado las composiciones de violín y guitarra de (.) [/] de ?	pro:per|tú=you v:aux|habe&PRES=have vpart|escucha=listen det:art|el-PL=the  ?|composiciones prep|de=of n|violín=violin conj|y=and n|guitarra=guitar  prep|de=of ?	\N	1636501	1644705	8204	
572	herring11_m	GRA	+< y eran supuestamente aristocráticos .	conj|y=and vpas|se=be adv:adj|supuesto=supposed ?|aristocráticos .	\N	1638451	1640622	2171	
573	herring11_m	GRA	no guitarra .	adv|no=no n|guitarra=guitar .	\N	1643682	1644594	912	
574	herring11_m	CAL	violín y guitarra de [/] de [/] de [/] de cómo es el violinista que acabamos de decir que era el ?	n|violín=violin adv|ya=already n|guitarra=guitar prep|de=of adv:int|cómo=how  vpres|se-3S&PRES=be det:art|el=the n|violinista=violinist rel|que=that  vpres|acaba&PRES=finish prep|de=of vinf|deci=say rel|que=that vpas|se-13S=be  det:art|el=the ?	\N	1645154	1654838	9684	
575	herring11_m	GRA	Paganini@s:eng&spa ?	L2|Paganini ?	\N	1655202	1655805	603	
576	herring11_m	CAL	Paganini@s:eng&spa ?	L2|Paganini ?	\N	1655776	1656542	766	
577	herring11_m	GRA	oh yeah .	co|oh co|yeah .	\N	1656554	1656995	441	eng
578	herring11_m	CAL	+< ah@s:eng&spa tremendo .	L2|ah adj|tremendo=awesome .	\N	1656989	1658539	1550	
579	herring11_m	GRA	<él tiene> [/] él [/] él [/] él tiene unos de violín que [/] que [/] que y guitarra sí .	pro:per|él=he vpres|tene-3S&PRES=have pro:dem|un-PL=one prep|de=of n|violín=violin  rel|que=that adv|ya=already n|guitarra=guitar co|sí=yes .	\N	1657838	1661786	3948	
580	herring11_m	CAL	+< violín y guitarra .	n|violín=violin adv|ya=already n|guitarra=guitar .	\N	1659869	1661146	1277	
581	herring11_m	CAL	violín .	n|violín=violin .	\N	1661755	1662312	557	
582	herring11_m	CAL	él también &=mumble composiciones que eran pura guitarra .	pro:per|él=he adv|también=also ?|composiciones rel|que=that vpas|se=be  adj|puro=pure n|guitarra=guitar .	\N	1662301	1665324	3023	
618	herring11_m	GRA	y eso no (.) no &se +/ .	conj|y=and pro:dem|eso=that_one adv|no=no adv|no=no +/ .	\N	1766877	1771742	4865	
583	herring11_m	GRA	+< hay una tal (.) Gabriela@s:eng&spa que toca <las &canci> [///] la [/] la música de él .	vpres|habe-3S&PRES=have det:art|un=one adj|tal=such L2|Gabriela rel|que=that  vpres|toca-3S&PRES=touch det:art|el=the n|música=music prep|de=of pro:per|él=he  .	\N	1663519	1669776	6257	
584	herring11_m	CAL	+< y .	adv|ya=already .	\N	1668039	1668765	726	
585	herring11_m	CAL	y también de &e de Joe@s:eng&spa .	adv|ya=already adv|también=also prep|de=of prep|de=of L2|Joe .	\N	1670745	1675575	4830	
586	herring11_m	CAL	&e cómo es que se llama ?	adv:int|cómo=how vpres|se-3S&PRES=be rel|que=that pro:refl|se=itself  vpres|llama-3S&PRES=call ?	\N	1675261	1676980	1719	
587	herring11_m	CAL	cómo es el gobernador de [/] de Nueva York cuando el nueve once ?	adv:int|cómo=how vpres|se-3S&PRES=be det:art|el=the n|gobernador=governor  prep|de=of n:prop|Nueva n:prop|York conj|cuando=when det:art|el=the num|nueve=nine  num|once=eleven ?	\N	1677001	1682678	5677	
588	herring11_m	GRA	Giuliani@s:eng&spa .	L2|Giuliani .	\N	1682622	1683307	685	
589	herring11_m	CAL	Giuliani@s:eng&spa hay un compositor Giuliani@s:eng&spa también que escribió muchas &e composiciones de guitarra y violín .	L2|Giuliani vpres|habe-3S&PRES=have pro:dem|un=one n|compositor=composer  L2|Giuliani adv|también=also rel|que=that vpret|escribi-3S=write det:indef|mucho-PL=many  ?|composiciones prep|de=of n|guitarra=guitar n:let|y n|violín=violin .	\N	1683379	1690374	6995	
590	herring11_m	CAL	bonitas [/] bonitas canciones bonitas piezas .	adj|bonito-PL=pretty n|canción-PL=song adj|bonito-PL=pretty n|pieza-PL=piece  .	\N	1690043	1696858	6815	
591	herring11_m	GRA	yo no sé .	pro:per|yo=I adv|no=no vpres|sabe-1S&PRES=know .	\N	1701541	1702069	528	
592	herring11_m	GRA	yo creo que Juan_Pablo@s:eng&spa debe concentrarse primero en piano .	pro:per|yo=I vpres|cree-1S&PRES=believe rel|que=that L2|Juan_Pablo vimp|debe=must  vinf|concentra-INF~pro:clit|3S&REFL num:adj|primero=first prep|en=in n|piano=piano  .	\N	1702075	1707874	5799	
593	herring11_m	GRA	&por aunque piano uno puede aprenderlo cuando esté mayor también .	conj|aunque=though n|piano=piano det:art|un=one vpres|pode-3S&PRES=can  vinf|aprende-INF~pro:clit|OBJ&MASC conj|cuando=when vimp|esta-3S=be adj|mayor=elder  adv|también=also .	\N	1707236	1711717	4481	
594	herring11_m	GRA	pero puesto que ahora todo el que tiene piano va a tener que aprender piano primero .	conj|pero=but vpart|pone=put rel|que=that adv|ahora=now det:indef|todo=all  det:art|el=the rel|que=that vpres|tene-3S&PRES=have n|piano=piano vpres|i-3S&PRES=go  prep|a=to vinf|tene=have rel|que=that vinf|aprende=learn n|piano=piano  num:adj|primero=first .	\N	1711689	1715502	3813	
595	herring11_m	CAL	sí .	co|sí=yes .	\N	1715398	1716066	668	
596	herring11_m	GRA	pero &am .	conj|pero=but .	\N	1715938	1717836	1898	
597	herring11_m	CAL	pero el violín es &pa &pa para muchos es más fácil .	conj|pero=but det:art|el=the n|violín=violin vpres|se-3S&PRES=be prep|para=for  det:indef|mucho-PL=many vpres|se-3S&PRES=be adv|más=more adj|fácil=easy  .	\N	1717756	1720541	2785	
598	herring11_m	CAL	lo que tienen que aprender es .	pro:per:1|lo=him rel|que=that vpres|tene&PRES=have rel|que=that vinf|aprende=learn  vpres|se-3S&PRES=be .	\N	1720518	1721876	1358	
599	herring11_m	GRA	+< no no no no violín no es fácil .	adv|no=no adv|no=no adv|no=no adv|no=no n|violín=violin adv|no=no vpres|se-3S&PRES=be  adj|fácil=easy .	\N	1721377	1723676	2299	
600	herring11_m	GRA	lo siento mucho .	pro:per:1|lo=him vpres|senti-1S&PRES=feel adv|mucho=much .	\N	1723860	1724859	999	
601	herring11_m	CAL	&a &a Grace@s:eng&spa &=mumble ellos &=mumble <cómo es> [/] cómo es el programa ?	L2|Grace pro:per|ello-PL=he adv:int|cómo=how vpres|se-3S&PRES=be det:art|el=the  n|programa=programme ?	\N	1724965	1731861	6896	
602	herring11_m	GRA	+< mmhm .	?|mmhm .	\N	1726900	1728072	1172	eng
603	herring11_m	GRA	+< <lo que> [/] lo que pasa es que [/] que el violín .	pro:per:1|lo=him rel|que=that vpres|pasa-3S&PRES=pass vpres|se-3S&PRES=be  rel|que=that det:art|el=the n|violín=violin .	\N	1730602	1732819	2217	
604	herring11_m	CAL	el programa ese de [/] de japonés .	det:art|el=the n|programa=programme det:dem|ese=that prep|de=of adj|japonés=Japanese  .	\N	1731983	1733957	1974	
605	herring11_m	CAL	cómo es que se llama eso ?	adv:int|cómo=how vpres|se-3S&PRES=be rel|que=that pro:refl|se=itself  vpres|llama-3S&PRES=call pro:dem|eso=that_one ?	\N	1733951	1735663	1712	
606	herring11_m	CAL	&e suzuki@s:eng&spa ?	L2|suzuki ?	\N	1735787	1736878	1091	
607	herring11_m	GRA	suzuki@s:eng&spa pero no es porque &pia el violín es más fácil .	L2|suzuki conj|pero=but adv|no=no vpres|se-3S&PRES=be conj|porque=because  det:art|el=the n|violín=violin vpres|se-3S&PRES=be adv|más=more adj|fácil=easy  .	\N	1736866	1739994	3128	
608	herring11_m	GRA	no es más fácil .	adv|no=no vpres|se-3S&PRES=be adv|más=more adj|fácil=easy .	\N	1739618	1741127	1509	
609	herring11_m	CAL	y <es que> [/] es que tienen que aprender a leer la +// .	adv|ya=already vpres|se-3S&PRES=be rel|que=that vpres|tene&PRES=have rel|que=that  vinf|aprende=learn prep|a=to vinf|lee=read det:art|el=the +// .	\N	1741158	1743451	2293	
610	herring11_m	GRA	&e (.) &u uno de los [/] los violinistas dice +" .	det:art|un=one prep|de=of det:art|el-PL=the n|violinista-PL=violinist  vpres|deci-3S&PRES=say .	\N	1741425	1744990	3565	
611	herring11_m	GRA	+" tú puedes aprender violín [///] piano cualquiera hora de tu vida .	pro:per|tú=you vpres|pode&PRES=can vinf|aprende=learn n|piano=piano pro:indef|cualquiera=whichever  n|hora=hour prep|de=of det:pos|tu=your co:voc|vida=life .	\N	1744921	1749595	4674	
612	herring11_m	GRA	pero violín no .	conj|pero=but n|violín=violin co|no=no .	\N	1749554	1751255	1701	
613	herring11_m	CAL	no &e pero lo aprenden de pequeño .	co|no=no conj|pero=but pro:per:1|lo=him vpres|aprende&PRES=learn prep|de=of  adj|pequeño=small .	\N	1751376	1754406	3030	
614	herring11_m	GRA	+< y el [//] y &e [//] y no .	adv|ya=already adv|ya=already adv|ya=already adv|no=no .	\N	1752972	1754441	1469	
615	herring11_m	GRA	bueno si aprenden de pequeño bien con alguien (.) que valga la pena .	co|bueno=good conj|si=if vpres|aprende&PRES=learn prep|de=of adj|pequeño=small  adv|bien=well prep|con=with pro:indef|alguien=someone rel|que=that vsub|vale-13S&PRES=cost  det:art|el=the n|pena=pain .	\N	1754415	1758734	4319	
616	herring11_m	GRA	pero yo creo que ese maestro que [/] que Stephen@s:eng&spa tenía no +/ .	conj|pero=but pro:per|yo=I vpres|cree-1S&PRES=believe rel|que=that det:dem|ese=that  n|maestro=master prep|que=than L2|Stephen vpas|tene-13S=have adv|no=no  +/ .	\N	1758695	1761440	2745	
617	herring11_m	GRA	él &ba [//] él tocaba tal vez cuatro rancheras y un [/] y un vals .	pro:per|él=he pro:per|él=he vpas|toca-13S=touch adj|tal=such n|vez=turn  num|cuatro=four ?|rancheras adv|ya=already conj|y=and pro:dem|un=one n|vals=waltz  .	\N	1761460	1766899	5439	
619	herring11_m	CAL	+< pero lo prime(ro) [/] lo primero que tiene que aprender es aprender <a leer> [/] a leer la música .	conj|pero=but pro:per:1|lo=him pro:per:1|lo=him num:adj|primero=first  rel|que=that vpres|tene-3S&PRES=have rel|que=that vinf|aprende=learn vpres|se-3S&PRES=be  vinf|aprende=learn prep|a=to vinf|lee=read det:art|el=the n|música=music  .	\N	1768294	1773164	4870	
620	herring11_m	CAL	y [/] y se ha probado que la gente <que lee> [//] que [/] que aprende a tocar un [/] un instrumento +// .	adv|ya=already pro:refl|se=itself v:aux|habe-3S&PRES=have vpart|proba=test  rel|que=that det:art|el=the n|gente=folk rel|que=that vpres|aprende-3S&PRES=learn  prep|a=to vinf|toca=touch pro:dem|un=one n|instrumento=instrument +// .	\N	1774946	1780941	5995	
621	herring11_m	CAL	a leer &miu música aprenden a leer +// .	prep|a=to vinf|lee=read n|música=music vpres|aprende&PRES=learn prep|a=to  vinf|lee=read +// .	\N	1781222	1784287	3065	
622	herring11_m	CAL	es decir se le desarolla el [/] el cerebro más rápido para otras cosas para otras disciplinas en la vida o [/] o en la universidad o en el colegio .	vpres|se-3S&PRES=be vinf|deci=say pro:refl|se=itself pro:per|le=him ?|desarolla  det:art|el=the n|cerebro=brain adv|más=more adj|rápido=rapid prep|para=for  det:indef|otro-PL=other vsub|cose&PRES=sew prep|para=for det:indef|otro-PL=other  ?|disciplinas prep|en=in det:art|el=the co:voc|vida=life conj|o=or prep|en=in  det:art|el=the n|universidad=university conj|o=or prep|en=in det:art|el=the  n|colegio=school .	\N	1784705	1804227	19522	
623	herring11_m	GRA	bueno la cosa es que en el lugar donde él vive se coge un milagro para sacar algo bueno de ahí .	co|bueno=good det:art|el=the n|cosa=thing vpres|se-3S&PRES=be rel|que=that  prep|en=in det:art|el=the n|lugar=place rel|donde=where pro:per|él=he  vpres|vivi-3S&PRES=live pro:refl|se=itself vpres|coge-3S&PRES=take pro:dem|un=one  n|milagro=miracle prep|para=for vinf|saca=bring_out pro:dem|algo=something  co|bueno=good prep|de=of adv|ahí=there .	\N	1801776	1808595	6819	
624	herring11_m	CAL	sí pero el que tiene talento el que tiene talento no +"/ .	co|sí=yes conj|pero=but det:art|el=the rel|que=that vpres|tene-3S&PRES=have  n|talento=talent det:art|el=the rel|que=that vpres|tene-3S&PRES=have n|talento=talent  co|no=no +"/ .	\N	1809743	1812587	2844	
625	herring11_m	GRA	+< un [/] un [/] un milagro y entonces después algo más .	pro:dem|un=one n|milagro=miracle adv|ya=already adv|entonces=then adv|después=after  pro:dem|algo=something adv|más=more .	\N	1810731	1813697	2966	
626	herring11_m	CAL	+< el que tiene talento sale .	det:art|el=the rel|que=that vpres|tene-3S&PRES=have n|talento=talent vpres|sali-3S&PRES=leave  .	\N	1813732	1816762	3030	
627	herring11_m	CAL	y dicen que <el que> [/] <el que> [/] el que como tenía [///] Ortil_Carrera@s:eng&spa tenía un dicho +"/ .	adv|ya=already vpres|deci&PRES=say rel|que=that det:art|el=the rel|que=that  adv|como=like L2|Ortil_Carrera vpas|tene-13S=have pro:dem|un=one vpart|deci=say  +"/ .	\N	1817100	1822527	5427	
628	herring11_m	CAL	+" el que [/] el que va a salir .	det:art|el=the det:art|el=the rel|que=that vpres|i-3S&PRES=go prep|a=to  vinf|sali=leave .	\N	1822931	1824835	1904	
629	herring11_m	GRA	+< él se murió no ?	pro:per|él=he pro:refl|se=itself vpret|mori-3S=die adv|no=no ?	\N	1823660	1825001	1341	
630	herring11_m	CAL	no .	adv|no=no .	\N	1825465	1825970	505	
631	herring11_m	CAL	por qué ?	prep|por=for pro:int|qué=what ?	\N	1825955	1826983	1028	
632	herring11_m	CAL	quién te ha dicho que él se ha muerto ?	pro:int|quién=who pro:per|te=you v:aux|habe-3S&PRES=have vpart|deci=say  rel|que=that pro:per|él=he pro:refl|se=itself v:aux|habe-3S&PRES=have  vpart|mori=die ?	\N	1826960	1829578	2618	
633	herring11_m	CAL	él llegó a ser doctor .	pro:per|él=he vpret|llega-3S=arrive prep|a=to vinf|se=be n|doctor=doctor  .	\N	1829095	1830251	1156	
634	herring11_m	GRA	él se murió .	pro:per|él=he pro:refl|se=itself vpret|mori-3S=die .	\N	1830732	1831679	947	
635	herring11_m	CAL	no .	adv|no=no .	\N	1831818	1832242	424	
636	herring11_m	GRA	sí porque Esmeralda@s:eng&spa fue al entierro .	co|sí=yes conj|porque=because L2|Esmeralda vpret|i-3S=go prep|a~det|el&MASC  vpres|enterra-1S&PRES=bury .	\N	1832697	1834757	2060	
637	herring11_m	CAL	cuándo ?	adv:int|cuándo=when ?	\N	1836528	1837323	795	
638	herring11_m	GRA	yo no recuerdo .	pro:per|yo=I adv|no=no vpres|recorda-1S&PRES=remember .	\N	1838674	1839615	941	
639	herring11_m	GRA	fue el año antepasado o pasado que alguien me dijo .	vpret|i-3S=go det:art|el=the n|año=year adj|antepasado=previous n:let|o  vpart|pasa=pass prep|que=than pro:indef|alguien=someone pro:per|me=me vpret|deci-3S=say  .	\N	1839650	1842965	3315	
640	herring11_m	CAL	oiga eso es noticia para mí .	vsub|oí-13S&PRES=hear pro:dem|eso=that_one vpres|se-3S&PRES=be n|noticia=news  prep|para=for pro:per|mí=me .	\N	1842877	1844874	1997	
641	herring11_m	GRA	+< sí estaba hinchado y &a (.) los riñones y otra cosa .	pro:per|sí=itself vpas|esta-13S=be n|hinchado=swelling adv|ya=already  det:art|el-PL=the ?|riñones adv|ya=already det:indef|otro=other n|cosa=thing  .	\N	1844758	1850668	5910	
642	herring11_m	CAL	+< y quién te dijo eso ?	conj|y=and pro:int|quién=who pro:per|te=you vpret|deci-3S=say pro:dem|eso=that_one  ?	\N	1850514	1851756	1242	
643	herring11_m	GRA	+< y él estaba casado con otra person y &e .	adv|ya=already pro:per|él=he v:aux|esta-13S=be vpart|casa=marry prep|con=with  det:indef|otro=other ?|person adv|ya=already .	\N	1850872	1853978	3106	
644	herring11_m	GRA	Hillary@s:eng&spa .	L2|Hillary .	\N	1855044	1855729	685	
645	herring11_m	GRA	y entonces me dijo pero este estaba ahí <con los niños> [//] con los hijos .	adv|ya=already adv|entonces=then pro:per|me=me vpret|deci-3S=say conj|pero=but  vsub|esta-13S&PRES=be vpas|esta-13S=be adv|ahí=there prep|con=with det:art|el-PL=the  n|hijo-PL=child .	\N	1855758	1859712	3954	
\.


--
-- Name: herring11_m_cgutterances_pk; Type: CONSTRAINT; Schema: public; Owner: kevin; Tablespace: 
--

ALTER TABLE ONLY herring11_m_cgutterances
    ADD CONSTRAINT herring11_m_cgutterances_pk PRIMARY KEY (utterance_id);


--
-- PostgreSQL database dump complete
--

