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
-- Name: sastre1_default; Type: TABLE; Schema: public; Owner: kevin; Tablespace: 
--

CREATE TABLE sastre1_default (
    utterance_id integer,
    surface text,
    cleaned text,
    lgprofile character varying(200)
);


ALTER TABLE public.sastre1_default OWNER TO kevin;

--
-- Data for Name: sastre1_default; Type: TABLE DATA; Schema: public; Owner: kevin
--

COPY sastre1_default (utterance_id, surface, cleaned, lgprofile) FROM stdin;
1	bueno@3 y@3 qué@3 tú@3 crees@3 de@3 [/] de@3 aquí@3 la@3 cuadra@3 lo@3 que@3 están@3 haciendo@3 ?	bueno y qué tú crees de aquí la cuadra lo que están haciendo ? 	3333333333333
2	la@3 rotondita@3 esa@3 do@2 you@2 like@2 that@2 ?	la rotondita esa do you like that ? 	3332222
3	+< pero@3 that's@2 illegal@2 .	pero that's illegal . 	322
4	esa@3 rotonda@3 es@3 illegal@2 .	esa rotonda es illegal . 	3332
5	from@2 what@2 I@2 know@2 .	from what I know . 	2222
6	supuesto@3 de@3 eso@3 es@3 illegal@2 .	supuesto de eso es illegal . 	33332
7	<y@3 si@3> [/] y@3 si@3 entra@3 algún@3 camión@3 ahí@3 por@3 ejemplo@3 a@3 dejar@3 muebles@3 o@3 cualquier@3 cosa@3 .	y si entra algún camión ahí por ejemplo a dejar muebles o cualquier cosa . 	33333333333333
8	yo@3 no@3 sé@3 .	yo no sé . 	333
9	cómo@3 va@3 a@3 doblar@3 esa@3 rotondita@3 ?	cómo va a doblar esa rotondita ? 	333333
10	porque@3 no@3 está@3 fácil@3 para@3 los@3 carros@3 de@3 uno@3 .	porque no está fácil para los carros de uno . 	333333333
11	no@0 .	no . 	0
12	no@3 pero@3 +/ .	no pero . 	33
13	+< no@3 tanto@3 este@3 lado@3 sino@3 el@3 [/] el@3 lado@3 izquierdo@3 .	no tanto este lado sino el lado izquierdo . 	33333333
14	el@3 de@3 entrar@3 o@3 el@3 de@3 salir@3 ?	el de entrar o el de salir ? 	3333333
15	cuando@3 tú@3 entras@3 .	cuando tú entras . 	333
16	mmhm@0 .	mmhm . 	0
17	bueno@3 ese@3 está@3 en@3 la@3 intersección@3 .	bueno ese está en la intersección . 	333333
18	ese@3 tiene@3 bastante@3 espacio@3 .	ese tiene bastante espacio . 	3333
19	<lo@3 malo@3> [///] el@3 otro@3 yo@3 lo@3 veo@3 más@3 difícil@3 porque@3 es@3 más@3 [/] más@3 estrechito@3 .	el otro yo lo veo más difícil porque es más estrechito . 	33333333333
20	+< pero@3 viste@3 las@3 cositas@3 que@3 compraron@3 para@3 los@3 speed@2 bumps@2 ?	pero viste las cositas que compraron para los speed bumps ? 	3333333322
21	tú@3 viste@3 lo@3 que@3 van@3 a@3 hacer@3 ?	tú viste lo que van a hacer ? 	3333333
22	+< no@3 .	no . 	3
23	tú@3 no@3 has@3 visto@3 una@3 +/ .	tú no has visto una . 	33333
24	sí@3 los@3 [/] los@3 bloquecitos@3 esos@3 .	sí los bloquecitos esos . 	3333
25	+< los@3 bloquecitos@3 esos@3 para@3 ponerlos@3 en@3 el@3 medio@3 .	los bloquecitos esos para ponerlos en el medio . 	33333333
26	sí@3 .	sí . 	3
27	donde@3 estaban@3 las@3 tablitas@3 esas@3 .	donde estaban las tablitas esas . 	33333
28	en@3 lo@3 que@3 hicieron@3 de@3 concreto@3 .	en lo que hicieron de concreto . 	333333
29	ajá@3 .	ajá . 	3
30	pero@3 [//] y@3 pero@3 eso@3 lo@3 que@3 va@3 a@3 ser@3 como@3 un@3 pedacito@3 de@3 [/] de@3 [/] de@3 tile@2 ahí@3 .	y pero eso lo que va a ser como un pedacito de tile ahí . 	33333333333323
31	+< sí@3 pero@3 a@3 lo@3 mejor@3 xxx .	sí pero a lo mejor . 	33333
32	pero@3 yo@3 no@3 creo@3 que@3 eso@3 sea@3 mucho@3 speed@2 bump@2 .	pero yo no creo que eso sea mucho speed bump . 	3333333322
33	bueno@3 .	bueno . 	3
34	eso@3 más@3 bien@3 yo@3 creo@3 que@3 lo@3 que@3 va@3 a@3 hacer@3 es@3 como@3 un@3 adorno@3 pero@3 .	eso más bien yo creo que lo que va a hacer es como un adorno pero . 	3333333333333333
35	baja@3 la@3 velocidad@3 ahí@3 ?	baja la velocidad ahí ? 	3333
36	pero@3 la@3 calle@3 no@3 la@3 van@3 a@3 hacer@3 no@3 ?	pero la calle no la van a hacer no ? 	333333333
37	sí@3 la@3 van@3 a@3 asfaltar@3 +/ .	sí la van a asfaltar . 	33333
38	+< pero@3 es@3 que@3 yo@3 no@3 entiendo@3 .	pero es que yo no entiendo . 	333333
39	porque@3 primero@3 se@3 asfalta@3 antes@3 de@3 poner@3 el@3 [/] el@3 [//] la@3 hierba@3 .	porque primero se asfalta antes de poner la hierba . 	333333333
40	bueno@3 .	bueno . 	3
41	no@3 que@3 yo@3 sepa@3 .	no que yo sepa . 	3333
42	sí@3 sí@3 sí@3 no@3 tiene(s)@3 [/] tienes@3 razón@3 .	sí sí sí no tienes razón . 	333333
43	el@3 asfalto@3 era@3 +/ .	el asfalto era . 	333
44	+< están@3 [/] están@3 gastando@3 doble@3 dinero@3 ahí@3 .	están gastando doble dinero ahí . 	33333
45	el@3 asfalto@3 era@3 para@3 que@3 lo@3 hubieran@3 hecho@3 primero@3 .	el asfalto era para que lo hubieran hecho primero . 	333333333
46	hubieran@3 limpiado@3 todos@3 los@3 leftovers@2 de@3 asfalto@3 y@3 toda@3 esa@3 cosa@3 .	hubieran limpiado todos los leftovers de asfalto y toda esa cosa . 	33332333333
47	entonces@3 después@3 # haber@3 sembrado@3 la@3 hierba@3 .	entonces después haber sembrado la hierba . 	333333
48	haber@3 recogido@3 .	haber recogido . 	33
49	limpiado@3 .	limpiado . 	3
50	y@3 ya@3 acabado@3 y@3 eso@3 .	y ya acabado y eso . 	33333
51	pero@3 bueno@3 ellos@3 tendrán@3 su@3 idea@3 .	pero bueno ellos tendrán su idea . 	333333
52	y@3 el@3 parquecito@3 viste@3 que@3 van@3 a@3 hacer@3 ?	y el parquecito viste que van a hacer ? 	33333333
53	aquí@3 atrás@3 ?	aquí atrás ? 	33
54	+< el@3 parquecito@3 .	el parquecito . 	33
55	no@3 no@3 me@3 he@3 fijado@3 .	no no me he fijado . 	33333
56	+< no@3 viste@3 que@3 te@3 mandaron@3 una@3 hoja@3 hoy@3 con@3 todo@3 lo@3 de@3 [/] del@3 meeting@2 ?	no viste que te mandaron una hoja hoy con todo lo del meeting ? 	3333333333332
57	+< no@3 # no@3 no@3 e(staba)@3 [/] e(staba)@3 [//] estaba@3 en@3 la@3 puerta@3 .	no no no estaba en la puerta . 	3333333
58	cuando@3 salimos@3 que@3 nos@3 íbamos@3 pal(@3 bicycle@2 shop@2 .	cuando salimos que nos íbamos pal bicycle shop . 	33333322
59	mmhm@0 .	mmhm . 	0
60	estaba@3 puesto@3 en@3 la@3 puerta@3 y@3 yo@3 lo@3 tiré@3 para@3 dentro@3 de@3 la@3 casa@3 y@3 nos@3 fuimos@3 .	estaba puesto en la puerta y yo lo tiré para dentro de la casa y nos fuimos . 	33333333333333333
61	y@3 ahora@3 les@3 [///] ya@3 vi@3 que@3 lo@3 había@3 sacado@3 de@3 [/] de@3 la@3 maleta@3 .	y ahora ya vi que lo había sacado de la maleta . 	33333333333
62	pero@3 <no@3 me@3 había@3 fijado@3> [/] # <no@3 me@3 había@3> [//] no@3 me@3 he@3 fijado@3 qué@3 cosa@3 hay@3 dentro@3 .	pero no me he fijado qué cosa hay dentro . 	333333333
63	&=sigh .	. 	
64	y@3 <se@3 ha@3 &pa> [///] está@3 rico@3 el@3 tiempo@3 .	y está rico el tiempo . 	33333
65	it's@2 beautiful@2 .	it's beautiful . 	22
66	+< mmhm@0 mmhm@0 mmhm@0 .	mmhm mmhm mmhm . 	000
67	(es)tá@3 tan@3 lindo@3 .	está tan lindo . 	333
68	sí@3 .	sí . 	3
69	+< &=cough .	. 	
70	esta@3 terraza@3 déjame@3 decirte@3 que@3 vale@3 el@3 precio@3 de@3 la@3 casa@3 .	esta terraza déjame decirte que vale el precio de la casa . 	33333333333
71	xxx espacio@3 .	espacio . 	3
72	+< y@3 eso@3 que@3 no@3 la@3 has@3 puesto@3 en@3 una@3 # cómo@3 se@3 llama@3 esto@3 una@3 # un@3 hammock@2 de@3 esos@3 .	y eso que no la has puesto en una cómo se llama esto una un hammock de esos . 	333333333333333233
73	una@3 hamaca@3 ?	una hamaca ? 	33
74	una@3 hamaca@3 .	una hamaca . 	33
75	no@3 .	no . 	3
76	no@3 te@3 ha@3 dado@3 por@3 eso@3 ?	no te ha dado por eso ? 	333333
77	xxx ahí@3 mira@3 entre@3 las@3 dos@3 palmas@3 las@3 puede@3 poner@3 ahí@3 .	ahí mira entre las dos palmas las puede poner ahí . 	3333333333
78	+< ahí@3 se@3 pudiera@3 poner@3 sí@3 .	ahí se pudiera poner sí . 	33333
79	yo@3 tengo@3 una@3 que@3 cada@3 vez@3 que@3 nos@3 vamos@3 camping@2 we@2 take@2 it@2 .	yo tengo una que cada vez que nos vamos camping we take it . 	3333333332222
80	and@2 I@2 set@2 it@2 up@2 <in@2 the@2> [/] in@2 the@2 campground@2 .	and I set it up in the campground . 	22222222
81	pero@3 # no@3 aquí@3 no@3 se@3 nos@3 ha@3 ocurrido@3 como@3 aquí@3 lo@3 que@3 pasa@3 es@3 que@3 the@2 [/] the@2 ground@2 in@2 the@2 back@2 it's@2 # slanted@2 .	pero no aquí no se nos ha ocurrido como aquí lo que pasa es que the ground in the back it's slanted . 	3333333333333332222222
82	yeah@2 .	yeah . 	2
83	it's@2 not@2 even@2 .	it's not even . 	222
84	so:@2 # that's@2 something@2 to@2 +.. .	so that's something to . 	2222
85	pero@3 sí@3 se@3 pudieran@3 poner@3 un@3 par@3 de@3 tubos@3 o@3 algo@3 # so@2 we@2 could@2 uh@0 # install@2 the@2 hammock@2 .	pero sí se pudieran poner un par de tubos o algo so we could uh install the hammock . 	333333333332220222
86	xxx this@2 is@2 great@2 back@2 here@2 .	this is great back here . 	22222
87	mmhm@0 yeah@2 .	mmhm yeah . 	02
88	and@2 this@2 month@2 that@2 is@2 pretty@2 cool@2 .	and this month that is pretty cool . 	2222222
89	it's@2 really@2 really@2 nice@2 .	it's really really nice . 	2222
90	when@2 it@2 gets@2 to@2 July@2 and@2 August@2 it@2 gets@2 hot@2 .	when it gets to July and August it gets hot . 	2222222222
91	you@2 gotta@2 wait@2 until@2 almost@2 the@2 end@2 of@2 the@2 day@2 .	you gotta wait until almost the end of the day . 	2222222222
92	that@2 # starts@2 cooling@2 off@2 a@2 little@2 bit@2 to@2 be@2 out@2 here@2 .	that starts cooling off a little bit to be out here . 	22222222222
93	at@2 [/] a(t)@2 [/] at@2 three@2 thirty@2 four@2 o'clock@2 it's@2 fine@2 .	at three thirty four o'clock it's fine . 	2222222
94	+< ah@2 but@2 thank@2 God@2 you@2 don't@2 have@2 to@2 worry@2 about@2 a@2 pool@2 .	ah but thank God you don't have to worry about a pool . 	222222222222
95	bueno@3 we@2 +/ .	bueno we . 	32
96	because@2 pool(s)@2 are@2 good@2 for@2 when@2 you@2 have@2 smaller@2 kids@2 but@2 already@2 .	because pools are good for when you have smaller kids but already . 	222222222222
97	they@2 don't@2 even@2 wanna@2 jump@2 in@2 it@2 .	they don't even wanna jump in it . 	2222222
98	eh@0 we@2 had@2 a@2 hard@2 time@2 finding@2 the@2 house@2 .	eh we had a hard time finding the house . 	022222222
99	because@2 we@2 were@2 looking@2 for@2 a@2 house@2 in@2 Miami@2 Lakes@2 on@2 the@2 lake@2 without@2 the@2 pool@2 .	because we were looking for a house in Miami Lakes on the lake without the pool . 	2222222222222222
100	and@2 that's@2 [//] that@2 made@2 it@2 very@2 difficult@2 in@2 nineteen@2 ninety@2 eight@2 when@2 we@2 bought@2 here@2 finding@2 that@2 .	and that made it very difficult in nineteen ninety eight when we bought here finding that . 	2222222222222222
101	we@2 couldn't@2 find@2 it@2 .	we couldn't find it . 	2222
102	we@2 couldn't@2 find@2 any@2 house@2 +/ .	we couldn't find any house . 	22222
103	+< most@2 of@2 the@2 houses@2 xxx have@2 pool@2 .	most of the houses have pool . 	222222
104	+< they@2 all@2 have@2 pools@2 .	they all have pools . 	2222
105	and@2 then@2 we@2 came@2 across@2 this@2 one@2 .	and then we came across this one . 	2222222
106	&=cough .	. 	
107	que@3 la@3 est(aban)@3 [/] estaban@3 vendiendo@3 desde@3 abril@3 .	que la estaban vendiendo desde abril . 	333333
108	el@3 viejito@3 se@3 había@3 muerto@3 .	el viejito se había muerto . 	33333
109	la@3 estaban@3 vendiendo@3 desde@3 abril@3 .	la estaban vendiendo desde abril . 	33333
110	+< ya@3 yo@3 me@3 recuerdo@3 .	ya yo me recuerdo . 	3333
111	habían@3 bajado@3 el@3 precio@3 un@3 viaje@3 .	habían bajado el precio un viaje . 	333333
112	y@3 entonces@3 como@3 en@3 agosto@3 # que@3 nosotros@3 encontramos@3 la@3 casa@3 habían@3 vuelto@3 a@3 bajar@3 el@3 precio@3 .	y entonces como en agosto que nosotros encontramos la casa habían vuelto a bajar el precio . 	3333333333333333
113	y@3 entonces@3 negociamos@3 con@3 [/] con@3 la@3 hija@3 de@3 Lucía@3 la@3 señora@3 que@3 vive@3 aquí@3 .	y entonces negociamos con la hija de Lucía la señora que vive aquí . 	3333333333333
114	+< mmhm@0 .	mmhm . 	0
115	xxx and@2 we@2 # got@2 it@2 pero@3 .	and we got it pero . 	22223
116	a@2 house@2 on@2 the@2 lake@2 without@2 a@2 pool@2 is@2 almost@2 impossible@2 # to@2 find@2 .	a house on the lake without a pool is almost impossible to find . 	2222222222222
117	but@2 you've@2 done@2 a@2 lot@2 to@2 this@2 house@2 .	but you've done a lot to this house . 	22222222
118	+< mmhm@0 yeah@2 .	mmhm yeah . 	02
119	you@2 have@2 done@2 so@2 much@2 .	you have done so much . 	22222
120	it's@2 incredible@2 .	it's incredible . 	22
121	+< yeah@2 .	yeah . 	2
122	y@3 ahora@3 vamos@3 a@3 hacerle@3 el@3 baño@3 .	y ahora vamos a hacerle el baño . 	3333333
123	yeah@2 .	yeah . 	2
124	porque@3 el@3 baño@3 está@3 el@3 baño@3 original@3 .	porque el baño está el baño original . 	3333333
125	eh@0 we@2 are@2 gonna@2 redo@2 the@2 bathroom@2 .	eh we are gonna redo the bathroom . 	0222222
126	ah@0 my@2 idea@2 originally@2 was@2 just@2 to@2 leave@2 the@2 tub@2 .	ah my idea originally was just to leave the tub . 	0222222222
127	y@3 change@2 everything@2 else@2 .	y change everything else . 	3222
128	pero@3 ahora@3 the@2 new@2 idea@2 is@2 gonna@2 be@2 that@2 # we@2 are@2 gonna@2 to@2 replace@2 everything@2 .	pero ahora the new idea is gonna be that we are gonna to replace everything . 	332222222222222
129	change@2 +/ .	change . 	2
130	+< make@2 it@2 a@2 shower@2 .	make it a shower . 	2222
131	you@2 don't@2 like@2 showers@2 ?	you don't like showers ? 	2222
132	+< no@2 we@2 are@2 gonna@2 put@2 <a@2 t(ub)> [/] a@2 tub@2 but@2 a@2 new@2 tub@2 .	a tub but a new tub . 	222222
133	oh@0 ok@0 .	oh ok . 	00
134	because@2 it's@2 gonna@2 be@2 very@2 hard@2 to@2 leave@2 an@2 old@2 tub@2 .	because it's gonna be very hard to leave an old tub . 	22222222222
135	and@2 then@2 match@2 everything@2 else@2 to@2 the@2 old@2 tub@2 .	and then match everything else to the old tub . 	222222222
136	so@2 kind@2 of@2 a@2 +.. .	so kind of a . 	2222
137	we@2 are@2 gonna@2 re(do)@2 [/] redo@2 the@2 whole@2 thing@2 .	we are gonna redo the whole thing . 	2222222
138	<cambiar@3 las@3 paredes@3> [//] quitar@3 las@3 paredes@3 poner@3 la@3 [//] los@3 dry@2 walls@2 esos@3 nuevos@3 .	quitar las paredes poner los dry walls esos nuevos . 	333332233
139	que@3 no@3 deja@3 que@3 [/] que@3 no@3 asome@3 la@3 humedad@3 .	que no deja que no asome la humedad . 	33333333
140	+< humidity@2 .	humidity . 	2
141	que@3 ah@0 eh@0 eh@0 son@3 como@3 waterproof@2 .	que ah eh eh son como waterproof . 	3000332
142	mmhm@0 .	mmhm . 	0
143	y@3 xxx entonces@3 también@3 .	y entonces también . 	333
144	eh@0 llevan@3 los@3 [//] las@3 losas@3 los@3 ladrillos@3 los@3 +.. .	eh llevan las losas los ladrillos los . 	0333333
145	para@3 arriba@3 .	para arriba . 	33
146	hasta@3 arriba@3 hasta@3 el@3 techo@3 .	hasta arriba hasta el techo . 	33333
147	y@3 aquí@3 antes@3 was@2 half@2 way@2 .	y aquí antes was half way . 	333222
148	sí@3 ahora@3 están@3 eh@0 más@3 o@3 menos@3 al@3 nivel@3 de@3 la@3 ventana@3 .	sí ahora están eh más o menos al nivel de la ventana . 	333033333333
149	xxx .	. 	
150	+< mmhm@0 .	mmhm . 	0
151	y@3 hay@3 lugares@3 que@3 alrededor@3 de(l)@3 [/] del@3 inodoro@3 que@3 están@3 bajitos@3 bajitos@3 .	y hay lugares que alrededor del inodoro que están bajitos bajitos . 	33333333333
152	entonces@3 llevarlo@3 hasta@3 arriba@3 .	entonces llevarlo hasta arriba . 	3333
153	después@3 que@3 hagamos@3 uno@3 posiblemente@3 hagamos@3 el@3 otro@3 .	después que hagamos uno posiblemente hagamos el otro . 	33333333
154	y@3 ya@3 entonces@3 ahora@3 quiero@3 eh:@0 los@3 regadíos@3 [//] the@2 sprinkler@2 system@2 arreglarlos@3 y:@3 +.. .	y ya entonces ahora quiero eh los the sprinkler system arreglarlos y . 	333330322233
155	empezar@3 xxx por@3 retirarnos@3 .	empezar por retirarnos . 	333
156	&=laugh .	. 	
157	hoy@3 fuimos@3 a@3 ver@3 un@3 camper@2 un@3 R_V@3 .	hoy fuimos a ver un camper un R_V . 	33333233
158	yeah@2 .	yeah . 	2
159	sí@3 .	sí . 	3
160	sí@3 porque@3 este@3 the@2 one@2 we@2 have@2 is@2 nice@2 .	sí porque este the one we have is nice . 	333222222
161	but@2 it's@2 fairly@2 small@2 .	but it's fairly small . 	2222
162	and@2 when@2 you@2 get@2 to@2 the@2 place@2 you@2 have@2 to@2 actually@2 put@2 it@2 # up@2 .	and when you get to the place you have to actually put it up . 	22222222222222
163	+< up@2 .	up . 	2
164	and@2 [/] and@2 open@2 it@2 and@2 put@2 it@2 together@2 .	and open it and put it together . 	2222222
165	the@2 other@2 one@2 no@2 .	the other one no . 	2222
166	the@2 other@2 one@2 everything@2 is@2 in@2 place@2 .	the other one everything is in place . 	2222222
167	you@2 just@2 get@2 there@2 .	you just get there . 	2222
168	and@2 press@2 the@2 button@2 .	and press the button . 	2222
169	+< press@2 the@2 xxx .	press the . 	22
170	right@2 .	right . 	2
171	and@2 +/ .	and . 	2
172	+< and@2 everything@2 opens@2 up@2 .	and everything opens up . 	2222
173	you@2 don't@2 even@2 ha(ve)@2 mmhm@0 +/ .	you don't even have mmhm . 	22220
174	+< my@2 friend@2 has@2 an@2 R_V@2 .	my friend has an R_V . 	22222
175	it's@2 beautiful@2 .	it's beautiful . 	22
176	oh@0 my@2 god@2 &ap it@2 looks@2 like@2 a@2 house@2 .	oh my god it looks like a house . 	02222222
177	+< mmhm@0 .	mmhm . 	0
178	mmhm@0 .	mmhm . 	0
179	but@2 it's@2 big@2 .	but it's big . 	222
180	you@2 know@2 .	you know . 	22
181	+< mmhm@0 .	mmhm . 	0
182	and@2 he@2 takes@2 it@2 with@2 him@2 .	and he takes it with him . 	222222
183	I@2 mean@2 it's@2 wow@2 .	I mean it's wow . 	2222
184	he@2 presses@2 the@2 button@2 .	he presses the button . 	2222
185	+< mmhm@0 .	mmhm . 	0
186	that@2 whole@2 thing@2 like@2 opens@2 up@2 .	that whole thing like opens up . 	222222
187	it's@2 got@2 a@2 master@2 bedroom@2 .	it's got a master bedroom . 	22222
188	yeah@2 .	yeah . 	2
189	and@2 a@2 +.. .	and a . 	22
190	mmhm@0 .	mmhm . 	0
191	and@2 two@2 other@2 bedrooms@2 # with@2 a@2 bathroom@2 pretty@2 big@2 .	and two other bedrooms with a bathroom pretty big . 	222222222
192	+< mmhm@0 .	mmhm . 	0
193	I@2 mean@2 it's@2 really@2 nice@2 .	I mean it's really nice . 	22222
194	+< mmhm@0 .	mmhm . 	0
195	the@2 kitchen@2 is@2 beautiful@2 .	the kitchen is beautiful . 	2222
196	yeah@2 .	yeah . 	2
197	yeah@2 .	yeah . 	2
198	flat@2 screen@2 tvs@0 I@2 mean@2 he's@2 got@2 it@2 +.. .	flat screen tvs I mean he's got it . 	22022222
199	+< mmhm@0 .	mmhm . 	0
200	yeah@0 .	yeah . 	0
201	(be)cause@2 he@2 likes@2 to@2 go@2 to@2 the@2 Keys@0 a@2 lot@2 .	because he likes to go to the Keys a lot . 	2222222022
202	yah@2 the@2 Keys@0 are@2 getting@2 very@2 +/ .	yah the Keys are getting very . 	220222
203	expensive@2 .	expensive . 	2
204	+< right@2 difficult@2 expensive@2 and@2 difficult@2 with@2 .	right difficult expensive and difficult with . 	222222
205	it's@2 very@2 hard@2 to@2 find@2 a@2 camping@2 sp(ot)@2 [/] spot@2 over@2 there@2 .	it's very hard to find a camping spot over there . 	2222222222
206	+< space@2 now@2 .	space now . 	22
207	yeah@2 because@2 what@2 they@2 do@2 is@2 they@2 build@2 now@2 on@2 them@2 instead@2 of@2 .	yeah because what they do is they build now on them instead of . 	2222222222222
208	right@2 they@2 close@2 them@2 .	right they close them . 	2222
209	they@2 close@2 American_Outdoors@2 they@2 close@2 a@2 [/] a@2 bunch@2 of@2 them@2 .	they close American_Outdoors they close a bunch of them . 	222222222
210	+< yes@2 because@2 people@2 are@2 making@2 money@2 selling@2 the@2 property@2 so@2 .	yes because people are making money selling the property so . 	2222222222
211	+< mmhm@0 .	mmhm . 	0
212	yeah@2 .	yeah . 	2
213	+< they@2 don't@2 make@2 as@2 much@2 renting@2 as@2 they@2 do@2 selling@2 .	they don't make as much renting as they do selling . 	2222222222
214	yeah@2 .	yeah . 	2
215	and@2 the@2 campgrounds@2 were@2 beautiful@2 places@2 to@2 build@2 on@2 .	and the campgrounds were beautiful places to build on . 	222222222
216	because@2 &a they@2 were@2 huge@2 pieces@2 of@2 property@2 a@2 lot@2 of@2 them@2 right@2 on@2 the@2 ocean@2 on@2 the@2 water@2 .	because they were huge pieces of property a lot of them right on the ocean on the water . 	222222222222222222
217	so@2 you@2 know@2 it@2 was@2 a@2 good@2 deal@2 .	so you know it was a good deal . 	22222222
218	+< yes@2 .	yes . 	2
219	so@2 they@2 closed@2 them@2 .	so they closed them . 	2222
220	+< &=cough .	. 	
221	American_Outdoors@2 was@2 a@2 beautiful@2 place@2 .	American_Outdoors was a beautiful place . 	22222
222	and@2 they@2 just@2 closed@2 it@2 down@2 .	and they just closed it down . 	222222
223	mmhm@0 .	mmhm . 	0
224	wow@0 .	wow . 	0
225	mmhm@0 .	mmhm . 	0
226	viste@3 +/ .	viste . 	3
227	oh@0 look@2 at@2 the@2 little@2 +/ .	oh look at the little . 	02222
228	la@3 coneja@3 de@3 Pepita@0 .	la coneja de Pepita . 	3330
229	es@3 una@3 conejita@3 ?	es una conejita ? 	333
230	+< Cleopatra@0 yeah@2 .	Cleopatra yeah . 	02
231	yeah@2 that's@2 &a .	yeah that's . 	22
232	+< oh@0 my@2 god@2 .	oh my god . 	022
233	when@2 Pepita@0 moved@2 to@2 Tampa@0 she@2 acquired@2 the@2 rabbit@2 .	when Pepita moved to Tampa she acquired the rabbit . 	202202222
234	+< wow@0 .	wow . 	0
235	y:@3 that@2 was@2 her@2 companion@2 .	y that was her companion . 	32222
236	+< is@2 it@2 a@2 miniature@2 ?	is it a miniature ? 	2222
237	no@2 .	no . 	2
238	it's@2 a@2 Dutch@2 &a +.. .	it's a Dutch . 	222
239	+< no@2 .	no . 	2
240	I@2 don't@2 know@2 something@2 Dutch@2 .	I don't know something Dutch . 	22222
241	+< xxx.	xxx. 	
242	ay@3 how@2 pretty@2 .	ay how pretty . 	322
243	+< mmhm@0 .	mmhm . 	0
244	I@2 have@2 a@2 friend@2 of@2 mine@2 that@2 has@2 two@2 miniature@2 rabbits@2 .	I have a friend of mine that has two miniature rabbits . 	22222222222
245	yeah@2 .	yeah . 	2
246	he@2 keep@2 the(m)@2 [///] he@2 has@2 them@2 as@2 pets@2 .	he keep he has them as pets . 	2222222
247	and@2 they@2 are@2 little@2 .	and they are little . 	2222
248	+< mmhm@0 .	mmhm . 	0
249	they@2 don't@2 grow@2 much@2 .	they don't grow much . 	2222
250	+< yeah@2 .	yeah . 	2
251	&=cough .	. 	
252	esta@3 # she@2 got@2 it@2 .	esta she got it . 	3222
253	+< and@2 I@2 have@2 some@2 [///] another@2 doctor@2 over@2 there@2 that@2 has@2 a@2 miniature@2 pig@2 .	and I have another doctor over there that has a miniature pig . 	222222222222
254	yeah@2 .	yeah . 	2
255	that's@2 the@2 daughter's@2 pet@2 .	that's the daughter's pet . 	2222
256	it's@2 a@2 pig@2 .	it's a pig . 	222
257	+< that@2 that@2 real@2 real@2 pig@2 los@3 los@3 los@3 wi(th)@2 with@2 a@2 big@2 belly@2 ?	that that real real pig los los los with with a big belly ? 	2222233322222
258	+< mmhm@0 but@2 the@2 little@2 ones@2 the@2 miniature@2 ones@2 .	mmhm but the little ones the miniature ones . 	02222222
259	yeah@2 .	yeah . 	2
260	yeah@2 .	yeah . 	2
261	how@2 cute@2 .	how cute . 	22
262	everybody@2 has@2 their@2 own@2 pet@2 .	everybody has their own pet . 	22222
263	+< mmhm@0 .	mmhm . 	0
264	how@2 is@2 everything@2 at@2 the@2 hospital@2 ?	how is everything at the hospital ? 	222222
265	good@2 .	good . 	2
266	sí ?	sí ? 	
267	+< it's@2 busy@2 but@2 it's@2 good@2 .	it's busy but it's good . 	22222
268	mmhm@0 .	mmhm . 	0
269	you@2 know@2 they@2 have@2 # more@2 work@2 # less@2 people@2 .	you know they have more work less people . 	22222222
270	yeah@2 and@2 less@2 money@2 .	yeah and less money . 	2222
271	every@2 yeah@2 because@2 you@2 have@2 to@2 work@2 double@2 so@2 .	every yeah because you have to work double so . 	222222222
272	+< yeah@2 .	yeah . 	2
273	yeah@2 yeah@2 we've@2 been@2 three@2 years@2 without@2 a@2 raise@2 .	yeah yeah we've been three years without a raise . 	222222222
274	because@2 +/ .	because . 	2
275	+< I@2 mean@2 what@2 we@2 do@2 is@2 they@2 give@2 us@2 like@2 a@2 raise@2 I@2 mean@2 is@2 # it@2 depends@2 on@2 how@2 much@2 you@2 make@2 .	I mean what we do is they give us like a raise I mean is it depends on how much you make . 	2222222222222222222222
276	but@2 basically@2 what@2 it@2 does@2 is@2 then@2 every@2 year@2 they@2 put@2 up@2 the@2 insurances@2 so@2 high@2 .	but basically what it does is then every year they put up the insurances so high . 	2222222222222222
277	+< mmhm@0 .	mmhm . 	0
278	that@2 the@2 little@2 money@2 that@2 you@2 are@2 making@2 +/ .	that the little money that you are making . 	22222222
279	they@2 take@2 it@2 away@2 .	they take it away . 	2222
280	+, it's@2 # they@2 take@2 it@2 away@2 with@2 the@2 insurance@2 so@2 really@2 you@2 are@2 not@2 seeing@2 much@2 .	it's they take it away with the insurance so really you are not seeing much . 	222222222222222
281	+< sí@3 .	sí . 	3
282	it's@2 just@2 like@2 there's@2 no@2 raise@2 .	it's just like there's no raise . 	222222
283	así@3 mismo@3 nos@3 pasa@3 a@3 nosotros@3 .	así mismo nos pasa a nosotros . 	333333
284	+< you@2 know@2 .	you know . 	22
285	and@2 I'm@2 the@2 one@2 that@2 pays@2 the@2 insurance@2 because@2 my@2 husband's@2 insurance@2 is@2 much@2 more@2 expensive@2 .	and I'm the one that pays the insurance because my husband's insurance is much more expensive . 	2222222222222222
286	that's@2 it@2 yeah@2 .	that's it yeah . 	222
287	yeah@2 because@2 since@2 I@2 work@2 for@2 xxx you@2 know@2 they@2 have@2 a@2 lot@2 more@2 .	yeah because since I work for you know they have a lot more . 	2222222222222
288	+< yeah@2 .	yeah . 	2
289	so@2 you@2 know@2 it's@2 +.. .	so you know it's . 	2222
290	mmhm@0 .	mmhm . 	0
291	insurance@2 is@2 cheaper@2 but@2 still@2 .	insurance is cheaper but still . 	22222
292	+< sí@3 .	sí . 	3
293	ahora@3 one@2 advantage@2 I@2 have@2 is@2 that@2 Pepita@0 since@2 she@2 is@2 working@2 for@2 the@2 county@2 she's@2 gonna@2 be@2 independent@2 .	ahora one advantage I have is that Pepita since she is working for the county she's gonna be independent . 	3222222022222222222
294	I'm@2 not@2 gonna@2 have@2 to@2 carry@2 her@2 # in@2 my@2 insurance@2 any@2 more@2 .	I'm not gonna have to carry her in my insurance any more . 	222222222222
295	yeah@2 .	yeah . 	2
296	because@2 # she'll@2 have@2 her@2 own@2 insurance@2 and@2 for@2 her@2 # working@2 for@2 the@2 county@2 the@2 insurance@2 is@2 free@2 .	because she'll have her own insurance and for her working for the county the insurance is free . 	22222222222222222
297	and@2 for@2 Pepa@0 is@2 free@2 .	and for Pepa is free . 	22022
298	and@2 I@2 pay@2 if@2 it's@2 just@2 for@2 me@2 it's@2 just@2 like@2 thirty@2 dollars@2 a@2 month@2 .	and I pay if it's just for me it's just like thirty dollars a month . 	222222222222222
299	no@2 that's@2 not@2 bad@2 .	no that's not bad . 	2222
300	no@2 that's@2 not@2 bad@2 pero@3 # right@2 now@2 +/ .	no that's not bad pero right now . 	2222322
301	and@2 isn't@2 it@2 better@2 for@2 you@2 to@2 go@2 with@2 her@2 <with@2 the@2> [/] with@2 the@2 county@2 no@2 ?	and isn't it better for you to go with her with the county no ? 	22222222222222
302	no@2 because@2 if@2 we@2 go@2 into@2 the@2 family@2 plan@2 her@2 plan@2 is@2 more@2 expensive@2 than@2 mine@2 .	no because if we go into the family plan her plan is more expensive than mine . 	2222222222222222
303	oh@0 I@2 see@2 .	oh I see . 	022
304	that's@2 why@2 I@2 had@2 it@2 .	that's why I had it . 	22222
305	I@2 had@2 # the@2 insurance@2 under@2 me@2 # for@2 Pepita@0 .	I had the insurance under me for Pepita . 	22222220
306	oh@0 ok@0 .	oh ok . 	00
307	and@2 me@2 because@2 Pepa@0 had@2 her@2 own@2 .	and me because Pepa had her own . 	2220222
308	but@2 now@2 # that@2 Pepa@0 has@2 her@2 own@2 and@2 Pepita@0 is@2 gonna@2 get@2 her@2 own@2 then@2 I@2 can@2 get@2 mine@2 on@2 my@2 own@2 .	but now that Pepa has her own and Pepita is gonna get her own then I can get mine on my own . 	2220222202222222222222
309	it's@2 thirty@2 some@2 dollars@2 which@2 is@2 not@2 a@2 bad@2 deal@2 .	it's thirty some dollars which is not a bad deal . 	2222222222
310	but@2 <my@2 brother@2> [/] my@2 brother@2 was@2 telling@2 me@2 that@2 [/] that@2 [/] that@2 law@2 that@2 came@2 about@2 with@2 the@2 homestead@2 exemption@2 .	but my brother was telling me that law that came about with the homestead exemption . 	222222222222222
311	mmhm@0 .	mmhm . 	0
312	that@2 he@2 was@2 saying@2 that@2 # you@2 know@2 that@2 it's@2 not@2 worth@2 it@2 .	that he was saying that you know that it's not worth it . 	222222222222
313	he@2 was@2 telling@2 me@2 that@2 so@2 many@2 people@2 from@2 the@2 county@2 are@2 gonna@2 lose@2 # jobs@2 because@2 of@2 that@2 .	he was telling me that so many people from the county are gonna lose jobs because of that . 	222222222222222222
314	they@2 are@2 gonna@2 take@2 you@2 know@2 they@2 are@2 gonna@2 cut@2 [//] the@2 cut@2 down@2 xxx is@2 gonna@2 be@2 so@2 drastic@2 .	they are gonna take you know they are gonna the cut down is gonna be so drastic . 	22222222222222222
315	and@2 the@2 people@2 what@2 they@2 are@2 gonna@2 save@2 for@2 the@2 homestead@2 is@2 so@2 minimal@2 that@2 it@2 wasn't@2 worth@2 it@2 .	and the people what they are gonna save for the homestead is so minimal that it wasn't worth it . 	2222222222222222222
316	and@2 I@2 said@2 well@2 .	and I said well . 	2222
317	yeah@2 .	yeah . 	2
318	pero@3 +/ .	pero . 	3
319	+< everybody@2 is@2 looking@2 for@2 # a@2 buck@2 .	everybody is looking for a buck . 	222222
320	pero@3 you@2 know@2 &e &e I@2 don't@2 agree@2 with@2 him@2 .	pero you know I don't agree with him . 	32222222
321	no@2 ?	no ? 	2
322	in@2 two@2 thousand@2 and@2 three@2 # that@2 the@2 taxes@2 were@2 more@2 or@2 less@2 # what@2 they@2 are@2 now@2 .	in two thousand and three that the taxes were more or less what they are now . 	2222222222222222
323	mmhm@0 .	mmhm . 	0
324	right@2 ?	right ? 	2
325	that@2 was@2 five@2 years@2 ago@2 .	that was five years ago . 	22222
326	the@2 salaries@2 of@2 [/] of@2 employees@2 and@2 the@2 hiring@2 of@2 employees@2 have@2 not@2 increased@2 what@2 they@2 increased@2 in@2 revenues@2 .	the salaries of employees and the hiring of employees have not increased what they increased in revenues . 	22222222222222222
327	so@2 where@2 is@2 all@2 that@2 extra@2 money@2 that@2 they@2 made@2 when@2 the@2 [/] when@2 the@2 boom@2 was@2 going@2 on@2 ?	so where is all that extra money that they made when when the boom was going on ? 	22222222222222222
328	xxx tú@3 sabes@3 ?	tú sabes ? 	33
329	it@2 was@2 misspent@2 .	it was misspent . 	222
330	ah:@0 &p they@2 bought@2 things@2 that@2 maybe@2 they@2 didn't@2 need@2 to@2 buy@2 .	ah they bought things that maybe they didn't need to buy . 	02222222222
331	they@2 made@2 +.. .	they made . 	22
332	tú@3 sabes@3 ?	tú sabes ? 	33
333	let's@2 bring@2 it@2 back@2 to@2 # where@2 we@2 are@2 [//] # donde@3 estamos@3 ahora@3 .	let's bring it back to where we donde estamos ahora . 	2222222333
334	tú@3 sabes@3 u(na)@3 [/] una@3 cosa@3 básica@3 # lo@3 [/] lo@3 [/] lo@3 necesario@3 .	tú sabes una cosa básica lo necesario . 	3333333
335	contéstalo@3 [/] contéstalo@3 si@3 quieres@3 .	contéstalo si quieres . 	333
336	así@3 hablas@3 un@3 poco@3 xxx .	así hablas un poco . 	3333
337	+< hello@2 .	hello . 	2
338	hey@2 baby@2 are@2 you@2 back@2 ?	hey baby are you back ? 	22222
339	oh@0 but@2 I'm@2 not@2 home@2 .	oh but I'm not home . 	02222
340	I'm@2 in@2 the@2 xxx .	I'm in the . 	222
341	estoy@3 haciendo@3 una@3 cosa@3 ahí@3 que@3 necesitaba@3 mi@3 +.. .	estoy haciendo una cosa ahí que necesitaba mi . 	33333333
342	cómo@3 se@3 llama@3 esto@3 &e cómo@3 es@3 que@3 se@3 llama@3 esto@3 que@3 estamos@3 haciendo@3 aquí@3 un@3 +.. .	cómo se llama esto cómo es que se llama esto que estamos haciendo aquí un . 	333333333333333
343	es@3 un@3 estudio@3 para@3 la@3 universidad@3 .	es un estudio para la universidad . 	333333
344	un@3 estudio@3 para@3 la@3 universidad@3 .	un estudio para la universidad . 	33333
345	y@3 necesitamos@3 hablar@3 por@3 thirty@2 minutes@2 .	y necesitamos hablar por thirty minutes . 	333322
346	+< xxx .	. 	
347	ya@3 ahorita@3 estamos@3 almost@2 over@2 .	ya ahorita estamos almost over . 	33322
348	ok@0 .	ok . 	0
349	ah@0 se@3 está@3 poniendo@3 xxx dile@3 .	ah se está poniendo dile . 	03333
350	uhoh@0 ya@3 empezó@3 los@3 síntomas@3 de@3 xxx .	uhoh ya empezó los síntomas de . 	033333
351	dile@3 que@3 cuándo@3 se@3 va@3 a@3 comprar@3 la@3 motocicleta@3 .	dile que cuándo se va a comprar la motocicleta . 	333333333
352	alright@2 I'll@2 talk@2 to@2 you@2 bye@2 .	alright I'll talk to you bye . 	222222
353	home@2 .	home . 	2
354	mmhm@0 .	mmhm . 	0
355	se@3 acabó@3 .	se acabó . 	33
356	+< he@2 finished@2 playing@2 golf@2 now@2 .	he finished playing golf now . 	22222
357	&e &e they@2 are@2 still@2 playing@2 ?	they are still playing ? 	2222
358	no@3 no@3 <he@2 &t> [//] he@2 is@2 coming@2 back@2 now@2 .	no no he is coming back now . 	3322222
359	+< xxx .	. 	
360	I@2 [/] I@2 don't@2 think@2 they@2 played@2 all@2 eighteen@2 they@2 played@2 like@2 probably@2 half@2 .	I don't think they played all eighteen they played like probably half . 	222222222222
361	la@3 mitad@3 nueve@3 .	la mitad nueve . 	333
362	mmhm@0 .	mmhm . 	0
363	pero@3 my@2 friend@2 bought@2 a@2 B_M_W@2 and@2 I@2 bought@2 him@2 a@2 xxx because@2 I@2 have@2 another@2 friend@2 at@2 work@2 that@2 he@2 is@2 like@2 oh@0 man@2 he@2 is@2 crazy@2 .	pero my friend bought a B_M_W and I bought him a because I have another friend at work that he is like oh man he is crazy . 	322222222222222222222202222
364	+< sí@3 .	sí . 	3
365	mmhm@0 .	mmhm . 	0
366	but@2 he@2 is@2 crazy@2 crazy@2 crazy@2 crazy@2 .	but he is crazy crazy crazy crazy . 	2222222
367	I@2 don't@2 know@2 how@2 his@2 wife@2 puts@2 up@2 with@2 him@2 you@2 know@2 .	I don't know how his wife puts up with him you know . 	222222222222
368	&=laugh .	. 	
369	he@2 is@2 like@2 one@2 of@2 these@2 wild@2 guys@2 .	he is like one of these wild guys . 	22222222
370	think@2 e(very)@2 [//] he@2 loves@2 every@2 woman@2 every@2 woman@2 loves@2 him@2 .	think he loves every woman every woman loves him . 	222222222
371	&=laugh .	. 	
372	and@2 he@2 bought@2 himself@2 a@2 Beamer@2 .	and he bought himself a Beamer . 	222222
373	and@2 now@2 he@2 bought@2 himself@2 a@2 motorcycle@2 .	and now he bought himself a motorcycle . 	2222222
374	+< qué@3 edad@3 tiene@3 cincuenta@3 ?	qué edad tiene cincuenta ? 	3333
375	está@3 en@3 los@3 cuarenta@3 y@3 pico@3 la@3 edad@3 mala@3 esa@3 .	está en los cuarenta y pico la edad mala esa . 	3333333333
376	+< mmhm@0 yeah@2 .	mmhm yeah . 	02
377	mmhm@0 .	mmhm . 	0
378	and@2 he@2 is@2 a@2 gigolo@2 you@2 know@2 .	and he is a gigolo you know . 	2222222
379	he@2 is@2 one@2 of@2 these@2 guys@2 that's@2 crazy@2 .	he is one of these guys that's crazy . 	22222222
380	+< xxx .	. 	
381	xxx saw@2 an@2 american@2 film@2 .	saw an american film . 	2222
382	&=cough .	. 	
383	yeah@2 .	yeah . 	2
384	sí@3 .	sí . 	3
385	<he@2 is@2 um@2> [//] he@2 is@2 a@2 physician@2 # from@2 Cuba@2 .	he is a physician from Cuba . 	222222
386	and@2 he@2 is@2 er@0 working@2 with@2 us@2 over@2 there@2 and@2 as@2 a@2 case@2 manager@2 .	and he is er working with us over there and as a case manager . 	22202222222222
387	and@2 he@2 is@2 studying@2 for@2 his@2 R_N@2 to@2 see@2 if@2 he@2 can@2 get@2 it@2 now@2 .	and he is studying for his R_N to see if he can get it now . 	222222222222222
388	sí@3 .	sí . 	3
389	you@2 are@2 still@2 at@2 xxx hospital@2 right@2 ?	you are still at hospital right ? 	222222
390	yeah@2 .	yeah . 	2
391	mmhm@0 .	mmhm . 	0
392	I@2 haven't@2 moved@2 from@2 there@2 because@2 it's@2 so@2 convenient@2 .	I haven't moved from there because it's so convenient . 	222222222
393	and@2 you@2 know@2 I@2 xxx # other@2 offers@2 .	and you know I other offers . 	222222
394	+< hmm@0 .	hmm . 	0
395	but@2 don't@2 wanna@2 go@2 in@2 the@2 street@2 [?] any_more@2 .	but don't wanna go in the street any_more . 	22222222
396	yeah@2 .	yeah . 	2
397	you@2 know@2 because@2 with@2 sales@2 you@2 can@2 do@2 a@2 lot@2 you@2 can@2 make@2 a@2 lot@2 more@2 money@2 .	you know because with sales you can do a lot you can make a lot more money . 	22222222222222222
398	yeah@2 .	yeah . 	2
399	in@2 the@2 industry@2 .	in the industry . 	222
400	mmhm@0 .	mmhm . 	0
401	but@2 it's@2 just@2 that@2 you@2 have@2 to@2 drive@2 around@2 so@2 much@2 .	but it's just that you have to drive around so much . 	22222222222
402	you@2 know@2 cars@2 everything@2 is@2 so@2 expensive@2 .	you know cars everything is so expensive . 	2222222
403	+< no@2 no@2 y@3 .	no no y . 	223
404	right@2 .	right . 	2
405	it's@2 not@2 worth@2 it@2 .	it's not worth it . 	2222
406	it's@2 not@2 worth@2 it@2 being@2 on@2 the@2 streets@2 .	it's not worth it being on the streets . 	22222222
407	+< I@2 go@2 there@2 I@2 do@2 my@2 eight@2 hours@2 .	I go there I do my eight hours . 	22222222
408	and@2 I@2 get@2 out@2 and@2 I@2 go@2 pick@2 up@2 my@2 kid@2 and@2 that's@2 it@2 I'm@2 home@2 .	and I get out and I go pick up my kid and that's it I'm home . 	2222222222222222
409	+< mmhm@0 .	mmhm . 	0
410	you@2 know@2 .	you know . 	22
411	mmhm@0 .	mmhm . 	0
412	no@3 vale@3 la@3 pena@3 estar@3 en@3 la@3 calle@3 como@3 está@3 la@3 calle@3 hoy@3 .	no vale la pena estar en la calle como está la calle hoy . 	3333333333333
413	donde@3 quieran@3 te@3 roban@3 .	donde quieran te roban . 	3333
414	+< no:@3 .	no . 	3
415	te@3 asaltan@3 te@3 matan@3 por@3 cualquier@3 cosa@3 .	te asaltan te matan por cualquier cosa . 	3333333
416	+< er@0 te@3 asaltan@3 # exacto@3 .	er te asaltan exacto . 	0333
417	mira@3 ahí@3 el@3 tú@3 viste@3 como@3 mataron@3 a@3 la@3 gente@3 esa@3 ahí@3 en@3 el@3 Chili's@0 .	mira ahí el tú viste como mataron a la gente esa ahí en el Chili's . 	333333333333330
418	+< la@3 del@3 Chili's@3 sí@3 .	la del Chili's sí . 	3333
419	sí@3 .	sí . 	3
420	pero@3 mi@3 [//] la@3 [/] la@3 gente@3 que@3 vive@3 aquí@3 en@3 Miami_Lakes@0 they@2 get@2 very@2 upset@2 because@2 of@2 that@2 because@2 they@2 say@2 que@3 Chili's@0 was@2 in@2 Miami_Lakes@0 .	pero la gente que vive aquí en Miami_Lakes they get very upset because of that because they say que Chili's was in Miami_Lakes . 	33333330222222222230220
421	and@2 Chili's@0 is@2 not@2 in@2 Miami_Lakes@0 .	and Chili's is not in Miami_Lakes . 	202220
422	+< xxx .	. 	
423	la@3 cincuenta@3 y@3 siete@3 no@3 es@3 Miami_Lakes@0 entienden@3 ?	la cincuenta y siete no es Miami_Lakes entienden ? 	33333303
424	+< no@2 is@2 [/] is@2 [/] <is@2 not@2> [//] is@2 not@2 tha(t)@2 [/] that@2 [/] that's@2 actually@2 unincorporated@2 Dade_County@0 .	is not that's actually unincorporated Dade_County . 	222220
425	that's@2 Miramar@0 .	that's Miramar . 	20
426	+< that's@2 +.. . .	that's . 	2
427	no@2 no@2 that's@2 er@0 Miami_Gardens@0 no@2 ?	no no that's er Miami_Gardens no ? 	222002
428	+< no@2 that's@2 unincorporate(d)@2 [/] no@2 that's@2 incorporated@2 Dade_County@0 that's@2 Dade_County@0 .	no that's no that's incorporated Dade_County that's Dade_County . 	22222020
429	so@2 what@2 [/] what@2 is@2 it@2 called@2 ?	so what is it called ? 	22222
430	Dade_County@0 unincorporated@2 Dade_County@0 .	Dade_County unincorporated Dade_County . 	020
431	so@2 that's@2 Dade@0 +/ .	so that's Dade . 	220
432	+< it's@2 like@2 what@2 we@2 were@2 # before@2 .	it's like what we were before . 	222222
433	before@2 we@2 (be)came@2 a@2 town@2 +/ .	before we became a town . 	22222
434	yeah@2 .	yeah . 	2
435	we@2 were@2 unincorporated@2 Dade_County@0 .	we were unincorporated Dade_County . 	2220
436	the@2 subdivision@2 was@2 Miami_Lakes@0 pero@3 it@2 was@2 unincorporated@2 Dade_County@0 .	the subdivision was Miami_Lakes pero it was unincorporated Dade_County . 	222032220
437	then@2 we@2 became@2 a@2 town@2 .	then we became a town . 	22222
438	they@2 are@2 not@2 a@2 town@2 they@2 are@2 not@2 a@2 city@2 .	they are not a town they are not a city . 	2222222222
439	they@2 are@2 just@2 unincorporated@2 Dade_County@0 .	they are just unincorporated Dade_County . 	22220
440	but@2 do(n't)@2 [/] don't@2 they@2 call@2 that@2 area@2 a@2 certain@2 area@2 and@2 they@2 don't@2 they@2 have@2 a@2 name@2 .	but don't they call that area a certain area and they don't they have a name . 	2222222222222222
441	+< that's@2 Carol_City@0 .	that's Carol_City . 	20
442	Carol_City@0 right@2 ?	Carol_City right ? 	02
443	Carol_City@0 pero@3 +/ .	Carol_City pero . 	03
444	+< ok@0 .	ok . 	0
445	Carol_City@0 is@2 not@2 a@2 city@2 # or@2 a@2 town@2 .	Carol_City is not a city or a town . 	02222222
446	it's@2 a@2 subdivision@2 .	it's a subdivision . 	222
447	ok@0 like@2 we@2 were@2 .	ok like we were . 	0222
448	como@3 Miami@0 like@2 we@2 were@2 .	como Miami like we were . 	30222
449	ah@0 ok@0 .	ah ok . 	00
450	right@2 .	right . 	2
451	tú@3 sabes@3 .	tú sabes . 	33
452	pero@3 cuando@3 se@3 refiere@3 .	pero cuando se refiere . 	3333
453	+< just@2 like@2 after@2 that@2 palmero@3 [?] .	just like after that palmero . 	22223
454	that's@2 not@2 # Miami_Lakes@0 .	that's not Miami_Lakes . 	220
455	Navarro@0 .	Navarro . 	0
456	er@0 los@3 Burger_Kings@0 and@2 McDonalds@0 todo@3 eso@3 pa(ra)@3 allá@3 es@3 .	er los Burger_Kings and McDonalds todo eso para allá es . 	0302033333
457	+< no@3 .	no . 	3
458	unincorporated@2 Dade_County@0 .	unincorporated Dade_County . 	20
459	is@2 Miami_Gardens@0 .	is Miami_Gardens . 	20
460	no@3 no@3 no@3 Miami_Gardens@0 doesn't@2 come@2 across@2 fifty@2 seventh@2 avenue@2 .	no no no Miami_Gardens doesn't come across fifty seventh avenue . 	3330222222
461	+< tampoco@3 .	tampoco . 	3
462	that's@2 sixty@2 seventh@2 avenue@2 .	that's sixty seventh avenue . 	2222
463	if@2 you@2 are@2 gonna@2 call@2 that@2 anything@2 eso@3 es@3 la@3 zona@3 de@3 Palms_Springs_North@0 .	if you are gonna call that anything eso es la zona de Palms_Springs_North . 	2222222333330
464	ok@0 .	ok . 	0
465	eso@3 es@3 lo@3 que@3 le@3 llaman@3 que@3 no@3 es@3 Palms_Springs_North@0 because@2 Palms_Springs_North@0 empieza@3 en@3 la@3 setenta@3 y@3 nueve@3 que@3 es@3 el@3 xxx para@3 allá@3 .	eso es lo que le llaman que no es Palms_Springs_North because Palms_Springs_North empieza en la setenta y nueve que es el para allá . 	33333333302033333333333
466	así@3 que@3 esto@3 es@3 un@3 pequeño@3 pocket@2 que@3 hay@3 ahí@3 .	así que esto es un pequeño pocket que hay ahí . 	3333332333
467	que@3 .	que . 	3
468	que:@3 +/ .	que . 	3
469	+< y@3 entonces@3 por@3 eso@3 le@3 dicen@3 Miami_Lakes@0 .	y entonces por eso le dicen Miami_Lakes . 	3333330
470	+< er@0 le@3 llaman@3 [//] le@3 dicen@3 Miami_Lakes@3 because@2 <es@3 la@3> [//] es@3 el@3 pueblo@3 # o@3 la@3 ciudad@3 más@3 cerca@3 a@3 donde@3 está@3 # le@3 dicen@3 Miami_Lakes@0 .	es el pueblo o la ciudad más cerca a donde está le dicen Miami_Lakes . 	33333333333330
471	tú@3 sabes@3 ?	tú sabes ? 	33
472	pero@3 fíjate@3 una@3 cosa@3 .	pero fíjate una cosa . 	3333
473	siendo@3 nosotros@3 Miami_Lakes@0 y@3 siendo@3 incorporados@3 tú@3 pones@3 +.. .	siendo nosotros Miami_Lakes y siendo incorporados tú pones . 	33033333
474	three@2 three@2 zero@2 one@2 four@2 y@3 sigues@3 saliendo@3 en@3 Hyaleah@2 .	three three zero one four y sigues saliendo en Hyaleah . 	2222233332
475	+< sales@3 a@3 Hyaleah@2 [/] sales@3 a@3 Hyaleah@2 .	sales a sales a Hyaleah . 	33332
476	yeah@2 .	yeah . 	2
477	why@2 don't@2 we@2 get@2 our@2 own@2 zip@2 code@2 ?	why don't we get our own zip code ? 	22222222
478	we@2 are@2 getting@2 our@2 own@2 zip@2 code@2 tres@3 tres@3 cero@3 cuatro@3 .	we are getting our own zip code tres tres cero cuatro . 	22222223333
479	tres@3 tres@3 u(no)@3 [//] cero@3 uno@3 cuatro@3 .	tres tres cero uno cuatro . 	33333
480	no@3 porque@3 tres@3 tres@3 uno@3 cuatro@3 coge@3 mitad@3 de@3 Hyaleah@2 entonces@3 +/ .	no porque tres tres uno cuatro coge mitad de Hyaleah entonces . 	33333333323
481	+< bueno@3 pero@3 supuestamente@3 el@3 cambio@3 viene@3 en@3 que@3 # er@0 tres@3 tres@3 cero@3 uno@3 cuatro@3 va@3 a@3 ser@3 Miami_Lakes@0 .	bueno pero supuestamente el cambio viene en que er tres tres cero uno cuatro va a ser Miami_Lakes . 	333333330333333330
482	y@3 cuándo@3 ?	y cuándo ? 	33
483	no@3 sé@3 .	no sé . 	33
484	pero@3 eso@3 lo@3 dijo@3 +.. .	pero eso lo dijo . 	3333
485	(be)cause@2 I@2 keep@2 telling@2 like@2 if@2 you@2 call@2 a@2 credit@2 card@2 you@2 call@2 somebody@2 and@2 you@2 give@2 them@2 an@2 address@2 and@2 you@2 tell@2 them@2 Miami_Lakes@0 they@2 are@2 like@2 no@2 madam@2 and@2 ok@0 Hyaleah@0 .	because I keep telling like if you call a credit card you call somebody and you give them an address and you tell them Miami_Lakes they are like no madam and ok Hyaleah . 	222222222222222222222222022222200
486	+< er@0 mmhm@0 .	er mmhm . 	00
487	right@2 .	right . 	2
488	because@2 if@2 not@2 they@2 don't@2 know@2 where@2 to@2 put@2 you@2 know@2 they@2 don't@2 know@2 where@2 to@2 send@2 you@2 the@2 stuff@2 .	because if not they don't know where to put you know they don't know where to send you the stuff . 	22222222222222222222
489	+< sí@3 .	sí . 	3
490	sí@3 pero@3 fíjate@3 # eso@3 no@3 es@3 una@3 cosa@3 que@3 tiene@3 que@3 hacer@3 el@3 town@2 of@2 Miami_Lakes@0 .	sí pero fíjate eso no es una cosa que tiene que hacer el town of Miami_Lakes . 	3333333333333220
491	eso@3 es@3 una@3 cosa@3 que@3 la@3 tiene@3 que@3 hacer@3 el@3 gobierno@3 federal@3 en@3 la@3 parte@3 de@3 [//] del@3 [/] del@3 post@2 office@2 [/] del@3 correo@3 .	eso es una cosa que la tiene que hacer el gobierno federal en la parte del post del correo . 	3333333333333333233
492	mmhm@0 .	mmhm . 	0
493	ellos@3 son@3 los@3 que@3 tienen@3 que@3 hacer@3 esos@3 cambios@3 .	ellos son los que tienen que hacer esos cambios . 	333333333
494	y@3 supuestamente@3 they@2 are@2 in@2 the@2 process@2 de@3 hacer@3 ese@3 cambio@3 .	y supuestamente they are in the process de hacer ese cambio . 	33222223333
495	de@3 cambiar@3 # del@3 correo@3 de@3 que@3 tres@3 tres@3 cero@3 uno@3 cuatro@3 va@3 a@3 ser@3 # solamente@3 # Miami_Lakes@0 todo@3 lo@3 que@3 es@3 Miami_Lakes@0 lo@3 que@3 está@3 dentro@3 de@3 [/] # de@3 el@3 town@2 de@3 Miami_Lakes@0 que@3 incluye@3 del@3 lado@3 de@3 allá@3 pal@3 metro@3 Royal_Oaks@0 ahora@3 es@3 Miami_Lakes@0 .	de cambiar del correo de que tres tres cero uno cuatro va a ser solamente Miami_Lakes todo lo que es Miami_Lakes lo que está dentro de el town de Miami_Lakes que incluye del lado de allá pal metro Royal_Oaks ahora es Miami_Lakes . 	333333333333333033330333333230333333330330
496	+< ok@0 .	ok . 	0
497	right@2 .	right . 	2
498	y@3 eso@3 ahora@3 no@3 es@3 tres@3 tres@3 cero@3 uno@3 cuatro@3 eso@3 es@3 tres@3 tres@3 uno@3 cero@3 cin(co)@3 uno@3 quince@3 .	y eso ahora no es tres tres cero uno cuatro eso es tres tres uno cero cinco uno quince . 	3333333333333333333
499	correcto@3 .	correcto . 	3
500	+< es@3 otro@3 zip@2 code@2 .	es otro zip code . 	3322
501	entonces@3 ese@3 zip@2 code@2 lo@3 van@3 a@3 cambiar@3 también@3 a@3 que@3 sea@3 tres@3 tres@3 cero@3 uno@3 cuatro@3 porque@3 va@3 a@3 ser@3 Miam(i)@0 lo@3 que@3 está@3 dentro@3 de@3 la@3 ciudad@3 de@3 Miami_Lakes@0 .	entonces ese zip code lo van a cambiar también a que sea tres tres cero uno cuatro porque va a ser Miami lo que está dentro de la ciudad de Miami_Lakes . 	3322333333333333333330333333330
502	<es@3 eso@3> [?] .	. 	
503	eso@3 fue@3 lo@3 que@3 yo@3 oí@3 y@3 lo@3 que@3 dijeron@3 .	eso fue lo que yo oí y lo que dijeron . 	3333333333
504	si@3 lo@3 hacen@3 o@3 no@3 lo@3 hacen@3 .	si lo hacen o no lo hacen . 	3333333
505	pero@3 va@3 a@3 ser@3 tremendo@3 rollo@3 pa(ra)@3 la@3 gente@3 .	pero va a ser tremendo rollo para la gente . 	333333333
506	+< sí@3 .	sí . 	3
507	&=coughs .	. 	
508	er:@0 pero@3 bueno@3 .	er pero bueno . 	033
509	hoy@3 me@3 llegaron@3 las@3 [/] las@3 planillas@3 para@3 el@3 W@0 ten@2 forty@2 .	hoy me llegaron las planillas para el W ten forty . 	3333333022
510	sabes@3 es@3 la@3 ten@2 forty@2 .	sabes es la ten forty . 	33322
511	xxx .	. 	
512	la@3 que@3 tienen@3 que@3 hacer@3 ahora@3 la@3 [//] los@3 viejitos@3 que@3 están@3 retirados@3 .	la que tienen que hacer ahora los viejitos que están retirados . 	33333333333
513	ah@0 sí@3 .	ah sí . 	03
514	+< para@3 que@3 sepan@3 .	para que sepan . 	333
515	sí@3 .	sí . 	3
516	para@3 que@3 puedan@3 # entonces@3 mandarles@3 los@3 trescientos@3 dólares@3 .	para que puedan entonces mandarles los trescientos dólares . 	33333333
517	+< para@3 que@3 le@3 den@3 los@3 quinientos@3 pesos@3 sí@3 .	para que le den los quinientos pesos sí . 	33333333
518	sí@3 son@3 las@3 ten@2 forty@2 or@2 ten@2 ninety@2 nine@2 ?	sí son las ten forty or ten ninety nine ? 	333222222
519	ten@2 forty@2 .	ten forty . 	22
520	yo@3 la@3 tengo@3 ahí@3 en@3 la@3 casa@3 .	yo la tengo ahí en la casa . 	3333333
521	mmhm@0 .	mmhm . 	0
522	ya@3 a@3 mi@3 hermano@3 se@3 lo@3 hizo@3 mi@3 padre@3 .	ya a mi hermano se lo hizo mi padre . 	333333333
523	ya@3 se@3 lo@3 hicieron@3 ?	ya se lo hicieron ? 	3333
524	sí@3 porque@3 ellos@3 normalmente@3 no@3 hacen@3 income@2 taxes@2 porque@3 están@3 retirados@3 .	sí porque ellos normalmente no hacen income taxes porque están retirados . 	33333322333
525	+< porque@3 tiene@3 que@3 +/ .	porque tiene que . 	333
526	correcto@3 pero@3 arriba@3 hay@3 que@3 ponerle@3 un@3 nombre@3 .	correcto pero arriba hay que ponerle un nombre . 	33333333
527	mmhm@0 .	mmhm . 	0
528	sí@3 .	sí . 	3
529	+< tienes@3 que@3 ponerle@3 algo@3 arriba@3 de@3 la@3 planilla@3 pa(ra)@3 que@3 sepan@3 que@3 es@3 para@3 eso@3 .	tienes que ponerle algo arriba de la planilla para que sepan que es para eso . 	333333333333333
530	exacto@3 .	exacto . 	3
531	<ya@3 se@3 lo@3 puso@3> [//] ya@3 se@3 lo@3 hizo@3 ?	ya se lo hizo ? 	3333
532	mmhm@0 ella@3 se@3 lo@3 está@3 haciendo@3 xxx ese@3 es@3 el@3 campo@3 de@3 ella@3 .	mmhm ella se lo está haciendo ese es el campo de ella . 	033333333333
533	oh@0 ok@0 .	oh ok . 	00
534	ella@3 es@3 an@2 accountant@2 .	ella es an accountant . 	3322
535	y@3 ella@3 es@3 la@3 que@3 le@3 hace@3 +/ .	y ella es la que le hace . 	3333333
536	+< no@3 porque@3 yo@3 te@3 dij(e)@3 porque@3 como@3 la@3 prima@3 de@3 Manuel@0 trabaja@3 para@3 el@3 I_R_S@2 .	no porque yo te dije porque como la prima de Manuel trabaja para el I_R_S . 	333333333303332
537	ell(a)@3 [/] ella@3 nos@3 mandó@3 las@3 planillas@3 y@3 nos@3 mandó@3 las@3 copias@3 de@3 cómo@3 llenárselo@3 .	ella nos mandó las planillas y nos mandó las copias de cómo llenárselo . 	3333333333333
538	porque@3 yo@3 tengo@3 las@3 dos@3 viejitas@3 mías@3 que@3 ya@3 ellas@3 no@3 hacen@3 +/ .	porque yo tengo las dos viejitas mías que ya ellas no hacen . 	333333333333
539	si@3 acaso@3 hazme@3 [/] hazme@3 cuando@3 tengas@3 un@3 chance@2 hazme@3 una@3 copia@3 .	si acaso hazme cuando tengas un chance hazme una copia . 	3333332333
540	de:@3 cómo@3 se@3 llena@3 .	de cómo se llena . 	3333
541	yo@3 tengo@3 ahí@3 ella@3 me@3 él@3 él@3 me@3 dio@3 una@3 copia@3 que@3 ahora@3 yo@3 tengo@3 que@3 hacérsela@3 pero@3 yo@3 te@3 la@3 voy@3 a@3 hacer@3 una@3 copia@3 esa@3 .	yo tengo ahí ella me él él me dio una copia que ahora yo tengo que hacérsela pero yo te la voy a hacer una copia esa . 	333333333333333333333333333
542	+< xxx .	. 	
543	esa@3 exacto@3 .	esa exacto . 	33
544	ok@0 .	ok . 	0
545	yo@3 te@3 la@3 hago@3 mañana@3 en@3 el@3 trabajo@3 .	yo te la hago mañana en el trabajo . 	33333333
546	+< xxx porque@3 yo@3 sé@3 que@3 xxx le@3 hace@3 xxx .	porque yo sé que le hace . 	333333
547	+< pero@3 yo@3 sé@3 que@3 hay@3 que@3 ponerle@3 algo@3 arriba@3 # en@3 la@3 planilla@3 .	pero yo sé que hay que ponerle algo arriba en la planilla . 	333333333333
548	de@3 que@3 es@3 retirado@3 o@3 algo@3 de@3 eso@3 .	de que es retirado o algo de eso . 	33333333
549	tiene@3 un@3 nombre@3 ahora@3 se@3 me@3 olvidó@3 pero@3 tienes@3 que@3 ponerle@3 eso@3 arriba@3 <para@3 que@3> [//] porque@3 si@3 no@3 .	tiene un nombre ahora se me olvidó pero tienes que ponerle eso arriba porque si no . 	3333333333333333
550	sí@3 .	sí . 	3
551	es@3 igual@3 que@3 cuando@3 uno@3 manda@3 los@3 cheques@3 al@3 I_R_S@2 .	es igual que cuando uno manda los cheques al I_R_S . 	3333333332
552	mmhm@0 .	mmhm . 	0
553	hay@3 que@3 poner@3 el@3 ten@2 ninety@2 nine@2 xxx con@3 el@3 número@3 de@3 social@2 security@2 y@3 toda@3 esa@3 cosa@3 .	hay que poner el ten ninety nine con el número de social security y toda esa cosa . 	33332223333223333
554	que@3 si@3 no@3 no@3 lo@3 acept(an)@3 no@3 no@3 es@3 que@3 no@3 lo@3 acepten@3 si@3 no@3 no@3 te@3 lo@3 acreditan@3 los@3 [/] los@3 xxx tienen@3 que@3 acreditar@3 .	que si no no lo aceptan no no es que no lo acepten si no no te lo acreditan los tienen que acreditar . 	33333333333333333333333
555	+< adonde@3 tienen@3 que@3 acreditarlo@3 .	adonde tienen que acreditarlo . 	3333
556	mmhm@0 .	mmhm . 	0
557	ya@3 creo@3 que@3 falta@3 poco@3 para@3 que@3 se@3 acaben@3 los@3 treinta@3 minutos@3 no@3 ?	ya creo que falta poco para que se acaben los treinta minutos no ? 	3333333333333
558	bueno@3 yo@3 no@3 sé@3 llevamos@3 hablando@3 tiempo@3 .	bueno yo no sé llevamos hablando tiempo . 	3333333
559	+< no@3 sé@3 # casi@3 casi@3 la@3 media@3 hora@3 ya@3 .	no sé casi casi la media hora ya . 	33333333
560	mmhm@0 .	mmhm . 	0
561	y@3 ya@3 se@3 está@3 haciendo@3 de@3 noche@3 ya@3 mañana@3 hay@3 que@3 ir@3 a@3 trabajar@3 .	y ya se está haciendo de noche ya mañana hay que ir a trabajar . 	33333333333333
562	+< mmhm@0 sí@3 .	mmhm sí . 	03
563	hay@3 que@3 cocinar@3 .	hay que cocinar . 	333
564	no@3 yo@3 ya@3 cociné@3 .	no yo ya cociné . 	3333
565	+< ya@3 cocinaste@3 nosotros@3 comimos@3 nosotros@3 fuimos@3 a@3 Bass@2 Pro@2 shop@2 .	ya cocinaste nosotros comimos nosotros fuimos a Bass Pro shop . 	3333333222
566	+< sí@3 .	sí . 	3
567	where@2 ?	where ? 	2
568	Bass@2 Pro@2 shop@2 .	Bass Pro shop . 	222
569	ah@0 ok@0 .	ah ok . 	00
570	allá@3 en@3 Grifeny@0 xxx ninety@2 five@2 .	allá en Grifeny ninety five . 	33022
571	eso@3 que@3 es@3 cuestión@3 de@3 casería@3 y@3 toda@3 esa@3 cosa@3 .	eso que es cuestión de casería y toda esa cosa . 	3333333333
572	+< uhhuh@0 yo@3 he@3 estado@3 ahí@3 sí@3 .	uhhuh yo he estado ahí sí . 	033333
573	y@3 cuando@3 salimos@3 y@3 fuimos@3 a:@3 [/] a@3 xxx county@2 a@3 ver@3 los@3 [/] <los@3 muros@3> [/] los@3 campers@0 .	y cuando salimos y fuimos a county a ver los campers . 	33333323330
574	mmhm@0 .	mmhm . 	0
575	porque@3 andamos@3 pa(ra)@3 [/] pa(ra)@3 el@3 futuro@3 buscando@3 uno@3 más@3 grande@3 .	porque andamos para el futuro buscando uno más grande . 	333333333
576	y@3 de@3 ahí@3 salimos@3 .	y de ahí salimos . 	3333
577	y@3 nos@3 metimos@3 un@3 # barbecue@2 place@2 que@3 hay@3 er:@0 # university@2 and@2 Pince@0 boulevard@2 .	y nos metimos un barbecue place que hay er university and Pince boulevard . 	3333223302202
578	ok@0 .	ok . 	0
579	I@2 know@2 where@2 that@2 is@2 .	I know where that is . 	22222
580	+< allá@3 traen@3 una@3 cosita@3 chiquitica@3 .	allá traen una cosita chiquitica . 	33333
581	pero@3 cocinan@3 tan@3 rico@3 .	pero cocinan tan rico . 	3333
582	yeah@2 .	yeah . 	2
583	yeah@2 yeah@2 .	yeah yeah . 	22
584	what@2 ribs@2 and@2 chicken@2 and@2 all@2 +/ .	what ribs and chicken and all . 	222222
585	+< yeah@2 yeah@2 the@2 whole@2 barbecue@2 smoked@2 barbecue@2 so@2 .	yeah yeah the whole barbecue smoked barbecue so . 	22222222
586	+< yeah@2 .	yeah . 	2
587	it's@2 delicious@2 .	it's delicious . 	22
588	oh@0 that's@2 good@2 .	oh that's good . 	022
589	+< y@3 we@2 were@2 there@2 and@2 Pepita@0 asked@2 er@0 we@2 asked@2 her@2 what@2 she@2 wanted@2 for@2 dinner@2 .	y we were there and Pepita asked er we asked her what she wanted for dinner . 	3222202022222222
590	she@2 said@2 well@2 bring@2 me@2 some@2 ribs@2 .	she said well bring me some ribs . 	2222222
591	so@2 we@2 brought@2 her@2 some@2 ribs@2 so@2 .	so we brought her some ribs so . 	2222222
592	that's@2 funny@2 .	that's funny . 	22
593	+< <she@2 said@2> [/] she@2 said@2 I'll@2 [/] I'll@2 [/] I'll@2 have@2 them@2 for@2 dinner@2 .	she said I'll have them for dinner . 	2222222
594	so@2 got@2 here@2 she@2 ate@2 them@2 .	so got here she ate them . 	222222
595	and@2 I@2 said@2 I@2 thought@2 you@2 were@2 gonna@2 wait@2 for@2 dinner@2 .	and I said I thought you were gonna wait for dinner . 	22222222222
596	me@3 dice@3 no@2 no@2 I'm@2 hungry@2 I'm@2 gonna@2 eat@2 now@2 .	me dice no no I'm hungry I'm gonna eat now . 	3322222222
597	so@2 she@2 ate@2 xxx so@2 .	so she ate so . 	2222
598	ya@3 hoy@3 Pepa@0 no@3 tenía@3 que@3 cocinar@3 .	ya hoy Pepa no tenía que cocinar . 	3303333
599	mmhm@0 .	mmhm . 	0
600	I@2 had@2 [//] I@2 went@2 this@2 morning@2 I@2 Jennie@0 xxx breakfast@2 and@2 then@2 we@2 haven't@2 eaten@2 anything@2 all@2 day@2 .	I I went this morning I Jennie breakfast and then we haven't eaten anything all day . 	2222220222222222
601	Jennie@0 is@2 the@2 little@2 one@2 .	Jennie is the little one . 	02222
602	yeah@2 Maria@0 is@2 working@2 tonight@2 .	yeah Maria is working tonight . 	20222
603	+< mmhm@0 yeah@2 .	mmhm yeah . 	02
604	&=cough .	. 	
605	and@2 she@2 is@2 off@2 already@2 for@2 er@0 +.. .	and she is off already for er . 	2222220
606	mmhm@0 .	mmhm . 	0
607	the@2 schools@2 are@2 off@2 for@2 easter@2 .	the schools are off for easter . 	222222
608	sí@3 .	sí . 	3
609	+< the@2 universities@2 .	the universities . 	22
610	yeah@2 .	yeah . 	2
611	Pepita@0 no@3 estaba@3 ?	Pepita no estaba ? 	033
612	todavía@3 ahora@3 acaban@3 estos@3 días@3 .	todavía ahora acaban estos días . 	33333
613	ella@3 ahora@3 empezó@3 Je(nnie)@0 Jennie@0 allá@3 .	ella ahora empezó Jennie Jennie allá . 	333003
614	ya@3 empezó@3 el@3 spring@2 break@2 .	ya empezó el spring break . 	33322
615	yeah@2 .	yeah . 	2
616	sí@3 yo@3 no@3 sé@3 qué@3 día@3 empieza@3 Pepita@0 pero@3 F_I_U@2 está@3 er@0 .	sí yo no sé qué día empieza Pepita pero F_I_U está er . 	333333303230
617	look@2 yo@3 [//] I@2 found@2 that@2 [/] that@2 [/] that@2 Saint@2 Thomas@2 started@2 too@2 early@2 .	look I found that Saint Thomas started too early . 	222222222
618	they@2 tried@2 to@2 stag@2 .	they tried to stag . 	2222
619	tú@3 sabes@3 .	tú sabes . 	33
620	so@2 not@2 all@2 the@2 kids@2 are@2 out@2 at@2 the@2 same@2 time@2 .	so not all the kids are out at the same time . 	22222222222
621	+< at@2 the@2 same@2 time@2 yeah@2 because@2 it@2 would@2 be@2 atrocious@2 for@2 Miami@2 +.. .	at the same time yeah because it would be atrocious for Miami . 	222222222222
622	mmhm@0 yeah@2 .	mmhm yeah . 	02
623	beach@2 .	beach . 	2
624	yeah@2 .	yeah . 	2
625	&=laugh .	. 	
626	and@2 we@2 get@2 a@2 lot@2 of@2 kids@2 from@2 the@2 outside@2 .	and we get a lot of kids from the outside . 	2222222222
627	yeah@2 .	yeah . 	2
628	that@2 come@2 from@2 # northern@2 states@2 er@0 .	that come from northern states er . 	222220
629	you@2 know@2 traffic@2 is@2 gonna@2 get@2 bad@2 all@2 these@2 days@2 now@2 .	you know traffic is gonna get bad all these days now . 	22222222222
630	+< yeah@2 .	yeah . 	2
631	although@2 # before@2 it@2 used@2 to@2 be@2 Fort_Lauderdale@0 Miami@0 where@2 all@2 the@2 kids@2 came@2 down@2 to@2 .	although before it used to be Fort_Lauderdale Miami where all the kids came down to . 	222222002222222
632	now@2 they@2 are@2 spread@2 all@2 over@2 the@2 place@2 .	now they are spread all over the place . 	22222222
633	yeah@2 .	yeah . 	2
634	they@2 go@2 to@2 Jacksonville@0 they@2 go@2 to@2 Panama_City@0 .	they go to Jacksonville they go to Panama_City . 	22202220
635	tú@3 sabes@3 different@2 places@2 .	tú sabes different places . 	3322
636	mmhm@0 .	mmhm . 	0
637	the@2 Keys@0 a@2 lot@2 of@2 them@2 like@2 to@2 go@2 down@2 there@2 too@2 .	the Keys a lot of them like to go down there too . 	202222222222
638	+< the@2 Keys@0 [/] the@2 Keys@0 .	the the Keys . 	220
639	lo@3 que@3 pasa@3 que@3 the@2 Keys@0 er@0 .	lo que pasa que the Keys er . 	3333200
640	very@2 expensive@2 for@2 them@2 .	very expensive for them . 	2222
641	+< for@2 er@0 er@0 er@0 # college@2 kids@2 es@3 imposible@3 .	for er er er college kids es imposible . 	20002233
642	pero@3 let@2 me@2 tell@2 you@2 Miami_Beach@0 is@2 getting@2 to@2 be@2 the@2 same@2 way@2 .	pero let me tell you Miami_Beach is getting to be the same way . 	3222202222222
643	yeah@2 .	yeah . 	2
644	before@2 the@2 kids@2 used@2 to@2 come@2 to@2 Miami_Beach@0 and@2 hang@2 out@2 but@2 .	before the kids used to come to Miami_Beach and hang out but . 	222222202222
645	+< yeah@2 .	yeah . 	2
646	ya@3 pero@3 .	ya pero . 	33
647	+< first@2 of@2 all@2 they@2 are@2 not@2 renting@2 it@2 to@2 the@2 kids@2 any_more@2 you@2 got@2 to@2 have@2 an@2 adult@2 that@2 would@2 rent@2 the@2 place@2 .	first of all they are not renting it to the kids any_more you got to have an adult that would rent the place . 	22222222222222222222222
648	+< right@2 .	right . 	2
649	and@2 we@2 are@2 talking@2 about@2 # almost@2 two@2 hundred@2 dollars@2 a@2 night@2 minimum@2 # to@2 find@2 [?] anywhere@2 which@2 before@2 for@2 fifty@2 something@2 dollars@2 you@2 can@2 rent@2 out@2 at@2 the@2 beach@2 spend@2 the@2 weekend@2 .	and we are talking about almost two hundred dollars a night minimum to find anywhere which before for fifty something dollars you can rent out at the beach spend the weekend . 	2222222222222222222222222222222
650	+< er@0 yeah@2 .	er yeah . 	02
651	yeah@2 .	yeah . 	2
652	yeah@2 .	yeah . 	2
653	pero@3 everything@2 else@2 # it's@2 cheaper@2 at@2 the@2 beach@2 than@2 in@2 the@2 Keys@0 .	pero everything else it's cheaper at the beach than in the Keys . 	322222222220
654	yeah@2 .	yeah . 	2
655	like@2 restaurants@2 transportation@2 you@2 know@2 .	like restaurants transportation you know . 	22222
656	oh@0 yeah@2 .	oh yeah . 	02
657	ah@0 # in@2 [/] in@2 Miami_Beach@0 er@0 they@2 go@2 to@2 Burger_King@0 they@2 go@2 to@2 McDonalds@0 in@2 the@2 Keys@0 you@2 don't@2 find@2 that@2 mu(ch)@2 that@2 # too@2 often@2 .	ah in Miami_Beach er they go to Burger_King they go to McDonalds in the Keys you don't find that much that too often . 	02002220222022022222222
658	oh@0 yeah@2 .	oh yeah . 	02
659	so@2 if@2 they@2 have@2 to@2 go@2 to@2 regular@2 restaurants@2 es@3 caro@3 .	so if they have to go to regular restaurants es caro . 	22222222233
660	tú@3 sabes@3 algunos@3 de@3 los@3 restaurancitos@3 esos@3 um@0 er@0 # in@2 the@2 Keys@0 er@0 # no@3 son@3 nada@3 del@3 otro@3 mundo@3 pero@3 <te@3 cobran@3> [/] te@3 cobran@3 más@3 que@3 un@3 Burger_King@0 o@3 un@3 MacDonalds@0 so@2 for@2 kids@2 is@2 not@2 # bien@3 bien@3 práctico@3 .	tú sabes algunos de los restaurancitos esos um er in the Keys er no son nada del otro mundo pero te cobran más que un Burger_King o un MacDonalds so for kids is not bien bien práctico . 	3333333002200333333333333033022222333
661	yeah@2 .	yeah . 	2
662	mmhm@0 .	mmhm . 	0
663	&=cough .	. 	
664	xxx estoy@3 mirando@3 el@3 reloj@3 .	estoy mirando el reloj . 	3333
665	&=laugh .	. 	
666	yo@3 creo@3 que@3 hemos@3 hablado@3 bastante@3 .	yo creo que hemos hablado bastante . 	333333
667	está@3 bueno@3 el@3 aparatico@3 ese@3 que@3 tiene@3 # la@3 grabadorecita@3 esa@3 .	está bueno el aparatico ese que tiene la grabadorecita esa . 	3333333333
668	+< xxx grabando@3 a@3 la@3 gente@3 cuando@3 te@3 hacen@3 algo@3 .	grabando a la gente cuando te hacen algo . 	33333333
669	sí@3 .	sí . 	3
670	+< hey@2 here@2 you@2 go@2 .	hey here you go . 	2222
671	er@0 los@3 otros@3 días@3 # sacó@3 Office_Depot@0 # unas@3 tarjeticas@3 # en@3 venta@3 .	er los otros días sacó Office_Depot unas tarjeticas en venta . 	0333303333
672	las@3 de@3 esas@3 de@3 one@2 gig@2 two@2 gigs@2 .	las de esas de one gig two gigs . 	33332222
673	yo@3 fui@3 y@3 compré@3 una@3 pa(ra)@3 mi@3 cámara@3 .	yo fui y compré una para mi cámara . 	33333333
674	pero@3 yo@3 uso@3 la@3 regular@3 la@3 S_T@0 .	pero yo uso la regular la S_T . 	3333330
675	Pepita@0 # en@3 la@3 cámara@3 de@3 ella@3 u(sa)@3 [/] usa@3 una@3 que@3 se@3 llama@3 dualpro@0 o@3 una@3 cosa@3 así@3 .	Pepita en la cámara de ella usa una que se llama dualpro o una cosa así . 	0333333333303333
676	mmhm@0 .	mmhm . 	0
677	que@3 esa@3 nunca@3 la@3 habían@3 puesto@3 en@3 venta@3 pero@3 por@3 fin@3 Office_Depot@0 las@3 puso@3 en@3 venta@3 .	que esa nunca la habían puesto en venta pero por fin Office_Depot las puso en venta . 	3333333333303333
678	y@3 ese@3 día@3 tenían@3 una@3 cosita@3 de@3 estas@3 en@3 venta@3 también@3 .	y ese día tenían una cosita de estas en venta también . 	33333333333
679	un@3 Sandisk@0 que@3 es@3 un@3 M_(P_three)@2 [/] M_P_three@2 player@2 con@3 [/] con@3 un@3 recording@2 [?] un@3 radiecito@3 F_M@3 todo@3 una@3 piececita@3 .	un Sandisk que es un M_P_three player con un recording un radiecito F_M todo una piececita . 	3033322332333333
680	estaba@3 bueno@3 .	estaba bueno . 	33
681	pero@3 cuando@3 llegué@3 na(da)@3 más@3 que@3 tenían@3 el@3 [/] el@3 de@3 muestra@3 .	pero cuando llegué nada más que tenían el de muestra . 	3333333333
682	no@3 tenían@3 ninguno@3 allí@3 .	no tenían ninguno allí . 	3333
683	pero@3 mira@3 before@2 you@2 used@2 to@2 go@2 to@2 the@2 classes@2 in@2 the@2 university@2 .	pero mira before you used to go to the classes in the university . 	3322222222222
684	and@2 you@2 used@2 to@2 be@2 able@2 to@2 record@2 classes@2 .	and you used to be able to record classes . 	222222222
685	+< to@2 record@2 not@2 any_more@2 .	to record not any_more . 	2222
686	I@2 guess@2 not@2 .	I guess not . 	222
687	maybe@2 the@2 teachers@2 are@2 not@2 .	maybe the teachers are not . 	22222
688	yeah@2 .	yeah . 	2
689	&=laugh .	. 	
690	bueno@3 .	bueno . 	3
691	+< they@2 are@2 teaching@2 so@2 properly@2 that@2 they@2 are@2 afraid@2 that@2 they@2 might@2 be@2 recorded@2 or@2 might@2 say@2 something@2 that@2 they@2 shouldn't@2 say@2 and@2 they@2 could@2 +/ .	they are teaching so properly that they are afraid that they might be recorded or might say something that they shouldn't say and they could . 	2222222222222222222222222
692	+< that's@2 [/] that's@2 er@0 .	that's er . 	20
693	you@2 know@2 banish@2 them@2 .	you know banish them . 	2222
694	+< tú@3 sabes@3 opens@2 the@2 door@2 for@2 a@2 lawsuit@2 si@3 pasa@3 cualquier@3 cosa@3 .	tú sabes opens the door for a lawsuit si pasa cualquier cosa . 	332222223333
695	+< yeah@2 .	yeah . 	2
696	tienen@3 al@3 maestro@3 grabado@3 un@3 maestro@3 que@3 diga@3 cualquier@3 disparate@3 en@3 la@3 clase@3 sin@3 querer@3 o@3 queriendo@3 tú@3 sabes@3 lo@3 tienen@3 grabado@3 .	tienen al maestro grabado un maestro que diga cualquier disparate en la clase sin querer o queriendo tú sabes lo tienen grabado . 	3333333333333333333333
697	mmhm@0 .	mmhm . 	0
698	pero@3 this@2 country@2 has@2 gotten@2 .	pero this country has gotten . 	32222
699	es@3 todo@3 lawsuit@2 todo@3 lawsuit@2 .	es todo lawsuit todo lawsuit . 	33232
700	xxx .	. 	
701	todo@3 es@3 un@3 problema@3 todo@3 .	todo es un problema todo . 	33333
702	+< just@2 [/] like@2 the@2 lady@2 that@2 [/] that@2 chocó@3 a@3 Myriam@0 because@2 ella@3 fue@3 la@3 que@3 lo@3 [//] la@3 chocó@3 you@2 know@2 .	like the lady that chocó a Myriam because ella fue la que la chocó you know . 	2222330233333322
703	+< mmhm@0 mmhm@0 .	mmhm mmhm . 	00
704	the@2 lady@2 is@2 already@2 her@2 back@2 hurts@2 this@2 and@2 that@2 everything@2 hurts@2 and@2 I'm@2 like@2 .	the lady is already her back hurts this and that everything hurts and I'm like . 	222222222222222
705	+< oh@0 for@2 sure@2 mmhm@0 .	oh for sure mmhm . 	0220
706	the@2 one@2 who@2 should@2 be@2 hurting@2 is@2 my@2 kid@2 .	the one who should be hurting is my kid . 	222222222
707	mmhm@0 que@3 fue@3 la@3 que@3 le@3 dieron@3 # de@3 lado@3 .	mmhm que fue la que le dieron de lado . 	033333333
708	no@3 que@3 le@3 dieron@3 <por@3 la@3 ven(tana)@3> [//] por@3 la@3 puerta@3 le@3 desbarató@3 la@3 puerta@3 .	no que le dieron por la puerta le desbarató la puerta . 	33333333333
709	+< mmhm@0 .	mmhm . 	0
710	el@3 axel@2 de@3 la@3 [/] de@3 la@3 goma@3 de@3 alante@3 se@3 la@3 partió@3 con@3 eso@3 yo@3 te@3 digo@3 el@3 golpe@3 tan@3 grande@3 que@3 le@3 dio@3 esa@3 mujer@3 .	el axel de de la goma de alante se la partió con eso yo te digo el golpe tan grande que le dio esa mujer . 	3233333333333333333333333
711	increíble@3 # increíble@3 .	increíble increíble . 	33
712	she's@2 just@2 got@2 one@2 of@2 these@2 nineteen@2 ninety@2 five@2 Toyotas@0 that@2 are@2 like@2 .	she's just got one of these nineteen ninety five Toyotas that are like . 	2222222220222
713	+< mmhm@0 duro@3 .	mmhm duro . 	03
714	remember@2 those@2 Toyotas@0 really@2 heavy@2 ?	remember those Toyotas really heavy ? 	22022
715	+< mmhm@0 .	mmhm . 	0
716	<and@2 the@2> [/] and@2 the@2 bumper@2 used@2 to@2 be@2 a@2 different@2 color@2 that@2 they@2 used@2 to@2 .	and the bumper used to be a different color that they used to . 	2222222222222
717	+< mmhm@0 mmhm@0 .	mmhm mmhm . 	00
718	pero@3 tipo@3 S_U_V@2 o@3 +.. .	pero tipo S_U_V o . 	3323
719	no@3 no@3 it@2 was@2 a@2 car@2 .	no no it was a car . 	332222
720	+< un@3 carrito@3 .	un carrito . 	33
721	mmhm@0 .	mmhm . 	0
722	Thank@2 God@2 .	Thank God . 	22
723	mmhm@0 .	mmhm . 	0
724	imagine@2 if@2 you@2 xxx for@2 a@2 little@2 PT_Cruiser@0 .	imagine if you for a little PT_Cruiser . 	2222220
725	imagínate@3 .	imagínate . 	3
726	imagínate@3 .	imagínate . 	3
727	+< la@3 hubiera@3 matado@3 .	la hubiera matado . 	333
728	porque@3 yo@3 no@3 tenía@3 airbags@0 en@3 el@3 PT_Cruiser@0 .	porque yo no tenía airbags en el PT_Cruiser . 	33330330
729	no@3 .	no . 	3
730	los@3 PT_Cruisers@0 no@3 vienen@3 con@3 airbag@0 ?	los PT_Cruisers no vienen con airbag ? 	303330
731	yes@2 but@2 what@2 happened@2 was@2 my@2 [/] my@2 husband@2 being@2 such@2 a@2 small@2 person@2 wanted@2 to@2 buy@2 her@2 a@2 car@2 a@2 used@2 car@2 didn't@2 want@2 her@2 to@2 have@2 a@2 new@2 car@2 like@2 I@2 told@2 him@2 .	yes but what happened was my husband being such a small person wanted to buy her a car a used car didn't want her to have a new car like I told him . 	222222222222222222222222222222222
732	get@2 the@2 kid@2 a@2 good@2 car@2 when@2 we@2 ended@2 up@2 finding@2 out@2 when@2 we@2 had@2 already@2 payed@2 everything@2 for@2 the@2 car@2 [?] that@2 car@2 had@2 been@2 chocado@3 de@3 alante@3 completamente@3 .	get the kid a good car when we ended up finding out when we had already payed everything for the car that car had been chocado de alante completamente . 	22222222222222222222222223333
733	fíjate@3 que@3 tiene@3 el@3 sticker@2 .	fíjate que tiene el sticker . 	33332
734	mmhm@0 .	mmhm . 	0
735	pero@3 parece@3 que@3 it@2 wasn't@2 in@2 the@2 system@2 yet@2 because@2 it@2 had@2 just@2 happened@2 .	pero parece que it wasn't in the system yet because it had just happened . 	33322222222222
736	mmhm@0 .	mmhm . 	0
737	so@2 they@2 fixed@2 the@2 car@2 .	so they fixed the car . 	22222
738	and@2 they@2 sold@2 it@2 to@2 us@2 thinking@2 that@2 [//] que@3 no@3 nada@3 [/] nada@3 tenía@3 el@3 carro@3 .	and they sold it to us thinking que no nada tenía el carro . 	2222222333333
739	when@2 we@2 went@2 to@2 trade@2 in@2 the@2 car@2 # for@2 the@2 Honda@0 the@2 guy@2 told@2 me@2 that@2 he@2 couldn't@2 take@2 that@2 car@2 .	when we went to trade in the car for the Honda the guy told me that he couldn't take that car . 	222222222202222222222
740	and@2 we@2 say@2 why@2 can't@2 you@2 take@2 this@2 car@2 ?	and we say why can't you take this car ? 	222222222
741	because@2 that@2 car@2 is@2 no@2 good@2 .	because that car is no good . 	222222
742	mmhm@0 .	mmhm . 	0
743	+< it's@2 been@2 crashed@2 from@2 the@2 front@2 .	it's been crashed from the front . 	222222
744	mmhm@0 .	mmhm . 	0
745	and@2 they@2 put@2 a@2 special@2 sticker@2 when@2 you@2 open@2 up@2 the@2 door@2 of@2 the@2 car@2 on@2 the@2 side@2 right@2 there@2 .	and they put a special sticker when you open up the door of the car on the side right there . 	22222222222222222222
746	they@2 put@2 a@2 sticker@2 when@2 a@2 [/] a@2 [/] a@2 car@2 has@2 been@2 crashed@2 from@2 the@2 front@2 .	they put a sticker when a car has been crashed from the front . 	2222222222222
747	because@2 of@2 xxx .	because of . 	22
748	+< como@3 un@3 rebuilt@2 .	como un rebuilt . 	332
749	yes@2 .	yes . 	2
750	mmhm@0 .	mmhm . 	0
751	and@2 <they@2 wouldn't@2> [/] they@2 wouldn't@2 take@2 the@2 car@2 for@2 nothing@2 .	and they wouldn't take the car for nothing . 	22222222
752	ya@3 tú@3 sabes@3 [?] .	ya tú sabes . 	333
753	no@3 ni@3 lo@3 querían@3 .	no ni lo querían . 	3333
754	they@2 said@2 no@2 we@2 don't@2 want@2 this@2 .	they said no we don't want this . 	2222222
755	this@2 is@2 the@2 liability@2 for@2 us@2 .	this is the liability for us . 	222222
756	+< mmhm@0 .	mmhm . 	0
757	you@2 try@2 to@2 sell@2 it@2 the@2 best@2 way@2 you@2 can@2 .	you try to sell it the best way you can . 	2222222222
758	and@2 I@2 told@2 xxx let's@2 sue@2 the@2 guy@2 who@2 sold@2 you@2 the@2 car@2 .	and I told let's sue the guy who sold you the car . 	222222222222
759	xxx no@2 no@2 no@2 no@2 I@2 don't@2 wanna@2 worry@2 .	no no no no I don't wanna worry . 	22222222
760	+< sí@3 .	sí . 	3
761	you@2 know@2 I@2 don't@2 wanna@2 deal@2 with@2 that@2 .	you know I don't wanna deal with that . 	22222222
762	sí@3 .	sí . 	3
763	+< oh@0 ok@0 .	oh ok . 	00
764	<but@2 thank@2 God@2> [?] .	. 	
765	mmhm@0 mmhm@0 .	mmhm mmhm . 	00
766	hello@2 .	hello . 	2
767	are@2 we@2 +/ .	are we . 	22
768	I@2 don't@2 know@2 if@2 we@2 are@2 almost@2 over@2 [=! laughs] .	I don't know if we are almost over . 	22222222
769	we've@2 been@2 talking@2 so@2 much@2 already@2 .	we've been talking so much already . 	222222
770	+< <are@2 we@2> [/] are@2 we@2 on@2 time@2 ?	are we on time ? 	2222
771	I@2 think@2 they@2 forgot@2 about@2 us@2 [=! laughs] .	I think they forgot about us . 	222222
772	keep@2 talking@2 .	keep talking . 	22
773	+< keep@2 on@2 talking@2 .	keep on talking . 	222
774	four@2 more@2 minutes@2 five@2 more@2 minutes@2 .	four more minutes five more minutes . 	222222
775	+< we@2 got@2 five@2 more@2 minutes@2 [=! laughs] .	we got five more minutes . 	22222
776	mmhm@0 .	mmhm . 	0
777	&=laugh .	. 	
778	we@2 are@2 tired@2 talking@2 to@2 each@2 other@2 we@2 wanna@2 watch@2 the@2 news@2 and@2 the@2 tv@0 right@2 now@2 .	we are tired talking to each other we wanna watch the news and the tv right now . 	22222222222222022
779	mmhm@0 .	mmhm . 	0
780	&=laugh .	. 	
781	pues@3 sí@3 lo@3 de@3 Chili's@0 está@3 impresionante@3 no@3 verdad@3 ?	pues sí lo de Chili's está impresionante no verdad ? 	333303333
782	el@3 tiroteo@3 ese@3 ahí@3 en@3 Chili's@0 .	el tiroteo ese ahí en Chili's . 	333330
783	yes@2 .	yes . 	2
784	y@3 los@3 otros@3 días@3 el@3 tiroteo@3 en@3 el@3 colegio@3 xxx .	y los otros días el tiroteo en el colegio . 	333333333
785	yeah@2 .	yeah . 	2
786	y@3 ayer@3 o@3 anteayer@3 el@3 [/] el@3 riot@2 en@3 el@3 Edison@0 .	y ayer o anteayer el riot en el Edison . 	333332330
787	+< xxx .	. 	
788	Edison@0 .	Edison . 	0
789	+< en@3 [/] en@3 el@3 otro@3 .	en el otro . 	333
790	esto@3 está@3 calientica@3 la@3 calle@3 .	esto está calientica la calle . 	33333
791	y@3 dónde@3 fue@3 otro@3 tamb(ién)@3 [//] lugar@3 aquí@3 también@3 que@3 tirotearon@3 ?	y dónde fue otro lugar aquí también que tirotearon ? 	333333333
792	los@3 otros@3 días@3 aquí@3 pegaditos@3 nosotros@3 .	los otros días aquí pegaditos nosotros . 	333333
793	no@3 yo@3 pero@3 no@3 fue@3 four@2 forty@2 one@2 ahí@3 en@3 la@3 four@2 forty@2 one@2 yo@3 creo@3 que@3 fue@3 un@3 poquito@3 más@3 pa(ra)@3 allá@3 .	no yo pero no fue four forty one ahí en la four forty one yo creo que fue un poquito más para allá . 	33333222333222333333333
794	no@3 pero@3 er@0 estuvo@3 Chili's@0 .	no pero er estuvo Chili's . 	33030
795	en@3 Chili's@0 habían@3 robado@3 y@3 habían@3 tiroteado@3 a@3 alguien@3 hace@3 unos@3 días@3 atrás@3 .	en Chili's habían robado y habían tiroteado a alguien hace unos días atrás . 	3033333333333
796	y@3 ahora@3 se@3 formó@3 un@3 tiroteo@3 de@3 nuevo@3 .	y ahora se formó un tiroteo de nuevo . 	33333333
797	pero@3 había@3 otro@3 lugar@3 más@3 que@3 había@3 habido@3 un@3 [/] un@3 robo@3 un@3 tiroteo@3 .	pero había otro lugar más que había habido un robo un tiroteo . 	333333333333
798	la@3 calle@3 está@3 # que@3 mete@3 miedo@3 .	la calle está que mete miedo . 	333333
799	claro@3 .	claro . 	3
800	mmhm@0 .	mmhm . 	0
801	la@3 gente@3 está@3 desesperada@3 .	la gente está desesperada . 	3333
802	sí@3 .	sí . 	3
803	la@3 gente@3 estaba@3 desesperada@3 pa(ra)@3 tratar@3 de@3 resolverlo@3 # a@3 cualquier@3 costo@3 .	la gente estaba desesperada para tratar de resolverlo a cualquier costo . 	33333333333
804	xxx .	. 	
805	mmhm@0 mmhm@0 .	mmhm mmhm . 	00
806	&=cough .	. 	
807	estos@3 muchachitos@3 se@3 han@3 pasado@3 todo@3 el@3 día@3 # xxx ahí@3 pescando@3 .	estos muchachitos se han pasado todo el día ahí pescando . 	3333333333
808	y@3 compran@3 xxx .	y compran . 	33
809	ay@3 at@2 least@2 they@2 do@2 .	ay at least they do . 	32222
810	yeah@2 .	yeah . 	2
811	they@2 are@2 doing@2 something@2 better@2 than@2 watching@2 er@0 tv@0 and@2 computers@2 all@2 day@2 .	they are doing something better than watching er tv and computers all day . 	2222222002222
812	+< yeah@2 yeah@2 .	yeah yeah . 	22
813	no@2 they'll@2 be@2 catch(ing)@2 [/] catching@2 fish@2 because@2 you@2 see@2 them@2 you@2 know@2 bringing@2 up@2 fish@2 every@2 once@2 in@2 a@2 while@2 .	no they'll be catching fish because you see them you know bringing up fish every once in a while . 	2222222222222222222
814	mmhm@0 .	mmhm . 	0
815	pero@3 ya@3 le@3 está@3 cogiendo@3 la@3 noche@3 y@3 ya@3 se@3 van@3 .	pero ya le está cogiendo la noche y ya se van . 	33333333333
816	+< and@2 are@2 they@2 planning@2 on@2 doing@2 something@2 on@2 the@2 lake@2 like@2 cleaning@2 xxx ?	and are they planning on doing something on the lake like cleaning ? 	222222222222
817	have@2 you@2 heard@2 anything@2 ?	have you heard anything ? 	2222
818	they@2 haven't@2 mentioned@2 anything@2 about@2 that@2 ?	they haven't mentioned anything about that ? 	222222
819	+< no@2 .	no . 	2
820	no@2 there@2 is@2 not@2 .	no there is not . 	2222
821	because@2 I@2 think@2 it's@2 been@2 a@2 while@2 .	because I think it's been a while . 	2222222
822	I@2 mean@2 we've@2 been@2 moved@2 in@2 here@2 for@2 almost@2 six(teen)@2 yo@3 creo@3 que@3 like@2 fifteen@2 or@2 sixteen@2 years@2 and@2 they@2 haven't@2 done@2 anything@2 .	I mean we've been moved in here for almost sixteen yo creo que like fifteen or sixteen years and they haven't done anything . 	22222222223332222222222
823	+< because@2 you@2 know@2 the@2 [/] the@2 thing@2 here@2 is@2 that@2 the@2 lake@2 doesn't@2 belong@2 just@2 to@2 one@2 # entity@2 .	because you know the thing here is that the lake doesn't belong just to one entity . 	2222222222222222
824	the@2 part@2 of@2 the@2 lake@2 is@2 the@2 # water@2 management@2 district@2 .	the part of the lake is the water management district . 	2222222222
825	pero@3 then@2 when@2 you@2 come@2 from@2 like@2 the@2 thirteen@2 feet@2 .	pero then when you come from like the thirteen feet . 	3222222222
826	that@2 [/] that@2 strip@2 there@2 el@3 canal@3 +/ .	that strip there el canal . 	22233
827	+< mmhm@0 .	mmhm . 	0
828	is@2 a@2 water@2 management@2 .	is a water management . 	2222
829	but@2 then@2 when@2 you@2 come@2 into@2 the@2 lake@2 that's@2 Miami_Lakes@0 .	but then when you come into the lake that's Miami_Lakes . 	2222222220
830	is@2 the@2 residence@2 of@2 Miami_Lakes@0 in@2 that@2 so@2 since@2 it's@2 such@2 a@2 mix@2 they@2 don't@2 do@2 anything@2 .	is the residence of Miami_Lakes in that so since it's such a mix they don't do anything . 	22220222222222222
831	I@2 had@2 a@2 +...	I had a . 	222
832	when@2 we@2 first@2 moved@2 here@2 not@2 when@2 we@2 first@2 moved@2 here@2 .	when we first moved here not when we first moved here . 	22222222222
833	cuando@3 fueron@3 las@3 elecciones@3 de@3 [/] de@3 aquí@3 en@3 Miami_Lakes@0 que@3 se@3 formó@3 el@3 primer@3 viaje@3 .	cuando fueron las elecciones de aquí en Miami_Lakes que se formó el primer viaje . 	33333330333333
834	mmhm@0 .	mmhm . 	0
835	uno@3 <de@3 los@3> [/] de@3 los@3 comisionados@3 que@3 corrió@3 .	uno de los comisionados que corrió . 	333333
836	mmhm@0 .	mmhm . 	0
837	uno@3 de@3 los@3 muchachitos@3 jóvenes@3 vino@3 por@3 aquí@3 .	uno de los muchachitos jóvenes vino por aquí . 	33333333
838	y@3 <le@3 digo@3> [?] listen@2 look@2 this@2 is@2 a@2 good@2 thing@2 for@2 you@2 to@2 look@2 at@2 to@2 do@2 .	y listen look this is a good thing for you to look at to do . 	322222222222222
839	excuse@2 me@2 hello@2 .	excuse me hello . 	222
840	I'm@2 in@2 the@2 xxx I@2 got@2 five@2 more@2 minutes@2 .	I'm in the I got five more minutes . 	22222222
841	talking@2 .	talking . 	2
842	talking@2 .	talking . 	2
843	I'll@2 be@2 right@2 there@2 .	I'll be right there . 	2222
844	dile@3 que@3 venga@3 pa(ra)@3 acá@3 .	dile que venga para acá . 	33333
845	dile@3 que@3 venga@3 pa(ra)@3 acá@3 .	dile que venga para acá . 	33333
846	&=laugh no@3 déjanos@3 acabar@3 de@3 hablar@3 que@3 nos@3 quedan@3 five@2 more@2 minutes@2 and@2 they@2 are@2 recording@2 us@2 bye@2 .	no déjanos acabar de hablar que nos quedan five more minutes and they are recording us bye . 	33333333222222222
847	+< we@2 have@2 # usamos@3 [/] usamos@3 este@3 xxx como@3 guinea_pig@2 .	we have usamos este como guinea_pig . 	223332
848	&=moan .	. 	
849	er:@0 .	er . 	0
850	qué@3 te@3 estaba@3 diciendo@3 ?	qué te estaba diciendo ? 	3333
851	oh@0 lo@3 del@3 muchachito@3 que@3 vino@3 aquí@3 .	oh lo del muchachito que vino aquí . 	0333333
852	ah@0 sí@3 el@3 que@3 estaba@3 corriendo@3 pa(ra)@3 (a)cá@3 xxx tú@3 ves@3 tú@3 eso@3 .	ah sí el que estaba corriendo para acá tú ves tú eso . 	033333333333
853	le@3 digo@3 esa@3 basura@3 no@3 es@3 basura@3 de@3 nosotros@3 .	le digo esa basura no es basura de nosotros . 	333333333
854	esa@3 basura@3 es@3 cuando@3 el@3 condado@3 # o@3 el@3 water@2 management@2 district@2 viene@3 y@3 limpia@3 el@3 pedazo@3 de@3 ellos@3 .	esa basura es cuando el condado o el water management district viene y limpia el pedazo de ellos . 	333333332223333333
855	ellos@3 vienen@3 con@3 las@3 palas@3 .	ellos vienen con las palas . 	33333
856	+< xxx everything@2 .	everything . 	2
857	y@3 arrancan@3 toda@3 la@3 basura@3 .	y arrancan toda la basura . 	33333
858	entonces@3 caminan@3 tres@3 millas@3 con@3 las@3 palas@3 para@3 abajo@3 rompiendo@3 toda@3 la@3 hierba@3 .	entonces caminan tres millas con las palas para abajo rompiendo toda la hierba . 	3333333333333
859	y@3 después@3 echan@3 un@3 palazo@3 arriba@3 del@3 camión@3 .	y después echan un palazo arriba del camión . 	33333333
860	pero@3 tú@3 sabes@3 cuántos@3 palazos@3 iban@3 rotos@3 por@3 ahí@3 que@3 los@3 dejan@3 flotando@3 .	pero tú sabes cuántos palazos iban rotos por ahí que los dejan flotando . 	3333333333333
861	xxx eso@3 es@3 lo@3 que@3 tú@3 estás@3 viendo@3 ahí@3 .	eso es lo que tú estás viendo ahí . 	33333333
862	dice@3 no@3 ahora@3 ahora@3 vamos@3 a@3 mirar@3 esto@3 que@3 lo@3 otro@3 .	dice no ahora ahora vamos a mirar esto que lo otro . 	33333333333
863	nunca@3 han@3 hecho@3 na(da)@3 .	nunca han hecho nada . 	3333
864	cada@3 vez@3 que@3 pasa@3 el@3 [/] el@3 condado@3 por@3 ahí@3 con@3 la@3 +/ .	cada vez que pasa el condado por ahí con la . 	3333333333
865	y@3 pasa@3 ?	y pasa ? 	33
866	sí@3 sí@3 ellos@3 pasan@3 .	sí sí ellos pasan . 	3333
867	cada@3 qué@3 tiempo@3 ?	cada qué tiempo ? 	333
868	&bu: dos@3 o@3 tres@3 veces@3 al@3 año@3 vienen@3 .	dos o tres veces al año vienen . 	3333333
869	right@2 now@2 .	right now . 	22
870	sí@3 .	sí . 	3
871	un@3 aparato@3 que@3 son@3 los@3 que@3 ponen@3 allá@3 en@3 Red@2 Road@2 .	un aparato que son los que ponen allá en Red Road . 	33333333322
872	tú@3 no@3 te@3 has@3 fijado@3 allá@3 en@3 la@3 esquina@3 <del@3 aero(puerto)@3> [//] del@3 aeropuerto@3 xxx?	tú no te has fijado allá en la esquina del aeropuerto xxx? 	33333333333
873	+< sí@3 yo@3 sí@3 .	sí yo sí . 	333
874	una@3 un@3 lugar@3 que@3 ponen@3 .	una un lugar que ponen . 	33333
875	+< ahí@3 sí@3 yo@3 veo@3 .	ahí sí yo veo . 	3333
876	eso@3 bueno@3 .	eso bueno . 	33
877	+< mmhm@0 .	mmhm . 	0
878	esos@3 vienen@3 hasta@3 aquí@3 .	esos vienen hasta aquí . 	3333
879	no@3 de@3 verdad@3 <yo@3 no@3> [/] yo@3 no@3 me@3 había@3 fijado@3 nunca@3 .	no de verdad yo no me había fijado nunca . 	333333333
880	ellos@3 caminan@3 por@3 xxx caminando@3 .	ellos caminan por caminando . 	3333
881	pero@3 qué@3 pasa@3 ?	pero qué pasa ? 	333
882	que@3 ellos@3 limpian@3 ellos@3 bajan@3 la@3 pala@3 y@3 van@3 caminando@3 y@3 van@3 rompiendo@3 esa@3 hierba@3 .	que ellos limpian ellos bajan la pala y van caminando y van rompiendo esa hierba . 	333333333333333
883	pero@3 en@3 vez@3 de@3 # hacer@3 un@3 pedacito@3 cortico@3 .	pero en vez de hacer un pedacito cortico . 	33333333
884	y@3 lle(var)@3 [/] llevarla@3 hasta@3 el@3 camión@3 no@3 .	y llevarla hasta el camión no . 	333333
885	imagínate@3 si@3 el@3 camión@3 está@3 parado@3 a@3 cuatro@3 cuadras@3 .	imagínate si el camión está parado a cuatro cuadras . 	333333333
886	tú@3 crees@3 que@3 ellos@3 van@3 a@3 [/] a@3 recoger@3 un@3 poquito@3 y@3 llevarlo@3 y@3 botarlo@3 y@3 regresarlo@3 .	tú crees que ellos van a recoger un poquito y llevarlo y botarlo y regresarlo . 	333333333333333
887	ellos@3 ponen@3 la@3 pala@3 y@3 van@3 rompiendo@3 van@3 empujándola@3 pa(ra)@3 allá@3 .	ellos ponen la pala y van rompiendo van empujándola para allá . 	33333333333
888	pero@3 lo@3 que@3 hace@3 después@3 .	pero lo que hace después . 	33333
889	que@3 se@3 se@3 queda@3 toda@3 suelta@3 se@3 riega@3 todo@3 .	que se se queda toda suelta se riega todo . 	333333333
890	y@3 cuando@3 el@3 aire@3 sopla@3 de@3 allá@3 o@3 de@3 aquí@3 .	y cuando el aire sopla de allá o de aquí . 	3333333333
891	toda@3 esa@3 hierba@3 muerta@3 xxx .	toda esa hierba muerta . 	3333
892	+< va@3 cayendo@3 pa(ra)@3 acá@3 .	va cayendo para acá . 	3333
893	mmhm@0 .	mmhm . 	0
894	y@3 yo@3 le@3 echo@3 ahí@3 cosas@3 .	y yo le echo ahí cosas . 	333333
895	y@3 fumigó@3 y@3 eso@3 pa(ra)@3 mantener@3 la@3 hierba@3 lo@3 menos@3 que@3 no@3 crezca@3 mucho@3 pero@3 con@3 todo@3 y@3 eso@3 .	y fumigó y eso para mantener la hierba lo menos que no crezca mucho pero con todo y eso . 	3333333333333333333
896	er@0 te@3 encuentras@3 que@3 [/] # que@3 los@3 lily_pads@2 crecen@3 .	er te encuentras que los lily_pads crecen . 	0333323
897	y@3 [/] y@3 se@3 mete@3 la@3 basura@3 ahí@3 .	y se mete la basura ahí . 	333333
898	y@3 vaya@3 .	y vaya . 	33
899	le@3 echas@3 hoy@3 y@3 a@3 los@3 dos@3 o@3 tres@3 meses@3 ya@3 están@3 de@3 nuevo@3 floreciendo@3 y@3 creciendo@3 .	le echas hoy y a los dos o tres meses ya están de nuevo floreciendo y creciendo . 	33333333333333333
900	so@2 .	so . 	2
901	y@3 la@3 señora@3 de@3 al@3 lado@3 tiene@3 ahora@3 <un@3 hij(o)@3> [//] un@3 nieto@3 no@3 .	y la señora de al lado tiene ahora un nieto no . 	33333333333
902	+< un@3 nieto@3 .	un nieto . 	33
903	mmhm@0 .	mmhm . 	0
904	ah@0 sí@3 .	ah sí . 	03
905	sí@3 el@3 nieto@3 está@3 viviendo@3 con@3 ella@3 .	sí el nieto está viviendo con ella . 	3333333
906	qué@3 bueno@3 así@3 no@3 está@3 solita@3 .	qué bueno así no está solita . 	333333
907	tú@3 sabes@3 que@3 yo@3 pensaba@3 que@3 los@3 hijos@3 de@3 Lucía@0 las@3 [/] las@3 hijas@3 de@3 los@3 hijos@3 vivían@3 fuera@3 de@3 Miami@0 .	tú sabes que yo pensaba que los hijos de Lucía las hijas de los hijos vivían fuera de Miami . 	3333333330333333330
908	pero@3 este@3 [/] este@3 vive@3 en@3 Core_Gables@0 .	pero este vive en Core_Gables . 	33330
909	really@2 ?	really ? 	2
910	+< <el@3 hijo@3 de@3 ella@3> [/] el@3 hijo@3 de@3 ella@3 que@3 es@3 el@3 papá@3 del@3 nieto@3 vive@3 en@3 Core_Gables@0 .	el hijo de ella que es el papá del nieto vive en Core_Gables . 	3333333333330
911	xxx .	. 	
912	porque@3 como@3 yo@3 nunca@3 los@3 veía@3 por@3 aquí@3 ni@3 na(da)@3 .	porque como yo nunca los veía por aquí ni nada . 	3333333333
913	he@2 must@2 have@2 gotten@2 in@2 a@2 fight@2 .	he must have gotten in a fight . 	2222222
914	I'm@2 gonna@2 go@2 live@2 with@2 my@2 grandma@2 porque@3 siempre@3 dicen@3 así@3 .	I'm gonna go live with my grandma porque siempre dicen así . 	22222223333
915	+< es@3 posible@3 .	es posible . 	33
916	es@3 posible@3 tú@3 no@3 te@3 acuerdas@3 hace@3 como@3 dos@3 o@3 tres@3 años@3 atrás@3 cuando@3 primero@3 se@3 mudó@3 ahí@3 que@3 tenía@3 un@3 carrito@3 que@3 lo@3 chocó@3 .	es posible tú no te acuerdas hace como dos o tres años atrás cuando primero se mudó ahí que tenía un carrito que lo chocó . 	3333333333333333333333333
917	mmhm@0 .	mmhm . 	0
918	que@3 Lucía@0 lo@3 tuvo@3 tapado@3 ahí@3 mucho@3 tiempo@3 .	que Lucía lo tuvo tapado ahí mucho tiempo . 	30333333
919	mmhm@0 .	mmhm . 	0
920	er@0 le@3 [/] le@3 taparon@3 le@3 chocaron@3 el@3 carro@3 .	er le taparon le chocaron el carro . 	0333333
921	y@3 parece@3 que@3 el@3 padre@3 estaba@3 bravo@3 con@3 ellos@3 y@3 no@3 se@3 lo@3 arregló@3 ni@3 na(da)@3 .	y parece que el padre estaba bravo con ellos y no se lo arregló ni nada . 	3333333333333333
922	y@3 estaba@3 parado@3 ahí@3 en@3 casa@3 de@3 Lucía@0 todo@3 ese@3 tiempo@3 .	y estaba parado ahí en casa de Lucía todo ese tiempo . 	33333330333
923	hasta@3 que@3 después@3 de@3 una@3 forma@3 o@3 otra@3 resolvieron@3 .	hasta que después de una forma o otra resolvieron . 	333333333
924	mmhm@0 .	mmhm . 	0
925	viste@3 qué@3 rica@3 está@3 la@3 tarde@3 ?	viste qué rica está la tarde ? 	333333
926	yeah@2 .	yeah . 	2
927	ha@3 bajado@3 ahora@3 está@3 [//] debe@3 estar@3 a@3 setenta@3 y@3 pico@3 grados@3 .	ha bajado ahora debe estar a setenta y pico grados . 	3333333333
928	está@3 super@0 rica@3 .	está super rica . 	303
929	ya@3 [/] <ya@3 nos@3> [/] ya@3 nos@3 están@3 torturando@3 .	ya nos están torturando . 	3333
930	ya@3 estos@3 últimos@3 cuatro@3 minutos@3 son@3 [=! laugh] .	ya estos últimos cuatro minutos son . 	333333
931	no@3 y@3 yo@3 que@3 estoy@3 haciendo@3 maternidad@3 y@3 maternidad@3 es@3 lo@3 más@3 # pesado@3 .	no y yo que estoy haciendo maternidad y maternidad es lo más pesado . 	3333333333333
932	+< y@3 er@0 er@0 las@3 clases@3 son@3 en@3 español@3 ?	y er er las clases son en español ? 	30033333
933	ay@3 sí@3 escribir@3 es@3 en@3 español@3 pero@3 los@3 libros@3 son@3 en@3 inglés@3 .	ay sí escribir es en español pero los libros son en inglés . 	333333333333
934	so@3 tú@3 me@3 ves@3 a@3 mí@3 ahí@3 .	so tú me ves a mí ahí . 	3333333
935	y@3 entonces@3 tengo@3 que@3 ponerme@3 .	y entonces tengo que ponerme . 	33333
936	y@3 entonces@3 tengo@3 un@3 diccionario@3 .	y entonces tengo un diccionario . 	33333
937	porque@3 se@3 me@3 olvida@3 .	porque se me olvida . 	3333
938	olvídate@3 .	olvídate . 	3
939	son@3 mucho@3 tiempo@3 .	son mucho tiempo . 	333
940	y@3 [/] y@3 a@3 uno@3 se@3 le@3 olvida@3 .	y a uno se le olvida . 	333333
941	uno@3 está@3 acostumbrado@3 a@3 leer@3 en@3 inglés@3 y@3 a@3 escribir@3 en@3 inglés@3 .	uno está acostumbrado a leer en inglés y a escribir en inglés . 	333333333333
942	sí@3 .	sí . 	3
943	+< entonces@3 tienes@3 que@3 escribirlo@3 en@3 español@3 .	entonces tienes que escribirlo en español . 	333333
944	mmhm@0 .	mmhm . 	0
945	hay@3 que@3 .	hay que . 	33
946	+< lo@3 he@3 dejado@3 y@3 lo@3 he@3 dejado@3 .	lo he dejado y lo he dejado . 	3333333
947	y@3 tengo@3 que@3 hacer@3 dos@3 trabajos@3 pa(ra)@3 el@3 cuatro@3 y@3 tengo@3 examen@3 el@3 cuatro@3 .	y tengo que hacer dos trabajos para el cuatro y tengo examen el cuatro . 	33333333333333
948	mmhm@0 .	mmhm . 	0
949	y@3 lo@3 he@3 dejado@3 tanto@3 tiempo@3 que@3 no@3 he@3 acabado@3 .	y lo he dejado tanto tiempo que no he acabado . 	3333333333
950	+< sí@3 .	sí . 	3
951	er@0 tú@3 sabes@3 que@3 te@3 voy@3 a@3 conseguir@3 una@3 copia@3 .	er tú sabes que te voy a conseguir una copia . 	0333333333
952	yo@3 tengo@3 un@3 diccionario@3 inglés@3 español@3 .	yo tengo un diccionario inglés español . 	333333
953	que@3 es@3 un@3 C_D@2 que@3 van@3 en@3 la@3 computadora@3 .	que es un C_D que van en la computadora . 	333233333
954	tú@3 no@3 nunca@3 has@3 usado@3 eso@3 .	tú no nunca has usado eso . 	333333
955	no@3 no@3 .	no no . 	33
956	espera@3 te@3 voy@3 a@3 buscar@3 .	espera te voy a buscar . 	33333
957	+< yo@3 lo@3 que@3 tengo@3 es@3 el@3 [//] el@3 que@3 [/] el@3 +/ .	yo lo que tengo es el el . 	3333333
958	el@3 inglés@3 español@3 regular@3 .	el inglés español regular . 	3333
959	sí@3 el@3 xxx ese@3 que@3 mi@3 mamá@3 me@3 lo@3 dejó@3 .	sí el ese que mi mamá me lo dejó . 	333333333
960	mis@3 padres@3 siempre@3 lo@3 tenían@3 y@3 me@3 me@3 lo@3 heredé@3 yo@3 .	mis padres siempre lo tenían y me me lo heredé yo . 	33333333333
961	y@3 lo@3 tengo@3 ahí@3 .	y lo tengo ahí . 	3333
962	+< yo@3 te@3 voy@3 a@3 conseguir@3 una@3 copia@3 de@3 esto@3 porque@3 esto@3 es@3 en@3 la@3 computadora@3 .	yo te voy a conseguir una copia de esto porque esto es en la computadora . 	333333333333333
963	y@3 lo@3 tienes@3 en@3 el@3 desktop@2 .	y lo tienes en el desktop . 	333332
964	aprietas@3 así@3 .	aprietas así . 	33
965	pones@3 la@3 palabra@3 en@3 inglés@3 o@3 en@3 español@3 .	pones la palabra en inglés o en español . 	33333333
966	y@3 te@3 da@3 la@3 [/] la@3 traducción@3 .	y te da la traducción . 	33333
967	&=cough .	. 	
968	y@3 te@3 da@3 usos@3 y@3 cosas@3 de@3 diferentes@3 cosas@3 de@3 la@3 de@3 la@3 .	y te da usos y cosas de diferentes cosas de la de la . 	3333333333333
\.


--
-- PostgreSQL database dump complete
--

