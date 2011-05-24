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
-- Name: all_siarad_clean; Type: TABLE; Schema: public; Owner: kevin; Tablespace: 
--

CREATE TABLE all_siarad_clean (
    corpus character varying(20),
    filename character varying(20),
    utterance_id integer,
    clause_no integer,
    speaker character varying(100),
    clause character varying(250),
    comments character varying(200),
    matrix_lg character varying(20),
    linguality character varying(20),
    dv character varying(20),
    aoa_min character varying(10),
    aoa_maj character varying(10),
    moth_lg character varying(10),
    fath_lg character varying(10),
    parental character varying(10),
    primary_lg character varying(10),
    secondary_lg character varying(10),
    educ_lg character varying(10),
    identity character varying(10),
    contact1 character varying(10),
    contact2 character varying(10),
    contact3 character varying(10),
    contact4 character varying(10),
    contact5 character varying(10),
    soc_net character varying(10),
    goldvarb character varying(20)
);


ALTER TABLE public.all_siarad_clean OWNER TO kevin;

--
-- Data for Name: all_siarad_clean; Type: TABLE DATA; Schema: public; Owner: kevin
--

COPY all_siarad_clean (corpus, filename, utterance_id, clause_no, speaker, clause, comments, matrix_lg, linguality, dv, aoa_min, aoa_maj, moth_lg, fath_lg, parental, primary_lg, secondary_lg, educ_lg, identity, contact1, contact2, contact3, contact4, contact5, soc_net, goldvarb) FROM stdin;
Siarad	davies1	226	2	NON	sy yn bwysig	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies1	233	1	NON	oes gyda ti unrhyw gynlluniau	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies1	241	1	NON	oh mae just yn ormod o oriau	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies1	242	1	SAR	mae yn gormod	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	davies1	243	1	SAR	achos allen i fod wedi dechrau gweithio dydd Llun nawr	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	davies1	244	1	NON	gei di ddim seibiant	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies1	248	1	SAR	ond oedd mam yn gweud mam yn gweud	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	davies1	249	1	SAR	faint o waith sy gyda ti	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	davies1	251	1	SAR	mae tipyn o oriau mynd i fynd ar sgriptiau fi	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	davies1	255	1	SAR	achos fi yn gwybod	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	davies1	255	2	SAR	mae hwnna mynd i fod yn drymach	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	davies1	258	1	NON	mae isie ti just cael fel recharge_io yr batteries hefyd	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies1	261	1	SAR	basai	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	davies1	262	1	SAR	pam fi yn gweud basai	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	davies1	268	1	NON	fi credu unwaith a i adre	see earlier notes	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies1	268	2	NON	bydda i yn iawn	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies9	59	1	MOS	oh mae mynd i gael hwyl yn sgwennu hwn lawr	clause division	cym	monoW	a	1	1	2	2	d	1	1	a	1	1	1	3	1	1	c	(a11da1c
Siarad	davies9	86	1	MOS	bu Prifysgol_Cymru_Bangor yn wreiddiol Prifysgol_Cymru_Gogledd_Cymru yn un o geidwad pwysicaf	\N	cym	monoW	a	1	1	2	2	d	1	1	a	1	1	1	3	1	1	c	(a11da1c
Siarad	davies9	86	2	MOS	diwylliant Cymru yn yr amrywiol iaith a ei llenyddiaeth	\N	cym	monoW	a	1	1	2	2	d	1	1	a	1	1	1	3	1	1	c	(a11da1c
Siarad	davies9	111	1	MOS	ti gweld	non-finite?	cym	monoW	a	1	1	2	2	d	1	1	a	1	1	1	3	1	1	c	(a11da1c
Siarad	davies9	111	2	MOS	mae hwn yn trio yn wneud fi gael eisiau roi cyllell fan yna	\N	cym	monoW	a	1	1	2	2	d	1	1	a	1	1	1	3	1	1	c	(a11da1c
Siarad	davies9	111	4	MOS	gael eisiau roi cyllell fan yna	1	cym	monoW	a	1	1	2	2	d	1	1	a	1	1	1	3	1	1	c	(a11da1c
Siarad	davies9	113	1	MOS	mae yn afiach	\N	cym	monoW	a	1	1	2	2	d	1	1	a	1	1	1	3	1	1	c	(a11da1c
Siarad	davies9	125	1	MOS	oedd gig cynta fi gyda Gwilym_Morus	\N	cym	monoW	a	1	1	2	2	d	1	1	a	1	1	1	3	1	1	c	(a11da1c
Siarad	davies9	134	1	MOS	oh beth yw enw fe	\N	cym	monoW	a	1	1	2	2	d	1	1	a	1	1	1	3	1	1	c	(a11da1c
Siarad	davies9	142	2	MOS	mae hwnna just just yn hollol hollol wrong	\N	cym	monoW	a	1	1	2	2	d	1	1	a	1	1	1	3	1	1	c	(a11da1c
Siarad	davies9	152	1	MOS	wna fe eto	\N	cym	monoW	a	1	1	2	2	d	1	1	a	1	1	1	3	1	1	c	(a11da1c
Siarad	davies9	153	1	MOS	wna fe eto	repetition of above row?	cym	monoW	a	1	1	2	2	d	1	1	a	1	1	1	3	1	1	c	(a11da1c
Siarad	davies9	224	1	MOS	a mae e isie bobl i wneud tipyn bach o ymchwil gydag e	\N	cym	monoW	a	1	1	2	2	d	1	1	a	1	1	1	3	1	1	c	(a11da1c
Siarad	davies9	228	2	MOS	be sy yn bod arnyn nhw	\N	cym	monoW	a	1	1	2	2	d	1	1	a	1	1	1	3	1	1	c	(a11da1c
Siarad	davies9	229	1	MOS	ddoe es i ôl er hanner can punt werth o o fisgedi	clause division	cym	monoW	a	1	1	2	2	d	1	1	a	1	1	1	3	1	1	c	(a11da1c
Siarad	davies9	234	1	MOS	oh mae hwnna yn ofnadwy	\N	cym	monoW	a	1	1	2	2	d	1	1	a	1	1	1	3	1	1	c	(a11da1c
Siarad	davies9	239	1	MOS	so mae nhw wedi mynd trwy cant packet mewn diwrnod	\N	cym	monoW	a	1	1	2	2	d	1	1	a	1	1	1	3	1	1	c	(a11da1c
Siarad	davies9	256	1	MOS	well mae yna bobl o dy flaen di	\N	cym	monoW	a	1	1	2	2	d	1	1	a	1	1	1	3	1	1	c	(a11da1c
Siarad	davies9	257	1	MOS	mae yna bobl tu ôl i ti	\N	cym	monoW	a	1	1	2	2	d	1	1	a	1	1	1	3	1	1	c	(a11da1c
Siarad	davies9	287	1	MOS	beth yw ampersand	\N	cym	monoW	a	1	1	2	2	d	1	1	a	1	1	1	3	1	1	c	(a11da1c
Siarad	davies15	263	1	NEL	bydd	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies15	263	2	NEL	bydd o yn dda	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies15	265	1	NEL	ie dw ddim gwybod be i wneud	clause division	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies1	273	1	NON	mae pawb arall	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies1	277	1	SAR	achos oedd e yn haws na gorfod ail_ddeud popeth	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	davies1	280	1	NON	oh ydy	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies1	280	2	NON	mae pawb arall yn deall	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies1	478	1	SAR	yeah wedyn oedd pythefnos	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	davies1	478	2	SAR	a oedd wythnos ddarllen	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	davies1	481	1	SAR	so hwnna yw yr trydydd	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	davies1	484	1	NON	un waith fwy na fi ti wedi bod	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies7	300	7	TRA	be dw feddwl	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies1	484	2	NON	twel	discourse marker: treat like 'timod' and don't count as finite unless it has object?	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies1	486	1	NON	o'n i meddwl	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies1	486	2	NON	bod ti wedi bod adre lot mwy na fi	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies1	486	3	NON	twel	see above	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies1	489	1	SAR	mae phone fi yn mynd	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	davies15	245	2	NEL	wna i gampio yna	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies1	493	1	SAR	does yna ddim_byd yna i dynnu fi gartre nawr	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	davies1	494	1	SAR	pam dylsen i fynd	all one clause	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	davies1	496	1	NON	mae o yn eitha hectic	two clauses	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies9	298	1	MOS	fi yw cock y gath	\N	cym	monoW	a	1	1	2	2	d	1	1	a	1	1	1	3	1	1	c	(a11da1c
Siarad	davies9	335	1	MOS	mae cymryd oddeutu tri_deg_pum munud o fan hyn	\N	cym	monoW	a	1	1	2	2	d	1	1	a	1	1	1	3	1	1	c	(a11da1c
Siarad	davies9	349	1	MOS	ond peth yw	\N	cym	monoW	a	1	1	2	2	d	1	1	a	1	1	1	3	1	1	c	(a11da1c
Siarad	davies9	349	2	MOS	elli di wneud e mewn tair a hanner	\N	cym	monoW	a	1	1	2	2	d	1	1	a	1	1	1	3	1	1	c	(a11da1c
Siarad	davies9	349	3	MOS	os ti mynd i er Caer a wedyn	non-finite	cym	monoW	a	1	1	2	2	d	1	1	a	1	1	1	3	1	1	c	(a11da1c
Siarad	davies9	352	1	MOS	dal i aros am yn er dri pwynt achos fi wedi	non-finite	cym	monoW	a	1	1	2	2	d	1	1	a	1	1	1	3	1	1	c	(a11da1c
Siarad	davies9	363	2	MOS	os y fi cael yn ddal am hwnna	non-finite	cym	monoW	a	1	1	2	2	d	1	1	a	1	1	1	3	1	1	c	(a11da1c
Siarad	davies9	375	1	MOS	tawelwch	\N	cym	monoW	a	1	1	2	2	d	1	1	a	1	1	1	3	1	1	c	(a11da1c
Siarad	davies9	376	2	MOS	tawelwch	\N	cym	monoW	a	1	1	2	2	d	1	1	a	1	1	1	3	1	1	c	(a11da1c
Siarad	davies9	376	3	MOS	fu	\N	cym	monoW	a	1	1	2	2	d	1	1	a	1	1	1	3	1	1	c	(a11da1c
Siarad	fusser3	521	1	ALY	dw dal yn disgwyl y lleill	clause division	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser3	528	1	ALY	ond mae yn sure bod e yn syml	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser3	534	1	ALY	ond dydy yr	if repair follows then exclude this	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser3	536	1	ALY	mae yn gweud um bod isie torri yr llawr codi yr llawr lawr i level o er tri chant pum_deg millimetre	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser3	539	1	ALY	ond be mae yn enwi wedyn yn wahanol bethau	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	davies9	377	1	MOS	ti ddim yn siarad o_gwbl	\N	cym	monoW	a	1	1	2	2	d	1	1	a	1	1	1	3	1	1	c	(a11da1c
Siarad	davies9	377	2	MOS	wyt ti	\N	cym	monoW	a	1	1	2	2	d	1	1	a	1	1	1	3	1	1	c	(a11da1c
Siarad	stammers4	206	1	ELE	basai 	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	davies15	234	1	NEL	oh cer nôl i nôl jumper	clause division	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies15	236	1	NEL	a wnes i	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies15	239	1	NEL	dw cofio mynd i brynu paned o de i gynhesu nwylo	clause division	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies15	505	3	NEL	dw meddwl	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies1	500	1	NON	bydd e	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies1	215	1	NON	aye mae	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies1	226	1	NON	mond bod y crew yn iawn dyna i_gyd	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies9	383	1	MOS	cana	\N	cym	monoW	a	1	1	2	2	d	1	1	a	1	1	1	3	1	1	c	(a11da1c
Siarad	davies9	385	1	MOS	er Meic_Stevens sy canu hwn yfe	\N	cym	monoW	a	1	1	2	2	d	1	1	a	1	1	1	3	1	1	c	(a11da1c
Siarad	davies2	400	1	GWY	oh mae raid fi ffonio yr boy radio	\N	cym	monoW	a	1	2	1	3	d	1	1	a	1	1	1	1	4	1	d	(a12da1d
Siarad	davies2	383	1	GWY	oh yndy	\N	cym	monoW	a	1	2	1	3	d	1	1	a	1	1	1	1	4	1	d	(a12da1d
Siarad	davies2	388	1	GWY	yndy	\N	cym	monoW	a	1	2	1	3	d	1	1	a	1	1	1	1	4	1	d	(a12da1d
Siarad	davies2	392	1	GWY	yndy	\N	cym	monoW	a	1	2	1	3	d	1	1	a	1	1	1	1	4	1	d	(a12da1d
Siarad	davies2	399	1	GWY	sti mae o syniad o	\N	cym	monoW	a	1	2	1	3	d	1	1	a	1	1	1	1	4	1	d	(a12da1d
Siarad	davies2	411	1	GWY	mi wna i	\N	cym	monoW	a	1	2	1	3	d	1	1	a	1	1	1	1	4	1	d	(a12da1d
Siarad	davies2	415	1	GWY	na na ond dw i yn	\N	cym	monoW	a	1	2	1	3	d	1	1	a	1	1	1	1	4	1	d	(a12da1d
Siarad	davies2	417	2	GWY	fydd raid i mi	\N	cym	monoW	a	1	2	1	3	d	1	1	a	1	1	1	1	4	1	d	(a12da1d
Siarad	davies2	777	1	GWY	yn hollol achos mae o	\N	cym	monoW	a	1	2	1	3	d	1	1	a	1	1	1	1	4	1	d	(a12da1d
Siarad	davies2	780	1	GWY	dw i ddim yn meddwl bod dy iaith di yn swnio yn nice	\N	cym	monoW	a	1	2	1	3	d	1	1	a	1	1	1	1	4	1	d	(a12da1d
Siarad	davies2	782	1	GWY	sut fedra nhw ddim dallt bod hynna mynd i frifo chdi	\N	cym	monoW	a	1	2	1	3	d	1	1	a	1	1	1	1	4	1	d	(a12da1d
Siarad	davies2	804	1	GWY	oedd o yn siarad am hynna neithiwr	\N	cym	monoW	a	1	2	1	3	d	1	1	a	1	1	1	1	4	1	d	(a12da1d
Siarad	davies2	814	1	GWY	sy yn gael ei na	\N	cym	monoW	a	1	2	1	3	d	1	1	a	1	1	1	1	4	1	d	(a12da1d
Siarad	davies2	829	1	GWY	dw i ddim yn gwybod	\N	cym	monoW	a	1	2	1	3	d	1	1	a	1	1	1	1	4	1	d	(a12da1d
Siarad	davies2	830	1	GWY	wsnos nesa ryw ben dw i yn meddwl	\N	cym	monoW	a	1	2	1	3	d	1	1	a	1	1	1	1	4	1	d	(a12da1d
Siarad	davies2	834	1	GWY	well dw i just yn meddwl waeth i fi wneud tra	\N	cym	monoW	a	1	2	1	3	d	1	1	a	1	1	1	1	4	1	d	(a12da1d
Siarad	davies2	1166	1	GWY	oedd hi yn ffonio	\N	cym	monoW	a	1	2	1	3	d	1	1	a	1	1	1	1	4	1	d	(a12da1d
Siarad	davies2	1172	1	GWY	yeah mae nhw mynd i Madrid	\N	cym	monoW	a	1	2	1	3	d	1	1	a	1	1	1	1	4	1	d	(a12da1d
Siarad	davies2	1180	1	GWY	tyrd awn ni i Brussels am faint mae dy fam a Dylan yn mynd	clause division	cym	monoW	a	1	2	1	3	d	1	1	a	1	1	1	1	4	1	d	(a12da1d
Siarad	davies2	1196	1	GWY	dw i meddwl	\N	cym	monoW	a	1	2	1	3	d	1	1	a	1	1	1	1	4	1	d	(a12da1d
Siarad	davies15	726	1	NEL	oes	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies2	1199	1	GWY	mis Hydref oedd tro dwytha i fi weld hi hefyd	\N	cym	monoW	a	1	2	1	3	d	1	1	a	1	1	1	1	4	1	d	(a12da1d
Siarad	davies2	1211	1	GWY	um yeah na dw i yn edrych ymlaen	\N	cym	monoW	a	1	2	1	3	d	1	1	a	1	1	1	1	4	1	d	(a12da1d
Siarad	davies2	1212	1	GWY	dw i just yn teimlo bach yn	\N	cym	monoW	a	1	2	1	3	d	1	1	a	1	1	1	1	4	1	d	(a12da1d
Siarad	davies2	1227	1	GWY	er dw i ddim yn gwybod	\N	cym	monoW	a	1	2	1	3	d	1	1	a	1	1	1	1	4	1	d	(a12da1d
Siarad	davies2	1236	1	GWY	dyna pryd mae yr gwyliau haf yn dechrau	non-finite	cym	monoW	a	1	2	1	3	d	1	1	a	1	1	1	1	4	1	d	(a12da1d
Siarad	davies2	1242	1	GWY	mae hynna right braf	\N	cym	monoW	a	1	2	1	3	d	1	1	a	1	1	1	1	4	1	d	(a12da1d
Siarad	fusser15	351	1	MRL	dyna be ydy	non-finite	cym	monoW	a	1	1	1	3	d	1	1	a	1	1	1	1	4	1	d	(a11da1d
Siarad	fusser15	354	1	MRL	be dw i yn bwriadu gwneud aww	clause division	cym	monoW	a	1	1	1	3	d	1	1	a	1	1	1	1	4	1	d	(a11da1d
Siarad	fusser15	361	2	MRL	wnaeth hi ddweud	\N	cym	monoW	a	1	1	1	3	d	1	1	a	1	1	1	1	4	1	d	(a11da1d
Siarad	fusser15	367	1	MRL	wnaeth hi ddweud	\N	cym	monoW	a	1	1	1	3	d	1	1	a	1	1	1	1	4	1	d	(a11da1d
Siarad	fusser3	758	1	ALY	yeah dere draw yeah yeah	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser3	760	1	ALY	a gelli di	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser3	761	1	ALY	oh ti gwybod	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser3	761	2	ALY	be mae gyda	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser15	369	2	MRL	dw i ddim yn sure	\N	cym	monoW	a	1	1	1	3	d	1	1	a	1	1	1	1	4	1	d	(a11da1d
Siarad	fusser15	369	3	MRL	os oedd hi yn bwriadu bod yn um snot_lyd	\N	cym	monoW	a	1	1	1	3	d	1	1	a	1	1	1	1	4	1	d	(a11da1d
Siarad	fusser15	371	1	MRL	oedd o yn swnio	\N	cym	monoW	a	1	1	1	3	d	1	1	a	1	1	1	1	4	1	d	(a11da1d
Siarad	davies15	245	1	NEL	blwyddyn yma raid fi berswadio un_ai perswadio chwaer i ddreifio neu ella	finite agreed	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies15	246	1	NEL	oedd o drud neu rywbeth i gampio	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies15	288	1	NEL	dw ddim yn meddwl	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	fusser15	401	1	MRL	oh mae nhw wedi ffindio	\N	cym	monoW	a	1	1	1	3	d	1	1	a	1	1	1	1	4	1	d	(a11da1d
Siarad	fusser15	711	1	MRL	mae o fel ryw Marie_Celeste yno	\N	cym	monoW	a	1	1	1	3	d	1	1	a	1	1	1	1	4	1	d	(a11da1d
Siarad	fusser15	718	1	MRL	Duncan gyfeiriodd ato fo fel yr elephant gwyn	\N	cym	monoW	a	1	1	1	3	d	1	1	a	1	1	1	1	4	1	d	(a11da1d
Siarad	fusser15	720	1	MRL	pan soniais i efo fo	\N	cym	monoW	a	1	1	1	3	d	1	1	a	1	1	1	1	4	1	d	(a11da1d
Siarad	fusser15	728	1	MRL	yn lle i lle i yn lle oeddech chi felly	\N	cym	monoW	a	1	1	1	3	d	1	1	a	1	1	1	1	4	1	d	(a11da1d
Siarad	fusser15	731	1	MRL	oh i_fyny grisiau oeddech chi	\N	cym	monoW	a	1	1	1	3	d	1	1	a	1	1	1	1	4	1	d	(a11da1d
Siarad	fusser15	733	1	MRL	oh right oh dim_ond y llawr gwaelod wnaethon ni ddefnyddio	\N	cym	monoW	a	1	1	1	3	d	1	1	a	1	1	1	1	4	1	d	(a11da1d
Siarad	fusser15	743	1	MRL	yndyn	\N	cym	monoW	a	1	1	1	3	d	1	1	a	1	1	1	1	4	1	d	(a11da1d
Siarad	fusser15	1033	1	MRL	rargian well mae o wedi yeah oh na	\N	cym	monoW	a	1	1	1	3	d	1	1	a	1	1	1	1	4	1	d	(a11da1d
Siarad	fusser15	1050	1	MRL	dw i just yn wonder_o	\N	cym	monoW	a	1	1	1	3	d	1	1	a	1	1	1	1	4	1	d	(a11da1d
Siarad	fusser15	1050	2	MRL	os fydda i yn gwneud llai o waith yno	\N	cym	monoW	a	1	1	1	3	d	1	1	a	1	1	1	1	4	1	d	(a11da1d
Siarad	fusser15	1050	3	MRL	os mae gennyn nhw mwy o rai fewnol ai pheidio ynde	\N	cym	monoW	a	1	1	1	3	d	1	1	a	1	1	1	1	4	1	d	(a11da1d
Siarad	fusser15	1051	1	MRL	gawn ni weld	clause division	cym	monoW	a	1	1	1	3	d	1	1	a	1	1	1	1	4	1	d	(a11da1d
Siarad	fusser15	1088	1	MRL	mae hi yn	\N	cym	monoW	a	1	1	1	3	d	1	1	a	1	1	1	1	4	1	d	(a11da1d
Siarad	fusser15	1098	1	MRL	yeah dydy hi ddim yn gyfforddus	\N	cym	monoW	a	1	1	1	3	d	1	1	a	1	1	1	1	4	1	d	(a11da1d
Siarad	davies15	750	5	NEL	oedden nhw yn golchi dy draed di gynta sti	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	fusser15	1147	1	MRL	yeah yeah yeah oh yeah yeah wedyn mae gynno chdi platform iawn wedyn ynde	\N	cym	monoW	a	1	1	1	3	d	1	1	a	1	1	1	1	4	1	d	(a11da1d
Siarad	fusser15	1166	1	MRL	ydyn nhw am ymuno efo yr rhwydwaith	\N	cym	monoW	a	1	1	1	3	d	1	1	a	1	1	1	1	4	1	d	(a11da1d
Siarad	fusser15	1170	1	MRL	neu byddan nhw	\N	cym	monoW	a	1	1	1	3	d	1	1	a	1	1	1	1	4	1	d	(a11da1d
Siarad	fusser3	802	2	ALY	sy fan acw	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser3	816	1	ALY	crechi yw e yeah	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser23	408	1	AID	ond oedd Candle deud rwan bod yna ryw foy wedi mynd i weithio i Lerpwl yn y docks	\N	cym	monoW	a	1	2	2	2	d	1	1	a	1	1	1	1	4	0	e	(a12da1e
Siarad	fusser23	412	1	AID	gewch chi ddim enw arna i fyth	\N	cym	monoW	a	1	2	2	2	d	1	1	a	1	1	1	1	4	0	e	(a12da1e
Siarad	fusser23	424	2	AID	oedd o yn brifathro	\N	cym	monoW	a	1	2	2	2	d	1	1	a	1	1	1	1	4	0	e	(a12da1e
Siarad	fusser23	430	1	AID	yeah pwysau gwaed uchel sy gynno fo	\N	cym	monoW	a	1	2	2	2	d	1	1	a	1	1	1	1	4	0	e	(a12da1e
Siarad	fusser23	442	1	AID	dydw i ddim yn cofio	\N	cym	monoW	a	1	2	2	2	d	1	1	a	1	1	1	1	4	0	e	(a12da1e
Siarad	fusser23	444	1	AID	yn coleg oedd o efo fi ychi	\N	cym	monoW	a	1	2	2	2	d	1	1	a	1	1	1	1	4	0	e	(a12da1e
Siarad	fusser23	447	1	AID	dydw i ddim yn cofio	\N	cym	monoW	a	1	2	2	2	d	1	1	a	1	1	1	1	4	0	e	(a12da1e
Siarad	fusser23	477	1	AID	yndy hefyd	\N	cym	monoW	a	1	2	2	2	d	1	1	a	1	1	1	1	4	0	e	(a12da1e
Siarad	fusser23	483	1	AID	basai	\N	cym	monoW	a	1	2	2	2	d	1	1	a	1	1	1	1	4	0	e	(a12da1e
Siarad	fusser23	853	1	AID	oh un da ydy Gerallt de	\N	cym	monoW	a	1	2	2	2	d	1	1	a	1	1	1	1	4	0	e	(a12da1e
Siarad	fusser23	860	1	AID	o Llanwddyn mae Iolo yn dod yn wreiddiol	\N	cym	monoW	a	1	2	2	2	d	1	1	a	1	1	1	1	4	0	e	(a12da1e
Siarad	fusser23	863	1	AID	yndy	\N	cym	monoW	a	1	2	2	2	d	1	1	a	1	1	1	1	4	0	e	(a12da1e
Siarad	fusser23	865	1	AID	yndy	\N	cym	monoW	a	1	2	2	2	d	1	1	a	1	1	1	1	4	0	e	(a12da1e
Siarad	fusser23	865	2	AID	mae o yn wedi wneud hi yn dda iawn de	\N	cym	monoW	a	1	2	2	2	d	1	1	a	1	1	1	1	4	0	e	(a12da1e
Siarad	fusser23	870	1	AID	oh yeah mae o wedi bod round y byd	\N	cym	monoW	a	1	2	2	2	d	1	1	a	1	1	1	1	4	0	e	(a12da1e
Siarad	fusser23	870	2	AID	yndy	\N	cym	monoW	a	1	2	2	2	d	1	1	a	1	1	1	1	4	0	e	(a12da1e
Siarad	fusser23	880	1	AID	Drenewydd mae o yn byw rwan	\N	cym	monoW	a	1	2	2	2	d	1	1	a	1	1	1	1	4	0	e	(a12da1e
Siarad	fusser23	883	2	AID	fuodd o yn byw yn Y_Fron	\N	cym	monoW	a	1	2	2	2	d	1	1	a	1	1	1	1	4	0	e	(a12da1e
Siarad	fusser23	895	1	AID	oedd um Natasha rwan	\N	cym	monoW	a	1	2	2	2	d	1	1	a	1	1	1	1	4	0	e	(a12da1e
Siarad	fusser23	897	1	AID	Natasha oedd	\N	cym	monoW	a	1	2	2	2	d	1	1	a	1	1	1	1	4	0	e	(a12da1e
Siarad	fusser23	897	2	AID	oedd yn edrych ar_ôl Lasynys	\N	cym	monoW	a	1	2	2	2	d	1	1	a	1	1	1	1	4	0	e	(a12da1e
Siarad	fusser23	1302	1	AID	ond aeson nhw i edrych i_mewn i ryw hen ddogfennau	\N	cym	monoW	a	1	2	2	2	d	1	1	a	1	1	1	1	4	0	e	(a12da1e
Siarad	fusser23	1312	2	AID	mae yr ffordd yn mynd yn llai llydan	\N	cym	monoW	a	1	2	2	2	d	1	1	a	1	1	1	1	4	0	e	(a12da1e
Siarad	fusser23	1317	1	AID	a mae nhw wedi ffindio allan rwan	\N	cym	monoW	a	1	2	2	2	d	1	1	a	1	1	1	1	4	0	e	(a12da1e
Siarad	fusser23	1318	1	AID	pan oedd y Normaniaid a yr Saeson yn y castell	\N	cym	monoW	a	1	2	2	2	d	1	1	a	1	1	1	1	4	0	e	(a12da1e
Siarad	fusser23	1323	1	AID	a wedyn oedden nhw yn gorod mynd trwy fan yma i edrych	\N	cym	monoW	a	1	2	2	2	d	1	1	a	1	1	1	1	4	0	e	(a12da1e
Siarad	davies1	496	2	NON	os ti mynd adre am ychydig o ddiwrnodau	h	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies1	497	1	NON	ond bydd e wahanol i fi nawr achos	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies1	497	2	NON	bydd dydd Gwener a dydd Llun i_ffwrdd gyda fi	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies1	500	2	NON	werth i fi	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies1	500	3	NON	fynd adre	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies1	515	1	SAR	oedden nhw gweithio gyda fi yn G_E	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	davies1	515	2	SAR	twel	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	davies1	516	1	NON	oedd hi	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies1	517	1	SAR	mae perthyn i fi	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	davies1	518	1	SAR	a oedd hi yn gweithio gyda fi yn G_E	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	davies1	519	1	SAR	a oedd hi yn chweched	two finite clauses, one main and one subordinate	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	davies1	519	2	SAR	pryd o'n i yn blwyddyn deg	h	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	davies1	528	1	SAR	achos oedd Elin hefyd yn chweched	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser23	1323	3	AID	os oedden nhw yn cario cyllyll yn eu sanau neu	\N	cym	monoW	a	1	2	2	2	d	1	1	a	1	1	1	1	4	0	e	(a12da1e
Siarad	fusser23	1328	1	AID	a wedyn um ystyr Penbaras ydy	\N	cym	monoW	a	1	2	2	2	d	1	1	a	1	1	1	1	4	0	e	(a12da1e
Siarad	fusser3	827	2	ALY	mae nhw yn tyfu dydyn achos pan	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser3	829	1	ALY	well na neu sa i rai blynyddau nôl dim ond pâr	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser3	829	2	ALY	oedd	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser30	282	1	LON	ond pan ti yn gwisgo frock wen	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser30	282	3	LON	dw ddim isio	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser30	284	1	LON	oh wneith	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser30	288	1	LON	wnes i	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser30	300	1	LON	yn union ti ddim isio timod	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser30	306	1	LON	ia well wna i ddim mynd arno fo mor aml â hynna	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser30	307	1	LON	ella i ddim ella i ddim edrych yn a i ddim yn dywyll dywyll pa yr un bynnag	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	stammers4	199	1	ALN	a mae o yn fwy o hwyl na 	\N	cym	monoW	a	1	2	2	2	d	1	1	a	1	1	1	3	1	4	f	(a12da1f
Siarad	stammers4	205	1	ALN	a basai Ed yn gwybod 	\N	cym	monoW	a	1	2	2	2	d	1	1	a	1	1	1	3	1	4	f	(a12da1f
Siarad	stammers4	207	1	ALN	oh basai 	\N	cym	monoW	a	1	2	2	2	d	1	1	a	1	1	1	3	1	4	f	(a12da1f
Siarad	stammers4	209	1	ALN	oh mae yn dallt 	\N	cym	monoW	a	1	2	2	2	d	1	1	a	1	1	1	3	1	4	f	(a12da1f
Siarad	stammers4	220	1	ALN	be mae yn dysgu yn Cae_Top 	\N	cym	monoW	a	1	2	2	2	d	1	1	a	1	1	1	3	1	4	f	(a12da1f
Siarad	stammers4	226	1	ALN	mae yn canu cloch 	\N	cym	monoW	a	1	2	2	2	d	1	1	a	1	1	1	3	1	4	f	(a12da1f
Siarad	stammers4	227	1	ALN	sure faswn i nabod nhw 	\N	cym	monoW	a	1	2	2	2	d	1	1	a	1	1	1	3	1	4	f	(a12da1f
Siarad	stammers4	227	2	ALN	petaswn i gweld nhw 	\N	cym	monoW	a	1	2	2	2	d	1	1	a	1	1	1	3	1	4	f	(a12da1f
Siarad	stammers4	235	1	ALN	oh na dw i sure 	\N	cym	monoW	a	1	2	2	2	d	1	1	a	1	1	1	3	1	4	f	(a12da1f
Siarad	stammers4	235	3	ALN	dw i sure 	\N	cym	monoW	a	1	2	2	2	d	1	1	a	1	1	1	3	1	4	f	(a12da1f
Siarad	stammers4	235	4	ALN	dw i sure 	\N	cym	monoW	a	1	2	2	2	d	1	1	a	1	1	1	3	1	4	f	(a12da1f
Siarad	stammers4	235	5	ALN	wneith hi fwynhau o 	\N	cym	monoW	a	1	2	2	2	d	1	1	a	1	1	1	3	1	4	f	(a12da1f
Siarad	stammers4	237	1	ALN	dw i just yn er 	\N	cym	monoW	a	1	2	2	2	d	1	1	a	1	1	1	3	1	4	f	(a12da1f
Siarad	stammers4	407	1	ALN	so oedd hi yn mynd amdani yn ei byd bach ei hun	\N	cym	monoW	a	1	2	2	2	d	1	1	a	1	1	1	3	1	4	f	(a12da1f
Siarad	stammers4	412	1	ALN	oh o'n i yn	repetition here, but probably shd be classed as two separate clauses	cym	monoW	a	1	2	2	2	d	1	1	a	1	1	1	3	1	4	f	(a12da1f
Siarad	davies1	564	1	NON	yeah iawn oedd e yfe	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies15	288	2	NEL	wna i wneud o	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies15	487	1	NEL	a wedyn bob tro dw i yn gofyn wrtho fo	clause division	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies15	488	1	NEL	dw i wedi ffonio ffonio neu e_mail_io fo dipyn o weithiau wan	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies15	491	1	NEL	mae hyd yn	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies15	491	2	NEL	dw i hyd yn gofyn	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies15	492	1	NEL	oh dach chi wedi cael gafael	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies15	493	1	NEL	dach chi wedi sôn iddyn nhw eto	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies15	495	1	NEL	ond fe fydda i fory	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies15	497	1	NEL	achos mae yn dal fi nôl de	clause division	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies15	503	1	NEL	oh just fel ffarmwrs dyn nhw sti	non-finite because 'sti' id discourse marker	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies15	505	2	NEL	basai raid i fi gael un_ai rhif phone neu cyfeiriad	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies15	716	1	NEL	mae yn iawn am treat	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies15	716	2	NEL	dydy rywsut	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	stammers4	412	2	ALN	ces i lun ohoni yn canu yn_do efo 	\N	cym	monoW	a	1	2	2	2	d	1	1	a	1	1	1	3	1	4	f	(a12da1f
Siarad	stammers4	413	1	ALN	just roid y cefn y video dros y drws fel 	\N	cym	monoW	a	1	2	2	2	d	1	1	a	1	1	1	3	1	4	f	(a12da1f
Siarad	stammers4	413	2	ALN	bod hi ddim y ngweld i 	\N	cym	monoW	a	1	2	2	2	d	1	1	a	1	1	1	3	1	4	f	(a12da1f
Siarad	stammers4	418	1	ALN	dw ddim yn gwybod 	\N	cym	monoW	a	1	2	2	2	d	1	1	a	1	1	1	3	1	4	f	(a12da1f
Siarad	stammers4	420	1	ALN	fydd raid fi wneud 	\N	cym	monoW	a	1	2	2	2	d	1	1	a	1	1	1	3	1	4	f	(a12da1f
Siarad	stammers4	420	2	ALN	bydd 	\N	cym	monoW	a	1	2	2	2	d	1	1	a	1	1	1	3	1	4	f	(a12da1f
Siarad	stammers4	424	1	ALN	yndy 	\N	cym	monoW	a	1	2	2	2	d	1	1	a	1	1	1	3	1	4	f	(a12da1f
Siarad	stammers4	426	1	ALN	mi ddylai fod yna ond um 	\N	cym	monoW	a	1	2	2	2	d	1	1	a	1	1	1	3	1	4	f	(a12da1f
Siarad	stammers4	430	1	ALN	dyna dw i gael 	verbless	cym	monoW	a	1	2	2	2	d	1	1	a	1	1	1	3	1	4	f	(a12da1f
Siarad	stammers4	430	3	ALN	am gael trowsus efo pumed pocket yno fo de 	\N	cym	monoW	a	1	2	2	2	d	1	1	a	1	1	1	3	1	4	f	(a12da1f
Siarad	stammers4	448	1	ALN	wrth_gwrs mae hi ar dop y babanod wan 	\N	cym	monoW	a	1	2	2	2	d	1	1	a	1	1	1	3	1	4	f	(a12da1f
Siarad	stammers4	448	2	ALN	yndy 	\N	cym	monoW	a	1	2	2	2	d	1	1	a	1	1	1	3	1	4	f	(a12da1f
Siarad	stammers4	463	1	ALN	oh mae yn medru dydy ond 	\N	cym	monoW	a	1	2	2	2	d	1	1	a	1	1	1	3	1	4	f	(a12da1f
Siarad	stammers4	622	1	ALN	dw i yn bound o fod ar effro 	\N	cym	monoW	a	1	2	2	2	d	1	1	a	1	1	1	3	1	4	f	(a12da1f
Siarad	stammers4	624	1	ALN	na dydy ddim yn swnio fel 	\N	cym	monoW	a	1	2	2	2	d	1	1	a	1	1	1	3	1	4	f	(a12da1f
Siarad	stammers4	624	2	ALN	bod hi yn mynd am ail un ar hyn o bryd 	\N	cym	monoW	a	1	2	2	2	d	1	1	a	1	1	1	3	1	4	f	(a12da1f
Siarad	stammers4	625	1	ALN	ond um wedi deud hynny 	\N	cym	monoW	a	1	2	2	2	d	1	1	a	1	1	1	3	1	4	f	(a12da1f
Siarad	fusser30	307	2	LON	na wnaf	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser30	311	1	LON	dw i sure	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser30	311	2	LON	fydd o yn iawn	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser30	556	1	LON	dan ni isio mynd drwy yr emynau	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser30	579	1	LON	be be be oedd hwnna	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser30	591	1	LON	wna i	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser30	597	1	LON	oh wna i holi hi	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser30	598	1	LON	wna i ofyn wrthi timod ganu rei allan i ni de	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser30	611	1	LON	dw i deud wrtha chdi bod fi wedi bod am y rehearsal yn barod do	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	stammers4	625	2	ALN	oedd hi yn gwadu bob_dim mynd am y cyntaf 	\N	cym	monoW	a	1	2	2	2	d	1	1	a	1	1	1	3	1	4	f	(a12da1f
Siarad	davies1	733	1	SAR	well timod well o'n i yn blentyn ysgol blwyddyn deg pryd hynny	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	davies1	734	1	NON	ond timod	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies1	734	2	NON	mae yn anodd	two finite clauses, one main and one subordinate	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies1	734	3	NON	pan ti cael ymarferion fel yna bob nos	h	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies1	737	1	SAR	sure mae mynd ymlaen amboutu mis cyn e	subordinate clause wrongly split	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	davies1	738	1	NON	fi cofio cyfnod	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies1	738	2	NON	twel o'n i	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies1	738	3	NON	yn wneud um	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies1	738	4	NON	mynd i ysgol bob dydd wedyn	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies1	738	5	NON	oedd	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies1	738	6	NON	oedd hi yn gyfnod steddfod ysgol	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies1	739	1	NON	so oedd steddfod ysgol gyda ni ar ar_ôl practice ar_ôl ysgol	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies1	749	1	SAR	yeah oh ro't ti blwyddyn deg de	two finite clauses, one main and one subordinate	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	davies1	749	2	SAR	de pryd o'n i yn wneud y panto	h	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	davies1	749	3	SAR	oedd gyda fi novel tŷ yr un pryd	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	davies10	413	1	HIL	oedd	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	stammers4	627	1	ALN	a wedyn yn sydyn wnaethon ni glocio 	\N	cym	monoW	a	1	2	2	2	d	1	1	a	1	1	1	3	1	4	f	(a12da1f
Siarad	stammers4	630	1	ALN	oh esgusodwch fi pobl y tâp 	\N	cym	monoW	a	1	2	2	2	d	1	1	a	1	1	1	3	1	4	f	(a12da1f
Siarad	stammers4	632	1	ALN	aeth hi just sefyll yna a cochi yn llwyr 	\N	cym	monoW	a	1	2	2	2	d	1	1	a	1	1	1	3	1	4	f	(a12da1f
Siarad	stammers4	638	1	ALN	mae angen i fi anfon y rysÃ¡it gwreiddiol ati hi 	\N	cym	monoW	a	1	2	2	2	d	1	1	a	1	1	1	3	1	4	f	(a12da1f
Siarad	stammers4	639	1	ALN	mae wedi rhoi mwy o vinegar i_fewn 	\N	cym	monoW	a	1	2	2	2	d	1	1	a	1	1	1	3	1	4	f	(a12da1f
Siarad	stammers4	640	1	ALN	ond oedd hi meddwl 	\N	cym	monoW	a	1	2	2	2	d	1	1	a	1	1	1	3	1	4	f	(a12da1f
Siarad	stammers4	645	1	ALN	oedd 	\N	cym	monoW	a	1	2	2	2	d	1	1	a	1	1	1	3	1	4	f	(a12da1f
Siarad	fusser30	611	2	LON	bod fi wedi bod am y rehearsal yn barod do	non-finite	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser30	614	1	LON	aethon ni yna	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser30	615	1	LON	wnaeth o ofyn ni	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser30	616	1	LON	oh lle dach chi isio cyfarfod	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser30	618	1	LON	oh basai yr eglwys yn nice	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser30	884	1	LON	oedd o yn gwybod	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser30	884	2	LON	be oedd o wneud ti meddwl	clause division	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser30	886	1	LON	oedd	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser30	889	1	LON	oh so oedd o wedi bod yn yn safio fo	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser30	898	1	LON	a be oedd um yr un	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser30	898	3	LON	oedd hi yn iawn	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser30	916	1	LON	oh nag oedd	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser30	921	1	LON	oh a wedi roid o ar y we neu rywbeth ia	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser30	925	1	LON	ydyn nhw yn siarad efo hi	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	davies1	751	1	SAR	ar_ôl hwnna wnes i sure o fod fflago	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	davies1	754	2	NON	twel	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies1	762	1	SAR	oedd gwaith sgwennu lan beth	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	davies1	762	2	SAR	oedd pawb wedi gweud a anfon hwnna	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	davies1	764	1	NON	achos yn y cyfnod pan o'n i yn captain steddfod	subordinate clause inserted in main	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies1	764	1	NON	oedd gyda ni fel um drama	h	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies1	764	2	NON	oedd Ffermwyr_Ifanc	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies15	731	1	NEL	ddo i am dro efo chdi	two finite clauses	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies15	731	2	NEL	os oes gen ti awydd cwmni	h	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies15	736	1	NEL	ia os na dw i wedi cael job bod fi yn mynd yn_ôl i yr byd go iawn	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies15	743	1	NEL	oh na mae nhw yn bob man sti rhad rhad rhad de fel	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies15	747	1	NEL	oedd o yn anhygoel	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies15	749	1	NEL	ond oedda chdi yn	clause division or ignore first clause if retracing follows?	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies15	749	2	NEL	o'n i yna am tua awr a hanner	clause division or ignore first clause if retracing follows?	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies15	750	1	NEL	fel os o'ch chdi mynd just i gael facial neu just i cael	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	fusser30	926	1	LON	ydyn nhw yn iawn efo hi	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser30	946	1	LON	yndy	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser25	272	1	ALB	cer mewn yn noethlymun i cael tan gyd drosodd	\N	cym	monoW	a	1	1	1	3	d	1	1	a	1	1	4	1	4	3	j	(a11da1j
Siarad	fusser25	273	1	ALB	na na na dw i wisgo trôns just rhag ofn rywun cerdded mewn	clause division	cym	monoW	a	1	1	1	3	d	1	1	a	1	1	4	1	4	3	j	(a11da1j
Siarad	fusser25	299	1	ALB	o'n i yn gweithio mewn gwesty um arall um	\N	cym	monoW	a	1	1	1	3	d	1	1	a	1	1	4	1	4	3	j	(a11da1j
Siarad	fusser25	299	5	ALB	lle ti cerdded mewn i stafell bach yma	clause division	cym	monoW	a	1	1	1	3	d	1	1	a	1	1	4	1	4	3	j	(a11da1j
Siarad	fusser25	304	1	ALB	ac oedd byth yn lliwio	\N	cym	monoW	a	1	1	1	3	d	1	1	a	1	1	4	1	4	3	j	(a11da1j
Siarad	fusser25	307	1	ALB	oh dw i ddim yn dod eto	\N	cym	monoW	a	1	1	1	3	d	1	1	a	1	1	4	1	4	3	j	(a11da1j
Siarad	fusser25	308	1	ALB	dw i byth yn lliwio yma	\N	cym	monoW	a	1	1	1	3	d	1	1	a	1	1	4	1	4	3	j	(a11da1j
Siarad	fusser25	569	1	ALB	oherwydd oedd hwn drws nesa um yn Llanwthern ac un Penrhyn	\N	cym	monoW	a	1	1	1	3	d	1	1	a	1	1	4	1	4	3	j	(a11da1j
Siarad	fusser25	570	1	ALB	mae Llanwthern dod o_dan Penrhyn	\N	cym	monoW	a	1	1	1	3	d	1	1	a	1	1	4	1	4	3	j	(a11da1j
Siarad	fusser25	574	1	ALB	dw ddim yn deall sut	\N	cym	monoW	a	1	1	1	3	d	1	1	a	1	1	4	1	4	3	j	(a11da1j
Siarad	fusser25	576	1	ALB	ond oedd llwythi nhw wedi cau er Blaenau Bala Bangor Caernarfon Deiniolen yn Gwynedd a	clause division	cym	monoW	a	1	1	1	3	d	1	1	a	1	1	4	1	4	3	j	(a11da1j
Siarad	fusser25	601	1	ALB	oh ti gwybod pobl gwirion fel yna	\N	cym	monoW	a	1	1	1	3	d	1	1	a	1	1	4	1	4	3	j	(a11da1j
Siarad	fusser25	601	3	ALB	mae nhw fath â	\N	cym	monoW	a	1	1	1	3	d	1	1	a	1	1	4	1	4	3	j	(a11da1j
Siarad	fusser25	607	1	ALB	dw i cofio cael er bobl ffonio fi gweithio i Bupa	\N	cym	monoW	a	1	1	1	3	d	1	1	a	1	1	4	1	4	3	j	(a11da1j
Siarad	fusser25	611	1	ALB	hello dach chi ffonio Bupa	\N	cym	monoW	a	1	1	1	3	d	1	1	a	1	1	4	1	4	3	j	(a11da1j
Siarad	fusser25	616	1	ALB	ac oedd o yn mynnu	\N	cym	monoW	a	1	1	1	3	d	1	1	a	1	1	4	1	4	3	j	(a11da1j
Siarad	davies1	766	1	NON	a fel gyda drama ryw wyth person sy angen yno fe	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies1	770	1	NON	a tibod mae nhw yn dewis yr aelodau hena	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies1	770	2	NON	i wneud e	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies1	773	1	NON	pan gyda rywbeth fel panto mae nhw yn trial wneud rywbeth	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies1	773	2	NON	i gael yr aelodau gyd ynghlwm	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies1	773	3	NON	â fe	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies1	775	1	SAR	yndy	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	davies1	776	1	SAR	well fel yna oedd Hanner_Awr_O_Adloniant	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	davies1	777	1	NON	oh ydy	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies1	777	2	NON	mae rhan i bawb fan yna yn_does	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies16	283	1	HYW	wnes i just gweld chdi just yn mynd	clause division	cym	monoW	a	1	1	1	2	c	1	1	a	1	1	1	1	1	1	b	(a11ca1b
Siarad	fusser25	619	1	ALB	ac oedd o yn cau coelio ni	\N	cym	monoW	a	1	1	1	3	d	1	1	a	1	1	4	1	4	3	j	(a11da1j
Siarad	fusser25	859	1	ALB	mae nhw yn fath â cwmni bach	\N	cym	monoW	a	1	1	1	3	d	1	1	a	1	1	4	1	4	3	j	(a11da1j
Siarad	fusser25	871	1	ALB	a nhw wnaeth o yn park efo couple cartons a couple o ffrwythau	\N	cym	monoW	a	1	1	1	3	d	1	1	a	1	1	4	1	4	3	j	(a11da1j
Siarad	fusser25	876	2	ALB	mae nhw ar gwair cartons yn symud	\N	cym	monoW	a	1	1	1	3	d	1	1	a	1	1	4	1	4	3	j	(a11da1j
Siarad	fusser29	267	1	LOI	yndy	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	1	1	1	1	b	(a12bb1b
Siarad	fusser25	884	1	ALB	dw i cofio weld rywbeth yna	\N	cym	monoW	a	1	1	1	3	d	1	1	a	1	1	4	1	4	3	j	(a11da1j
Siarad	fusser25	889	1	ALB	dw i sure bod nhw	\N	cym	monoW	a	1	1	1	3	d	1	1	a	1	1	4	1	4	3	j	(a11da1j
Siarad	fusser25	892	1	ALB	oedd rhywun wedi wneud video adre sut i cael gwared o bits ola o gwaelod y carton dance_o i i cân reggae	\N	cym	monoW	a	1	1	1	3	d	1	1	a	1	1	4	1	4	3	j	(a11da1j
Siarad	davies12	364	1	SAL	wna i hintio am hwnna	\N	cym	monoW	a	1	1	3	1	d	1	1	a	1	4	1	4	1	3	j	(a11da1j
Siarad	davies12	364	2	SAL	dw meddwl	\N	cym	monoW	a	1	1	3	1	d	1	1	a	1	4	1	4	1	3	j	(a11da1j
Siarad	davies12	386	1	SAL	yndy	\N	cym	monoW	a	1	1	3	1	d	1	1	a	1	4	1	4	1	3	j	(a11da1j
Siarad	davies12	386	2	SAL	mae	\N	cym	monoW	a	1	1	3	1	d	1	1	a	1	4	1	4	1	3	j	(a11da1j
Siarad	davies12	398	1	SAL	mae nhw yn_dydy	\N	cym	monoW	a	1	1	3	1	d	1	1	a	1	4	1	4	1	3	j	(a11da1j
Siarad	davies12	400	2	SAL	ydy fel	\N	cym	monoW	a	1	1	3	1	d	1	1	a	1	4	1	4	1	3	j	(a11da1j
Siarad	davies12	400	2	SAL	os ti yn colli o	h	cym	monoW	a	1	1	3	1	d	1	1	a	1	4	1	4	1	3	j	(a11da1j
Siarad	davies12	400	3	SAL	dydy o ddim diwedd y byd	\N	cym	monoW	a	1	1	3	1	d	1	1	a	1	4	1	4	1	3	j	(a11da1j
Siarad	davies12	402	2	SAL	dw i yn anghofio amdano fo	\N	cym	monoW	a	1	1	3	1	d	1	1	a	1	4	1	4	1	3	j	(a11da1j
Siarad	davies12	404	1	SAL	so os dw i wastad isio dal o	\N	cym	monoW	a	1	1	3	1	d	1	1	a	1	4	1	4	1	3	j	(a11da1j
Siarad	davies12	404	2	SAL	so wna i gofio defnyddio fo	clause division	cym	monoW	a	1	1	3	1	d	1	1	a	1	4	1	4	1	3	j	(a11da1j
Siarad	davies12	406	2	SAL	os dw i yn gollwng diod neu rywbeth arno fo	\N	cym	monoW	a	1	1	3	1	d	1	1	a	1	4	1	4	1	3	j	(a11da1j
Siarad	davies12	759	1	SAL	ond be ddiawl mae wneud efo fo	\N	cym	monoW	a	1	1	3	1	d	1	1	a	1	4	1	4	1	3	j	(a11da1j
Siarad	davies12	762	1	SAL	yndy	\N	cym	monoW	a	1	1	3	1	d	1	1	a	1	4	1	4	1	3	j	(a11da1j
Siarad	davies12	770	1	SAL	yndy	\N	cym	monoW	a	1	1	3	1	d	1	1	a	1	4	1	4	1	3	j	(a11da1j
Siarad	davies12	770	2	SAL	yndy	\N	cym	monoW	a	1	1	3	1	d	1	1	a	1	4	1	4	1	3	j	(a11da1j
Siarad	davies12	783	1	SAL	yndy	\N	cym	monoW	a	1	1	3	1	d	1	1	a	1	4	1	4	1	3	j	(a11da1j
Siarad	davies12	786	1	SAL	ie baswn i meddwl	\N	cym	monoW	a	1	1	3	1	d	1	1	a	1	4	1	4	1	3	j	(a11da1j
Siarad	davies12	788	1	SAL	mae yn edrych yn hogan nice	\N	cym	monoW	a	1	1	3	1	d	1	1	a	1	4	1	4	1	3	j	(a11da1j
Siarad	davies12	793	1	SAL	ie basai fo yn nice	\N	cym	monoW	a	1	1	3	1	d	1	1	a	1	4	1	4	1	3	j	(a11da1j
Siarad	davies12	793	2	SAL	bysai	\N	cym	monoW	a	1	1	3	1	d	1	1	a	1	4	1	4	1	3	j	(a11da1j
Siarad	davies12	805	1	SAL	do School_Night School_Night oedd o	\N	cym	monoW	a	1	1	3	1	d	1	1	a	1	4	1	4	1	3	j	(a11da1j
Siarad	davies12	809	1	SAL	oedd	\N	cym	monoW	a	1	1	3	1	d	1	1	a	1	4	1	4	1	3	j	(a11da1j
Siarad	davies6	489	1	DAN	a wedyn dechrau yr trydydd gyfres	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	davies6	489	2	DAN	ydy um Italia	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	davies6	491	1	DAN	diwedd y trydydd gyfres ydy er Dwyn_Defaid	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	davies6	502	1	DAN	ond Alun_Fred wedi mynd i um redeg Ffilmiau'r_Nant	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	davies6	502	3	DAN	oedd	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	davies6	515	1	DAN	ella fyddi di yn teulu yn cyfarth rhyw ddiwrnod	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	davies6	521	3	DAN	fasai fo wedi lladd Graham	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	davies6	521	4	DAN	basai	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	davies6	533	2	DAN	nad o'n i ddim	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	davies6	533	3	DAN	yn dallt o'n i	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser3	267	1	BEC	so pryd dach chi	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	4	1	1	1	1	d	(a11ba1d
Siarad	davies13	246	2	MEI	dw i yn cael gwared ar Queen ar un adeg	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	1	1	1	1	b	(a11ba1b
Siarad	davies13	248	1	MEI	dw i yn roi rywun arall	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	1	1	1	1	b	(a11ba1b
Siarad	davies13	249	1	MEI	ond mae sure y mis nesa	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	1	1	1	1	b	(a11ba1b
Siarad	davies13	257	2	JAM	does dim lot o wahaniaeth	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	1	1	1	1	b	(a11ba1b
Siarad	davies13	258	1	MEI	lle wnest ti gael o	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	1	1	1	1	b	(a11ba1b
Siarad	davies3	446	3	TOS	dw meddwl sti	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	davies12	1162	1	SAL	oh oes um	\N	cym	monoW	a	1	1	3	1	d	1	1	a	1	4	1	4	1	3	j	(a11da1j
Siarad	davies12	1162	2	SAL	mae yna oh	\N	cym	monoW	a	1	1	3	1	d	1	1	a	1	4	1	4	1	3	j	(a11da1j
Siarad	davies12	1168	1	SAL	oedd	\N	cym	monoW	a	1	1	3	1	d	1	1	a	1	4	1	4	1	3	j	(a11da1j
Siarad	davies12	1173	1	SAL	enw honna ydy Kylie	clause division	cym	monoW	a	1	1	3	1	d	1	1	a	1	4	1	4	1	3	j	(a11da1j
Siarad	davies12	1174	1	SAL	dw ddim yn cofio	\N	cym	monoW	a	1	1	3	1	d	1	1	a	1	4	1	4	1	3	j	(a11da1j
Siarad	davies12	1183	1	SAL	dw meddwl mai just angen um bach o waith	\N	cym	monoW	a	1	1	3	1	d	1	1	a	1	4	1	4	1	3	j	(a11da1j
Siarad	davies12	1189	1	SAL	mae nhw wedi bod yn deud hynna ers blwyddyn gynta ni hefyd a cyn hynny hefyd	\N	cym	monoW	a	1	1	3	1	d	1	1	a	1	4	1	4	1	3	j	(a11da1j
Siarad	davies12	1195	1	SAL	pan oedd o yma	\N	cym	monoW	a	1	1	3	1	d	1	1	a	1	4	1	4	1	3	j	(a11da1j
Siarad	davies12	1199	1	SAL	yeah well dw meddwl	\N	cym	monoW	a	1	1	3	1	d	1	1	a	1	4	1	4	1	3	j	(a11da1j
Siarad	davies12	1199	2	SAL	dyna ydy yr great plan	\N	cym	monoW	a	1	1	3	1	d	1	1	a	1	4	1	4	1	3	j	(a11da1j
Siarad	davies12	1200	1	SAL	mynd i ddigwydd neu ddim dw ddim yn gwybod	non-finite	cym	monoW	a	1	1	3	1	d	1	1	a	1	4	1	4	1	3	j	(a11da1j
Siarad	fusser27	280	1	LIS	aeth hi mewn i ysbyty yn Heath	\N	cym	monoW	a	1	1	1	3	d	1	1	a	1	1	4	4	4	4	m	(a11da1m
Siarad	fusser27	282	1	LIS	yeah so aethon ni i yr Tesco_Extra pryd hynny	\N	cym	monoW	a	1	1	1	3	d	1	1	a	1	1	4	4	4	4	m	(a11da1m
Siarad	fusser27	288	1	LIS	yeah mae Marvin	\N	cym	monoW	a	1	1	1	3	d	1	1	a	1	1	4	4	4	4	m	(a11da1m
Siarad	fusser27	289	1	LIS	dw i sure fod wedi siarad amboutu	\N	cym	monoW	a	1	1	1	3	d	1	1	a	1	1	4	4	4	4	m	(a11da1m
Siarad	fusser27	290	1	LIS	ond mae fo byw yna hefyd	\N	cym	monoW	a	1	1	1	3	d	1	1	a	1	1	4	4	4	4	m	(a11da1m
Siarad	fusser27	298	1	LIS	mae nhw isio i fi mynd ar gwyliau gyda nhw eleni fel	\N	cym	monoW	a	1	1	1	3	d	1	1	a	1	1	4	4	4	4	m	(a11da1m
Siarad	fusser27	301	1	LIS	ond dw i mynd yn barod gyda Lily a Kristen	\N	cym	monoW	a	1	1	1	3	d	1	1	a	1	1	4	4	4	4	m	(a11da1m
Siarad	fusser27	303	1	LIS	so dw i wedi dweud na	\N	cym	monoW	a	1	1	1	3	d	1	1	a	1	1	4	4	4	4	m	(a11da1m
Siarad	fusser27	572	1	LIS	well os dw i yn deall e	\N	cym	monoW	a	1	1	1	3	d	1	1	a	1	1	4	4	4	4	m	(a11da1m
Siarad	fusser27	572	2	LIS	dw i yn joio wneud e	\N	cym	monoW	a	1	1	1	3	d	1	1	a	1	1	4	4	4	4	m	(a11da1m
Siarad	fusser27	574	1	LIS	just os sa i yn deall o fel	\N	cym	monoW	a	1	1	1	3	d	1	1	a	1	1	4	4	4	4	m	(a11da1m
Siarad	fusser27	582	1	LIS	mae ffrind fi wedi bod yna	\N	cym	monoW	a	1	1	1	3	d	1	1	a	1	1	4	4	4	4	m	(a11da1m
Siarad	davies13	261	3	JAM	mae tua um cant naw_deg	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	1	1	1	1	b	(a11ba1b
Siarad	davies6	544	1	DAN	oedd	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	davies13	264	1	JAM	achos mae nhw yn trial annog pobl i siopa ar_lein	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	1	1	1	1	b	(a11ba1b
Siarad	davies13	266	1	JAM	y peth yw e ti	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	1	1	1	1	b	(a11ba1b
Siarad	davies13	272	1	MEI	hwnna oedd y rhata	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	1	1	1	1	b	(a11ba1b
Siarad	davies13	273	1	MEI	wnest ti jecio bob man	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	1	1	1	1	b	(a11ba1b
Siarad	davies13	276	1	JAM	oedd fi yn credu	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	1	1	1	1	b	(a11ba1b
Siarad	davies13	276	2	JAM	oedd un byti tair punt yn tsiepach	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	1	1	1	1	b	(a11ba1b
Siarad	davies13	279	1	JAM	timod Comet	clause division	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	1	1	1	1	b	(a11ba1b
Siarad	davies13	279	2	JAM	pawb wedi clywed am Comet	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	1	1	1	1	b	(a11ba1b
Siarad	davies13	281	1	JAM	a mae hi wedi cael e	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	1	1	1	1	b	(a11ba1b
Siarad	fusser27	586	1	LIS	mae yn fynd yna	\N	cym	monoW	a	1	1	1	3	d	1	1	a	1	1	4	4	4	4	m	(a11da1m
Siarad	fusser27	588	1	LIS	aeth hi yna gyda Kristen flwyddyn dwythaf	\N	cym	monoW	a	1	1	1	3	d	1	1	a	1	1	4	4	4	4	m	(a11da1m
Siarad	fusser27	590	1	LIS	wnes i adael yn	\N	cym	monoW	a	1	1	1	3	d	1	1	a	1	1	4	4	4	4	m	(a11da1m
Siarad	fusser27	590	3	LIS	aethon ni mas i yr Aifft am wythnos	\N	cym	monoW	a	1	1	1	3	d	1	1	a	1	1	4	4	4	4	m	(a11da1m
Siarad	fusser27	604	1	LIS	yeah aeth um	\N	cym	monoW	a	1	1	1	3	d	1	1	a	1	1	4	4	4	4	m	(a11da1m
Siarad	fusser27	862	1	LIS	a oedd e fel yn dechrau tywyllu	\N	cym	monoW	a	1	1	1	3	d	1	1	a	1	1	4	4	4	4	m	(a11da1m
Siarad	fusser27	863	1	LIS	oedd fi a Lily yn mynd fel	\N	cym	monoW	a	1	1	1	3	d	1	1	a	1	1	4	4	4	4	m	(a11da1m
Siarad	fusser27	869	1	LIS	so fyddai fe tair awr nôl i fynd y ffordd arall	\N	cym	monoW	a	1	1	1	3	d	1	1	a	1	1	4	4	4	4	m	(a11da1m
Siarad	fusser27	884	1	LIS	ah dw i yn recognise_io fan hyn	\N	cym	monoW	a	1	1	1	3	d	1	1	a	1	1	4	4	4	4	m	(a11da1m
Siarad	fusser27	885	2	LIS	pan oedd yr eira	\N	cym	monoW	a	1	1	1	3	d	1	1	a	1	1	4	4	4	4	m	(a11da1m
Siarad	fusser27	888	1	LIS	aeth fi a ffrindiau fi fel	\N	cym	monoW	a	1	1	1	3	d	1	1	a	1	1	4	4	4	4	m	(a11da1m
Siarad	fusser27	284	3	MAB	mae cariad um cefnder fi yn byw right wrth ymyl	\N	cym	monoW	a	1	1	2	3	e	1	1	a	1	1	1	4	1	1	d	(a11ea1d
Siarad	fusser27	285	1	MAB	well oedd hi	\N	cym	monoW	a	1	1	2	3	e	1	1	a	1	1	1	4	1	1	d	(a11ea1d
Siarad	fusser27	286	1	MAB	mae hi wedi symud yn_ôl o Gaerdydd wan	\N	cym	monoW	a	1	1	2	3	e	1	1	a	1	1	1	4	1	1	d	(a11ea1d
Siarad	fusser27	287	1	MAB	ond oedd hi yn byw right wrth ymyl	\N	cym	monoW	a	1	1	2	3	e	1	1	a	1	1	1	4	1	1	d	(a11ea1d
Siarad	fusser27	291	2	MAB	wnest ti ddeud	\N	cym	monoW	a	1	1	2	3	e	1	1	a	1	1	1	4	1	1	d	(a11ea1d
Siarad	fusser27	305	1	MAB	na na faswn i ddim chwaith	\N	cym	monoW	a	1	1	2	3	e	1	1	a	1	1	1	4	1	1	d	(a11ea1d
Siarad	fusser27	316	1	MAB	dw i isio mynd i Mexico ar y gwyliau	\N	cym	monoW	a	1	1	2	3	e	1	1	a	1	1	1	4	1	1	d	(a11ea1d
Siarad	stammers4	169	1	ELE	fedra i fynd efo Debbie a Charlie am chwech tan saith 	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	stammers4	181	1	ELE	well pwy sy yn chwarae hwnna te 	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	stammers4	211	1	ELE	na Emma oedd yn gobeithio 	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	stammers4	211	2	ELE	mynd hefo ei plant hi heddiw 	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser27	317	1	MAB	achos mae ffrindiau fi yno Cuthbert	clause division	cym	monoW	a	1	1	2	3	e	1	1	a	1	1	1	4	1	1	d	(a11ea1d
Siarad	fusser27	325	1	MAB	ond fan yna faswn i yn gallu mynd	\N	cym	monoW	a	1	1	2	3	e	1	1	a	1	1	1	4	1	1	d	(a11ea1d
Siarad	fusser27	569	1	MAB	dw i yn gwybod bod o yn bwysig	\N	cym	monoW	a	1	1	2	3	e	1	1	a	1	1	1	4	1	1	d	(a11ea1d
Siarad	fusser22	259	1	WYN	dyna ydy ffordd i fygwth	non-finite	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	4	1	1	d	(a13ba1d
Siarad	fusser27	570	1	MAB	mae rhifau yn bwysig ofnadwy fath â i bywyd a bob_dim	\N	cym	monoW	a	1	1	2	3	e	1	1	a	1	1	1	4	1	1	d	(a11ea1d
Siarad	fusser27	571	1	MAB	ond dw i just ddim yn licio	\N	cym	monoW	a	1	1	2	3	e	1	1	a	1	1	1	4	1	1	d	(a11ea1d
Siarad	fusser27	579	1	MAB	oh ti gwybod	\N	cym	monoW	a	1	1	2	3	e	1	1	a	1	1	1	4	1	1	d	(a11ea1d
Siarad	fusser27	581	1	MAB	fasai hynna yn cool	\N	cym	monoW	a	1	1	2	3	e	1	1	a	1	1	1	4	1	1	d	(a11ea1d
Siarad	fusser27	598	1	MAB	a dw i isio mynd i weld y pyramids	\N	cym	monoW	a	1	1	2	3	e	1	1	a	1	1	1	4	1	1	d	(a11ea1d
Siarad	fusser27	598	2	MAB	i weld y pyramids	non-finite	cym	monoW	a	1	1	2	3	e	1	1	a	1	1	1	4	1	1	d	(a11ea1d
Siarad	fusser27	829	1	MAB	faswn i yn gallu mynd	\N	cym	monoW	a	1	1	2	3	e	1	1	a	1	1	1	4	1	1	d	(a11ea1d
Siarad	davies13	282	1	JAM	oedd hi bach yn upset	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	1	1	1	1	b	(a11ba1b
Siarad	davies13	284	1	JAM	achos mae fe yn cant yeah cant saith_deg	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	1	1	1	1	b	(a11ba1b
Siarad	davies13	285	1	MEI	mae hwnna un	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	1	1	1	1	b	(a11ba1b
Siarad	davies13	296	1	MEI	ond mae sure gei di	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	1	1	1	1	b	(a11ba1b
Siarad	davies13	502	1	JAM	mae wastad mewn suit a tie	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	1	1	1	1	b	(a11ba1b
Siarad	davies13	504	1	JAM	a mae fe wastad	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	1	1	1	1	b	(a11ba1b
Siarad	davies13	507	1	JAM	mae wastad yn swno fel	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	1	1	1	1	b	(a11ba1b
Siarad	davies13	507	2	JAM	fasai yn feddw	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	1	1	1	1	b	(a11ba1b
Siarad	davies13	531	1	MEI	fedran ni ffonio	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	1	1	1	1	b	(a11ba1b
Siarad	davies13	532	1	MEI	wnawn ni ffonio	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	1	1	1	1	b	(a11ba1b
Siarad	davies6	739	2	DAN	oedd Mr_T yeah	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser27	831	1	MAB	dw i meddwl	\N	cym	monoW	a	1	1	2	3	e	1	1	a	1	1	1	4	1	1	d	(a11ea1d
Siarad	fusser27	831	2	MAB	dw i meddwl ella	\N	cym	monoW	a	1	1	2	3	e	1	1	a	1	1	1	4	1	1	d	(a11ea1d
Siarad	fusser27	831	3	MAB	wna i	\N	cym	monoW	a	1	1	2	3	e	1	1	a	1	1	1	4	1	1	d	(a11ea1d
Siarad	fusser27	874	2	MAB	dw i yn gwybod	\N	cym	monoW	a	1	1	2	3	e	1	1	a	1	1	1	4	1	1	d	(a11ea1d
Siarad	fusser27	875	2	MAB	mae yna farm yn fan yna um	\N	cym	monoW	a	1	1	2	3	e	1	1	a	1	1	1	4	1	1	d	(a11ea1d
Siarad	fusser27	876	4	MAB	mae yna um farm	\N	cym	monoW	a	1	1	2	3	e	1	1	a	1	1	1	4	1	1	d	(a11ea1d
Siarad	fusser27	876	5	MAB	lle mae yna ffrindiau fi yn byw	\N	cym	monoW	a	1	1	2	3	e	1	1	a	1	1	1	4	1	1	d	(a11ea1d
Siarad	fusser27	878	3	MAB	mae yna ryw bedwar ohonyn nhw yn byw ar y tŷ	\N	cym	monoW	a	1	1	2	3	e	1	1	a	1	1	1	4	1	1	d	(a11ea1d
Siarad	fusser27	881	2	MAB	wnaethon nhw gael	\N	cym	monoW	a	1	1	2	3	e	1	1	a	1	1	1	4	1	1	d	(a11ea1d
Siarad	fusser27	893	1	MAB	so be ydy yr dyddiad y Race_For_Life felly	\N	cym	monoW	a	1	1	2	3	e	1	1	a	1	1	1	4	1	1	d	(a11ea1d
Siarad	fusser27	898	2	MAB	wna i fynd ar y rhyngrwyd	\N	cym	monoW	a	1	1	2	3	e	1	1	a	1	1	1	4	1	1	d	(a11ea1d
Siarad	stammers4	214	2	ELE	oedda chdi yn weld yn Galeri 	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	stammers4	214	3	ELE	ac oedda chdi byth yn sure 	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	stammers4	214	4	ELE	pwy oedd hi 	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	stammers4	215	1	ELE	ac oedd hi gweitied 	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	stammers4	215	2	ELE	oedd ei phlant hi yn cael gwersi yna 	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	stammers4	216	1	ELE	ac oedd hi yn gweld chdi yna 	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	stammers4	217	1	ELE	ond oedda chdi byth yn sure 	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	stammers4	405	1	ELE	ac oedd hi yn sbïo at yr tân 	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	stammers4	406	1	ELE	doedd ddim yn dallt 	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	stammers4	406	2	ELE	bod fi yn sbïo arni nag oedd	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	stammers4	408	1	ELE	oedd 	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	stammers4	409	1	ELE	oedd 	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	stammers4	419	1	ELE	daria fedri di 	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	stammers4	419	2	ELE	roid ar cyfrifiadur neu rhywbeth 	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	stammers4	422	1	ELE	ah basai hwnna yn bity 	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	stammers4	423	1	ELE	be ydy stuff darllen i fod dim yna 	one clause?	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	stammers4	432	1	ELE	well ti beidio 	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	stammers4	432	2	ELE	cael trowsus efo pocket yno felly 	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	stammers4	437	1	ELE	oedd hi yn deud wrtha fi 	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	stammers4	437	2	ELE	gynnau yn gegin 	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	stammers4	438	1	ELE	oedd hi yn deud um efo eu sioe nhw y Dolig 	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	stammers4	602	1	ELE	nag ydy wir 	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	stammers4	605	1	ELE	oedd o yn effro 	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	davies13	533	1	MEI	a wedyn awn ni lawr yna	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	1	1	1	1	b	(a11ba1b
Siarad	davies13	534	1	MEI	wnawn ni weld	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	1	1	1	1	b	(a11ba1b
Siarad	davies13	534	2	MEI	os mae Toby yna	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	1	1	1	1	b	(a11ba1b
Siarad	davies13	535	1	MEI	a geith	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	1	1	1	1	b	(a11ba1b
Siarad	davies13	535	2	MEI	o ddweud	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	1	1	1	1	b	(a11ba1b
Siarad	davies13	535	3	MEI	be dan ni fod i wrando i	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	1	1	1	1	b	(a11ba1b
Siarad	davies13	540	2	JAM	os faswn i wedi dod â yr hub	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	1	1	1	1	b	(a11ba1b
Siarad	davies13	543	1	MEI	fasai ddim yn gweithio	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	1	1	1	1	b	(a11ba1b
Siarad	davies13	543	2	MEI	dw ddim yn meddwl	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	1	1	1	1	b	(a11ba1b
Siarad	davies6	549	1	DAN	ia nos Sadwrn aethon ni â yr cart adra de	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	davies6	553	1	DAN	faset ti meddwl	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	davies6	553	2	DAN	fasai fo wedi cael	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	stammers4	607	1	ELE	oh dydy o ddim yn dda felly 	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	stammers4	611	1	ELE	oh mae o yn tynny am ddeuflwydd 	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	stammers4	614	1	ELE	deuflwydd yndy 	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	stammers4	636	1	ELE	be wnaeth Louise ta 	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	stammers4	643	1	ELE	oh ti ddim yn cofio 	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	stammers4	643	2	ELE	oedd hi yn sgwennu arno fo 	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	stammers4	644	1	ELE	peidiwch â bwyta am 	one clause?	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser30	293	1	MEL	ges i un adeg hynny	\N	cym	monoW	a	2	1	3	3	f	1	1	a	1	4	4	1	1	4	k	(a21fa1k
Siarad	fusser30	295	2	MEL	mae yr frock yna ychydig bach yn dynn o_dan y nghesail	\N	cym	monoW	a	2	1	3	3	f	1	1	a	1	4	4	1	1	4	k	(a21fa1k
Siarad	fusser30	299	1	MEL	ac os oes gyn ti frock wen	\N	cym	monoW	a	2	1	3	3	f	1	1	a	1	4	4	1	1	4	k	(a21fa1k
Siarad	fusser30	305	3	MEL	mae nhw just yn edrych yn lot mwy oren	\N	cym	monoW	a	2	1	3	3	f	1	1	a	1	4	4	1	1	4	k	(a21fa1k
Siarad	fusser30	322	1	MEL	be wnaeth o	\N	cym	monoW	a	2	1	3	3	f	1	1	a	1	4	4	1	1	4	k	(a21fa1k
Siarad	fusser30	322	2	MEL	wnaeth o ddod allan tra	\N	cym	monoW	a	2	1	3	3	f	1	1	a	1	4	4	1	1	4	k	(a21fa1k
Siarad	fusser30	322	3	MEL	oedda chdi yn allan yeah	\N	cym	monoW	a	2	1	3	3	f	1	1	a	1	4	4	1	1	4	k	(a21fa1k
Siarad	fusser30	335	1	MEL	yeah achos ti gorod gadael o ymlaen	\N	cym	monoW	a	2	1	3	3	f	1	1	a	1	4	4	1	1	4	k	(a21fa1k
Siarad	fusser30	335	2	MEL	dwyt cyn golchi o ffwrdd	\N	cym	monoW	a	2	1	3	3	f	1	1	a	1	4	4	1	1	4	k	(a21fa1k
Siarad	fusser30	345	1	MEL	just cael nhw wedi wneud ydy hynny	non-finite	cym	monoW	a	2	1	3	3	f	1	1	a	1	4	4	1	1	4	k	(a21fa1k
Siarad	fusser30	349	1	MEL	oh mae nhw edrych yn iawn i fi de	\N	cym	monoW	a	2	1	3	3	f	1	1	a	1	4	4	1	1	4	k	(a21fa1k
Siarad	fusser30	595	1	MEL	Llety_yr_Bugail mae hwnna yn un da	\N	cym	monoW	a	2	1	3	3	f	1	1	a	1	4	4	1	1	4	k	(a21fa1k
Siarad	fusser30	602	1	MEL	pan wnes i fynd i yr briodas yna yn yn Florence yn yr haf	\N	cym	monoW	a	2	1	3	3	f	1	1	a	1	4	4	1	1	4	k	(a21fa1k
Siarad	fusser30	602	2	MEL	oedden nhw	if repair follows then exclude this	cym	monoW	a	2	1	3	3	f	1	1	a	1	4	4	1	1	4	k	(a21fa1k
Siarad	fusser30	603	1	MEL	oedd o yn rhyfedd	\N	cym	monoW	a	2	1	3	3	f	1	1	a	1	4	4	1	1	4	k	(a21fa1k
Siarad	fusser30	610	1	MEL	oedd o right nice mewn ffordd	\N	cym	monoW	a	2	1	3	3	f	1	1	a	1	4	4	1	1	4	k	(a21fa1k
Siarad	fusser30	612	1	MEL	oh na sut aeth hi	\N	cym	monoW	a	2	1	3	3	f	1	1	a	1	4	4	1	1	4	k	(a21fa1k
Siarad	fusser30	629	1	MEL	oedda chdi nerfus wedyn	\N	cym	monoW	a	2	1	3	3	f	1	1	a	1	4	4	1	1	4	k	(a21fa1k
Siarad	fusser30	642	2	MEL	mae nhw roid i_fewn	\N	cym	monoW	a	2	1	3	3	f	1	1	a	1	4	4	1	1	4	k	(a21fa1k
Siarad	fusser30	645	2	MEL	mae nhw yn deud y pethau rhyfedda de	\N	cym	monoW	a	2	1	3	3	f	1	1	a	1	4	4	1	1	4	k	(a21fa1k
Siarad	fusser30	903	1	MEL	dw ddim yn gwybod	\N	cym	monoW	a	2	1	3	3	f	1	1	a	1	4	4	1	1	4	k	(a21fa1k
Siarad	fusser30	904	1	MEL	o'n i ddim isio sbïed arno fo	\N	cym	monoW	a	2	1	3	3	f	1	1	a	1	4	4	1	1	4	k	(a21fa1k
Siarad	fusser30	904	2	MEL	i fod yn honest	\N	cym	monoW	a	2	1	3	3	f	1	1	a	1	4	4	1	1	4	k	(a21fa1k
Siarad	fusser30	905	1	MEL	ddim yn sure be oedd ei deulu o yn meddwl	\N	cym	monoW	a	2	1	3	3	f	1	1	a	1	4	4	1	1	4	k	(a21fa1k
Siarad	fusser30	907	2	MEL	doedd o ddim hyd_yn_oed yn Gymraeg na dim_byd	\N	cym	monoW	a	2	1	3	3	f	1	1	a	1	4	4	1	1	4	k	(a21fa1k
Siarad	fusser30	908	1	MEL	yn Saesneg oedd o i_gyd	\N	cym	monoW	a	2	1	3	3	f	1	1	a	1	4	4	1	1	4	k	(a21fa1k
Siarad	davies6	560	1	DAN	gwneud ffafr â yr gymuned oedden ni fan yna sti	non-finite	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	davies6	735	1	DAN	dw i ddim yn sure iawn	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	davies6	737	1	DAN	naci Mike_Tyson dw i wedi glywed	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	davies6	739	1	DAN	cofia di wrestler	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	davies6	778	1	DAN	pam wnest ti ddim gofyn amdano fo neithiwr	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	davies7	189	1	TRA	a wedyn wnes i gymryd chwaraeon	clause division	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies7	191	1	TRA	o'n i meddwl just um dewis addysg grefyddol de	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies13	545	1	JAM	mae raid bod nhw wedi	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	1	1	1	1	b	(a11ba1b
Siarad	davies13	565	1	JAM	ydyn	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	1	1	1	1	b	(a11ba1b
Siarad	fusser30	913	1	MEL	just dydy o ddim	\N	cym	monoW	a	2	1	3	3	f	1	1	a	1	4	4	1	1	4	k	(a21fa1k
Siarad	fusser30	913	2	MEL	dydy o just diffyg parch	\N	cym	monoW	a	2	1	3	3	f	1	1	a	1	4	4	1	1	4	k	(a21fa1k
Siarad	fusser30	915	1	MEL	oedd dim angen gwneud	\N	cym	monoW	a	2	1	3	3	f	1	1	a	1	4	4	1	1	4	k	(a21fa1k
Siarad	fusser30	920	1	MEL	hi ydy yr un hi	\N	cym	monoW	a	2	1	3	3	f	1	1	a	1	4	4	1	1	4	k	(a21fa1k
Siarad	fusser30	920	2	MEL	ydy yr un	\N	cym	monoW	a	2	1	3	3	f	1	1	a	1	4	4	1	1	4	k	(a21fa1k
Siarad	davies5	937	1	MER	yndw	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	1	1	1	3	c	(a11ba1c
Siarad	fusser30	920	3	MEL	sy wedi rhedeg i_ffwrdd efo a	\N	cym	monoW	a	2	1	3	3	f	1	1	a	1	4	4	1	1	4	k	(a21fa1k
Siarad	fusser30	920	4	MEL	wedi priodi dros yr haf	\N	cym	monoW	a	2	1	3	3	f	1	1	a	1	4	4	1	1	4	k	(a21fa1k
Siarad	fusser30	920	5	MEL	heb ddeud wrth ei rhieni	\N	cym	monoW	a	2	1	3	3	f	1	1	a	1	4	4	1	1	4	k	(a21fa1k
Siarad	fusser30	922	1	MEL	ia a ac oedd o ar wefan yr ysgol	\N	cym	monoW	a	2	1	3	3	f	1	1	a	1	4	4	1	1	4	k	(a21fa1k
Siarad	stammers7	212	1	GWN	a wedyn o'n i yn deud 	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	stammers7	212	2	GWN	timod fel Cristion ti yn edrych ar y pethau fel yna a ti ddim yn gallu deud bod chdi wedi ffeindio be ti yn chwilio am 	Auxiliary deletion - include in analysis	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	stammers7	213	1	GWN	achos mae pethau fel yna 	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	stammers7	213	2	GWN	pan mae ffydd a dod yn Gristion yn yn daith 	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	stammers7	214	1	GWN	so hwnna ydy yr dechrau yr daith 	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	stammers7	215	1	GWN	a mae yna pethau eraill ti ddim yn hapus efo nhw 	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	stammers7	216	1	GWN	ond mae yr daith 	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	stammers7	220	1	GWN	a ti yn mynd yn hapusach am dy sefyllfa di bob tro	Auxiliary deletion - include in analysis	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	stammers7	221	1	GWN	ond mae yn dal cario ymlaen 	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	stammers7	224	1	GWN	ac mae gwasanaeth fel yna yn eitha perthnasol iddyn nhw 	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	stammers7	227	1	GWN	maen nhw yn 	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	stammers7	392	1	GWN	be maen nhw yn meddwl o bod chdi yn byw yn fan yma ta 	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	stammers7	401	1	GWN	dyn nhw wedi dod drosodd i weld chdi 	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	stammers7	412	1	GWN	ydy efo pump o blant 	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	stammers7	412	2	GWN	neu ydy yr llall efo rei 	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	stammers7	427	1	GWN	lle mae Ali heno ta 	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	stammers7	431	1	GWN	lle mae yr swyddfa 	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	stammers7	438	2	GWN	mae yn sure 	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	stammers7	447	1	GWN	os dw i yn priodi 	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	stammers7	447	2	GWN	fydda i just fel 	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	stammers7	645	1	GWN	mae o yn Llansannan 	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	stammers7	647	1	GWN	a dw i yn mynd i Llansannan hefyd 	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies13	567	1	JAM	just fel ti yn gwybod	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	1	1	1	1	b	(a11ba1b
Siarad	davies13	567	2	JAM	dylet ti dim fod yn wneud e	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	1	1	1	1	b	(a11ba1b
Siarad	davies13	568	1	MEI	yeah dw i meddwl	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	1	1	1	1	b	(a11ba1b
Siarad	davies13	772	1	JAM	na oedd Slimmers_World ddim yn gweithio o_gwbl	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	1	1	1	1	b	(a11ba1b
Siarad	roberts3	325	1	MED	yndy 	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	4	1	d	(a13ba1d
Siarad	davies13	774	1	JAM	a wedyn oedd hi wedi bod arno fe am blwyddyn neu rywbeth	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	1	1	1	1	b	(a11ba1b
Siarad	davies13	775	1	JAM	a es	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	1	1	1	1	b	(a11ba1b
Siarad	davies13	775	2	JAM	aeth hi i Weight_Watchers	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	1	1	1	1	b	(a11ba1b
Siarad	stammers7	647	2	GWN	dw i meddwl 	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	stammers7	649	2	GWN	dydy 	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	stammers7	650	1	GWN	so wnes i fethu flwyddyn dwytha achos 	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	stammers7	650	2	GWN	oedd car fi wedi falu 	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	stammers7	658	1	GWN	ac oedd hi yn dydd Sul 	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	stammers7	662	1	GWN	oedd y boy yn deud i beidio dreifio os 	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	stammers7	662	3	GWN	na oedd raid i chdi 	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	stammers7	666	1	GWN	yeah ond oedd o yn fath â llai o size 	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	stammers7	670	1	GWN	wedyn wythnos wedyn dw i yn meddwl 	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	stammers7	670	2	GWN	dan ni yn siarad am 	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	fusser13	387	1	ANN	dwn i ddim	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	fusser29	803	1	LOI	yndy	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	1	1	1	1	b	(a12bb1b
Siarad	fusser13	370	1	ANN	yndy	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	davies10	207	1	HIL	un o Sir_Fôn yma wyt ti	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	davies10	259	1	HIL	so mae hi yma ers blynyddoedd maith felly	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	davies10	275	1	HIL	oh er Sir_Gaernarfon oedd rhieni fi yn dod	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	davies10	321	2	HIL	mae sure	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	davies10	355	1	HIL	oes mmm	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	davies10	393	1	HIL	yndw	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	davies10	394	1	HIL	yndw	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	davies10	410	1	HIL	duwcs oedd	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	davies10	416	1	HIL	oedd o yn ddawnus iawn	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	davies10	416	2	HIL	doedd mewn nosweithiau llawen a pethau felly	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	davies10	660	1	HIL	a dangos yr adar bach yma yn um	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	stammers3	517	1	NER	nag ydy 	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	4	1	1	1	d	(a11ba1d
Siarad	davies10	660	3	HIL	pan mae nhw yn mynd drosodd i felly i Africa	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	davies10	662	1	HIL	a wedyn mae nhw	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	davies10	662	2	HIL	mae Malta ar	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	davies10	662	3	HIL	ei	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	davies10	666	1	HIL	wedyn mae nhw yn aros yn fan yna	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	davies10	668	1	HIL	a mae	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	davies10	668	2	HIL	mae nhw yna yn barod yn_de efo eu gynnau yn eu saethu nhw lawr	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	davies10	672	1	HIL	gweilch_y_pysgod a timod rhai	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	davies10	789	1	HIL	ew oedd diwrnod ffair Llanllyfni de	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	davies10	790	1	HIL	bod o'n i yn hogan bach	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	davies10	790	2	HIL	fyddai yn ddiwrnod mawr	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	davies10	794	1	HIL	oedd o	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	davies10	794	2	HIL	dw i sure rŵan	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	davies10	794	3	HIL	os dw i yn cofio yn iawn te	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	davies10	794	4	HIL	oedden ni yn cael hanner diwrnod o yr ysgol sti	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	davies13	570	2	JAM	mae nhw yn cael y luxury hyn	\N	cym	biling	b	1	1	1	1	b	1	1	a	1	1	1	1	1	1	b	(b11ba1b
Siarad	davies13	776	1	JAM	a o_fewn tair wythnos oedd hi wedi colli deg pound	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	1	1	1	1	b	(a11ba1b
Siarad	davies13	780	1	JAM	mae just fel corff sure o fod hefyd	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	1	1	1	1	b	(a11ba1b
Siarad	davies13	799	1	MEI	dw i ddim yn roi	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	1	1	1	1	b	(a11ba1b
Siarad	davies13	805	1	MEI	ond erm na wnes i ddim dallt	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	1	1	1	1	b	(a11ba1b
Siarad	davies10	796	1	HIL	wir yr wan ar_ôl amser cinio oedden ni yn cael dwy awr i_ffwrdd ac oh cael mynd I ffair	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	davies10	805	1	HIL	mae yna ddwy ffair yn Griccieth	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	davies10	1033	1	HIL	o yna ddoth hi	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	davies10	1108	1	HIL	oh paid wir	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	davies10	1110	1	HIL	oh mae hwnna yn rywbeth i ni edrych ymlaen amdano fo	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	davies10	1115	1	HIL	hey fasai yn	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	davies10	1115	2	HIL	fasai yn talu	clause division	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	davies10	1115	3	HIL	I ni fwcio rŵan	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	davies10	1115	4	HIL	basai	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	davies10	1130	1	HIL	bydd	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	davies10	1130	2	HIL	bydd	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	davies10	1134	1	HIL	oh dwn i ddim	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	davies10	1134	2	HIL	be dan ni mynd I wneud	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	davies10	1134	4	HIL	os dan ni mynd i ohirio eto mis nesa	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	davies10	1137	1	HIL	oh mae hi mynd yn um	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	davies10	1151	1	HIL	yndy	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	davies10	1151	2	HIL	yndy	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	davies10	1151	3	HIL	yndy	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	davies10	1151	4	HIL	yndy	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	davies10	1165	1	HIL	a dw innau yn meddwl Edgar hefyd	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	davies15	218	1	TEG	ond wnaethon	\N	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	1	1	1	3	c	(a11bb1c
Siarad	davies15	218	2	TEG	oedden ni yn disgwyl am y buses yna am oriau	\N	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	1	1	1	3	c	(a11bb1c
Siarad	davies15	221	1	TEG	ac oedd hi yn oer	\N	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	1	1	1	3	c	(a11bb1c
Siarad	davies15	223	1	TEG	oedd hi yn oer	\N	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	1	1	1	3	c	(a11bb1c
Siarad	davies15	226	1	TEG	well ia dyna ydy peth	non-finite	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	1	1	1	3	c	(a11bb1c
Siarad	davies15	242	1	TEG	oedda chdi yn um dreifio	\N	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	1	1	1	3	c	(a11bb1c
Siarad	davies15	242	2	TEG	doedd	\N	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	1	1	1	3	c	(a11bb1c
Siarad	davies15	248	1	TEG	mi oedd o yn ddrud sti	\N	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	1	1	1	3	c	(a11bb1c
Siarad	davies15	249	1	TEG	dw meddwl bod o	\N	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	1	1	1	3	c	(a11bb1c
Siarad	davies15	249	3	TEG	werth o os ti am mynd am y ddau noson ella	clause division	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	1	1	1	3	c	(a11bb1c
Siarad	davies15	251	1	TEG	dw ddim yn gwybod	\N	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	1	1	1	3	c	(a11bb1c
Siarad	stammers6	828	1	BLW	wnest ti ddim gweiddi arni 	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	4	d	(a12ba1d
Siarad	davies15	251	2	TEG	os mae werth oi fynd am un noson i gampio	\N	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	1	1	1	3	c	(a11bb1c
Siarad	davies15	252	1	TEG	so ella wnawn ni gysidro mynd am ddau noson	clause division	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	1	1	1	3	c	(a11bb1c
Siarad	davies15	253	1	TEG	gawn ni weld	clause division	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	1	1	1	3	c	(a11bb1c
Siarad	davies15	466	1	TEG	dw yn teimlo well	clause division: 2 finite clauses	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	1	1	1	3	c	(a11bb1c
Siarad	davies15	466	2	TEG	pan a i log_io fewn a gweld faint	h	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	1	1	1	3	c	(a11bb1c
Siarad	davies15	466	3	TEG	sy wedi bod yn wneud o ac um gweld yr rhifau yn cropian i_fyny	clause division	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	1	1	1	3	c	(a11bb1c
Siarad	davies15	468	1	TEG	fydda i fath â	\N	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	1	1	1	3	c	(a11bb1c
Siarad	davies15	470	1	TEG	a fydd o yn	check transcript to see if retracing follows and if so exclude this	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	1	1	1	3	c	(a11bb1c
Siarad	davies15	470	2	TEG	fydd o yn motivate_io fi ffonio mwy o bobl ella	\N	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	1	1	1	3	c	(a11bb1c
Siarad	davies15	473	1	TEG	dw i tan diwedd Mawrth i gael bob_dim at ei_gilydd	\N	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	1	1	1	3	c	(a11bb1c
Siarad	davies15	490	1	TEG	fedri di ddim	\N	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	1	1	1	3	c	(a11bb1c
Siarad	davies15	499	1	TEG	achos fedri di ddim ti ddim isio dibynnu ar rywun arall	\N	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	1	1	1	3	c	(a11bb1c
Siarad	davies15	502	1	TEG	ond fedri di ddim ffonio yr cwmni ei hun a siarad receptionist	clause division	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	1	1	1	3	c	(a11bb1c
Siarad	davies15	502	4	TEG	a fedrith nhw just roid y details i chdi	clause division	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	1	1	1	3	c	(a11bb1c
Siarad	davies13	810	1	MEI	a wnes i ddweud	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	1	1	1	1	b	(a11ba1b
Siarad	davies13	825	1	MEI	meddai ti	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	1	1	1	1	b	(a11ba1b
Siarad	davies13	825	2	MEI	sy yn dweud ti cael	clause division	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	1	1	1	1	b	(a11ba1b
Siarad	davies13	827	1	MEI	dw i ddim yn licio chocolate	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	1	1	1	1	b	(a11ba1b
Siarad	davies13	833	1	JAM	ond just mae fe just fel	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	1	1	1	1	b	(a11ba1b
Siarad	davies13	833	2	JAM	fasai fi wedi tyfu mas o fe mewn ffordd	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	1	1	1	1	b	(a11ba1b
Siarad	davies13	835	1	JAM	wna i cael rywbeth nice fel Thorntons neu	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	1	1	1	1	b	(a11ba1b
Siarad	davies13	840	1	MEI	be sy yn neisa	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	1	1	1	1	b	(a11ba1b
Siarad	davies13	840	2	MEI	ydy yr er Lindl yeah	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	1	1	1	1	b	(a11ba1b
Siarad	davies7	298	1	TRA	dw ddim yn gwybod	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies7	300	1	TRA	dw ddim yn gwybod de os mai fel yna	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies16	544	1	ADA	na mae o ar y tu_mewn	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	4	4	1	g	(a12ba1g
Siarad	davies7	300	2	TRA	mae o rŵan a bod o wedi roid act ar y dechrau neu	clause division	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies7	300	4	TRA	os ydy o wedi mynd lawr yn	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies15	510	1	TEG	oh yeah basai fo gwybod	\N	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	1	1	1	3	c	(a11bb1c
Siarad	davies15	516	1	TEG	achos mae sure bod yr ffermwyr yma yn ddigon hapus siarad efo chdi	\N	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	1	1	1	3	c	(a11bb1c
Siarad	davies15	516	2	TEG	just bod nhw ddim yn gwybod amdan y peth	\N	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	1	1	1	3	c	(a11bb1c
Siarad	davies15	729	2	TEG	dw meddwl	\N	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	1	1	1	3	c	(a11bb1c
Siarad	davies15	734	1	TEG	gennod er crew o gennod sy am fynd	clause division	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	1	1	1	3	c	(a11bb1c
Siarad	davies15	734	2	TEG	dw meddwl tua pump ohonon ni	\N	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	1	1	1	3	c	(a11bb1c
Siarad	davies15	737	1	TEG	well be o'n i yn gobeithio	\N	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	1	1	1	3	c	(a11bb1c
Siarad	davies15	737	2	TEG	ydy bod fi am gael joban yn y brifysgol	\N	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	1	1	1	3	c	(a11bb1c
Siarad	davies15	738	1	TEG	a wedyn ti yn cael lot o wyliau	\N	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	1	1	1	3	c	(a11bb1c
Siarad	davies15	756	1	TEG	so mae yn lle right rhad just bod o bod chdi isio	\N	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	1	1	1	3	c	(a11bb1c
Siarad	davies15	769	1	TEG	lle mae Lesotho	\N	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	1	1	1	3	c	(a11bb1c
Siarad	davies15	790	1	TEG	mae yna rei	\N	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	1	1	1	3	c	(a11bb1c
Siarad	davies15	790	2	TEG	dw i fancy mwy na ei_gilydd mwy na llefydd eraill	\N	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	1	1	1	3	c	(a11bb1c
Siarad	davies5	301	1	COL	mae raid chdi doctor	\N	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	1	4	1	1	d	(a11bb1d
Siarad	davies5	311	1	COL	nurse mae sure ti gofyn wrtho	\N	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	1	4	1	1	d	(a11bb1d
Siarad	davies5	325	1	COL	oh mae yn iawn sti	\N	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	1	4	1	1	d	(a11bb1d
Siarad	davies5	329	1	COL	yeah ond timod hwn	\N	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	1	4	1	1	d	(a11bb1d
Siarad	davies5	329	2	COL	ydy yr un dwytha	\N	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	1	4	1	1	d	(a11bb1d
Siarad	davies5	340	1	COL	wnaethoch chi watsied game Man_U ta	\N	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	1	4	1	1	d	(a11bb1d
Siarad	davies5	373	1	COL	oh dw i ddim yn meddwl	\N	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	1	4	1	1	d	(a11bb1d
Siarad	davies5	373	2	COL	baswn i gamblo	\N	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	1	4	1	1	d	(a11bb1d
Siarad	davies5	584	1	COL	oedden ni am trefnu fath âmynd abroad yr ha yma ond	\N	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	1	4	1	1	d	(a11bb1d
Siarad	davies5	586	1	COL	dw ddim gwybod	\N	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	1	4	1	1	d	(a11bb1d
Siarad	davies5	589	1	COL	Ibiza neu rywbeth dw ddim gwybod	\N	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	1	4	1	1	d	(a11bb1d
Siarad	davies5	596	1	COL	basen ni yn gallu mynd ar_ôl gwyliau ha gorffen am wsnos	\N	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	1	4	1	1	d	(a11bb1d
Siarad	davies5	692	1	COL	ydy o yn dda	\N	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	1	4	1	1	d	(a11bb1d
Siarad	davies7	300	5	TRA	ei hun os ti ddallt	clause division	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies7	423	1	TRA	dw ddim yn gwybod	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies7	428	1	TRA	ond dw ddim gwybod	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies7	430	1	TRA	um wna i ddeud wrtha chdi	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies7	431	1	TRA	achos dw i yn gweld	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies7	433	1	TRA	mae just rywle er rywbryd fory	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies7	434	1	TRA	yn pagoda mae o	non-finite	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies13	847	1	JAM	mae Mam yn prynu nhw bob Nadolig	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	1	1	1	1	b	(a11ba1b
Siarad	davies13	851	1	JAM	mae nhw tua	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	1	1	1	1	b	(a11ba1b
Siarad	davies7	444	1	TRA	ceith	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies5	699	1	COL	gest ti dy eni yn mewn tŷ	clause division	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	1	4	1	1	d	(a11bb1d
Siarad	davies5	701	1	COL	ta mewn hospital gest ti	\N	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	1	4	1	1	d	(a11bb1d
Siarad	davies5	711	1	COL	sut mae Ynys_Môn	\N	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	1	4	1	1	d	(a11bb1d
Siarad	davies5	947	2	COL	yndy	\N	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	1	4	1	1	d	(a11bb1d
Siarad	davies5	974	1	COL	dw i am apply_o am hwnna hefyd	\N	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	1	4	1	1	d	(a11bb1d
Siarad	davies5	999	1	COL	mynd i_fewn i yr trydydd flwyddyn nesa yndy	non-finite	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	1	4	1	1	d	(a11bb1d
Siarad	davies5	1010	1	COL	so fydd o dal yn y tŷ yna	clause division	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	1	4	1	1	d	(a11bb1d
Siarad	davies5	1010	2	COL	pan fyddach chi mynd i second year felly	h	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	1	4	1	1	d	(a11bb1d
Siarad	davies5	1017	1	COL	gewch chi sbario	clause division	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	1	4	1	1	d	(a11bb1d
Siarad	fusser13	367	2	ANN	a gadael iddyn nhw i pethau	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	fusser15	337	1	GFR	mae yn dibynnu	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	1	1	1	4	d	(a12bb1d
Siarad	fusser15	337	2	GFR	yndy	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	1	1	1	4	d	(a12bb1d
Siarad	fusser15	342	1	GFR	yndy	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	1	1	1	4	d	(a12bb1d
Siarad	fusser15	342	2	GFR	yndy	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	1	1	1	4	d	(a12bb1d
Siarad	fusser15	342	3	GFR	dw i ddim yn gwybod	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	1	1	1	4	d	(a12bb1d
Siarad	fusser15	343	1	GFR	mae yna rai pethau hwyrach wedi wneud hi feddwl fel arall	clause division	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	1	1	1	4	d	(a12bb1d
Siarad	fusser15	345	1	GFR	so a mae hi wedi cael trafferth efo adran	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	1	1	1	4	d	(a12bb1d
Siarad	fusser15	357	1	GFR	ond ges i	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	1	1	1	4	d	(a12bb1d
Siarad	fusser15	370	1	GFR	oh na ond aeth hi dipyn bach yn timod y peth braidd	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	1	1	1	4	d	(a12bb1d
Siarad	fusser15	375	2	GFR	dw i ddim isio wneud dim	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	1	1	1	4	d	(a12bb1d
Siarad	fusser15	377	1	GFR	a dw i ddim yn gwybod	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	1	1	1	4	d	(a12bb1d
Siarad	fusser15	378	1	GFR	oedd hi hwyrach bod hi ddim yn meddwl o	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	1	1	1	4	d	(a12bb1d
Siarad	fusser15	379	1	GFR	ond aeth o o'n i meddwl	clause division	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	1	1	1	4	d	(a12bb1d
Siarad	fusser15	715	1	GFR	achos mae sure mai	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	1	1	1	4	d	(a12bb1d
Siarad	fusser15	722	1	GFR	ond mae yr lliw yn ironic yeah yeah	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	1	1	1	4	d	(a12bb1d
Siarad	fusser15	723	2	GFR	mae isio ei ddefnyddio	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	1	1	1	4	d	(a12bb1d
Siarad	fusser15	724	1	GFR	achos mae yn wych i gynnal um	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	1	1	1	4	d	(a12bb1d
Siarad	fusser15	726	1	GFR	a mae yna digon o lefydd parcio yno	clause division	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	1	1	1	4	d	(a12bb1d
Siarad	fusser15	726	1	GFR	os ti isio tynnu pobl at ei_gilydd yno	h	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	1	1	1	4	d	(a12bb1d
Siarad	fusser15	737	1	GFR	mae fo hollol wag	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	1	1	1	4	d	(a12bb1d
Siarad	fusser15	737	2	GFR	yndy	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	1	1	1	4	d	(a12bb1d
Siarad	fusser15	742	1	GFR	a mae yn fawr	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	1	1	1	4	d	(a12bb1d
Siarad	fusser13	382	1	ANN	dw i erioed wedi bod yno	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	fusser13	383	1	ANN	mae nhw deud bod o dda	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	fusser15	744	1	GFR	achos oedd gynnon ni	clause division	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	1	1	1	4	d	(a12bb1d
Siarad	fusser15	745	1	GFR	yeah group o pymtheg oedd yno ynde	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	1	1	1	4	d	(a12bb1d
Siarad	fusser15	746	1	GFR	ond oh oedd o yn oh fantastic	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	1	1	1	4	d	(a12bb1d
Siarad	davies7	446	1	TRA	dan ni dwy wedi siarad yn barod do	if repair follows then exclude this	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies7	448	1	TRA	dan ni ein dwy wedi siarad yn barod do	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	fusser11	769	1	BED	oes	\N	cym	monoW	a	1	3	1	1	b	2	0	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser11	776	1	BED	oedd	\N	cym	monoW	a	1	3	1	1	b	2	0	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser11	786	1	BED	well dw i yn yn yn marn personol i	\N	cym	monoW	a	1	3	1	1	b	2	0	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser11	787	2	BED	ydy hwn wrth_gwrs	\N	cym	monoW	a	1	3	1	1	b	2	0	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser11	788	1	BED	dw i meddwl heddiw de	\N	cym	monoW	a	1	3	1	1	b	2	0	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser11	795	1	BED	wedyn oedd yna o'n i medru gwneud	\N	cym	monoW	a	1	3	1	1	b	2	0	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser11	795	2	BED	chwarae pêl_droed a bob_dim pethau eraill o'n isio wneud wedyn yr un fath union	\N	cym	monoW	a	1	3	1	1	b	2	0	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser11	800	1	BED	oedd yn mynd ymlaen felly	\N	cym	monoW	a	1	3	1	1	b	2	0	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser11	801	1	BED	wedyn um a wedyn fyddwn i nabod chdi	\N	cym	monoW	a	1	3	1	1	b	2	0	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser11	802	1	BED	a fydda chdithau yn yn efo yr un diddordebau	\N	cym	monoW	a	1	3	1	1	b	2	0	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser11	806	1	BED	fedr o fod yn rywbeth	\N	cym	monoW	a	1	3	1	1	b	2	0	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	roberts3	325	2	MED	yndy 	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	4	1	d	(a13ba1d
Siarad	fusser15	1082	1	GFR	Mimi ydy	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	1	1	1	4	d	(a12bb1d
Siarad	fusser15	1085	1	GFR	Mimi_Cynddylan yeah hi oedd yn cyfieithu	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	1	1	1	4	d	(a12bb1d
Siarad	fusser15	1089	1	GFR	a wedyn oedd cwrs	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	1	1	1	4	d	(a12bb1d
Siarad	fusser15	1089	2	GFR	oedd yna un di un di_Gymraeg ar y cwrs	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	1	1	1	4	d	(a12bb1d
Siarad	fusser15	1092	2	GFR	ond mae rhyfedd fel	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	1	1	1	4	d	(a12bb1d
Siarad	fusser15	1092	3	GFR	mae rhedeg sti	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	1	1	1	4	d	(a12bb1d
Siarad	fusser15	1093	1	GFR	oedd yr er	clause division	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	1	1	1	4	d	(a12bb1d
Siarad	fusser15	1096	1	GFR	yr unig le oedd	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	1	1	1	4	d	(a12bb1d
Siarad	fusser15	1096	2	GFR	oedd	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	1	1	1	4	d	(a12bb1d
Siarad	fusser15	1097	1	GFR	oedd Lana yn ffindio yn anodd iawn wrth gwrs i watsiad	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	1	1	1	4	d	(a12bb1d
Siarad	fusser15	1097	2	GFR	be oedd yn digwydd yn yr yn y grwpiau bach	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	1	1	1	4	d	(a12bb1d
Siarad	fusser15	1100	1	GFR	achos dydy hi ddim	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	1	1	1	4	d	(a12bb1d
Siarad	fusser15	1100	2	GFR	na dydy hi ddim yn gallu	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	1	1	1	4	d	(a12bb1d
Siarad	fusser15	1103	1	GFR	mae hi yn	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	1	1	1	4	d	(a12bb1d
Siarad	fusser15	1103	2	GFR	dw i yn meddwl	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	1	1	1	4	d	(a12bb1d
Siarad	fusser15	1103	3	GFR	mae hi yn	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	1	1	1	4	d	(a12bb1d
Siarad	fusser15	1104	1	GFR	wneith hi gyfadde	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	1	1	1	4	d	(a12bb1d
Siarad	fusser15	1104	3	GFR	nad ydy hi ddim yn gallu monitro wedyn ynde	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	1	1	1	4	d	(a12bb1d
Siarad	fusser13	786	1	ANN	um lle sy yna	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	davies4	694	1	CYN	oh yndy	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	4	1	4	1	1	g	(a14ba1g
Siarad	fusser13	787	1	ANN	Gors_y_Gedol sy drws nesa iddyn nhw	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	fusser13	787	2	ANN	dw i sure	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	fusser13	788	1	ANN	mae yna ryw entrance go fawr i fan yna	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	fusser13	788	2	ANN	does hen blas Gors_y_Gedol felly	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	fusser13	791	1	ANN	a wedyn er mae nhw wedyn yn mynd er wsti ryw ychydig bach yn uwch yn nes i Bermo	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	fusser13	792	1	ANN	mae tro nhw mynd i_fyny wedyn felly	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	fusser13	796	1	ANN	ia fan yno mae chartre hi	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	fusser13	798	1	ANN	dan ni nabod nhw	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	davies5	267	1	MER	wnaeth Pam dreifio holl ffordd i_fyny do neu ran fwya o ffordd	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	1	1	1	3	c	(a11ba1c
Siarad	davies5	278	1	MER	wnaeth hi ddeud wrtha fi bod hi am	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	1	1	1	3	c	(a11ba1c
Siarad	davies5	326	2	MER	mae o yn fath â expire_io ar_ôl bob deg mlynedd neu rywbeth	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	1	1	1	3	c	(a11ba1c
Siarad	davies5	347	1	MER	wnes i weld o yn papur	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	1	1	1	3	c	(a11ba1c
Siarad	davies5	374	1	MER	na baswn i ddim yn wneud hynna de	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	1	1	1	3	c	(a11ba1c
Siarad	davies5	404	1	MER	ydy Newcastle yn Gymraeg	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	1	1	1	3	c	(a11ba1c
Siarad	davies5	592	1	MER	baswn i de	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	1	1	1	3	c	(a11ba1c
Siarad	fusser13	798	2	ANN	pan oedd hi dal adre yn_de	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	fusser13	801	1	ANN	a mae mam a ei thad hi yn andros o glên	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	fusser13	803	1	ANN	wedyn fyddwn ni yn gweld dipyn arnyn nhw	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	fusser13	804	1	ANN	a mae gynni	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	fusser13	370	2	ANN	yndy	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	fusser13	804	3	ANN	mae brawd hi yn erbyn hyn yn gyfarwyddwr addysg yn Môn	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	fusser13	1174	3	ANN	be mae be	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	fusser13	367	1	ANN	o'n ni yn oh dan ni mynd i ein gwlâu	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	fusser13	424	1	ANN	paid â	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	fusser13	433	1	ANN	oedd Prysor ac Eirlys a ninnau yno yn cael bwyd	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	fusser13	449	1	ANN	na mae cymryd rŵan dydyn	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	fusser13	452	1	ANN	mae hyn mynd yn_ôl dipyn	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	fusser13	456	1	ANN	oh mae lle poblogaidd sti bobl stopio	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	fusser13	1172	1	ANN	nac ydy nag	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	fusser13	1172	2	ANN	ydy sti	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	fusser13	1173	1	ANN	nag ydy	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	fusser13	1174	1	ANN	dw i yn gweld	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	fusser13	1174	4	ANN	be mae Crisiant yn feddwl	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	fusser13	1175	1	ANN	mae hwn	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	fusser13	1175	2	ANN	dydy yr un pwyth yna yn codi yn syth gyn ti ffordd yna cyn cychwyn	clause division	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	fusser13	1189	1	ANN	wneud o yn igam_ogam fel hyn ar i_fyny oeddet ti	non-finite	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	fusser13	1194	1	ANN	cwbl o'n i wneud	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	fusser13	1194	2	ANN	oedd croesi	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	fusser13	1195	1	ANN	dw i meddwl	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	fusser13	1196	2	ANN	os oes gyn ti dri fan hyn	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	fusser13	1196	3	ANN	dw i yn croesi ar_draws ar_draws ar_draws	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	fusser13	1198	1	ANN	felly wnes i yr ddwy ochr	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	fusser13	1202	1	ANN	well mae yn anodd i ti lenwi tu fewn wedyn hefyd	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	stammers3	186	1	GUT	just diogrwydd ydy o fath â ran fwya bobl Cymraeg 	\N	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	4	1	1	3	f	(a11bb1f
Siarad	stammers3	200	3	GUT	dan ni siarad adre de efo ein_gilydd de 	\N	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	4	1	1	3	f	(a11bb1f
Siarad	stammers3	203	1	GUT	yeah a dyna be dw i wneud	\N	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	4	1	1	3	f	(a11bb1f
Siarad	stammers3	208	1	GUT	so ar y cyfan ti yn teimlo 	\N	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	4	1	1	3	f	(a11bb1f
Siarad	stammers3	208	2	GUT	basai well gen ti fod yn fam ac yn ac yn er wraig 	\N	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	4	1	1	3	f	(a11bb1f
Siarad	stammers3	255	1	GUT	fel yna mae plant de 	\N	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	4	1	1	3	f	(a11bb1f
Siarad	stammers3	258	1	GUT	oh wela i 	\N	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	4	1	1	3	f	(a11bb1f
Siarad	stammers3	260	1	GUT	well mae yna rywbeth yn ddireidus yni 	\N	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	4	1	1	3	f	(a11bb1f
Siarad	stammers3	264	1	GUT	mae yna 	\N	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	4	1	1	3	f	(a11bb1f
Siarad	stammers3	266	1	GUT	a mae 	\N	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	4	1	1	3	f	(a11bb1f
Siarad	stammers3	266	2	GUT	mae 	\N	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	4	1	1	3	f	(a11bb1f
Siarad	stammers3	266	3	GUT	mae chwerthin yn ddrwg weithiau 	\N	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	4	1	1	3	f	(a11bb1f
Siarad	davies5	594	1	MER	dydy o ddim yn ddrud	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	1	1	1	3	c	(a11ba1c
Siarad	davies5	625	1	MER	na ti ddim yn cofio	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	1	1	1	3	c	(a11ba1c
Siarad	davies6	231	1	DAN	fedra i ddim gweld heb yn sbectol sti	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser12	1115	1	LUN	achos well basech chi meddwl o bob_dim	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	4	1	1	4	g	(a11ba1g
Siarad	davies6	241	1	DAN	Bobby_Charlton yn siarad drwy ei dÃ®n eto	not sure if we count this as finite	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	davies6	241	2	DAN	ei dÃ®n eto	non-finite?	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	davies6	254	1	DAN	cofia di	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser22	244	1	WYN	a Tryweryn ydy	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	4	1	1	d	(a13ba1d
Siarad	stammers3	501	1	GUT	well na na fydda i 	\N	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	4	1	1	3	f	(a11bb1f
Siarad	stammers3	501	2	GUT	fydda i yn hollol annibynnol 	\N	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	4	1	1	3	f	(a11bb1f
Siarad	stammers3	506	1	GUT	well yeah ddo i fyny 	\N	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	4	1	1	3	f	(a11bb1f
Siarad	stammers3	506	2	GUT	weld Anna wrth_gwrs de 	\N	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	4	1	1	3	f	(a11bb1f
Siarad	stammers3	507	1	GUT	ond gewch chi eich bwyd yn fan yma	split clause on 'a ga i'	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	4	1	1	3	f	(a11bb1f
Siarad	stammers3	507	1	GUT	a ga i mwyd yn fan yna de 	h	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	4	1	1	3	f	(a11bb1f
Siarad	stammers3	509	1	GUT	a mae yn iawn mi invite_io Chris neu rywun round rhyw noson ella 	\N	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	4	1	1	3	f	(a11bb1f
Siarad	stammers3	511	1	GUT	yndy 	\N	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	4	1	1	3	f	(a11bb1f
Siarad	stammers3	514	1	GUT	os oes yna le yna de 	\N	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	4	1	1	3	f	(a11bb1f
Siarad	stammers3	516	1	GUT	fedra i ddim gael mwy na un neu ddau 	\N	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	4	1	1	3	f	(a11bb1f
Siarad	stammers3	516	2	GUT	fedra 	\N	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	4	1	1	3	f	(a11bb1f
Siarad	stammers3	518	1	GUT	does yna ddim lle i dri nag 	\N	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	4	1	1	3	f	(a11bb1f
Siarad	stammers3	518	2	GUT	oes 	\N	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	4	1	1	3	f	(a11bb1f
Siarad	stammers3	520	1	GUT	oh mae yr phone yn canu 	\N	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	4	1	1	3	f	(a11bb1f
Siarad	stammers3	524	1	GUT	dw i yn tŷ Nerys 	\N	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	4	1	1	3	f	(a11bb1f
Siarad	stammers3	724	1	GUT	dw ddim yn gwybod 	\N	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	4	1	1	3	f	(a11bb1f
Siarad	stammers3	750	1	GUT	baswn i 	\N	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	4	1	1	3	f	(a11bb1f
Siarad	stammers3	755	1	GUT	ydy o yn wneud gwahaniaeth	final ti should be with next clause (as ti meddwl)	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	4	1	1	3	f	(a11bb1f
Siarad	stammers3	755	2	GUT	ti meddwl 	ti from prev clause should be part of this one	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	4	1	1	3	f	(a11bb1f
Siarad	stammers3	762	1	GUT	yeah yeah ond ydy 	\N	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	4	1	1	3	f	(a11bb1f
Siarad	stammers3	762	2	GUT	ydy o deimlo wahanol felly yn y tŷ 	\N	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	4	1	1	3	f	(a11bb1f
Siarad	stammers3	770	1	GUT	yeah oedd Bob yn sôn am hyn yeah 	\N	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	4	1	1	3	f	(a11bb1f
Siarad	stammers3	808	1	GUT	ond be sy wrong efo fan yma 	\N	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	4	1	1	3	f	(a11bb1f
Siarad	stammers3	809	1	GUT	mae 	\N	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	4	1	1	3	f	(a11bb1f
Siarad	stammers3	827	1	GUT	yndyn 	\N	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	4	1	1	3	f	(a11bb1f
Siarad	stammers3	833	1	GUT	yeah maen nhw yn codi speed 	\N	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	4	1	1	3	f	(a11bb1f
Siarad	fusser16	415	1	SIR	oedd yr eira yn dal ar y mynyddoedd a bob_dim yno de	\N	cym	monoW	a	1	4	1	1	b	1	2	b	1	1	1	1	1	0	b	(a14bb1b
Siarad	fusser16	423	1	SIR	mae hi wedi aros yno rŵan	\N	cym	monoW	a	1	4	1	1	b	1	2	b	1	1	1	1	1	0	b	(a14bb1b
Siarad	fusser16	424	1	SIR	oedden nhw wedi mynd yno cyn Dolig i aros	\N	cym	monoW	a	1	4	1	1	b	1	2	b	1	1	1	1	1	0	b	(a14bb1b
Siarad	fusser16	426	1	SIR	a dw meddwl	\N	cym	monoW	a	1	4	1	1	b	1	2	b	1	1	1	1	1	0	b	(a14bb1b
Siarad	fusser16	426	2	SIR	bod nhw yn bwriadu aros gwerthu tŷ	non-finite	cym	monoW	a	1	4	1	1	b	1	2	b	1	1	1	1	1	0	b	(a14bb1b
Siarad	fusser16	429	1	SIR	yn um Glan_Conwy oedden nhw yn byw	\N	cym	monoW	a	1	4	1	1	b	1	2	b	1	1	1	1	1	0	b	(a14bb1b
Siarad	fusser19	481	1	OLW	mae	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	4	1	4	g	(a12ba1g
Siarad	fusser16	439	1	SIR	oh dwn i ddim	\N	cym	monoW	a	1	4	1	1	b	1	2	b	1	1	1	1	1	0	b	(a14bb1b
Siarad	fusser16	441	1	SIR	dw i ddim wedi clywed hynny chwaith	\N	cym	monoW	a	1	4	1	1	b	1	2	b	1	1	1	1	1	0	b	(a14bb1b
Siarad	fusser16	442	1	SIR	yn Esquel mae sure	\N	cym	monoW	a	1	4	1	1	b	1	2	b	1	1	1	1	1	0	b	(a14bb1b
Siarad	fusser16	445	1	SIR	fan yno mae rhan fwya mynd	\N	cym	monoW	a	1	4	1	1	b	1	2	b	1	1	1	1	1	0	b	(a14bb1b
Siarad	fusser16	446	1	SIR	oedd yna um vestry capel	\N	cym	monoW	a	1	4	1	1	b	1	2	b	1	1	1	1	1	0	b	(a14bb1b
Siarad	fusser16	847	1	SIR	methu gwybod be baswn i yn gael o yno a dim isio cario dim_byd rhy fawr chwaith de	non-finite	cym	monoW	a	1	4	1	1	b	1	2	b	1	1	1	1	1	0	b	(a14bb1b
Siarad	fusser16	852	1	SIR	achos oedd yna gist de yno	\N	cym	monoW	a	1	4	1	1	b	1	2	b	1	1	1	1	1	0	b	(a14bb1b
Siarad	davies6	261	1	DAN	nag oedd	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	davies6	263	1	DAN	oedd yna rywbeth wedi digwydd	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser11	1169	1	BED	fasai yn helpu nhw	\N	cym	monoW	a	1	3	1	1	b	2	0	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser11	1172	1	BED	oedd	\N	cym	monoW	a	1	3	1	1	b	2	0	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	davies5	625	2	MER	pan es i efo Lilly	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	1	1	1	3	c	(a11ba1c
Siarad	davies5	627	1	MER	just mae yn hawdd mynd ar yr plane	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	1	1	1	3	c	(a11ba1c
Siarad	davies5	664	2	MER	basen ni yn end_io fyny yn colli	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	1	1	1	3	c	(a11ba1c
Siarad	davies5	667	1	MER	basen ni colli chdi yn rywle	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	1	1	1	3	c	(a11ba1c
Siarad	fusser16	854	1	SIR	o'n i rhwng dau feddwl	\N	cym	monoW	a	1	4	1	1	b	1	2	b	1	1	1	1	1	0	b	(a14bb1b
Siarad	fusser16	854	2	SIR	baswn i yn dod honno	\N	cym	monoW	a	1	4	1	1	b	1	2	b	1	1	1	1	1	0	b	(a14bb1b
Siarad	fusser16	855	1	SIR	ond petaswn i dod i un	\N	cym	monoW	a	1	4	1	1	b	1	2	b	1	1	1	1	1	0	b	(a14bb1b
Siarad	fusser16	855	2	SIR	basai raid mi gael i pawb ohonyn nhw	\N	cym	monoW	a	1	4	1	1	b	1	2	b	1	1	1	1	1	0	b	(a14bb1b
Siarad	fusser16	857	1	SIR	a mae o	\N	cym	monoW	a	1	4	1	1	b	1	2	b	1	1	1	1	1	0	b	(a14bb1b
Siarad	fusser16	857	2	SIR	mae mynd wneud dipyn mwy o le	\N	cym	monoW	a	1	4	1	1	b	1	2	b	1	1	1	1	1	0	b	(a14bb1b
Siarad	fusser16	868	1	SIR	oh do ddois i o o um	\N	cym	monoW	a	1	4	1	1	b	1	2	b	1	1	1	1	1	0	b	(a14bb1b
Siarad	fusser16	869	1	SIR	fedra i ddim cofio	\N	cym	monoW	a	1	4	1	1	b	1	2	b	1	1	1	1	1	0	b	(a14bb1b
Siarad	fusser16	869	2	SIR	lle dois i yn iawn wan	\N	cym	monoW	a	1	4	1	1	b	1	2	b	1	1	1	1	1	0	b	(a14bb1b
Siarad	fusser16	870	1	SIR	Buenos_Aires mae sure i Daniel	\N	cym	monoW	a	1	4	1	1	b	1	2	b	1	1	1	1	1	0	b	(a14bb1b
Siarad	fusser16	874	1	SIR	mae hwnnw ddel	\N	cym	monoW	a	1	4	1	1	b	1	2	b	1	1	1	1	1	0	b	(a14bb1b
Siarad	fusser16	878	1	SIR	mae yn ddel hefyd	\N	cym	monoW	a	1	4	1	1	b	1	2	b	1	1	1	1	1	0	b	(a14bb1b
Siarad	fusser16	1277	1	SIR	oh yeah oedden ia	\N	cym	monoW	a	1	4	1	1	b	1	2	b	1	1	1	1	1	0	b	(a14bb1b
Siarad	fusser16	1286	1	SIR	na mae hynny yn beth annifyr	\N	cym	monoW	a	1	4	1	1	b	1	2	b	1	1	1	1	1	0	b	(a14bb1b
Siarad	fusser16	1289	1	SIR	oedd Sara medru wneud o ar y farm	\N	cym	monoW	a	1	4	1	1	b	1	2	b	1	1	1	1	1	0	b	(a14bb1b
Siarad	fusser16	1291	1	SIR	doedd hi ddim yn gorod mynd	\N	cym	monoW	a	1	4	1	1	b	1	2	b	1	1	1	1	1	0	b	(a14bb1b
Siarad	fusser16	1292	1	SIR	oedd	\N	cym	monoW	a	1	4	1	1	b	1	2	b	1	1	1	1	1	0	b	(a14bb1b
Siarad	fusser16	1292	2	SIR	oedd gynni hi fox yno	\N	cym	monoW	a	1	4	1	1	b	1	2	b	1	1	1	1	1	0	b	(a14bb1b
Siarad	fusser16	1294	1	SIR	oedd pobl yn cael roid	clause division	cym	monoW	a	1	4	1	1	b	1	2	b	1	1	1	1	1	0	b	(a14bb1b
Siarad	fusser16	1294	3	SIR	os oedden nhw isio wedyn	\N	cym	monoW	a	1	4	1	1	b	1	2	b	1	1	1	1	1	0	b	(a14bb1b
Siarad	fusser16	1297	1	SIR	oedd raid ni ofyn	\N	cym	monoW	a	1	4	1	1	b	1	2	b	1	1	1	1	1	0	b	(a14bb1b
Siarad	fusser16	1299	1	SIR	a ryw un lle welais i yn gwrthod erioed	\N	cym	monoW	a	1	4	1	1	b	1	2	b	1	1	1	1	1	0	b	(a14bb1b
Siarad	fusser16	1324	1	SIR	byddai Megan	\N	cym	monoW	a	1	4	1	1	b	1	2	b	1	1	1	1	1	0	b	(a14bb1b
Siarad	fusser16	1327	1	SIR	ia Megan mae sure ia	\N	cym	monoW	a	1	4	1	1	b	1	2	b	1	1	1	1	1	0	b	(a14bb1b
Siarad	davies10	332	1	MIC	nag oes	\N	cym	monoW	a	1	2	1	1	b	1	2	b	4	1	1	4	1	4	g	(a12bb4g
Siarad	davies10	344	1	MIC	nag oes	\N	cym	monoW	a	1	2	1	1	b	1	2	b	4	1	1	4	1	4	g	(a12bb4g
Siarad	davies10	348	1	MIC	yndy	\N	cym	monoW	a	1	2	1	1	b	1	2	b	4	1	1	4	1	4	g	(a12bb4g
Siarad	davies10	351	1	MIC	ydy	\N	cym	monoW	a	1	2	1	1	b	1	2	b	4	1	1	4	1	4	g	(a12bb4g
Siarad	davies10	359	1	MIC	mae o	\N	cym	monoW	a	1	2	1	1	b	1	2	b	4	1	1	4	1	4	g	(a12bb4g
Siarad	davies10	381	1	MIC	un o Gaerwen oedd ei dad o de	\N	cym	monoW	a	1	2	1	1	b	1	2	b	4	1	1	4	1	4	g	(a12bb4g
Siarad	fusser28	237	2	LLA	mae sure	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	1	1	4	4	1	g	(a14ba1g
Siarad	davies10	387	1	MIC	un doniol oedd er Edgar	\N	cym	monoW	a	1	2	1	1	b	1	2	b	4	1	1	4	1	4	g	(a12bb4g
Siarad	davies10	402	1	MIC	mae job drwy yr dydd mynd round efo yr llefrith	\N	cym	monoW	a	1	2	1	1	b	1	2	b	4	1	1	4	1	4	g	(a12bb4g
Siarad	davies10	409	1	MIC	oedd	\N	cym	monoW	a	1	2	1	1	b	1	2	b	4	1	1	4	1	4	g	(a12bb4g
Siarad	davies10	414	1	MIC	oedd	\N	cym	monoW	a	1	2	1	1	b	1	2	b	4	1	1	4	1	4	g	(a12bb4g
Siarad	davies10	716	1	MIC	Duw does yna ddim_byd yni dim ond ryw	\N	cym	monoW	a	1	2	1	1	b	1	2	b	4	1	1	4	1	4	g	(a12bb4g
Siarad	davies10	717	1	MIC	mae wedi colli ei	\N	cym	monoW	a	1	2	1	1	b	1	2	b	4	1	1	4	1	4	g	(a12bb4g
Siarad	davies10	736	1	MIC	glywais i nhad yn deud	\N	cym	monoW	a	1	2	1	1	b	1	2	b	4	1	1	4	1	4	g	(a12bb4g
Siarad	davies10	736	2	MIC	fyddai yna yr yr myfyrwyr o Brifysgol Bangor	\N	cym	monoW	a	1	2	1	1	b	1	2	b	4	1	1	4	1	4	g	(a12bb4g
Siarad	davies10	741	1	MIC	ac fyddai yna un yn mynd o_dan y stalls	\N	cym	monoW	a	1	2	1	1	b	1	2	b	4	1	1	4	1	4	g	(a12bb4g
Siarad	davies10	741	2	MIC	a rhwymo nhw yn ei_gilydd	\N	cym	monoW	a	1	2	1	1	b	1	2	b	4	1	1	4	1	4	g	(a12bb4g
Siarad	fusser28	257	2	LLA	yndy	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	1	1	4	4	1	g	(a14ba1g
Siarad	davies10	747	1	MIC	ac ar yr hen fuses ers_talwm oedd yna ddrws yn cefn a fath â ryw hen	\N	cym	monoW	a	1	2	1	1	b	1	2	b	4	1	1	4	1	4	g	(a12bb4g
Siarad	davies5	669	1	MER	yn yr er be ydy enw yr lle um y Louvre	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	1	1	1	3	c	(a11ba1c
Siarad	davies5	686	1	MER	do dw i efo fo ar	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	1	1	1	3	c	(a11ba1c
Siarad	davies5	928	1	MER	so dw i	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	1	1	1	3	c	(a11ba1c
Siarad	davies5	928	2	MER	dan ni wedi roid o nôl i_mewn de	clause division	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	1	1	1	3	c	(a11ba1c
Siarad	davies5	938	1	MER	be oedd enw yr form	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	1	1	1	3	c	(a11ba1c
Siarad	davies5	967	1	MER	mae raid i o llenwi i cael un eto de blwyddyn yma	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	1	1	1	3	c	(a11ba1c
Siarad	davies5	977	1	MER	yndy	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	1	1	1	3	c	(a11ba1c
Siarad	davies5	978	2	MER	sut mae fel elusen Owen_Lloyd neu rywbeth	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	1	1	1	3	c	(a11ba1c
Siarad	davies5	978	3	MER	ydyn nhw	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	1	1	1	3	c	(a11ba1c
Siarad	davies5	980	1	MER	ti cael	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	1	1	1	3	c	(a11ba1c
Siarad	davies5	982	1	MER	dw meddwl am bobl	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	1	1	1	3	c	(a11ba1c
Siarad	davies10	756	1	MIC	a fyddai yr stondins i_gyd yn mynd i_fyny yr stryd efo yr bus	\N	cym	monoW	a	1	2	1	1	b	1	2	b	4	1	1	4	1	4	g	(a12bb4g
Siarad	davies10	767	1	MIC	yeah doedd yna toes yna ddim_byd ddim ond bwydydd a ryw dools	\N	cym	monoW	a	1	2	1	1	b	1	2	b	4	1	1	4	1	4	g	(a12bb4g
Siarad	davies10	768	1	MIC	pethau rubbish sy yna i fod yn honest	\N	cym	monoW	a	1	2	1	1	b	1	2	b	4	1	1	4	1	4	g	(a12bb4g
Siarad	davies10	773	1	MIC	mi gollodd hi mi	\N	cym	monoW	a	1	2	1	1	b	1	2	b	4	1	1	4	1	4	g	(a12bb4g
Siarad	davies10	773	2	MIC	aeth hi i_lawr ar_ôl i yr ceffylau fynd o o yr o yr sale yn_do	\N	cym	monoW	a	1	2	1	1	b	1	2	b	4	1	1	4	1	4	g	(a12bb4g
Siarad	davies10	776	1	MIC	oh naddo	\N	cym	monoW	a	1	2	1	1	b	1	2	b	4	1	1	4	1	4	g	(a12bb4g
Siarad	davies10	1107	1	MIC	dyna fydd ar ein cefnau ni ar_ôl yr drama yma de	non-finite	cym	monoW	a	1	2	1	1	b	1	2	b	4	1	1	4	1	4	g	(a12bb4g
Siarad	davies10	1113	1	MIC	job fydd hi job i ti gael rywle cyn Dolig	\N	cym	monoW	a	1	2	1	1	b	1	2	b	4	1	1	4	1	4	g	(a12bb4g
Siarad	davies10	1113	2	MIC	bydd	\N	cym	monoW	a	1	2	1	1	b	1	2	b	4	1	1	4	1	4	g	(a12bb4g
Siarad	davies10	1120	1	MIC	disgwyl i Edna ddod yn_ôl	clause division	cym	monoW	a	1	2	1	1	b	1	2	b	4	1	1	4	1	4	g	(a12bb4g
Siarad	davies10	1121	1	MIC	a wedyn gawn ni weld	clause division	cym	monoW	a	1	2	1	1	b	1	2	b	4	1	1	4	1	4	g	(a12bb4g
Siarad	davies10	1121	3	MIC	sut mae hi	\N	cym	monoW	a	1	2	1	1	b	1	2	b	4	1	1	4	1	4	g	(a12bb4g
Siarad	davies10	1128	1	MIC	bydd	\N	cym	monoW	a	1	2	1	1	b	1	2	b	4	1	1	4	1	4	g	(a12bb4g
Siarad	davies10	1128	2	MIC	bydd	\N	cym	monoW	a	1	2	1	1	b	1	2	b	4	1	1	4	1	4	g	(a12bb4g
Siarad	davies10	1131	1	MIC	bydd	\N	cym	monoW	a	1	2	1	1	b	1	2	b	4	1	1	4	1	4	g	(a12bb4g
Siarad	davies10	1132	1	MIC	bydd	\N	cym	monoW	a	1	2	1	1	b	1	2	b	4	1	1	4	1	4	g	(a12bb4g
Siarad	davies10	1135	1	MIC	yeah oh dydy rywun ddim isio nag	\N	cym	monoW	a	1	2	1	1	b	1	2	b	4	1	1	4	1	4	g	(a12bb4g
Siarad	davies10	1138	1	MIC	dan ni wedi gwneud tua dwy waith do	\N	cym	monoW	a	1	2	1	1	b	1	2	b	4	1	1	4	1	4	g	(a12bb4g
Siarad	fusser26	228	1	IOL	pan mae yn cyfarfod rywun felly te	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	3	3	4	1	i	(a13bb1i
Siarad	fusser26	230	1	IOL	well nac ydy	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	3	3	4	1	i	(a13bb1i
Siarad	fusser26	230	2	IOL	mae fath â	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	3	3	4	1	i	(a13bb1i
Siarad	fusser26	230	3	IOL	mae Alzheimer's arno fo mi	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	3	3	4	1	i	(a13bb1i
Siarad	fusser26	230	4	IOL	fydd	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	3	3	4	1	i	(a13bb1i
Siarad	fusser26	231	1	IOL	wedyn um ia wedyn oedd o yn deud um	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	3	3	4	1	i	(a13bb1i
Siarad	fusser26	233	1	IOL	oedd ddrwg iawn gen i glywed am ei salwch felly	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	3	3	4	1	i	(a13bb1i
Siarad	fusser26	234	1	IOL	ond fel oedd Debbie Davies yn sôn	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	3	3	4	1	i	(a13bb1i
Siarad	fusser26	234	2	IOL	o'n i meddwl bod o yn mynd at ei fedd felly	non-finite	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	3	3	4	1	i	(a13bb1i
Siarad	fusser26	238	1	IOL	well ei eiriau fo oedd	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	3	3	4	1	i	(a13bb1i
Siarad	davies5	982	3	MER	ydy o de	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	1	1	1	3	c	(a11ba1c
Siarad	davies5	984	1	MER	wedyn mae	not sure if we count this as finite	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	1	1	1	3	c	(a11ba1c
Siarad	davies5	984	5	MER	sy yn er wneud o	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	1	1	1	3	c	(a11ba1c
Siarad	davies6	270	1	DAN	cofia di	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	davies6	270	2	DAN	oedd	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	davies6	270	3	DAN	oedd Saha a Rooney yn gweithio dda efo ei_gilydd	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	davies6	273	1	DAN	a mae yn gwella de	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	davies6	277	1	DAN	dw ddim gwybod	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	davies6	277	2	DAN	be oedd de	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	davies6	789	1	DAN	ah faint o gloch ydy dŵad	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	davies6	792	1	DAN	dydy erioed yn chwarter i dri	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	davies6	794	1	DAN	paid malu cachu	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	davies6	799	1	DAN	does ddim_byd i wneud nag oes	clause division	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	davies6	801	1	DAN	dydy o ddim_byd	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser26	240	1	IOL	ond um oedd golwg right dda arno fe	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	3	3	4	1	i	(a13bb1i
Siarad	fusser26	241	1	IOL	yeah wedyn dŵad i weld arbenigwr oedd o	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	3	3	4	1	i	(a13bb1i
Siarad	fusser26	248	1	IOL	yn Benllech mae wedi byw ers fo wedi priodi	clause division	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	3	3	4	1	i	(a13bb1i
Siarad	fusser26	253	1	IOL	yfo wnaeth ofyn i mi	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	3	3	4	1	i	(a13bb1i
Siarad	fusser26	467	1	IOL	um mae fel hwnnw De America Brazil	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	3	3	4	1	i	(a13bb1i
Siarad	fusser26	467	2	IOL	dydy um wrth_gwrs	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	3	3	4	1	i	(a13bb1i
Siarad	fusser26	468	1	IOL	am bod diffyg haul mae sure	non-finite	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	3	3	4	1	i	(a13bb1i
Siarad	fusser26	469	1	IOL	y vitamin D yma dan ni yn gael o yr haul	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	3	3	4	1	i	(a13bb1i
Siarad	fusser26	470	2	IOL	yn gael hwnnw	non-finite	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	3	3	4	1	i	(a13bb1i
Siarad	fusser26	470	3	IOL	basan ni yn fychan fel y pygmies	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	3	3	4	1	i	(a13bb1i
Siarad	fusser26	470	4	IOL	mae yn sure	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	3	3	4	1	i	(a13bb1i
Siarad	fusser26	471	1	IOL	a dyna pam mae yr eliffantod ella yn llai	non-finite	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	3	3	4	1	i	(a13bb1i
Siarad	fusser26	477	1	IOL	ydyn nhw llawer llai na rheina sydd yn Kenya	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	3	3	4	1	i	(a13bb1i
Siarad	fusser26	479	1	IOL	mae hynny dipyn	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	3	3	4	1	i	(a13bb1i
Siarad	fusser26	483	1	IOL	pan dach chi yn feddwl amdano fo	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	3	3	4	1	i	(a13bb1i
Siarad	fusser26	485	1	IOL	oh baswn i yn deud na am bod nhw o_dan y canopy	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	3	3	4	1	i	(a13bb1i
Siarad	fusser26	485	3	IOL	mae raid yeah yn byw	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	3	3	4	1	i	(a13bb1i
Siarad	fusser26	690	1	IOL	does yna ddim car	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	3	3	4	1	i	(a13bb1i
Siarad	fusser26	690	2	IOL	dw i ddim yn meddwl	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	3	3	4	1	i	(a13bb1i
Siarad	fusser26	693	1	IOL	oedd yna ddim llawer o geir o_gwmpas felly	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	3	3	4	1	i	(a13bb1i
Siarad	fusser26	696	1	IOL	yeah na oedd gynnoch chi ddim blys dim blys dysgu dim_byd	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	3	3	4	1	i	(a13bb1i
Siarad	fusser26	708	1	IOL	um dw i isio copïo	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	3	3	4	1	i	(a13bb1i
Siarad	fusser26	708	2	IOL	be weles i yn yr tamaid Herald Cymraeg yna heddiw yma	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	3	3	4	1	i	(a13bb1i
Siarad	fusser26	713	1	IOL	a yr ddynes oedd wedi roid o i_fewn o Bethesda	clause division	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	3	3	4	1	i	(a13bb1i
Siarad	fusser26	717	1	IOL	wedyn ella fedran ni neu roid o ar y piano felly	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	3	3	4	1	i	(a13bb1i
Siarad	davies6	801	2	DAN	does gen i ddim_byd i wneud de	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	davies7	119	1	TRA	achos dw i angen bod nôl erbyn chwech	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies7	121	1	TRA	pump ydy wan	non-finite	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies7	123	1	TRA	yeah dw isio mynd i tent chi	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies7	124	1	TRA	faint mae gymryd	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies7	142	1	TRA	pryd mae 	clause division	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies7	142	2	TRA	pa bryd ti gael gwybod	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies7	149	1	TRA	ti mynd i fod adre	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	fusser26	721	1	IOL	well dwn innau ddim chwaith wir	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	3	3	4	1	i	(a13bb1i
Siarad	fusser26	723	1	IOL	ond oedd hi yn gwybod y llinellau gynta ylwch	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	3	3	4	1	i	(a13bb1i
Siarad	roberts4	299	1	MEC	oedd yna fwy na un yn gyrru 	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	4	4	4	1	k	(a12bb1k
Siarad	roberts4	301	1	MEC	wnaeth hi fynd fyny a dod lawr i nôl mwy 	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	4	4	4	1	k	(a12bb1k
Siarad	roberts4	308	1	MEC	wna chdi wneud i hi gerdded 	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	4	4	4	1	k	(a12bb1k
Siarad	roberts4	313	1	MEC	yn trwy rugby mae wedi wneud hynna 	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	4	4	4	1	k	(a12bb1k
Siarad	roberts4	322	1	MEC	oedd 	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	4	4	4	1	k	(a12bb1k
Siarad	roberts4	346	1	MEC	na mae rhan fwya 	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	4	4	4	1	k	(a12bb1k
Siarad	roberts4	347	1	MEC	just mae yna rei un neu ddau 	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	4	4	4	1	k	(a12bb1k
Siarad	roberts4	347	2	MEC	sy weithiau 	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	4	4	4	1	k	(a12bb1k
Siarad	roberts4	350	1	MEC	sy ddim 	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	4	4	4	1	k	(a12bb1k
Siarad	roberts4	354	1	MEC	oh mae rhyfedd 	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	4	4	4	1	k	(a12bb1k
Siarad	roberts4	355	1	MEC	mae yna rei pobl 	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	4	4	4	1	k	(a12bb1k
Siarad	roberts4	355	2	MEC	sy yn dod ymlaen efo rei rei rei pobl 	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	4	4	4	1	k	(a12bb1k
Siarad	roberts4	355	3	MEC	sy ddim yn licio rei lleoliadau a rei yn 	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	4	4	4	1	k	(a12bb1k
Siarad	roberts4	645	1	MEC	a dw i um fath â oh 	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	4	4	4	1	k	(a12bb1k
Siarad	roberts4	645	2	MEC	fedra 	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	4	4	4	1	k	(a12bb1k
Siarad	roberts4	645	3	MEC	fyswn i ddim yn meindio mynd i Cornwall neu rywbeth ar bike 	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	4	4	4	1	k	(a12bb1k
Siarad	roberts4	649	1	MEC	dw ddim yn gynno fi ddim digon o amser i wneud hynna wan 	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	4	4	4	1	k	(a12bb1k
Siarad	roberts4	658	1	MEC	ond fysai fo yn cool mynd ar bike ar arfordir Cymru hefyd a just campio bob noson 	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	4	4	4	1	k	(a12bb1k
Siarad	roberts4	660	1	MEC	fath â felly ar noson gynta basa chdi petasa chdi 	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	4	4	4	1	k	(a12bb1k
Siarad	roberts4	660	2	MEC	mynd am Pen_Llŷn basa chdi 	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	4	4	4	1	k	(a12bb1k
Siarad	roberts4	660	3	MEC	gallu basa chdi gallu wneud o mewn i Aberdaron mewn llai na diwrnod 	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	4	4	4	1	k	(a12bb1k
Siarad	roberts4	662	1	MEC	mae Tywyn yn le nice 	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	4	4	4	1	k	(a12bb1k
Siarad	roberts4	662	2	MEC	yndy 	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	4	4	4	1	k	(a12bb1k
Siarad	roberts4	665	1	MEC	yndy 	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	4	4	4	1	k	(a12bb1k
Siarad	roberts4	668	1	MEC	dw i 	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	4	4	4	1	k	(a12bb1k
Siarad	roberts4	668	2	MEC	dw i 	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	4	4	4	1	k	(a12bb1k
Siarad	roberts4	668	3	MEC	dw ddim yn meddwl 	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	4	4	4	1	k	(a12bb1k
Siarad	roberts4	668	4	MEC	dw i ddim yn gynno fi ddim co fod yna de 	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	4	4	4	1	k	(a12bb1k
Siarad	roberts4	675	1	MEC	wrth ymyl fan yna mae Aberdyfi yeah 	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	4	4	4	1	k	(a12bb1k
Siarad	roberts4	677	1	MEC	mae fan yna nice 	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	4	4	4	1	k	(a12bb1k
Siarad	roberts4	679	1	MEC	Aberdyfi sy nice 	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	4	4	4	1	k	(a12bb1k
Siarad	roberts4	972	1	MEC	dw ti wedi cyrraedd er unrhyw arholiad ti 	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	4	4	4	1	k	(a12bb1k
Siarad	roberts4	972	3	MEC	os mae 	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	4	4	4	1	k	(a12bb1k
Siarad	roberts4	972	4	MEC	mae 	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	4	4	4	1	k	(a12bb1k
Siarad	roberts4	972	5	MEC	os ydy o yn bell i_ffwrdd	ti yn dechrau is a new clause, with aux deletion, which is OK for our analysis	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	4	4	4	1	k	(a12bb1k
Siarad	roberts4	972	5	MEC	ti yn dechrau cwestiynu os oh 	h	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	4	4	4	1	k	(a12bb1k
Siarad	roberts4	973	1	MEC	wnes i wneud yn dda neu beidio 	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	4	4	4	1	k	(a12bb1k
Siarad	roberts4	977	1	MEC	ond dw i 	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	4	4	4	1	k	(a12bb1k
Siarad	davies7	153	1	TRA	be wnest ti gael	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies7	163	1	TRA	oedda chdi yn gweld nhw	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies7	163	2	TRA	yn pa rei o'ch chdi yn gweld yn anodd	h	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies7	281	1	TRA	so oedd hi ddim yna de i siarad	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies7	282	1	TRA	ond oedd pawb arall yna	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies7	283	1	TRA	ac oedden nhw deud fath â pam	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies7	283	2	TRA	oedden nhw isio mynd yn_ôl pethau fel yna	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies7	285	1	TRA	dw ddim yn gweld Suzie	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies7	285	2	TRA	mynd yn_ôl i_fewn de	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	roberts4	977	2	MEC	dw i 	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	4	4	4	1	k	(a12bb1k
Siarad	roberts4	977	3	MEC	wnes i ddeud syth ar_ôl 	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	4	4	4	1	k	(a12bb1k
Siarad	roberts4	977	4	MEC	dod allan 	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	4	4	4	1	k	(a12bb1k
Siarad	roberts4	979	1	MEC	dw meddwl 	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	4	4	4	1	k	(a12bb1k
Siarad	roberts4	979	2	MEC	dw i wedi 	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	4	4	4	1	k	(a12bb1k
Siarad	roberts4	979	3	MEC	dw i bron fath â 	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	4	4	4	1	k	(a12bb1k
Siarad	roberts4	979	4	MEC	dw i mor sicr â 	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	4	4	4	1	k	(a12bb1k
Siarad	roberts4	979	5	MEC	fedra fi fod heb fod yn paranoid bod 	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	4	4	4	1	k	(a12bb1k
Siarad	roberts4	982	1	MEC	ond dw meddwl yr yr un arall 	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	4	4	4	1	k	(a12bb1k
Siarad	roberts4	982	2	MEC	dw meddwl yna fwy o jance 	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	4	4	4	1	k	(a12bb1k
Siarad	roberts4	982	4	MEC	wnes i fethu hwnna ond 	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	4	4	4	1	k	(a12bb1k
Siarad	roberts4	1001	1	MEC	na hwnna yn session da wnaeth o efo ni fan yna 	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	4	4	4	1	k	(a12bb1k
Siarad	roberts4	1004	1	MEC	dw ddim gwybod pam 	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	4	4	4	1	k	(a12bb1k
Siarad	roberts4	1004	2	MEC	mae o mor hir 	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	4	4	4	1	k	(a12bb1k
Siarad	roberts4	1005	1	MEC	achos mae pobl eraill yn gael marciau nhw lot cynt 	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	4	4	4	1	k	(a12bb1k
Siarad	roberts4	1009	1	MEC	wnes i drio gael Emma i um 	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	4	4	4	1	k	(a12bb1k
Siarad	roberts4	1012	1	MEC	oh um dw i right hapus efo 	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	4	4	4	1	k	(a12bb1k
Siarad	roberts4	1012	2	MEC	sut aeth arholiad 	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	4	4	4	1	k	(a12bb1k
Siarad	fusser29	239	1	LOI	o'n i yn meddwl sbïo	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	1	1	1	1	b	(a12bb1b
Siarad	fusser29	239	3	LOI	pwy oedd yn er twrio	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	1	1	1	1	b	(a12bb1b
Siarad	fusser29	241	1	LOI	gynna i fancy mynd i gig arall	not sure if we count this as finite	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	1	1	1	1	b	(a12bb1b
Siarad	fusser29	244	2	LOI	wnawn ni fynd i brynu	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	1	1	1	1	b	(a12bb1b
Siarad	fusser29	259	1	LOI	ydy o yn car gen ti	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	1	1	1	1	b	(a12bb1b
Siarad	fusser29	274	1	LOI	yndy	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	1	1	1	1	b	(a12bb1b
Siarad	fusser29	276	2	LOI	oes	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	1	1	1	1	b	(a12bb1b
Siarad	fusser29	277	1	LOI	oes	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	1	1	1	1	b	(a12bb1b
Siarad	fusser29	302	1	LOI	yndw	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	1	1	1	1	b	(a12bb1b
Siarad	fusser29	514	1	LOI	dw i yn cofio	clause division	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	1	1	1	1	b	(a12bb1b
Siarad	fusser29	514	1	LOI	gynno fi rei fan yma	h	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	1	1	1	1	b	(a12bb1b
Siarad	fusser29	514	1	LOI	a gynno fi rei dros lôn	h	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	1	1	1	1	b	(a12bb1b
Siarad	fusser29	523	1	LOI	wyt	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	1	1	1	1	b	(a12bb1b
Siarad	fusser29	526	2	LOI	wnaeth Jenny sgwennu i fi diwrnod o blaen	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	1	1	1	1	b	(a12bb1b
Siarad	fusser29	527	1	LOI	wnes i ddangos o i chdi	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	1	1	1	1	b	(a12bb1b
Siarad	fusser29	536	2	LOI	sut dw i yn gweld pethau	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	1	1	1	1	b	(a12bb1b
Siarad	fusser29	539	3	LOI	mae yn dda mewn un ffordd ond eto	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	1	1	1	1	b	(a12bb1b
Siarad	fusser29	541	2	LOI	maen nhw wedi newid y system i_gyd wan do	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	1	1	1	1	b	(a12bb1b
Siarad	fusser29	543	1	LOI	so mae yr cyrsiau i_gyd blwyddyn nesa yn mynd	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	1	1	1	1	b	(a12bb1b
Siarad	fusser29	769	1	LOI	a wnaeth Jenny ddeud wrtho fi hefyd	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	1	1	1	1	b	(a12bb1b
Siarad	davies7	289	1	TRA	pwy ydy ffefryn chdi yn y tŷ	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies7	292	1	TRA	pwy oedd	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies7	427	1	TRA	ia dw gwybod	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies6	251	1	HEC	meddwl fasen ni wedi cael pymtheg amdano fo hefyd de	non-finite	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	4	1	d	(a12ba1d
Siarad	davies6	253	1	HEC	mae o yr un oed	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	4	1	d	(a12ba1d
Siarad	davies6	259	1	HEC	dw i yn sure bod	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	4	1	d	(a12ba1d
Siarad	davies6	266	1	HEC	na ydy	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	4	1	d	(a12ba1d
Siarad	fusser3	423	1	ALY	oh ydyn nhw wir	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	davies6	274	1	HEC	mae o dda yn yr awyr yn well na Van_Nistelrooy	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	4	1	d	(a12ba1d
Siarad	davies6	507	1	HEC	oedd hi wedi bod allan am fwyd	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	4	1	d	(a12ba1d
Siarad	davies6	509	1	HEC	oedd o yn tancio yr gwin	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	4	1	d	(a12ba1d
Siarad	davies6	509	2	HEC	meddai Emma	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	4	1	d	(a12ba1d
Siarad	davies6	510	1	HEC	ac oedd o yn	clause division	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	4	1	d	(a12ba1d
Siarad	fusser29	772	1	LOI	wna i fethu hi hefyd sti	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	1	1	1	1	b	(a12bb1b
Siarad	fusser29	777	1	LOI	mae gynno fi cyfeiriad hi hefyd wan	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	1	1	1	1	b	(a12bb1b
Siarad	fusser29	836	1	LOI	mae yna rywbeth odd amdani	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	1	1	1	1	b	(a12bb1b
Siarad	fusser29	848	1	LOI	sut mae	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	1	1	1	1	b	(a12bb1b
Siarad	fusser29	855	1	LOI	do ddeudodd hi	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	1	1	1	1	b	(a12bb1b
Siarad	stammers6	369	1	HEU	a wnaeth hi stopio i gael paned efo ti 	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	stammers6	383	1	HEU	so be oedd 	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	stammers6	383	2	HEU	be oedd gen yr um 	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	stammers6	384	1	HEU	welaist ti hi cyn iddi mynd at y doctor 	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	stammers6	384	3	HEU	a welaist hi wedyn felly 	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	stammers6	392	1	HEU	ydy 	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	stammers6	392	2	HEU	ydy ddim wedi cael hynny o_blaen 	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	stammers6	400	1	HEU	um gawn ni feddwl wan 	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	stammers6	402	1	HEU	ie dydy o ddim quite yr un fath heb gaws nac 	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	stammers6	402	2	HEU	ydy 	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	stammers6	404	1	HEU	bechod bod ti ddim yn licio ychydig o spice	Clause division: split into new clause with 'achos' (first clause is therefore nonfinite but second cl is finite)	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	stammers6	404	1	HEU	achos mae hwnnw wneud gwahaniaeth mawr i fwyd 	bechod bod ti ddim yn licio ychydig o spice achos mae hwnnw wneud gwahaniaeth mawr i fwyd 	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	stammers6	404	2	HEU	wsti os ti roid ychydig o o chilli neu rywbeth 	Auxiliary deletion - include in analysis	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	stammers6	409	1	HEU	oh yndy 	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	stammers6	726	1	HEU	oedd yna 	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	stammers6	726	3	HEU	wedi dod oddi_ar dŷ yn Nant_Peris heddiw 	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	stammers6	746	1	HEU	ar Youtube oedd hwnna yeah 	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	davies7	287	1	TRA	achos oedd hi yn really boring	\N	cym	biling	b	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(b12ba1b
Siarad	davies6	510	2	HEC	be ti yn galw fo topio un hi fyny	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	4	1	d	(a12ba1d
Siarad	davies6	511	1	HEC	oedd hi wedi dal hi	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	4	1	d	(a12ba1d
Siarad	davies6	511	2	HEC	meddai hi	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	4	1	d	(a12ba1d
Siarad	davies6	518	1	HEC	ia fasai fo ddim yn cael munud o heddwch gen i de	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	4	1	d	(a12ba1d
Siarad	davies6	527	1	HEC	na na dw i yn iawn	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	4	1	d	(a12ba1d
Siarad	davies6	528	1	HEC	dim_ond dau hanner dw i wedi gael deud	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	4	1	d	(a12ba1d
Siarad	davies6	540	1	HEC	argian oedd mam yn	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	4	1	d	(a12ba1d
Siarad	davies6	542	1	HEC	nos Sadwrn dw i meddwl ia	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	4	1	d	(a12ba1d
Siarad	davies6	765	1	HEC	wna i ddreifio allan	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	4	1	d	(a12ba1d
Siarad	davies6	772	1	HEC	dw ddim gwybod	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	4	1	d	(a12ba1d
Siarad	stammers6	764	1	HEU	so mewn ffordd just er_mwyn cael mwy o filwyr i fynd i Iraq ydy hyn 	nonfinite	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	stammers6	764	4	HEU	ydy ddeud 	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	stammers6	786	1	HEU	wnes i siarad efo Kevin ar y phone 	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	stammers6	787	1	HEU	dydy o ddim yn licio tywydd yma o_gwbl 	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	stammers6	789	1	HEU	dydy o ddim yn gallu mynd ar ei fike 	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	stammers6	790	1	HEU	a mae o yn dueddol o ddiodde ychydig bach efo yr 	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	stammers6	791	1	HEU	basai fo just yn licio hibernate_io 	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	stammers6	792	1	HEU	mae o mynd ychydig bach yn 	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	stammers6	795	1	HEU	well mae lot o bobl 	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	stammers6	1160	1	HEU	na oedden nhw ddim wedi cael rhyw just wedi cogio cael rhyw ar Youtube ar a wedyn wedi roid o fyny ar Youtube 	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	stammers6	1162	1	HEU	ond mae nhw wedi dynnu o lawr bellach 	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	stammers6	1166	1	HEU	paid â bod yn gas efo fo Blodeuwedd 	clause division: include with next cl	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	stammers6	1168	1	HEU	well ti ddim yn eistedd ar hyn o bryd nag 	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	stammers6	1168	2	HEU	wyt 	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	stammers6	1180	1	HEU	mae yr hen weiddi yma yn dy ypsetio di dydy Dyfi bach 	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	stammers6	1192	1	HEU	wna i wneud o 	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	davies5	337	1	SIO	yeah fydd	\N	cym	monoW	a	3	1	3	3	f	1	2	b	4	4	4	4	3	3	o	(a31fb4o
Siarad	stammers6	1195	1	HEU	wna i wneud o 	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	stammers6	1197	1	HEU	wna i wneud o 	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	stammers6	1201	2	HEU	wyt ti 	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	stammers6	1216	1	HEU	achos dw i wedi 	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	stammers6	1216	2	HEU	dw i wedi ddod i ddallt o right dda 	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	davies5	312	1	SIO	nurse dw meddwl	\N	cym	monoW	a	3	1	3	3	f	1	2	b	4	4	4	4	3	3	o	(a31fb4o
Siarad	davies5	312	3	SIO	fydd yn	\N	cym	monoW	a	3	1	3	3	f	1	2	b	4	4	4	4	3	3	o	(a31fb4o
Siarad	davies5	316	1	SIO	um wyt ti wedi cael o	\N	cym	monoW	a	3	1	3	3	f	1	2	b	4	4	4	4	3	3	o	(a31fb4o
Siarad	davies5	318	1	SIO	wnaeth o brifo	\N	cym	monoW	a	3	1	3	3	f	1	2	b	4	4	4	4	3	3	o	(a31fb4o
Siarad	davies5	320	1	SIO	pwy wnaeth cael o	\N	cym	monoW	a	3	1	3	3	f	1	2	b	4	4	4	4	3	3	o	(a31fb4o
Siarad	davies5	327	1	SIO	yndy	\N	cym	monoW	a	3	1	3	3	f	1	2	b	4	4	4	4	3	3	o	(a31fb4o
Siarad	davies5	327	2	SIO	yndy	\N	cym	monoW	a	3	1	3	3	f	1	2	b	4	4	4	4	3	3	o	(a31fb4o
Siarad	davies5	327	3	SIO	dw meddwl	\N	cym	monoW	a	3	1	3	3	f	1	2	b	4	4	4	4	3	3	o	(a31fb4o
Siarad	davies5	328	2	SIO	dw i wedi cael hwnna o blaen	\N	cym	monoW	a	3	1	3	3	f	1	2	b	4	4	4	4	3	3	o	(a31fb4o
Siarad	davies5	328	3	SIO	dw meddwl	\N	cym	monoW	a	3	1	3	3	f	1	2	b	4	4	4	4	3	3	o	(a31fb4o
Siarad	davies5	344	1	SIO	wnest ti weld o	\N	cym	monoW	a	3	1	3	3	f	1	2	b	4	4	4	4	3	3	o	(a31fb4o
Siarad	davies5	617	1	SIO	na dydy	\N	cym	monoW	a	3	1	3	3	f	1	2	b	4	4	4	4	3	3	o	(a31fb4o
Siarad	davies5	617	2	SIO	dydy o ddim	\N	cym	monoW	a	3	1	3	3	f	1	2	b	4	4	4	4	3	3	o	(a31fb4o
Siarad	davies6	773	1	HEC	isio mhres dw i gen Adrian de	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	4	1	d	(a12ba1d
Siarad	davies6	779	1	HEC	wnes i drio	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	4	1	d	(a12ba1d
Siarad	davies6	785	1	HEC	aethon ni i Warrington de	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	4	1	d	(a12ba1d
Siarad	davies6	787	1	HEC	ella na fyswn i mynd yna eto chwaith de	clause division	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	4	1	d	(a12ba1d
Siarad	davies6	790	1	HEC	dw ddim gwybod	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	4	1	d	(a12ba1d
Siarad	davies6	793	1	HEC	tua faswn i ddeud	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	4	1	d	(a12ba1d
Siarad	davies6	810	1	HEC	lle mae o dŵad	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	4	1	d	(a12ba1d
Siarad	fusser11	1172	2	BED	oedd	\N	cym	monoW	a	1	3	1	1	b	2	0	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser11	1174	1	BED	oedd	\N	cym	monoW	a	1	3	1	1	b	2	0	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	davies5	628	1	SIO	yndy	\N	cym	monoW	a	3	1	3	3	f	1	2	b	4	4	4	4	3	3	o	(a31fb4o
Siarad	davies5	634	2	SIO	fyswn i yn mynd	clause division	cym	monoW	a	3	1	3	3	f	1	2	b	4	4	4	4	3	3	o	(a31fb4o
Siarad	davies5	638	1	SIO	lle lle fyset ti isie mynd	clause division	cym	monoW	a	3	1	3	3	f	1	2	b	4	4	4	4	3	3	o	(a31fb4o
Siarad	davies5	643	1	SIO	a lle fyset ti isie isie aros	clause division	cym	monoW	a	3	1	3	3	f	1	2	b	4	4	4	4	3	3	o	(a31fb4o
Siarad	davies5	650	1	SIO	yeah fysen ni gallu wneud	clause division	cym	monoW	a	3	1	3	3	f	1	2	b	4	4	4	4	3	3	o	(a31fb4o
Siarad	davies5	662	2	SIO	dw meddwl mynd abroad	\N	cym	monoW	a	3	1	3	3	f	1	2	b	4	4	4	4	3	3	o	(a31fb4o
Siarad	davies5	662	4	SIO	fasai yn well just achos bod o fel nabod ni de	\N	cym	monoW	a	3	1	3	3	f	1	2	b	4	4	4	4	3	3	o	(a31fb4o
Siarad	davies5	685	2	SIO	wyt ti wedi weld um Google_Earth	\N	cym	monoW	a	3	1	3	3	f	1	2	b	4	4	4	4	3	3	o	(a31fb4o
Siarad	davies5	687	1	SIO	mae hwnna yn	if repair follows then exclude this	cym	monoW	a	3	1	3	3	f	1	2	b	4	4	4	4	3	3	o	(a31fb4o
Siarad	davies5	691	1	SIO	mae o yn dda	\N	cym	monoW	a	3	1	3	3	f	1	2	b	4	4	4	4	3	3	o	(a31fb4o
Siarad	davies5	691	2	SIO	yndy	\N	cym	monoW	a	3	1	3	3	f	1	2	b	4	4	4	4	3	3	o	(a31fb4o
Siarad	davies5	959	1	SIO	wyt ti wedi gyrru fo i_fewn	\N	cym	monoW	a	3	1	3	3	f	1	2	b	4	4	4	4	3	3	o	(a31fb4o
Siarad	davies5	961	1	SIO	be ydy yr um	\N	cym	monoW	a	3	1	3	3	f	1	2	b	4	4	4	4	3	3	o	(a31fb4o
Siarad	davies10	321	1	HIL	nag oes	\N	cym	monoW	a	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(a13bb1b
Siarad	davies5	963	1	SIO	er yndy iawn o_k iawn	\N	cym	monoW	a	3	1	3	3	f	1	2	b	4	4	4	4	3	3	o	(a31fb4o
Siarad	davies5	964	1	SIO	be ydy yr deadline	\N	cym	monoW	a	3	1	3	3	f	1	2	b	4	4	4	4	3	3	o	(a31fb4o
Siarad	davies5	969	1	SIO	yndy pob blwyddyn	\N	cym	monoW	a	3	1	3	3	f	1	2	b	4	4	4	4	3	3	o	(a31fb4o
Siarad	davies5	976	1	SIO	iawn yndy	\N	cym	monoW	a	3	1	3	3	f	1	2	b	4	4	4	4	3	3	o	(a31fb4o
Siarad	davies5	996	1	SIO	pa blwyddyn ydy dy um dy dy brawd	\N	cym	monoW	a	3	1	3	3	f	1	2	b	4	4	4	4	3	3	o	(a31fb4o
Siarad	davies5	1008	1	SIO	oedd	\N	cym	monoW	a	3	1	3	3	f	1	2	b	4	4	4	4	3	3	o	(a31fb4o
Siarad	davies5	1014	1	SIO	oh yndy	\N	cym	monoW	a	3	1	3	3	f	1	2	b	4	4	4	4	3	3	o	(a31fb4o
Siarad	stammers9	174	2	ENF	oes yna dipyn o flodau yr gwanwyn o_gwmpas 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers9	176	1	ENF	doedd yna ddim nag 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers9	176	2	ENF	oedd bythefnos yn_ôl 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers9	177	1	RNW	nag oedd nag 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers9	180	1	ENF	well i weld os ydy yr gwanwyn yn llawer cynharach nag 	non-finite	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers9	180	3	ENF	oedd o yn_de 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers9	183	1	RNW	wyt ti isio mynd i_fyny cyn_belled â Cefn_Ffynnon 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers9	184	1	ENF	oes gobeithio 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers9	184	2	ENF	neu fydd i gael gweld i_fyny yr top yn_de 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers9	188	1	ENF	a wedyn mae modd gweld yr um 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers9	188	2	ENF	mae modd gweld y y blodau 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers9	189	1	ENF	mae nhw er wedi dod allan yn yr haul 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers9	189	2	ENF	mae sure de 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers9	190	1	ENF	fydd llygad Ebrill ac amryw o rei eraill wedi dŵad de tibod 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers9	198	1	RNW	well mae trip Merched_y_Wawr yn mynd yn mis Mehefin 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers9	198	2	RNW	a gobeithio mynd i weld cartre Kate_Roberts 	non-finite	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers9	211	1	RNW	dw i meddwl mis Ebrill 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers9	214	1	RNW	bydd 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser11	1178	1	BED	oh oh dw innau	not sure if we count this as finite	cym	monoW	a	1	3	1	1	b	2	0	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser11	1178	2	BED	does gyn i ddim_byd i ddeud wrth rheiny yn_de	\N	cym	monoW	a	1	3	1	1	b	2	0	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser11	1186	1	BED	well yr un un peth sy yna de	\N	cym	monoW	a	1	3	1	1	b	2	0	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	davies7	133	1	GAI	dw ddim yn gwybod	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	4	1	d	(a12ba1d
Siarad	davies7	135	1	GAI	achos ges i party	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	4	1	d	(a12ba1d
Siarad	davies7	135	2	GAI	lle oedd Adam	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	4	1	d	(a12ba1d
Siarad	davies7	136	1	GAI	ond dw i heb gweld y rei eraill ers fath â diwedd T_G_A_U so	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	4	1	d	(a12ba1d
Siarad	davies7	138	1	GAI	mae nhw gyd yn Maes_B	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	4	1	d	(a12ba1d
Siarad	davies7	143	1	GAI	mae Martha yn cael ar y un_deg_saith de	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	4	1	d	(a12ba1d
Siarad	davies7	147	1	GAI	ond mae ffrindiau fi	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	4	1	d	(a12ba1d
Siarad	davies7	147	2	GAI	mae rhei o nhw ar gwyliau	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	4	1	d	(a12ba1d
Siarad	davies7	148	1	GAI	so mae nhw gorod cael ffacsio fo neu just disgwyl neu cael rywun arall i nôl nhw	clause division	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	4	1	d	(a12ba1d
Siarad	davies7	157	1	GAI	a wedyn ti cael maths	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	4	1	d	(a12ba1d
Siarad	davies7	162	1	GAI	so dw ddim yn gwybod	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	4	1	d	(a12ba1d
Siarad	stammers9	216	1	RNW	yndw 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers9	216	2	RNW	dw yn hoffi yn arw 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers9	334	1	RNW	yndy 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers9	334	2	RNW	yndy debyg iawn 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers9	336	1	RNW	yndy 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers9	344	1	RNW	oedd 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers9	345	1	ENF	ai dau gan mlynedd a hanner oedd o o geni um 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers9	348	1	ENF	ia dw meddwl de 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers9	352	1	RNW	a lluniau da iawn o yr pontydd mae o wedi adeiladu 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers9	353	1	ENF	oedd er 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers9	353	2	ENF	oedd mmm 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers9	354	1	ENF	ac oedd o yn medru cadw diddordeb um cynulleidfa am awr a hanner 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers9	355	1	ENF	a mae hynny yn rywbeth eitha prin 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers9	355	2	ENF	dw feddwl eitha anodd i wneud 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers9	356	1	RNW	yndy 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers9	359	1	RNW	yndy 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers9	360	1	ENF	a hyd_yn_oed fyswn i 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers9	360	2	ENF	wedi medru gwrando arno fo yn hirach 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers9	361	1	RNW	ia oedd o yn dda iawn 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers9	361	3	RNW	oedd 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers9	363	1	ENF	oedd 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers9	363	2	ENF	oedd mi 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers9	363	3	ENF	oedd o yn dda 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers9	364	1	ENF	oedd o yn um bleser gwrando arno fo 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers9	364	2	ENF	deud y gwir yn_doedd 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers9	365	1	RNW	oedd 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers9	366	1	ENF	oh dw isio mynd i gerdded dipyn bach mwy rŵan hefyd 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	davies7	248	1	GAI	a faint sy ar_ôl ar y noson ola	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	4	1	d	(a12ba1d
Siarad	davies7	255	1	GAI	pwy ti meddwl	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	4	1	d	(a12ba1d
Siarad	davies7	255	2	GAI	eith nôl fewn	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	4	1	d	(a12ba1d
Siarad	davies7	261	1	GAI	ydy hi yn gallu mynd nôl fewn	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	4	1	d	(a12ba1d
Siarad	davies7	291	1	GAI	ond dw heb weld o ers mor hir de	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	4	1	d	(a12ba1d
Siarad	davies7	302	1	GAI	neu os ydy o yn bod yn gysetlyd	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	4	1	d	(a12ba1d
Siarad	davies7	304	1	GAI	achos mae o mor boblogaidd	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	4	1	d	(a12ba1d
Siarad	davies7	304	2	GAI	mae o meddwl bod o mynd i ennill	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	4	1	d	(a12ba1d
Siarad	davies7	306	1	GAI	so dydy o ddim yn wneud dim_byd a wedyn	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	4	1	d	(a12ba1d
Siarad	davies7	361	1	GAI	fasa chdi meddwl	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	4	1	d	(a12ba1d
Siarad	davies7	361	2	GAI	basai fo ddim yn cael a achos ffordd	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	4	1	d	(a12ba1d
Siarad	stammers9	366	3	ENF	os fydd yna amser 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers9	367	1	ENF	baswn i hoffi 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers9	368	1	RNW	ia mae o yn dda iawn i eich iechyd chi cerdded 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers9	374	1	RNW	ia mae yna le da iawn i gerdded yma ar_hyd lan y môr yn_does 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers9	518	1	ENF	oes 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers9	521	1	RNW	ella wna i pnawn yma gan bod hi yn braf 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers9	522	1	ENF	yeah mae yn braf yndy ac yn sych	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers9	523	1	RNW	yndy 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers9	524	1	RNW	ydy 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers9	525	1	ENF	oh well fyset ti wedi gwneud wedyn 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers9	525	3	ENF	byset 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers9	527	1	ENF	wnei di ddim gwerthu dy gar wan 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers9	532	1	ENF	fydd raid ti benderfynu yn_bydd erbyn dydd Llun 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers9	533	1	RNW	well dw i ddim yn gwybod 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers9	533	2	RNW	be wna i 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers9	538	1	ENF	well dw i ddim yn gwybod 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers9	539	1	ENF	gawn ni fynd i yr shop llyfrau Gymraeg er dydd Llun 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers9	540	1	RNW	cawn 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers9	542	1	RNW	cawn 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers9	542	2	RNW	dan ni isio prynu ychydig o gardiau Cymraeg 	contains non-finite subordinate clause starting with prynu	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers9	543	1	ENF	oes gynnot ti isio 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers9	545	1	ENF	dw i ddim yn meddwl bod gynna isio prynu llyfr a deud y gwir  	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers9	547	1	ENF	um ga i fenthyg nhw yn y llyfrgell rhein rŵan 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers9	547	2	ENF	caf 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers9	556	1	RNW	ydw 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers9	557	1	RNW	mae o yn 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers9	559	1	RNW	do mae o yn dda iawn 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	davies10	365	1	CLE	oedden ni yn cerdded i_fyny i yr ysgol	\N	cym	monoW	a	1	2	1	1	b	2	2	c	1	1	1	1	1	1	b	(a12bc1b
Siarad	davies10	367	1	CLE	a ar ochr dde um fyddai gynno gaseg frown yno	\N	cym	monoW	a	1	2	1	1	b	2	2	c	1	1	1	1	1	1	b	(a12bc1b
Siarad	davies10	368	1	CLE	oedd o yn mynd pony a trap	\N	cym	monoW	a	1	2	1	1	b	2	2	c	1	1	1	1	1	1	b	(a12bc1b
Siarad	davies10	371	1	CLE	oedd o yn cario moch a ballu	\N	cym	monoW	a	1	2	1	1	b	2	2	c	1	1	1	1	1	1	b	(a12bc1b
Siarad	davies7	361	3	GAI	mae siarad Saesneg	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	4	1	d	(a12ba1d
Siarad	davies7	364	1	GAI	oedd o fath â siarad Cymraeg	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	4	1	d	(a12ba1d
Siarad	davies7	379	1	GAI	na dw ddim cofio	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	4	1	d	(a12ba1d
Siarad	davies7	395	1	GAI	paid â roi llaw chdi ar mic	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	4	1	d	(a12ba1d
Siarad	davies7	426	1	GAI	ond er o'n i meddwl bod y rei ifanc yn dechrau wsnos fel arfer fath â	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	4	1	d	(a12ba1d
Siarad	davies7	436	1	GAI	ddo i weld chdi	non-finite	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	4	1	d	(a12ba1d
Siarad	davies7	436	2	GAI	os dw gallu	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	4	1	d	(a12ba1d
Siarad	davies10	373	1	CLE	byddai ryw	\N	cym	monoW	a	1	2	1	1	b	2	2	c	1	1	1	1	1	1	b	(a12bc1b
Siarad	davies10	373	2	CLE	byddai ryw fusiness felly gen ei daid o	\N	cym	monoW	a	1	2	1	1	b	2	2	c	1	1	1	1	1	1	b	(a12bc1b
Siarad	davies10	382	1	CLE	Terry_Prys oedd er tad Emma Tyddyn_Drain	\N	cym	monoW	a	1	2	1	1	b	2	2	c	1	1	1	1	1	1	b	(a12bc1b
Siarad	davies3	695	2	TOS	pan ges i o	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	davies10	405	1	CLE	oedd	\N	cym	monoW	a	1	2	1	1	b	2	2	c	1	1	1	1	1	1	b	(a12bc1b
Siarad	davies10	411	1	CLE	oedd	\N	cym	monoW	a	1	2	1	1	b	2	2	c	1	1	1	1	1	1	b	(a12bc1b
Siarad	davies10	715	1	CLE	oh dw i ddim wedi bod yna ers ugain mlynedd Michael	\N	cym	monoW	a	1	2	1	1	b	2	2	c	1	1	1	1	1	1	b	(a12bc1b
Siarad	davies10	718	1	CLE	dw i yn cofio crew o hogiau rugby	\N	cym	monoW	a	1	2	1	1	b	2	2	c	1	1	1	1	1	1	b	(a12bc1b
Siarad	davies10	721	1	CLE	a oedd gen i bity dros pwy bynnag	\N	cym	monoW	a	1	2	1	1	b	2	2	c	1	1	1	1	1	1	b	(a12bc1b
Siarad	davies10	721	2	CLE	oedd yn rhedeg y stondin er	\N	cym	monoW	a	1	2	1	1	b	2	2	c	1	1	1	1	1	1	b	(a12bc1b
Siarad	davies10	722	1	CLE	dw i yn dal i bitio de	\N	cym	monoW	a	1	2	1	1	b	2	2	c	1	1	1	1	1	1	b	(a12bc1b
Siarad	davies10	748	1	CLE	oedd yeah	\N	cym	monoW	a	1	2	1	1	b	2	2	c	1	1	1	1	1	1	b	(a12bc1b
Siarad	davies10	766	1	CLE	wn i ddim	\N	cym	monoW	a	1	2	1	1	b	2	2	c	1	1	1	1	1	1	b	(a12bc1b
Siarad	davies10	766	2	CLE	be sy yna ar_ôl o stondinau rŵan de	\N	cym	monoW	a	1	2	1	1	b	2	2	c	1	1	1	1	1	1	b	(a12bc1b
Siarad	davies10	772	1	CLE	ydy plant cael i_fewn	\N	cym	monoW	a	1	2	1	1	b	2	2	c	1	1	1	1	1	1	b	(a12bc1b
Siarad	davies10	774	1	CLE	do do sale oedd gynt	gloss should show past?	cym	monoW	a	1	2	1	1	b	2	2	c	1	1	1	1	1	1	b	(a12bc1b
Siarad	davies10	774	3	CLE	oedd	\N	cym	monoW	a	1	2	1	1	b	2	2	c	1	1	1	1	1	1	b	(a12bc1b
Siarad	davies10	774	4	CLE	oedd	\N	cym	monoW	a	1	2	1	1	b	2	2	c	1	1	1	1	1	1	b	(a12bc1b
Siarad	davies10	775	1	CLE	dydy plant acw erioed wedi bod yno de	\N	cym	monoW	a	1	2	1	1	b	2	2	c	1	1	1	1	1	1	b	(a12bc1b
Siarad	davies10	781	1	CLE	naddo erioed	\N	cym	monoW	a	1	2	1	1	b	2	2	c	1	1	1	1	1	1	b	(a12bc1b
Siarad	davies3	699	1	TOS	ond dydy yr safon sŵn ddim yn dda arno fo	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	davies10	1112	1	CLE	mae	\N	cym	monoW	a	1	2	1	1	b	2	2	c	1	1	1	1	1	1	b	(a12bc1b
Siarad	davies10	1112	2	CLE	dw i yn edrych ymlaen am hwnnw	\N	cym	monoW	a	1	2	1	1	b	2	2	c	1	1	1	1	1	1	b	(a12bc1b
Siarad	davies10	1114	1	CLE	oh bydd	\N	cym	monoW	a	1	2	1	1	b	2	2	c	1	1	1	1	1	1	b	(a12bc1b
Siarad	davies10	1116	1	CLE	basai	\N	cym	monoW	a	1	2	1	1	b	2	2	c	1	1	1	1	1	1	b	(a12bc1b
Siarad	davies10	1118	1	CLE	basai	\N	cym	monoW	a	1	2	1	1	b	2	2	c	1	1	1	1	1	1	b	(a12bc1b
Siarad	davies10	1119	1	CLE	wythnos nesa wan dan ni	\N	cym	monoW	a	1	2	1	1	b	2	2	c	1	1	1	1	1	1	b	(a12bc1b
Siarad	davies10	1119	2	CLE	fydd raid ni drafod o	\N	cym	monoW	a	1	2	1	1	b	2	2	c	1	1	1	1	1	1	b	(a12bc1b
Siarad	davies10	1126	1	CLE	oh fydd hi yn amhosib fel arall de	\N	cym	monoW	a	1	2	1	1	b	2	2	c	1	1	1	1	1	1	b	(a12bc1b
Siarad	davies10	1129	1	CLE	neu mi fydd hi yn ddechrau blwyddyn	\N	cym	monoW	a	1	2	1	1	b	2	2	c	1	1	1	1	1	1	b	(a12bc1b
Siarad	davies10	1129	2	CLE	bydd	\N	cym	monoW	a	1	2	1	1	b	2	2	c	1	1	1	1	1	1	b	(a12bc1b
Siarad	davies10	1140	1	CLE	na mi fydd Edna	\N	cym	monoW	a	1	2	1	1	b	2	2	c	1	1	1	1	1	1	b	(a12bc1b
Siarad	davies10	1141	1	CLE	dw i yn sure bod hi yn	\N	cym	monoW	a	1	2	1	1	b	2	2	c	1	1	1	1	1	1	b	(a12bc1b
Siarad	davies10	1143	1	CLE	fydd hi isio	\N	cym	monoW	a	1	2	1	1	b	2	2	c	1	1	1	1	1	1	b	(a12bc1b
Siarad	davies3	221	1	TOS	oedd	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	davies3	221	2	TOS	oedd Kevin_Davies yn deud	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	davies3	222	1	TOS	oh mae yna llawer gormod o o pobl yn darllen Women's_Weekly	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	davies3	223	1	TOS	wnes i text_io nôl mewn yn deud	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	davies3	224	1	TOS	na dw i ddim yn darllen Women's_Weekly	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	davies3	227	1	TOS	wnaeth um Kevin Kevin newid o round bod fi yn darllen o bob wythnos	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	davies3	230	1	TOS	dw edrych ymlaen i fynd i yr	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	davies3	234	1	TOS	basai hwnna laugh	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	davies3	236	3	TOS	dw isio wneud fath â	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	davies3	238	1	TOS	basai yn cool fath â just gweithio fath â	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	davies7	438	1	GAI	oedd o yn y cyfarfod E_Bay	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	4	1	d	(a12ba1d
Siarad	davies7	440	2	GAI	gei di wneud o	non-finite	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	4	1	d	(a12ba1d
Siarad	davies7	442	1	GAI	achos dw ddim isio	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	4	1	d	(a12ba1d
Siarad	fusser22	242	1	WYN	er fesul tŷ neu fesul ton daw y modd i dir Meirion	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	4	1	1	d	(a13ba1d
Siarad	fusser22	245	1	WYN	dw i wedi cael hyd i honno hefyd	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	4	1	1	d	(a13ba1d
Siarad	fusser22	246	2	WYN	mae o am fwy o lawer na hynny de	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	4	1	1	d	(a13ba1d
Siarad	fusser22	248	1	WYN	dan ni meddwl bod hi	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	4	1	1	d	(a13ba1d
Siarad	fusser22	248	3	WYN	yndy	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	4	1	1	d	(a13ba1d
Siarad	fusser22	253	1	WYN	well ella fydd raid mynd i nôl nhw dydd Llun	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	4	1	1	d	(a13ba1d
Siarad	fusser22	255	1	WYN	byddan	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	4	1	1	d	(a13ba1d
Siarad	fusser22	255	2	WYN	byddan	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	4	1	1	d	(a13ba1d
Siarad	davies10	1143	2	CLE	fydd hi isio cael	\N	cym	monoW	a	1	2	1	1	b	2	2	c	1	1	1	1	1	1	b	(a12bc1b
Siarad	davies3	239	1	TOS	baswn i ddim yn meindio	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	davies3	442	1	TOS	a wedyn wnes i ddim boddro wedyn efo yr un arall	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	davies3	446	2	TOS	mae nhw yn dysgu chdi	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	davies3	448	1	TOS	right hwyl dw meddwl	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	davies3	449	2	TOS	mae yr plant	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	davies3	449	3	TOS	sy yn wneud o leni a llynedd	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	davies3	449	4	TOS	nhw wedi mwynhau wneud yr cyfansoddiadau a pethau yn fawr fath â	not sure if we count this as finite	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	davies3	453	1	TOS	oedd o yn gwybod hynny ei hun hefyd de	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	davies3	456	2	TOS	be wnaeth o alw fo	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	davies3	456	3	TOS	oedd Fanfare_Brilliant rywbeth stupid fel yna	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	davies3	461	1	TOS	baswn i ddim wedi meindio cymryd cerdd	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	davies3	466	1	TOS	yndy ond ar_ôl ychydig ti yn laru efo yr offeryn ti fath â	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	davies3	470	1	TOS	wnes i gychwyn chwarae drums wedyn	clause division	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	davies3	674	1	TOS	a mae fath â ti gallu	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	davies3	674	3	TOS	mae yr fath â offer	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	davies3	674	4	TOS	mae yr ysgol yn gael	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	davies3	674	5	TOS	mae nhw right rhad hefyd	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	davies3	676	1	TOS	ond be dw isio	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	davies3	676	2	TOS	ydy gael pethau fel yna adre	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	davies3	678	1	TOS	achos basai cool wneud hynny achos cael yr holl tools adre	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	davies3	686	2	TOS	basai hynna yn	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	davies3	690	1	HAR	dw ddim yn cael y cyfle roid o fyny ddim mwy	clause division	cym	monoW	a	2	3	1	1	b	2	2	c	1	1	1	4	1	1	d	(a23bc1d
Siarad	davies3	692	1	HAR	mae yn gallu mynd at pedwar_deg_pump decibel	\N	cym	monoW	a	2	3	1	1	b	2	2	c	1	1	1	4	1	1	d	(a23bc1d
Siarad	davies3	186	1	HAR	achos pob_dim yn mynd	\N	cym	monoW	a	2	3	1	1	b	2	2	c	1	1	1	4	1	1	d	(a23bc1d
Siarad	davies3	186	2	HAR	mae pob_dim	\N	cym	monoW	a	2	3	1	1	b	2	2	c	1	1	1	4	1	1	d	(a23bc1d
Siarad	davies3	189	1	HAR	yndy	\N	cym	monoW	a	2	3	1	1	b	2	2	c	1	1	1	4	1	1	d	(a23bc1d
Siarad	davies3	200	1	HAR	be sy yn dda efo Tesco de	clause division	cym	monoW	a	2	3	1	1	b	2	2	c	1	1	1	4	1	1	d	(a23bc1d
Siarad	davies3	200	2	HAR	dech chi yn dewis	h	cym	monoW	a	2	3	1	1	b	2	2	c	1	1	1	4	1	1	d	(a23bc1d
Siarad	davies3	200	3	HAR	pa rei ydy tri ffrind gorau de	\N	cym	monoW	a	2	3	1	1	b	2	2	c	1	1	1	4	1	1	d	(a23bc1d
Siarad	davies3	202	1	HAR	elli di wneud Radio_Cymru neu beth bynnag	\N	cym	monoW	a	2	3	1	1	b	2	2	c	1	1	1	4	1	1	d	(a23bc1d
Siarad	fusser22	260	1	WYN	paid ti â gwneud hynna eto	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	4	1	1	d	(a13ba1d
Siarad	fusser22	260	4	WYN	neu wna i grio	non-finite	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	4	1	1	d	(a13ba1d
Siarad	fusser22	266	1	WYN	yeah um oes	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	4	1	1	d	(a13ba1d
Siarad	fusser22	266	3	WYN	mae gynnon ni project yr um Peter_Phillips efo yr gwasanaeth er er henoed gwasanaeth cymdeithasol	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	4	1	1	d	(a13ba1d
Siarad	fusser13	1219	1	BEI	nac ydyn	\N	cym	monoW	a	1	3	1	0	a	1	3	c	1	1	1	1	1	1	b	(a13ac1b
Siarad	davies3	203	1	HAR	elli di just text_io Radio_Cymru bump ceiniog wedyn de	\N	cym	monoW	a	2	3	1	1	b	2	2	c	1	1	1	4	1	1	d	(a23bc1d
Siarad	davies3	235	1	HAR	basen	\N	cym	monoW	a	2	3	1	1	b	2	2	c	1	1	1	4	1	1	d	(a23bc1d
Siarad	davies3	235	2	HAR	basen nhw wneud gyrfa	\N	cym	monoW	a	2	3	1	1	b	2	2	c	1	1	1	4	1	1	d	(a23bc1d
Siarad	davies3	235	3	HAR	dw isio	\N	cym	monoW	a	2	3	1	1	b	2	2	c	1	1	1	4	1	1	d	(a23bc1d
Siarad	davies3	235	4	HAR	pan dw i tyfu fyny de fath â recording studio neu d_j neu rywbeth neu	\N	cym	monoW	a	2	3	1	1	b	2	2	c	1	1	1	4	1	1	d	(a23bc1d
Siarad	davies3	241	1	HAR	achos o'n i yn gweld um yn y Galeri ddoe	\N	cym	monoW	a	2	3	1	1	b	2	2	c	1	1	1	4	1	1	d	(a23bc1d
Siarad	davies3	241	2	HAR	oedd	\N	cym	monoW	a	2	3	1	1	b	2	2	c	1	1	1	4	1	1	d	(a23bc1d
Siarad	davies3	241	3	HAR	just oedd ddynes yma yr unig beth	\N	cym	monoW	a	2	3	1	1	b	2	2	c	1	1	1	4	1	1	d	(a23bc1d
Siarad	davies3	241	4	HAR	oedd wneud de newid y golau de a	\N	cym	monoW	a	2	3	1	1	b	2	2	c	1	1	1	4	1	1	d	(a23bc1d
Siarad	davies3	241	5	HAR	just eistedd yna am weddill yn darllen papur	\N	cym	monoW	a	2	3	1	1	b	2	2	c	1	1	1	4	1	1	d	(a23bc1d
Siarad	davies3	252	1	HAR	baswn i ddim meindio yn athro hefyd de	\N	cym	monoW	a	2	3	1	1	b	2	2	c	1	1	1	4	1	1	d	(a23bc1d
Siarad	davies3	266	1	HAR	just dan ni bod yn paratoi ers ryw dri tri wythnos wan de	\N	cym	monoW	a	2	3	1	1	b	2	2	c	1	1	1	4	1	1	d	(a23bc1d
Siarad	davies3	435	1	HAR	bity baswn i yn gallu wneud um arholiad rywbryd i brofi pa mor dda	\N	cym	monoW	a	2	3	1	1	b	2	2	c	1	1	1	4	1	1	d	(a23bc1d
Siarad	davies3	435	2	HAR	ydw i de	clause division	cym	monoW	a	2	3	1	1	b	2	2	c	1	1	1	4	1	1	d	(a23bc1d
Siarad	davies3	444	1	HAR	achos dw isio pam	\N	cym	monoW	a	2	3	1	1	b	2	2	c	1	1	1	4	1	1	d	(a23bc1d
Siarad	davies3	444	2	HAR	dw isio wneud cerdd de um T_G_A_U	\N	cym	monoW	a	2	3	1	1	b	2	2	c	1	1	1	4	1	1	d	(a23bc1d
Siarad	davies3	445	1	HAR	dw ddim yn gwybod	\N	cym	monoW	a	2	3	1	1	b	2	2	c	1	1	1	4	1	1	d	(a23bc1d
Siarad	davies3	445	4	HAR	dach chi angen bod yn chwarae yr piano yn dda neu rywbeth	\N	cym	monoW	a	2	3	1	1	b	2	2	c	1	1	1	4	1	1	d	(a23bc1d
Siarad	davies3	447	1	HAR	ydyn	\N	cym	monoW	a	2	3	1	1	b	2	2	c	1	1	1	4	1	1	d	(a23bc1d
Siarad	davies3	451	2	HAR	dach chi yn meddwl am rywbeth yn ystod y dydd a just sgwennu fo lawr de	\N	cym	monoW	a	2	3	1	1	b	2	2	c	1	1	1	4	1	1	d	(a23bc1d
Siarad	davies3	465	1	HAR	ond mae pob_dim efo cerddoriaeth yn eitha cymdeithasol pob_dim	\N	cym	monoW	a	2	3	1	1	b	2	2	c	1	1	1	4	1	1	d	(a23bc1d
Siarad	davies3	473	1	HAR	basai yn dda chi yn gallu wneud pethau gwahanol weithiau de hefo um	\N	cym	monoW	a	2	3	1	1	b	2	2	c	1	1	1	4	1	1	d	(a23bc1d
Siarad	davies3	474	2	HAR	dw ddim yn gallu bod yn sicr iawn achos bod yn athro newydd pob_dim de	clause division	cym	monoW	a	2	3	1	1	b	2	2	c	1	1	1	4	1	1	d	(a23bc1d
Siarad	davies3	662	1	HAR	ond dach chi methu wneud pob_dim ar unwaith nac ydach	clause division	cym	monoW	a	2	3	1	1	b	2	2	c	1	1	1	4	1	1	d	(a23bc1d
Siarad	davies3	664	1	HAR	dw yn clywed plant eraill yn wneud pethau ar_ôl ysgol pethau	\N	cym	monoW	a	2	3	1	1	b	2	2	c	1	1	1	4	1	1	d	(a23bc1d
Siarad	davies3	666	1	HAR	ond dw ddim yn gwybod yn y diwedd	\N	cym	monoW	a	2	3	1	1	b	2	2	c	1	1	1	4	1	1	d	(a23bc1d
Siarad	davies3	675	1	HAR	yndy	\N	cym	monoW	a	2	3	1	1	b	2	2	c	1	1	1	4	1	1	d	(a23bc1d
Siarad	fusser12	542	1	WEN	dw i ddim yn meddwl llawer am gael y momio gyn Iran right sure de	\N	cym	monoW	a	1	2	1	1	b	1	3	c	1	1	1	1	1	1	b	(a12bc1b
Siarad	fusser12	550	1	WEN	nac ydyn ni	\N	cym	monoW	a	1	2	1	1	b	1	3	c	1	1	1	1	1	1	b	(a12bc1b
Siarad	fusser12	551	1	WEN	dw i yn gwybod	\N	cym	monoW	a	1	2	1	1	b	1	3	c	1	1	1	1	1	1	b	(a12bc1b
Siarad	fusser12	552	1	WEN	mae hynny yn sobr	\N	cym	monoW	a	1	2	1	1	b	1	3	c	1	1	1	1	1	1	b	(a12bc1b
Siarad	fusser12	568	1	WEN	nac ydy oh nag	\N	cym	monoW	a	1	2	1	1	b	1	3	c	1	1	1	1	1	1	b	(a12bc1b
Siarad	fusser12	568	2	WEN	ydy na	\N	cym	monoW	a	1	2	1	1	b	1	3	c	1	1	1	1	1	1	b	(a12bc1b
Siarad	fusser12	571	1	WEN	na mae gyn Bush	\N	cym	monoW	a	1	2	1	1	b	1	3	c	1	1	1	1	1	1	b	(a12bc1b
Siarad	fusser12	573	1	WEN	mae sure bod gynno fo ryw dair blynedd ar_ôl wan	\N	cym	monoW	a	1	2	1	1	b	1	3	c	1	1	1	1	1	1	b	(a12bc1b
Siarad	fusser12	1639	2	WEN	na fysai yna bobl yn yn yn yn_te	\N	cym	monoW	a	1	2	1	1	b	1	3	c	1	1	1	1	1	1	b	(a12bc1b
Siarad	fusser12	1656	1	WEN	mae o yn annhegwch mawr	\N	cym	monoW	a	1	2	1	1	b	1	3	c	1	1	1	1	1	1	b	(a12bc1b
Siarad	fusser22	496	1	WYN	oedden nhw yn licio yr syniad	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	4	1	1	d	(a13ba1d
Siarad	fusser22	499	1	WYN	dw i yn gobeithio	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	4	1	1	d	(a13ba1d
Siarad	fusser22	499	2	WYN	fedran ni ddechrau hwnna right fuan	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	4	1	1	d	(a13ba1d
Siarad	fusser22	502	1	WYN	um so fyddan ni angen pobl i wneud hynna	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	4	1	1	d	(a13ba1d
Siarad	fusser22	504	1	WYN	ond mae Stan efo cysylltiadau	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	4	1	1	d	(a13ba1d
Siarad	stammers3	200	2	GUT	ydy siarad fel 	\N	cym	monoW	a	1	1	1	1	b	1	2	b	1	1	4	1	1	3	f	(a11bb1f
Siarad	fusser12	1656	2	WEN	dydy bod ni yn gorod talu fashion drethi a bod rhan fwya mynd ar bethau	\N	cym	monoW	a	1	2	1	1	b	1	3	c	1	1	1	1	1	1	b	(a12bc1b
Siarad	fusser12	1656	5	WEN	na dan ni ddim yn	\N	cym	monoW	a	1	2	1	1	b	1	3	c	1	1	1	1	1	1	b	(a12bc1b
Siarad	fusser12	1660	1	WEN	ti yn gweld	\N	cym	monoW	a	1	2	1	1	b	1	3	c	1	1	1	1	1	1	b	(a12bc1b
Siarad	fusser12	1660	2	WEN	mae hwnnw yn	\N	cym	monoW	a	1	2	1	1	b	1	3	c	1	1	1	1	1	1	b	(a12bc1b
Siarad	fusser12	1660	3	WEN	yndy	\N	cym	monoW	a	1	2	1	1	b	1	3	c	1	1	1	1	1	1	b	(a12bc1b
Siarad	fusser12	1660	4	WEN	mae o	\N	cym	monoW	a	1	2	1	1	b	1	3	c	1	1	1	1	1	1	b	(a12bc1b
Siarad	fusser13	378	1	CRI	a um aethon nhw nos Sadwrn dwytha i Tremadog i yr um	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser13	379	1	CRI	Sgwâr ydy enw	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser13	381	1	CRI	dw innau ryw amau	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers9	526	1	RNW	baswn mi 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser13	386	1	BEI	oh gaethon ni yr un fath yn yn Brynllydan	\N	cym	monoW	a	1	3	1	0	a	1	3	c	1	1	1	1	1	1	b	(a13ac1b
Siarad	fusser13	393	1	BEI	ac oedd yna grew o dod i_fyny sti	\N	cym	monoW	a	1	3	1	0	a	1	3	c	1	1	1	1	1	1	b	(a13ac1b
Siarad	fusser13	395	1	BEI	oedden ni wedi cael ein bwyd	\N	cym	monoW	a	1	3	1	0	a	1	3	c	1	1	1	1	1	1	b	(a13ac1b
Siarad	fusser13	396	1	BEI	a mi aeth y trydan allan	\N	cym	monoW	a	1	3	1	0	a	1	3	c	1	1	1	1	1	1	b	(a13ac1b
Siarad	fusser13	398	1	BEI	ond er o't ti yn gweld	\N	cym	monoW	a	1	3	1	0	a	1	3	c	1	1	1	1	1	1	b	(a13ac1b
Siarad	fusser13	385	1	CRI	yn anffodus newydd i nhw gyrraedd yna aeth y trydan i_ffwrdd	non-finite	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser13	391	1	CRI	oh dwn i ddim	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser13	398	2	BEI	oedd bwyd yn dŵad drwadd yn boeth hefyd de	\N	cym	monoW	a	1	3	1	0	a	1	3	c	1	1	1	1	1	1	b	(a13ac1b
Siarad	fusser13	403	1	CRI	ond oedd	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser13	403	3	CRI	oedd o yn er	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser13	403	4	CRI	ond oedd Hannah yn yn deud er	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser13	403	5	CRI	dw i meddwl na pork	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser13	403	6	CRI	oedd hi a ryw hogan arall wedi gael	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser13	404	2	CRI	oedd hwnnw yn tough	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser13	422	2	BEI	gaethon ni yr profiad o dalu efo cerdyn ar_ôl gorffen bwyta	\N	cym	monoW	a	1	3	1	0	a	1	3	c	1	1	1	1	1	1	b	(a13ac1b
Siarad	fusser13	763	1	BEI	a aethon ni yno am nos Sadwrn do	\N	cym	monoW	a	1	3	1	0	a	1	3	c	1	1	1	1	1	1	b	(a13ac1b
Siarad	fusser13	770	1	BEI	sut oedd pethau mynd	\N	cym	monoW	a	1	3	1	0	a	1	3	c	1	1	1	1	1	1	b	(a13ac1b
Siarad	fusser13	405	1	CRI	a wedyn um er wedyn oedd er	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser13	405	2	CRI	oedd o ddim yn llwyddiant de	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser13	406	1	CRI	na oedden nhw yn ofnadwy o hir yn gael o	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser13	407	1	CRI	a doedd o ddim yn llwyddiant	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser13	794	1	CRI	oeddwn i ddim yn gwybod un o	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser13	794	2	CRI	lle oedd Siân a deud gwir	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser31	180	1	ARF	ydy pobl yn licio nhw	\N	cym	monoW	a	1	2	1	1	b	1	3	c	1	4	1	1	1	1	d	(a12bc1d
Siarad	fusser31	187	1	ARF	well mae Iron_Maiden o_k	\N	cym	monoW	a	1	2	1	1	b	1	3	c	1	4	1	1	1	1	d	(a12bc1d
Siarad	fusser31	188	1	ARF	dw i wedi clywed nhw	\N	cym	monoW	a	1	2	1	1	b	1	3	c	1	4	1	1	1	1	d	(a12bc1d
Siarad	fusser31	189	1	ARF	mae nhw wedi cael hits dydyn	\N	cym	monoW	a	1	2	1	1	b	1	3	c	1	4	1	1	1	1	d	(a12bc1d
Siarad	fusser31	198	1	ARF	oh gwna rhestr hir	\N	cym	monoW	a	1	2	1	1	b	1	3	c	1	4	1	1	1	1	d	(a12bc1d
Siarad	fusser31	206	1	ARF	so pwy ydy	\N	cym	monoW	a	1	2	1	1	b	1	3	c	1	4	1	1	1	1	d	(a12bc1d
Siarad	fusser31	206	2	ARF	ydy yr un ti yn licio orau orau	\N	cym	monoW	a	1	2	1	1	b	1	3	c	1	4	1	1	1	1	d	(a12bc1d
Siarad	fusser31	207	1	ARF	oes gyn ti un	\N	cym	monoW	a	1	2	1	1	b	1	3	c	1	4	1	1	1	1	d	(a12bc1d
Siarad	fusser22	729	1	WYN	dw i wedi bwcio dwy noson	clause division	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	4	1	1	d	(a13ba1d
Siarad	fusser22	732	1	WYN	a felly dan ni mynd lawr i Caerdydd nos Wener	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	4	1	1	d	(a13ba1d
Siarad	fusser22	740	2	WYN	dan ni mynd i_fewn i Caerdydd	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	4	1	1	d	(a13ba1d
Siarad	fusser22	742	1	WYN	mae Sylvie Sylvie yn gwisgo crys rugby Ffrainc	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	4	1	1	d	(a13ba1d
Siarad	fusser22	748	1	WYN	a dan ni just yn mynd i gael yr er awyrgylch	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	4	1	1	d	(a13ba1d
Siarad	fusser31	214	1	ARF	achos ti yn chwarae guitar dwyt neu yn dysgu chwarae guitar	\N	cym	monoW	a	1	2	1	1	b	1	3	c	1	4	1	1	1	1	d	(a12bc1d
Siarad	fusser31	221	2	ARF	 ti yn ti yn gwybod sut i chwarae	\N	cym	monoW	a	1	2	1	1	b	1	3	c	1	4	1	1	1	1	d	(a12bc1d
Siarad	fusser31	221	4	ARF	a mae yn rhoi mwynhad i chdi	\N	cym	monoW	a	1	2	1	1	b	1	3	c	1	4	1	1	1	1	d	(a12bc1d
Siarad	fusser31	382	1	ARF	o_k so fysai fo yn trystio fo i	\N	cym	monoW	a	1	2	1	1	b	1	3	c	1	4	1	1	1	1	d	(a12bc1d
Siarad	fusser31	386	1	ARF	does yna ddim	\N	cym	monoW	a	1	2	1	1	b	1	3	c	1	4	1	1	1	1	d	(a12bc1d
Siarad	fusser31	386	2	ARF	gallwch chi ddim benthyg rywbeth rywle	\N	cym	monoW	a	1	2	1	1	b	1	3	c	1	4	1	1	1	1	d	(a12bc1d
Siarad	fusser31	388	1	ARF	does yna ddim rywun	\N	cym	monoW	a	1	2	1	1	b	1	3	c	1	4	1	1	1	1	d	(a12bc1d
Siarad	fusser31	388	2	ARF	dach chi nabod	\N	cym	monoW	a	1	2	1	1	b	1	3	c	1	4	1	1	1	1	d	(a12bc1d
Siarad	fusser31	388	3	ARF	fysech chi yn gallu benthyg bas gynno	clause division	cym	monoW	a	1	2	1	1	b	1	3	c	1	4	1	1	1	1	d	(a12bc1d
Siarad	fusser31	413	1	ARF	so be ydy yr gwahaniaeth	\N	cym	monoW	a	1	2	1	1	b	1	3	c	1	4	1	1	1	1	d	(a12bc1d
Siarad	fusser31	414	1	ARF	achos ti yn cael gwersi piano	\N	cym	monoW	a	1	2	1	1	b	1	3	c	1	4	1	1	1	1	d	(a12bc1d
Siarad	fusser31	415	1	ARF	mae gen ti ti fyny i gradd	\N	cym	monoW	a	1	2	1	1	b	1	3	c	1	4	1	1	1	1	d	(a12bc1d
Siarad	fusser31	421	1	ARF	a wedyn ti gael gwersi guitar sydd yn gweithio yn hollol wahanol	clause division	cym	monoW	a	1	2	1	1	b	1	3	c	1	4	1	1	1	1	d	(a12bc1d
Siarad	fusser31	421	3	ARF	dw yn cymryd	\N	cym	monoW	a	1	2	1	1	b	1	3	c	1	4	1	1	1	1	d	(a12bc1d
Siarad	fusser31	423	1	ARF	so be ydy yr gwahaniaethau	\N	cym	monoW	a	1	2	1	1	b	1	3	c	1	4	1	1	1	1	d	(a12bc1d
Siarad	fusser31	584	1	ARF	a mae chwarae mewn bands	\N	cym	monoW	a	1	2	1	1	b	1	3	c	1	4	1	1	1	1	d	(a12bc1d
Siarad	fusser12	540	1	WEN	ia well dydw i ddim yn meddwl llawer yn_de i ateb dy guestion di	\N	cym	monoW	a	1	2	1	1	b	1	3	c	1	1	1	1	1	1	b	(a12bc1b
Siarad	fusser13	813	1	BEI	yndy	\N	cym	monoW	a	1	3	1	0	a	1	3	c	1	1	1	1	1	1	b	(a13ac1b
Siarad	fusser13	814	1	BEI	Emlyn oedd hwnna	\N	cym	monoW	a	1	3	1	0	a	1	3	c	1	1	1	1	1	1	b	(a13ac1b
Siarad	fusser13	816	1	BEI	ddaw o heibio toc	\N	cym	monoW	a	1	3	1	0	a	1	3	c	1	1	1	1	1	1	b	(a13ac1b
Siarad	fusser13	820	1	BEI	oedd o isio mynd i yr Ffôr gynta i gael petrol	\N	cym	monoW	a	1	3	1	0	a	1	3	c	1	1	1	1	1	1	b	(a13ac1b
Siarad	fusser13	824	1	BEI	ddaw heibio wedyn	\N	cym	monoW	a	1	3	1	0	a	1	3	c	1	1	1	1	1	1	b	(a13ac1b
Siarad	fusser12	596	1	WEN	ond be sy wedi bod yn digwydd felly rywsut	\N	cym	monoW	a	1	2	1	1	b	1	3	c	1	1	1	1	1	1	b	(a12bc1b
Siarad	fusser12	597	2	WEN	dydw i ddim quite	\N	cym	monoW	a	1	2	1	1	b	1	3	c	1	1	1	1	1	1	b	(a12bc1b
Siarad	fusser12	1087	1	WEN	oh yndy bob_dim	\N	cym	monoW	a	1	2	1	1	b	1	3	c	1	1	1	1	1	1	b	(a12bc1b
Siarad	fusser12	1087	2	WEN	baswn i yn feddwl de	\N	cym	monoW	a	1	2	1	1	b	1	3	c	1	1	1	1	1	1	b	(a12bc1b
Siarad	fusser12	1093	1	WEN	ia well dw i meddwl na	\N	cym	monoW	a	1	2	1	1	b	1	3	c	1	1	1	1	1	1	b	(a12bc1b
Siarad	fusser12	1093	2	WEN	be oedd gynni hi gynnig	\N	cym	monoW	a	1	2	1	1	b	1	3	c	1	1	1	1	1	1	b	(a12bc1b
Siarad	fusser12	1093	3	WEN	oedd bod hi yn teimlo	\N	cym	monoW	a	1	2	1	1	b	1	3	c	1	1	1	1	1	1	b	(a12bc1b
Siarad	fusser12	1093	4	WEN	na ddylai fod o ddim yn option yn_de	\N	cym	monoW	a	1	2	1	1	b	1	3	c	1	1	1	1	1	1	b	(a12bc1b
Siarad	fusser12	1098	1	WEN	dw i ddim yn cofio	\N	cym	monoW	a	1	2	1	1	b	1	3	c	1	1	1	1	1	1	b	(a12bc1b
Siarad	fusser12	1103	1	WEN	na rywun sydd yn gweithio rŵan ryw ddynes	\N	cym	monoW	a	1	2	1	1	b	1	3	c	1	1	1	1	1	1	b	(a12bc1b
Siarad	fusser12	1106	1	WEN	oedd	\N	cym	monoW	a	1	2	1	1	b	1	3	c	1	1	1	1	1	1	b	(a12bc1b
Siarad	fusser13	856	1	CRI	na mae o right handy	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser13	856	2	CRI	dydy iddo fo er er cael sbario dod â ryw flask o o de neu goffee neu rywbeth efo fo ryw bethau felly	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers5	245	2	RHO	pan maen nhw yna felly 	\N	cym	monoW	a	1	1	1	1	b	1	3	c	1	1	1	4	1	1	d	(a11bc1d
Siarad	stammers5	251	1	RHO	dydy yr ysgol i_gyd ddim yn perfformio nac ydy	\N	cym	monoW	a	1	1	1	1	b	1	3	c	1	1	1	4	1	1	d	(a11bc1d
Siarad	stammers5	268	1	RHO	mae hynna wael 	\N	cym	monoW	a	1	1	1	1	b	1	3	c	1	1	1	4	1	1	d	(a11bc1d
Siarad	stammers5	274	1	RHO	mae sure 	\N	cym	monoW	a	1	1	1	1	b	1	3	c	1	1	1	4	1	1	d	(a11bc1d
Siarad	fusser12	1120	1	WEN	na yn union fysen nhw ddim sti	\N	cym	monoW	a	1	2	1	1	b	1	3	c	1	1	1	1	1	1	b	(a12bc1b
Siarad	fusser12	1123	1	WEN	ond am ryw reswm mae nhw yn teimlo ti yn gweld bod bod ni uwchlaw de	clause division	cym	monoW	a	1	2	1	1	b	1	3	c	1	1	1	1	1	1	b	(a12bc1b
Siarad	fusser22	760	1	WYN	gwesty teulu ond gwesty um er er sports ydy o	non-finite	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	4	1	1	d	(a13ba1d
Siarad	fusser3	240	1	BEC	a mae hi yn licio math yna o gerddoriaeth neu beth bynnag	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	4	1	1	1	1	d	(a11ba1d
Siarad	fusser3	242	1	BEC	a wedyn ond oedd hi yn deud bod hi wedi mwynhau nhw hefyd	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	4	1	1	1	1	d	(a11ba1d
Siarad	fusser3	244	1	BEC	mae yn great	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	4	1	1	1	1	d	(a11ba1d
Siarad	fusser3	246	1	BEC	na mae sure yeah	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	4	1	1	1	1	d	(a11ba1d
Siarad	fusser3	253	1	BEC	oh oedd	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	4	1	1	1	1	d	(a11ba1d
Siarad	fusser3	264	1	BEC	be dw i ddim yn cofio	clause division	cym	monoW	a	1	1	1	1	b	1	1	a	1	4	1	1	1	1	d	(a11ba1d
Siarad	fusser3	264	2	BEC	be arall wnaethon ni	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	4	1	1	1	1	d	(a11ba1d
Siarad	fusser3	266	1	BEC	ia mae sure	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	4	1	1	1	1	d	(a11ba1d
Siarad	davies16	270	1	ADA	wnest ti saethu yr boy	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	4	4	1	g	(a12ba1g
Siarad	fusser12	1126	1	WEN	yndyn yn union	\N	cym	monoW	a	1	2	1	1	b	1	3	c	1	1	1	1	1	1	b	(a12bc1b
Siarad	fusser12	1126	2	WEN	yndyn	\N	cym	monoW	a	1	2	1	1	b	1	3	c	1	1	1	1	1	1	b	(a12bc1b
Siarad	fusser12	1127	1	WEN	yndyn yn union	\N	cym	monoW	a	1	2	1	1	b	1	3	c	1	1	1	1	1	1	b	(a12bc1b
Siarad	fusser12	1130	2	WEN	mi wneith ci yn aml fynd i_ffwrdd	\N	cym	monoW	a	1	2	1	1	b	1	3	c	1	1	1	1	1	1	b	(a12bc1b
Siarad	fusser12	1130	4	WEN	gwneith i i farw	\N	cym	monoW	a	1	2	1	1	b	1	3	c	1	1	1	1	1	1	b	(a12bc1b
Siarad	fusser12	1130	5	WEN	pan mae o mor sâl â hynna yn_de	\N	cym	monoW	a	1	2	1	1	b	1	3	c	1	1	1	1	1	1	b	(a12bc1b
Siarad	fusser12	1636	1	WEN	yndy	\N	cym	monoW	a	1	2	1	1	b	1	3	c	1	1	1	1	1	1	b	(a12bc1b
Siarad	fusser12	1638	1	WEN	ydy	\N	cym	monoW	a	1	2	1	1	b	1	3	c	1	1	1	1	1	1	b	(a12bc1b
Siarad	fusser12	1639	1	WEN	mae bity	\N	cym	monoW	a	1	2	1	1	b	1	3	c	1	1	1	1	1	1	b	(a12bc1b
Siarad	stammers5	277	1	RHO	na mae yn sure na 	all one clause?	cym	monoW	a	1	1	1	1	b	1	3	c	1	1	1	4	1	1	d	(a11bc1d
Siarad	stammers5	284	2	RHO	fi yn deud wrth 	all one clause?	cym	monoW	a	1	1	1	1	b	1	3	c	1	1	1	4	1	1	d	(a11bc1d
Siarad	stammers5	291	1	RHO	well mae sure bod yna dipyn yn gweithio shifts 	\N	cym	monoW	a	1	1	1	1	b	1	3	c	1	1	1	4	1	1	d	(a11bc1d
Siarad	stammers5	293	1	RHO	yeah ond tydy ddim yn hawdd swopio shift o_hyd nag 	\N	cym	monoW	a	1	1	1	1	b	1	3	c	1	1	1	4	1	1	d	(a11bc1d
Siarad	stammers5	293	2	RHO	ydy 	\N	cym	monoW	a	1	1	1	1	b	1	3	c	1	1	1	4	1	1	d	(a11bc1d
Siarad	stammers5	295	1	RHO	well os oedd plentyn chdi neu fi 	\N	cym	monoW	a	1	1	1	1	b	1	3	c	1	1	1	4	1	1	d	(a11bc1d
Siarad	stammers5	295	2	RHO	fasen ni yn 	\N	cym	monoW	a	1	1	1	1	b	1	3	c	1	1	1	4	1	1	d	(a11bc1d
Siarad	stammers5	295	3	RHO	basen 	\N	cym	monoW	a	1	1	1	1	b	1	3	c	1	1	1	4	1	1	d	(a11bc1d
Siarad	stammers5	538	1	RHO	be ydy point 	\N	cym	monoW	a	1	1	1	1	b	1	3	c	1	1	1	4	1	1	d	(a11bc1d
Siarad	stammers5	539	1	RHO	coeden ydy o Sioned 	\N	cym	monoW	a	1	1	1	1	b	1	3	c	1	1	1	4	1	1	d	(a11bc1d
Siarad	stammers5	541	1	RHO	be ydy 	\N	cym	monoW	a	1	1	1	1	b	1	3	c	1	1	1	4	1	1	d	(a11bc1d
Siarad	stammers5	545	1	RHO	yndy 	\N	cym	monoW	a	1	1	1	1	b	1	3	c	1	1	1	4	1	1	d	(a11bc1d
Siarad	stammers5	554	1	RHO	na na yn ffordd yna mae yn mynd wrth y drws 	\N	cym	monoW	a	1	1	1	1	b	1	3	c	1	1	1	4	1	1	d	(a11bc1d
Siarad	stammers5	558	1	RHO	mmm fydd yna ddim problem 	\N	cym	monoW	a	1	1	1	1	b	1	3	c	1	1	1	4	1	1	d	(a11bc1d
Siarad	stammers5	563	1	RHO	wnaethon ni fynd lawr troedfedd do 	\N	cym	monoW	a	1	1	1	1	b	1	3	c	1	1	1	4	1	1	d	(a11bc1d
Siarad	stammers5	809	1	RHO	achos mi oedd yna liwiau melyn a ballu rhyfedd ar y film gwreiddiol 	\N	cym	monoW	a	1	1	1	1	b	1	3	c	1	1	1	4	1	1	d	(a11bc1d
Siarad	stammers5	811	1	RHO	oedd 	\N	cym	monoW	a	1	1	1	1	b	1	3	c	1	1	1	4	1	1	d	(a11bc1d
Siarad	stammers5	817	1	RHO	mae hi yn fam i rywun 	\N	cym	monoW	a	1	1	1	1	b	1	3	c	1	1	1	4	1	1	d	(a11bc1d
Siarad	stammers5	823	1	RHO	ddim hi ydy mam Shirley_Temple 	\N	cym	monoW	a	1	1	1	1	b	1	3	c	1	1	1	4	1	1	d	(a11bc1d
Siarad	stammers5	826	1	RHO	ia dw ddim yn gwybod 	\N	cym	monoW	a	1	1	1	1	b	1	3	c	1	1	1	4	1	1	d	(a11bc1d
Siarad	stammers5	828	1	RHO	a dydy 	tag? depends on context; unsure here	cym	monoW	a	1	1	1	1	b	1	3	c	1	1	1	4	1	1	d	(a11bc1d
Siarad	stammers5	830	1	RHO	dw i meddwl sti 	\N	cym	monoW	a	1	1	1	1	b	1	3	c	1	1	1	4	1	1	d	(a11bc1d
Siarad	stammers5	831	1	RHO	a dydy 	tag? depends on context; unsure here	cym	monoW	a	1	1	1	1	b	1	3	c	1	1	1	4	1	1	d	(a11bc1d
Siarad	stammers5	831	2	RHO	mae yna 	\N	cym	monoW	a	1	1	1	1	b	1	3	c	1	1	1	4	1	1	d	(a11bc1d
Siarad	stammers5	831	3	RHO	mae yna 	\N	cym	monoW	a	1	1	1	1	b	1	3	c	1	1	1	4	1	1	d	(a11bc1d
Siarad	stammers5	832	1	RHO	be ydy enw boy yna 	\N	cym	monoW	a	1	1	1	1	b	1	3	c	1	1	1	4	1	1	d	(a11bc1d
Siarad	fusser13	356	1	BEI	yeah dw i ddim yn gwybod	\N	cym	monoW	a	1	3	1	0	a	1	3	c	1	1	1	1	1	1	b	(a13ac1b
Siarad	fusser12	1695	1	WEN	oedd y ddrama ia	\N	cym	monoW	a	1	2	1	1	b	1	3	c	1	1	1	1	1	1	b	(a12bc1b
Siarad	fusser3	268	1	BEC	ia dach chi yn mynd wedyn dydd Gwener dydd Sadwrn	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	4	1	1	1	1	d	(a11ba1d
Siarad	fusser3	277	1	BEC	oh yeah o'n i yn meddwl	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	4	1	1	1	1	d	(a11ba1d
Siarad	fusser3	277	2	BEC	os oedd hi yn cael ryw fath o barty neu rywbeth	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	4	1	1	1	1	d	(a11ba1d
Siarad	fusser3	505	1	BEC	be petasai babi yn cyrraedd	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	4	1	1	1	1	d	(a11ba1d
Siarad	fusser3	505	2	BEC	a gynnoch chi ddim sêt car i ddod â fo adre o ysbyty	non-finite	cym	monoW	a	1	1	1	1	b	1	1	a	1	4	1	1	1	1	d	(a11ba1d
Siarad	fusser3	508	2	BEC	mae gen y nghyfnither un	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	4	1	1	1	1	d	(a11ba1d
Siarad	fusser3	509	1	BEC	so dw i yn cael un gynni hi	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	4	1	1	1	1	d	(a11ba1d
Siarad	fusser3	513	1	BEC	dw meddwl bod Elliw yn meddwl bod o just yn mynd i gyrraedd ryw ddiwrnod	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	4	1	1	1	1	d	(a11ba1d
Siarad	fusser3	513	5	BEC	a byddwn ni ddim yn barod	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	4	1	1	1	1	d	(a11ba1d
Siarad	fusser3	524	1	BEC	wyt ti meddwl bod hynna yn ddrud neu yn rhad	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	4	1	1	1	1	d	(a11ba1d
Siarad	fusser3	529	1	BEC	dw i ddim yn gwybod sti	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	4	1	1	1	1	d	(a11ba1d
Siarad	fusser16	384	1	ANW	oeddech	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	1	1	1	1	1	b	(a14ba1b
Siarad	fusser12	1701	1	WEN	paid â deud	clause division	cym	monoW	a	1	2	1	1	b	1	3	c	1	1	1	1	1	1	b	(a12bc1b
Siarad	fusser12	1714	1	WEN	mi wnewch hwyrach	\N	cym	monoW	a	1	2	1	1	b	1	3	c	1	1	1	1	1	1	b	(a12bc1b
Siarad	fusser12	1720	1	WEN	yndy	\N	cym	monoW	a	1	2	1	1	b	1	3	c	1	1	1	1	1	1	b	(a12bc1b
Siarad	fusser12	1720	2	WEN	yndy	\N	cym	monoW	a	1	2	1	1	b	1	3	c	1	1	1	1	1	1	b	(a12bc1b
Siarad	fusser12	1721	1	WEN	ond sut oedd y ddrama	\N	cym	monoW	a	1	2	1	1	b	1	3	c	1	1	1	1	1	1	b	(a12bc1b
Siarad	fusser12	1721	2	WEN	oedd hi yno fo	\N	cym	monoW	a	1	2	1	1	b	1	3	c	1	1	1	1	1	1	b	(a12bc1b
Siarad	fusser13	404	1	CRI	oedd	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser13	423	1	BEI	oedden ni wedi meddwl bod y lle yn cymryd cerdyn de	\N	cym	monoW	a	1	3	1	0	a	1	3	c	1	1	1	1	1	1	b	(a13ac1b
Siarad	fusser13	426	1	BEI	a es i dalu	clause division	cym	monoW	a	1	3	1	0	a	1	3	c	1	1	1	1	1	1	b	(a13ac1b
Siarad	fusser13	735	1	BEI	a cyfri faint o geir ddoth i gwfwr i	non-finite	cym	monoW	a	1	3	1	0	a	1	3	c	1	1	1	1	1	1	b	(a13ac1b
Siarad	fusser13	739	2	BEI	dydy o ddim yn bell	\N	cym	monoW	a	1	3	1	0	a	1	3	c	1	1	1	1	1	1	b	(a13ac1b
Siarad	fusser13	754	1	BEI	Llanaber aethon nhw	\N	cym	monoW	a	1	3	1	0	a	1	3	c	1	1	1	1	1	1	b	(a13ac1b
Siarad	fusser13	670	1	CRI	lle dach chi mynd tro nesa	clause division	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser13	746	1	CRI	oh mae sure	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser13	751	1	CRI	oedden ie	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser13	759	1	CRI	ddigon agos i bicio adre felly petasai	non-finite	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser13	781	1	CRI	yn lle mae fan yno	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser13	1108	1	BEI	welith neb ddim ohono sti	\N	cym	monoW	a	1	3	1	0	a	1	3	c	1	1	1	1	1	1	b	(a13ac1b
Siarad	fusser13	1113	1	BEI	wyt ti gwybod bod o yna	\N	cym	monoW	a	1	3	1	0	a	1	3	c	1	1	1	1	1	1	b	(a13ac1b
Siarad	fusser13	1127	1	BEI	nid oriau mae yn cymryd misoedd blynyddoedd	\N	cym	monoW	a	1	3	1	0	a	1	3	c	1	1	1	1	1	1	b	(a13ac1b
Siarad	fusser13	1135	1	BEI	oh mae yn dibynnu be arall	\N	cym	monoW	a	1	3	1	0	a	1	3	c	1	1	1	1	1	1	b	(a13ac1b
Siarad	fusser13	1135	2	BEI	wyt ti wneud	\N	cym	monoW	a	1	3	1	0	a	1	3	c	1	1	1	1	1	1	b	(a13ac1b
Siarad	fusser13	1136	1	BEI	felly mae de	\N	cym	monoW	a	1	3	1	0	a	1	3	c	1	1	1	1	1	1	b	(a13ac1b
Siarad	fusser13	867	1	CRI	yndy	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser13	867	2	CRI	dyna ydy peth de	non-finite	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser13	873	1	CRI	fysai	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser13	873	2	CRI	fysai	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser13	873	3	CRI	fysai	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser13	886	1	CRI	oh mae nhw wedi	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser10	231	1	ADD	oh yndy	\N	cym	monoW	a	1	2	1	1	b	2	2	c	1	1	1	3	3	1	e	(a12bc1e
Siarad	fusser10	233	1	ADD	dw i ddim yn gwybod	\N	cym	monoW	a	1	2	1	1	b	2	2	c	1	1	1	3	3	1	e	(a12bc1e
Siarad	fusser10	234	1	ADD	o'n i meddwl bod o yn gorffen am bedwar_deg	\N	cym	monoW	a	1	2	1	1	b	2	2	c	1	1	1	3	3	1	e	(a12bc1e
Siarad	fusser10	244	1	ADD	oes	\N	cym	monoW	a	1	2	1	1	b	2	2	c	1	1	1	3	3	1	e	(a12bc1e
Siarad	fusser3	565	1	BEC	ond ydy o yn cael gwared o yr hen gegin	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	4	1	1	1	1	d	(a11ba1d
Siarad	fusser3	567	1	BEC	ah mae o yn clocio fyny rwan a	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	4	1	1	1	1	d	(a11ba1d
Siarad	fusser3	771	1	BEC	ia basai hynna yn iawn	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	4	1	1	1	1	d	(a11ba1d
Siarad	fusser3	771	2	BEC	bysai	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	4	1	1	1	1	d	(a11ba1d
Siarad	fusser3	773	1	BEC	bysai	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	4	1	1	1	1	d	(a11ba1d
Siarad	fusser3	773	2	BEC	basai hynna yn o_k	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	4	1	1	1	1	d	(a11ba1d
Siarad	fusser3	778	1	BEC	oh ella wna i drio	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	4	1	1	1	1	d	(a11ba1d
Siarad	fusser3	780	1	BEC	wna i drio	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	4	1	1	1	1	d	(a11ba1d
Siarad	fusser3	780	2	BEC	lapio ryw ddau fox bach arall gynta a rhoid um	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	4	1	1	1	1	d	(a11ba1d
Siarad	fusser3	782	1	BEC	achos fedra i roid cardyn cyfarch ar bob un	clause division	cym	monoW	a	1	1	1	1	b	1	1	a	1	4	1	1	1	1	d	(a11ba1d
Siarad	fusser3	782	4	BEC	medraf a rhoi ryw un gardyn Dolig bach efo fo	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	4	1	1	1	1	d	(a11ba1d
Siarad	fusser3	790	1	BEC	oh fydd o yn iawn	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	4	1	1	1	1	d	(a11ba1d
Siarad	fusser3	794	1	BEC	wedyn na fydda i yn iawn	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	4	1	1	1	1	d	(a11ba1d
Siarad	fusser3	804	1	BEC	be ydyn nhw	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	4	1	1	1	1	d	(a11ba1d
Siarad	fusser10	244	2	ADD	oes	\N	cym	monoW	a	1	2	1	1	b	2	2	c	1	1	1	3	3	1	e	(a12bc1e
Siarad	fusser10	247	1	ADD	ydw	\N	cym	monoW	a	1	2	1	1	b	2	2	c	1	1	1	3	3	1	e	(a12bc1e
Siarad	fusser10	247	2	ADD	ydw	\N	cym	monoW	a	1	2	1	1	b	2	2	c	1	1	1	3	3	1	e	(a12bc1e
Siarad	fusser10	261	2	ADD	ydan ni de	\N	cym	monoW	a	1	2	1	1	b	2	2	c	1	1	1	3	3	1	e	(a12bc1e
Siarad	fusser10	261	3	ADD	os dan ni angen rywbeth felly	\N	cym	monoW	a	1	2	1	1	b	2	2	c	1	1	1	3	3	1	e	(a12bc1e
Siarad	fusser10	263	1	ADD	oes dim raid iddyn nhw	clause division	cym	monoW	a	1	2	1	1	b	2	2	c	1	1	1	3	3	1	e	(a12bc1e
Siarad	fusser10	265	1	ADD	dw i ddim yn meddwl bod yr un format yn gweithio fan yno felly	\N	cym	monoW	a	1	2	1	1	b	2	2	c	1	1	1	3	3	1	e	(a12bc1e
Siarad	fusser10	266	1	ADD	ond er mae bob un team yn hunangynhaliol bellach	\N	cym	monoW	a	1	2	1	1	b	2	2	c	1	1	1	3	3	1	e	(a12bc1e
Siarad	fusser10	267	1	ADD	does yna neb yn cael	\N	cym	monoW	a	1	2	1	1	b	2	2	c	1	1	1	3	3	1	e	(a12bc1e
Siarad	fusser10	267	3	ADD	mae yr crysau yn cael gan noddwyr	\N	cym	monoW	a	1	2	1	1	b	2	2	c	1	1	1	3	3	1	e	(a12bc1e
Siarad	fusser10	492	2	ADD	mae	\N	cym	monoW	a	1	2	1	1	b	2	2	c	1	1	1	3	3	1	e	(a12bc1e
Siarad	fusser10	492	3	ADD	mae gogs wedi wneud hyn	\N	cym	monoW	a	1	2	1	1	b	2	2	c	1	1	1	3	3	1	e	(a12bc1e
Siarad	fusser10	493	1	ADD	mae yr gogs wedi wneud llall	\N	cym	monoW	a	1	2	1	1	b	2	2	c	1	1	1	3	3	1	e	(a12bc1e
Siarad	fusser10	495	1	ADD	dan ni wedi bod yn Sbaen yn cynrhychioli yr club ac yn y blaen	\N	cym	monoW	a	1	2	1	1	b	2	2	c	1	1	1	3	3	1	e	(a12bc1e
Siarad	fusser10	498	1	ADD	wedyn dw meddwl bod hynna yn well	\N	cym	monoW	a	1	2	1	1	b	2	2	c	1	1	1	3	3	1	e	(a12bc1e
Siarad	fusser10	499	1	ADD	ond mae yna rei sydd wedi	\N	cym	monoW	a	1	2	1	1	b	2	2	c	1	1	1	3	3	1	e	(a12bc1e
Siarad	fusser13	1178	1	CRI	fan yma oeddwn i yn drio neithiwr	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser13	1181	2	CRI	oeddwn i gwneud	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser13	1182	1	CRI	stem stitch ydy o de	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser10	499	2	ADD	dw i meddwl bod nhw wneud drwg mawr i ni felly	\N	cym	monoW	a	1	2	1	1	b	2	2	c	1	1	1	3	3	1	e	(a12bc1e
Siarad	fusser10	521	1	ADD	a wnaethon ni bwyd	\N	cym	monoW	a	1	2	1	1	b	2	2	c	1	1	1	3	3	1	e	(a12bc1e
Siarad	fusser10	534	1	ADD	dw i gwybod	\N	cym	monoW	a	1	2	1	1	b	2	2	c	1	1	1	3	3	1	e	(a12bc1e
Siarad	fusser10	534	2	ADD	be sy gynno fo	\N	cym	monoW	a	1	2	1	1	b	2	2	c	1	1	1	3	3	1	e	(a12bc1e
Siarad	fusser10	535	2	ADD	sy yn gwrthod i ddod mewn	\N	cym	monoW	a	1	2	1	1	b	2	2	c	1	1	1	3	3	1	e	(a12bc1e
Siarad	fusser10	537	1	ADD	yeah right so wyt ti wedi roid rhesymau wan iddo fo	clause division	cym	monoW	a	1	2	1	1	b	2	2	c	1	1	1	3	3	1	e	(a12bc1e
Siarad	fusser10	541	1	ADD	wedyn fel ti yn deud	clause division	cym	monoW	a	1	2	1	1	b	2	2	c	1	1	1	3	3	1	e	(a12bc1e
Siarad	fusser10	541	2	ADD	os ddoith o fyny pwyllgor	h	cym	monoW	a	1	2	1	1	b	2	2	c	1	1	1	3	3	1	e	(a12bc1e
Siarad	fusser11	373	1	BED	os wyt ti gwatsiad ar_ôl dy gar di	clause division	cym	monoW	a	1	3	1	1	b	2	0	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser11	373	1	BED	a fi wedi malu yn un i oh	h	cym	monoW	a	1	3	1	1	b	2	0	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser11	373	2	BED	fedr o ddim bod	\N	cym	monoW	a	1	3	1	1	b	2	0	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser11	376	1	BED	dydy o ddim ots ddau yr un flwyddyn	\N	cym	monoW	a	1	3	1	1	b	2	0	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser11	379	1	BED	dydy o ddim yr un gwerth	clause division	cym	monoW	a	1	3	1	1	b	2	0	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser11	381	1	BED	fedr o ddim bod a mynd i weld	\N	cym	monoW	a	1	3	1	1	b	2	0	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser11	390	1	BED	yndy	\N	cym	monoW	a	1	3	1	1	b	2	0	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser11	390	2	BED	yndy	\N	cym	monoW	a	1	3	1	1	b	2	0	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser11	390	3	BED	yndy	\N	cym	monoW	a	1	3	1	1	b	2	0	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser11	390	4	BED	yndy	\N	cym	monoW	a	1	3	1	1	b	2	0	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser11	405	1	BED	ew annwyl ydy	\N	cym	monoW	a	1	3	1	1	b	2	0	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	roberts3	323	3	MED	bod ni yn gwneud um 	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	4	1	d	(a13ba1d
Siarad	roberts3	325	3	MED	yndy 	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	4	1	d	(a13ba1d
Siarad	fusser11	405	2	BED	dyna sut mae nhw wneud	non-finite	cym	monoW	a	1	3	1	1	b	2	0	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser11	405	4	BED	wneud eu pres de	\N	cym	monoW	a	1	3	1	1	b	2	0	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser11	410	1	BED	mae o yn	if repair follows then exclude this	cym	monoW	a	1	3	1	1	b	2	0	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser11	411	1	BED	na mae well	\N	cym	monoW	a	1	3	1	1	b	2	0	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser11	411	2	BED	mae hwnna yn sale dda yn er Whitchurch ddeud y gwir de	\N	cym	monoW	a	1	3	1	1	b	2	0	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser10	541	3	ADD	wna i egluro	\N	cym	monoW	a	1	2	1	1	b	2	2	c	1	1	1	3	3	1	e	(a12bc1e
Siarad	fusser10	766	1	ADD	mae hi yn gweithio yn yn Cynulliad hefyd	\N	cym	monoW	a	1	2	1	1	b	2	2	c	1	1	1	3	3	1	e	(a12bc1e
Siarad	fusser10	767	1	ADD	wedyn wnaeth hi gyfarfod ni am ginio	\N	cym	monoW	a	1	2	1	1	b	2	2	c	1	1	1	3	3	1	e	(a12bc1e
Siarad	fusser10	768	1	ADD	a wedyn mae nhw yn gobeithio cael symud i_fyny i Cyffordd_Llandudno	\N	cym	monoW	a	1	2	1	1	b	2	2	c	1	1	1	3	3	1	e	(a12bc1e
Siarad	fusser10	773	1	ADD	mae nhw isio	\N	cym	monoW	a	1	2	1	1	b	2	2	c	1	1	1	3	3	1	e	(a12bc1e
Siarad	fusser10	773	3	ADD	mae nhw yn symud pum cant i_fyny o o Gaerdydd	\N	cym	monoW	a	1	2	1	1	b	2	2	c	1	1	1	3	3	1	e	(a12bc1e
Siarad	fusser10	775	1	ADD	a mae yna ddau gant wedi wneud yn barod i Llanelwy a llefydd felly	\N	cym	monoW	a	1	2	1	1	b	2	2	c	1	1	1	3	3	1	e	(a12bc1e
Siarad	fusser10	776	1	ADD	a mae nhw isio tri chant i symud i Cyffordd_Llandudno	\N	cym	monoW	a	1	2	1	1	b	2	2	c	1	1	1	3	3	1	e	(a12bc1e
Siarad	fusser10	777	1	ADD	wrth_gwrs dydy bobl Gaerdydd ddim isio mynd nag	\N	cym	monoW	a	1	2	1	1	b	2	2	c	1	1	1	3	3	1	e	(a12bc1e
Siarad	fusser10	777	2	ADD	ydyn	\N	cym	monoW	a	1	2	1	1	b	2	2	c	1	1	1	3	3	1	e	(a12bc1e
Siarad	fusser10	778	1	ADD	ond mae Lisa yn ddeud	\N	cym	monoW	a	1	2	1	1	b	2	2	c	1	1	1	3	3	1	e	(a12bc1e
Siarad	fusser10	780	1	ADD	wedyn mae hi a a ei chymar Cai mynd i symud	clause division	cym	monoW	a	1	2	1	1	b	2	2	c	1	1	1	3	3	1	e	(a12bc1e
Siarad	fusser13	1186	1	CRI	wedyn oedd yr edau yn dod i_fyny fan yna	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser13	1187	1	CRI	oeddwn i yn mynd fel yna ac i fan yna wsti a a wedyn	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser13	1199	3	CRI	mae o yn daclusach de	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser13	1200	1	CRI	achos oedd	if repair follows then exclude this	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser13	1200	2	CRI	oedd hwnna	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser13	1200	3	CRI	oedd o yn troi allan yn eithriadol o flêr de	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser11	389	2	AED	mae yn cael ei werthu am bris uwch	clause division	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	4	3	f	(a13bc1f
Siarad	fusser11	391	1	AED	wedyn dach chi ddim yn mynd atyn nhw a deud	clause division	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	4	3	f	(a13bc1f
Siarad	fusser11	413	2	BED	dw i bod yn mynd lot i de	\N	cym	monoW	a	1	3	1	1	b	2	0	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser11	418	2	BED	ydy o	\N	cym	monoW	a	1	3	1	1	b	2	0	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	roberts3	329	1	MED	lle dw i 	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	4	1	d	(a13ba1d
Siarad	roberts3	330	1	MED	oh yeah mae gyn i 	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	4	1	d	(a13ba1d
Siarad	roberts3	330	2	MED	mae Llanrug mynd i fod yn dal i fynd 	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	4	1	d	(a13ba1d
Siarad	roberts3	337	1	MED	oh oedd 	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	4	1	d	(a13ba1d
Siarad	roberts3	346	1	MED	ddeudodd hi wrtha chdi 	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	4	1	d	(a13ba1d
Siarad	roberts3	347	1	MED	rhyfedd meddai i hynna fod wedi digwydd 	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	4	1	d	(a13ba1d
Siarad	roberts3	347	3	MED	meddai fi 	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	4	1	d	(a13ba1d
Siarad	roberts3	348	1	MED	achos wnaeth y ddynes 	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	4	1	d	(a13ba1d
Siarad	roberts3	348	2	MED	oedd yn trefnu yr peth ddeud felly um 	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	4	1	d	(a13ba1d
Siarad	roberts3	348	3	MED	bod yna lot o offer i gario felly 	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	4	1	d	(a13ba1d
Siarad	roberts3	349	1	MED	a mae sure na actorion 	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	4	1	d	(a13ba1d
Siarad	roberts3	349	2	MED	ydy rhein felly yn_de 	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	4	1	d	(a13ba1d
Siarad	roberts3	350	1	MED	dwn i ddim 	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	4	1	d	(a13ba1d
Siarad	roberts3	350	2	MED	oes 	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	4	1	d	(a13ba1d
Siarad	roberts3	350	3	MED	gynnon nhw gefn llwyfan felly 	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	4	1	d	(a13ba1d
Siarad	fusser11	392	1	AED	eh dw isio chi dynnu pum cant oddi_ar y car yma	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	4	3	f	(a13bc1f
Siarad	fusser13	1215	1	BEI	be sy yn anhygoel de er bod nhw i_gyd yr un fath	\N	cym	monoW	a	1	3	1	0	a	1	3	c	1	1	1	1	1	1	b	(a13ac1b
Siarad	fusser13	1215	2	BEI	mae yr gwahanol liwiau	\N	cym	monoW	a	1	3	1	0	a	1	3	c	1	1	1	1	1	1	b	(a13ac1b
Siarad	fusser13	1221	1	BEI	yndy	\N	cym	monoW	a	1	3	1	0	a	1	3	c	1	1	1	1	1	1	b	(a13ac1b
Siarad	fusser13	1230	1	BEI	mae hwnna i weld yn ysgafnach lawer na hwn	\N	cym	monoW	a	1	3	1	0	a	1	3	c	1	1	1	1	1	1	b	(a13ac1b
Siarad	fusser13	1213	1	CRI	a mae	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser13	1213	2	CRI	a mae	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser13	1213	3	CRI	dw i wedi wneud hwn i_gyd un pwyth yn rhy yn rhy uchel i_fyny	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser13	1214	1	CRI	nes mae yr rhes yna mynd yn stuck yn y rhes yna	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser13	1217	1	CRI	yndy	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser11	398	1	AED	mae hwnnw wedyn yn cyfri	clause division	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	4	3	f	(a13bc1f
Siarad	fusser11	402	1	AED	wedyn mae nhw ar y ar eu curo bob tro	clause division	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	4	3	f	(a13bc1f
Siarad	fusser11	404	1	AED	yndy	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	4	3	f	(a13bc1f
Siarad	fusser11	406	1	AED	yndy	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	4	3	f	(a13bc1f
Siarad	fusser11	420	1	AED	well ia a dydy rywun ddim yn meddwl bod yna rei	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	4	3	f	(a13bc1f
Siarad	fusser11	775	1	AED	oedd yna er rations a pobl cefn gwlad yn gweithio hefo pobl dre a yr War_Ag ac ati de	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	4	3	f	(a13bc1f
Siarad	fusser11	778	1	AED	er oedd pobl y dre a pobl y y yr er cefn gwlad yn dallt ei_gilydd dipyn bach mwy	clause division	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	4	3	f	(a13bc1f
Siarad	fusser11	779	1	AED	ac o'n nhw yn gwybod	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	4	3	f	(a13bc1f
Siarad	fusser11	779	2	AED	lle oedd bob peth yn dŵad	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	4	3	f	(a13bc1f
Siarad	fusser11	780	1	AED	ac oedd dim ots o pa gefndir	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	4	3	f	(a13bc1f
Siarad	fusser11	780	3	AED	oeddech chi dal i drio mynd am yr un un ffordd	clause division	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	4	3	f	(a13bc1f
Siarad	roberts3	659	1	MED	ddaw ddon nhw ddim draw atach 	first ddaw is corrected by ddon	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	4	1	d	(a13ba1d
Siarad	roberts3	674	1	MED	nag oedd 	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	4	1	d	(a13ba1d
Siarad	roberts3	677	1	MED	yndy 	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	4	1	d	(a13ba1d
Siarad	roberts3	677	2	MED	yndy ond mam 	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	4	1	d	(a13ba1d
Siarad	roberts3	677	3	MED	oedd o isio de ia ia ia 	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	4	1	d	(a13ba1d
Siarad	roberts3	686	1	MED	oh yndy 	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	4	1	d	(a13ba1d
Siarad	roberts3	719	1	MED	a mae wedi cymryd yr hen beth Sudafed yna sti yn sychu o i_gyd 	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	4	1	d	(a13ba1d
Siarad	roberts3	722	1	MED	mae sure bod hwnnw yn gwneud iddi fynd yn  	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	4	1	d	(a13ba1d
Siarad	roberts3	726	2	MED	mae benderfynol 	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	4	1	d	(a13ba1d
Siarad	roberts3	729	1	MED	argoel be sy haru ti 	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	4	1	d	(a13ba1d
Siarad	roberts3	1000	1	MED	so mae Emily yn chymryd hi am ddiwrnod 	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	4	1	d	(a13ba1d
Siarad	roberts3	1001	1	MED	a wedyn wrth bod hi yn dŵad i Fangor yma 	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	4	1	d	(a13ba1d
Siarad	fusser11	780	6	AED	oeddech	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	4	3	f	(a13bc1f
Siarad	fusser11	785	1	AED	a wedyn ar_ôl hynna mae pethau wedi colli ffordd rywsut do	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	4	3	f	(a13bc1f
Siarad	fusser11	836	1	AED	oh nag oes	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	4	3	f	(a13bc1f
Siarad	fusser11	837	1	AED	er dach chi meddwl bod nhw yn cael mwy	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	4	3	f	(a13bc1f
Siarad	fusser11	846	1	AED	nag oedd nag	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	4	3	f	(a13bc1f
Siarad	fusser11	846	2	AED	oedd	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	4	3	f	(a13bc1f
Siarad	fusser11	848	1	AED	ond eto oedden ni yn brysur	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	4	3	f	(a13bc1f
Siarad	fusser11	851	1	AED	oedd	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	4	3	f	(a13bc1f
Siarad	fusser11	851	2	AED	oedd	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	4	3	f	(a13bc1f
Siarad	fusser11	1177	1	AED	dw i wedi roi gorau i watsied o wan	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	4	3	f	(a13bc1f
Siarad	fusser11	1179	1	AED	na does gyn i ddim mond y dywydd	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	4	3	f	(a13bc1f
Siarad	fusser11	1180	1	AED	dw cael y dywydd wan	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	4	3	f	(a13bc1f
Siarad	fusser11	1181	1	AED	a fedr neb newid hwnnw	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	4	3	f	(a13bc1f
Siarad	fusser11	1181	2	AED	na fedr	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	4	3	f	(a13bc1f
Siarad	fusser11	1185	1	AED	oh mae wedi mynd yn ddigalon fel yna de	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	4	3	f	(a13bc1f
Siarad	fusser11	1201	1	AED	yndy Duw	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	4	3	f	(a13bc1f
Siarad	fusser11	1201	2	AED	yndy	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	4	3	f	(a13bc1f
Siarad	fusser11	1201	3	AED	yndy ddigon gwir	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	4	3	f	(a13bc1f
Siarad	fusser11	1201	4	AED	yndy	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	4	3	f	(a13bc1f
Siarad	fusser11	1205	1	AED	well oedd hwnnw yn rywbeth i wneud	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	4	3	f	(a13bc1f
Siarad	fusser11	1206	1	AED	ac oedd o yn bleser i chi hefyd	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	4	3	f	(a13bc1f
Siarad	fusser11	1234	1	AED	oedd	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	4	3	f	(a13bc1f
Siarad	fusser13	1247	1	BEI	nag oes	\N	cym	monoW	a	1	3	1	0	a	1	3	c	1	1	1	1	1	1	b	(a13ac1b
Siarad	fusser14	180	1	AWE	dan ni yn rei garw am cafes	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser14	200	1	AWE	mae yna lot mwy o um bethau fresh yna	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser14	202	1	AWE	tua ryw pa fath o bethau oedda chdi yn gwcio	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser14	221	1	AWE	dan ni ddim yn rei garw am bwdins	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser14	222	1	AWE	well dw i yn	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser14	226	1	AWE	ond oedd hi digon braf i i er bwyta allan yn fan yna	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser14	226	2	AWE	oedd	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser14	239	1	AWE	oedd tua deg shop lyfrau yna	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser14	245	1	AWE	dw i ddim yn cofio pa lyfr	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	roberts3	1001	2	MED	mae yn haws iddi hi 	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	4	1	d	(a13ba1d
Siarad	roberts3	1005	1	MED	mae isio iddi gael Cymraeg 	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	4	1	d	(a13ba1d
Siarad	roberts3	1006	1	MED	fysai ddim 	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	4	1	d	(a13ba1d
Siarad	roberts3	1006	2	MED	yn cael mewn meithrinfa yn Bae_Colwyn sti 	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	4	1	d	(a13ba1d
Siarad	roberts3	1006	3	MED	na fysai 	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	4	1	d	(a13ba1d
Siarad	roberts3	1009	1	MED	yndy 	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	4	1	d	(a13ba1d
Siarad	roberts3	1009	2	MED	yndy 	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	4	1	d	(a13ba1d
Siarad	roberts3	1038	1	MED	ond mae yn cael Cymraeg adre 	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	4	1	d	(a13ba1d
Siarad	roberts3	1040	1	MED	mae Clive a Alison yn siarad Saesneg	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	4	1	d	(a13ba1d
Siarad	roberts3	1040	2	MED	ti yn gweld dydyn 	dydyn a tag here	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	4	1	d	(a13ba1d
Siarad	roberts3	1042	1	MED	a wedyn dyna mae hi yn deimlo felly 	nonfin	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	4	1	d	(a13ba1d
Siarad	fusser14	245	2	AWE	oedda chi ddarllen ar y pryd	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser14	266	1	AWE	oh mae yn sôn am y crempog	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser14	429	1	AWE	mae o isio ffeindio yr llun	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser14	430	1	AWE	ond chwarae teg mae o yn	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser14	441	1	AWE	dyna ti hwnna ydy yr llun de	non-finite	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser14	444	1	AWE	oedd ffefryn fi	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser14	449	1	AWE	mae o ar yr um	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser14	478	1	AWE	fan yna aethon ni ar_ôl Dinan yeah i bentre bach del del del	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser14	480	1	AWE	a wnest ti weld pwll nofio yna	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser14	488	1	AWE	o'n i ddim cofio na yr un diwrnod	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser14	488	2	AWE	oedd o	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser14	508	1	AWE	dim hwnna ydy o	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser14	529	1	AWE	dw i ddim yn cofio	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser14	638	1	AWE	a be oedd yna fan hyn	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser14	639	1	AWE	oedd yna ddim ryw gwningen ac o'n i yn trio tynnu llun hi	clause division	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser14	650	1	AWE	wnest ti ddim dal hi yn diwedd	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser14	657	1	AWE	a crempogau faint o grempogau gaethon ni a cacenni do Cywryd	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser14	682	1	AWE	pen pwy ydy hwnna	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser14	684	1	AWE	a pwy sy fan yna	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser14	696	1	AWE	aethon ni ddim allan yn diwedd	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser14	703	1	AWE	yeah be wnest ti fan yna	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser14	712	1	AWE	ti licio bownsio	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser18	264	1	ARD	a dw i roid o ar dri_deg	clause division	cym	monoW	a	0	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a03bc1b
Siarad	fusser18	266	1	ARD	ond um mae o yn annifyr weithiau	\N	cym	monoW	a	0	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a03bc1b
Siarad	fusser18	267	1	ARD	achos mae yna geir tu ôl yn ysu heibio	\N	cym	monoW	a	0	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a03bc1b
Siarad	fusser18	284	1	ARD	oh mae isio bod yn ofalus felly yn_does efo er gyrru	\N	cym	monoW	a	0	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a03bc1b
Siarad	fusser18	302	1	ARD	oh dw i sure	\N	cym	monoW	a	0	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a03bc1b
Siarad	fusser18	311	1	ARD	basai wedi gwneud i brynu present i Haf	\N	cym	monoW	a	0	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a03bc1b
Siarad	fusser18	315	1	ARD	oh well mae yn gofyn dysgu o hynna felly yn_dydy	\N	cym	monoW	a	0	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a03bc1b
Siarad	fusser18	322	1	ARD	mi oedd yn_doedd	\N	cym	monoW	a	0	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a03bc1b
Siarad	fusser18	520	1	ARD	so mae yn eistedd	\N	cym	monoW	a	0	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a03bc1b
Siarad	fusser18	526	1	ARD	a wedyn dan ni mynd i fynd hefo nhw felly	\N	cym	monoW	a	0	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a03bc1b
Siarad	fusser18	533	1	ARD	ges i	\N	cym	monoW	a	0	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a03bc1b
Siarad	fusser18	533	2	ARD	fynd ar bus wsnos dwytha	\N	cym	monoW	a	0	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a03bc1b
Siarad	fusser18	534	1	ARD	oedd yna um er gwmni yn um rhoi	\N	cym	monoW	a	0	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a03bc1b
Siarad	roberts3	1043	1	MED	basai hi licio dŵad mwy ffordd hyn i fyw	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	4	1	d	(a13ba1d
Siarad	roberts3	1045	1	MED	ond mae waith o yn Llanelwy 	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	4	1	d	(a13ba1d
Siarad	fusser11	1190	1	BED	mae hwn a hwn wedi mynd	\N	cym	monoW	a	1	3	1	1	b	2	0	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser11	1191	1	BED	neu mae yna oh	\N	cym	monoW	a	1	3	1	1	b	2	0	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser11	1191	2	BED	dwn i ddim	clause division	cym	monoW	a	1	3	1	1	b	2	0	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser11	1191	3	BED	yn gwybod um	\N	cym	monoW	a	1	3	1	1	b	2	0	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser11	1194	1	BED	neu mae hwn wedi gadael ei wraig	\N	cym	monoW	a	1	3	1	1	b	2	0	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser11	1196	1	BED	neu mae yna rywbeth arall	\N	cym	monoW	a	1	3	1	1	b	2	0	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser11	1197	1	BED	a a mae hwnnw wedi mynd wan yn beth	\N	cym	monoW	a	1	3	1	1	b	2	0	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	stammers3	241	1	NER	a hefyd fath â pan dan ni yn wneud gwaith clai 	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	4	1	1	1	d	(a11ba1d
Siarad	stammers3	241	2	NER	dan ni dim just dod â ryw rowlyn bach o glai allan a well 	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	4	1	1	1	d	(a11ba1d
Siarad	fusser18	535	1	ARD	well be oedd y y title	\N	cym	monoW	a	0	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a03bc1b
Siarad	fusser18	539	1	ARD	ac oedden nhw er wedi cael eu comisiynu gyn y cyngor sir i fynd round ysgolion er chweched dosbarth	\N	cym	monoW	a	0	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a03bc1b
Siarad	fusser18	540	1	ARD	a a Coleg_Meirion_Dwyfor oedd un	\N	cym	monoW	a	0	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a03bc1b
Siarad	fusser18	541	1	ARD	so aethon ni â tair bus mynd â er myfyrwyr i_fyny yna	\N	cym	monoW	a	0	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a03bc1b
Siarad	fusser18	542	1	ARD	oedd o yn dda	\N	cym	monoW	a	0	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a03bc1b
Siarad	fusser18	543	1	ARD	oedd y safon yn dda	\N	cym	monoW	a	0	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a03bc1b
Siarad	fusser18	789	1	ARD	dw ddim gwybod lle lle	\N	cym	monoW	a	0	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a03bc1b
Siarad	fusser18	789	2	ARD	lle awn ni	\N	cym	monoW	a	0	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a03bc1b
Siarad	fusser18	799	2	ARD	ydy	\N	cym	monoW	a	0	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a03bc1b
Siarad	fusser18	823	1	ARD	oh dan ni yn iawn	\N	cym	monoW	a	0	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a03bc1b
Siarad	fusser18	827	1	ARD	tra fyddwch chi yn judo a i wneud siopa gael yr um y basics	clause division	cym	monoW	a	0	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a03bc1b
Siarad	fusser18	829	1	ARD	wnaeth Haf a fi fwynhau mynd neithiwr i siopa ar nos Sadwrn Tesco	\N	cym	monoW	a	0	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a03bc1b
Siarad	fusser18	831	1	ARD	oedd hi yn dawel braf yna	\N	cym	monoW	a	0	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a03bc1b
Siarad	fusser18	833	3	ARD	dw meddwl ar nos Fawrth	\N	cym	monoW	a	0	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a03bc1b
Siarad	stammers1	193	1	EIF	ac oedd y club golf yn y 	\N	cym	monoW	a	1	4	1	1	b	1	3	c	1	1	1	4	1	4	g	(a14bc1g
Siarad	stammers1	193	2	EIF	lle mae rŵan er 	\N	cym	monoW	a	1	4	1	1	b	1	3	c	1	1	1	4	1	4	g	(a14bc1g
Siarad	stammers1	195	1	EIF	oh oedd 	\N	cym	monoW	a	1	4	1	1	b	1	3	c	1	1	1	4	1	4	g	(a14bc1g
Siarad	stammers1	195	2	EIF	oedd 	\N	cym	monoW	a	1	4	1	1	b	1	3	c	1	1	1	4	1	4	g	(a14bc1g
Siarad	stammers1	201	1	EIF	ddifyr basai ddifyr gwybod 	\N	cym	monoW	a	1	4	1	1	b	1	3	c	1	1	1	4	1	4	g	(a14bc1g
Siarad	stammers1	205	1	EIF	oh be dach chi wan 	\N	cym	monoW	a	1	4	1	1	b	1	3	c	1	1	1	4	1	4	g	(a14bc1g
Siarad	stammers1	206	1	EIF	dach chi ddim wedi bod yn swyddog efo yr club golf 	\N	cym	monoW	a	1	4	1	1	b	1	3	c	1	1	1	4	1	4	g	(a14bc1g
Siarad	stammers1	212	1	EIF	oeddech chi wedi treulio mwy yn fan hynny nag efo yr Goriad do 	\N	cym	monoW	a	1	4	1	1	b	1	3	c	1	1	1	4	1	4	g	(a14bc1g
Siarad	stammers1	239	1	EIF	dwn i ddim ia yeah 	\N	cym	monoW	a	1	4	1	1	b	1	3	c	1	1	1	4	1	4	g	(a14bc1g
Siarad	stammers1	241	1	EIF	yeah dydw i ddim yn ddyn golf 	\N	cym	monoW	a	1	4	1	1	b	1	3	c	1	1	1	4	1	4	g	(a14bc1g
Siarad	stammers1	251	1	EIF	be ydy 	\N	cym	monoW	a	1	4	1	1	b	1	3	c	1	1	1	4	1	4	g	(a14bc1g
Siarad	stammers1	262	1	EIF	well ddim bod 	\N	cym	monoW	a	1	4	1	1	b	1	3	c	1	1	1	4	1	4	g	(a14bc1g
Siarad	stammers1	262	2	EIF	dw i wedi trio golf 	\N	cym	monoW	a	1	4	1	1	b	1	3	c	1	1	1	4	1	4	g	(a14bc1g
Siarad	stammers1	262	3	EIF	cofiwch yn yn 	\N	cym	monoW	a	1	4	1	1	b	1	3	c	1	1	1	4	1	4	g	(a14bc1g
Siarad	stammers1	262	4	EIF	oes 	\N	cym	monoW	a	1	4	1	1	b	1	3	c	1	1	1	4	1	4	g	(a14bc1g
Siarad	stammers1	395	1	EIF	oh ydy yr club 	\N	cym	monoW	a	1	4	1	1	b	1	3	c	1	1	1	4	1	4	g	(a14bc1g
Siarad	stammers1	405	1	EIF	oh yeah mae yna bobl yn dal i edliw hynny  	\N	cym	monoW	a	1	4	1	1	b	1	3	c	1	1	1	4	1	4	g	(a14bc1g
Siarad	stammers1	416	1	EIF	mae wedi cymryd 	\N	cym	monoW	a	1	4	1	1	b	1	3	c	1	1	1	4	1	4	g	(a14bc1g
Siarad	stammers1	416	2	EIF	oes wneud 	\N	cym	monoW	a	1	4	1	1	b	1	3	c	1	1	1	4	1	4	g	(a14bc1g
Siarad	stammers3	242	1	NER	dw i yn dod â homer o bot allan a powndio yr clai a blah blah blah 	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	4	1	1	1	d	(a11ba1d
Siarad	stammers3	242	2	NER	mae o de 	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	4	1	1	1	d	(a11ba1d
Siarad	stammers3	245	2	NER	oedd hi yn yn chwarae yn y tywod 	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	4	1	1	1	d	(a11ba1d
Siarad	stammers3	246	1	NER	wedyn dim bod yn annifyr 	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	4	1	1	1	d	(a11ba1d
Siarad	stammers3	246	2	NER	oedd hi 	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	4	1	1	1	d	(a11ba1d
Siarad	stammers3	252	3	NER	sych ofnadwy 	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	4	1	1	1	d	(a11ba1d
Siarad	stammers3	252	4	NER	a roi fling iddo fo dros yr hogyn bach yma 	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	4	1	1	1	d	(a11ba1d
Siarad	stammers3	259	1	NER	so oedd o yn iawn 	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	4	1	1	1	d	(a11ba1d
Siarad	stammers3	261	1	NER	oes 	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	4	1	1	1	d	(a11ba1d
Siarad	stammers3	263	1	NER	oes 	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	4	1	1	1	d	(a11ba1d
Siarad	stammers3	265	1	NER	oes 	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	4	1	1	1	d	(a11ba1d
Siarad	stammers3	265	2	NER	mae yna gymeriad 	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	4	1	1	1	d	(a11ba1d
Siarad	stammers3	267	1	NER	yndy 	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	4	1	1	1	d	(a11ba1d
Siarad	stammers3	267	2	NER	a mae yna gymeriad cry 	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	4	1	1	1	d	(a11ba1d
Siarad	fusser15	715	2	GFR	dyna ydy o	non-finite	\N	monoW	\N	1	2	1	1	b	1	2	b	1	1	1	1	1	4	d	\N
Siarad	stammers3	499	1	NER	so na na fydd o yn 	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	4	1	1	1	d	(a11ba1d
Siarad	stammers3	499	2	NER	fydd o yn 	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	4	1	1	1	d	(a11ba1d
Siarad	stammers3	499	3	NER	fydd o nice 	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	4	1	1	1	d	(a11ba1d
Siarad	stammers1	416	3	EIF	yndy 	\N	cym	monoW	a	1	4	1	1	b	1	3	c	1	1	1	4	1	4	g	(a14bc1g
Siarad	stammers1	420	1	EIF	oh na dw i wedi 	\N	cym	monoW	a	1	4	1	1	b	1	3	c	1	1	1	4	1	4	g	(a14bc1g
Siarad	stammers1	420	2	EIF	dw i yn er clywed rhai 	\N	cym	monoW	a	1	4	1	1	b	1	3	c	1	1	1	4	1	4	g	(a14bc1g
Siarad	stammers1	420	3	EIF	yn deud ac yn sgyrnygu wrth 	\N	cym	monoW	a	1	4	1	1	b	1	3	c	1	1	1	4	1	4	g	(a14bc1g
Siarad	stammers1	420	4	EIF	glywed yr enw bron 	\N	cym	monoW	a	1	4	1	1	b	1	3	c	1	1	1	4	1	4	g	(a14bc1g
Siarad	stammers1	420	5	EIF	wchi yn yn 	\N	cym	monoW	a	1	4	1	1	b	1	3	c	1	1	1	4	1	4	g	(a14bc1g
Siarad	stammers1	420	6	EIF	oes i wan 	\N	cym	monoW	a	1	4	1	1	b	1	3	c	1	1	1	4	1	4	g	(a14bc1g
Siarad	stammers1	423	1	EIF	yndy 	\N	cym	monoW	a	1	4	1	1	b	1	3	c	1	1	1	4	1	4	g	(a14bc1g
Siarad	stammers1	423	2	EIF	yndy 	\N	cym	monoW	a	1	4	1	1	b	1	3	c	1	1	1	4	1	4	g	(a14bc1g
Siarad	stammers1	423	3	EIF	yndy 	\N	cym	monoW	a	1	4	1	1	b	1	3	c	1	1	1	4	1	4	g	(a14bc1g
Siarad	stammers1	431	1	EIF	oh yndy 	\N	cym	monoW	a	1	4	1	1	b	1	3	c	1	1	1	4	1	4	g	(a14bc1g
Siarad	stammers1	431	2	EIF	yndy 	\N	cym	monoW	a	1	4	1	1	b	1	3	c	1	1	1	4	1	4	g	(a14bc1g
Siarad	stammers1	431	3	EIF	yndy 	\N	cym	monoW	a	1	4	1	1	b	1	3	c	1	1	1	4	1	4	g	(a14bc1g
Siarad	stammers1	431	4	EIF	yndy 	\N	cym	monoW	a	1	4	1	1	b	1	3	c	1	1	1	4	1	4	g	(a14bc1g
Siarad	stammers1	432	1	EIF	yndy sure 	\N	cym	monoW	a	1	4	1	1	b	1	3	c	1	1	1	4	1	4	g	(a14bc1g
Siarad	stammers1	432	2	EIF	yndy 	\N	cym	monoW	a	1	4	1	1	b	1	3	c	1	1	1	4	1	4	g	(a14bc1g
Siarad	stammers1	432	3	EIF	yndy 	\N	cym	monoW	a	1	4	1	1	b	1	3	c	1	1	1	4	1	4	g	(a14bc1g
Siarad	stammers1	433	1	EIF	ydy yr club ar y we 	\N	cym	monoW	a	1	4	1	1	b	1	3	c	1	1	1	4	1	4	g	(a14bc1g
Siarad	stammers1	435	1	EIF	ydy o ar y we 	\N	cym	monoW	a	1	4	1	1	b	1	3	c	1	1	1	4	1	4	g	(a14bc1g
Siarad	stammers1	435	2	EIF	yndy 	\N	cym	monoW	a	1	4	1	1	b	1	3	c	1	1	1	4	1	4	g	(a14bc1g
Siarad	stammers1	613	1	EIF	oh yn Llundain mae yn byw 	\N	cym	monoW	a	1	4	1	1	b	1	3	c	1	1	1	4	1	4	g	(a14bc1g
Siarad	stammers1	623	1	EIF	oh mae fyd bach fel yna 	\N	cym	monoW	a	1	4	1	1	b	1	3	c	1	1	1	4	1	4	g	(a14bc1g
Siarad	stammers1	625	1	EIF	oh yndy 	\N	cym	monoW	a	1	4	1	1	b	1	3	c	1	1	1	4	1	4	g	(a14bc1g
Siarad	stammers3	503	1	NER	yeah ond basai 	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	4	1	1	1	d	(a11ba1d
Siarad	stammers3	504	1	NER	na dw i isio 	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	4	1	1	1	d	(a11ba1d
Siarad	stammers3	505	1	NER	mae Anna wrth ei bodd efo chdi 	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	4	1	1	1	d	(a11ba1d
Siarad	stammers3	510	1	NER	well yndy sure 	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	4	1	1	1	d	(a11ba1d
Siarad	stammers3	536	1	NER	be Adrian oedd hwnna 	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	4	1	1	1	d	(a11ba1d
Siarad	stammers3	538	1	NER	oedd o yn gwybod 	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	4	1	1	1	d	(a11ba1d
Siarad	stammers3	538	2	NER	bod ddim yn sure 	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	4	1	1	1	d	(a11ba1d
Siarad	stammers3	538	3	NER	oedda chdi deud 	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	4	1	1	1	d	(a11ba1d
Siarad	stammers3	545	1	NER	oh paid â dechrau	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	4	1	1	1	d	(a11ba1d
Siarad	stammers3	545	3	NER	ateb dy phone wan 	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	4	1	1	1	d	(a11ba1d
Siarad	stammers3	761	1	NER	oh sure iawn bod o 	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	4	1	1	1	d	(a11ba1d
Siarad	stammers3	763	1	NER	oh dw ddim yn amau 	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	4	1	1	1	d	(a11ba1d
Siarad	stammers3	764	1	NER	ydy 	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	4	1	1	1	d	(a11ba1d
Siarad	stammers3	764	2	NER	dw ddim yn amau 	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	4	1	1	1	d	(a11ba1d
Siarad	stammers3	765	1	NER	bod 	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	4	1	1	1	d	(a11ba1d
Siarad	stammers3	767	1	NER	achos oedd o 	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	4	1	1	1	d	(a11ba1d
Siarad	stammers3	767	2	NER	mae o wedi bod yn iawn yn yr ha 	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	4	1	1	1	d	(a11ba1d
Siarad	stammers1	631	1	EIF	well sure yndy 	\N	cym	monoW	a	1	4	1	1	b	1	3	c	1	1	1	4	1	4	g	(a14bc1g
Siarad	stammers1	631	2	EIF	yndy 	\N	cym	monoW	a	1	4	1	1	b	1	3	c	1	1	1	4	1	4	g	(a14bc1g
Siarad	stammers1	631	3	EIF	yndy 	\N	cym	monoW	a	1	4	1	1	b	1	3	c	1	1	1	4	1	4	g	(a14bc1g
Siarad	stammers1	632	1	EIF	does yna ddim_byd ar_ôl nag 	\N	cym	monoW	a	1	4	1	1	b	1	3	c	1	1	1	4	1	4	g	(a14bc1g
Siarad	stammers1	632	2	EIF	oes 	\N	cym	monoW	a	1	4	1	1	b	1	3	c	1	1	1	4	1	4	g	(a14bc1g
Siarad	stammers1	638	1	EIF	mae Laura_Ashley wedi mynd i_lawr ofnadwy 	\N	cym	monoW	a	1	4	1	1	b	1	3	c	1	1	1	4	1	4	g	(a14bc1g
Siarad	stammers1	641	1	EIF	yndy 	\N	cym	monoW	a	1	4	1	1	b	1	3	c	1	1	1	4	1	4	g	(a14bc1g
Siarad	stammers1	641	2	EIF	ydy 	\N	cym	monoW	a	1	4	1	1	b	1	3	c	1	1	1	4	1	4	g	(a14bc1g
Siarad	stammers1	646	1	EIF	well dw i wedi cael job ddymunol iawn wchi dyddiau dwytha yma 	\N	cym	monoW	a	1	4	1	1	b	1	3	c	1	1	1	4	1	4	g	(a14bc1g
Siarad	stammers1	647	1	EIF	wnaeth yna ryw grew ohonan ni efo ein_gilydd i er drio trefnu ryw aduniad coleg  	\N	cym	monoW	a	1	4	1	1	b	1	3	c	1	1	1	4	1	4	g	(a14bc1g
Siarad	stammers1	648	1	EIF	mae yn ddeugain mlynedd 	\N	cym	monoW	a	1	4	1	1	b	1	3	c	1	1	1	4	1	4	g	(a14bc1g
Siarad	fusser23	421	1	HEL	lle mae Mihangel yn byw	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser23	429	2	HEL	mae sure	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser23	431	1	HEL	oh faint fasai oed Mihangel	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser23	431	2	HEL	dywedwch	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser23	434	1	HEL	oh right dw i ddim yn nabod o felly	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser23	439	1	HEL	yeah fo oedd o	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser23	439	2	HEL	dw i sure yeah yeah	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser23	441	1	HEL	eglwyswr oedd o	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers3	769	1	NER	mae yna fath â gullies 	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	4	1	1	1	d	(a11ba1d
Siarad	stammers3	773	1	NER	a wedyn dw i meddwl 	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	4	1	1	1	d	(a11ba1d
Siarad	stammers3	773	2	NER	mae o just rhedeg 	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	4	1	1	1	d	(a11ba1d
Siarad	stammers3	774	1	NER	mae Diane yn gael drws nesa 	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	4	1	1	1	d	(a11ba1d
Siarad	stammers3	774	2	NER	yn cael yr un trafferth 	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	4	1	1	1	d	(a11ba1d
Siarad	stammers3	775	1	NER	wedyn rydw i sure bod o 	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	4	1	1	1	d	(a11ba1d
Siarad	stammers3	775	2	NER	dw i sure bod o yn helpu 	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	4	1	1	1	d	(a11ba1d
Siarad	stammers3	777	1	NER	ond er ac ac ac ers maen nhw wedi gael 	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	4	1	1	1	d	(a11ba1d
Siarad	fusser23	443	1	HEL	dw i yn sure	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser23	445	1	HEL	oh yeah dw i yn sure yeah yeah	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser23	459	1	HEL	oh toes yna nunlle arall nag oes rwan	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser23	874	1	HEL	dysgu gleidio mae o heno yeah	non-finite	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser23	876	1	HEL	yndy	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser23	876	2	HEL	mae o yn dda iawn	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser23	878	1	HEL	yndy	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser23	878	2	HEL	mae o wedi bod round y byd	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser23	878	3	HEL	yndy	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser23	879	1	HEL	ydy	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser23	879	2	HEL	yndy	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser23	889	1	HEL	oh Y_Fron oedd enw tŷ ni ers talwm	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser23	893	1	HEL	yeah yn lle doth o yna	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser23	893	2	HEL	oedd o	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser23	893	3	HEL	mae sure yeah yeah	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser23	932	1	HEL	argian ydy o yn yr ysgol fawr rwan	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser23	1286	2	HEL	mae o te	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser23	1290	1	HEL	so gewch chi eich holi am Tan_y_Sgrafell rwan	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser23	1294	1	HEL	mae o yn enw odd hefyd	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser23	1296	1	HEL	yndy	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser23	1308	1	HEL	stryd stryd Gymraeg oedd o ta bosib felly te	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser23	1341	1	HEL	oh oes	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser23	1341	2	HEL	dw i sure	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser23	1348	1	HEL	oes	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser23	1356	4	HEL	yndy	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser23	1358	1	HEL	mae yn job cael rooms er lle i wneud rywbeth heddiw	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser23	1360	1	HEL	yndy	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	davies14	776	1	GWA	oh dylanwad Joseph ydy hwnna ynde	\N	cym	monoW	a	1	3	2	1	c	1	3	c	1	4	3	1	3	4	l	(a13cc1l
Siarad	davies14	778	1	GWA	y math o beth mae o licio	\N	cym	monoW	a	1	3	2	1	c	1	3	c	1	4	3	1	3	4	l	(a13cc1l
Siarad	davies14	778	2	GWA	ydy hwnna	\N	cym	monoW	a	1	3	2	1	c	1	3	c	1	4	3	1	3	4	l	(a13cc1l
Siarad	davies14	803	1	GWA	oh mae yn handy cael bobl fel yna yn bobl newydd i_fewn o hyd	\N	cym	monoW	a	1	3	2	1	c	1	3	c	1	4	3	1	3	4	l	(a13cc1l
Siarad	davies14	827	1	GWA	ond does gen dydyn nhw ddim yn mynd ar ryw daith eto	\N	cym	monoW	a	1	3	2	1	c	1	3	c	1	4	3	1	3	4	l	(a13cc1l
Siarad	davies14	834	1	GWA	mae nhw licio teithio	\N	cym	monoW	a	1	3	2	1	c	1	3	c	1	4	3	1	3	4	l	(a13cc1l
Siarad	davies14	242	1	GWA	dw i ddim yn meddwl	\N	cym	monoW	a	1	3	2	1	c	1	3	c	1	4	3	1	3	4	l	(a13cc1l
Siarad	davies14	242	4	GWA	fynd	\N	cym	monoW	a	1	3	2	1	c	1	3	c	1	4	3	1	3	4	l	(a13cc1l
Siarad	davies14	244	1	GWA	fasan nhw yn na dydyn nhw ddim wedi arfer mynd i bethau fel yna	\N	cym	monoW	a	1	3	2	1	c	1	3	c	1	4	3	1	3	4	l	(a13cc1l
Siarad	davies14	246	1	GWA	fasai rhy hir iddyn nhw	\N	cym	monoW	a	1	3	2	1	c	1	3	c	1	4	3	1	3	4	l	(a13cc1l
Siarad	davies14	248	1	GWA	na mae nhw rhy ifanc	\N	cym	monoW	a	1	3	2	1	c	1	3	c	1	4	3	1	3	4	l	(a13cc1l
Siarad	davies14	256	1	GWA	na mae nhw rhy ifanc	\N	cym	monoW	a	1	3	2	1	c	1	3	c	1	4	3	1	3	4	l	(a13cc1l
Siarad	davies14	262	1	GWA	oh fydd o yn orlawn	\N	cym	monoW	a	1	3	2	1	c	1	3	c	1	4	3	1	3	4	l	(a13cc1l
Siarad	davies14	263	1	GWA	wnawn nhw ddim yng ngholli fi de	\N	cym	monoW	a	1	3	2	1	c	1	3	c	1	4	3	1	3	4	l	(a13cc1l
Siarad	davies14	495	1	GWA	i be ydach chi isio ffôn	\N	cym	monoW	a	1	3	2	1	c	1	3	c	1	4	3	1	3	4	l	(a13cc1l
Siarad	stammers6	386	1	BLW	ar y ffordd i yr doctor wnaeth hi ddeud bod gynni hi diabetes  	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	4	d	(a12ba1d
Siarad	stammers6	390	1	BLW	dw i gwybod 	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	4	d	(a12ba1d
Siarad	stammers6	399	1	BLW	be ddylai fi gael i fwyta Mammy 	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	4	d	(a12ba1d
Siarad	stammers6	401	1	BLW	dw i isio risotto 	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	4	d	(a12ba1d
Siarad	stammers6	406	1	BLW	yeah mae yn helpu 	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	4	d	(a12ba1d
Siarad	stammers6	759	1	BLW	wnaeth o ddeud 	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	4	d	(a12ba1d
Siarad	stammers6	762	1	BLW	wnaeth o ddeud rywbeth fel yna 	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	4	d	(a12ba1d
Siarad	stammers6	782	1	BLW	fedra i ddim disgwyl tan 	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	4	d	(a12ba1d
Siarad	davies14	497	1	GWA	dw i yma	\N	cym	monoW	a	1	3	2	1	c	1	3	c	1	4	3	1	3	4	l	(a13cc1l
Siarad	davies14	499	1	GWA	mae o bob amser a_ha	\N	cym	monoW	a	1	3	2	1	c	1	3	c	1	4	3	1	3	4	l	(a13cc1l
Siarad	davies14	500	1	GWA	na mae hynna yn wir	\N	cym	monoW	a	1	3	2	1	c	1	3	c	1	4	3	1	3	4	l	(a13cc1l
Siarad	davies14	504	1	GWA	oedd	\N	cym	monoW	a	1	3	2	1	c	1	3	c	1	4	3	1	3	4	l	(a13cc1l
Siarad	davies14	504	2	GWA	dw i yn gwybod	\N	cym	monoW	a	1	3	2	1	c	1	3	c	1	4	3	1	3	4	l	(a13cc1l
Siarad	davies14	506	1	GWA	yeah mae yn sure bod yna rhyw	\N	cym	monoW	a	1	3	2	1	c	1	3	c	1	4	3	1	3	4	l	(a13cc1l
Siarad	davies14	511	1	GWA	Bryn_Llifon yeah oedd o ddim yn hapus o_gwbl	\N	cym	monoW	a	1	3	2	1	c	1	3	c	1	4	3	1	3	4	l	(a13cc1l
Siarad	davies14	516	1	GWA	na well dim yeah oedd o isio gweld yr esgob am hynny	\N	cym	monoW	a	1	3	2	1	c	1	3	c	1	4	3	1	3	4	l	(a13cc1l
Siarad	davies14	517	1	GWA	ond hefyd oedd o wedi cael ryw syniad i 'w ben bod vicar Bangor yn er yn Gatholig	\N	cym	monoW	a	1	3	2	1	c	1	3	c	1	4	3	1	3	4	l	(a13cc1l
Siarad	davies14	522	1	GWA	felly argol oedd hi yn job	\N	cym	monoW	a	1	3	2	1	c	1	3	c	1	4	3	1	3	4	l	(a13cc1l
Siarad	davies14	731	1	GWA	be sy gynno nhw ar y gweill ar hyn o bryd	\N	cym	monoW	a	1	3	2	1	c	1	3	c	1	4	3	1	3	4	l	(a13cc1l
Siarad	davies14	744	1	GWA	fyddan nhw yn canu efo chi	\N	cym	monoW	a	1	3	2	1	c	1	3	c	1	4	3	1	3	4	l	(a13cc1l
Siarad	davies14	746	1	GWA	na na fyddan nhw yn canu efo yr	\N	cym	monoW	a	1	3	2	1	c	1	3	c	1	4	3	1	3	4	l	(a13cc1l
Siarad	davies14	748	2	GWA	ydyn nhw yn bethau	\N	cym	monoW	a	1	3	2	1	c	1	3	c	1	4	3	1	3	4	l	(a13cc1l
Siarad	davies14	748	3	GWA	fyddan nhw yn ei wybod	\N	cym	monoW	a	1	3	2	1	c	1	3	c	1	4	3	1	3	4	l	(a13cc1l
Siarad	davies14	749	1	GWA	neu fyddan nhw yn medru darllen	\N	cym	monoW	a	1	3	2	1	c	1	3	c	1	4	3	1	3	4	l	(a13cc1l
Siarad	fusser26	204	2	TEC	mae yn lle fawr iawn	\N	cym	monoW	a	1	1	1	3	d	1	3	c	1	1	1	3	4	2	g	(a11dc1g
Siarad	fusser26	205	1	TEC	yn un o yr llefydd sy wedi dal ymlaen felly de	\N	cym	monoW	a	1	1	1	3	d	1	3	c	1	1	1	3	4	2	g	(a11dc1g
Siarad	fusser26	207	1	TEC	yndy	\N	cym	monoW	a	1	1	1	3	d	1	3	c	1	1	1	3	4	2	g	(a11dc1g
Siarad	fusser26	209	1	TEC	yndy	\N	cym	monoW	a	1	1	1	3	d	1	3	c	1	1	1	3	4	2	g	(a11dc1g
Siarad	fusser26	211	1	TEC	yndy	\N	cym	monoW	a	1	1	1	3	d	1	3	c	1	1	1	3	4	2	g	(a11dc1g
Siarad	fusser26	247	1	TEC	a lle Benllech dach chi yn deud	\N	cym	monoW	a	1	1	1	3	d	1	3	c	1	1	1	3	4	2	g	(a11dc1g
Siarad	fusser26	267	1	TEC	oedd	\N	cym	monoW	a	1	1	1	3	d	1	3	c	1	1	1	3	4	2	g	(a11dc1g
Siarad	fusser26	280	1	TEC	wnaethoch chi deud wrtho fo am hanes teulu	\N	cym	monoW	a	1	1	1	3	d	1	3	c	1	1	1	3	4	2	g	(a11dc1g
Siarad	fusser26	298	1	TEC	hmm oes	\N	cym	monoW	a	1	1	1	3	d	1	3	c	1	1	1	3	4	2	g	(a11dc1g
Siarad	fusser26	430	1	TEC	yndyn	\N	cym	monoW	a	1	1	1	3	d	1	3	c	1	1	1	3	4	2	g	(a11dc1g
Siarad	fusser26	430	2	TEC	yndyn	\N	cym	monoW	a	1	1	1	3	d	1	3	c	1	1	1	3	4	2	g	(a11dc1g
Siarad	fusser26	441	1	TEC	rheina sy wedi para felly	\N	cym	monoW	a	1	1	1	3	d	1	3	c	1	1	1	3	4	2	g	(a11dc1g
Siarad	fusser26	445	1	TEC	bysai	\N	cym	monoW	a	1	1	1	3	d	1	3	c	1	1	1	3	4	2	g	(a11dc1g
Siarad	stammers6	832	1	BLW	oedd 	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	4	d	(a12ba1d
Siarad	stammers6	838	1	BLW	wnaeth Nain just ffonio hi a gofyn er 	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	4	d	(a12ba1d
Siarad	stammers6	838	3	BLW	os oedd o 	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	4	d	(a12ba1d
Siarad	stammers6	839	1	BLW	oh na ddoe oedd hynna 	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	4	d	(a12ba1d
Siarad	stammers6	1167	1	BLW	mae wedi dwyn sêt fi 	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	4	d	(a12ba1d
Siarad	stammers6	1167	2	BLW	ddechrau efo hi 	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	4	d	(a12ba1d
Siarad	stammers6	1171	1	BLW	mae wedi wneud 	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	4	d	(a12ba1d
Siarad	stammers6	1173	2	BLW	dyna pam dw i yn eistedd yma yn pwsio 	verbless	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	4	d	(a12ba1d
Siarad	stammers6	1176	1	BLW	mae o wedi 	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	4	d	(a12ba1d
Siarad	stammers6	1181	1	BLW	mae Dyfi yn ypsetio fi efo ei fluff 	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	4	d	(a12ba1d
Siarad	stammers6	1183	1	BLW	Dad dw i wedi wneud o 	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	4	d	(a12ba1d
Siarad	stammers6	1185	1	BLW	mae yna fflam 	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	4	d	(a12ba1d
Siarad	stammers6	1206	2	BLW	be ddylech chi 	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	4	d	(a12ba1d
Siarad	stammers6	1206	3	BLW	just gadael i Dyfi impregnate_io rhywun 	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	4	d	(a12ba1d
Siarad	stammers6	1211	1	BLW	pam wyt ti yn sbïo arna fi fel yna 	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	4	d	(a12ba1d
Siarad	fusser12	1129	2	LUN	mae o yn ofnadwy	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	4	1	1	4	g	(a11ba1g
Siarad	fusser26	461	1	TEC	dydyn nhw dim mor mawr	clause division	cym	monoW	a	1	1	1	3	d	1	3	c	1	1	1	3	4	2	g	(a11dc1g
Siarad	fusser26	461	1	TEC	â rheina dach chi yn cael ar ar yr er savannah felly	h	cym	monoW	a	1	1	1	3	d	1	3	c	1	1	1	3	4	2	g	(a11dc1g
Siarad	fusser26	472	1	TEC	dan ni ddim yn gwybod	\N	cym	monoW	a	1	1	1	3	d	1	3	c	1	1	1	3	4	2	g	(a11dc1g
Siarad	fusser26	474	1	TEC	dan ni dim yn gwybod	\N	cym	monoW	a	1	1	1	3	d	1	3	c	1	1	1	3	4	2	g	(a11dc1g
Siarad	fusser26	475	1	TEC	does gynnon ni ddim syniad	if tag then exclude	cym	monoW	a	1	1	1	3	d	1	3	c	1	1	1	3	4	2	g	(a11dc1g
Siarad	fusser26	478	1	TEC	yndyn	\N	cym	monoW	a	1	1	1	3	d	1	3	c	1	1	1	3	4	2	g	(a11dc1g
Siarad	fusser26	478	2	TEC	yndyn	\N	cym	monoW	a	1	1	1	3	d	1	3	c	1	1	1	3	4	2	g	(a11dc1g
Siarad	fusser26	478	3	TEC	mae yna er tua tair troedfedd o wahaniaeth yn y yn yr elephant yn_de	\N	cym	monoW	a	1	1	1	3	d	1	3	c	1	1	1	3	4	2	g	(a11dc1g
Siarad	fusser26	482	1	TEC	yndy mwy na dim	\N	cym	monoW	a	1	1	1	3	d	1	3	c	1	1	1	3	4	2	g	(a11dc1g
Siarad	fusser26	489	1	TEC	ond dw i ddim yn gwybod	\N	cym	monoW	a	1	1	1	3	d	1	3	c	1	1	1	3	4	2	g	(a11dc1g
Siarad	fusser26	664	1	TEC	oedd	\N	cym	monoW	a	1	1	1	3	d	1	3	c	1	1	1	3	4	2	g	(a11dc1g
Siarad	fusser26	665	1	TEC	oedd o yn bosib	\N	cym	monoW	a	1	1	1	3	d	1	3	c	1	1	1	3	4	2	g	(a11dc1g
Siarad	fusser26	697	1	TEC	oedd yna chi ta	\N	cym	monoW	a	1	1	1	3	d	1	3	c	1	1	1	3	4	2	g	(a11dc1g
Siarad	fusser26	699	1	TEC	dw i yn anghofio pethau	\N	cym	monoW	a	1	1	1	3	d	1	3	c	1	1	1	3	4	2	g	(a11dc1g
Siarad	fusser26	699	2	TEC	yndw	\N	cym	monoW	a	1	1	1	3	d	1	3	c	1	1	1	3	4	2	g	(a11dc1g
Siarad	stammers1	434	1	GTH	ydy 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers1	615	1	GTH	Llundain mae yn byw ie 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers1	618	1	GTH	dyna pam oedd Susan yn gofyn	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	davies16	276	1	ADA	Hywel chdi wnaeth ladd un ohonyn nhw de	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	4	4	1	g	(a12ba1g
Siarad	davies16	280	1	ADA	y boy oedd yn sefyll	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	4	4	1	g	(a12ba1g
Siarad	davies16	280	2	ADA	wnaeth	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	4	4	1	g	(a12ba1g
Siarad	davies16	280	3	ADA	wnest ti ladd	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	4	4	1	g	(a12ba1g
Siarad	davies16	285	1	ADA	ac oedda chdi wedi brifo	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	4	4	1	g	(a12ba1g
Siarad	davies16	291	1	ADA	wnaeth hi hitio fo yn braich fo yeah	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	4	4	1	g	(a12ba1g
Siarad	davies16	293	1	ADA	dyna be oedd o	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	4	4	1	g	(a12ba1g
Siarad	davies16	298	1	ADA	lle ti wedi mynd tro yma	clause division	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	4	4	1	g	(a12ba1g
Siarad	fusser21	367	1	HAW	dw i meddwl	h	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	stammers1	618	3	GTH	o'n i nabod hi am bod hi dod o Llanfaircaereinion ti weld o Sir_Drefaldwyn de 	nonfin	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers1	624	1	GTH	mae fyd bach 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser26	704	1	TEC	dw i yn cofio digon hefyd ddeud y gwir felly	\N	cym	monoW	a	1	1	1	3	d	1	3	c	1	1	1	3	4	2	g	(a11dc1g
Siarad	fusser26	754	1	TEC	ond pam bysech chi yn claddu yr peth	clause division	cym	monoW	a	1	1	1	3	d	1	3	c	1	1	1	3	4	2	g	(a11dc1g
Siarad	fusser26	756	1	TEC	mae hynna yn deud rywbeth i chi yn_dydy	\N	cym	monoW	a	1	1	1	3	d	1	3	c	1	1	1	3	4	2	g	(a11dc1g
Siarad	fusser26	758	2	TEC	oedd yna bethau	\N	cym	monoW	a	1	1	1	3	d	1	3	c	1	1	1	3	4	2	g	(a11dc1g
Siarad	fusser26	758	3	TEC	oedd yn gweithio yn iawn de	\N	cym	monoW	a	1	1	1	3	d	1	3	c	1	1	1	3	4	2	g	(a11dc1g
Siarad	fusser26	760	2	TEC	wedyn oedd y y ddafad yn diflannu	\N	cym	monoW	a	1	1	1	3	d	1	3	c	1	1	1	3	4	2	g	(a11dc1g
Siarad	fusser26	760	3	TEC	pan oedd yr eli yn sychu yn_doedd	\N	cym	monoW	a	1	1	1	3	d	1	3	c	1	1	1	3	4	2	g	(a11dc1g
Siarad	roberts3	336	1	LER	oedd yr um y ddrama yn yn cario yn ei blaen heddiw beth bynnag 	\N	cym	monoW	a	1	1	1	3	d	1	3	c	1	1	1	1	1	1	b	(a11dc1b
Siarad	roberts3	339	1	LER	oedd 	\N	cym	monoW	a	1	1	1	3	d	1	3	c	1	1	1	1	1	1	b	(a11dc1b
Siarad	roberts3	339	2	LER	oedd 	\N	cym	monoW	a	1	1	1	3	d	1	3	c	1	1	1	1	1	1	b	(a11dc1b
Siarad	roberts3	339	3	LER	oedd Sally wedi ffonio 	\N	cym	monoW	a	1	1	1	3	d	1	3	c	1	1	1	1	1	1	b	(a11dc1b
Siarad	roberts3	340	1	LER	ac oedd um 	\N	cym	monoW	a	1	1	1	3	d	1	3	c	1	1	1	1	1	1	b	(a11dc1b
Siarad	roberts3	340	2	LER	oedd bob_dim yn 	\N	cym	monoW	a	1	1	1	3	d	1	3	c	1	1	1	1	1	1	b	(a11dc1b
Siarad	roberts3	341	1	LER	oedd o yn dal mewn poen 	\N	cym	monoW	a	1	1	1	3	d	1	3	c	1	1	1	1	1	1	b	(a11dc1b
Siarad	roberts3	341	2	LER	dw meddwl 	\N	cym	monoW	a	1	1	1	3	d	1	3	c	1	1	1	1	1	1	b	(a11dc1b
Siarad	roberts3	342	1	LER	wedyn oedd o ddim yn mynd 	\N	cym	monoW	a	1	1	1	3	d	1	3	c	1	1	1	1	1	1	b	(a11dc1b
Siarad	roberts3	342	2	LER	i fod yn rhedeg o_gwmpas gymaint 	\N	cym	monoW	a	1	1	1	3	d	1	3	c	1	1	1	1	1	1	b	(a11dc1b
Siarad	roberts3	342	5	LER	mae nhw fod felly 	\N	cym	monoW	a	1	1	1	3	d	1	3	c	1	1	1	1	1	1	b	(a11dc1b
Siarad	roberts3	362	1	LER	argoel mi oedd 	\N	cym	monoW	a	1	1	1	3	d	1	3	c	1	1	1	1	1	1	b	(a11dc1b
Siarad	roberts3	365	1	LER	ysgol Tryfan ddaru fi 	\N	cym	monoW	a	1	1	1	3	d	1	3	c	1	1	1	1	1	1	b	(a11dc1b
Siarad	roberts3	365	2	LER	fynd i bore dydd Llun de 	\N	cym	monoW	a	1	1	1	3	d	1	3	c	1	1	1	1	1	1	b	(a11dc1b
Siarad	roberts3	372	1	LER	argoel dach chi 	\N	cym	monoW	a	1	1	1	3	d	1	3	c	1	1	1	1	1	1	b	(a11dc1b
Siarad	roberts3	683	1	LER	dw i mynd i ffonio Graham yn munud 	\N	cym	monoW	a	1	1	1	3	d	1	3	c	1	1	1	1	1	1	b	(a11dc1b
Siarad	roberts3	683	5	LER	bydd raid fi weithio yn hwyr 	\N	cym	monoW	a	1	1	1	3	d	1	3	c	1	1	1	1	1	1	b	(a11dc1b
Siarad	roberts3	684	1	LER	fydd raid fi weithio tan tua hanner wedi pump chwech heno 	\N	cym	monoW	a	1	1	1	3	d	1	3	c	1	1	1	1	1	1	b	(a11dc1b
Siarad	roberts3	684	2	LER	mae sure i orffen bob_dim 	\N	cym	monoW	a	1	1	1	3	d	1	3	c	1	1	1	1	1	1	b	(a11dc1b
Siarad	roberts4	659	1	LIL	bysai 	\N	cym	monoW	a	1	2	2	2	d	3	1	c	1	4	4	4	1	1	k	(a12dc1k
Siarad	roberts4	650	1	LIL	alla i 	\N	cym	monoW	a	1	2	2	2	d	3	1	c	1	4	4	4	1	1	k	(a12dc1k
Siarad	roberts4	318	1	LIL	dydy hwnna ddim i fod edrych fel yna 	\N	cym	monoW	a	1	2	2	2	d	3	1	c	1	4	4	4	1	1	k	(a12dc1k
Siarad	roberts4	319	1	LIL	cer i yr sbyty 	\N	cym	monoW	a	1	2	2	2	d	3	1	c	1	4	4	4	1	1	k	(a12dc1k
Siarad	roberts4	319	2	LIL	os gwelwch yn dda 	\N	cym	monoW	a	1	2	2	2	d	3	1	c	1	4	4	4	1	1	k	(a12dc1k
Siarad	roberts4	321	1	LIL	a oedd hi wedi torri ei asgwrn yn cefn ei ffêr 	\N	cym	monoW	a	1	2	2	2	d	3	1	c	1	4	4	4	1	1	k	(a12dc1k
Siarad	roberts4	331	1	LIL	na wnes i ffeindio fo yn 	\N	cym	monoW	a	1	2	2	2	d	3	1	c	1	4	4	4	1	1	k	(a12dc1k
Siarad	davies16	545	1	ADA	ond mae o yn cymryd	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	4	4	1	g	(a12ba1g
Siarad	davies16	552	1	ADA	sut dw i yn cael nhw mor fast	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	4	4	1	g	(a12ba1g
Siarad	davies16	553	2	ADA	bod o wedi sbïo lle	clause division	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	4	4	1	g	(a12ba1g
Siarad	davies16	553	3	ADA	os o'n i yna	h	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	4	4	1	g	(a12ba1g
Siarad	davies16	584	1	ADA	mae yna un boy yn y steps	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	4	4	1	g	(a12ba1g
Siarad	davies16	589	1	ADA	lle mae William	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	4	4	1	g	(a12ba1g
Siarad	davies16	590	1	ADA	lle aeth hynna ddod o	clause division	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	4	4	1	g	(a12ba1g
Siarad	davies16	595	1	ADA	mae raid na ar_hyd y tu_allan	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	4	4	1	g	(a12ba1g
Siarad	davies16	595	2	ADA	aeth William	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	4	4	1	g	(a12ba1g
Siarad	fusser21	666	3	ILI	mynd â hwnna	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	roberts3	687	1	LER	yndy sti 	\N	cym	monoW	a	1	1	1	3	d	1	3	c	1	1	1	1	1	1	b	(a11dc1b
Siarad	roberts3	688	1	LER	oedd hi yn fan yna 	\N	cym	monoW	a	1	1	1	3	d	1	3	c	1	1	1	1	1	1	b	(a11dc1b
Siarad	roberts3	692	1	LER	a ac oedd o'n i wedi 	\N	cym	monoW	a	1	1	1	3	d	1	3	c	1	1	1	1	1	1	b	(a11dc1b
Siarad	roberts3	692	2	LER	oedd gyn i ryw searches i orffen ti gweld	\N	cym	monoW	a	1	1	1	3	d	1	3	c	1	1	1	1	1	1	b	(a11dc1b
Siarad	roberts3	694	1	LER	o'n isio gofyn question wrthi 	\N	cym	monoW	a	1	1	1	3	d	1	3	c	1	1	1	1	1	1	b	(a11dc1b
Siarad	roberts3	697	1	LER	ooh dydy hyn ddim fath â Anwen felly 	\N	cym	monoW	a	1	1	1	3	d	1	3	c	1	1	1	1	1	1	b	(a11dc1b
Siarad	roberts3	699	1	LER	ac oedd hi fan yna 	\N	cym	monoW	a	1	1	1	3	d	1	3	c	1	1	1	1	1	1	b	(a11dc1b
Siarad	roberts3	699	2	LER	a mae yn fel yna 	\N	cym	monoW	a	1	1	1	3	d	1	3	c	1	1	1	1	1	1	b	(a11dc1b
Siarad	roberts3	701	1	LER	meddai fi wrthi 	\N	cym	monoW	a	1	1	1	3	d	1	3	c	1	1	1	1	1	1	b	(a11dc1b
Siarad	roberts3	1031	1	LER	wyt ti mynd mwy seisnigaidd fel 	\N	cym	monoW	a	1	1	1	3	d	1	3	c	1	1	1	1	1	1	b	(a11dc1b
Siarad	roberts4	331	2	LIL	wnes i ffeindio bod fi wedi dysgu lot am orthopaedics 	\N	cym	monoW	a	1	2	2	2	d	3	1	c	1	4	4	4	1	1	k	(a12dc1k
Siarad	roberts4	333	1	LIL	a well ti yn gwybod 	aux deletion: fine	cym	monoW	a	1	2	2	2	d	3	1	c	1	4	4	4	1	1	k	(a12dc1k
Siarad	roberts4	333	2	LIL	wnes i fwynhau 	\N	cym	monoW	a	1	2	2	2	d	3	1	c	1	4	4	4	1	1	k	(a12dc1k
Siarad	roberts4	337	1	LIL	ddim dw ddim yn gwybod 	\N	cym	monoW	a	1	2	2	2	d	3	1	c	1	4	4	4	1	1	k	(a12dc1k
Siarad	roberts4	337	2	LIL	os baswn i yn gallu gweithio just efo esgyrn drwy yr amser 	\N	cym	monoW	a	1	2	2	2	d	3	1	c	1	4	4	4	1	1	k	(a12dc1k
Siarad	roberts4	340	1	LIL	oedd y staff yna yn mor nice a barod i helpu ti 	\N	cym	monoW	a	1	2	2	2	d	3	1	c	1	4	4	4	1	1	k	(a12dc1k
Siarad	roberts4	636	1	LIL	pam ddiawl faset ti talu gymaint â hynny 	\N	cym	monoW	a	1	2	2	2	d	3	1	c	1	4	4	4	1	1	k	(a12dc1k
Siarad	roberts4	651	1	LIL	alla i ddeud wrthot ti bod o yn cymryd saith awr i yrru yna  	\N	cym	monoW	a	1	2	2	2	d	3	1	c	1	4	4	4	1	1	k	(a12dc1k
Siarad	roberts4	655	1	LIL	na dw i gwybod 	\N	cym	monoW	a	1	2	2	2	d	3	1	c	1	4	4	4	1	1	k	(a12dc1k
Siarad	roberts4	669	1	LIL	well does yna ddim 	\N	cym	monoW	a	1	2	2	2	d	3	1	c	1	4	4	4	1	1	k	(a12dc1k
Siarad	roberts4	669	2	LIL	does yna ddim 	\N	cym	monoW	a	1	2	2	2	d	3	1	c	1	4	4	4	1	1	k	(a12dc1k
Siarad	roberts4	670	1	LIL	wnaethon ni gampio yna 	\N	cym	monoW	a	1	2	2	2	d	3	1	c	1	4	4	4	1	1	k	(a12dc1k
Siarad	roberts4	670	2	LIL	pan oedden ni yn chweched isa 	\N	cym	monoW	a	1	2	2	2	d	3	1	c	1	4	4	4	1	1	k	(a12dc1k
Siarad	roberts4	670	3	LIL	dw i meddwl neu just ar_ôl T_G_A_U 	\N	cym	monoW	a	1	2	2	2	d	3	1	c	1	4	4	4	1	1	k	(a12dc1k
Siarad	roberts4	672	1	LIL	er mae yn iawn de 	\N	cym	monoW	a	1	2	2	2	d	3	1	c	1	4	4	4	1	1	k	(a12dc1k
Siarad	roberts4	673	1	LIL	ond does yna ddim lot i wneud 	\N	cym	monoW	a	1	2	2	2	d	3	1	c	1	4	4	4	1	1	k	(a12dc1k
Siarad	roberts4	678	1	LIL	yndy 	\N	cym	monoW	a	1	2	2	2	d	3	1	c	1	4	4	4	1	1	k	(a12dc1k
Siarad	roberts4	970	2	LIL	os dw i yn ffaelio yr arholiad yma 	\N	cym	monoW	a	1	2	2	2	d	3	1	c	1	4	4	4	1	1	k	(a12dc1k
Siarad	roberts4	981	1	LIL	gawn ni obeithio de 	\N	cym	monoW	a	1	2	2	2	d	3	1	c	1	4	4	4	1	1	k	(a12dc1k
Siarad	roberts4	983	1	LIL	oh dw i sure ti yn gwybod dydyn nhw ddim isio ffaelio ni 	\N	cym	monoW	a	1	2	2	2	d	3	1	c	1	4	4	4	1	1	k	(a12dc1k
Siarad	roberts4	985	1	LIL	well efo rei pobl dw i sure bod fi wedi anghytuno efo nhw ddigon i iddyn nhw 	\N	cym	monoW	a	1	2	2	2	d	3	1	c	1	4	4	4	1	1	k	(a12dc1k
Siarad	davies16	598	1	ADA	na dw i ddim yn trystio fan yna	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	4	4	1	g	(a12ba1g
Siarad	davies16	859	1	ADA	William ges i gynta	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	4	4	1	g	(a12ba1g
Siarad	davies16	860	1	ADA	os wnaeth hynna helpu	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	4	4	1	g	(a12ba1g
Siarad	davies16	862	1	ADA	ond doedd Dafydd methu chainsaw_io fi o mor bell â hynna nag	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	4	4	1	g	(a12ba1g
Siarad	davies16	862	2	ADA	oedd	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	4	4	1	g	(a12ba1g
Siarad	fusser16	376	2	ANW	oedd hi yn oer ta tywydd	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	1	1	1	1	1	b	(a14ba1b
Siarad	fusser16	397	1	ANW	a wedyn oedd gofyn bod chi wedi mynd â gwahanol fath o ddillad felly	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	1	1	1	1	1	b	(a14ba1b
Siarad	fusser16	411	1	ANW	peth ofnadwy ydy bod yn oer de	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	1	1	1	1	1	b	(a14ba1b
Siarad	fusser16	418	1	ANW	um trip Edward oedd o	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	1	1	1	1	1	b	(a14ba1b
Siarad	roberts4	989	1	LIL	ond dw i 	\N	cym	monoW	a	1	2	2	2	d	3	1	c	1	4	4	4	1	1	k	(a12dc1k
Siarad	roberts4	989	2	LIL	dw i ddim 	\N	cym	monoW	a	1	2	2	2	d	3	1	c	1	4	4	4	1	1	k	(a12dc1k
Siarad	roberts4	989	3	LIL	wnes i ddod allan 	\N	cym	monoW	a	1	2	2	2	d	3	1	c	1	4	4	4	1	1	k	(a12dc1k
Siarad	roberts4	989	4	LIL	dw o'n i fel ti yn yn meddwl 	\N	cym	monoW	a	1	2	2	2	d	3	1	c	1	4	4	4	1	1	k	(a12dc1k
Siarad	roberts4	989	5	LIL	bod o wedi mynd yn iawn 	\N	cym	monoW	a	1	2	2	2	d	3	1	c	1	4	4	4	1	1	k	(a12dc1k
Siarad	roberts4	1007	1	LIL	dydy o ddim yn cymryd yn ry 	\N	cym	monoW	a	1	2	2	2	d	3	1	c	1	4	4	4	1	1	k	(a12dc1k
Siarad	roberts4	1008	1	LIL	dw sure bod nhw wedi marcio nhw couple o wythnosau nôl 	\N	cym	monoW	a	1	2	2	2	d	3	1	c	1	4	4	4	1	1	k	(a12dc1k
Siarad	roberts4	1010	1	LIL	oh yeah wnest ti ddeud 	\N	cym	monoW	a	1	2	2	2	d	3	1	c	1	4	4	4	1	1	k	(a12dc1k
Siarad	roberts4	1015	1	LIL	oedd hi yn gwybod 	\N	cym	monoW	a	1	2	2	2	d	3	1	c	1	4	4	4	1	1	k	(a12dc1k
Siarad	roberts3	1031	2	LER	mae yr diwrnodau mynd yn eu blaen de 	\N	cym	monoW	a	1	1	1	3	d	1	3	c	1	1	1	1	1	1	b	(a11dc1b
Siarad	roberts3	1033	1	LER	mae yn dod adre efo rywbeth 	\N	cym	monoW	a	1	1	1	3	d	1	3	c	1	1	1	1	1	1	b	(a11dc1b
Siarad	roberts3	1034	1	LER	a mae 	\N	cym	monoW	a	1	1	1	3	d	1	3	c	1	1	1	1	1	1	b	(a11dc1b
Siarad	roberts3	1034	2	LER	mae raid bod o 	\N	cym	monoW	a	1	1	1	3	d	1	3	c	1	1	1	1	1	1	b	(a11dc1b
Siarad	roberts3	1035	1	LER	ond dw ddim yn deud 	\N	cym	monoW	a	1	1	1	3	d	1	3	c	1	1	1	1	1	1	b	(a11dc1b
Siarad	roberts3	1035	2	LER	mae lot o yr lot o ei ffrindiau bach o 	\N	cym	monoW	a	1	1	1	3	d	1	3	c	1	1	1	1	1	1	b	(a11dc1b
Siarad	roberts3	1035	3	LER	sy yn y meithrinfa yn saesneg ti yn gweld 	\N	cym	monoW	a	1	1	1	3	d	1	3	c	1	1	1	1	1	1	b	(a11dc1b
Siarad	roberts3	1039	1	LER	yndy 	\N	cym	monoW	a	1	1	1	3	d	1	3	c	1	1	1	1	1	1	b	(a11dc1b
Siarad	roberts3	1041	1	LER	Saesneg adre yndy sure 	\N	cym	monoW	a	1	1	1	3	d	1	3	c	1	1	1	1	1	1	b	(a11dc1b
Siarad	roberts3	1047	1	LER	yndy 	\N	cym	monoW	a	1	1	1	3	d	1	3	c	1	1	1	1	1	1	b	(a11dc1b
Siarad	roberts3	1048	1	LER	yndy sti 	\N	cym	monoW	a	1	1	1	3	d	1	3	c	1	1	1	1	1	1	b	(a11dc1b
Siarad	roberts3	1050	1	LER	ond um argoel dw yn cofio 	\N	cym	monoW	a	1	1	1	3	d	1	3	c	1	1	1	1	1	1	b	(a11dc1b
Siarad	roberts3	1050	2	LER	oedd yna hogan er efo fi pan o'n i yn gweithio yn Trawsfynydd 	\N	cym	monoW	a	1	1	1	3	d	1	3	c	1	1	1	1	1	1	b	(a11dc1b
Siarad	roberts4	1015	2	LIL	be oeddet ti yn trio wneud	\N	cym	monoW	a	1	2	2	2	d	3	1	c	1	4	4	4	1	1	k	(a12dc1k
Siarad	roberts4	1019	1	LIL	dydy hi ddim yn misio lot nac 	\N	cym	monoW	a	1	2	2	2	d	3	1	c	1	4	4	4	1	1	k	(a12dc1k
Siarad	roberts4	1019	2	LIL	ydy 	\N	cym	monoW	a	1	2	2	2	d	3	1	c	1	4	4	4	1	1	k	(a12dc1k
Siarad	stammers1	198	1	GTH	ond er dw i falch ar y diawch bod Rhodri wedi ymgymeryd â gwneud y llyfr yma yn ddwyieithog te 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers1	200	1	GTH	dwn i ddim sawl club golf arall 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers1	200	2	GTH	sy yn yn gogledd Cymru wedi cyhoeddi llyfr dwyieithog de 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers1	204	1	GTH	yeah fysai yn ddifyr cael gwybod yn_de 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers1	208	1	GTH	dw i yn dal yn gadeirydd arno fo sti 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers1	216	1	GTH	mae ddiddorol 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers1	217	1	GTH	dw i cofio pan ddos i Fangor gynta mi 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers1	217	2	GTH	fyddai yr er 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers1	217	3	GTH	fyddwn ni byw lawr yn gwaelod dre yn Hirael 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers1	218	1	GTH	a mi oedd y bachan yn byw drws nesa i ni 	all one claue	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	davies16	865	1	ADA	oh oedden ni yn chwarae Balderdash neithiwr	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	4	4	1	g	(a12ba1g
Siarad	davies16	868	1	ADA	lle mae yna	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	4	4	1	g	(a12ba1g
Siarad	davies16	871	1	ADA	ti yn gorfod wneud	clause division	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	4	4	1	g	(a12ba1g
Siarad	davies16	871	2	ADA	ti yn gorfod invent_io ateb	check transcript and exclude material before repair	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	4	4	1	g	(a12ba1g
Siarad	davies16	874	1	ADA	ac er un o yr atebion go_wir oedd	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	4	4	1	g	(a12ba1g
Siarad	davies16	880	1	ADA	mae Hywel deud wrtha chdi stopio iwsio moonwalk	clause division	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	4	4	1	g	(a12ba1g
Siarad	davies16	885	1	ADA	yeah iawn meddai fo	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	4	4	1	g	(a12ba1g
Siarad	davies2	384	1	GRE	a fyddan nhw dipyn mwy a timod pethau gwell hefyd	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	4	4	g	(a13ba1g
Siarad	davies2	387	1	GRE	achos mae yr rai yn yr lle cyfathrebu yn um torri trwy yr amser sti	clause division	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	4	4	g	(a13ba1g
Siarad	davies2	391	1	GRE	ond oeddach chdi yn gwybod	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	4	4	g	(a13ba1g
Siarad	davies2	391	3	GRE	mae yr B_B_C yn defnyddio studios prifysgol weithiau sti	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	4	4	g	(a13ba1g
Siarad	davies2	391	4	GRE	os oes gennyn nhw lot o bethau ymlaen yr un pryd	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	4	4	g	(a13ba1g
Siarad	davies2	393	1	GRE	yndy neu deud bod er pŵer nhw lawr neu rywbeth	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	4	4	g	(a13ba1g
Siarad	stammers1	219	1	GTH	yeah un o Morfa_Nefyn oedd o 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers1	220	1	GTH	a mi oedd o yn yr heddlu a finnau yn yr heddlu felly wrth_gwrs 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers1	409	1	GTH	mae o 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers1	409	2	GTH	mae yna ormod o gysylltiad â Penrhyn wedi bod  	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers1	410	1	GTH	mae hwnna wedi mynd lot ohono wedi mynd 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers1	412	1	GTH	ond er um mae lot o bobl ifanc Bethesda yn aelodau bellach de 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers1	414	1	GTH	a mae nhw yn dechrau 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers1	414	2	GTH	anghofio hynny felly yn_de 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers1	417	1	GTH	mae wedi cymryd 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers1	417	2	GTH	wyt ti sôn am bron i gan mlynedd yn_de 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers1	424	1	GTH	na mae yr ambell un wedi deud 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	smith1	159	1	DEW	wneith o wraig da i rywun 	\N	cym	monoW	a	3	1	2	2	d	2	2	c	1	4	3	0	0	0	n	(a31dc1n
Siarad	smith1	168	1	DEW	mae yna sioe fel yma yeah pedwar diwrnod yeah 	\N	cym	monoW	a	3	1	2	2	d	2	2	c	1	4	3	0	0	0	n	(a31dc1n
Siarad	smith1	179	1	DEW	wneith o ddim sure heb caniatâd 	\N	cym	monoW	a	3	1	2	2	d	2	2	c	1	4	3	0	0	0	n	(a31dc1n
Siarad	smith1	202	1	DEW	o'n i meddwl Lerpwl 	\N	cym	monoW	a	3	1	2	2	d	2	2	c	1	4	3	0	0	0	n	(a31dc1n
Siarad	smith1	202	2	DEW	oedda chdi syportio 	\N	cym	monoW	a	3	1	2	2	d	2	2	c	1	4	3	0	0	0	n	(a31dc1n
Siarad	smith1	209	1	DEW	pwy ydy chwaraewr gorau chdi 	\N	cym	monoW	a	3	1	2	2	d	2	2	c	1	4	3	0	0	0	n	(a31dc1n
Siarad	smith1	211	1	DEW	ti ddim gwybod 	aux deleted, fine	cym	monoW	a	3	1	2	2	d	2	2	c	1	4	3	0	0	0	n	(a31dc1n
Siarad	smith1	214	1	DEW	mae o yn Gymro 	\N	cym	monoW	a	3	1	2	2	d	2	2	c	1	4	3	0	0	0	n	(a31dc1n
Siarad	smith1	214	2	DEW	yndy 	\N	cym	monoW	a	3	1	2	2	d	2	2	c	1	4	3	0	0	0	n	(a31dc1n
Siarad	smith1	218	1	DEW	mae o dda hefyd 	\N	cym	monoW	a	3	1	2	2	d	2	2	c	1	4	3	0	0	0	n	(a31dc1n
Siarad	smith1	219	1	DEW	oedd o chwarae neithiwr 	\N	cym	monoW	a	3	1	2	2	d	2	2	c	1	4	3	0	0	0	n	(a31dc1n
Siarad	smith1	396	1	DEW	mae yn anodd weithiau dallt 	\N	cym	monoW	a	3	1	2	2	d	2	2	c	1	4	3	0	0	0	n	(a31dc1n
Siarad	smith1	396	2	DEW	yndy 	\N	cym	monoW	a	3	1	2	2	d	2	2	c	1	4	3	0	0	0	n	(a31dc1n
Siarad	smith1	401	1	DEW	wn i 	\N	cym	monoW	a	3	1	2	2	d	2	2	c	1	4	3	0	0	0	n	(a31dc1n
Siarad	smith1	404	1	DEW	well mae pawb yn dallt o fel yna 	\N	cym	monoW	a	3	1	2	2	d	2	2	c	1	4	3	0	0	0	n	(a31dc1n
Siarad	smith1	404	2	DEW	yndy 	\N	cym	monoW	a	3	1	2	2	d	2	2	c	1	4	3	0	0	0	n	(a31dc1n
Siarad	davies2	395	1	GRE	mae gennyn nhw hawl i dod a cleimio	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	4	4	g	(a13ba1g
Siarad	davies2	412	1	GRE	na paid â poeni	clause division	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	4	4	g	(a13ba1g
Siarad	davies2	419	1	GRE	oh yeah deud wrtha fo wneud o	clause division	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	4	4	g	(a13ba1g
Siarad	davies2	419	3	GRE	pan fydd Mari yn cael babi	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	4	4	g	(a13ba1g
Siarad	davies2	419	4	GRE	so geith hi gwrando arnof fi	clause division	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	4	4	g	(a13ba1g
Siarad	davies2	429	1	GRE	yndy yn union	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	4	4	g	(a13ba1g
Siarad	davies2	431	2	GRE	fasai cwrs yn	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	4	4	g	(a13ba1g
Siarad	davies2	431	4	GRE	basai	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	4	4	g	(a13ba1g
Siarad	davies2	801	1	GRE	be ddeudodd o	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	4	4	g	(a13ba1g
Siarad	davies2	803	2	GRE	a wnes i ddeud	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	4	4	g	(a13ba1g
Siarad	stammers1	424	2	GTH	na fysan nhw byth 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers1	424	3	GTH	yn rhoi 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers1	424	4	GTH	troed tu fewn y club acw felly yn_de 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers1	426	1	GTH	ond mae 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers1	426	2	GTH	mae hynny wedi gweithio 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers1	427	1	GTH	er wn i am un 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers1	427	2	GTH	ddeudodd fwy nag unwaith 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers1	430	1	GTH	ond mae o wedi dechrau 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers1	430	2	GTH	dŵad i yr club felly yn_de 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers1	626	1	GTH	mae yna rywun yn bobman 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers1	630	1	GTH	mae pobl ifanc gorod mynd o yna ti 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers1	637	1	GTH	does yna ddim arall ar_ôl yna nag 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers1	637	2	GTH	oes 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	smith1	410	1	DEW	does yna ddim_byd 	\N	cym	monoW	a	3	1	2	2	d	2	2	c	1	4	3	0	0	0	n	(a31dc1n
Siarad	smith1	410	2	DEW	does yna ddim_byd yn wrong ar iaith gogs nag 	\N	cym	monoW	a	3	1	2	2	d	2	2	c	1	4	3	0	0	0	n	(a31dc1n
Siarad	smith1	410	3	DEW	oes eh 	\N	cym	monoW	a	3	1	2	2	d	2	2	c	1	4	3	0	0	0	n	(a31dc1n
Siarad	smith1	413	1	DEW	faint o gloch ydy wan 	\N	cym	monoW	a	3	1	2	2	d	2	2	c	1	4	3	0	0	0	n	(a31dc1n
Siarad	smith1	416	1	DEW	nag ydy 	\N	cym	monoW	a	3	1	2	2	d	2	2	c	1	4	3	0	0	0	n	(a31dc1n
Siarad	smith1	417	1	DEW	mae 	\N	cym	monoW	a	3	1	2	2	d	2	2	c	1	4	3	0	0	0	n	(a31dc1n
Siarad	smith1	417	2	DEW	gynnon ni hanner awr i fynd 	\N	cym	monoW	a	3	1	2	2	d	2	2	c	1	4	3	0	0	0	n	(a31dc1n
Siarad	smith1	420	1	DEW	Duw mae amser wedi mynd hefyd 	\N	cym	monoW	a	3	1	2	2	d	2	2	c	1	4	3	0	0	0	n	(a31dc1n
Siarad	smith1	426	1	DEW	basai nice i ennill yr er y dafad yna 	\N	cym	monoW	a	3	1	2	2	d	2	2	c	1	4	3	0	0	0	n	(a31dc1n
Siarad	smith1	428	1	DEW	er rocio i Eddie bysai 	\N	cym	monoW	a	3	1	2	2	d	2	2	c	1	4	3	0	0	0	n	(a31dc1n
Siarad	smith1	613	1	DEW	fydd o yn Clwb_Pêl_droed Cymru 	\N	cym	monoW	a	3	1	2	2	d	2	2	c	1	4	3	0	0	0	n	(a31dc1n
Siarad	smith1	616	1	DEW	oh basai wedi gallu bod 	\N	cym	monoW	a	3	1	2	2	d	2	2	c	1	4	3	0	0	0	n	(a31dc1n
Siarad	smith1	618	1	DEW	petasen nhw wedi ennill y game nesa 	\N	cym	monoW	a	3	1	2	2	d	2	2	c	1	4	3	0	0	0	n	(a31dc1n
Siarad	smith1	618	2	DEW	dw i sure 	\N	cym	monoW	a	3	1	2	2	d	2	2	c	1	4	3	0	0	0	n	(a31dc1n
Siarad	smith1	618	3	DEW	basai fo 	\N	cym	monoW	a	3	1	2	2	d	2	2	c	1	4	3	0	0	0	n	(a31dc1n
Siarad	smith1	618	4	DEW	basai fo yn gael yeah 	\N	cym	monoW	a	3	1	2	2	d	2	2	c	1	4	3	0	0	0	n	(a31dc1n
Siarad	smith1	620	1	DEW	bysai 	\N	cym	monoW	a	3	1	2	2	d	2	2	c	1	4	3	0	0	0	n	(a31dc1n
Siarad	smith1	622	1	DEW	dipyn bach o luck mae o isio yeah 	\N	cym	monoW	a	3	1	2	2	d	2	2	c	1	4	3	0	0	0	n	(a31dc1n
Siarad	smith1	633	1	DEW	wnest ti ddechrau traenio rugby 	\N	cym	monoW	a	3	1	2	2	d	2	2	c	1	4	3	0	0	0	n	(a31dc1n
Siarad	smith1	638	1	DEW	basa chdi wneud prop da 	\N	cym	monoW	a	3	1	2	2	d	2	2	c	1	4	3	0	0	0	n	(a31dc1n
Siarad	smith1	638	2	DEW	byset 	\N	cym	monoW	a	3	1	2	2	d	2	2	c	1	4	3	0	0	0	n	(a31dc1n
Siarad	smith1	640	1	DEW	del del oedd y cŵn bach yna fan acw gynnau yeah 	\N	cym	monoW	a	3	1	2	2	d	2	2	c	1	4	3	0	0	0	n	(a31dc1n
Siarad	smith1	644	1	DEW	bysai 	\N	cym	monoW	a	3	1	2	2	d	2	2	c	1	4	3	0	0	0	n	(a31dc1n
Siarad	smith1	645	1	DEW	oh na bloody Dolig basai hwnna yn iawn sure 	\N	cym	monoW	a	3	1	2	2	d	2	2	c	1	4	3	0	0	0	n	(a31dc1n
Siarad	davies2	803	3	GRE	na dw i ddim yn Brydeinwraig	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	4	4	g	(a13ba1g
Siarad	davies2	803	4	GRE	dw i yn Gymraes	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	4	4	g	(a13ba1g
Siarad	davies2	805	1	GRE	ia ac oedd o just fath â na ti yn Brydeinwraig	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	4	4	g	(a13ba1g
Siarad	davies2	806	1	GRE	ti yn byw yn Brydain	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	4	4	g	(a13ba1g
Siarad	davies2	808	1	GRE	yr unig bobl sy yn credu yn Prydain Fawr	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	4	4	g	(a13ba1g
Siarad	fusser16	432	1	ANW	yndy	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	1	1	1	1	1	b	(a14ba1b
Siarad	fusser16	436	1	ANW	o'n i yn darllen yn papur ddoe	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	1	1	1	1	1	b	(a14ba1b
Siarad	fusser16	436	2	ANW	dw i sure	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	1	1	1	1	1	b	(a14ba1b
Siarad	fusser16	437	1	ANW	dyn nhw yn agor ysgol Gymraeg newydd yna	clause division	cym	monoW	a	1	4	1	1	b	1	1	a	1	1	1	1	1	1	b	(a14ba1b
Siarad	roberts4	972	2	MEC	wneud os 	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	4	4	4	1	k	(a12bb1k
Siarad	stammers1	640	1	GTH	does yna fawr o ddim_byd yn fan yno ti weld de 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers1	643	1	GTH	a dyna sy yn digwydd mewn lot o lefydd ti 	nonfin	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers1	643	3	GTH	weld yn_de 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers1	651	1	GTH	oh wela i 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers1	668	1	GTH	mae Gwenith a Marian yn rheina 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers1	668	2	GTH	yndyn 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	davies9	114	2	LLE	mae nhw wedi methu dau gig	\N	cym	monoW	a	1	1	2	3	e	2	2	c	1	4	1	1	3	4	j	(a11ec1j
Siarad	davies9	116	3	LLE	sy chwarae	\N	cym	monoW	a	1	1	2	3	e	2	2	c	1	4	1	1	3	4	j	(a11ec1j
Siarad	davies9	121	1	LLE	oedd y	\N	cym	monoW	a	1	1	2	3	e	2	2	c	1	4	1	1	3	4	j	(a11ec1j
Siarad	davies9	121	2	LLE	oedd gynnyn nhw couple o gigs Drumbago Drumbago neu beth bynnag	\N	cym	monoW	a	1	1	2	3	e	2	2	c	1	4	1	1	3	4	j	(a11ec1j
Siarad	davies9	136	3	LLE	ydy	\N	cym	monoW	a	1	1	2	3	e	2	2	c	1	4	1	1	3	4	j	(a11ec1j
Siarad	davies9	138	1	LLE	yr unig reswm dw i siarad efo chdi wan de	\N	cym	monoW	a	1	1	2	3	e	2	2	c	1	4	1	1	3	4	j	(a11ec1j
Siarad	davies9	138	2	LLE	ydy achos um	\N	cym	monoW	a	1	1	2	3	e	2	2	c	1	4	1	1	3	4	j	(a11ec1j
Siarad	davies9	141	1	LLE	fel arall fel arall baswn i ddim yn siarad efo chdi	\N	cym	monoW	a	1	1	2	3	e	2	2	c	1	4	1	1	3	4	j	(a11ec1j
Siarad	davies9	143	1	LLE	ydy	\N	cym	monoW	a	1	1	2	3	e	2	2	c	1	4	1	1	3	4	j	(a11ec1j
Siarad	davies9	143	2	LLE	mae hynny yn hurt yn_dydy	\N	cym	monoW	a	1	1	2	3	e	2	2	c	1	4	1	1	3	4	j	(a11ec1j
Siarad	davies9	201	1	LLE	be mae wneud efo chwerthins yma ta	\N	cym	monoW	a	1	1	2	3	e	2	2	c	1	4	1	1	3	4	j	(a11ec1j
Siarad	davies9	202	1	LLE	achos dan ni wedi wneud lot o chwerthin hefyd	clause division	cym	monoW	a	1	1	2	3	e	2	2	c	1	4	1	1	3	4	j	(a11ec1j
Siarad	davies9	210	1	LLE	be mae wneud efo distawrwydd	\N	cym	monoW	a	1	1	2	3	e	2	2	c	1	4	1	1	3	4	j	(a11ec1j
Siarad	davies9	213	1	LLE	pwy sy yn ffonio chdi	\N	cym	monoW	a	1	1	2	3	e	2	2	c	1	4	1	1	3	4	j	(a11ec1j
Siarad	davies9	240	1	LLE	dw i iawn diolch	\N	cym	monoW	a	1	1	2	3	e	2	2	c	1	4	1	1	3	4	j	(a11ec1j
Siarad	davies9	253	2	LLE	lle mae pobl	\N	cym	monoW	a	1	1	2	3	e	2	2	c	1	4	1	1	3	4	j	(a11ec1j
Siarad	davies9	255	1	LLE	lle mae pawb	\N	cym	monoW	a	1	1	2	3	e	2	2	c	1	4	1	1	3	4	j	(a11ec1j
Siarad	davies9	259	2	LLE	be mae nhw edrych fel	\N	cym	monoW	a	1	1	2	3	e	2	2	c	1	4	1	1	3	4	j	(a11ec1j
Siarad	davies9	348	1	LLE	mae hwnna dda iawn	\N	cym	monoW	a	1	1	2	3	e	2	2	c	1	4	1	1	3	4	j	(a11ec1j
Siarad	davies9	353	1	LLE	wyt	if tag then exclude	cym	monoW	a	1	1	2	3	e	2	2	c	1	4	1	1	3	4	j	(a11ec1j
Siarad	davies9	365	1	LLE	pa fath o gar sy gen ti	\N	cym	monoW	a	1	1	2	3	e	2	2	c	1	4	1	1	3	4	j	(a11ec1j
Siarad	davies9	371	1	LLE	dw i wedi gweld o	\N	cym	monoW	a	1	1	2	3	e	2	2	c	1	4	1	1	3	4	j	(a11ec1j
Siarad	davies9	372	2	LLE	dw i ddim wedi gweld o	\N	cym	monoW	a	1	1	2	3	e	2	2	c	1	4	1	1	3	4	j	(a11ec1j
Siarad	davies9	378	1	LLE	sorry dw i just yn sbïo	\N	cym	monoW	a	1	1	2	3	e	2	2	c	1	4	1	1	3	4	j	(a11ec1j
Siarad	davies9	388	1	LLE	sure dim er Jack_Black sy wneud o	\N	cym	monoW	a	1	1	2	3	e	2	2	c	1	4	1	1	3	4	j	(a11ec1j
Siarad	fusser29	529	1	MAG	na dw ddim wedi weld o	\N	cym	monoW	a	1	1	2	3	e	2	2	c	1	1	1	4	4	4	k	(a11ec1k
Siarad	fusser29	255	1	MAG	mae yn iawn	\N	cym	monoW	a	1	1	2	3	e	2	2	c	1	1	1	4	4	4	k	(a11ec1k
Siarad	fusser29	255	2	MAG	yndy	\N	cym	monoW	a	1	1	2	3	e	2	2	c	1	1	1	4	4	4	k	(a11ec1k
Siarad	fusser29	256	1	MAG	mae yna ryw ddau gân	\N	cym	monoW	a	1	1	2	3	e	2	2	c	1	1	1	4	4	4	k	(a11ec1k
Siarad	fusser29	256	2	MAG	lle o'n i yn eistedd yna	\N	cym	monoW	a	1	1	2	3	e	2	2	c	1	1	1	4	4	4	k	(a11ec1k
Siarad	fusser29	258	1	MAG	yeah dydy o heb wedi	\N	cym	monoW	a	1	1	2	3	e	2	2	c	1	1	1	4	4	4	k	(a11ec1k
Siarad	fusser16	440	1	ANW	deud yn y papur ddoe dw i sure	non-finite	cym	monoW	a	1	4	1	1	b	1	1	a	1	1	1	1	1	1	b	(a14ba1b
Siarad	fusser16	444	1	ANW	ia dw meddwl ia	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	1	1	1	1	1	b	(a14ba1b
Siarad	fusser16	780	1	ANW	er sut oedd y bwyd yn Patagonia ta	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	1	1	1	1	1	b	(a14ba1b
Siarad	fusser16	815	1	ANW	a welais i chi	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	1	1	1	1	1	b	(a14ba1b
Siarad	davies2	808	2	GRE	ydy Saeson	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	4	4	g	(a13ba1g
Siarad	davies2	810	1	GRE	nhw ydy yr unig rai	clause division	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	4	4	g	(a13ba1g
Siarad	davies2	813	1	GRE	dw i ddim yn meddwl bod fi wedi cyfarfod dim un Albanwr na Gwyddel	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	4	4	g	(a13ba1g
Siarad	davies2	813	3	GRE	sy isio bod yn Brydeinwr	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	4	4	g	(a13ba1g
Siarad	davies2	815	3	GRE	ond mae hynny dim_ond	clause division	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	4	4	g	(a13ba1g
Siarad	fusser29	260	1	MAG	na mae o yn tŷ yn Felin yeah	\N	cym	monoW	a	1	1	2	3	e	2	2	c	1	1	1	4	4	4	k	(a11ec1k
Siarad	fusser29	269	1	MAG	yndy	\N	cym	monoW	a	1	1	2	3	e	2	2	c	1	1	1	4	4	4	k	(a11ec1k
Siarad	fusser29	270	1	MAG	Eddie dydd Mercher yeah wnes i ddim gwaith	\N	cym	monoW	a	1	1	2	3	e	2	2	c	1	1	1	4	4	4	k	(a11ec1k
Siarad	fusser29	272	3	MAG	lle mae office Eddie yn y room front wan	\N	cym	monoW	a	1	1	2	3	e	2	2	c	1	1	1	4	4	4	k	(a11ec1k
Siarad	fusser29	273	1	MAG	a wedyn mae stafell wely yn y cefn	\N	cym	monoW	a	1	1	2	3	e	2	2	c	1	1	1	4	4	4	k	(a11ec1k
Siarad	fusser29	273	2	MAG	a mae nice yeah	\N	cym	monoW	a	1	1	2	3	e	2	2	c	1	1	1	4	4	4	k	(a11ec1k
Siarad	fusser29	278	2	MAG	lle oedd y er	\N	cym	monoW	a	1	1	2	3	e	2	2	c	1	1	1	4	4	4	k	(a11ec1k
Siarad	fusser29	517	1	MAG	be oedda chdi wneud yma	\N	cym	monoW	a	1	1	2	3	e	2	2	c	1	1	1	4	4	4	k	(a11ec1k
Siarad	fusser29	520	1	MAG	dw ddim yn gwybod	\N	cym	monoW	a	1	1	2	3	e	2	2	c	1	1	1	4	4	4	k	(a11ec1k
Siarad	fusser29	520	2	MAG	os ydy Betty_Brown dal yma	\N	cym	monoW	a	1	1	2	3	e	2	2	c	1	1	1	4	4	4	k	(a11ec1k
Siarad	stammers6	368	1	IFA	sut mae honna yn dod yn ei blaen 	clause division: all one clause	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers6	373	1	IFA	hey dw i mynd i tsiecio 	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers6	373	2	IFA	dw i mynd i jecio um 	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers6	377	1	IFA	caf 	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers6	377	2	IFA	dw i yn 	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers6	380	1	IFA	dw i mynd i jecio um E_bay iawn 	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser29	522	1	MAG	dw i dal yn iwsio hi fath â reference	clause division	cym	monoW	a	1	1	2	3	e	2	2	c	1	1	1	4	4	4	k	(a11ec1k
Siarad	fusser29	525	1	MAG	mae bob tro wneud chwarae teg	clause division	cym	monoW	a	1	1	2	3	e	2	2	c	1	1	1	4	4	4	k	(a11ec1k
Siarad	fusser29	559	1	MAG	wan mae	\N	cym	monoW	a	1	1	2	3	e	2	2	c	1	1	1	4	4	4	k	(a11ec1k
Siarad	fusser29	559	3	MAG	mae yr lle i_gyd yn disgyn i ddarnau	\N	cym	monoW	a	1	1	2	3	e	2	2	c	1	1	1	4	4	4	k	(a11ec1k
Siarad	fusser29	561	1	MAG	oh unwaith bydda chdi wedi fynd de	\N	cym	monoW	a	1	1	2	3	e	2	2	c	1	1	1	4	4	4	k	(a11ec1k
Siarad	fusser29	561	2	MAG	geith nhw weld y gwahaniaeth de	\N	cym	monoW	a	1	1	2	3	e	2	2	c	1	1	1	4	4	4	k	(a11ec1k
Siarad	fusser29	562	1	MAG	a bydda i yna	\N	cym	monoW	a	1	1	2	3	e	2	2	c	1	1	1	4	4	4	k	(a11ec1k
Siarad	fusser29	775	1	MAG	oh dw ddim yn gwybod	\N	cym	monoW	a	1	1	2	3	e	2	2	c	1	1	1	4	4	4	k	(a11ec1k
Siarad	fusser29	776	1	MAG	mae yn anodd cadw cysylltiad	\N	cym	monoW	a	1	1	2	3	e	2	2	c	1	1	1	4	4	4	k	(a11ec1k
Siarad	stammers6	527	1	IFA	mae 	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers6	527	2	IFA	dydy o ddim yn gorffen am awr 	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers6	529	1	IFA	nag ydy 	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers6	531	1	IFA	does yna neb wedi bidio nhw eto 	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers6	532	1	IFA	mae boy wedi gofyn cant amdano fo sti 	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers6	535	1	IFA	wna i just disgwyl tan 	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers9	161	1	RNW	mae o wir 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser29	781	1	MAG	mae yn anodd cadw cysylltiad yeah	\N	cym	monoW	a	1	1	2	3	e	2	2	c	1	1	1	4	4	4	k	(a11ec1k
Siarad	fusser29	786	1	MAG	es i am bint neithiwr	\N	cym	monoW	a	1	1	2	3	e	2	2	c	1	1	1	4	4	4	k	(a11ec1k
Siarad	fusser29	794	1	MAG	oedd o yn um	\N	cym	monoW	a	1	1	2	3	e	2	2	c	1	1	1	4	4	4	k	(a11ec1k
Siarad	fusser29	802	1	MAG	oedden	\N	cym	monoW	a	1	1	2	3	e	2	2	c	1	1	1	4	4	4	k	(a11ec1k
Siarad	fusser29	802	2	MAG	mae yn byw Felin wan	\N	cym	monoW	a	1	1	2	3	e	2	2	c	1	1	1	4	4	4	k	(a11ec1k
Siarad	davies2	815	4	GRE	achos gaeth hi ei geni yn Llundain so	h	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	4	4	g	(a13ba1g
Siarad	davies2	1194	1	GRE	sut mae Susannah	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	4	4	g	(a13ba1g
Siarad	davies2	1195	1	GRE	ydy hi yn iawn	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	4	4	g	(a13ba1g
Siarad	davies2	1197	1	GRE	dw i ddim gwybod	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	4	4	g	(a13ba1g
Siarad	davies2	1217	1	GRE	achos yn yr gwers um ymarfer ysgrifennu wythnos dwytha well	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	4	4	g	(a13ba1g
Siarad	davies2	1217	2	GRE	doedd yna ddim_ond dau berson yna	clause division	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	4	4	g	(a13ba1g
Siarad	davies2	1217	3	GRE	ac o'n i wedi mynd lawr i Gaerdydd do'n	h	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	4	4	g	(a13ba1g
Siarad	davies2	1219	1	GRE	so ges i ddim yr gwaith i wneud	clause division	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	4	4	g	(a13ba1g
Siarad	davies2	1219	3	GRE	so wnaeth o roid o i ni gyd ddoe	clause division	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	4	4	g	(a13ba1g
Siarad	davies2	1222	1	GRE	ond dydan ni ddim yn gorfod gwneud yr un wythnos dwytha tan	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	4	4	g	(a13ba1g
Siarad	davies2	1222	3	GRE	wnaeth o just deud	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	4	4	g	(a13ba1g
Siarad	davies2	1223	1	GRE	gwnewch o cyn Pasg	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	4	4	g	(a13ba1g
Siarad	davies4	290	1	CYN	mae nhw yn deud bod hi right debyg Gymru	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	4	1	4	1	1	g	(a14ba1g
Siarad	davies4	290	3	CYN	dydy yr un yr un idea	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	4	1	4	1	1	g	(a14ba1g
Siarad	davies4	304	2	CYN	mae sure bod caeau nhw yr un un size â Sir_Fôn	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	4	1	4	1	1	g	(a14ba1g
Siarad	davies4	304	4	CYN	mae sure	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	4	1	4	1	1	g	(a14ba1g
Siarad	davies4	308	1	CYN	oh ia ia dyna be ydy o de	non-finite	cym	monoW	a	1	4	1	1	b	1	1	a	1	4	1	4	1	1	g	(a14ba1g
Siarad	fusser29	804	1	MAG	yndy	\N	cym	monoW	a	1	1	2	3	e	2	2	c	1	1	1	4	4	4	k	(a11ec1k
Siarad	stammers6	776	1	IFA	so mae yn dod 	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers6	777	1	IFA	dw i yn gyfarfod o yma yma deg o gloch bore dydd Iau 	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers6	778	1	IFA	be dan ni mynd 	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers9	177	2	RNW	oedd 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser29	808	1	MAG	a wedyn er wnaeth hi text_io fi yn gofyn	clause division	cym	monoW	a	1	1	2	3	e	2	2	c	1	1	1	4	4	4	k	(a11ec1k
Siarad	fusser29	809	1	MAG	wnes i ddeud	\N	cym	monoW	a	1	1	2	3	e	2	2	c	1	1	1	4	4	4	k	(a11ec1k
Siarad	stammers5	258	1	SND	ti cofio 	\N	cym	monoW	a	1	1	3	2	e	1	3	c	2	4	1	1	4	4	k	(a11ec2k
Siarad	stammers5	260	1	SND	wnaeth y boy 	\N	cym	monoW	a	1	1	3	2	e	1	3	c	2	4	1	1	4	4	k	(a11ec2k
Siarad	stammers5	260	2	SND	wnaeth ddod i yr ysgol meddwl 	\N	cym	monoW	a	1	1	3	2	e	1	3	c	2	4	1	1	4	4	k	(a11ec2k
Siarad	stammers5	262	1	SND	oedd yn deud 	\N	cym	monoW	a	1	1	3	2	e	1	3	c	2	4	1	1	4	4	k	(a11ec2k
Siarad	stammers5	262	2	SND	bod o erioed wedi dod ar_draws ysgol fel yna 	\N	cym	monoW	a	1	1	3	2	e	1	3	c	2	4	1	1	4	4	k	(a11ec2k
Siarad	stammers5	271	1	SND	yn lle fel yna dw i yn gweithio 	\N	cym	monoW	a	1	1	3	2	e	1	3	c	2	4	1	1	4	4	k	(a11ec2k
Siarad	stammers5	273	1	SND	mae genna i ofn 	clause division: link with next clause	cym	monoW	a	1	1	3	2	e	1	3	c	2	4	1	1	4	4	k	(a11ec2k
Siarad	stammers5	276	1	SND	yeah ond ddim bai y plant yw e naci 	clause division: link with next clause	cym	monoW	a	1	1	3	2	e	1	3	c	2	4	1	1	4	4	k	(a11ec2k
Siarad	stammers5	292	1	SND	yeah ond maen nhw wedi gwybod am y cyngerdd yma ers mis Medi 	\N	cym	monoW	a	1	1	3	2	e	1	3	c	2	4	1	1	4	4	k	(a11ec2k
Siarad	stammers5	294	1	SND	yeah ond baset ti meddwl 	\N	cym	monoW	a	1	1	3	2	e	1	3	c	2	4	1	1	4	4	k	(a11ec2k
Siarad	stammers5	294	2	SND	basen nhw gallu gofyn i rywun arall wneud	divide clause before gofyn	cym	monoW	a	1	1	3	2	e	1	3	c	2	4	1	1	4	4	k	(a11ec2k
Siarad	stammers5	300	1	SND	nag ydyn 	\N	cym	monoW	a	1	1	3	2	e	1	3	c	2	4	1	1	4	4	k	(a11ec2k
Siarad	davies4	316	1	CYN	oh wela i	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	4	1	4	1	1	g	(a14ba1g
Siarad	fusser16	815	2	ANW	yn dangos i mi ryw dro yr um y cwpan matÃ©	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	1	1	1	1	1	b	(a14ba1b
Siarad	fusser16	816	1	ANW	be ydy o	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	1	1	1	1	1	b	(a14ba1b
Siarad	fusser16	822	1	ANW	oedd o nice	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	1	1	1	1	1	b	(a14ba1b
Siarad	fusser16	856	1	ANW	bysai	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	1	1	1	1	1	b	(a14ba1b
Siarad	fusser16	856	2	ANW	bysai	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	1	1	1	1	1	b	(a14ba1b
Siarad	fusser16	856	3	ANW	bysai	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	1	1	1	1	1	b	(a14ba1b
Siarad	davies4	360	1	CYN	dw i wedi clywed o gyd o yr blaen	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	4	1	4	1	1	g	(a14ba1g
Siarad	davies4	360	2	CYN	dw meddwl	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	4	1	4	1	1	g	(a14ba1g
Siarad	davies4	360	3	CYN	do hefo defaid yeah	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	4	1	4	1	1	g	(a14ba1g
Siarad	davies4	377	1	CYN	a faint oedd gynno chdi	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	4	1	4	1	1	g	(a14ba1g
Siarad	davies4	382	1	CYN	meddai fi	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	4	1	4	1	1	g	(a14ba1g
Siarad	davies4	391	1	CYN	dw i cofio ti deud	clause division	cym	monoW	a	1	4	1	1	b	1	1	a	1	4	1	4	1	1	g	(a14ba1g
Siarad	davies4	393	1	CYN	dw i cofio chdi deud wrthon ni	clause division	cym	monoW	a	1	4	1	1	b	1	1	a	1	4	1	4	1	1	g	(a14ba1g
Siarad	fusser19	259	2	OLW	geith nhw	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	4	1	4	g	(a12ba1g
Siarad	davies4	393	3	CYN	pan oedden ni ffilmio	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	4	1	4	1	1	g	(a14ba1g
Siarad	davies4	393	4	CYN	ffilmio yn er efo Rownd_a_Rownd	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	4	1	4	1	1	g	(a14ba1g
Siarad	fusser28	239	1	IFO	be wnei di	\N	cym	monoW	a	1	2	1	1	b	1	1	a	4	1	1	1	1	1	b	(a12ba4b
Siarad	stammers5	543	1	SND	dw ddim yn cofio 	\N	cym	monoW	a	1	1	3	2	e	1	3	c	2	4	1	1	4	4	k	(a11ec2k
Siarad	stammers5	543	2	SND	sut dan ni wedi 	\N	cym	monoW	a	1	1	3	2	e	1	3	c	2	4	1	1	4	4	k	(a11ec2k
Siarad	stammers5	543	3	SND	roid y cadair a yr settee o_blaen 	\N	cym	monoW	a	1	1	3	2	e	1	3	c	2	4	1	1	4	4	k	(a11ec2k
Siarad	stammers5	544	1	SND	mae yn edrych yn fwy llawn yma rywsut 	\N	cym	monoW	a	1	1	3	2	e	1	3	c	2	4	1	1	4	4	k	(a11ec2k
Siarad	stammers5	553	1	SND	o'n i yn meddwl bod ni wedi roid o yn y gornel fan yna 	\N	cym	monoW	a	1	1	3	2	e	1	3	c	2	4	1	1	4	4	k	(a11ec2k
Siarad	stammers5	556	1	SND	yeah wedyn mae yr yeah 	\N	cym	monoW	a	1	1	3	2	e	1	3	c	2	4	1	1	4	4	k	(a11ec2k
Siarad	stammers5	557	1	SND	os allwn ni fficsio fe cyn i ti fynd i chwarae rugby 	\N	cym	monoW	a	1	1	3	2	e	1	3	c	2	4	1	1	4	4	k	(a11ec2k
Siarad	stammers5	557	3	SND	alla i wneud y gweddill ar ben fy hun 	\N	cym	monoW	a	1	1	3	2	e	1	3	c	2	4	1	1	4	4	k	(a11ec2k
Siarad	stammers5	562	1	SND	fe wnaethon ni roid ar	clause division: include with next cl	cym	monoW	a	1	1	3	2	e	1	3	c	2	4	1	1	4	4	k	(a11ec2k
Siarad	stammers5	804	1	SND	oh basai yn nice 	\N	cym	monoW	a	1	1	3	2	e	1	3	c	2	4	1	1	4	4	k	(a11ec2k
Siarad	stammers5	806	1	SND	yeah alla i gweld 	\N	cym	monoW	a	1	1	3	2	e	1	3	c	2	4	1	1	4	4	k	(a11ec2k
Siarad	stammers5	806	2	SND	mae hynna wedi digwydd 	\N	cym	monoW	a	1	1	3	2	e	1	3	c	2	4	1	1	4	4	k	(a11ec2k
Siarad	stammers5	808	1	SND	oedd o yn amlwg ar y film 	\N	cym	monoW	a	1	1	3	2	e	1	3	c	2	4	1	1	4	4	k	(a11ec2k
Siarad	stammers5	810	1	SND	oedd a brown 	\N	cym	monoW	a	1	1	3	2	e	1	3	c	2	4	1	1	4	4	k	(a11ec2k
Siarad	stammers6	778	3	IFA	dw i ddim yn gwybod 	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers6	780	1	IFA	um sut fydd 	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers6	784	1	IFA	does gen ti ddim lot i fynd wan Blod 	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers5	827	1	SND	yeah dw i feddwl 	\N	cym	monoW	a	1	1	3	2	e	1	3	c	2	4	1	1	4	4	k	(a11ec2k
Siarad	stammers5	843	1	SND	yndy ei fam o yeah 	\N	cym	monoW	a	1	1	3	2	e	1	3	c	2	4	1	1	4	4	k	(a11ec2k
Siarad	stammers5	846	1	SND	na mae fam o 	\N	cym	monoW	a	1	1	3	2	e	1	3	c	2	4	1	1	4	4	k	(a11ec2k
Siarad	davies4	688	1	CYN	gynnon ni ddwy gath ti gweld	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	4	1	4	1	1	g	(a14ba1g
Siarad	davies4	694	2	CYN	mae o yn	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	4	1	4	1	1	g	(a14ba1g
Siarad	davies4	707	1	CYN	oh na baswn i ddim deud bod chdi gynnil Oswy bach	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	4	1	4	1	1	g	(a14ba1g
Siarad	davies4	715	1	CYN	well ia wnaeth Carol sôn flwyddyn dwytha do	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	4	1	4	1	1	g	(a14ba1g
Siarad	davies4	721	1	CYN	na mae na na na	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	4	1	4	1	1	g	(a14ba1g
Siarad	davies4	724	1	CYN	well aeth Kathy y ferch fenga	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	4	1	4	1	1	g	(a14ba1g
Siarad	davies4	724	2	CYN	aeth hi i ryw briodas ryw ddwy flynedd yn_ôl	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	4	1	4	1	1	g	(a14ba1g
Siarad	fusser16	881	1	ANW	oedd	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	1	1	1	1	1	b	(a14ba1b
Siarad	fusser16	881	2	ANW	oedd	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	1	1	1	1	1	b	(a14ba1b
Siarad	fusser16	881	3	ANW	oedd	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	1	1	1	1	1	b	(a14ba1b
Siarad	stammers5	846	2	SND	mae fam o yn enwog 	\N	cym	monoW	a	1	1	3	2	e	1	3	c	2	4	1	1	4	4	k	(a11ec2k
Siarad	stammers5	848	1	SND	yndy 	\N	cym	monoW	a	1	1	3	2	e	1	3	c	2	4	1	1	4	4	k	(a11ec2k
Siarad	stammers5	855	1	SND	ti sy wedi penderfynu ddim fi 	\N	cym	monoW	a	1	1	3	2	e	1	3	c	2	4	1	1	4	4	k	(a11ec2k
Siarad	stammers2	463	1	CHR	dw i yn jealous 	\N	cym	monoW	a	3	1	3	3	f	1	3	c	2	0	0	0	0	0	a	(a31fc2a
Siarad	stammers2	465	1	CHR	yndw 	\N	cym	monoW	a	3	1	3	3	f	1	3	c	2	0	0	0	0	0	a	(a31fc2a
Siarad	stammers2	474	1	CHR	lle mae hwnna 	\N	cym	monoW	a	3	1	3	3	f	1	3	c	2	0	0	0	0	0	a	(a31fc2a
Siarad	stammers2	503	1	CHR	dan ni angen lot o pres i hwnna 	\N	cym	monoW	a	3	1	3	3	f	1	3	c	2	0	0	0	0	0	a	(a31fc2a
Siarad	stammers2	523	1	CHR	oh mam wnei di nôl um 	\N	cym	monoW	a	3	1	3	3	f	1	3	c	2	0	0	0	0	0	a	(a31fc2a
Siarad	stammers2	524	1	CHR	beth ydy o 	\N	cym	monoW	a	3	1	3	3	f	1	3	c	2	0	0	0	0	0	a	(a31fc2a
Siarad	stammers2	546	1	CHR	oedd um 	\N	cym	monoW	a	3	1	3	3	f	1	3	c	2	0	0	0	0	0	a	(a31fc2a
Siarad	stammers2	546	2	CHR	dan ni wneud o pob haf 	\N	cym	monoW	a	3	1	3	3	f	1	3	c	2	0	0	0	0	0	a	(a31fc2a
Siarad	stammers2	546	3	CHR	ydan 	\N	cym	monoW	a	3	1	3	3	f	1	3	c	2	0	0	0	0	0	a	(a31fc2a
Siarad	stammers2	708	1	CHR	na dw i ddim 	\N	cym	monoW	a	3	1	3	3	f	1	3	c	2	0	0	0	0	0	a	(a31fc2a
Siarad	stammers2	731	1	CHR	yndan 	\N	cym	monoW	a	3	1	3	3	f	1	3	c	2	0	0	0	0	0	a	(a31fc2a
Siarad	stammers2	733	1	CHR	yndy 	\N	cym	monoW	a	3	1	3	3	f	1	3	c	2	0	0	0	0	0	a	(a31fc2a
Siarad	stammers2	217	1	CHR	mae Joanne wedi deud wrth fi um i mynd i weld hi ar_ôl ysgol 	\N	cym	monoW	a	3	1	3	3	f	1	3	c	2	0	0	0	0	0	a	(a31fc2a
Siarad	stammers2	219	2	CHR	ac roedd hi wedi dweud bod hi angen 	\N	cym	monoW	a	3	1	3	3	f	1	3	c	2	0	0	0	0	0	a	(a31fc2a
Siarad	stammers2	228	1	CHR	ond lle mae yr receipt 	\N	cym	monoW	a	3	1	3	3	f	1	3	c	2	0	0	0	0	0	a	(a31fc2a
Siarad	stammers2	231	1	CHR	ffonia hi 	\N	cym	monoW	a	3	1	3	3	f	1	3	c	2	0	0	0	0	0	a	(a31fc2a
Siarad	stammers2	238	1	CHR	nag ydy 	\N	cym	monoW	a	3	1	3	3	f	1	3	c	2	0	0	0	0	0	a	(a31fc2a
Siarad	stammers2	249	1	CHR	Pizza_Hut dw i meddwl 	\N	cym	monoW	a	3	1	3	3	f	1	3	c	2	0	0	0	0	0	a	(a31fc2a
Siarad	stammers2	256	1	CHR	oedd 	\N	cym	monoW	a	3	1	3	3	f	1	3	c	2	0	0	0	0	0	a	(a31fc2a
Siarad	stammers2	256	2	CHR	dw meddwl yeah 	\N	cym	monoW	a	3	1	3	3	f	1	3	c	2	0	0	0	0	0	a	(a31fc2a
Siarad	stammers2	258	1	CHR	oh dw i wedi anghofio 	\N	cym	monoW	a	3	1	3	3	f	1	3	c	2	0	0	0	0	0	a	(a31fc2a
Siarad	stammers2	268	1	CHR	oedd 	\N	cym	monoW	a	3	1	3	3	f	1	3	c	2	0	0	0	0	0	a	(a31fc2a
Siarad	stammers2	456	1	CHR	um dw meddwl yeah 	\N	cym	monoW	a	3	1	3	3	f	1	3	c	2	0	0	0	0	0	a	(a31fc2a
Siarad	stammers2	460	1	CHR	ia dw i yn jealous 	\N	cym	monoW	a	3	1	3	3	f	1	3	c	2	0	0	0	0	0	a	(a31fc2a
Siarad	stammers2	737	1	CHR	yndw 	\N	cym	monoW	a	3	1	3	3	f	1	3	c	2	0	0	0	0	0	a	(a31fc2a
Siarad	stammers2	742	1	CHR	yndy 	\N	cym	monoW	a	3	1	3	3	f	1	3	c	2	0	0	0	0	0	a	(a31fc2a
Siarad	stammers2	746	1	CHR	nag oes 	\N	cym	monoW	a	3	1	3	3	f	1	3	c	2	0	0	0	0	0	a	(a31fc2a
Siarad	stammers6	796	1	IFA	yndy 	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers6	801	1	IFA	ond mae yn dywyll ychydig bach hwyrach pob nos wan 	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers2	756	1	CHR	yndy 	\N	cym	monoW	a	3	1	3	3	f	1	3	c	2	0	0	0	0	0	a	(a31fc2a
Siarad	stammers2	763	1	CHR	yndw 	\N	cym	monoW	a	3	1	3	3	f	1	3	c	2	0	0	0	0	0	a	(a31fc2a
Siarad	stammers2	765	1	CHR	oedd 	\N	cym	monoW	a	3	1	3	3	f	1	3	c	2	0	0	0	0	0	a	(a31fc2a
Siarad	fusser16	881	4	ANW	cofiwch	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	1	1	1	1	1	b	(a14ba1b
Siarad	fusser16	922	1	ANW	argoel oedd hwnna yn drip	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	1	1	1	1	1	b	(a14ba1b
Siarad	fusser16	922	2	ANW	gwerth chweil felly	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	1	1	1	1	1	b	(a14ba1b
Siarad	fusser16	922	3	ANW	doedd Siriol	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	1	1	1	1	1	b	(a14ba1b
Siarad	fusser16	924	1	ANW	oedd	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	1	1	1	1	1	b	(a14ba1b
Siarad	fusser16	924	2	ANW	cofiwch	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	1	1	1	1	1	b	(a14ba1b
Siarad	fusser12	536	1	CEW	ond ella fyddan nhw mor ddeallus bod o yn hollol amlwg iddyn nhw o yr dechrau un	\N	cym	monoW	a	2	1	3	3	f	1	3	c	1	1	1	1	4	1	d	(a21fc1d
Siarad	fusser12	543	1	CEW	well yn rhyfedd iawn dydw innau ddim chwaith	\N	cym	monoW	a	2	1	3	3	f	1	3	c	1	1	1	1	4	1	d	(a21fc1d
Siarad	fusser12	545	1	CEW	a dw i ddim yn gwybod pam bod rhaid i ni ddioddef o gamymddygiad George_Bush	\N	cym	monoW	a	2	1	3	3	f	1	3	c	1	1	1	1	4	1	d	(a21fc1d
Siarad	fusser12	548	1	CEW	yndy	\N	cym	monoW	a	2	1	3	3	f	1	3	c	1	1	1	1	4	1	d	(a21fc1d
Siarad	fusser12	549	1	CEW	dydy o ddim fath â bod ni yn cefnogi hyd_yn_oed Tony_Blair	\N	cym	monoW	a	2	1	3	3	f	1	3	c	1	1	1	1	4	1	d	(a21fc1d
Siarad	fusser12	549	2	CEW	heb sôn am bloody Bush	\N	cym	monoW	a	2	1	3	3	f	1	3	c	1	1	1	1	4	1	d	(a21fc1d
Siarad	fusser12	564	1	CEW	ia hwyrach llai ond dim lot llai baswn i meddwl	\N	cym	monoW	a	2	1	3	3	f	1	3	c	1	1	1	1	4	1	d	(a21fc1d
Siarad	fusser12	567	1	CEW	ia ond dydy hynna ddim yn bodoli efo rei ni nag	\N	cym	monoW	a	2	1	3	3	f	1	3	c	1	1	1	1	4	1	d	(a21fc1d
Siarad	fusser12	567	2	CEW	ydy	\N	cym	monoW	a	2	1	3	3	f	1	3	c	1	1	1	1	4	1	d	(a21fc1d
Siarad	fusser12	572	1	CEW	yeah yeah na dw i gwybod	\N	cym	monoW	a	2	1	3	3	f	1	3	c	1	1	1	1	4	1	d	(a21fc1d
Siarad	fusser12	574	1	CEW	ond just difaru dw i	\N	cym	monoW	a	2	1	3	3	f	1	3	c	1	1	1	1	4	1	d	(a21fc1d
Siarad	fusser12	575	1	CEW	mmm oes	\N	cym	monoW	a	2	1	3	3	f	1	3	c	1	1	1	1	4	1	d	(a21fc1d
Siarad	fusser12	1057	1	CEW	oh dw i meddwl bod hynna yn ddigon teg	\N	cym	monoW	a	2	1	3	3	f	1	3	c	1	1	1	1	4	1	d	(a21fc1d
Siarad	fusser12	1077	1	CEW	oh mae hi yn beth anodd iawn i ddeddfu yn ei chylch	\N	cym	monoW	a	2	1	3	3	f	1	3	c	1	1	1	1	4	1	d	(a21fc1d
Siarad	fusser12	1097	1	CEW	oh pwy pwy ydy hon wan	\N	cym	monoW	a	2	1	3	3	f	1	3	c	1	1	1	1	4	1	d	(a21fc1d
Siarad	fusser12	1099	1	CEW	dim yr un sy wedi marw	\N	cym	monoW	a	2	1	3	3	f	1	3	c	1	1	1	1	4	1	d	(a21fc1d
Siarad	fusser12	1108	1	CEW	mae o yn beth anodd i ddeddfu yn ei gylch o yn amlwg yn_de i wneud sure bod rywun yn hollol rydd i ddewis a bod yna ddim pwysau arnyn nhw	\N	cym	monoW	a	2	1	3	3	f	1	3	c	1	1	1	1	4	1	d	(a21fc1d
Siarad	fusser12	1111	1	CEW	ond ddylsai rywun drio wneud rywsut drio gweithio allan ffordd o o wneud o yn bosib i rywun	\N	cym	monoW	a	2	1	3	3	f	1	3	c	1	1	1	1	4	1	d	(a21fc1d
Siarad	fusser12	1111	5	CEW	sy go iawn isio marw	\N	cym	monoW	a	2	1	3	3	f	1	3	c	1	1	1	1	4	1	d	(a21fc1d
Siarad	fusser12	1116	1	CEW	well ia ond oedd rywun yn deud am rywun arall yn marw ryw ei dad hwyrach yn deud	\N	cym	monoW	a	2	1	3	3	f	1	3	c	1	1	1	1	4	1	d	(a21fc1d
Siarad	fusser12	1125	1	CEW	ond dan ni yn gallu diodde just cyn_gystal neu yn waeth na ci	\N	cym	monoW	a	2	1	3	3	f	1	3	c	1	1	1	1	4	1	d	(a21fc1d
Siarad	fusser12	1135	1	CEW	dim ond unwaith dw i wedi gorod rhoid anifail i_lawr	\N	cym	monoW	a	2	1	3	3	f	1	3	c	1	1	1	1	4	1	d	(a21fc1d
Siarad	fusser12	1137	1	CEW	well oedd o'n i yn teimlo bod o matter o raid yn hollol	\N	cym	monoW	a	2	1	3	3	f	1	3	c	1	1	1	1	4	1	d	(a21fc1d
Siarad	fusser12	1646	1	CEW	Hendre be ydy Plas_Hendre	\N	cym	monoW	a	2	1	3	3	f	1	3	c	1	1	1	1	4	1	d	(a21fc1d
Siarad	fusser12	1651	1	CEW	dan ni yn gobeithio	\N	cym	monoW	a	2	1	3	3	f	1	3	c	1	1	1	1	4	1	d	(a21fc1d
Siarad	fusser12	1657	1	CEW	yndy	\N	cym	monoW	a	2	1	3	3	f	1	3	c	1	1	1	1	4	1	d	(a21fc1d
Siarad	fusser12	1657	2	CEW	mae o	\N	cym	monoW	a	2	1	3	3	f	1	3	c	1	1	1	1	4	1	d	(a21fc1d
Siarad	fusser12	1662	1	CEW	yndy	\N	cym	monoW	a	2	1	3	3	f	1	3	c	1	1	1	1	4	1	d	(a21fc1d
Siarad	fusser12	1662	2	CEW	mae o	\N	cym	monoW	a	2	1	3	3	f	1	3	c	1	1	1	1	4	1	d	(a21fc1d
Siarad	fusser12	1666	1	CEW	dim dim mwyafrif llethol ond just dros hanner baswn i ddeud	\N	cym	monoW	a	2	1	3	3	f	1	3	c	1	1	1	1	4	1	d	(a21fc1d
Siarad	fusser12	1672	1	CEW	just ddim yn gwybod am y peth	\N	cym	monoW	a	2	1	3	3	f	1	3	c	1	1	1	1	4	1	d	(a21fc1d
Siarad	fusser12	1672	2	CEW	mae nhw debyg	\N	cym	monoW	a	2	1	3	3	f	1	3	c	1	1	1	1	4	1	d	(a21fc1d
Siarad	fusser12	1673	1	CEW	ond pan o'n i yn Llundain oedd yna yr ddynes yma um wedi sgwennu yn y Guardian Dolig	\N	cym	monoW	a	2	1	3	3	f	1	3	c	1	1	1	1	4	1	d	(a21fc1d
Siarad	fusser12	1677	1	CEW	ac oedden nhw yn deud	\N	cym	monoW	a	2	1	3	3	f	1	3	c	1	1	1	1	4	1	d	(a21fc1d
Siarad	fusser12	1678	2	CEW	mae yna yr paragraph	\N	cym	monoW	a	2	1	3	3	f	1	3	c	1	1	1	1	4	1	d	(a21fc1d
Siarad	fusser12	1678	3	CEW	mae nhw yn holi bobl	\N	cym	monoW	a	2	1	3	3	f	1	3	c	1	1	1	1	4	1	d	(a21fc1d
Siarad	stammers6	810	1	IFA	pam basai dim_byd yna i chdi 	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers6	813	1	IFA	oh dw i am gael steak munud 	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers6	818	1	IFA	be mae Graham wedi gael 	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser17	401	1	AET	so just dros yr ochr mae yna ryw ogof fach	\N	cym	monoW	a	3	1	3	3	f	2	2	c	1	1	1	4	1	4	g	(a31fc1g
Siarad	fusser17	402	1	AET	dydy o ddim mor hawdd i fynd ato fo fel	\N	cym	monoW	a	3	1	3	3	f	2	2	c	1	1	1	4	1	4	g	(a31fc1g
Siarad	fusser17	402	2	AET	dw i yn dallt	\N	cym	monoW	a	3	1	3	3	f	2	2	c	1	1	1	4	1	4	g	(a31fc1g
Siarad	fusser17	403	1	AET	dw i ddim wedi bod eto de	\N	cym	monoW	a	3	1	3	3	f	2	2	c	1	1	1	4	1	4	g	(a31fc1g
Siarad	fusser16	927	1	ANW	lle dach chi nesa	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	1	1	1	1	1	b	(a14ba1b
Siarad	fusser16	948	1	ANW	oh dach chi mynd i fan yno ia	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	1	1	1	1	1	b	(a14ba1b
Siarad	fusser16	1274	1	ANW	fydda i yn cofio honno	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	1	1	1	1	1	b	(a14ba1b
Siarad	fusser16	1276	1	ANW	ac oeddech chi mynd ambell i ddiwrnod i ryw babell a ryw gacennau a ryw bethau	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	1	1	1	1	1	b	(a14ba1b
Siarad	fusser16	1282	1	ANW	oh well fyddai isio mynd round adeg hynny efo tuniau	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	1	1	1	1	1	b	(a14ba1b
Siarad	fusser16	1282	2	ANW	byddai	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	1	1	1	1	1	b	(a14ba1b
Siarad	davies4	726	1	CYN	wnaeth hi hel ei gwyliau	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	4	1	4	1	1	g	(a14ba1g
Siarad	davies4	727	1	CYN	oedd hi ddrosodd am tua tri mis	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	4	1	4	1	1	g	(a14ba1g
Siarad	davies4	1053	1	CYN	be sy dda	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	4	1	4	1	1	g	(a14ba1g
Siarad	davies4	1053	2	CYN	ydy	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	4	1	4	1	1	g	(a14ba1g
Siarad	davies4	1055	1	CYN	mae o yna hefyd de	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	4	1	4	1	1	g	(a14ba1g
Siarad	fusser17	404	1	AET	mae yr mab wedi bod	\N	cym	monoW	a	3	1	3	3	f	2	2	c	1	1	1	4	1	4	g	(a31fc1g
Siarad	fusser17	405	1	AET	oedd o yn deud bod o yn resymol hawdd cyn_belled	\N	cym	monoW	a	3	1	3	3	f	2	2	c	1	1	1	4	1	4	g	(a31fc1g
Siarad	fusser17	405	3	AET	dach chi ddim yn ofn uchder felly de achos	\N	cym	monoW	a	3	1	3	3	f	2	2	c	1	1	1	4	1	4	g	(a31fc1g
Siarad	fusser17	405	4	AET	mae o ar ochr	\N	cym	monoW	a	3	1	3	3	f	2	2	c	1	1	1	4	1	4	g	(a31fc1g
Siarad	fusser17	409	1	AET	um yn right sych fel dw i yn dallt	non-finite	cym	monoW	a	3	1	3	3	f	2	2	c	1	1	1	4	1	4	g	(a31fc1g
Siarad	fusser17	411	1	AET	ond mae raid fi ffeindio amser i fynd yna	\N	cym	monoW	a	3	1	3	3	f	2	2	c	1	1	1	4	1	4	g	(a31fc1g
Siarad	fusser17	412	1	AET	ond wan i fi mae yn fwy pwysig ar y pryd	\N	cym	monoW	a	3	1	3	3	f	2	2	c	1	1	1	4	1	4	g	(a31fc1g
Siarad	fusser17	412	2	AET	pan dynnais i hwn i ddisgwyl y golau	\N	cym	monoW	a	3	1	3	3	f	2	2	c	1	1	1	4	1	4	g	(a31fc1g
Siarad	fusser17	413	2	AET	sy wneud chi isio bwyd de	\N	cym	monoW	a	3	1	3	3	f	2	2	c	1	1	1	4	1	4	g	(a31fc1g
Siarad	fusser17	415	1	AET	ond dach chi yn gweld	\N	cym	monoW	a	3	1	3	3	f	2	2	c	1	1	1	4	1	4	g	(a31fc1g
Siarad	fusser17	415	2	AET	sut mae rhein wedi plygu drosodd efo yr tywydd de	\N	cym	monoW	a	3	1	3	3	f	2	2	c	1	1	1	4	1	4	g	(a31fc1g
Siarad	fusser17	807	1	AET	well awel bychan distaw oedd yna	\N	cym	monoW	a	3	1	3	3	f	2	2	c	1	1	1	4	1	4	g	(a31fc1g
Siarad	stammers6	1159	1	IFA	a mae rywun wedi rentio costumes a 	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers9	526	2	RNW	faswn i 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser17	808	1	AET	ond mi oedd o symud	\N	cym	monoW	a	3	1	3	3	f	2	2	c	1	1	1	4	1	4	g	(a31fc1g
Siarad	fusser17	809	1	AET	a pan oedd o draws ffordd yna	clause division	cym	monoW	a	3	1	3	3	f	2	2	c	1	1	1	4	1	4	g	(a31fc1g
Siarad	fusser17	809	1	AET	toedd o ddim yn	h	cym	monoW	a	3	1	3	3	f	2	2	c	1	1	1	4	1	4	g	(a31fc1g
Siarad	fusser17	810	1	AET	er be dw i yn galw yn balance i	\N	cym	monoW	a	3	1	3	3	f	2	2	c	1	1	1	4	1	4	g	(a31fc1g
Siarad	fusser17	811	2	AET	pan dach chi ar_draws y llun	\N	cym	monoW	a	3	1	3	3	f	2	2	c	1	1	1	4	1	4	g	(a31fc1g
Siarad	fusser17	816	1	AET	a wyddoch chi mae yna	\N	cym	monoW	a	3	1	3	3	f	2	2	c	1	1	1	4	1	4	g	(a31fc1g
Siarad	fusser17	816	2	AET	mae yna drefn i yr llun mewn ffordd	\N	cym	monoW	a	3	1	3	3	f	2	2	c	1	1	1	4	1	4	g	(a31fc1g
Siarad	fusser17	819	1	AET	mae rhein pwyntio ag i_fyny i fynd ar_draws i_fyny fan yna	\N	cym	monoW	a	3	1	3	3	f	2	2	c	1	1	1	4	1	4	g	(a31fc1g
Siarad	fusser17	820	1	AET	a dach chi ar_draws y yr um y crib wedyn y Crib_Coch ei hun	\N	cym	monoW	a	3	1	3	3	f	2	2	c	1	1	1	4	1	4	g	(a31fc1g
Siarad	fusser17	823	1	AET	a os dach chi isio fynd i_fyny	\N	cym	monoW	a	3	1	3	3	f	2	2	c	1	1	1	4	1	4	g	(a31fc1g
Siarad	fusser17	823	2	AET	dach chi safe o dod lawr yn_ôl	\N	cym	monoW	a	3	1	3	3	f	2	2	c	1	1	1	4	1	4	g	(a31fc1g
Siarad	fusser17	1207	1	AET	mi arhosodd am ryw funud neu ddau a diflannu	\N	cym	monoW	a	3	1	3	3	f	2	2	c	1	1	1	4	1	4	g	(a31fc1g
Siarad	fusser17	1208	1	AET	a dw ddim yn saff	\N	cym	monoW	a	3	1	3	3	f	2	2	c	1	1	1	4	1	4	g	(a31fc1g
Siarad	fusser17	1208	2	AET	sut wnaethon nhw cael eu cynhyrchu	\N	cym	monoW	a	3	1	3	3	f	2	2	c	1	1	1	4	1	4	g	(a31fc1g
Siarad	fusser17	1209	1	AET	dw i licio meddwl na i fi	\N	cym	monoW	a	3	1	3	3	f	2	2	c	1	1	1	4	1	4	g	(a31fc1g
Siarad	fusser17	1209	2	AET	gaethon nhw eu cynhyrchu	\N	cym	monoW	a	3	1	3	3	f	2	2	c	1	1	1	4	1	4	g	(a31fc1g
Siarad	fusser17	1211	1	AET	ond mi wnaethon nhw diflannu mor sudden	clause division	cym	monoW	a	3	1	3	3	f	2	2	c	1	1	1	4	1	4	g	(a31fc1g
Siarad	davies4	1057	1	CYN	wnaeth o well	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	4	1	4	1	1	g	(a14ba1g
Siarad	davies4	1060	1	CYN	oh mae gaddo hi braf drwy yr dydd	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	4	1	4	1	1	g	(a14ba1g
Siarad	davies4	1065	1	CYN	be dw i isio de	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	4	1	4	1	1	g	(a14ba1g
Siarad	davies4	1067	1	CYN	oes gyn ti rywfaint i allu cael peth	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	4	1	4	1	1	g	(a14ba1g
Siarad	davies4	1069	1	CYN	a basai rywfaint o yr guano yma yn ideal hefyd	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	4	1	4	1	1	g	(a14ba1g
Siarad	davies4	1071	1	CYN	dw i ddim isio lot sti	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	4	1	4	1	1	g	(a14ba1g
Siarad	davies4	1072	1	CYN	um mae gyn i batch bach	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	4	1	4	1	1	g	(a14ba1g
Siarad	fusser12	535	1	LUN	cân	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	4	1	1	4	g	(a11ba1g
Siarad	fusser12	539	1	LUN	fydd hi ddiddorol	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	4	1	1	4	g	(a11ba1g
Siarad	fusser12	539	2	LUN	be ddigwyddith	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	4	1	1	4	g	(a11ba1g
Siarad	fusser12	546	1	LUN	na dydy o ddim deg o_gwbl	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	4	1	1	4	g	(a11ba1g
Siarad	fusser29	782	1	LOI	yndy	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	1	1	1	1	b	(a12bb1b
Siarad	fusser17	1211	1	AET	â ddothon nhw	h	cym	monoW	a	3	1	3	3	f	2	2	c	1	1	1	4	1	4	g	(a31fc1g
Siarad	fusser17	1213	1	AET	oedd	\N	cym	monoW	a	3	1	3	3	f	2	2	c	1	1	1	4	1	4	g	(a31fc1g
Siarad	fusser17	1213	2	AET	oedd o yn odd i fod yn honest	\N	cym	monoW	a	3	1	3	3	f	2	2	c	1	1	1	4	1	4	g	(a31fc1g
Siarad	fusser17	1224	1	AET	yndy	\N	cym	monoW	a	3	1	3	3	f	2	2	c	1	1	1	4	1	4	g	(a31fc1g
Siarad	fusser17	1236	1	AET	mae o ddiwrnod	\N	cym	monoW	a	3	1	3	3	f	2	2	c	1	1	1	4	1	4	g	(a31fc1g
Siarad	fusser17	1236	2	AET	lle dach chi roid eich botel pop yn y dŵr i oeri	clause division	cym	monoW	a	3	1	3	3	f	2	2	c	1	1	1	4	1	4	g	(a31fc1g
Siarad	fusser17	1239	1	AET	a dach chi yn eistedd i edrych	clause division	cym	monoW	a	3	1	3	3	f	2	2	c	1	1	1	4	1	4	g	(a31fc1g
Siarad	fusser17	1250	1	AET	dydy o ddim_byd debyg	\N	cym	monoW	a	3	1	3	3	f	2	2	c	1	1	1	4	1	4	g	(a31fc1g
Siarad	stammers6	1172	1	IFA	ydy o yn 	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers6	1172	2	IFA	ydy o wedi tanio 	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers6	1174	1	IFA	right paid ti â wneud o eto iawn 	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers6	1175	1	IFA	wna i neu Heulwen wneud o mewn tua chwech_deg eiliad 	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers6	1184	1	IFA	be does yna ddim pam 	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers6	1184	2	IFA	dydy o ddim yn dod ymlaen ta 	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers6	1186	1	IFA	right er cwbl ti wneud wan 	Auxiliary deletion - include in analysis	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers6	1186	2	IFA	ydy ryddhau dy law yn ara deg 	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers6	1188	1	IFA	wnaeth o gweithio fel yna 	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers6	1191	1	IFA	wna i wneud o 	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers6	1194	1	IFA	wna i wneud o 	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers9	526	3	RNW	baswn 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers2	232	1	JAQ	wna i 	\N	cym	monoW	a	3	1	3	3	f	1	3	c	2	4	4	4	3	3	o	(a31fc2o
Siarad	stammers2	233	1	JAQ	dw i wedi text_io hi i ddeud pen_blwydd hapus 	split needed after hi	cym	monoW	a	3	1	3	3	f	1	3	c	2	4	4	4	3	3	o	(a31fc2o
Siarad	stammers2	235	1	JAQ	ond tydy hi ddim wedi text_io fi nôl 	\N	cym	monoW	a	3	1	3	3	f	1	3	c	2	4	4	4	3	3	o	(a31fc2o
Siarad	stammers2	237	1	JAQ	ydy hi yn mynd allan heno 	\N	cym	monoW	a	3	1	3	3	f	1	3	c	2	4	4	4	3	3	o	(a31fc2o
Siarad	stammers2	241	1	JAQ	oedden nhw wedi mynd i pictures neithiwr 	\N	cym	monoW	a	3	1	3	3	f	1	3	c	2	4	4	4	3	3	o	(a31fc2o
Siarad	stammers2	247	1	JAQ	lle aethon nhw i te 	\N	cym	monoW	a	3	1	3	3	f	1	3	c	2	4	4	4	3	3	o	(a31fc2o
Siarad	stammers2	253	1	JAQ	yeah oedden nhw yn sôn 	\N	cym	monoW	a	3	1	3	3	f	1	3	c	2	4	4	4	3	3	o	(a31fc2o
Siarad	stammers2	253	2	JAQ	am fynd i Pizza_Hut neu K_F_C 	\N	cym	monoW	a	3	1	3	3	f	1	3	c	2	4	4	4	3	3	o	(a31fc2o
Siarad	stammers2	255	1	JAQ	so Pizza_Hut oedd o 	\N	cym	monoW	a	3	1	3	3	f	1	3	c	2	4	4	4	3	3	o	(a31fc2o
Siarad	stammers2	257	1	JAQ	pa film oedden nhw wedi gwylio 	\N	cym	monoW	a	3	1	3	3	f	1	3	c	2	4	4	4	3	3	o	(a31fc2o
Siarad	stammers2	259	1	JAQ	oedd hi yn deud 	\N	cym	monoW	a	3	1	3	3	f	1	3	c	2	4	4	4	3	3	o	(a31fc2o
Siarad	stammers2	259	2	JAQ	oedd o yn dda 	\N	cym	monoW	a	3	1	3	3	f	1	3	c	2	4	4	4	3	3	o	(a31fc2o
Siarad	fusser12	553	1	LUN	faint sy gynno fo ar_ôl rŵan	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	4	1	1	4	g	(a11ba1g
Siarad	fusser12	554	1	LUN	sut faint sy yna ers yr etholiad dwytha	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	4	1	1	4	g	(a11ba1g
Siarad	fusser12	557	1	LUN	achos mond dwywaith geith o fynd	clause division	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	4	1	1	4	g	(a11ba1g
Siarad	fusser16	1290	1	ANW	oedd	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	1	1	1	1	1	b	(a14ba1b
Siarad	fusser16	1290	2	ANW	oedd	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	1	1	1	1	1	b	(a14ba1b
Siarad	fusser16	1290	3	ANW	oedd	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	1	1	1	1	1	b	(a14ba1b
Siarad	fusser16	1290	4	ANW	oedd	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	1	1	1	1	1	b	(a14ba1b
Siarad	fusser16	1295	1	ANW	oedd	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	1	1	1	1	1	b	(a14ba1b
Siarad	fusser16	1298	1	ANW	oedd	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	1	1	1	1	1	b	(a14ba1b
Siarad	fusser12	561	1	LUN	tair mlynedd arall sy gynno fo ta llai	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	4	1	1	4	g	(a11ba1g
Siarad	fusser12	563	1	LUN	achos wyth mlynedd ydy yr hira de	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	4	1	1	4	g	(a11ba1g
Siarad	fusser12	570	1	LUN	oh na dw i yn gwybod	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	4	1	1	4	g	(a11ba1g
Siarad	stammers2	481	1	JAQ	na mae Simon yn aros yn tŷ Anna 	\N	cym	monoW	a	3	1	3	3	f	1	3	c	2	4	4	4	3	3	o	(a31fc2o
Siarad	stammers2	488	1	JAQ	a mae Andy yn edrych ymlaen mynd ar cruise 	\N	cym	monoW	a	3	1	3	3	f	1	3	c	2	4	4	4	3	3	o	(a31fc2o
Siarad	stammers2	489	1	JAQ	dydy o ddim wedi bod o blaen 	\N	cym	monoW	a	3	1	3	3	f	1	3	c	2	4	4	4	3	3	o	(a31fc2o
Siarad	stammers2	492	1	JAQ	so mae nhw yn edrych ymlaen mynd yn cael hwyl 	\N	cym	monoW	a	3	1	3	3	f	1	3	c	2	4	4	4	3	3	o	(a31fc2o
Siarad	stammers2	496	1	JAQ	a dan ni ddim yn mynd nunlle 	\N	cym	monoW	a	3	1	3	3	f	1	3	c	2	4	4	4	3	3	o	(a31fc2o
Siarad	stammers2	499	1	JAQ	ond does gynnon ni ddim pres dim blwyddyn yma 	\N	cym	monoW	a	3	1	3	3	f	1	3	c	2	4	4	4	3	3	o	(a31fc2o
Siarad	stammers2	508	1	JAQ	felly dan ni ddim yn medru mynd am holiday dim blwyddyn yma 	\N	cym	monoW	a	3	1	3	3	f	1	3	c	2	4	4	4	3	3	o	(a31fc2o
Siarad	stammers2	719	1	JAQ	a wedyn amser cinio mi wnes mi 	\N	cym	monoW	a	3	1	3	3	f	1	3	c	2	4	4	4	3	3	o	(a31fc2o
Siarad	stammers2	719	2	JAQ	wnes i fynd adre i newid i trousers oherwydd 	\N	cym	monoW	a	3	1	3	3	f	1	3	c	2	4	4	4	3	3	o	(a31fc2o
Siarad	stammers2	719	4	JAQ	oedd hi yn oer 	\N	cym	monoW	a	3	1	3	3	f	1	3	c	2	4	4	4	3	3	o	(a31fc2o
Siarad	stammers2	720	1	JAQ	dach chi ddim yn gwybod be i gwisgo na 	\N	cym	monoW	a	3	1	3	3	f	1	3	c	2	4	4	4	3	3	o	(a31fc2o
Siarad	stammers2	724	1	JAQ	ella gei gewch chi 	\N	cym	monoW	a	3	1	3	3	f	1	3	c	2	4	4	4	3	3	o	(a31fc2o
Siarad	stammers2	724	2	JAQ	gwisgo trousers a wedyn tua deg o gloch 	\N	cym	monoW	a	3	1	3	3	f	1	3	c	2	4	4	4	3	3	o	(a31fc2o
Siarad	stammers2	724	3	JAQ	mae yr haul yn 	\N	cym	monoW	a	3	1	3	3	f	1	3	c	2	4	4	4	3	3	o	(a31fc2o
Siarad	stammers2	727	1	JAQ	a wedyn dach chi yn boeth wedyn yn dosbarth 	\N	cym	monoW	a	3	1	3	3	f	1	3	c	2	4	4	4	3	3	o	(a31fc2o
Siarad	stammers2	734	1	JAQ	dw i meddwl 	\N	cym	monoW	a	3	1	3	3	f	1	3	c	2	4	4	4	3	3	o	(a31fc2o
Siarad	stammers2	734	2	JAQ	dan ni wedi cael yr ha ni rŵan 	\N	cym	monoW	a	3	1	3	3	f	1	3	c	2	4	4	4	3	3	o	(a31fc2o
Siarad	stammers2	740	1	JAQ	lle mae yr ha ni wedi mynd 	\N	cym	monoW	a	3	1	3	3	f	1	3	c	2	4	4	4	3	3	o	(a31fc2o
Siarad	stammers2	743	1	JAQ	a ydy yr un fath efo dillad 	\N	cym	monoW	a	3	1	3	3	f	1	3	c	2	4	4	4	3	3	o	(a31fc2o
Siarad	stammers2	745	1	JAQ	dach chi yn prynu dillad nice i yr ha a wedyn 	\N	cym	monoW	a	3	1	3	3	f	1	3	c	2	4	4	4	3	3	o	(a31fc2o
Siarad	stammers2	745	3	JAQ	gynnon ni ddim chance 	\N	cym	monoW	a	3	1	3	3	f	1	3	c	2	4	4	4	3	3	o	(a31fc2o
Siarad	stammers2	745	4	JAQ	i gwisgo nhw 	\N	cym	monoW	a	3	1	3	3	f	1	3	c	2	4	4	4	3	3	o	(a31fc2o
Siarad	stammers2	755	1	JAQ	mae yn lle mawr hwn yn_tydy 	\N	cym	monoW	a	3	1	3	3	f	1	3	c	2	4	4	4	3	3	o	(a31fc2o
Siarad	stammers2	757	1	JAQ	mae yna lot o stafelloedd 	\N	cym	monoW	a	3	1	3	3	f	1	3	c	2	4	4	4	3	3	o	(a31fc2o
Siarad	stammers9	163	1	RNW	fydd hi yn amser i ni ddechrau garddio yn_bydd 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers9	166	1	RNW	yndy 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers9	166	2	RNW	yndy 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers9	169	1	ENF	oh faswn i yn hoffi 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers9	169	2	ENF	os fydd hi yn 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers9	170	1	ENF	er mae yn gaddo glaw dydd Sul 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers9	170	3	ENF	dw meddwl 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers9	171	1	RNW	yndy 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers9	171	2	RNW	yndy 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	fusser12	577	1	LUN	be mae o yn feddwl	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	4	1	1	4	g	(a11ba1g
Siarad	fusser12	1081	1	LUN	mae yn dibynnu	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	4	1	1	4	g	(a11ba1g
Siarad	fusser12	1083	1	LUN	achos mae rywun yn meddwl yn syth	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	4	1	1	4	g	(a11ba1g
Siarad	fusser12	1085	1	LUN	ond go iawn mae yn debyg bod hi yn golygu gofalwyr	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	4	1	1	4	g	(a11ba1g
Siarad	fusser12	1085	3	LUN	dydy	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	4	1	1	4	g	(a11ba1g
Siarad	fusser12	1092	1	LUN	wedyn mewn ffordd basai yn ddiddorol gweld	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	4	1	1	4	g	(a11ba1g
Siarad	fusser12	1092	2	LUN	be sy gynni hi i gynnig neu	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	4	1	1	4	g	(a11ba1g
Siarad	stammers9	172	1	ENF	um faswn i yn hoffi cael mynd i_fyny am dro um i gyfeiriad um Llanelian 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers9	174	1	ENF	achos baswn i yn hoffi gweld 	\N	cym	monoW	a	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	stammers8	235	1	ISL	oedd Greg yn pregethu yn Carmel 	\N	cym	monoW	a	1	3	1	1	b	2	3	d	1	0	0	0	0	0	a	(a13bd1a
Siarad	stammers8	238	1	ISL	ac mae hwnnw yn hardd yn y pen blaen polion 	\N	cym	monoW	a	1	3	1	1	b	2	3	d	1	0	0	0	0	0	a	(a13bd1a
Siarad	stammers8	243	1	ISL	meddai fo 	\N	cym	monoW	a	1	3	1	1	b	2	3	d	1	0	0	0	0	0	a	(a13bd1a
Siarad	stammers8	250	1	ISL	oh yndy yn y cefn stafelloedd 	\N	cym	monoW	a	1	3	1	1	b	2	3	d	1	0	0	0	0	0	a	(a13bd1a
Siarad	stammers8	250	2	ISL	yndy 	\N	cym	monoW	a	1	3	1	1	b	2	3	d	1	0	0	0	0	0	a	(a13bd1a
Siarad	stammers8	261	1	ISL	well er wyt ti ar dy golled yn fawr bore Sul 	\N	cym	monoW	a	1	3	1	1	b	2	3	d	1	0	0	0	0	0	a	(a13bd1a
Siarad	stammers8	262	1	ISL	Clare oedd yn pregethu yn Penbryn 	\N	cym	monoW	a	1	3	1	1	b	2	3	d	1	0	0	0	0	0	a	(a13bd1a
Siarad	stammers8	445	1	ISL	mae yn ateb ei hun wan 	\N	cym	monoW	a	1	3	1	1	b	2	3	d	1	0	0	0	0	0	a	(a13bd1a
Siarad	stammers8	455	1	ISL	oedd o bob chwe phunt 	\N	cym	monoW	a	1	3	1	1	b	2	3	d	1	0	0	0	0	0	a	(a13bd1a
Siarad	stammers8	458	1	ISL	oedd 	\N	cym	monoW	a	1	3	1	1	b	2	3	d	1	0	0	0	0	0	a	(a13bd1a
Siarad	stammers8	458	2	ISL	oedd 	\N	cym	monoW	a	1	3	1	1	b	2	3	d	1	0	0	0	0	0	a	(a13bd1a
Siarad	stammers8	465	1	ISL	oedd hwnnw rywbeth i wneud efo Menter_Iaith Sir_Fflint 	\N	cym	monoW	a	1	3	1	1	b	2	3	d	1	0	0	0	0	0	a	(a13bd1a
Siarad	stammers8	465	2	ISL	dw i meddwl 	\N	cym	monoW	a	1	3	1	1	b	2	3	d	1	0	0	0	0	0	a	(a13bd1a
Siarad	stammers8	467	1	ISL	oedd 	\N	cym	monoW	a	1	3	1	1	b	2	3	d	1	0	0	0	0	0	a	(a13bd1a
Siarad	stammers8	707	1	ISL	oh wela i 	\N	cym	monoW	a	1	3	1	1	b	2	3	d	1	0	0	0	0	0	a	(a13bd1a
Siarad	stammers8	716	1	ISL	dw i yn mynd i yn y cae o_flaen Tyddyn_Ucha eleni 	\N	cym	monoW	a	1	3	1	1	b	2	3	d	1	0	0	0	0	0	a	(a13bd1a
Siarad	stammers8	722	1	ISL	ew na mi baran 	\N	cym	monoW	a	1	3	1	1	b	2	3	d	1	0	0	0	0	0	a	(a13bd1a
Siarad	stammers8	723	1	ISL	mae nhw wedi bwyta yr dail 	\N	cym	monoW	a	1	3	1	1	b	2	3	d	1	0	0	0	0	0	a	(a13bd1a
Siarad	stammers8	723	2	ISL	ond mae nhw 	\N	cym	monoW	a	1	3	1	1	b	2	3	d	1	0	0	0	0	0	a	(a13bd1a
Siarad	stammers8	726	1	ISL	mae yna swêj mawr yna 	\N	cym	monoW	a	1	3	1	1	b	2	3	d	1	0	0	0	0	0	a	(a13bd1a
Siarad	stammers8	734	1	ISL	yndy 	\N	cym	monoW	a	1	3	1	1	b	2	3	d	1	0	0	0	0	0	a	(a13bd1a
Siarad	davies11	236	1	DER	yndy	\N	cym	monoW	a	1	3	1	1	b	2	3	d	1	1	1	3	3	1	e	(a13bd1e
Siarad	davies11	236	2	DER	yndy	\N	cym	monoW	a	1	3	1	1	b	2	3	d	1	1	1	3	3	1	e	(a13bd1e
Siarad	davies11	236	3	DER	ydy	\N	cym	monoW	a	1	3	1	1	b	2	3	d	1	1	1	3	3	1	e	(a13bd1e
Siarad	davies11	242	1	DER	yeah well ers pryd wyt ti yn fyny yma	\N	cym	monoW	a	1	3	1	1	b	2	3	d	1	1	1	3	3	1	e	(a13bd1e
Siarad	davies11	281	1	DER	pa mor fawr oedd yr ysgol	\N	cym	monoW	a	1	3	1	1	b	2	3	d	1	1	1	3	3	1	e	(a13bd1e
Siarad	davies11	286	1	DER	ydy yn dal ar agor	\N	cym	monoW	a	1	3	1	1	b	2	3	d	1	1	1	3	3	1	e	(a13bd1e
Siarad	davies11	288	1	DER	yna lai yna rŵan mae sure	\N	cym	monoW	a	1	3	1	1	b	2	3	d	1	1	1	3	3	1	e	(a13bd1e
Siarad	davies11	335	1	DER	oes yna neuadd yno yn Glyn_Ceiriog	\N	cym	monoW	a	1	3	1	1	b	2	3	d	1	1	1	3	3	1	e	(a13bd1e
Siarad	davies11	338	1	DER	yeah achos dw i	\N	cym	monoW	a	1	3	1	1	b	2	3	d	1	1	1	3	3	1	e	(a13bd1e
Siarad	davies11	338	2	DER	dw i sure bod ni wedi bod yn gwneud drama yn Glyn_Ceiriog mynd er drama o yr ysgol felly yn_de	\N	cym	monoW	a	1	3	1	1	b	2	3	d	1	1	1	3	3	1	e	(a13bd1e
Siarad	davies11	349	1	DER	dw i sure na tua Glyn_Ceiriog	\N	cym	monoW	a	1	3	1	1	b	2	3	d	1	1	1	3	3	1	e	(a13bd1e
Siarad	davies11	349	2	DER	oedd hi	\N	cym	monoW	a	1	3	1	1	b	2	3	d	1	1	1	3	3	1	e	(a13bd1e
Siarad	davies11	355	1	DER	oh ydyn nhw	\N	cym	monoW	a	1	3	1	1	b	2	3	d	1	1	1	3	3	1	e	(a13bd1e
Siarad	davies11	374	1	DER	o le oedden nhw yn dod	\N	cym	monoW	a	1	3	1	1	b	2	3	d	1	1	1	3	3	1	e	(a13bd1e
Siarad	davies11	571	1	DER	ydyn nhw yn dal mewn print	\N	cym	monoW	a	1	3	1	1	b	2	3	d	1	1	1	3	3	1	e	(a13bd1e
Siarad	davies11	577	1	DER	mae gynnoch chi gopïau	clause division	cym	monoW	a	1	3	1	1	b	2	3	d	1	1	1	3	3	1	e	(a13bd1e
Siarad	davies11	581	1	DER	well bydd	\N	cym	monoW	a	1	3	1	1	b	2	3	d	1	1	1	3	3	1	e	(a13bd1e
Siarad	davies11	581	2	DER	bydd	\N	cym	monoW	a	1	3	1	1	b	2	3	d	1	1	1	3	3	1	e	(a13bd1e
Siarad	fusser12	1092	3	LUN	be fysai gynni hi i gynnig	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	4	1	1	4	g	(a11ba1g
Siarad	fusser12	1104	1	LUN	achos wrth_gwrs oedd yr un	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	4	1	1	4	g	(a11ba1g
Siarad	fusser12	1104	2	LUN	sy wedi marw yn hollol o blaid euthanasia	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	4	1	1	4	g	(a11ba1g
Siarad	fusser12	1114	1	LUN	yndy	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	4	1	1	4	g	(a11ba1g
Siarad	fusser12	1114	2	LUN	dydy o ddim i weld yn deg rywsut	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	4	1	1	4	g	(a11ba1g
Siarad	davies11	583	1	DER	bydd yn hollol wahanol i	\N	cym	monoW	a	1	3	1	1	b	2	3	d	1	1	1	3	3	1	e	(a13bd1e
Siarad	davies11	583	2	DER	be mae yr plant bach arall wedi darllen yn_bydd	\N	cym	monoW	a	1	3	1	1	b	2	3	d	1	1	1	3	3	1	e	(a13bd1e
Siarad	davies11	587	1	DER	bydd	\N	cym	monoW	a	1	3	1	1	b	2	3	d	1	1	1	3	3	1	e	(a13bd1e
Siarad	davies11	609	1	DER	oedd mam yn medru godro yn chimod	\N	cym	monoW	a	1	3	1	1	b	2	3	d	1	1	1	3	3	1	e	(a13bd1e
Siarad	davies11	609	2	DER	oedd hi medru godro yn	\N	cym	monoW	a	1	3	1	1	b	2	3	d	1	1	1	3	3	1	e	(a13bd1e
Siarad	davies11	641	1	DER	oeddech chi	\N	cym	monoW	a	1	3	1	1	b	2	3	d	1	1	1	3	3	1	e	(a13bd1e
Siarad	davies11	644	1	DER	oedd hi	\N	cym	monoW	a	1	3	1	1	b	2	3	d	1	1	1	3	3	1	e	(a13bd1e
Siarad	davies11	647	1	DER	oh deudwch chi	\N	cym	monoW	a	1	3	1	1	b	2	3	d	1	1	1	3	3	1	e	(a13bd1e
Siarad	davies11	656	1	DER	Lot oedd un de	\N	cym	monoW	a	1	3	1	1	b	2	3	d	1	1	1	3	3	1	e	(a13bd1e
Siarad	davies11	780	1	DER	yeah fyddech chi mynd i Crufts yn_byddech	\N	cym	monoW	a	1	3	1	1	b	2	3	d	1	1	1	3	3	1	e	(a13bd1e
Siarad	davies11	792	1	DER	mmm yndy	\N	cym	monoW	a	1	3	1	1	b	2	3	d	1	1	1	3	3	1	e	(a13bd1e
Siarad	davies11	792	2	DER	mae nhw yn yn freed arall dydyn	\N	cym	monoW	a	1	3	1	1	b	2	3	d	1	1	1	3	3	1	e	(a13bd1e
Siarad	davies11	813	1	DER	oes yna dim_byd tebyg ffordd hyn felly	\N	cym	monoW	a	1	3	1	1	b	2	3	d	1	1	1	3	3	1	e	(a13bd1e
Siarad	davies11	864	1	DER	mae	\N	cym	monoW	a	1	3	1	1	b	2	3	d	1	1	1	3	3	1	e	(a13bd1e
Siarad	davies11	866	1	DER	mae yn dibynnu	\N	cym	monoW	a	1	3	1	1	b	2	3	d	1	1	1	3	3	1	e	(a13bd1e
Siarad	davies11	866	2	DER	dibynnu	\N	cym	monoW	a	1	3	1	1	b	2	3	d	1	1	1	3	3	1	e	(a13bd1e
Siarad	davies11	866	3	DER	pwy sy isio	\N	cym	monoW	a	1	3	1	1	b	2	3	d	1	1	1	3	3	1	e	(a13bd1e
Siarad	davies11	866	4	DER	os dach chi yn werthu fo am bris	\N	cym	monoW	a	1	3	1	1	b	2	3	d	1	1	1	3	3	1	e	(a13bd1e
Siarad	davies11	911	1	DER	oh gynno fo le mawr i cadw nhw	\N	cym	monoW	a	1	3	1	1	b	2	3	d	1	1	1	3	3	1	e	(a13bd1e
Siarad	davies11	911	2	DER	mae raid	\N	cym	monoW	a	1	3	1	1	b	2	3	d	1	1	1	3	3	1	e	(a13bd1e
Siarad	davies11	980	1	DER	oh mae yna lot o bobl Eisteddfod yn gwneud hynny	\N	cym	monoW	a	1	3	1	1	b	2	3	d	1	1	1	3	3	1	e	(a13bd1e
Siarad	davies11	983	1	DER	mae nhw holi gynta	\N	cym	monoW	a	1	3	1	1	b	2	3	d	1	1	1	3	3	1	e	(a13bd1e
Siarad	davies11	983	2	DER	pwy ydy beirniad yn enwedig efo canu de	clause division	cym	monoW	a	1	3	1	1	b	2	3	d	1	1	1	3	3	1	e	(a13bd1e
Siarad	davies11	983	3	DER	pwy wedi beirniad canu	h	cym	monoW	a	1	3	1	1	b	2	3	d	1	1	1	3	3	1	e	(a13bd1e
Siarad	davies11	987	1	DER	yndy	\N	cym	monoW	a	1	3	1	1	b	2	3	d	1	1	1	3	3	1	e	(a13bd1e
Siarad	davies11	1103	1	DER	sut mae gael hawl	clause division	cym	monoW	a	1	3	1	1	b	2	3	d	1	1	1	3	3	1	e	(a13bd1e
Siarad	davies11	1103	2	DER	i wneud o de	\N	cym	monoW	a	1	3	1	1	b	2	3	d	1	1	1	3	3	1	e	(a13bd1e
Siarad	fusser18	245	1	BEU	yeah dw meddwl deuddeg	clause division	cym	monoW	a	1	1	1	1	b	3	2	d	1	1	1	1	4	4	g	(a11bd1g
Siarad	fusser18	245	1	BEU	gei di yeah	h	cym	monoW	a	1	1	1	1	b	3	2	d	1	1	1	1	4	4	g	(a11bd1g
Siarad	fusser18	248	1	BEU	ond um dw i ddim isio dim mwy o rheina	\N	cym	monoW	a	1	1	1	1	b	3	2	d	1	1	1	1	4	4	g	(a11bd1g
Siarad	fusser18	253	1	BEU	ond chwarae teg dw i right ofalus hefyd	\N	cym	monoW	a	1	1	1	1	b	3	2	d	1	1	1	1	4	4	g	(a11bd1g
Siarad	fusser18	253	2	BEU	yndw	\N	cym	monoW	a	1	1	1	1	b	3	2	d	1	1	1	1	4	4	g	(a11bd1g
Siarad	fusser18	253	3	BEU	pan dw i mynd i llefydd yma	\N	cym	monoW	a	1	1	1	1	b	3	2	d	1	1	1	1	4	4	g	(a11bd1g
Siarad	fusser18	260	1	BEU	wnes i ddim gweld dim_byd chwaith	\N	cym	monoW	a	1	1	1	1	b	3	2	d	1	1	1	1	4	4	g	(a11bd1g
Siarad	fusser18	270	1	BEU	ac ac oedd o meddwl bod yna lorry o ei flaen o	\N	cym	monoW	a	1	1	1	1	b	3	2	d	1	1	1	1	4	4	g	(a11bd1g
Siarad	fusser18	271	1	BEU	wnaeth o ddim gweld y sign tri_deg	\N	cym	monoW	a	1	1	1	1	b	3	2	d	1	1	1	1	4	4	g	(a11bd1g
Siarad	fusser18	272	1	BEU	so pan wnaeth o dod i_fewn iddo fo	\N	cym	monoW	a	1	1	1	1	b	3	2	d	1	1	1	1	4	4	g	(a11bd1g
Siarad	fusser18	272	2	BEU	oedd o gorod brecio yn sydyn i_lawr	\N	cym	monoW	a	1	1	1	1	b	3	2	d	1	1	1	1	4	4	g	(a11bd1g
Siarad	fusser18	273	1	BEU	ond erbyn adeg yna oedd o wedi cael	\N	cym	monoW	a	1	1	1	1	b	3	2	d	1	1	1	1	4	4	g	(a11bd1g
Siarad	fusser18	521	1	BEU	so mae hi wedi penderfynu	\N	cym	monoW	a	1	1	1	1	b	3	2	d	1	1	1	1	4	4	g	(a11bd1g
Siarad	fusser18	521	2	BEU	pwy mae isio eistedd	\N	cym	monoW	a	1	1	1	1	b	3	2	d	1	1	1	1	4	4	g	(a11bd1g
Siarad	fusser18	523	1	BEU	mae Cai ddim isio eistedd wrth ymyl y ffenestr hefyd	\N	cym	monoW	a	1	1	1	1	b	3	2	d	1	1	1	1	4	4	g	(a11bd1g
Siarad	fusser18	527	1	BEU	oh fydd raid ni fynd efo nhw	\N	cym	monoW	a	1	1	1	1	b	3	2	d	1	1	1	1	4	4	g	(a11bd1g
Siarad	fusser18	529	1	BEU	yndyn	\N	cym	monoW	a	1	1	1	1	b	3	2	d	1	1	1	1	4	4	g	(a11bd1g
Siarad	fusser18	532	1	BEU	oh wneith change cael	\N	cym	monoW	a	1	1	1	1	b	3	2	d	1	1	1	1	4	4	g	(a11bd1g
Siarad	fusser18	532	2	BEU	mynd lle dreifio ar_hyd yr A_pum_deg_pump	\N	cym	monoW	a	1	1	1	1	b	3	2	d	1	1	1	1	4	4	g	(a11bd1g
Siarad	fusser12	1115	2	LUN	sy gynnan ni yn ddewis	clause division	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	4	1	1	4	g	(a11ba1g
Siarad	fusser3	802	1	ALY	beth yw yr adar yna	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser18	544	1	BEU	be be oedd yn trio wneud	clause division	cym	monoW	a	1	1	1	1	b	3	2	d	1	1	1	1	4	4	g	(a11bd1g
Siarad	fusser18	569	1	BEU	mae rei o nhw yr oedran yna medru bod yn wyllt i chi yn_does	\N	cym	monoW	a	1	1	1	1	b	3	2	d	1	1	1	1	4	4	g	(a11bd1g
Siarad	fusser18	577	1	BEU	dw i ddim yn gwybod	\N	cym	monoW	a	1	1	1	1	b	3	2	d	1	1	1	1	4	4	g	(a11bd1g
Siarad	fusser18	586	1	BEU	oes o'ch chdi yn deud	\N	cym	monoW	a	1	1	1	1	b	3	2	d	1	1	1	1	4	4	g	(a11bd1g
Siarad	fusser18	796	1	BEU	er mae hynna mynd i gael y stuff er	\N	cym	monoW	a	1	1	1	1	b	3	2	d	1	1	1	1	4	4	g	(a11bd1g
Siarad	fusser18	798	2	BEU	yndy	\N	cym	monoW	a	1	1	1	1	b	3	2	d	1	1	1	1	4	4	g	(a11bd1g
Siarad	fusser18	809	1	BEU	alla i fynd â nhw ar y ffordd i gwaith	\N	cym	monoW	a	1	1	1	1	b	3	2	d	1	1	1	1	4	4	g	(a11bd1g
Siarad	fusser18	816	2	BEU	wna i siarad efo nhw	\N	cym	monoW	a	1	1	1	1	b	3	2	d	1	1	1	1	4	4	g	(a11bd1g
Siarad	fusser18	818	1	BEU	wna i wneud trio bwcio rywbeth fory	\N	cym	monoW	a	1	1	1	1	b	3	2	d	1	1	1	1	4	4	g	(a11bd1g
Siarad	fusser18	822	1	BEU	sut dan ni o ran bwyd wythnos yma	\N	cym	monoW	a	1	1	1	1	b	3	2	d	1	1	1	1	4	4	g	(a11bd1g
Siarad	deuchar1	326	1	SER	oedd	\N	cym	monoW	a	1	3	1	1	b	3	2	d	1	3	4	4	1	3	l	(a13bd1l
Siarad	deuchar1	302	1	SER	yeah dw meddwl	\N	cym	monoW	a	1	3	1	1	b	3	2	d	1	3	4	4	1	3	l	(a13bd1l
Siarad	deuchar1	302	2	SER	mae nhw wedi	not sure if we count this as finite	cym	monoW	a	1	3	1	1	b	3	2	d	1	3	4	4	1	3	l	(a13bd1l
Siarad	deuchar1	303	1	SER	um mae mynd	not sure if we count this as finite	cym	monoW	a	1	3	1	1	b	3	2	d	1	3	4	4	1	3	l	(a13bd1l
Siarad	deuchar1	303	2	SER	mae	\N	cym	monoW	a	1	3	1	1	b	3	2	d	1	3	4	4	1	3	l	(a13bd1l
Siarad	deuchar1	303	3	SER	dydy o ddim yn dod yn_dôl tan dydd Llun	\N	cym	monoW	a	1	3	1	1	b	3	2	d	1	3	4	4	1	3	l	(a13bd1l
Siarad	deuchar1	307	1	SER	so dw ddim yn gwybod sut hwyl	\N	cym	monoW	a	1	3	1	1	b	3	2	d	1	3	4	4	1	3	l	(a13bd1l
Siarad	deuchar1	311	1	SER	yeah ond dw i ddim yn cofio be	\N	cym	monoW	a	1	3	1	1	b	3	2	d	1	3	4	4	1	3	l	(a13bd1l
Siarad	deuchar1	313	1	SER	ryw group ryw bands mae mynd i weld	\N	cym	monoW	a	1	3	1	1	b	3	2	d	1	3	4	4	1	3	l	(a13bd1l
Siarad	deuchar1	317	1	SER	ond um dw ddim yn gwybod	\N	cym	monoW	a	1	3	1	1	b	3	2	d	1	3	4	4	1	3	l	(a13bd1l
Siarad	deuchar1	317	2	SER	be ydy enwau nhw wrth_gwrs	\N	cym	monoW	a	1	3	1	1	b	3	2	d	1	3	4	4	1	3	l	(a13bd1l
Siarad	deuchar1	324	1	SER	oedd sure	\N	cym	monoW	a	1	3	1	1	b	3	2	d	1	3	4	4	1	3	l	(a13bd1l
Siarad	deuchar1	324	2	SER	oedd	\N	cym	monoW	a	1	3	1	1	b	3	2	d	1	3	4	4	1	3	l	(a13bd1l
Siarad	deuchar1	330	1	SER	ond er wnes	clause division	cym	monoW	a	1	3	1	1	b	3	2	d	1	3	4	4	1	3	l	(a13bd1l
Siarad	deuchar1	330	3	SER	pan o'n i yna ddoe	h	cym	monoW	a	1	3	1	1	b	3	2	d	1	3	4	4	1	3	l	(a13bd1l
Siarad	deuchar1	330	4	SER	wnes i weld Irene um hogan	\N	cym	monoW	a	1	3	1	1	b	3	2	d	1	3	4	4	1	3	l	(a13bd1l
Siarad	deuchar1	330	5	SER	sy yn trefnu fo	\N	cym	monoW	a	1	3	1	1	b	3	2	d	1	3	4	4	1	3	l	(a13bd1l
Siarad	deuchar1	512	1	SER	yndy	\N	cym	monoW	a	1	3	1	1	b	3	2	d	1	3	4	4	1	3	l	(a13bd1l
Siarad	deuchar1	522	1	SER	well oedd	\N	cym	monoW	a	1	3	1	1	b	3	2	d	1	3	4	4	1	3	l	(a13bd1l
Siarad	deuchar1	522	2	SER	oedd gynna i	\N	cym	monoW	a	1	3	1	1	b	3	2	d	1	3	4	4	1	3	l	(a13bd1l
Siarad	deuchar1	572	1	SER	oh yndy	\N	cym	monoW	a	1	3	1	1	b	3	2	d	1	3	4	4	1	3	l	(a13bd1l
Siarad	deuchar1	584	1	SER	pwy sy yn gwarchod y plant	\N	cym	monoW	a	1	3	1	1	b	3	2	d	1	3	4	4	1	3	l	(a13bd1l
Siarad	deuchar1	635	1	SER	achos oedd o yn ddeunaw mis	\N	cym	monoW	a	1	3	1	1	b	3	2	d	1	3	4	4	1	3	l	(a13bd1l
Siarad	deuchar1	652	1	SER	mae yn byw yn	\N	cym	monoW	a	1	3	1	1	b	3	2	d	1	3	4	4	1	3	l	(a13bd1l
Siarad	deuchar1	661	1	SER	yndy	\N	cym	monoW	a	1	3	1	1	b	3	2	d	1	3	4	4	1	3	l	(a13bd1l
Siarad	deuchar1	662	1	SER	mae e yn job	clause division	cym	monoW	a	1	3	1	1	b	3	2	d	1	3	4	4	1	3	l	(a13bd1l
Siarad	deuchar1	925	1	SER	oes gyn ei fab o gôr	\N	cym	monoW	a	1	3	1	1	b	3	2	d	1	3	4	4	1	3	l	(a13bd1l
Siarad	deuchar1	926	2	SER	mae côr lawr yn Gaerdydd yeah	\N	cym	monoW	a	1	3	1	1	b	3	2	d	1	3	4	4	1	3	l	(a13bd1l
Siarad	deuchar1	928	1	SER	yndy	\N	cym	monoW	a	1	3	1	1	b	3	2	d	1	3	4	4	1	3	l	(a13bd1l
Siarad	deuchar1	928	2	SER	yndy	\N	cym	monoW	a	1	3	1	1	b	3	2	d	1	3	4	4	1	3	l	(a13bd1l
Siarad	deuchar1	930	1	SER	ydy	\N	cym	monoW	a	1	3	1	1	b	3	2	d	1	3	4	4	1	3	l	(a13bd1l
Siarad	deuchar1	930	2	SER	ydy	\N	cym	monoW	a	1	3	1	1	b	3	2	d	1	3	4	4	1	3	l	(a13bd1l
Siarad	deuchar1	939	1	SER	dw byth yn cofio eu henwau nhw	\N	cym	monoW	a	1	3	1	1	b	3	2	d	1	3	4	4	1	3	l	(a13bd1l
Siarad	deuchar1	944	1	SER	yndy	\N	cym	monoW	a	1	3	1	1	b	3	2	d	1	3	4	4	1	3	l	(a13bd1l
Siarad	deuchar1	945	1	SER	fo sy yn byw yn Gaerdydd yeah	\N	cym	monoW	a	1	3	1	1	b	3	2	d	1	3	4	4	1	3	l	(a13bd1l
Siarad	deuchar1	946	1	SER	mae raid	\N	cym	monoW	a	1	3	1	1	b	3	2	d	1	3	4	4	1	3	l	(a13bd1l
Siarad	deuchar1	952	1	SER	fo fo ddaru	non-finite?	cym	monoW	a	1	3	1	1	b	3	2	d	1	3	4	4	1	3	l	(a13bd1l
Siarad	deuchar1	952	2	SER	briodi	\N	cym	monoW	a	1	3	1	1	b	3	2	d	1	3	4	4	1	3	l	(a13bd1l
Siarad	deuchar1	958	1	SER	dw i ddim yn er	\N	cym	monoW	a	1	3	1	1	b	3	2	d	1	3	4	4	1	3	l	(a13bd1l
Siarad	fusser19	245	1	TRE	mae nhw deud Lloegr	\N	cym	monoW	a	1	2	3	1	d	3	2	d	1	1	1	1	1	1	b	(a12dd1b
Siarad	fusser19	499	4	TRE	mae nhw isio	\N	cym	monoW	a	1	2	3	1	d	3	2	d	1	1	1	1	1	1	b	(a12dd1b
Siarad	fusser19	235	1	TRE	yeah yeah ond er gynta byd mae nhw yn weld o am	\N	cym	monoW	a	1	2	3	1	d	3	2	d	1	1	1	1	1	1	b	(a12dd1b
Siarad	fusser19	235	2	TRE	be ydy o	\N	cym	monoW	a	1	2	3	1	d	3	2	d	1	1	1	1	1	1	b	(a12dd1b
Siarad	fusser12	1115	3	LUN	bysai gennon ni yr dewis i farw rywsut	clause division	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	4	1	1	4	g	(a11ba1g
Siarad	fusser12	1115	8	LUN	bysai	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	4	1	1	4	g	(a11ba1g
Siarad	fusser12	1124	1	LUN	well meddwl meddwl oedden ni	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	4	1	1	4	g	(a11ba1g
Siarad	fusser12	1129	1	LUN	yndyn	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	4	1	1	4	g	(a11ba1g
Siarad	fusser12	1131	1	LUN	gwneith i eistedd	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	4	1	1	4	g	(a11ba1g
Siarad	fusser12	1641	1	LUN	achos dw i meddwl	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	4	1	1	4	g	(a11ba1g
Siarad	fusser12	1645	1	LUN	yndy o'n i mynd i ddeud	clause division	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	4	1	1	4	g	(a11ba1g
Siarad	fusser12	1652	1	LUN	basai hynna yn great	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	4	1	1	4	g	(a11ba1g
Siarad	fusser12	1653	1	LUN	basai hynna yn great	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	4	1	1	4	g	(a11ba1g
Siarad	fusser12	1661	1	LUN	dach chi	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	4	1	1	4	g	(a11ba1g
Siarad	fusser12	1667	1	LUN	oh fedra i ddim meddwl bod pawb	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	4	1	1	4	g	(a11ba1g
Siarad	fusser19	236	1	TRE	mae nhw hanner ffordd	\N	cym	monoW	a	1	2	3	1	d	3	2	d	1	1	1	1	1	1	b	(a12dd1b
Siarad	fusser19	244	1	TRE	oh ia rywbeth arall ydy hynna	\N	cym	monoW	a	1	2	3	1	d	3	2	d	1	1	1	1	1	1	b	(a12dd1b
Siarad	fusser19	247	1	TRE	Lloegr sy wedi pasio deddf	\N	cym	monoW	a	1	2	3	1	d	3	2	d	1	1	1	1	1	1	b	(a12dd1b
Siarad	fusser19	251	1	TRE	oh dw i yn gwybod	\N	cym	monoW	a	1	2	3	1	d	3	2	d	1	1	1	1	1	1	b	(a12dd1b
Siarad	fusser19	253	1	TRE	os ydy y Cynulliad yn ei basio de	\N	cym	monoW	a	1	2	3	1	d	3	2	d	1	1	1	1	1	1	b	(a12dd1b
Siarad	fusser19	261	1	TRE	gwneud o weithio ydy peth	non-finite	cym	monoW	a	1	2	3	1	d	3	2	d	1	1	1	1	1	1	b	(a12dd1b
Siarad	fusser19	262	1	TRE	mae wedi gweithio yn Iwerddon do	\N	cym	monoW	a	1	2	3	1	d	3	2	d	1	1	1	1	1	1	b	(a12dd1b
Siarad	fusser19	479	1	TRE	yndy	\N	cym	monoW	a	1	2	3	1	d	3	2	d	1	1	1	1	1	1	b	(a12dd1b
Siarad	fusser19	479	2	TRE	ydy	\N	cym	monoW	a	1	2	3	1	d	3	2	d	1	1	1	1	1	1	b	(a12dd1b
Siarad	fusser19	479	3	TRE	mae yn wir	\N	cym	monoW	a	1	2	3	1	d	3	2	d	1	1	1	1	1	1	b	(a12dd1b
Siarad	fusser19	484	1	TRE	dw i ddim yn deud	\N	cym	monoW	a	1	2	3	1	d	3	2	d	1	1	1	1	1	1	b	(a12dd1b
Siarad	fusser19	485	1	TRE	dw i ddim yn deud	\N	cym	monoW	a	1	2	3	1	d	3	2	d	1	1	1	1	1	1	b	(a12dd1b
Siarad	fusser19	487	1	TRE	deud wrtha chdi be ydy dadl Forest	non-finite	cym	monoW	a	1	2	3	1	d	3	2	d	1	1	1	1	1	1	b	(a12dd1b
Siarad	fusser19	487	3	TRE	ydw i	\N	cym	monoW	a	1	2	3	1	d	3	2	d	1	1	1	1	1	1	b	(a12dd1b
Siarad	fusser19	491	1	TRE	y ffaith ydy	\N	cym	monoW	a	1	2	3	1	d	3	2	d	1	1	1	1	1	1	b	(a12dd1b
Siarad	fusser19	495	1	TRE	na dw innau ddim yn cymryd eu ochr nhw	\N	cym	monoW	a	1	2	3	1	d	3	2	d	1	1	1	1	1	1	b	(a12dd1b
Siarad	fusser19	497	1	TRE	yeah yeah ond cymryd ei hochr nhw o ran deud ydw i	non-finite	cym	monoW	a	1	2	3	1	d	3	2	d	1	1	1	1	1	1	b	(a12dd1b
Siarad	fusser19	498	1	TRE	mai dyna be ydy dadl nhw	non-finite	cym	monoW	a	1	2	3	1	d	3	2	d	1	1	1	1	1	1	b	(a12dd1b
Siarad	fusser19	499	1	TRE	mae gen bawb ei hawl ei hun i fwynhau ei hun ffordd	\N	cym	monoW	a	1	2	3	1	d	3	2	d	1	1	1	1	1	1	b	(a12dd1b
Siarad	fusser19	509	1	TRE	dw i wedi	\N	cym	monoW	a	1	2	3	1	d	3	2	d	1	1	1	1	1	1	b	(a12dd1b
Siarad	fusser19	712	1	TRE	ond y ffaith ydy	\N	cym	monoW	a	1	2	3	1	d	3	2	d	1	1	1	1	1	1	b	(a12dd1b
Siarad	fusser19	712	2	TRE	does yna ddim rhaid cael gwybod	\N	cym	monoW	a	1	2	3	1	d	3	2	d	1	1	1	1	1	1	b	(a12dd1b
Siarad	fusser19	712	4	TRE	am be sy yn digwydd yn y byd	\N	cym	monoW	a	1	2	3	1	d	3	2	d	1	1	1	1	1	1	b	(a12dd1b
Siarad	fusser19	720	1	TRE	ond ffaith ydy	\N	cym	monoW	a	1	2	3	1	d	3	2	d	1	1	1	1	1	1	b	(a12dd1b
Siarad	fusser19	721	1	TRE	er gymaint o newyddion oedd o_gwmpas	\N	cym	monoW	a	1	2	3	1	d	3	2	d	1	1	1	1	1	1	b	(a12dd1b
Siarad	fusser19	744	1	TRE	dw i ddim yn dallt	\N	cym	monoW	a	1	2	3	1	d	3	2	d	1	1	1	1	1	1	b	(a12dd1b
Siarad	fusser19	748	1	TRE	oedd yna dri ohonyn nhw	\N	cym	monoW	a	1	2	3	1	d	3	2	d	1	1	1	1	1	1	b	(a12dd1b
Siarad	fusser19	750	1	TRE	nac ydy ond	\N	cym	monoW	a	1	2	3	1	d	3	2	d	1	1	1	1	1	1	b	(a12dd1b
Siarad	fusser19	759	1	TRE	oh mi oedden nhw yn barod amdani	\N	cym	monoW	a	1	2	3	1	d	3	2	d	1	1	1	1	1	1	b	(a12dd1b
Siarad	fusser19	762	1	TRE	oedden nhw yn tracio hi	\N	cym	monoW	a	1	2	3	1	d	3	2	d	1	1	1	1	1	1	b	(a12dd1b
Siarad	smith1	178	1	CEI	yndw 	\N	cym	monoW	a	3	1	2	2	d	3	2	d	4	3	3	0	0	0	l	(a31dd4l
Siarad	smith1	178	2	CEI	dw i yn 	\N	cym	monoW	a	3	1	2	2	d	3	2	d	4	3	3	0	0	0	l	(a31dd4l
Siarad	smith1	190	1	CEI	paid â siarad Cymraeg posh just 	\N	cym	monoW	a	3	1	2	2	d	3	2	d	4	3	3	0	0	0	l	(a31dd4l
Siarad	smith1	190	3	CEI	am bod ti yn wneud hyn wan 	\N	cym	monoW	a	3	1	2	2	d	3	2	d	4	3	3	0	0	0	l	(a31dd4l
Siarad	smith1	194	1	CEI	ia ond ti ddim isio siarad fel yna nag oes 	\N	cym	monoW	a	3	1	2	2	d	3	2	d	4	3	3	0	0	0	l	(a31dd4l
Siarad	smith1	198	1	CEI	wna i ateb chdi	ti belongs to next clause, as 'ti siarad yn iawn'	cym	monoW	a	3	1	2	2	d	3	2	d	4	3	3	0	0	0	l	(a31dd4l
Siarad	fusser12	1668	1	LUN	dach chimod	if tag then exclude	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	4	1	1	4	g	(a11ba1g
Siarad	fusser16	1305	1	ANW	dw i yn cofio um efo	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	1	1	1	1	1	b	(a14ba1b
Siarad	fusser16	1307	1	ANW	yn lwcus yn yr ha fyddai ffrind i mi yn dod yma Sharon	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	1	1	1	1	1	b	(a14ba1b
Siarad	fusser12	1668	2	LUN	pawb sy o blaid rhyfel wrth_gwrs	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	4	1	1	4	g	(a11ba1g
Siarad	fusser12	1668	3	LUN	mae nhw mynd i anghytuno	clause division	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	4	1	1	4	g	(a11ba1g
Siarad	fusser12	1668	5	LUN	mae yn debyg	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	4	1	1	4	g	(a11ba1g
Siarad	fusser12	1669	1	LUN	ond pawb sy yn_erbyn rhyfel	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	4	1	1	4	g	(a11ba1g
Siarad	fusser12	1669	2	LUN	fedra i ddim dallt	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	4	1	1	4	g	(a11ba1g
Siarad	fusser12	1669	3	LUN	be sy gynnyn nhw yn_erbyn y peth	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	4	1	1	4	g	(a11ba1g
Siarad	smith1	198	2	CEI	pan ti siarad yn iawn 	aux deleted, fine	cym	monoW	a	3	1	2	2	d	3	2	d	4	3	3	0	0	0	l	(a31dd4l
Siarad	smith1	203	1	CEI	yeah dw i syportio yr ddau 	\N	cym	monoW	a	3	1	2	2	d	3	2	d	4	3	3	0	0	0	l	(a31dd4l
Siarad	smith1	244	1	CEI	dim isio siarad mae o yeah 	\N	cym	monoW	a	3	1	2	2	d	3	2	d	4	3	3	0	0	0	l	(a31dd4l
Siarad	smith1	251	1	CEI	iawn fel yna ydy 	\N	cym	monoW	a	3	1	2	2	d	3	2	d	4	3	3	0	0	0	l	(a31dd4l
Siarad	smith1	254	1	CEI	doedd o ddim isio siarad efo ni wan nag 	\N	cym	monoW	a	3	1	2	2	d	3	2	d	4	3	3	0	0	0	l	(a31dd4l
Siarad	smith1	254	2	CEI	oedd 	\N	cym	monoW	a	3	1	2	2	d	3	2	d	4	3	3	0	0	0	l	(a31dd4l
Siarad	smith1	256	1	CEI	Gary ydy enw fo 	\N	cym	monoW	a	3	1	2	2	d	3	2	d	4	3	3	0	0	0	l	(a31dd4l
Siarad	smith1	257	1	CEI	Gary iawn dw cofio 	\N	cym	monoW	a	3	1	2	2	d	3	2	d	4	3	3	0	0	0	l	(a31dd4l
Siarad	smith1	387	1	CEI	mae yn cool bod 	\N	cym	monoW	a	3	1	2	2	d	3	2	d	4	3	3	0	0	0	l	(a31dd4l
Siarad	smith1	387	3	CEI	yndy 	\N	cym	monoW	a	3	1	2	2	d	3	2	d	4	3	3	0	0	0	l	(a31dd4l
Siarad	smith1	390	1	CEI	mae yn cool bod 	\N	cym	monoW	a	3	1	2	2	d	3	2	d	4	3	3	0	0	0	l	(a31dd4l
Siarad	smith1	390	2	CEI	mae nôl i_mewn 	\N	cym	monoW	a	3	1	2	2	d	3	2	d	4	3	3	0	0	0	l	(a31dd4l
Siarad	smith1	405	1	CEI	ia ond Bangor ydy rheina 	\N	cym	monoW	a	3	1	2	2	d	3	2	d	4	3	3	0	0	0	l	(a31dd4l
Siarad	smith1	407	1	CEI	mae nhw dallt iaith ni 	\N	cym	monoW	a	3	1	2	2	d	3	2	d	4	3	3	0	0	0	l	(a31dd4l
Siarad	smith1	407	2	CEI	ydyn 	\N	cym	monoW	a	3	1	2	2	d	3	2	d	4	3	3	0	0	0	l	(a31dd4l
Siarad	smith1	411	1	CEI	dan ni well sti siarad fo na 	\N	cym	monoW	a	3	1	2	2	d	3	2	d	4	3	3	0	0	0	l	(a31dd4l
Siarad	smith1	423	1	CEI	dw ddim isio ice_cream arall 	\N	cym	monoW	a	3	1	2	2	d	3	2	d	4	3	3	0	0	0	l	(a31dd4l
Siarad	smith1	427	1	CEI	bysai 	\N	cym	monoW	a	3	1	2	2	d	3	2	d	4	3	3	0	0	0	l	(a31dd4l
Siarad	smith1	433	1	CEI	ha ha gest ti jaman fan yna yn_do 	\N	cym	monoW	a	3	1	2	2	d	3	2	d	4	3	3	0	0	0	l	(a31dd4l
Siarad	smith1	437	1	CEI	ella mae nhw 	\N	cym	monoW	a	3	1	2	2	d	3	2	d	4	3	3	0	0	0	l	(a31dd4l
Siarad	smith1	438	1	CEI	dim ots nag ydy 	\N	cym	monoW	a	3	1	2	2	d	3	2	d	4	3	3	0	0	0	l	(a31dd4l
Siarad	smith1	568	1	CEI	petasai yn unrhyw adeg arall 	\N	cym	monoW	a	3	1	2	2	d	3	2	d	4	3	3	0	0	0	l	(a31dd4l
Siarad	smith1	568	2	CEI	baswn i dal yn gwely erbyn rŵan 	\N	cym	monoW	a	3	1	2	2	d	3	2	d	4	3	3	0	0	0	l	(a31dd4l
Siarad	smith1	584	1	CEI	gawn ni drafferth codi wan ar_ôl eistedd am hanner awr 	\N	cym	monoW	a	3	1	2	2	d	3	2	d	4	3	3	0	0	0	l	(a31dd4l
Siarad	smith1	590	1	CEI	paid bod yn jiclyd 	\N	cym	monoW	a	3	1	2	2	d	3	2	d	4	3	3	0	0	0	l	(a31dd4l
Siarad	smith1	603	1	CEI	oedden nhw yn Lithuania neu rywbeth fel yna wsnos dwytha pythefnos yn_ôl 	\N	cym	monoW	a	3	1	2	2	d	3	2	d	4	3	3	0	0	0	l	(a31dd4l
Siarad	smith1	614	1	CEI	ia ond ar pethau dw i feddwl 	\N	cym	monoW	a	3	1	2	2	d	3	2	d	4	3	3	0	0	0	l	(a31dd4l
Siarad	smith1	628	1	CEI	ella wna i drio yr ysgol 	\N	cym	monoW	a	3	1	2	2	d	3	2	d	4	3	3	0	0	0	l	(a31dd4l
Siarad	smith1	629	1	CEI	just mae pawb fath â wedi bod yna ers blwyddyn saith 	\N	cym	monoW	a	3	1	2	2	d	3	2	d	4	3	3	0	0	0	l	(a31dd4l
Siarad	smith1	630	1	CEI	ac yn well na fi yn chwarae 	\N	cym	monoW	a	3	1	2	2	d	3	2	d	4	3	3	0	0	0	l	(a31dd4l
Siarad	smith1	630	2	CEI	yndy 	\N	cym	monoW	a	3	1	2	2	d	3	2	d	4	3	3	0	0	0	l	(a31dd4l
Siarad	smith1	643	1	CEI	ella basai well 	\N	cym	monoW	a	3	1	2	2	d	3	2	d	4	3	3	0	0	0	l	(a31dd4l
Siarad	smith1	643	2	CEI	petaswn i wedi prynu un 	\N	cym	monoW	a	3	1	2	2	d	3	2	d	4	3	3	0	0	0	l	(a31dd4l
Siarad	smith1	643	3	CEI	i rhoi un o rheina i hi Dolig er o holiday 	\N	cym	monoW	a	3	1	2	2	d	3	2	d	4	3	3	0	0	0	l	(a31dd4l
Siarad	smith1	647	1	CEI	ia wnaeth hi wario 	\N	cym	monoW	a	3	1	2	2	d	3	2	d	4	3	3	0	0	0	l	(a31dd4l
Siarad	stammers8	229	1	ISL	dyma fel mae mynd 	\N	cym	monoW	a	1	3	1	1	b	2	3	d	1	0	0	0	0	0	a	(a13bd1a
Siarad	stammers8	230	1	ISL	oedd o yn Saesneg 	\N	cym	monoW	a	1	3	1	1	b	2	3	d	1	0	0	0	0	0	a	(a13bd1a
Siarad	fusser12	1696	1	LUN	na wnaeth hi weld	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	4	1	1	4	g	(a11ba1g
Siarad	fusser12	1696	2	LUN	wnaeth hi gaethoch chi gyfarfod hi	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	4	1	1	4	g	(a11ba1g
Siarad	fusser19	234	1	OLW	nag ydy rai pobl	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	4	1	4	g	(a12ba1g
Siarad	fusser19	239	1	OLW	mae nhw mynd i trio	clause division	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	4	1	4	g	(a12ba1g
Siarad	fusser19	243	2	OLW	na mae nhw mynd i trio wneud o fan yma hefyd	clause division	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	4	1	4	g	(a12ba1g
Siarad	fusser19	250	1	OLW	ond mae nhw mynd i drio fo fan yma	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	4	1	4	g	(a12ba1g
Siarad	fusser19	252	1	OLW	mae hynna beth da	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	4	1	4	g	(a12ba1g
Siarad	fusser19	255	1	OLW	dw i meddwl	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	4	1	4	g	(a12ba1g
Siarad	fusser19	255	2	OLW	fod o yn idea da fy hun de	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	4	1	4	g	(a12ba1g
Siarad	fusser19	257	1	OLW	a pawb gwneud be bynnag	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	4	1	4	g	(a12ba1g
Siarad	fusser19	257	2	OLW	mae nhw isio adre neu rywbeth de	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	4	1	4	g	(a12ba1g
Siarad	fusser19	259	1	OLW	os mae nhw isio smocio adre	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	4	1	4	g	(a12ba1g
Siarad	stammers8	474	1	ISL	oedd y tocynnau wedi mynd fel yna 	\N	cym	monoW	a	1	3	1	1	b	2	3	d	1	0	0	0	0	0	a	(a13bd1a
Siarad	stammers8	479	2	ISL	be oedd ei enw o 	\N	cym	monoW	a	1	3	1	1	b	2	3	d	1	0	0	0	0	0	a	(a13bd1a
Siarad	stammers8	482	1	ISL	oedd Dewi_Pws yno fo 	\N	cym	monoW	a	1	3	1	1	b	2	3	d	1	0	0	0	0	0	a	(a13bd1a
Siarad	stammers8	485	1	ISL	ew oedd o yn ddoniol 	\N	cym	monoW	a	1	3	1	1	b	2	3	d	1	0	0	0	0	0	a	(a13bd1a
Siarad	stammers8	487	1	ISL	mae o dal yn 	\N	cym	monoW	a	1	3	1	1	b	2	3	d	1	0	0	0	0	0	a	(a13bd1a
Siarad	stammers8	682	1	ISL	oh yndy 	\N	cym	monoW	a	1	3	1	1	b	2	3	d	1	0	0	0	0	0	a	(a13bd1a
Siarad	stammers8	684	1	ISL	ydy hynny yn help 	\N	cym	monoW	a	1	3	1	1	b	2	3	d	1	0	0	0	0	0	a	(a13bd1a
Siarad	stammers8	689	1	ISL	oh wela i 	\N	cym	monoW	a	1	3	1	1	b	2	3	d	1	0	0	0	0	0	a	(a13bd1a
Siarad	stammers8	703	1	ISL	well wneith o ddim gollwng 	\N	cym	monoW	a	1	3	1	1	b	2	3	d	1	0	0	0	0	0	a	(a13bd1a
Siarad	davies17	184	1	ROB	mae wedi siarad Cymraeg adre drwy gydol ei oes	\N	cym	monoW	a	3	1	3	3	f	3	2	d	4	4	4	4	4	4	p	(a31fd4p
Siarad	davies17	185	1	ROB	a dim ond mewn gwersi Saesneg neu wrth siarad efo Saeson mae nhw yn	non-finite	cym	monoW	a	3	1	3	3	f	3	2	d	4	4	4	4	4	4	p	(a31fd4p
Siarad	davies17	185	3	ROB	mae	\N	cym	monoW	a	3	1	3	3	f	3	2	d	4	4	4	4	4	4	p	(a31fd4p
Siarad	davies17	185	4	ROB	mae lot o Gymry cymraeg yn siarad Saesneg	\N	cym	monoW	a	3	1	3	3	f	3	2	d	4	4	4	4	4	4	p	(a31fd4p
Siarad	davies17	187	1	ROB	a dyn nhw byth yn wneud fel arall	clause division	cym	monoW	a	3	1	3	3	f	3	2	d	4	4	4	4	4	4	p	(a31fd4p
Siarad	davies17	188	1	ROB	a wrth_gwrs mae nhw yn glywed lot oherwydd teledu a radio a ballu	clause division	cym	monoW	a	3	1	3	3	f	3	2	d	4	4	4	4	4	4	p	(a31fd4p
Siarad	davies17	193	2	ROB	oedd o yn coblyn o beth yn_doedd diddorol felly	\N	cym	monoW	a	3	1	3	3	f	3	2	d	4	4	4	4	4	4	p	(a31fd4p
Siarad	davies17	196	1	ROB	oh yndy well o lawer	\N	cym	monoW	a	3	1	3	3	f	3	2	d	4	4	4	4	4	4	p	(a31fd4p
Siarad	davies17	198	1	ROB	yndy	\N	cym	monoW	a	3	1	3	3	f	3	2	d	4	4	4	4	4	4	p	(a31fd4p
Siarad	davies17	200	1	ROB	yndy	\N	cym	monoW	a	3	1	3	3	f	3	2	d	4	4	4	4	4	4	p	(a31fd4p
Siarad	davies17	201	1	ROB	yndy	\N	cym	monoW	a	3	1	3	3	f	3	2	d	4	4	4	4	4	4	p	(a31fd4p
Siarad	davies17	201	2	ROB	yndy	\N	cym	monoW	a	3	1	3	3	f	3	2	d	4	4	4	4	4	4	p	(a31fd4p
Siarad	davies17	361	1	ROB	ond ti yn siarad Saesneg efo hi	\N	cym	monoW	a	3	1	3	3	f	3	2	d	4	4	4	4	4	4	p	(a31fd4p
Siarad	davies17	361	2	ROB	mae sure	\N	cym	monoW	a	3	1	3	3	f	3	2	d	4	4	4	4	4	4	p	(a31fd4p
Siarad	davies17	365	1	ROB	ond mae yn anodd	\N	cym	monoW	a	3	1	3	3	f	3	2	d	4	4	4	4	4	4	p	(a31fd4p
Siarad	davies17	366	1	ROB	oedden ni siarad am hyn yn y diwrnod o blaen efo Gill a Ffion	\N	cym	monoW	a	3	1	3	3	f	3	2	d	4	4	4	4	4	4	p	(a31fd4p
Siarad	davies17	367	1	ROB	achos mae nhw yn gael hi yn anodd siarad Cymraeg efo ei_gilydd	\N	cym	monoW	a	3	1	3	3	f	3	2	d	4	4	4	4	4	4	p	(a31fd4p
Siarad	davies17	369	1	ROB	um achos am ryw reswm dw ddim yn sure be	\N	cym	monoW	a	3	1	3	3	f	3	2	d	4	4	4	4	4	4	p	(a31fd4p
Siarad	fusser19	482	3	OLW	ydy am bod yn effeithio pobl eraill a	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	4	1	4	g	(a12ba1g
Siarad	fusser19	488	1	OLW	ond mae dadl nhw	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	4	1	4	g	(a12ba1g
Siarad	fusser19	489	1	OLW	gennyn nhw ddim coes da i sefyll ar	non-finite	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	4	1	4	g	(a12ba1g
Siarad	fusser19	496	1	OLW	oh chdi sy wedi dod â nhw fyny	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	4	1	4	g	(a12ba1g
Siarad	fusser19	500	1	OLW	oes	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	4	1	4	g	(a12ba1g
Siarad	fusser19	502	1	OLW	oes ond	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	4	1	4	g	(a12ba1g
Siarad	fusser19	502	2	OLW	os ydy o yn effeithio pobl eraill a roid niwed iddyn nhw	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	4	1	4	g	(a12ba1g
Siarad	fusser19	502	5	OLW	dw i yn anghytuno	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	4	1	4	g	(a12ba1g
Siarad	fusser19	505	1	OLW	mae	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	4	1	4	g	(a12ba1g
Siarad	fusser19	524	1	OLW	oh dw i yn gofyn	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	4	1	4	g	(a12ba1g
Siarad	fusser19	731	1	OLW	mae rhan fwya o newyddion	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	4	1	4	g	(a12ba1g
Siarad	fusser19	733	1	OLW	a mae nhw yn gallu roid warning i bobl	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	4	1	4	g	(a12ba1g
Siarad	fusser19	740	1	OLW	a pam oedden nhw ddim yn gwybod	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	4	1	4	g	(a12ba1g
Siarad	fusser19	742	1	OLW	fedri di ddim iwsio rywbeth fel yna	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	4	1	4	g	(a12ba1g
Siarad	fusser19	743	1	OLW	achos ydan ni ddim yn gael	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	4	1	4	g	(a12ba1g
Siarad	fusser19	745	1	OLW	ti yn trio iwsio point	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	4	1	4	g	(a12ba1g
Siarad	fusser19	745	3	OLW	lle wnaeth hwnna just digwydd	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	4	1	4	g	(a12ba1g
Siarad	fusser28	98	1	LLA	oes yna fynedd efo fo	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	1	1	4	4	1	g	(a14ba1g
Siarad	davies17	369	2	ROB	be oedd o felly	\N	cym	monoW	a	3	1	3	3	f	3	2	d	4	4	4	4	4	4	p	(a31fd4p
Siarad	davies17	369	3	ROB	ond wnaeth nhw benderfynu blwyddyn dwytha bod nhw am drio siarad Cymraeg efo ei_gilydd	\N	cym	monoW	a	3	1	3	3	f	3	2	d	4	4	4	4	4	4	p	(a31fd4p
Siarad	davies17	369	4	ROB	ond bod nhw just wedi methu wneud achos hen arfer yn_de	non-finite	cym	monoW	a	3	1	3	3	f	3	2	d	4	4	4	4	4	4	p	(a31fd4p
Siarad	davies17	386	1	ROB	oh mae yn odd	\N	cym	monoW	a	3	1	3	3	f	3	2	d	4	4	4	4	4	4	p	(a31fd4p
Siarad	davies17	387	1	ROB	dw i yn cael yr un	\N	cym	monoW	a	3	1	3	3	f	3	2	d	4	4	4	4	4	4	p	(a31fd4p
Siarad	davies17	389	1	ROB	dw i yn cael yr un peth y ffordd arall efo hen boss fi fan hyn	\N	cym	monoW	a	3	1	3	3	f	3	2	d	4	4	4	4	4	4	p	(a31fd4p
Siarad	davies17	391	1	ROB	oh yndy	\N	cym	monoW	a	3	1	3	3	f	3	2	d	4	4	4	4	4	4	p	(a31fd4p
Siarad	davies17	395	1	ROB	achos um mae yn ryfedd	\N	cym	monoW	a	3	1	3	3	f	3	2	d	4	4	4	4	4	4	p	(a31fd4p
Siarad	davies17	524	1	ROB	ydy o yn dŷ hen	\N	cym	monoW	a	3	1	3	3	f	3	2	d	4	4	4	4	4	4	p	(a31fd4p
Siarad	davies17	525	1	ROB	ydy o wedi bod yn	\N	cym	monoW	a	3	1	3	3	f	3	2	d	4	4	4	4	4	4	p	(a31fd4p
Siarad	davies17	532	1	ROB	ac ydy o right drws nesa nesa i yr er i yr eglwys	\N	cym	monoW	a	3	1	3	3	f	3	2	d	4	4	4	4	4	4	p	(a31fd4p
Siarad	davies17	532	3	ROB	yndy	\N	cym	monoW	a	3	1	3	3	f	3	2	d	4	4	4	4	4	4	p	(a31fd4p
Siarad	fusser28	103	1	LLA	oh na dim efo fo dw i ddeud efo um bod yna diles ar llawr	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	1	1	4	4	1	g	(a14ba1g
Siarad	fusser28	111	1	LLA	sut goblin mae hwn yn gweithio dŵad Madlen	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	1	1	4	4	1	g	(a14ba1g
Siarad	fusser28	113	1	LLA	oes gyn ti syniad	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	1	1	4	4	1	g	(a14ba1g
Siarad	fusser28	113	2	LLA	sut mae hwn yn gweithio	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	1	1	4	4	1	g	(a14ba1g
Siarad	fusser28	139	1	LLA	be wnaeth hi	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	1	1	4	4	1	g	(a14ba1g
Siarad	fusser28	150	1	LLA	fedr hi	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	1	1	4	4	1	g	(a14ba1g
Siarad	fusser28	154	1	LLA	ydy o wedi gorffen efo hi	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	1	1	4	4	1	g	(a14ba1g
Siarad	fusser28	228	1	LLA	ydy um peth yna yn barod van	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	1	1	4	4	1	g	(a14ba1g
Siarad	fusser28	232	1	LLA	genno fi gar yn hun wan	not sure if we count this as finite	cym	monoW	a	1	4	1	1	b	1	1	a	1	1	1	4	4	1	g	(a14ba1g
Siarad	fusser28	236	1	LLA	oes	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	1	1	4	4	1	g	(a14ba1g
Siarad	fusser28	237	1	LLA	dw isio tax am y mis yma ac M_O_T a tyres	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	1	1	4	4	1	g	(a14ba1g
Siarad	davies17	556	1	ROB	achos doedd yna ddim	\N	cym	monoW	a	3	1	3	3	f	3	2	d	4	4	4	4	4	4	p	(a31fd4p
Siarad	davies17	556	2	ROB	doedd yna ddim ficerdy yna neu na dim_byd	\N	cym	monoW	a	3	1	3	3	f	3	2	d	4	4	4	4	4	4	p	(a31fd4p
Siarad	davies17	569	1	ROB	yndy	\N	cym	monoW	a	3	1	3	3	f	3	2	d	4	4	4	4	4	4	p	(a31fd4p
Siarad	davies17	573	1	ROB	ond mae yr adeilad dal yna	\N	cym	monoW	a	3	1	3	3	f	3	2	d	4	4	4	4	4	4	p	(a31fd4p
Siarad	davies17	573	2	ROB	yndy	\N	cym	monoW	a	3	1	3	3	f	3	2	d	4	4	4	4	4	4	p	(a31fd4p
Siarad	davies17	575	1	ROB	oedd	\N	cym	monoW	a	3	1	3	3	f	3	2	d	4	4	4	4	4	4	p	(a31fd4p
Siarad	davies17	575	2	ROB	ac ydy o wag wan	\N	cym	monoW	a	3	1	3	3	f	3	2	d	4	4	4	4	4	4	p	(a31fd4p
Siarad	davies17	584	1	ROB	yeah seicolegol dw meddwl	non-finite	cym	monoW	a	3	1	3	3	f	3	2	d	4	4	4	4	4	4	p	(a31fd4p
Siarad	davies17	588	1	ROB	ond ydy o	\N	cym	monoW	a	3	1	3	3	f	3	2	d	4	4	4	4	4	4	p	(a31fd4p
Siarad	davies17	588	2	ROB	os dydy o ddim yn yn ddiogel i i i	\N	cym	monoW	a	3	1	3	3	f	3	2	d	4	4	4	4	4	4	p	(a31fd4p
Siarad	davies17	591	1	ROB	dydy o ddim yn edrych felly	\N	cym	monoW	a	3	1	3	3	f	3	2	d	4	4	4	4	4	4	p	(a31fd4p
Siarad	davies11	235	1	OWA	ydy	\N	cym	monoW	a	2	4	1	1	b	3	3	e	1	1	1	1	1	1	b	(a24be1b
Siarad	davies11	237	1	OWA	ydy	\N	cym	monoW	a	2	4	1	1	b	3	3	e	1	1	1	1	1	1	b	(a24be1b
Siarad	davies11	237	2	OWA	ydy	\N	cym	monoW	a	2	4	1	1	b	3	3	e	1	1	1	1	1	1	b	(a24be1b
Siarad	davies11	240	1	OWA	yr unig rai wn i amdanyn nhw	\N	cym	monoW	a	2	4	1	1	b	3	3	e	1	1	1	1	1	1	b	(a24be1b
Siarad	davies11	240	2	OWA	ydy yr teulu yng Griccieth de	\N	cym	monoW	a	2	4	1	1	b	3	3	e	1	1	1	1	1	1	b	(a24be1b
Siarad	davies11	264	1	OWA	Langolen fel fyddai yr Saeson	\N	cym	monoW	a	2	4	1	1	b	3	3	e	1	1	1	1	1	1	b	(a24be1b
Siarad	davies11	297	1	OWA	so oedd yna chwarel yn ymyl felly yeah	\N	cym	monoW	a	2	4	1	1	b	3	3	e	1	1	1	1	1	1	b	(a24be1b
Siarad	davies11	326	1	OWA	ond oeddet ti yn deud bod o ben draw byd Rachel	\N	cym	monoW	a	2	4	1	1	b	3	3	e	1	1	1	1	1	1	b	(a24be1b
Siarad	davies11	327	1	OWA	baswn i meddwl bod o yn le delfrydol canolig iawn	\N	cym	monoW	a	2	4	1	1	b	3	3	e	1	1	1	1	1	1	b	(a24be1b
Siarad	davies11	362	1	OWA	oedd wir	\N	cym	monoW	a	2	4	1	1	b	3	3	e	1	1	1	1	1	1	b	(a24be1b
Siarad	davies11	363	1	OWA	oh pa mor bell ydy o Llanrhaeadr_ym_Mochnant	\N	cym	monoW	a	2	4	1	1	b	3	3	e	1	1	1	1	1	1	b	(a24be1b
Siarad	davies11	380	1	OWA	yr ardal yna rywle oedd o yn_de	\N	cym	monoW	a	2	4	1	1	b	3	3	e	1	1	1	1	1	1	b	(a24be1b
Siarad	davies11	589	1	OWA	ac oedd hi yn awyddus iawn i gweld nhw felly	\N	cym	monoW	a	2	4	1	1	b	3	3	e	1	1	1	1	1	1	b	(a24be1b
Siarad	davies11	590	1	OWA	ond er na oedd hi yn deud	\N	cym	monoW	a	2	4	1	1	b	3	3	e	1	1	1	1	1	1	b	(a24be1b
Siarad	davies11	590	2	OWA	dw ddim credu bod nhw i blant heddiw felly de	\N	cym	monoW	a	2	4	1	1	b	3	3	e	1	1	1	1	1	1	b	(a24be1b
Siarad	davies11	596	1	OWA	yndy	\N	cym	monoW	a	2	4	1	1	b	3	3	e	1	1	1	1	1	1	b	(a24be1b
Siarad	davies11	596	2	OWA	yndy	\N	cym	monoW	a	2	4	1	1	b	3	3	e	1	1	1	1	1	1	b	(a24be1b
Siarad	davies11	596	3	OWA	yndy	\N	cym	monoW	a	2	4	1	1	b	3	3	e	1	1	1	1	1	1	b	(a24be1b
Siarad	davies11	597	1	OWA	oh yndy	\N	cym	monoW	a	2	4	1	1	b	3	3	e	1	1	1	1	1	1	b	(a24be1b
Siarad	davies11	598	1	OWA	so sut mae bywyd yn Llanilar Rachel	\N	cym	monoW	a	2	4	1	1	b	3	3	e	1	1	1	1	1	1	b	(a24be1b
Siarad	davies11	620	1	OWA	oedd hi yn gallu tical yn deud	\N	cym	monoW	a	2	4	1	1	b	3	3	e	1	1	1	1	1	1	b	(a24be1b
Siarad	davies11	621	1	OWA	dwn i ddim	\N	cym	monoW	a	2	4	1	1	b	3	3	e	1	1	1	1	1	1	b	(a24be1b
Siarad	fusser28	254	1	LLA	gyn ti T_D_I does	not sure if we count this as finite	cym	monoW	a	1	4	1	1	b	1	1	a	1	1	1	4	4	1	g	(a14ba1g
Siarad	davies11	621	2	OWA	be dach chi yn alw fo	\N	cym	monoW	a	2	4	1	1	b	3	3	e	1	1	1	1	1	1	b	(a24be1b
Siarad	davies11	626	1	OWA	mae rywun yn mynd round yn enwedig	\N	cym	monoW	a	2	4	1	1	b	3	3	e	1	1	1	1	1	1	b	(a24be1b
Siarad	davies11	627	1	OWA	oedd rywun yn hel bob diferyn	\N	cym	monoW	a	2	4	1	1	b	3	3	e	1	1	1	1	1	1	b	(a24be1b
Siarad	davies11	629	1	OWA	wedyn oedd rywun yn mynd round bob buwch a just tynnu yr y diferion o yna	\N	cym	monoW	a	2	4	1	1	b	3	3	e	1	1	1	1	1	1	b	(a24be1b
Siarad	davies11	885	1	OWA	yn ochr Llanfechell mi oedd yna deulu fan yno yn cadw nhw	\N	cym	monoW	a	2	4	1	1	b	3	3	e	1	1	1	1	1	1	b	(a24be1b
Siarad	davies11	889	1	OWA	a wedyn wnes i gysylltu â â yr er chap yma	clause division	cym	monoW	a	2	4	1	1	b	3	3	e	1	1	1	1	1	1	b	(a24be1b
Siarad	davies11	890	1	OWA	mi ddoth acw	\N	cym	monoW	a	2	4	1	1	b	3	3	e	1	1	1	1	1	1	b	(a24be1b
Siarad	davies11	891	1	OWA	a chwarae teg fuodd o yn	\N	cym	monoW	a	2	4	1	1	b	3	3	e	1	1	1	1	1	1	b	(a24be1b
Siarad	davies11	891	2	OWA	fuodd o dda iawn	\N	cym	monoW	a	2	4	1	1	b	3	3	e	1	1	1	1	1	1	b	(a24be1b
Siarad	davies11	892	1	OWA	a wedyn fuon ni yn trafod dod i ddealltwriaeth	\N	cym	monoW	a	2	4	1	1	b	3	3	e	1	1	1	1	1	1	b	(a24be1b
Siarad	davies11	901	1	OWA	well wan oedd yr er y sioe yma	\N	cym	monoW	a	2	4	1	1	b	3	3	e	1	1	1	1	1	1	b	(a24be1b
Siarad	davies11	901	2	OWA	oedd sioe hefyd yn Stafford ym mis Mawrth	\N	cym	monoW	a	2	4	1	1	b	3	3	e	1	1	1	1	1	1	b	(a24be1b
Siarad	davies11	902	1	OWA	ac i fan yno yr aeth y ran fwya	clause division	cym	monoW	a	2	4	1	1	b	3	3	e	1	1	1	1	1	1	b	(a24be1b
Siarad	davies11	905	1	OWA	ond aethon ni yno wedyn ym mis Hydref um o ddiddordeb	\N	cym	monoW	a	2	4	1	1	b	3	3	e	1	1	1	1	1	1	b	(a24be1b
Siarad	davies11	906	1	OWA	ond wrth_gwrs oedden nhw wedi mynd er adeg hynny	\N	cym	monoW	a	2	4	1	1	b	3	3	e	1	1	1	1	1	1	b	(a24be1b
Siarad	davies11	907	1	OWA	ond oedd y boy er yno felly yn gwerthu	\N	cym	monoW	a	2	4	1	1	b	3	3	e	1	1	1	1	1	1	b	(a24be1b
Siarad	davies11	291	1	RAC	basen i meddwl	\N	cym	monoW	a	1	2	1	1	b	3	3	e	1	4	1	1	1	1	d	(a12be1d
Siarad	davies11	289	1	RAC	basen i meddwl	\N	cym	monoW	a	1	2	1	1	b	3	3	e	1	4	1	1	1	1	d	(a12be1d
Siarad	davies11	293	1	RAC	nhw oedd biau lot o yr tir	\N	cym	monoW	a	1	2	1	1	b	3	3	e	1	4	1	1	1	1	d	(a12be1d
Siarad	davies11	294	1	RAC	oedd y bobl yn gweithio i Mcalpines	\N	cym	monoW	a	1	2	1	1	b	3	3	e	1	4	1	1	1	1	d	(a12be1d
Siarad	davies11	299	1	RAC	oedd	\N	cym	monoW	a	1	2	1	1	b	3	3	e	1	4	1	1	1	1	d	(a12be1d
Siarad	davies11	301	1	RAC	oedd	\N	cym	monoW	a	1	2	1	1	b	3	3	e	1	4	1	1	1	1	d	(a12be1d
Siarad	davies11	302	1	RAC	a um pwy yna sgwennodd er Cysgod_y_Cryman	\N	cym	monoW	a	1	2	1	1	b	3	3	e	1	4	1	1	1	1	d	(a12be1d
Siarad	davies11	306	1	RAC	dyna yr pentre lle oedd e yn dod o	\N	cym	monoW	a	1	2	1	1	b	3	3	e	1	4	1	1	1	1	d	(a12be1d
Siarad	davies11	310	1	RAC	oedd ei er brawd um Islwyn_Ffowc_Elis fe	\N	cym	monoW	a	1	2	1	1	b	3	3	e	1	4	1	1	1	1	d	(a12be1d
Siarad	davies11	310	2	RAC	yw pregethwr ni yn Llanilar	\N	cym	monoW	a	1	2	1	1	b	3	3	e	1	4	1	1	1	1	d	(a12be1d
Siarad	davies11	321	1	RAC	ond um gaethon nhw well anlwc ofnadwy	\N	cym	monoW	a	1	2	1	1	b	3	3	e	1	4	1	1	1	1	d	(a12be1d
Siarad	davies11	543	1	RAC	dydy plant dim yn gwybod dim am hynna nawr na	\N	cym	monoW	a	1	2	1	1	b	3	3	e	1	4	1	1	1	1	d	(a12be1d
Siarad	davies11	580	1	RAC	yeah bydd yn great i yr wyres fach yn_fydd	\N	cym	monoW	a	1	2	1	1	b	3	3	e	1	4	1	1	1	1	d	(a12be1d
Siarad	davies11	586	1	RAC	bydd	\N	cym	monoW	a	1	2	1	1	b	3	3	e	1	4	1	1	1	1	d	(a12be1d
Siarad	davies11	591	1	RAC	na mae yr well	\N	cym	monoW	a	1	2	1	1	b	3	3	e	1	4	1	1	1	1	d	(a12be1d
Siarad	davies11	591	2	RAC	mae yr oes wedi newid	\N	cym	monoW	a	1	2	1	1	b	3	3	e	1	4	1	1	1	1	d	(a12be1d
Siarad	davies11	594	1	RAC	mae hwnnw wedi newid yn_dyw e	\N	cym	monoW	a	1	2	1	1	b	3	3	e	1	4	1	1	1	1	d	(a12be1d
Siarad	davies11	603	1	RAC	oedd y nhad cofio nhad yn godro a um	clause division	cym	monoW	a	1	2	1	1	b	3	3	e	1	4	1	1	1	1	d	(a12be1d
Siarad	davies11	607	2	RAC	a ges i kick sawl kick	\N	cym	monoW	a	1	2	1	1	b	3	3	e	1	4	1	1	1	1	d	(a12be1d
Siarad	davies11	610	1	RAC	oedd fel	\N	cym	monoW	a	1	2	1	1	b	3	3	e	1	4	1	1	1	1	d	(a12be1d
Siarad	davies11	631	1	RAC	oh yeah i sieco mae nhw i_gyd wedi clirio yeah yeah yeah yeah	\N	cym	monoW	a	1	2	1	1	b	3	3	e	1	4	1	1	1	1	d	(a12be1d
Siarad	davies11	672	1	RAC	oes dal i fod teulu gyda chi yn Conwy	\N	cym	monoW	a	1	2	1	1	b	3	3	e	1	4	1	1	1	1	d	(a12be1d
Siarad	davies11	786	1	RAC	mae fe yn ffrind yn_de	\N	cym	monoW	a	1	2	1	1	b	3	3	e	1	4	1	1	1	1	d	(a12be1d
Siarad	davies11	811	1	RAC	mae yn	\N	cym	monoW	a	1	2	1	1	b	3	3	e	1	4	1	1	1	1	d	(a12be1d
Siarad	davies11	863	1	RAC	oedd yn dipyn o gyfrifoldeb yn_doedd	\N	cym	monoW	a	1	2	1	1	b	3	3	e	1	4	1	1	1	1	d	(a12be1d
Siarad	davies11	945	1	RAC	fuoch chi yn dangos lot o yr cŵn	\N	cym	monoW	a	1	2	1	1	b	3	3	e	1	4	1	1	1	1	d	(a12be1d
Siarad	davies11	962	3	RAC	be mae nhw weud	\N	cym	monoW	a	1	2	1	1	b	3	3	e	1	4	1	1	1	1	d	(a12be1d
Siarad	davies11	976	1	RAC	yeah oedd um	\N	cym	monoW	a	1	2	1	1	b	3	3	e	1	4	1	1	1	1	d	(a12be1d
Siarad	davies11	976	2	RAC	oedd um rhywun o'n i nabod yn Fangor	\N	cym	monoW	a	1	2	1	1	b	3	3	e	1	4	1	1	1	1	d	(a12be1d
Siarad	davies11	976	3	RAC	mae hi yn clipio cŵn	\N	cym	monoW	a	1	2	1	1	b	3	3	e	1	4	1	1	1	1	d	(a12be1d
Siarad	davies11	977	1	RAC	oedd hi yn gweud yr un peth	\N	cym	monoW	a	1	2	1	1	b	3	3	e	1	4	1	1	1	1	d	(a12be1d
Siarad	fusser25	276	1	HUN	oedd Simon wneud hynna gwisgo hosan	\N	cym	monoW	a	1	3	1	1	b	3	3	e	1	1	1	4	1	3	f	(a13be1f
Siarad	fusser25	285	1	HUN	wnes i ddim gofyn pa yr un size hosan	\N	cym	monoW	a	1	3	1	1	b	3	3	e	1	1	1	4	1	3	f	(a13be1f
Siarad	fusser25	290	1	HUN	yeah so wnes i ddim deud dim_byd wedyn am y peth	\N	cym	monoW	a	1	3	1	1	b	3	3	e	1	1	1	4	1	3	f	(a13be1f
Siarad	fusser28	257	1	LLA	oh yeah mae hynna yn helpu	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	1	1	4	4	1	g	(a14ba1g
Siarad	fusser28	258	1	LLA	mae nhw ryw bach o rywbeth special	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	1	1	4	4	1	g	(a14ba1g
Siarad	fusser28	258	2	LLA	dw meddwl	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	1	1	4	4	1	g	(a14ba1g
Siarad	fusser28	258	3	LLA	yndy	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	1	1	4	4	1	g	(a14ba1g
Siarad	fusser28	273	1	LLA	oes	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	1	1	4	4	1	g	(a14ba1g
Siarad	fusser28	273	2	LLA	oes iawn	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	1	1	4	4	1	g	(a14ba1g
Siarad	fusser28	360	1	LLA	dan ni fod i jarjio amdano fo dydyn	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	1	1	4	4	1	g	(a14ba1g
Siarad	fusser28	362	1	LLA	ond dw i ddim yn sure iawn	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	1	1	4	4	1	g	(a14ba1g
Siarad	fusser25	323	1	HUN	dydy o ddim yn wneud dim_byd	\N	cym	monoW	a	1	3	1	1	b	3	3	e	1	1	1	4	1	3	f	(a13be1f
Siarad	fusser25	361	1	HUN	na dw ddim wedi mynd eto na	\N	cym	monoW	a	1	3	1	1	b	3	3	e	1	1	1	4	1	3	f	(a13be1f
Siarad	fusser25	556	2	HUN	mae just yn wyn	\N	cym	monoW	a	1	3	1	1	b	3	3	e	1	1	1	4	1	3	f	(a13be1f
Siarad	fusser25	558	1	HUN	mae yr haul mynd yn_ôl	\N	cym	monoW	a	1	3	1	1	b	3	3	e	1	1	1	4	1	3	f	(a13be1f
Siarad	fusser25	568	1	HUN	arglwydd oedd	\N	cym	monoW	a	1	3	1	1	b	3	3	e	1	1	1	4	1	3	f	(a13be1f
Siarad	fusser25	571	1	HUN	oh yndy	\N	cym	monoW	a	1	3	1	1	b	3	3	e	1	1	1	4	1	3	f	(a13be1f
Siarad	fusser25	581	1	HUN	oedd Barclays wedi cau yn Port sti dydd Mercher	\N	cym	monoW	a	1	3	1	1	b	3	3	e	1	1	1	4	1	3	f	(a13be1f
Siarad	fusser25	629	1	HUN	oh baswn i just roi phone lawr	\N	cym	monoW	a	1	3	1	1	b	3	3	e	1	1	1	4	1	3	f	(a13be1f
Siarad	fusser25	830	1	HUN	oh yndy	\N	cym	monoW	a	1	3	1	1	b	3	3	e	1	1	1	4	1	3	f	(a13be1f
Siarad	fusser25	845	1	HUN	na mae nhw just gweitied i yr cwrs yma gael ei adferteisio gan Cyfle	\N	cym	monoW	a	1	3	1	1	b	3	3	e	1	1	1	4	1	3	f	(a13be1f
Siarad	fusser25	860	1	HUN	be ydy enw o	\N	cym	monoW	a	1	3	1	1	b	3	3	e	1	1	1	4	1	3	f	(a13be1f
Siarad	fusser25	887	1	HUN	yeah ydyn nhw dal yn wneud o	clause division	cym	monoW	a	1	3	1	1	b	3	3	e	1	1	1	4	1	3	f	(a13be1f
Siarad	fusser25	903	1	HUN	bysai hwnna cool	\N	cym	monoW	a	1	3	1	1	b	3	3	e	1	1	1	4	1	3	f	(a13be1f
Siarad	fusser25	903	2	HUN	bysai	\N	cym	monoW	a	1	3	1	1	b	3	3	e	1	1	1	4	1	3	f	(a13be1f
Siarad	fusser25	905	1	HUN	isio meddwl am rywbeth sy isio	\N	cym	monoW	a	1	3	1	1	b	3	3	e	1	1	1	4	1	3	f	(a13be1f
Siarad	fusser25	910	1	HUN	mae isio meddwl am rywbeth	\N	cym	monoW	a	1	3	1	1	b	3	3	e	1	1	1	4	1	3	f	(a13be1f
Siarad	fusser25	910	2	HUN	fydd	\N	cym	monoW	a	1	3	1	1	b	3	3	e	1	1	1	4	1	3	f	(a13be1f
Siarad	stammers8	213	1	CAR	oh yeah pwy ydy hwnna 	\N	cym	monoW	a	1	1	1	1	b	3	3	e	1	4	1	1	1	4	g	(a11be1g
Siarad	stammers8	213	2	CAR	ddaru Gladys wneud hwnna hefyd 	\N	cym	monoW	a	1	1	1	1	b	3	3	e	1	4	1	1	1	4	g	(a11be1g
Siarad	stammers8	215	1	CAR	ew mae yn nice 	\N	cym	monoW	a	1	1	1	1	b	3	3	e	1	4	1	1	1	4	g	(a11be1g
Siarad	stammers8	215	2	CAR	yndy 	\N	cym	monoW	a	1	1	1	1	b	3	3	e	1	4	1	1	1	4	g	(a11be1g
Siarad	stammers8	219	1	CAR	ew mae hwnna yn cymryd yn lot 	\N	cym	monoW	a	1	1	1	1	b	3	3	e	1	4	1	1	1	4	g	(a11be1g
Siarad	stammers8	219	2	CAR	yndy 	\N	cym	monoW	a	1	1	1	1	b	3	3	e	1	4	1	1	1	4	g	(a11be1g
Siarad	stammers8	222	1	CAR	mae hwn yn un da hefyd 	\N	cym	monoW	a	1	1	1	1	b	3	3	e	1	4	1	1	1	4	g	(a11be1g
Siarad	stammers8	225	1	CAR	oes 	\N	cym	monoW	a	1	1	1	1	b	3	3	e	1	4	1	1	1	4	g	(a11be1g
Siarad	stammers8	239	1	CAR	yndy 	\N	cym	monoW	a	1	1	1	1	b	3	3	e	1	4	1	1	1	4	g	(a11be1g
Siarad	stammers8	245	1	CAR	yeah ond tu mewn mae fel llety mawr 	\N	cym	monoW	a	1	1	1	1	b	3	3	e	1	4	1	1	1	4	g	(a11be1g
Siarad	stammers8	245	2	CAR	yndy 	\N	cym	monoW	a	1	1	1	1	b	3	3	e	1	4	1	1	1	4	g	(a11be1g
Siarad	stammers8	248	1	CAR	yndy ti yn gwybod efo o lefydd 	\N	cym	monoW	a	1	1	1	1	b	3	3	e	1	4	1	1	1	4	g	(a11be1g
Siarad	stammers8	251	1	CAR	ew mae nice yn tu mewn 	\N	cym	monoW	a	1	1	1	1	b	3	3	e	1	4	1	1	1	4	g	(a11be1g
Siarad	stammers8	251	2	CAR	yndy 	\N	cym	monoW	a	1	1	1	1	b	3	3	e	1	4	1	1	1	4	g	(a11be1g
Siarad	stammers8	253	1	CAR	ew yndy ardderchog 	\N	cym	monoW	a	1	1	1	1	b	3	3	e	1	4	1	1	1	4	g	(a11be1g
Siarad	stammers8	456	1	CAR	oedd 	\N	cym	monoW	a	1	1	1	1	b	3	3	e	1	4	1	1	1	4	g	(a11be1g
Siarad	stammers8	466	1	CAR	oedd 	\N	cym	monoW	a	1	1	1	1	b	3	3	e	1	4	1	1	1	4	g	(a11be1g
Siarad	stammers8	469	1	CAR	well oh hwyrach mai dyna be oedd 	\N	cym	monoW	a	1	1	1	1	b	3	3	e	1	4	1	1	1	4	g	(a11be1g
Siarad	stammers8	470	1	CAR	oedd Keith yn mynd yno 	\N	cym	monoW	a	1	1	1	1	b	3	3	e	1	4	1	1	1	4	g	(a11be1g
Siarad	stammers8	471	1	CAR	dw ddim yn gwybod 	\N	cym	monoW	a	1	1	1	1	b	3	3	e	1	4	1	1	1	4	g	(a11be1g
Siarad	stammers8	475	1	CAR	oh mae yn sure 	\N	cym	monoW	a	1	1	1	1	b	3	3	e	1	4	1	1	1	4	g	(a11be1g
Siarad	stammers8	477	1	CAR	ond dydy o ddim wedi bod	clause division issue, this is incomplete I think	cym	monoW	a	1	1	1	1	b	3	3	e	1	4	1	1	1	4	g	(a11be1g
Siarad	fusser28	372	1	LLA	dydy o ddim yn	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	1	1	4	4	1	g	(a14ba1g
Siarad	fusser28	383	1	LLA	oes yna rywbeth	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	1	1	4	4	1	g	(a14ba1g
Siarad	fusser28	388	1	LLA	a wedyn ti just rhoid o i_fewn be bynnag	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	1	1	4	4	1	g	(a14ba1g
Siarad	fusser28	388	2	LLA	ydy o yeah	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	1	1	4	4	1	g	(a14ba1g
Siarad	fusser28	391	1	LLA	dydy o ddim yn gweithio efo cheques chwaith	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	1	1	4	4	1	g	(a14ba1g
Siarad	fusser28	392	1	LLA	mae nhw yn tsiarjio am handlo rheiny	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	1	1	4	4	1	g	(a14ba1g
Siarad	fusser28	392	2	LLA	yndy	\N	cym	monoW	a	1	4	1	1	b	1	1	a	1	1	1	4	4	1	g	(a14ba1g
Siarad	fusser21	317	1	ILI	dan ni dal efo rei o rheina ar_ôl	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	fusser21	317	2	ILI	yndan	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	fusser21	320	1	ILI	dw i yn meddwl	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	fusser21	320	2	ILI	ddylai bod gynnon ni dau packet	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	stammers8	477	1	CAR	ti yn gweld yn y 	h	cym	monoW	a	1	1	1	1	b	3	3	e	1	4	1	1	1	4	g	(a11be1g
Siarad	stammers8	483	1	CAR	oedd 	\N	cym	monoW	a	1	1	1	1	b	3	3	e	1	4	1	1	1	4	g	(a11be1g
Siarad	stammers8	486	1	CAR	ew oedd o yn da yn_doedd 	\N	cym	monoW	a	1	1	1	1	b	3	3	e	1	4	1	1	1	4	g	(a11be1g
Siarad	stammers8	490	1	CAR	yndy 	\N	cym	monoW	a	1	1	1	1	b	3	3	e	1	4	1	1	1	4	g	(a11be1g
Siarad	stammers8	695	1	CAR	yeah mae isio roi o yn y wal neu wneud twll 	\N	cym	monoW	a	1	1	1	1	b	3	3	e	1	4	1	1	1	4	g	(a11be1g
Siarad	stammers8	698	1	CAR	ond mae nhw yn wneud rhei llai 	\N	cym	monoW	a	1	1	1	1	b	3	3	e	1	4	1	1	1	4	g	(a11be1g
Siarad	stammers8	704	1	CAR	ac oeddech chi methu troi yr tap 	\N	cym	monoW	a	1	1	1	1	b	3	3	e	1	4	1	1	1	4	g	(a11be1g
Siarad	stammers8	706	1	CAR	yeah oedd o mor agos 	\N	cym	monoW	a	1	1	1	1	b	3	3	e	1	4	1	1	1	4	g	(a11be1g
Siarad	stammers8	708	1	CAR	well o o_gwmpas dw i meddwl 	\N	cym	monoW	a	1	1	1	1	b	3	3	e	1	4	1	1	1	4	g	(a11be1g
Siarad	stammers8	714	1	CAR	ac o'n ond oedden nhw 	\N	cym	monoW	a	1	1	1	1	b	3	3	e	1	4	1	1	1	4	g	(a11be1g
Siarad	stammers8	714	2	CAR	ac oedden nhw 	\N	cym	monoW	a	1	1	1	1	b	3	3	e	1	4	1	1	1	4	g	(a11be1g
Siarad	stammers8	714	3	CAR	oedden nhw cau 	\N	cym	monoW	a	1	1	1	1	b	3	3	e	1	4	1	1	1	4	g	(a11be1g
Siarad	stammers8	714	4	CAR	wneud dim_byd 	\N	cym	monoW	a	1	1	1	1	b	3	3	e	1	4	1	1	1	4	g	(a11be1g
Siarad	stammers8	715	1	CAR	ond ddaru nhw wneud yn y diwedd 	\N	cym	monoW	a	1	1	1	1	b	3	3	e	1	4	1	1	1	4	g	(a11be1g
Siarad	stammers8	717	1	CAR	wyt 	\N	cym	monoW	a	1	1	1	1	b	3	3	e	1	4	1	1	1	4	g	(a11be1g
Siarad	stammers8	721	3	CAR	ydy yr swêj wedi gorffen rŵan 	\N	cym	monoW	a	1	1	1	1	b	3	3	e	1	4	1	1	1	4	g	(a11be1g
Siarad	stammers8	721	4	CAR	yndyn 	\N	cym	monoW	a	1	1	1	1	b	3	3	e	1	4	1	1	1	4	g	(a11be1g
Siarad	stammers8	724	1	CAR	oh yndyn 	\N	cym	monoW	a	1	1	1	1	b	3	3	e	1	4	1	1	1	4	g	(a11be1g
Siarad	deuchar1	297	1	MYF	ydy o wedi mynd â rywbeth i cwcio	\N	cym	monoW	a	1	3	1	1	b	3	3	e	1	4	4	4	3	3	o	(a13be1o
Siarad	deuchar1	298	1	MYF	neu brynu stuff ar y cae ydyn nhw yeah	non-finite	cym	monoW	a	1	3	1	1	b	3	3	e	1	4	4	4	3	3	o	(a13be1o
Siarad	deuchar1	304	1	MYF	oh nac ydy	\N	cym	monoW	a	1	3	1	1	b	3	3	e	1	4	4	4	3	3	o	(a13be1o
Siarad	deuchar1	318	1	MYF	yeah achos mae er Aled	\N	cym	monoW	a	1	3	1	1	b	3	3	e	1	4	4	4	3	3	o	(a13be1o
Siarad	deuchar1	318	2	MYF	dach chi yn gweld	\N	cym	monoW	a	1	3	1	1	b	3	3	e	1	4	4	4	3	3	o	(a13be1o
Siarad	deuchar1	318	4	MYF	mae o mynd efo yr band	\N	cym	monoW	a	1	3	1	1	b	3	3	e	1	4	4	4	3	3	o	(a13be1o
Siarad	deuchar1	319	1	MYF	um dw i yn gwybod	\N	cym	monoW	a	1	3	1	1	b	3	3	e	1	4	4	4	3	3	o	(a13be1o
Siarad	deuchar1	319	2	MYF	oedd	\N	cym	monoW	a	1	3	1	1	b	3	3	e	1	4	4	4	3	3	o	(a13be1o
Siarad	deuchar1	319	3	MYF	mae	\N	cym	monoW	a	1	3	1	1	b	3	3	e	1	4	4	4	3	3	o	(a13be1o
Siarad	deuchar1	321	1	MYF	dw ddim gwybod	\N	cym	monoW	a	1	3	1	1	b	3	3	e	1	4	4	4	3	3	o	(a13be1o
Siarad	deuchar1	321	2	MYF	os oedd	\N	cym	monoW	a	1	3	1	1	b	3	3	e	1	4	4	4	3	3	o	(a13be1o
Siarad	deuchar1	321	3	MYF	ddaru o tro yma	not sure if we count this as finite	cym	monoW	a	1	3	1	1	b	3	3	e	1	4	4	4	3	3	o	(a13be1o
Siarad	deuchar1	325	1	MYF	a a dw yn meddwl	\N	cym	monoW	a	1	3	1	1	b	3	3	e	1	4	4	4	3	3	o	(a13be1o
Siarad	deuchar1	325	2	MYF	mae o wedi bod yn um yn yr Eisteddfod hefyd	\N	cym	monoW	a	1	3	1	1	b	3	3	e	1	4	4	4	3	3	o	(a13be1o
Siarad	deuchar1	616	1	MYF	rywun oedd hi nabod	\N	cym	monoW	a	1	3	1	1	b	3	3	e	1	4	4	4	3	3	o	(a13be1o
Siarad	deuchar1	618	1	MYF	dw meddwl na un un o yr rieni neu rywbeth	\N	cym	monoW	a	1	3	1	1	b	3	3	e	1	4	4	4	3	3	o	(a13be1o
Siarad	deuchar1	618	3	MYF	oedd hi neu nain	\N	cym	monoW	a	1	3	1	1	b	3	3	e	1	4	4	4	3	3	o	(a13be1o
Siarad	fusser21	321	1	HAW	oes	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	fusser21	323	1	HAW	yeah dw i meddwl	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	fusser21	325	2	HAW	dan ni wedi gorffen tri	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	fusser21	325	3	HAW	dw meddwl	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	fusser21	327	1	HAW	gynnon ni ddau gant ohonyn nhw ar_ôl	non-finite	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	fusser21	328	1	HAW	ond meddylia faint	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	fusser21	328	2	HAW	mae rheina wedi newydd wneud i ni	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	fusser21	330	1	ILI	wnaeth rheina wneud lot do	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	fusser21	333	1	ILI	oherwydd well dan ni ddim isio ordro gormod	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	fusser21	334	1	ILI	ond wedyn os o'n ni angen mwy rywbryd arall	clause division	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	deuchar1	620	1	MYF	basai fi meddwl na nain	\N	cym	monoW	a	1	3	1	1	b	3	3	e	1	4	4	4	3	3	o	(a13be1o
Siarad	deuchar1	620	2	MYF	bysai i un o yr plant	\N	cym	monoW	a	1	3	1	1	b	3	3	e	1	4	4	4	3	3	o	(a13be1o
Siarad	deuchar1	620	3	MYF	dw i feddwl	\N	cym	monoW	a	1	3	1	1	b	3	3	e	1	4	4	4	3	3	o	(a13be1o
Siarad	deuchar1	624	1	MYF	ac oedd hi wedi gwybod amdani	\N	cym	monoW	a	1	3	1	1	b	3	3	e	1	4	4	4	3	3	o	(a13be1o
Siarad	deuchar1	626	1	MYF	so oedd hi yn dda iawn efo yr hogyn bach	\N	cym	monoW	a	1	3	1	1	b	3	3	e	1	4	4	4	3	3	o	(a13be1o
Siarad	deuchar1	630	1	MYF	achos oedd Kiera yn babi mor	\N	cym	monoW	a	1	3	1	1	b	3	3	e	1	4	4	4	3	3	o	(a13be1o
Siarad	deuchar1	634	2	MYF	oedd o yn ddau nawr	\N	cym	monoW	a	1	3	1	1	b	3	3	e	1	4	4	4	3	3	o	(a13be1o
Siarad	deuchar1	638	1	MYF	yeah ryw wyth mis oedd o	\N	cym	monoW	a	1	3	1	1	b	3	3	e	1	4	4	4	3	3	o	(a13be1o
Siarad	deuchar1	646	1	MYF	yeah oedd o yn dda	\N	cym	monoW	a	1	3	1	1	b	3	3	e	1	4	4	4	3	3	o	(a13be1o
Siarad	deuchar1	648	1	MYF	ac um so mae	\N	cym	monoW	a	1	3	1	1	b	3	3	e	1	4	4	4	3	3	o	(a13be1o
Siarad	deuchar1	648	2	MYF	oedd hi deud	\N	cym	monoW	a	1	3	1	1	b	3	3	e	1	4	4	4	3	3	o	(a13be1o
Siarad	deuchar1	648	3	MYF	bod hi mynd popio i weld o yn ystod y diwrnod well amser cinio	non-finite	cym	monoW	a	1	3	1	1	b	3	3	e	1	4	4	4	3	3	o	(a13be1o
Siarad	deuchar1	648	5	MYF	os gynni amser	non-finite	cym	monoW	a	1	3	1	1	b	3	3	e	1	4	4	4	3	3	o	(a13be1o
Siarad	deuchar1	927	1	MYF	mae o wneud yn dda yn_dydy	\N	cym	monoW	a	1	3	1	1	b	3	3	e	1	4	4	4	3	3	o	(a13be1o
Siarad	deuchar1	929	1	MYF	ydy	\N	cym	monoW	a	1	3	1	1	b	3	3	e	1	4	4	4	3	3	o	(a13be1o
Siarad	deuchar1	929	2	MYF	mae o wneud yn dda	\N	cym	monoW	a	1	3	1	1	b	3	3	e	1	4	4	4	3	3	o	(a13be1o
Siarad	deuchar1	933	1	MYF	Goronwy ydy	\N	cym	monoW	a	1	3	1	1	b	3	3	e	1	4	4	4	3	3	o	(a13be1o
Siarad	deuchar1	935	1	MYF	Goronwy ydy	\N	cym	monoW	a	1	3	1	1	b	3	3	e	1	4	4	4	3	3	o	(a13be1o
Siarad	deuchar1	940	1	MYF	yeah dw meddwl na Goronwy	\N	cym	monoW	a	1	3	1	1	b	3	3	e	1	4	4	4	3	3	o	(a13be1o
Siarad	deuchar1	940	2	MYF	ydy o yn_de	\N	cym	monoW	a	1	3	1	1	b	3	3	e	1	4	4	4	3	3	o	(a13be1o
Siarad	deuchar1	943	1	MYF	mae o wneud right dda	\N	cym	monoW	a	1	3	1	1	b	3	3	e	1	4	4	4	3	3	o	(a13be1o
Siarad	deuchar1	943	2	MYF	dw meddwl	\N	cym	monoW	a	1	3	1	1	b	3	3	e	1	4	4	4	3	3	o	(a13be1o
Siarad	deuchar1	947	1	MYF	well dw ddim gwybod	\N	cym	monoW	a	1	3	1	1	b	3	3	e	1	4	4	4	3	3	o	(a13be1o
Siarad	deuchar1	947	2	MYF	os mae yn byw yna wan	\N	cym	monoW	a	1	3	1	1	b	3	3	e	1	4	4	4	3	3	o	(a13be1o
Siarad	deuchar1	948	2	MYF	yndy	\N	cym	monoW	a	1	3	1	1	b	3	3	e	1	4	4	4	3	3	o	(a13be1o
Siarad	deuchar1	951	1	MYF	oh dw feddwl	\N	cym	monoW	a	1	3	1	1	b	3	3	e	1	4	4	4	3	3	o	(a13be1o
Siarad	fusser10	249	1	BAR	does gen i ddim problem i bobl	\N	cym	monoW	a	1	1	1	3	d	3	3	e	3	1	1	4	0	1	e	(a11de3e
Siarad	fusser10	249	2	BAR	sy yn gwneud	\N	cym	monoW	a	1	1	1	3	d	3	3	e	3	1	1	4	0	1	e	(a11de3e
Siarad	fusser10	251	1	BAR	oes gen i ddim problem	\N	cym	monoW	a	1	1	1	3	d	3	3	e	3	1	1	4	0	1	e	(a11de3e
Siarad	fusser10	252	1	BAR	ond fel team dw i ddim yn meddwl bod bod ni yn cael y cymorth ddylien ni	\N	cym	monoW	a	1	1	1	3	d	3	3	e	3	1	1	4	0	1	e	(a11de3e
Siarad	fusser10	253	1	BAR	barn bersonol ydy hwnnw	\N	cym	monoW	a	1	1	1	3	d	3	3	e	3	1	1	4	0	1	e	(a11de3e
Siarad	fusser10	257	2	BAR	dw i ddim wedi aelodi	\N	cym	monoW	a	1	1	1	3	d	3	3	e	3	1	1	4	0	1	e	(a11de3e
Siarad	fusser10	259	1	BAR	iawn dach chi angen rywbeth hogiau ond gofyn amdano fo	\N	cym	monoW	a	1	1	1	3	d	3	3	e	3	1	1	4	0	1	e	(a11de3e
Siarad	fusser10	262	1	BAR	ond mae	\N	cym	monoW	a	1	1	1	3	d	3	3	e	3	1	1	4	0	1	e	(a11de3e
Siarad	fusser10	262	2	BAR	na ydy hogiau team gofyn amdano fo	\N	cym	monoW	a	1	1	1	3	d	3	3	e	3	1	1	4	0	1	e	(a11de3e
Siarad	fusser10	270	1	BAR	ia oes neb erioed wedi deud	\N	cym	monoW	a	1	1	1	3	d	3	3	e	3	1	1	4	0	1	e	(a11de3e
Siarad	fusser21	334	1	ILI	basen ni gallu ordro mwy beth bynnag	h	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	fusser21	336	2	ILI	wnaethon ni dalu amdano fo	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	fusser21	337	1	HAW	dan ni wedi wneud hynna yn barod	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	fusser21	338	1	ILI	oh na efo yr os o'n ni am ordro mwy	clause division	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	fusser21	338	1	ILI	dw i feddwl	h	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	fusser21	339	1	HAW	oh yeah bysen ni gallu just defnyddio pres	clause division	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	fusser21	339	3	HAW	dan ni wedi wneud yn barod efo pethau de	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	fusser27	587	1	LIS	aeth hi yna ar_gyfer y Nadolig	\N	cym	monoW	a	1	1	1	3	d	1	1	a	1	1	4	4	4	4	m	(a11da1m
Siarad	fusser10	272	1	BAR	well fasai sefyllfa newid	\N	cym	monoW	a	1	1	1	3	d	3	3	e	3	1	1	4	0	1	e	(a11de3e
Siarad	fusser10	272	2	BAR	fasai marn i newid felly	\N	cym	monoW	a	1	1	1	3	d	3	3	e	3	1	1	4	0	1	e	(a11de3e
Siarad	fusser10	274	1	BAR	a dan ni	\N	cym	monoW	a	1	1	1	3	d	3	3	e	3	1	1	4	0	1	e	(a11de3e
Siarad	fusser10	506	1	BAR	a dw i ddim isio	\N	cym	monoW	a	1	1	1	3	d	3	3	e	3	1	1	4	0	1	e	(a11de3e
Siarad	fusser10	508	1	BAR	ond paid ti âdechrau deud wrtha i fy mod i yn cymryd mantais o yr club	clause division	cym	monoW	a	1	1	1	3	d	3	3	e	3	1	1	4	0	1	e	(a11de3e
Siarad	fusser10	509	1	BAR	de ti yn dallt	\N	cym	monoW	a	1	1	1	3	d	3	3	e	3	1	1	4	0	1	e	(a11de3e
Siarad	fusser10	509	2	BAR	be dw i yn feddwl	\N	cym	monoW	a	1	1	1	3	d	3	3	e	3	1	1	4	0	1	e	(a11de3e
Siarad	fusser10	512	2	BAR	fuon ni	\N	cym	monoW	a	1	1	1	3	d	3	3	e	3	1	1	4	0	1	e	(a11de3e
Siarad	fusser10	512	3	BAR	fuon ni yn um um gŵyl San_Steffan	\N	cym	monoW	a	1	1	1	3	d	3	3	e	3	1	1	4	0	1	e	(a11de3e
Siarad	fusser10	515	2	BAR	dalon ni am yr um am y Karaoke gyd ta yn rhannol	\N	cym	monoW	a	1	1	1	3	d	3	3	e	3	1	1	4	0	1	e	(a11de3e
Siarad	fusser10	518	1	BAR	um wnaethon ni godi raffle do	\N	cym	monoW	a	1	1	1	3	d	3	3	e	3	1	1	4	0	1	e	(a11de3e
Siarad	fusser10	520	1	BAR	wnaethon ni godi ar pawb i ddod mewn	\N	cym	monoW	a	1	1	1	3	d	3	3	e	3	1	1	4	0	1	e	(a11de3e
Siarad	fusser10	522	1	BAR	wnes i wneud y bwyd	\N	cym	monoW	a	1	1	1	3	d	3	3	e	3	1	1	4	0	1	e	(a11de3e
Siarad	fusser10	527	1	BAR	er wnaethon ni dalu tu nôl i yr bar do	\N	cym	monoW	a	1	1	1	3	d	3	3	e	3	1	1	4	0	1	e	(a11de3e
Siarad	fusser10	530	1	BAR	so am be mae sôn	\N	cym	monoW	a	1	1	1	3	d	3	3	e	3	1	1	4	0	1	e	(a11de3e
Siarad	fusser10	733	1	BAR	wnest di aros efo teulu yn Gaerdydd	\N	cym	monoW	a	1	1	1	3	d	3	3	e	3	1	1	4	0	1	e	(a11de3e
Siarad	fusser10	735	1	BAR	oh ia dw yn gwybod	\N	cym	monoW	a	1	1	1	3	d	3	3	e	3	1	1	4	0	1	e	(a11de3e
Siarad	fusser10	735	2	BAR	lle mae hwnnw	\N	cym	monoW	a	1	1	1	3	d	3	3	e	3	1	1	4	0	1	e	(a11de3e
Siarad	fusser10	751	1	BAR	a mae yn llawn yna	\N	cym	monoW	a	1	1	1	3	d	3	3	e	3	1	1	4	0	1	e	(a11de3e
Siarad	fusser10	753	1	BAR	mae	\N	cym	monoW	a	1	1	1	3	d	3	3	e	3	1	1	4	0	1	e	(a11de3e
Siarad	fusser10	753	2	BAR	mae yna dŷ tafarn mawr yn un ochr o yr o dŷ tafarn mawr Brains The The The	\N	cym	monoW	a	1	1	1	3	d	3	3	e	3	1	1	4	0	1	e	(a11de3e
Siarad	fusser10	755	1	BAR	oh dw i ddim yn cofio	\N	cym	monoW	a	1	1	1	3	d	3	3	e	3	1	1	4	0	1	e	(a11de3e
Siarad	fusser10	755	2	BAR	be ydy enw o	\N	cym	monoW	a	1	1	1	3	d	3	3	e	3	1	1	4	0	1	e	(a11de3e
Siarad	fusser10	783	1	BAR	ydyn nhw yn cael unrhyw fath o um	\N	cym	monoW	a	1	1	1	3	d	3	3	e	3	1	1	4	0	1	e	(a11de3e
Siarad	fusser10	787	1	BAR	cyfle cyfle gwych dydy deud gwir yn honest	\N	cym	monoW	a	1	1	1	3	d	3	3	e	3	1	1	4	0	1	e	(a11de3e
Siarad	fusser10	818	1	BAR	oh ia mae	\N	cym	monoW	a	1	1	1	3	d	3	3	e	3	1	1	4	0	1	e	(a11de3e
Siarad	fusser10	821	1	BAR	oedd Siân wedi weld o dydd Sadwrn	\N	cym	monoW	a	1	1	1	3	d	3	3	e	3	1	1	4	0	1	e	(a11de3e
Siarad	fusser10	823	1	BAR	oedd hi yn deud wrtha i	\N	cym	monoW	a	1	1	1	3	d	3	3	e	3	1	1	4	0	1	e	(a11de3e
Siarad	davies4	344	1	OSW	dw isio ti gyfarfod hwn	\N	cym	monoW	a	1	1	3	1	d	3	3	e	1	1	1	3	3	4	i	(a11de1i
Siarad	davies4	347	1	OSW	mae o fath â jeep	\N	cym	monoW	a	1	1	3	1	d	3	3	e	1	1	1	3	3	4	i	(a11de1i
Siarad	davies4	352	1	OSW	meddai fo te	\N	cym	monoW	a	1	1	3	1	d	3	3	e	1	1	1	3	3	4	i	(a11de1i
Siarad	davies4	356	1	OSW	oh meddai fo	\N	cym	monoW	a	1	1	3	1	d	3	3	e	1	1	1	3	3	4	i	(a11de1i
Siarad	davies4	365	1	OSW	meddai fi te	\N	cym	monoW	a	1	1	3	1	d	3	3	e	1	1	1	3	3	4	i	(a11de1i
Siarad	davies4	367	1	OSW	meddai fo	\N	cym	monoW	a	1	1	3	1	d	3	3	e	1	1	1	3	3	4	i	(a11de1i
Siarad	davies4	695	1	OSW	a wedyn oedd y ddynes yma yn dod i aros	\N	cym	monoW	a	1	1	3	1	d	3	3	e	1	1	1	3	3	4	i	(a11de1i
Siarad	davies4	699	1	OSW	arglwydd oedd hi yn gwneud yn dda	\N	cym	monoW	a	1	1	3	1	d	3	3	e	1	1	1	3	3	4	i	(a11de1i
Siarad	davies4	701	1	OSW	Iesu mawr oedd	\N	cym	monoW	a	1	1	3	1	d	3	3	e	1	1	1	3	3	4	i	(a11de1i
Siarad	davies4	706	1	OSW	arglwydd na dw i ry gynnil bethau felly sti	\N	cym	monoW	a	1	1	3	1	d	3	3	e	1	1	1	3	3	4	i	(a11de1i
Siarad	fusser21	341	2	ILI	baswn i isio ordro gymaint yn_de cant neu ddau gant arall just digon i fath â cadw ni ticio drosodd	clause division	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	fusser21	341	4	ILI	tan dan ni yn tan Gorffennaf	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	fusser21	341	5	ILI	sy yn iawn	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	fusser21	341	6	ILI	bysai	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	fusser21	341	7	ILI	dw i yn meddwl	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	fusser21	344	1	HAW	dw i yn gwybod	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	fusser21	345	1	HAW	ond mae hwnna yn mynd yn hwyr wan	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	fusser21	367	1	HAW	oh yeah oh yeah gynno fi hwnna hefyd	not sure if we count this as finite	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	fusser21	626	1	HAW	oh ia fydd hynna yn o_k	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	fusser21	644	1	HAW	wyt chdi yn sôn am hynna trwy Paris	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	fusser21	646	1	HAW	ooh dw gobeithio bod nhw wedi cyrraedd ooh	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	fusser21	646	3	HAW	gobeithio bod nhw wedi cyrraedd ooh	non-finite	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies4	713	1	OSW	dan ni mynd eto	\N	cym	monoW	a	1	1	3	1	d	3	3	e	1	1	1	3	3	4	i	(a11de1i
Siarad	davies4	714	3	OSW	mae yr mab yn priodi er leni	\N	cym	monoW	a	1	1	3	1	d	3	3	e	1	1	1	3	3	4	i	(a11de1i
Siarad	davies4	716	1	OSW	leni mae yr hogyn acw yn priodi	\N	cym	monoW	a	1	1	3	1	d	3	3	e	1	1	1	3	3	4	i	(a11de1i
Siarad	davies4	717	1	OSW	wedyn dan ni yn gobeithio mynd er yn yr tri bedwar mis nesa yma	clause division	cym	monoW	a	1	1	3	1	d	3	3	e	1	1	1	3	3	4	i	(a11de1i
Siarad	davies4	720	1	OSW	well fedri di ddim mynd i fan yna am gyfnod byr	\N	cym	monoW	a	1	1	3	1	d	3	3	e	1	1	1	3	3	4	i	(a11de1i
Siarad	davies4	1031	1	OSW	fedret ti ddim cael nhw mwy fresh	\N	cym	monoW	a	1	1	3	1	d	3	3	e	1	1	1	3	3	4	i	(a11de1i
Siarad	davies4	1059	1	OSW	be dw i yn mynd i wneud pnawn yma	clause division	cym	monoW	a	1	1	3	1	d	3	3	e	1	1	1	3	3	4	i	(a11de1i
Siarad	davies4	1059	3	OSW	os fydd y tywydd yn iawn	\N	cym	monoW	a	1	1	3	1	d	3	3	e	1	1	1	3	3	4	i	(a11de1i
Siarad	davies4	1059	4	OSW	mae gyn i	\N	cym	monoW	a	1	1	3	1	d	3	3	e	1	1	1	3	3	4	i	(a11de1i
Siarad	davies4	1061	1	OSW	mae gyn i isio chwalu dipyn bach o giwana i i ddechrau yr cae yr gwair off de	\N	cym	monoW	a	1	1	3	1	d	3	3	e	1	1	1	3	3	4	i	(a11de1i
Siarad	davies4	1068	1	OSW	er faint wyt ti isio	\N	cym	monoW	a	1	1	3	1	d	3	3	e	1	1	1	3	3	4	i	(a11de1i
Siarad	davies4	1089	1	OSW	tydy o ddim sti	\N	cym	monoW	a	1	1	3	1	d	3	3	e	1	1	1	3	3	4	i	(a11de1i
Siarad	davies4	1091	1	OSW	na tydy tunnell ddim	\N	cym	monoW	a	1	1	3	1	d	3	3	e	1	1	1	3	3	4	i	(a11de1i
Siarad	davies4	1092	1	OSW	baset ti yn synnu achan	if repair follows then exclude this	cym	monoW	a	1	1	3	1	d	3	3	e	1	1	1	3	3	4	i	(a11de1i
Siarad	davies4	1094	1	OSW	baset ti yn synnu te	\N	cym	monoW	a	1	1	3	1	d	3	3	e	1	1	1	3	3	4	i	(a11de1i
Siarad	fusser14	211	1	BEL	ti yn cofnodi	\N	cym	monoW	a	5	1	3	3	f	3	3	e	1	1	1	1	1	4	d	(a51fe1d
Siarad	fusser14	211	2	BEL	be dan ni yn gael bwyta	clause division	cym	monoW	a	5	1	3	3	f	3	3	e	1	1	1	1	1	4	d	(a51fe1d
Siarad	fusser14	211	4	BEL	be dan ni yn bwyta bob dydd	\N	cym	monoW	a	5	1	3	3	f	3	3	e	1	1	1	1	1	4	d	(a51fe1d
Siarad	fusser14	217	1	BEL	dw i ddim yn cofio	\N	cym	monoW	a	5	1	3	3	f	3	3	e	1	1	1	1	1	4	d	(a51fe1d
Siarad	fusser14	219	1	BEL	ond yn anffodus Cywryd be mae mam yn deud	\N	cym	monoW	a	5	1	3	3	f	3	3	e	1	1	1	1	1	4	d	(a51fe1d
Siarad	fusser14	224	1	BEL	na dw i ddim yn wneud nhw	\N	cym	monoW	a	5	1	3	3	f	3	3	e	1	1	1	1	1	4	d	(a51fe1d
Siarad	fusser14	227	1	BEL	oedd ni bwyta allan mwy neu lai bob bob bob nos	\N	cym	monoW	a	5	1	3	3	f	3	3	e	1	1	1	1	1	4	d	(a51fe1d
Siarad	fusser14	229	1	BEL	oedd ti mynd am dro efo efo dy fam	\N	cym	monoW	a	5	1	3	3	f	3	3	e	1	1	1	1	1	4	d	(a51fe1d
Siarad	fusser14	230	1	BEL	a sbia be beth oedd yn y cae	\N	cym	monoW	a	5	1	3	3	f	3	3	e	1	1	1	1	1	4	d	(a51fe1d
Siarad	fusser14	231	1	BEL	beth oedd yn y cae	\N	cym	monoW	a	5	1	3	3	f	3	3	e	1	1	1	1	1	4	d	(a51fe1d
Siarad	fusser14	235	1	BEL	ond er aethon ni i er BÃ©cherel sef Gelli_Gandryll yeah	\N	cym	monoW	a	5	1	3	3	f	3	3	e	1	1	1	1	1	4	d	(a51fe1d
Siarad	fusser14	424	1	BEL	a cawson ni hynny er can mil o weithiau	\N	cym	monoW	a	5	1	3	3	f	3	3	e	1	1	1	1	1	4	d	(a51fe1d
Siarad	fusser14	426	1	BEL	so oh hon oedd y llun llun gorau	\N	cym	monoW	a	5	1	3	3	f	3	3	e	1	1	1	1	1	4	d	(a51fe1d
Siarad	fusser14	431	1	BEL	ond dw i yn lico yr um celfyddydau Llydaw	\N	cym	monoW	a	5	1	3	3	f	3	3	e	1	1	1	1	1	4	d	(a51fe1d
Siarad	fusser21	646	5	HAW	gobeithio bod nhw wedi cyrraedd	non-finite	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	fusser21	653	1	ILI	wnes i sgwennu rei ond ddim gyrru nhw	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	fusser21	655	1	ILI	so mae mam a dad wedi cael un nhw de Jim a Janet	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	fusser21	656	1	ILI	ac oedd un nhw efo stamp just heb ei gyrru	clause division	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	fusser21	660	1	HAW	so wnest ti ddim gyrru fo	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	fusser21	661	2	ILI	oedd Delyth efo dau stamp sbâr	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	fusser21	663	1	ILI	er ceith Mari un hi	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	fusser21	663	2	ILI	pan mae yn cyrraedd adre	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	stammers4	190	1	ELE	oh mae yn flêr felly 	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser14	432	2	BEL	aethon ni er i weld yr um gwaith Henri_RiviÃ¨re	\N	cym	monoW	a	5	1	3	3	f	3	3	e	1	1	1	1	1	4	d	(a51fe1d
Siarad	fusser14	432	4	BEL	sy yn	\N	cym	monoW	a	5	1	3	3	f	3	3	e	1	1	1	1	1	4	d	(a51fe1d
Siarad	fusser14	438	1	BEL	mae rywbeth japanÃ«eg amdano fo	\N	cym	monoW	a	5	1	3	3	f	3	3	e	1	1	1	1	1	4	d	(a51fe1d
Siarad	fusser14	451	1	BEL	prynon ni hwn	\N	cym	monoW	a	5	1	3	3	f	3	3	e	1	1	1	1	1	4	d	(a51fe1d
Siarad	fusser14	454	1	BEL	dw i cofio	\N	cym	monoW	a	5	1	3	3	f	3	3	e	1	1	1	1	1	4	d	(a51fe1d
Siarad	fusser14	455	1	BEL	aethon ni yna	\N	cym	monoW	a	5	1	3	3	f	3	3	e	1	1	1	1	1	4	d	(a51fe1d
Siarad	fusser14	456	1	BEL	aethon ni i farchnad yn y bore	\N	cym	monoW	a	5	1	3	3	f	3	3	e	1	1	1	1	1	4	d	(a51fe1d
Siarad	fusser14	458	1	BEL	oedd y farchnad yn anferth er	\N	cym	monoW	a	5	1	3	3	f	3	3	e	1	1	1	1	1	4	d	(a51fe1d
Siarad	fusser14	664	1	BEL	ar y ffordd nôl i car penderfynodd Cywryd bod golygfa llawer gwell i chael o yr byd trwy edrych arno wyneb i_waered	\N	cym	monoW	a	5	1	3	3	f	3	3	e	1	1	1	1	1	4	d	(a51fe1d
Siarad	fusser14	665	1	BEL	a be be ti wedi cael	\N	cym	monoW	a	5	1	3	3	f	3	3	e	1	1	1	1	1	4	d	(a51fe1d
Siarad	fusser14	665	2	BEL	sy yn wyneb i_waered	\N	cym	monoW	a	5	1	3	3	f	3	3	e	1	1	1	1	1	4	d	(a51fe1d
Siarad	fusser14	672	1	BEL	ydw i yn deud ben i_lawr	\N	cym	monoW	a	5	1	3	3	f	3	3	e	1	1	1	1	1	4	d	(a51fe1d
Siarad	fusser14	673	2	BEL	yw peth cywir i deud	\N	cym	monoW	a	5	1	3	3	f	3	3	e	1	1	1	1	1	4	d	(a51fe1d
Siarad	fusser14	674	1	BEL	a dw meddwl	\N	cym	monoW	a	5	1	3	3	f	3	3	e	1	1	1	1	1	4	d	(a51fe1d
Siarad	fusser14	674	2	BEL	cest ti crempog yna	\N	cym	monoW	a	5	1	3	3	f	3	3	e	1	1	1	1	1	4	d	(a51fe1d
Siarad	fusser14	676	1	BEL	gest ti crempog ym bob bob cafe yn Llydaw	\N	cym	monoW	a	5	1	3	3	f	3	3	e	1	1	1	1	1	4	d	(a51fe1d
Siarad	fusser14	676	2	BEL	dw meddwl	\N	cym	monoW	a	5	1	3	3	f	3	3	e	1	1	1	1	1	4	d	(a51fe1d
Siarad	fusser14	687	1	BEL	a hwn oedd y trychineb mwy ar y gwyliau	\N	cym	monoW	a	5	1	3	3	f	3	3	e	1	1	1	1	1	4	d	(a51fe1d
Siarad	fusser14	691	1	BEL	ac oedd Cywryd yn cambihafio	\N	cym	monoW	a	5	1	3	3	f	3	3	e	1	1	1	1	1	4	d	(a51fe1d
Siarad	fusser14	693	1	BEL	ac oedd y dynes y tywysydd yn sbïo arna ni a deud ssh Ffrangeg	\N	cym	monoW	a	5	1	3	3	f	3	3	e	1	1	1	1	1	4	d	(a51fe1d
Siarad	fusser14	698	1	BEL	oedd pawb arall eisiau ni gadael	\N	cym	monoW	a	5	1	3	3	f	3	3	e	1	1	1	1	1	4	d	(a51fe1d
Siarad	davies14	766	1	FRE	ac um well ydan ni yn	\N	cym	monoW	a	5	1	3	3	f	3	3	e	1	4	3	4	1	1	j	(a51fe1j
Siarad	davies14	766	2	FRE	ydan ni yn dysgu rhywfaint o bethau newydd	\N	cym	monoW	a	5	1	3	3	f	3	3	e	1	4	3	4	1	1	j	(a51fe1j
Siarad	davies14	770	1	FRE	mae o fath â mynd i yr nef neu i yr nefoedd	\N	cym	monoW	a	5	1	3	3	f	3	3	e	1	4	3	4	1	1	j	(a51fe1j
Siarad	davies14	773	1	FRE	y nef sy yn datgan y	\N	cym	monoW	a	5	1	3	3	f	3	3	e	1	4	3	4	1	1	j	(a51fe1j
Siarad	davies14	228	1	FRE	beth oes rhaid i ti weithio efo nhw	\N	cym	monoW	a	5	1	3	3	f	3	3	e	1	4	3	4	1	1	j	(a51fe1j
Siarad	davies14	234	1	FRE	oh dydy yr bychan ddim yn mynd	\N	cym	monoW	a	5	1	3	3	f	3	3	e	1	4	3	4	1	1	j	(a51fe1j
Siarad	davies14	235	1	FRE	dydy David ac er	\N	cym	monoW	a	5	1	3	3	f	3	3	e	1	4	3	4	1	1	j	(a51fe1j
Siarad	davies14	249	1	FRE	mae yr esgob yn pregethu	\N	cym	monoW	a	5	1	3	3	f	3	3	e	1	4	3	4	1	1	j	(a51fe1j
Siarad	davies14	254	1	FRE	mae o yn dda	\N	cym	monoW	a	5	1	3	3	f	3	3	e	1	4	3	4	1	1	j	(a51fe1j
Siarad	davies14	259	1	FRE	yeah dw i yn sure	\N	cym	monoW	a	5	1	3	3	f	3	3	e	1	4	3	4	1	1	j	(a51fe1j
Siarad	davies14	259	2	FRE	fydd o yn ddiddorol	\N	cym	monoW	a	5	1	3	3	f	3	3	e	1	4	3	4	1	1	j	(a51fe1j
Siarad	davies14	261	1	FRE	fydd o yn orlawn	\N	cym	monoW	a	5	1	3	3	f	3	3	e	1	4	3	4	1	1	j	(a51fe1j
Siarad	davies14	279	1	FRE	yeah be be mae gynno chi yr velcro neu rywbeth ar ar eich	\N	cym	monoW	a	5	1	3	3	f	3	3	e	1	4	3	4	1	1	j	(a51fe1j
Siarad	davies14	282	1	FRE	er a a wal velcro ydy o	\N	cym	monoW	a	5	1	3	3	f	3	3	e	1	4	3	4	1	1	j	(a51fe1j
Siarad	fusser21	654	1	HAW	ah ia dyna wnes i yn Austria	non-finite	\N	monoW	\N	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	\N
Siarad	fusser21	664	1	ILI	mae Kevin a mam wedi mynd i weld nain	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	fusser21	666	1	ILI	so dw i yn gobeithio	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	fusser21	666	2	ILI	bydd nhw wedi cofio	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	fusser21	667	1	ILI	a beth bynnag sy yn mynd i Bryn_Bela nesa	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	fusser21	667	3	ILI	geith fynd â hwnna	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	fusser21	669	1	HAW	wnes i just ddim boddran prynu dim	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	fusser21	670	1	ILI	oh wnes i	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	fusser21	685	1	HAW	mi fysa chdi bysachd	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	fusser21	697	1	HAW	er pobl sy byw dros ffordd i tŷ chdi	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies12	382	2	CER	dw meddwl	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	3	1	4	0	h	(a11ba1h
Siarad	davies12	384	1	CER	ond yeah werth cael un	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	3	1	4	0	h	(a11ba1h
Siarad	davies12	392	1	CER	fath â mae nhw yn um ti gallu upload_io lluniau chdi	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	3	1	4	0	h	(a11ba1h
Siarad	davies12	393	1	CER	a wedyn mae nhw yn i ti fath â	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	3	1	4	0	h	(a11ba1h
Siarad	davies12	395	1	CER	so mae	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	3	1	4	0	h	(a11ba1h
Siarad	davies14	478	1	FRE	oedd o yn siarad yn call iawn chwarae teg	\N	cym	monoW	a	5	1	3	3	f	3	3	e	1	4	3	4	1	1	j	(a51fe1j
Siarad	davies14	479	1	FRE	er oedd o	\N	cym	monoW	a	5	1	3	3	f	3	3	e	1	4	3	4	1	1	j	(a51fe1j
Siarad	davies14	479	2	FRE	oedden ni yn sôn am yr club pêl_droed Arsenal	\N	cym	monoW	a	5	1	3	3	f	3	3	e	1	4	3	4	1	1	j	(a51fe1j
Siarad	davies14	481	2	FRE	mae o er a Tudor	\N	cym	monoW	a	5	1	3	3	f	3	3	e	1	4	3	4	1	1	j	(a51fe1j
Siarad	davies14	490	1	FRE	mae ymson	\N	cym	monoW	a	5	1	3	3	f	3	3	e	1	4	3	4	1	1	j	(a51fe1j
Siarad	davies14	502	1	FRE	well er tua mis yn_ôl oedd o yn cael gair efo yr esgob	\N	cym	monoW	a	5	1	3	3	f	3	3	e	1	4	3	4	1	1	j	(a51fe1j
Siarad	davies14	514	1	FRE	oedd er yr er baptise_iad yn cymryd drosodd	\N	cym	monoW	a	5	1	3	3	f	3	3	e	1	4	3	4	1	1	j	(a51fe1j
Siarad	davies14	514	2	FRE	meddai fo	\N	cym	monoW	a	5	1	3	3	f	3	3	e	1	4	3	4	1	1	j	(a51fe1j
Siarad	davies14	515	1	FRE	a mae rhaid i er rhywun er	\N	cym	monoW	a	5	1	3	3	f	3	3	e	1	4	3	4	1	1	j	(a51fe1j
Siarad	davies14	520	1	FRE	dw i yn cofio hynna	\N	cym	monoW	a	5	1	3	3	f	3	3	e	1	4	3	4	1	1	j	(a51fe1j
Siarad	davies14	525	1	FRE	oedd o am sgwennu wir	\N	cym	monoW	a	5	1	3	3	f	3	3	e	1	4	3	4	1	1	j	(a51fe1j
Siarad	davies14	743	1	FRE	ond um fyddan ni yn canu oh hanner dwsin iddyn nhw	\N	cym	monoW	a	5	1	3	3	f	3	3	e	1	4	3	4	1	1	j	(a51fe1j
Siarad	davies14	743	2	FRE	dw i yn sure o yr hen ffefryn ac yn	\N	cym	monoW	a	5	1	3	3	f	3	3	e	1	4	3	4	1	1	j	(a51fe1j
Siarad	davies14	745	1	FRE	well dw i ddim yn	\N	cym	monoW	a	5	1	3	3	f	3	3	e	1	4	3	4	1	1	j	(a51fe1j
Siarad	davies14	745	2	FRE	es i ddim yn efo nhw	\N	cym	monoW	a	5	1	3	3	f	3	3	e	1	4	3	4	1	1	j	(a51fe1j
Siarad	davies14	747	1	FRE	os oes yna	\N	cym	monoW	a	5	1	3	3	f	3	3	e	1	4	3	4	1	1	j	(a51fe1j
Siarad	davies14	751	1	FRE	fydd dy ffefryn di yn troi fyny de	\N	cym	monoW	a	5	1	3	3	f	3	3	e	1	4	3	4	1	1	j	(a51fe1j
Siarad	davies14	754	1	FRE	byddan nhw yn sure o gofyn am hwnnw	\N	cym	monoW	a	5	1	3	3	f	3	3	e	1	4	3	4	1	1	j	(a51fe1j
Siarad	davies14	762	1	FRE	mae yn right fodern	\N	cym	monoW	a	5	1	3	3	f	3	3	e	1	4	3	4	1	1	j	(a51fe1j
Siarad	davies14	763	2	FRE	mae yn dda iawn	\N	cym	monoW	a	5	1	3	3	f	3	3	e	1	4	3	4	1	1	j	(a51fe1j
Siarad	stammers7	134	1	ROY	oh wna i wrando ar hwn 	\N	cym	monoW	a	5	1	3	3	f	3	3	e	3	4	4	1	1	4	k	(a51fe3k
Siarad	stammers7	135	1	ROY	a daeth Al i_fewn tra mod i yn gwrando arno fo 	\N	cym	monoW	a	5	1	3	3	f	3	3	e	3	4	4	1	1	4	k	(a51fe3k
Siarad	stammers7	141	2	ROY	dyna pam dw i yn licio wneud nhw yn mewn gwasanaeth 	verbless	cym	monoW	a	5	1	3	3	f	3	3	e	3	4	4	1	1	4	k	(a51fe3k
Siarad	stammers7	180	1	ROY	mae hynny yn syniad da 	\N	cym	monoW	a	5	1	3	3	f	3	3	e	3	4	4	1	1	4	k	(a51fe3k
Siarad	stammers7	185	1	ROY	mae hynny yn syniad da iawn 	\N	cym	monoW	a	5	1	3	3	f	3	3	e	3	4	4	1	1	4	k	(a51fe3k
Siarad	stammers7	257	1	ROY	ydy 	\N	cym	monoW	a	5	1	3	3	f	3	3	e	3	4	4	1	1	4	k	(a51fe3k
Siarad	davies12	395	2	CER	mae yn quality right dda arnyn nhw	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	3	1	4	0	h	(a11ba1h
Siarad	davies12	415	1	CER	o'n i wastad meddwl	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	3	1	4	0	h	(a11ba1h
Siarad	davies12	415	2	CER	basen andros o ddrud	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	3	1	4	0	h	(a11ba1h
Siarad	davies12	416	1	CER	ond dyn nhw ddim mor ddrud â hynny	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	3	1	4	0	h	(a11ba1h
Siarad	davies12	422	1	CER	na oedd un fi mond yn chwe_deg	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	3	1	4	0	h	(a11ba1h
Siarad	davies12	772	1	CER	mae wedi achos	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	3	1	4	0	h	(a11ba1h
Siarad	davies12	772	2	CER	mae thad tad hi yn yr army neu rywbeth	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	3	1	4	0	h	(a11ba1h
Siarad	davies12	774	1	CER	dw meddwl	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	3	1	4	0	h	(a11ba1h
Siarad	davies12	774	2	CER	oedd hi just yn fath â colli teulu	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	3	1	4	0	h	(a11ba1h
Siarad	davies12	775	1	CER	ond um yn amlwg mae wedi aros	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	3	1	4	0	h	(a11ba1h
Siarad	davies12	782	1	CER	oedd o yn deud bod o mynd i Trash heno so	clause division	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	3	1	4	0	h	(a11ba1h
Siarad	fusser21	699	1	HAW	oh yndy	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	fusser21	701	2	HAW	oedd o yn gweithio ar y lôn	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	fusser21	950	1	HAW	o'n ni yna am oes	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	stammers7	310	3	ROY	lle oedd y hen llys Llewelyn 	\N	cym	monoW	a	5	1	3	3	f	3	3	e	3	4	4	1	1	4	k	(a51fe3k
Siarad	stammers7	314	1	ROY	oedd ar y teledu 	\N	cym	monoW	a	5	1	3	3	f	3	3	e	3	4	4	1	1	4	k	(a51fe3k
Siarad	stammers7	340	1	ROY	pryd mae hwnna 	\N	cym	monoW	a	5	1	3	3	f	3	3	e	3	4	4	1	1	4	k	(a51fe3k
Siarad	stammers7	411	1	ROY	pedwar a bydd un 	\N	cym	monoW	a	5	1	3	3	f	3	3	e	3	4	4	1	1	4	k	(a51fe3k
Siarad	stammers7	411	2	ROY	mae un arall ar y ffordd 	\N	cym	monoW	a	5	1	3	3	f	3	3	e	3	4	4	1	1	4	k	(a51fe3k
Siarad	stammers7	413	1	ROY	mae un efo pedwar 	\N	cym	monoW	a	5	1	3	3	f	3	3	e	3	4	4	1	1	4	k	(a51fe3k
Siarad	stammers7	414	1	ROY	a mae llall yn mynd i cael ei un cynta 	\N	cym	monoW	a	5	1	3	3	f	3	3	e	3	4	4	1	1	4	k	(a51fe3k
Siarad	stammers7	421	1	ROY	so mae mwy anodd rwan i mi byw yma 	\N	cym	monoW	a	5	1	3	3	f	3	3	e	3	4	4	1	1	4	k	(a51fe3k
Siarad	stammers7	426	1	ROY	ond mae hi wedi cael dau arall mmm ers i mi symud tramor dros môr 	\N	cym	monoW	a	5	1	3	3	f	3	3	e	3	4	4	1	1	4	k	(a51fe3k
Siarad	stammers7	439	1	ROY	mae yn sure 	\N	cym	monoW	a	5	1	3	3	f	3	3	e	3	4	4	1	1	4	k	(a51fe3k
Siarad	stammers7	453	1	ROY	mae yn sure 	\N	cym	monoW	a	5	1	3	3	f	3	3	e	3	4	4	1	1	4	k	(a51fe3k
Siarad	stammers7	458	1	ROY	er dw ddim yn meddwl mod i yn nabod o 	\N	cym	monoW	a	5	1	3	3	f	3	3	e	3	4	4	1	1	4	k	(a51fe3k
Siarad	stammers7	480	1	ROY	gyrru lawr byddech chi ta fflio 	nonfinite	cym	monoW	a	5	1	3	3	f	3	3	e	3	4	4	1	1	4	k	(a51fe3k
Siarad	stammers7	486	1	ROY	mae Dick yn mynd i Lydaw dros y penwythnos efo gwaith 	\N	cym	monoW	a	5	1	3	3	f	3	3	e	3	4	4	1	1	4	k	(a51fe3k
Siarad	stammers7	629	1	ROY	o'n i methu cael pres yn_ôl o yr cwmni awyren	\N	cym	monoW	a	5	1	3	3	f	3	3	e	3	4	4	1	1	4	k	(a51fe3k
Siarad	stammers7	630	1	ROY	so ges i deg diwrnod efo efo efo yn rhieni 	\N	cym	monoW	a	5	1	3	3	f	3	3	e	3	4	4	1	1	4	k	(a51fe3k
Siarad	stammers7	633	1	ROY	oh paid â gofyn de 	\N	cym	monoW	a	5	1	3	3	f	3	3	e	3	4	4	1	1	4	k	(a51fe3k
Siarad	stammers7	644	1	ROY	dydy o ddim 	\N	cym	monoW	a	5	1	3	3	f	3	3	e	3	4	4	1	1	4	k	(a51fe3k
Siarad	stammers7	701	1	ROY	be sy nos Wener 	\N	cym	monoW	a	5	1	3	3	f	3	3	e	3	4	4	1	1	4	k	(a51fe3k
Siarad	stammers7	707	1	ROY	wnes i ddeud wrthat ti 	\N	cym	monoW	a	5	1	3	3	f	3	3	e	3	4	4	1	1	4	k	(a51fe3k
Siarad	stammers7	708	1	ROY	ges i um 	\N	cym	monoW	a	5	1	3	3	f	3	3	e	3	4	4	1	1	4	k	(a51fe3k
Siarad	stammers7	708	2	ROY	wnes i cais i Lerpwl am cwrs nyrsio 	\N	cym	monoW	a	5	1	3	3	f	3	3	e	3	4	4	1	1	4	k	(a51fe3k
Siarad	stammers7	710	1	ROY	dw i wedi cael cyfweliad 	\N	cym	monoW	a	5	1	3	3	f	3	3	e	3	4	4	1	1	4	k	(a51fe3k
Siarad	stammers7	712	1	ROY	do dw i mynd yno dydd Iau 	\N	cym	monoW	a	5	1	3	3	f	3	3	e	3	4	4	1	1	4	k	(a51fe3k
Siarad	fusser17	328	1	BEN	dw i ddim ry sure os	\N	cym	monoW	a	5	1	3	3	f	3	3	e	3	4	4	4	4	4	p	(a51fe3p
Siarad	fusser17	329	2	BEN	oes yna	clause division	cym	monoW	a	5	1	3	3	f	3	3	e	3	4	4	4	4	4	p	(a51fe3p
Siarad	fusser21	951	1	HAW	aethon ni ddim i gysgu tan hir ar_ôl tri	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	fusser21	975	1	HAW	do achos oedd gynnon ni stickers	clause division	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	fusser21	982	1	ILI	doedden ni ddim fod i	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	fusser21	983	1	ILI	wnaethon ni just mynd	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	fusser21	983	2	ILI	bod ni efo ysgol a just mwydro nhw yn hanner Ffrangeg hanner Saesneg tibod	non-finite	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	fusser21	985	1	ILI	a wnaethon ni er	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	fusser21	985	2	ILI	dw ddim gwybod	clause division	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies12	784	1	CER	dw ddim gwybod	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	3	1	4	0	h	(a11ba1h
Siarad	davies12	791	1	CER	dw gobeithio nhw yn hapus	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	3	1	4	0	h	(a11ba1h
Siarad	davies12	792	1	CER	dw wir yn	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	3	1	4	0	h	(a11ba1h
Siarad	davies12	804	1	CER	es i nos Fercher diwetha	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	3	1	4	0	h	(a11ba1h
Siarad	davies12	808	1	CER	oedd	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	3	1	4	0	h	(a11ba1h
Siarad	davies12	1167	1	CER	oedd hi yn afiach o boeth yna o_hyd	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	3	1	4	0	h	(a11ba1h
Siarad	davies12	1169	1	CER	oedd yn horrible	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	3	1	4	0	h	(a11ba1h
Siarad	davies12	1176	1	CER	dw ddim yn cofio	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	3	1	4	0	h	(a11ba1h
Siarad	davies12	1176	2	CER	be ydy enw hi	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	3	1	4	0	h	(a11ba1h
Siarad	davies12	1177	1	CER	ond dw gwybod	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	3	1	4	0	h	(a11ba1h
Siarad	fusser17	329	3	BEN	chi yn cael gweld y y	clause division	cym	monoW	a	5	1	3	3	f	3	3	e	3	4	4	4	4	4	p	(a51fe3p
Siarad	fusser17	329	4	BEN	lle mae y cerrig wedi cael eu crafu	clause division	cym	monoW	a	5	1	3	3	f	3	3	e	3	4	4	4	4	4	p	(a51fe3p
Siarad	fusser17	374	1	BEN	dach chi yn gweld ychydig ar y chwith er er y cerrig hefyd	\N	cym	monoW	a	5	1	3	3	f	3	3	e	3	4	4	4	4	4	p	(a51fe3p
Siarad	fusser17	384	1	BEN	gofynnwch am y waitress	\N	cym	monoW	a	5	1	3	3	f	3	3	e	3	4	4	4	4	4	p	(a51fe3p
Siarad	fusser17	414	1	BEN	yeah oh na mae yn edrych yn hyfryd yeah yeah	\N	cym	monoW	a	5	1	3	3	f	3	3	e	3	4	4	4	4	4	p	(a51fe3p
Siarad	fusser17	422	1	BEN	hefyd mae yna wahaniaeth rhwng um manylion y cerrig yn y chwith yn y yn y yn y blaendir a wedyn	\N	cym	monoW	a	5	1	3	3	f	3	3	e	3	4	4	4	4	4	p	(a51fe3p
Siarad	davies14	521	1	FRE	oedd	\N	cym	monoW	a	5	1	3	3	f	3	3	e	1	4	3	4	1	1	j	(a51fe1j
Siarad	fusser22	716	4	EVA	ydy Jen yn mynd	\N	cym	monoW	a	5	4	4	4	g	4	4	f	3	4	4	2	2	1	j	(a54gf3j
Siarad	fusser22	717	1	EVA	ydy Jen er	\N	cym	monoW	a	5	4	4	4	g	4	4	f	3	4	4	2	2	1	j	(a54gf3j
Siarad	fusser22	781	1	EVA	dach chi yn er	\N	cym	monoW	a	5	4	4	4	g	4	4	f	3	4	4	2	2	1	j	(a54gf3j
Siarad	davies17	131	1	GLA	roedd y sefyllfa yn yn Lloegr yn yn wahanol i yr gwasaneth i yr sefyllfa yn er yng Nghymru	\N	cym	monoW	a	5	4	4	4	g	4	4	f	3	2	4	4	1	1	i	(a54gf3i
Siarad	davies17	132	1	GLA	um roedd yna fwy o capelwyr yn yng Nghymru um nag	\N	cym	monoW	a	5	4	4	4	g	4	4	f	3	2	4	4	1	1	i	(a54gf3i
Siarad	davies17	132	2	GLA	oedd yn um yn Lloegr	\N	cym	monoW	a	5	4	4	4	g	4	4	f	3	2	4	4	1	1	i	(a54gf3i
Siarad	davies17	161	2	GLA	mae yna dolen cryf wrth wrth_gwrs rwng Cymru a a Lerpwl	\N	cym	monoW	a	5	4	4	4	g	4	4	f	3	2	4	4	1	1	i	(a54gf3i
Siarad	davies17	163	1	GLA	um ac y roedd Lerpwl isio um cynnal um yr Eisteddfod	\N	cym	monoW	a	5	4	4	4	g	4	4	f	3	2	4	4	1	1	i	(a54gf3i
Siarad	davies17	176	1	GLA	neu fel fel rywbeth sy sydd sydd yn marw	\N	cym	monoW	a	5	4	4	4	g	4	4	f	3	2	4	4	1	1	i	(a54gf3i
Siarad	davies17	199	1	GLA	mae o yn dal i stryglo efo efo Saesneg	\N	cym	monoW	a	5	4	4	4	g	4	4	f	3	2	4	4	1	1	i	(a54gf3i
Siarad	davies12	1180	1	CER	dw cofio blwyddyn diwetha	clause division	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	3	1	4	0	h	(a11ba1h
Siarad	davies12	1180	2	CER	o'n nhw yn deud	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	3	1	4	0	h	(a11ba1h
Siarad	davies12	1180	3	CER	bod yna ddim stafelloedd ar_ôl yn Rathbone	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	3	1	4	0	h	(a11ba1h
Siarad	davies12	1192	1	CER	a wnaeth o graddio ryw blynyddoedd yn_ôl	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	3	1	4	0	h	(a11ba1h
Siarad	davies12	1202	1	CER	mae lle newydd yn dre wan	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	3	1	4	0	h	(a11ba1h
Siarad	davies12	1211	1	CER	yndyn	\N	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	3	1	4	0	h	(a11ba1h
Siarad	davies12	1215	1	CER	achos wan mae genna i ffrindiau fath â yn Lerpwl	clause division	cym	monoW	a	1	1	1	1	b	1	1	a	1	1	3	1	4	0	h	(a11ba1h
Siarad	fusser21	985	2	ILI	do'n nhw ddim mor dda yn hynna	h	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	fusser21	987	1	ILI	oh os mai dim ond dyma be sy yma	clause division	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	fusser21	987	2	ILI	mae o ddim yn dda o gwbl	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	fusser21	989	1	ILI	a wedyn pan aethon ni fyny grisiau	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	fusser21	990	1	HAW	oedden i yn meddwl	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	fusser21	990	2	HAW	fysai fo yn ofnadwy	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	fusser21	995	1	ILI	oh does na ddim_byd yma	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	fusser21	996	1	ILI	mae hwn yn ofnadwy	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	fusser21	998	1	ILI	ond unwaith oedda chdi fyny grisiau	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	fusser21	999	1	HAW	do oedd hwnna yn dda	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	fusser21	1000	1	ILI	ond gaethon ni ddim amser i fynd round bob_dim	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	fusser21	1001	1	ILI	aethon ni	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	fusser21	1002	1	HAW	na oedden ni isio mynd i nôl bwyd hefyd so	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	fusser21	1004	1	HAW	oedden ni yna cynnach chi do'n	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	fusser21	1012	1	HAW	yeah dach chi yn	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies17	203	1	GLA	mae o yn hollol fwy rhugl mewn Cymraeg	\N	cym	monoW	a	5	4	4	4	g	4	4	f	3	2	4	4	1	1	i	(a54gf3i
Siarad	davies17	226	1	GLA	well mae rai ohonynt yn yn poeni am am pethau	\N	cym	monoW	a	5	4	4	4	g	4	4	f	3	2	4	4	1	1	i	(a54gf3i
Siarad	davies17	348	1	GLA	um mae hi yn deud tin bwyd bob tro	tin?	cym	monoW	a	5	4	4	4	g	4	4	f	3	2	4	4	1	1	i	(a54gf3i
Siarad	davies17	356	2	GLA	mae yn siarad am am popo	\N	cym	monoW	a	5	4	4	4	g	4	4	f	3	2	4	4	1	1	i	(a54gf3i
Siarad	fusser25	570	2	ALB	dw meddwl	\N	cym	monoW	a	1	1	1	3	d	1	1	a	1	1	4	1	4	3	j	(a11da1j
Siarad	davies17	372	1	GLA	well mae Ffion a fi yn yn um er siarad Cymraeg er weithiau	\N	cym	monoW	a	5	4	4	4	g	4	4	f	3	2	4	4	1	1	i	(a54gf3i
Siarad	davies17	375	1	GLA	um um dan ni ar yr un er yr un er pwyllgor	\N	cym	monoW	a	5	4	4	4	g	4	4	f	3	2	4	4	1	1	i	(a54gf3i
Siarad	davies17	378	1	GLA	oh be ydy enw	\N	cym	monoW	a	5	4	4	4	g	4	4	f	3	2	4	4	1	1	i	(a54gf3i
Siarad	davies17	383	1	GLA	um ac um a dw i ar y er ar y pwyllgor hefyd	\N	cym	monoW	a	5	4	4	4	g	4	4	f	3	2	4	4	1	1	i	(a54gf3i
Siarad	davies17	384	1	GLA	um ac um dan ni yn siarad Cymraeg	\N	cym	monoW	a	5	4	4	4	g	4	4	f	3	2	4	4	1	1	i	(a54gf3i
Siarad	fusser28	118	1	IFO	oh hwnna yn ideal fysai	\N	cym	monoW	a	1	2	1	1	b	1	1	a	4	1	1	1	1	1	b	(a12ba4b
Siarad	fusser28	121	1	IFO	cawn	\N	cym	monoW	a	1	2	1	1	b	1	1	a	4	1	1	1	1	1	b	(a12ba4b
Siarad	fusser28	121	2	IFO	cawn	\N	cym	monoW	a	1	2	1	1	b	1	1	a	4	1	1	1	1	1	b	(a12ba4b
Siarad	fusser28	123	1	IFO	oes	\N	cym	monoW	a	1	2	1	1	b	1	1	a	4	1	1	1	1	1	b	(a12ba4b
Siarad	fusser28	130	1	IFO	paid â deud gormod	\N	cym	monoW	a	1	2	1	1	b	1	1	a	4	1	1	1	1	1	b	(a12ba4b
Siarad	fusser28	132	1	IFO	wyt	\N	cym	monoW	a	1	2	1	1	b	1	1	a	4	1	1	1	1	1	b	(a12ba4b
Siarad	fusser28	133	1	IFO	mae yna rywun yn shop yn recordio fi a Llawdden yn siarad	\N	cym	monoW	a	1	2	1	1	b	1	1	a	4	1	1	1	1	1	b	(a12ba4b
Siarad	davies17	384	2	GLA	pan dan ni yn mewn cyfarfod er pethau	\N	cym	monoW	a	5	4	4	4	g	4	4	f	3	2	4	4	1	1	i	(a54gf3i
Siarad	davies17	390	1	GLA	mae Norman yn yn yn aelod hefyd	\N	cym	monoW	a	5	4	4	4	g	4	4	f	3	2	4	4	1	1	i	(a54gf3i
Siarad	davies17	417	1	GLA	a yr un peth efo efo Ffion hefyd dw i meddwl	\N	cym	monoW	a	5	4	4	4	g	4	4	f	3	2	4	4	1	1	i	(a54gf3i
Siarad	davies17	560	1	GLA	um mae	\N	cym	monoW	a	5	4	4	4	g	4	4	f	3	2	4	4	1	1	i	(a54gf3i
Siarad	davies17	560	2	GLA	mae yna ryw fath o o o fryn neu neu mynydd um tu ôl i reithordy	\N	cym	monoW	a	5	4	4	4	g	4	4	f	3	2	4	4	1	1	i	(a54gf3i
Siarad	davies17	562	1	GLA	mae yna faen	\N	cym	monoW	a	5	4	4	4	g	4	4	f	3	2	4	4	1	1	i	(a54gf3i
Siarad	davies17	562	4	GLA	sy yn um well	\N	cym	monoW	a	5	4	4	4	g	4	4	f	3	2	4	4	1	1	i	(a54gf3i
Siarad	davies17	562	7	GLA	sy yn drio syrthio i_lawr	\N	cym	monoW	a	5	4	4	4	g	4	4	f	3	2	4	4	1	1	i	(a54gf3i
Siarad	davies17	564	2	GLA	mae yna chain	\N	cym	monoW	a	5	4	4	4	g	4	4	f	3	2	4	4	1	1	i	(a54gf3i
Siarad	davies17	564	4	GLA	sy yn cadw um y maen	clause division	cym	monoW	a	5	4	4	4	g	4	4	f	3	2	4	4	1	1	i	(a54gf3i
Siarad	davies17	564	5	GLA	lle mae o	\N	cym	monoW	a	5	4	4	4	g	4	4	f	3	2	4	4	1	1	i	(a54gf3i
Siarad	davies17	568	2	GLA	mae yn edrych tipyn bach yn yn peryglus a deud y gwir	\N	cym	monoW	a	5	4	4	4	g	4	4	f	3	2	4	4	1	1	i	(a54gf3i
Siarad	davies17	570	1	GLA	so um um oh er roedd um	\N	cym	monoW	a	5	4	4	4	g	4	4	f	3	2	4	4	1	1	i	(a54gf3i
Siarad	davies17	570	3	GLA	pan oedd Martin_Hutchins yno yn um yn y nawdegau um	\N	cym	monoW	a	5	4	4	4	g	4	4	f	3	2	4	4	1	1	i	(a54gf3i
Siarad	davies17	570	4	GLA	doedd o dim um yn yn yn fodlon um byw yn y yn y reithordy go iawn	\N	cym	monoW	a	5	4	4	4	g	4	4	f	3	2	4	4	1	1	i	(a54gf3i
Siarad	davies17	574	2	GLA	mae yn dal yna	\N	cym	monoW	a	5	4	4	4	g	4	4	f	3	2	4	4	1	1	i	(a54gf3i
Siarad	davies17	580	1	GLA	well um mae nhw yn	\N	cym	monoW	a	5	4	4	4	g	4	4	f	3	2	4	4	1	1	i	(a54gf3i
Siarad	davies17	580	2	GLA	mae nhw yn drefnu cyrsiau er pethau fel yna	\N	cym	monoW	a	5	4	4	4	g	4	4	f	3	2	4	4	1	1	i	(a54gf3i
Siarad	davies17	583	1	GLA	um ac efo bobl sy gan um gan broblemau um seicolegol er seic seicoleg seicolegaidd	\N	cym	monoW	a	5	4	4	4	g	4	4	f	3	2	4	4	1	1	i	(a54gf3i
Siarad	davies17	589	1	GLA	well mae nhw yn deud bod un um un yn digon diogel	\N	cym	monoW	a	5	4	4	4	g	4	4	f	3	2	4	4	1	1	i	(a54gf3i
Siarad	fusser22	187	2	EVA	dach chi yn eisio eisio dal ati	\N	cym	monoW	a	5	4	4	4	g	4	4	f	3	4	4	2	2	1	j	(a54gf3j
Siarad	fusser22	200	1	EVA	baswn i licio gweld um yeah er prosiect er i Stan um hefyd	\N	cym	monoW	a	5	4	4	4	g	4	4	f	3	4	4	2	2	1	j	(a54gf3j
Siarad	fusser22	203	1	EVA	er baswn i yn licio	\N	cym	monoW	a	5	4	4	4	g	4	4	f	3	4	4	2	2	1	j	(a54gf3j
Siarad	fusser22	208	1	EVA	er mae o yn er brysur efo brysur efo um ddysgu Ffrainc	\N	cym	monoW	a	5	4	4	4	g	4	4	f	3	4	4	2	2	1	j	(a54gf3j
Siarad	fusser22	269	1	EVA	ydy yr y prosiect sure	\N	cym	monoW	a	5	4	4	4	g	4	4	f	3	4	4	2	2	1	j	(a54gf3j
Siarad	fusser22	291	2	EVA	mae o yn brysur yn dysgu Ffrangeg	\N	cym	monoW	a	5	4	4	4	g	4	4	f	3	4	4	2	2	1	j	(a54gf3j
Siarad	fusser22	293	2	EVA	mae o yn	if repair follows then exclude this	cym	monoW	a	5	4	4	4	g	4	4	f	3	4	4	2	2	1	j	(a54gf3j
Siarad	fusser22	297	1	EVA	er mae o yn angen i er	\N	cym	monoW	a	5	4	4	4	g	4	4	f	3	4	4	2	2	1	j	(a54gf3j
Siarad	fusser22	452	1	EVA	sy gynnoch chi	\N	cym	monoW	a	5	4	4	4	g	4	4	f	3	4	4	2	2	1	j	(a54gf3j
Siarad	fusser22	479	1	EVA	ie dw i yn cytuno	\N	cym	monoW	a	5	4	4	4	g	4	4	f	3	4	4	2	2	1	j	(a54gf3j
Siarad	fusser22	479	2	EVA	dw i yn cytuno	\N	cym	monoW	a	5	4	4	4	g	4	4	f	3	4	4	2	2	1	j	(a54gf3j
Siarad	fusser22	514	1	EVA	well mae yna ie	\N	cym	monoW	a	5	4	4	4	g	4	4	f	3	4	4	2	2	1	j	(a54gf3j
Siarad	fusser22	716	1	EVA	ydy	\N	cym	monoW	a	5	4	4	4	g	4	4	f	3	4	4	2	2	1	j	(a54gf3j
Siarad	fusser22	716	2	EVA	ydy	\N	cym	monoW	a	5	4	4	4	g	4	4	f	3	4	4	2	2	1	j	(a54gf3j
Siarad	fusser22	716	3	EVA	ydy	\N	cym	monoW	a	5	4	4	4	g	4	4	f	3	4	4	2	2	1	j	(a54gf3j
Siarad	davies1	260	1	SAR	os gaethen i couple o shifts yn G_E	\N	cym	biling	b	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(b13ba1b
Siarad	davies1	260	1	SAR	basai hwnna yn good	h	cym	biling	b	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(b13ba1b
Siarad	davies1	272	1	NON	dim Iest yw e though	\N	cym	biling	b	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(b12ba1b
Siarad	davies15	266	1	NEL	amser yna fydda i really isio yn sgwennu fyny yn	\N	cym	biling	b	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(b12ba1b
Siarad	davies1	215	2	NON	mae fe wastad yn um bach o anticlimax neu rywbeth yn_dyw e	\N	cym	biling	b	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(b12ba1b
Siarad	davies15	278	1	NEL	yndy Mold yn rywle de	\N	cym	biling	b	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(b12ba1b
Siarad	fusser28	135	1	IFO	so paid â deud gormod please	\N	cym	monoW	a	1	2	1	1	b	1	1	a	4	1	1	1	1	1	b	(a12ba4b
Siarad	fusser28	242	1	IFO	faint ydy o i chdi	\N	cym	monoW	a	1	2	1	1	b	1	1	a	4	1	1	1	1	1	b	(a12ba4b
Siarad	fusser28	247	1	IFO	ac mae dad de	\N	cym	monoW	a	1	2	1	1	b	1	1	a	4	1	1	1	1	1	b	(a12ba4b
Siarad	fusser28	248	1	IFO	Ford Focus sy gyn dad	\N	cym	monoW	a	1	2	1	1	b	1	1	a	4	1	1	1	1	1	b	(a12ba4b
Siarad	fusser28	252	2	IFO	ydy o de	\N	cym	monoW	a	1	2	1	1	b	1	1	a	4	1	1	1	1	1	b	(a12ba4b
Siarad	fusser28	256	1	IFO	mae dad yn T_D_C_I	\N	cym	monoW	a	1	2	1	1	b	1	1	a	4	1	1	1	1	1	b	(a12ba4b
Siarad	fusser28	259	1	IFO	yndy	\N	cym	monoW	a	1	2	1	1	b	1	1	a	4	1	1	1	1	1	b	(a12ba4b
Siarad	fusser28	262	1	IFO	bydd raid i un o ni picio i Gaernarfon fory	\N	cym	monoW	a	1	2	1	1	b	1	1	a	4	1	1	1	1	1	b	(a12ba4b
Siarad	fusser28	354	1	IFO	yndy	\N	cym	monoW	a	1	2	1	1	b	1	1	a	4	1	1	1	1	1	b	(a12ba4b
Siarad	stammers6	778	2	IFA	i wneud am y peth 	\N	cym	monoW	a	1	3	1	1	b	2	2	c	1	1	1	1	1	1	b	(a13bc1b
Siarad	davies1	514	1	NON	mae hi yn lovely	\N	cym	biling	b	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(b12ba1b
Siarad	davies1	546	1	NON	oh mae hi yn lovely	\N	cym	biling	b	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(b12ba1b
Siarad	davies1	555	1	NON	fi lawer mwy excited i i Queen's_Ball twel na pethau fel Clwb_Cymru a Occy	\N	cym	biling	b	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(b12ba1b
Siarad	davies15	496	1	NEL	a mae o really yn bug_io fi wan	\N	cym	biling	b	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(b12ba1b
Siarad	davies1	754	1	NON	yeah mae yn hard_going	\N	cym	biling	b	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(b12ba1b
Siarad	davies15	727	1	NEL	oh pan o'n i yn Thailand	two finite clauses	cym	biling	b	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(b12ba1b
Siarad	davies15	727	2	NEL	oedd gynnyn nhw fel spas anhygoel yna de	h	cym	biling	b	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(b12ba1b
Siarad	davies15	750	2	NEL	dw i ddim yn gwybod manicure neu rywbeth	\N	cym	biling	b	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(b12ba1b
Siarad	davies1	778	1	SAR	mae fe eitha energetic thing i wneud	\N	cym	biling	b	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(b13ba1b
Siarad	davies1	779	1	SAR	oh oedd gyda ni loads o dance_o a wneud hyn a rhedeg o fan hyn i llall a	\N	cym	biling	b	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(b13ba1b
Siarad	davies13	261	1	JAM	Comet online twel achos in store fi yn credu	\N	cym	biling	b	1	1	1	1	b	1	1	a	1	1	1	1	1	1	b	(b11ba1b
Siarad	davies13	268	1	JAM	mae Comet ddim yn gorfod talu i rywun bod wrth customer services i helpu ti neu rywbeth	\N	cym	biling	b	1	1	1	1	b	1	1	a	1	1	1	1	1	1	b	(b11ba1b
Siarad	davies13	297	1	MEI	mae pawb yn cael boxer shorts a socks a	\N	cym	biling	b	1	1	1	1	b	1	1	a	1	1	1	1	1	1	b	(b11ba1b
Siarad	davies13	503	3	JAM	mae fe yn wneud commentary cyn y game a yn yr interval a	\N	cym	biling	b	1	1	1	1	b	1	1	a	1	1	1	1	1	1	b	(b11ba1b
Siarad	davies6	766	1	DAN	sorry wnes i ddim dallt fuck all o hynna	\N	cym	biling	b	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(b13ba1b
Siarad	davies13	556	1	JAM	achos mae trwyn fi yn eitha snuffy	\N	cym	biling	b	1	1	1	1	b	1	1	a	1	1	1	1	1	1	b	(b11ba1b
Siarad	davies13	562	1	MEI	mae naps yn brilliant though	\N	cym	biling	b	1	1	1	1	b	1	1	a	1	1	1	1	1	1	b	(b11ba1b
Siarad	davies13	564	1	MEI	mae naps yn well na actual cysgu yn iawn	\N	cym	biling	b	1	1	1	1	b	1	1	a	1	1	1	1	1	1	b	(b11ba1b
Siarad	davies13	572	1	MEI	thing ydy	\N	cym	biling	b	1	1	1	1	b	1	1	a	1	1	1	1	1	1	b	(b11ba1b
Siarad	davies13	806	1	MEI	es i dentist wythnos dwytha	\N	cym	biling	b	1	1	1	1	b	1	1	a	1	1	1	1	1	1	b	(b11ba1b
Siarad	davies7	294	1	TRA	mae Pete wedi mynd yn eitha boring wan do	\N	cym	biling	b	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(b12ba1b
Siarad	davies5	255	2	MER	sy wedi citio fyny sort of thing	\N	cym	biling	b	1	1	1	1	b	1	1	a	1	1	1	1	1	3	c	(b11ba1c
Siarad	davies5	273	1	MER	hi oedd yn dreifio ar y motorway	\N	cym	biling	b	1	1	1	1	b	1	1	a	1	1	1	1	1	3	c	(b11ba1c
Siarad	davies5	616	1	MER	i Ffrainc doedd o ddim hassle o_gwbl de	\N	cym	biling	b	1	1	1	1	b	1	1	a	1	1	1	1	1	3	c	(b11ba1c
Siarad	davies6	234	1	DAN	dwy flynedd yn_ôl oedd o dim_ond two point seven five	\N	cym	biling	b	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(b13ba1b
Siarad	davies6	254	2	DAN	mae Nistelrooy wedi cael season gwael	\N	cym	biling	b	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(b13ba1b
Siarad	davies5	677	1	MER	neu ar y Seine neu whatever ydy enw yr afon	\N	cym	biling	b	1	1	1	1	b	1	1	a	1	1	1	1	1	3	c	(b11ba1c
Siarad	davies5	935	1	MER	achos dw ddim really isio fo anyway ar y funud	\N	cym	biling	b	1	1	1	1	b	1	1	a	1	1	1	1	1	3	c	(b11ba1c
Siarad	davies5	977	2	MER	mae ryw thing yn er Penrhos sort of ryw ddyn yma biau farm seventeen rywbeth	\N	cym	biling	b	1	1	1	1	b	1	1	a	1	1	1	1	1	3	c	(b11ba1c
Siarad	davies5	980	2	MER	gafodd brawd fi five hundred quid two hundred	\N	cym	biling	b	1	1	1	1	b	1	1	a	1	1	1	1	1	3	c	(b11ba1c
Siarad	davies5	982	2	MER	sy yn byw yn either Brynrefail neu Moelfre	\N	cym	biling	b	1	1	1	1	b	1	1	a	1	1	1	1	1	3	c	(b11ba1c
Siarad	davies5	984	3	MER	dw ddim gwybod chairman o yr thing yn roid llythyrau allan i pawb	\N	cym	biling	b	1	1	1	1	b	1	1	a	1	1	1	1	1	3	c	(b11ba1c
Siarad	fusser28	357	2	IFO	dydy o wneud dim gwahaniaeth	\N	cym	monoW	a	1	2	1	1	b	1	1	a	4	1	1	1	1	1	b	(a12ba4b
Siarad	fusser28	357	3	IFO	ydy	\N	cym	monoW	a	1	2	1	1	b	1	1	a	4	1	1	1	1	1	b	(a12ba4b
Siarad	davies6	265	1	DAN	ond doedd o ddim yn sgorio i Holland chwaith na chei	\N	cym	biling	b	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(b13ba1b
Siarad	davies6	257	1	HEC	Fergie oedd ddim yn chwarae fo season	\N	cym	biling	b	1	2	1	1	b	1	1	a	1	1	1	1	4	1	d	(b12ba1d
Siarad	davies6	259	2	HEC	mae raid bod gynno fo ryw fath o attitude problem de	\N	cym	biling	b	1	2	1	1	b	1	1	a	1	1	1	1	4	1	d	(b12ba1d
Siarad	davies6	260	1	HEC	achos tibod diwedd y World Cup nag oedd	which is finite verb?	cym	biling	b	1	2	1	1	b	1	1	a	1	1	1	1	4	1	d	(b12ba1d
Siarad	davies6	267	1	HEC	doedd o ddim yn World Cup na	\N	cym	biling	b	1	2	1	1	b	1	1	a	1	1	1	1	4	1	d	(b12ba1d
Siarad	davies6	275	1	HEC	mae Van_Nistelrooy angen gwell moves	\N	cym	biling	b	1	2	1	1	b	1	1	a	1	1	1	1	4	1	d	(b12ba1d
Siarad	davies6	288	1	HEC	oedd o yn green gynnau de	\N	cym	biling	b	1	2	1	1	b	1	1	a	1	1	1	1	4	1	d	(b12ba1d
Siarad	davies6	541	1	HEC	Dickie wedi gael ale un noson	\N	cym	biling	b	1	2	1	1	b	1	1	a	1	1	1	1	4	1	d	(b12ba1d
Siarad	davies7	150	1	GAI	yndw hopefully	\N	cym	biling	b	1	2	1	1	b	1	1	a	1	1	1	1	4	1	d	(b12ba1d
Siarad	davies7	251	1	GAI	so fydd yna double eviction neu rywbeth yeah a wedyn pedwar o nhw dod allan	clause division	cym	biling	b	1	2	1	1	b	1	1	a	1	1	1	1	4	1	d	(b12ba1d
Siarad	davies7	295	1	GAI	mae Pete mynd yn really distaw	\N	cym	biling	b	1	2	1	1	b	1	1	a	1	1	1	1	4	1	d	(b12ba1d
Siarad	fusser18	583	1	BEU	dyna ydy peth gorau	non-finite	\N	monoW	\N	1	1	1	1	b	3	2	d	1	1	1	1	4	4	g	\N
Siarad	davies7	440	1	GAI	os dan ni gorfod wneud fath â interview thing de 	clause division	cym	biling	b	1	2	1	1	b	1	1	a	1	1	1	1	4	1	d	(b12ba1d
Siarad	davies7	443	1	GAI	neu na actually geith Martha wneud o	clause division	cym	biling	b	1	2	1	1	b	1	1	a	1	1	1	1	4	1	d	(b12ba1d
Siarad	fusser22	484	1	WYN	pa fath o waith fedran ni wneud hefo yr holl boblogaeth i ddechrau cael strategaeth neu strategy	\N	cym	biling	b	1	3	1	1	b	1	1	a	1	1	1	4	1	1	d	(b13ba1d
Siarad	fusser22	494	1	WYN	they oedden nhw yn licio fo yn Blaenau	\N	cym	biling	b	1	3	1	1	b	1	1	a	1	1	1	4	1	1	d	(b13ba1d
Siarad	fusser22	500	1	WYN	oh fydd hynny yn golygu lot o waith mynd at stakeholder groups unigol er a siarad 	\N	cym	biling	b	1	3	1	1	b	1	1	a	1	1	1	4	1	1	d	(b13ba1d
Siarad	fusser22	728	1	WYN	I I mae yna hotel right nice	\N	cym	biling	b	1	3	1	1	b	1	1	a	1	1	1	4	1	1	d	(b13ba1d
Siarad	fusser22	757	1	WYN	achos mae o gwesty um er Village_Hotels	\N	cym	biling	b	1	3	1	1	b	1	1	a	1	1	1	4	1	1	d	(b13ba1d
Siarad	fusser3	792	1	BEC	ie wnes i feddwl roi dipyn bach o fairy lights rowndo fo hefyd	\N	cym	biling	b	1	1	1	1	b	1	1	a	1	4	1	1	1	1	d	(b11ba1d
Siarad	fusser11	418	1	BED	a mae yna ryw eighty miles	\N	cym	biling	b	1	3	1	1	b	2	0	a	1	1	1	1	1	1	b	(b13ba1b
Siarad	roberts3	728	1	MED	because ddeudais i dydd Llun 	\N	cym	biling	b	1	3	1	1	b	1	1	a	1	1	1	1	4	1	d	(b13ba1d
Siarad	stammers3	245	1	NER	a anyway oedd hi 	\N	cym	biling	b	1	1	1	1	b	1	1	a	1	1	4	1	1	1	d	(b11ba1d
Siarad	stammers3	252	1	NER	mae yn gafael ar rhawiaid o tywod tywod soft 	\N	cym	biling	b	1	1	1	1	b	1	1	a	1	1	4	1	1	1	d	(b11ba1d
Siarad	stammers3	519	1	NER	fedri di ddim cael dinner_party yna de 	\N	cym	biling	b	1	1	1	1	b	1	1	a	1	1	4	1	1	1	d	(b11ba1d
Siarad	stammers3	761	2	NER	os mae o wedi mynd o eighty_five i sixty 	\N	cym	biling	b	1	1	1	1	b	1	1	a	1	1	4	1	1	1	d	(b11ba1d
Siarad	stammers3	765	2	NER	oedd yna ryw oglau musty yma a ballu yn yn dechrau mynd	\N	cym	biling	b	1	1	1	1	b	1	1	a	1	1	4	1	1	1	d	(b11ba1d
Siarad	stammers6	387	1	BLW	ac ar y ffordd o yr doctor oedd gynni hi irritable bowel syndrome caused by stress 	\N	cym	biling	b	1	2	1	1	b	1	1	a	1	1	1	1	1	4	d	(b12ba1d
Siarad	stammers6	393	1	BLW	na mae hi efo kidney infections o_hyd 	\N	cym	biling	b	1	2	1	1	b	1	1	a	1	1	1	1	1	4	d	(b12ba1d
Siarad	stammers6	396	1	BLW	ond dim bowels ydy hwnna naci 	\N	cym	biling	b	1	2	1	1	b	1	1	a	1	1	1	1	1	4	d	(b12ba1d
Siarad	stammers6	401	2	BLW	ond dw i o_hyd roid shitloads o caws yn risotto 	\N	cym	biling	b	1	2	1	1	b	1	1	a	1	1	1	1	1	4	d	(b12ba1d
Siarad	stammers6	403	1	BLW	na mae crap 	\N	cym	biling	b	1	2	1	1	b	1	1	a	1	1	1	1	1	4	d	(b12ba1d
Siarad	stammers6	406	2	BLW	mae yn helpu um thingy chdi hefyd 	\N	cym	biling	b	1	2	1	1	b	1	1	a	1	1	1	1	1	4	d	(b12ba1d
Siarad	stammers6	782	2	BLW	dw i wedi gorffen y twatting ysgol 	\N	cym	biling	b	1	2	1	1	b	1	1	a	1	1	1	1	1	4	d	(b12ba1d
Siarad	stammers6	808	1	BLW	yr un fath â ges i sodding cinio 	\N	cym	biling	b	1	2	1	1	b	1	1	a	1	1	1	1	1	4	d	(b12ba1d
Siarad	stammers6	832	2	BLW	oedd Beverly wedi bod yn nasty efo hi gynnau hefyd 	\N	cym	biling	b	1	2	1	1	b	1	1	a	1	1	1	1	1	4	d	(b12ba1d
Siarad	stammers6	1217	1	BLW	no mae yn quite funny gwatsiad Dad ar ei bloody pen_gliniau efo yr ci yn trio mowntio fo 	Clause division (include with next clause)	cym	biling	b	1	2	1	1	b	1	1	a	1	1	1	1	1	4	d	(b12ba1d
Siarad	davies16	270	2	ADA	oedd down ta yr boy arall Hywel	\N	cym	biling	b	1	2	1	1	b	1	1	a	1	1	1	4	4	1	g	(b12ba1g
Siarad	davies16	274	1	ADA	Hywel gafodd un o yr kills	\N	cym	biling	b	1	2	1	1	b	1	1	a	1	1	1	4	4	1	g	(b12ba1g
Siarad	davies16	285	2	ADA	oedda chdi wedi brifo William efo yr sniper	\N	cym	biling	b	1	2	1	1	b	1	1	a	1	1	1	4	4	1	g	(b12ba1g
Siarad	davies16	304	1	ADA	iawn dw i yn aros yn y canals o_k	\N	cym	biling	b	1	2	1	1	b	1	1	a	1	1	1	4	4	1	g	(b12ba1g
Siarad	davies16	307	1	ADA	ni ydy yr host	\N	cym	biling	b	1	2	1	1	b	1	1	a	1	1	1	4	4	1	g	(b12ba1g
Siarad	davies16	545	2	ADA	mae o yn cymryd aim amdana chdi	\N	cym	biling	b	1	2	1	1	b	1	1	a	1	1	1	4	4	1	g	(b12ba1g
Siarad	davies16	553	1	ADA	because oedd o yn deud	\N	cym	biling	b	1	2	1	1	b	1	1	a	1	1	1	4	4	1	g	(b12ba1g
Siarad	davies16	565	1	ADA	mae Dafydd yn uffernol o patient sti	\N	cym	biling	b	1	2	1	1	b	1	1	a	1	1	1	4	4	1	g	(b12ba1g
Siarad	davies16	856	1	ADA	ti yn mor gutted	clause division	cym	biling	b	1	2	1	1	b	1	1	a	1	1	1	4	4	1	g	(b12ba1g
Siarad	davies16	856	2	ADA	wnaethon nhw ddim clywed y compliment yna	clause division	cym	biling	b	1	2	1	1	b	1	1	a	1	1	1	4	4	1	g	(b12ba1g
Siarad	davies2	414	1	GRE	dw i ddim really yn bothered	\N	cym	biling	b	1	3	1	1	b	1	1	a	1	1	1	1	4	4	g	(b13ba1g
Siarad	fusser28	359	1	IFO	o_k mae yn costio Tony weithiau	\N	cym	monoW	a	1	2	1	1	b	1	1	a	4	1	1	1	1	1	b	(a12ba4b
Siarad	fusser28	359	2	IFO	yndy	\N	cym	monoW	a	1	2	1	1	b	1	1	a	4	1	1	1	1	1	b	(a12ba4b
Siarad	fusser28	361	1	IFO	yndyn	\N	cym	monoW	a	1	2	1	1	b	1	1	a	4	1	1	1	1	1	b	(a12ba4b
Siarad	fusser28	373	2	IFO	mae nhw fod i dalu hynna	\N	cym	monoW	a	1	2	1	1	b	1	1	a	4	1	1	1	1	1	b	(a12ba4b
Siarad	davies1	747	1	NON	oedd e galed	\N	cym	monoW	a	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(a12ba1b
Siarad	davies2	815	1	GRE	oh actually mae Liz yn credu bod hi yn Brydeinwraig	\N	cym	biling	b	1	3	1	1	b	1	1	a	1	1	1	1	4	4	g	(b13ba1g
Siarad	davies4	330	1	CYN	bilingual ydy o yli bilingual yeah	\N	cym	biling	b	1	4	1	1	b	1	1	a	1	4	1	4	1	1	g	(b14ba1g
Siarad	davies4	702	1	CYN	wnest ti lenwi yr fridge iddi cyn ti fynd	clause division	cym	biling	b	1	4	1	1	b	1	1	a	1	4	1	4	1	1	g	(b14ba1g
Siarad	davies4	703	1	CYN	ta oedd o fyny iddi hi lenwi yr fridge	\N	cym	biling	b	1	4	1	1	b	1	1	a	1	4	1	4	1	1	g	(b14ba1g
Siarad	davies4	1051	1	CYN	a dw i yn enjoio y craic de	\N	cym	biling	b	1	4	1	1	b	1	1	a	1	4	1	4	1	1	g	(b14ba1g
Siarad	davies4	1053	5	CYN	dw chwarae efo efo yr grandson ti gweld	\N	cym	biling	b	1	4	1	1	b	1	1	a	1	4	1	4	1	1	g	(b14ba1g
Siarad	davies4	1065	2	CYN	ydy rywfaint o top_soil	\N	cym	biling	b	1	4	1	1	b	1	1	a	1	4	1	4	1	1	g	(b14ba1g
Siarad	fusser12	1081	2	LUN	be mae feddwl efo palliative care	\N	cym	biling	b	1	1	1	1	b	1	1	a	1	1	4	1	1	4	g	(b11ba1g
Siarad	fusser16	1306	1	ANW	oh mi wnes i efo lifeboat wedyn ryw dro	\N	cym	biling	b	1	4	1	1	b	1	1	a	1	1	1	1	1	1	b	(b14ba1b
Siarad	fusser12	1712	1	LUN	achos basai hynna yn roi boost mawr	\N	cym	biling	b	1	1	1	1	b	1	1	a	1	1	4	1	1	4	g	(b11ba1g
Siarad	fusser19	238	1	OLW	mae yr government yn um stopio gael cafes a yr pubs yma a stop	\N	cym	biling	b	1	2	1	1	b	1	1	a	1	1	1	4	1	4	g	(b12ba1g
Siarad	fusser19	481	2	OLW	mae yna rules	\N	cym	biling	b	1	2	1	1	b	1	1	a	1	1	1	4	1	4	g	(b12ba1g
Siarad	fusser19	482	1	OLW	a ac ar diwedd diwrnod y rheswm mae nhw yn trio dod â yr rule yma i_fewn	\N	cym	biling	b	1	2	1	1	b	1	1	a	1	1	1	4	1	4	g	(b12ba1g
Siarad	fusser19	492	1	OLW	oh dim fi ydy yr government	\N	cym	biling	b	1	2	1	1	b	1	1	a	1	1	1	4	1	4	g	(b12ba1g
Siarad	fusser19	732	1	OLW	mae nhw yn pigo pethau fyny ar y radar ac ar y satellite a pethau	\N	cym	biling	b	1	2	1	1	b	1	1	a	1	1	1	4	1	4	g	(b12ba1g
Siarad	fusser19	736	1	OLW	mae hwnna just yn freak case hynna bod bod	\N	cym	biling	b	1	2	1	1	b	1	1	a	1	1	1	4	1	4	g	(b12ba1g
Siarad	fusser19	738	1	OLW	unexplained pam wnaeth o ddigwydd	\N	cym	biling	b	1	2	1	1	b	1	1	a	1	1	1	4	1	4	g	(b12ba1g
Siarad	fusser19	741	1	OLW	mae hynna just yn unexplained	\N	cym	biling	b	1	2	1	1	b	1	1	a	1	1	1	4	1	4	g	(b12ba1g
Siarad	fusser19	743	2	OLW	llwythi o pethau fel yna yn digwydd on a daily basis	non-finite	cym	biling	b	1	2	1	1	b	1	1	a	1	1	1	4	1	4	g	(b12ba1g
Siarad	fusser28	159	1	LLA	o'n i meddwl bod chdi roid o on special i fi	\N	cym	biling	b	1	4	1	1	b	1	1	a	1	1	1	4	4	1	g	(b14ba1g
Siarad	fusser28	231	1	LLA	dydy o ddim bwys anyway really	\N	cym	biling	b	1	4	1	1	b	1	1	a	1	1	1	4	4	1	g	(b14ba1g
Siarad	fusser28	255	1	LLA	high performance yndy	\N	cym	biling	b	1	4	1	1	b	1	1	a	1	1	1	4	4	1	g	(b14ba1g
Siarad	fusser28	353	1	LLA	mae pwy yna yn dalu cash sti um Minffordd	\N	cym	biling	b	1	4	1	1	b	1	1	a	1	1	1	4	4	1	g	(b14ba1g
Siarad	fusser28	355	1	LLA	mae hynna fifteen hundred quid	\N	cym	biling	b	1	4	1	1	b	1	1	a	1	1	1	4	4	1	g	(b14ba1g
Siarad	fusser28	384	1	LLA	sut ti roid o ar till though	\N	cym	biling	b	1	4	1	1	b	1	1	a	1	1	1	4	4	1	g	(b14ba1g
Siarad	fusser21	322	1	ILI	because meddwl ar y trydydd oedden ni yeah yn y cyngerdd	non-finite	cym	biling	b	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(b12ba1b
Siarad	fusser21	336	1	ILI	because as long as dan ni yn wneud y pres yn_dôl	\N	cym	biling	b	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(b12ba1b
Siarad	fusser21	341	1	ILI	a er because er dw ddim yn meddwl	\N	cym	biling	b	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(b12ba1b
Siarad	fusser21	659	1	ILI	because oedd Delyth	\N	cym	biling	b	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(b12ba1b
Siarad	davies12	391	1	CER	well dw i yn ordro lluniau fi off yr internet	\N	cym	biling	b	1	1	1	1	b	1	1	a	1	1	3	1	4	0	h	(b11ba1h
Siarad	davies12	393	2	CER	bysai fo yn disposable	\N	cym	biling	b	1	1	1	1	b	1	1	a	1	1	3	1	4	0	h	(b11ba1h
Siarad	davies12	397	1	CER	a mae lot rhatach na prynu disposables o_hyd	\N	cym	biling	b	1	1	1	1	b	1	1	a	1	1	3	1	4	0	h	(b11ba1h
Siarad	fusser21	953	1	HAW	tua half past well tua half three mae yn sure yeah	\N	cym	biling	b	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(b12ba1b
Siarad	davies12	808	2	CER	oedd o laugh	\N	cym	biling	b	1	1	1	1	b	1	1	a	1	1	3	1	4	0	h	(b11ba1h
Siarad	davies12	812	1	CER	ddim fath â yr sgert byr yna mae merched eraill three_quarters	\N	cym	biling	b	1	1	1	1	b	1	1	a	1	1	3	1	4	0	h	(b11ba1h
Siarad	davies12	1177	2	CER	bod yna hogan blwyddyn cynta yna anyway	\N	cym	biling	b	1	1	1	1	b	1	1	a	1	1	3	1	4	0	h	(b11ba1h
Siarad	fusser21	1024	1	HAW	er wnes i enjoio mynd round y Pompidou centre efo Efa_Griffiths	\N	cym	biling	b	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(b12ba1b
Siarad	fusser28	117	1	IFO	eighteen months onwards oedd o	\N	cym	biling	b	1	2	1	1	b	1	1	a	4	1	1	1	1	1	b	(b12ba4b
Siarad	fusser3	249	2	ALY	oedd e yn fine	\N	cym	biling	b	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(b13ba1b
Siarad	fusser28	249	1	IFO	hundred and thirty rywbeth mae o dalu am flwyddyn de	\N	cym	biling	b	1	2	1	1	b	1	1	a	4	1	1	1	1	1	b	(b12ba4b
Siarad	fusser28	251	1	IFO	dw i talu hundred and eighty rywbeth	\N	cym	biling	b	1	2	1	1	b	1	1	a	4	1	1	1	1	1	b	(b12ba4b
Siarad	fusser28	377	1	IFO	mae Tony yn cael charge yna yli	\N	cym	biling	b	1	2	1	1	b	1	1	a	4	1	1	1	1	1	b	(b12ba4b
Siarad	fusser28	378	1	IFO	be mae Tony yn deud de tsiarjio ar y gwsmer	\N	cym	monoW	a	1	2	1	1	b	1	1	a	4	1	1	1	1	1	b	(a12ba4b
Siarad	fusser28	378	2	IFO	be mae o yn gael ei jarjio am	\N	cym	monoW	a	1	2	1	1	b	1	1	a	4	1	1	1	1	1	b	(a12ba4b
Siarad	fusser28	380	1	IFO	mae yn deud gwir	\N	cym	monoW	a	1	2	1	1	b	1	1	a	4	1	1	1	1	1	b	(a12ba4b
Siarad	fusser28	380	2	IFO	yndy	\N	cym	monoW	a	1	2	1	1	b	1	1	a	4	1	1	1	1	1	b	(a12ba4b
Siarad	fusser28	382	1	IFO	mae yn mowntio fyny	\N	cym	monoW	a	1	2	1	1	b	1	1	a	4	1	1	1	1	1	b	(a12ba4b
Siarad	fusser28	385	1	IFO	um dw ddim yn sure sut i wan	\N	cym	monoW	a	1	2	1	1	b	1	1	a	4	1	1	1	1	1	b	(a12ba4b
Siarad	fusser3	519	1	ALY	hey dw i wedi cael um pris wrth un builder so far	\N	cym	biling	b	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(b13ba1b
Siarad	fusser3	540	1	ALY	mae yn gweud timod hyn a hyn o hardcore thing hyn a hyn o um er be bynnag	\N	cym	biling	b	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(b13ba1b
Siarad	davies2	839	1	GWY	a hefyd fydd Idwal yn gorffen yn o fuan yn Dundee anyway	\N	cym	biling	b	1	2	1	3	d	1	1	a	1	1	1	1	4	1	d	(b12da1d
Siarad	fusser3	779	1	ALY	os nad oes haste arno ti	if repair follows then exclude this	cym	biling	b	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(b13ba1b
Siarad	fusser15	764	1	MRL	be wnaethoch chi wneud o ran catering	clause division	cym	biling	b	1	1	1	3	d	1	1	a	1	1	1	1	4	1	d	(b11da1d
Siarad	fusser15	1035	1	MRL	mae o yn eitha switched on	\N	cym	biling	b	1	1	1	3	d	1	1	a	1	1	1	1	4	1	d	(b11da1d
Siarad	fusser23	413	1	AID	dw i rhy fly de	\N	cym	biling	b	1	2	2	2	d	1	1	a	1	1	1	1	4	0	e	(b12da1e
Siarad	fusser23	1299	1	AID	mae yna stryd yn Rhuthun Well_Street	\N	cym	biling	b	1	2	2	2	d	1	1	a	1	1	1	1	4	0	e	(b12da1e
Siarad	fusser23	1303	1	AID	nid Well_Street oedd o o_gwbl	non-finite	cym	biling	b	1	2	2	2	d	1	1	a	1	1	1	1	4	0	e	(b12da1e
Siarad	fusser23	1307	1	AID	a hanner y ffordd er fyny Welsh_Street mae yna fel	\N	cym	biling	b	1	2	2	2	d	1	1	a	1	1	1	1	4	0	e	(b12da1e
Siarad	fusser30	303	2	LON	mae gen yn ffrind sunshower yn ei yn ei peth yna	\N	cym	biling	b	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(b13ba1b
Siarad	stammers4	203	1	ALN	ond dw i ddim actually isio mynd i wrando ar y stuff 	\N	cym	biling	b	1	2	2	2	d	1	1	a	1	1	1	3	1	4	f	(b12da1f
Siarad	stammers4	205	2	ALN	na mynd i wrando i chwerthin faswn i anyway 	nonfin	cym	biling	b	1	2	2	2	d	1	1	a	1	1	1	3	1	4	f	(b12da1f
Siarad	fusser30	313	1	LON	wnes i gael y spray tan yma	\N	cym	biling	b	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(b13ba1b
Siarad	stammers4	640	2	ALN	bod un mam yn fwy rich oherwydd bod o wedi cael amser i aeddfedu 	split clause before oherwydd	cym	biling	b	1	2	2	2	d	1	1	a	1	1	1	3	1	4	f	(b12da1f
Siarad	fusser25	269	1	ALB	dw i hyd yn wisgo trunks mewn i sun beds yna	\N	cym	biling	b	1	1	1	3	d	1	1	a	1	1	4	1	4	3	j	(b11da1j
Siarad	fusser25	299	2	ALB	oedd gynnon ni yeah timod sun bed yma	clause division	cym	biling	b	1	1	1	3	d	1	1	a	1	1	4	1	4	3	j	(b11da1j
Siarad	fusser25	572	2	ALB	mae fath â subsidiary ysgol neu	\N	cym	biling	b	1	1	1	3	d	1	1	a	1	1	4	1	4	3	j	(b11da1j
Siarad	fusser25	616	3	ALB	timod o'n ni yn British_Gas	if discourse marker then exclude	cym	biling	b	1	1	1	3	d	1	1	a	1	1	4	1	4	3	j	(b11da1j
Siarad	fusser25	883	1	ALB	dw cael y newsletters bob wythnos gynnyn nhw	\N	cym	biling	b	1	1	1	3	d	1	1	a	1	1	4	1	4	3	j	(b11da1j
Siarad	davies12	362	1	SAL	baswn licio digital camera rywbryd	\N	cym	biling	b	1	1	3	1	d	1	1	a	1	4	1	4	1	3	j	(b11da1j
Siarad	davies12	366	1	SAL	ond er my gosh dw gwario fortune ar disposable cameras	\N	cym	biling	b	1	1	3	1	d	1	1	a	1	4	1	4	1	3	j	(b11da1j
Siarad	davies12	368	1	SAL	dw i really yn	\N	cym	biling	b	1	1	3	1	d	1	1	a	1	4	1	4	1	3	j	(b11da1j
Siarad	davies12	400	1	SAL	yr unig beth yr unig beth dw i yn licio am disposable	clause division	cym	biling	b	1	1	3	1	d	1	1	a	1	4	1	4	1	3	j	(b11da1j
Siarad	davies12	402	1	SAL	fel because os dw i cadw o yn y mag i	\N	cym	biling	b	1	1	3	1	d	1	1	a	1	4	1	4	1	3	j	(b11da1j
Siarad	davies12	406	3	SAL	dydy o ddim bwys really	\N	cym	biling	b	1	1	3	1	d	1	1	a	1	4	1	4	1	3	j	(b11da1j
Siarad	davies12	802	1	SAL	phh God alla i ddim diodde yr lle	\N	cym	biling	b	1	1	3	1	d	1	1	a	1	4	1	4	1	3	j	(b11da1j
Siarad	davies12	1162	3	SAL	mae yn blonde	\N	cym	biling	b	1	1	3	1	d	1	1	a	1	4	1	4	1	3	j	(b11da1j
Siarad	davies12	1172	1	SAL	mae yna un ferch blonde ac un ferch gwallt tywyll	\N	cym	biling	b	1	1	3	1	d	1	1	a	1	4	1	4	1	3	j	(b11da1j
Siarad	davies12	1174	2	SAL	be ydy enw yr un gwallt blonde	\N	cym	biling	b	1	1	3	1	d	1	1	a	1	4	1	4	1	3	j	(b11da1j
Siarad	fusser27	295	1	LIS	because oedd fel dau dau neu tri o nhw lan yna	\N	cym	biling	b	1	1	1	3	d	1	1	a	1	1	4	4	4	4	m	(b11da1m
Siarad	fusser27	296	1	LIS	ond um oh mae fo yn lovely	\N	cym	biling	b	1	1	1	3	d	1	1	a	1	1	4	4	4	4	m	(b11da1m
Siarad	fusser27	565	1	LIS	so mae hwnna yn swnio yn really sad	\N	cym	biling	b	1	1	1	3	d	1	1	a	1	1	4	4	4	4	m	(b11da1m
Siarad	fusser27	574	2	LIS	dyna pryd dw i mynd i_gyd yn confused	non-finite	cym	biling	b	1	1	1	3	d	1	1	a	1	1	4	4	4	4	m	(b11da1m
Siarad	fusser27	871	1	LIS	a wedyn daethon ni mas tua hanner awr ar_ôl hynny ar bwys St_Mary's	\N	cym	biling	b	1	1	1	3	d	1	1	a	1	1	4	4	4	4	m	(b11da1m
Siarad	fusser27	873	1	LIS	so aethon ni fel circular route right round Maesgeirchen lan ffordd	\N	cym	biling	b	1	1	1	3	d	1	1	a	1	1	4	4	4	4	m	(b11da1m
Siarad	fusser27	882	1	LIS	of course gwelais i yr golf course	\N	cym	biling	b	1	1	1	3	d	1	1	a	1	1	4	4	4	4	m	(b11da1m
Siarad	fusser27	885	1	LIS	because es i i sledo yna	\N	cym	biling	b	1	1	1	3	d	1	1	a	1	1	4	4	4	4	m	(b11da1m
Siarad	fusser27	889	1	LIS	aethon nhw um adeiladu snow pony	\N	cym	biling	b	1	1	1	3	d	1	1	a	1	1	4	4	4	4	m	(b11da1m
Siarad	fusser27	579	2	MAB	be sy yn lle really da i fynd	\N	cym	biling	b	1	1	2	3	e	1	1	a	1	1	1	4	1	1	d	(b11ea1d
Siarad	davies16	869	1	HYW	yeah dw i yn gwybod	\N	cym	monoW	a	1	1	1	2	c	1	1	a	1	1	1	1	1	1	b	(a11ca1b
Siarad	davies16	275	1	HYW	wnes i headshot_io un o chi	\N	cym	monoW	a	1	1	1	2	c	1	1	a	1	1	1	1	1	1	b	(a11ca1b
Siarad	davies16	279	1	HYW	boy oedd yn sefyll	\N	cym	monoW	a	1	1	1	2	c	1	1	a	1	1	1	1	1	1	b	(a11ca1b
Siarad	davies16	286	1	HYW	dw i meddwl	\N	cym	monoW	a	1	1	1	2	c	1	1	a	1	1	1	1	1	1	b	(a11ca1b
Siarad	davies16	294	1	HYW	gun fi wnest ti saethu	\N	cym	monoW	a	1	1	1	2	c	1	1	a	1	1	1	1	1	1	b	(a11ca1b
Siarad	davies16	297	1	HYW	Arglwydd mae o yn mwydro	\N	cym	monoW	a	1	1	1	2	c	1	1	a	1	1	1	1	1	1	b	(a11ca1b
Siarad	davies16	287	1	HYW	pwy bynnag wnaeth pigo frags i_fyny	\N	cym	biling	b	1	1	1	2	c	1	1	a	1	1	1	1	1	1	b	(b11ca1b
Siarad	fusser27	593	1	MAB	oh er faswn i na because	\N	cym	biling	b	1	1	2	3	e	1	1	a	1	1	1	4	1	1	d	(b11ea1d
Siarad	fusser27	594	1	MAB	mae nhw right wrth ymyl y Red_Sea	\N	cym	biling	b	1	1	2	3	e	1	1	a	1	1	1	4	1	1	d	(b11ea1d
Siarad	fusser27	599	1	MAB	because hwnna wnaeth atgoffa fi fod yna bethau Egyptian yno	\N	cym	biling	b	1	1	2	3	e	1	1	a	1	1	1	4	1	1	d	(b11ea1d
Siarad	fusser27	876	1	MAB	os ti mynd i_fyny pasio St_Mary's	\N	cym	biling	b	1	1	2	3	e	1	1	a	1	1	1	4	1	1	d	(b11ea1d
Siarad	fusser27	896	1	MAB	dw i sure bod fi i_ffwrdd ar y seventh	\N	cym	biling	b	1	1	2	3	e	1	1	a	1	1	1	4	1	1	d	(b11ea1d
Siarad	stammers4	637	1	ELE	ydy wedi cynhyrchu mwy o yr pethau chutneys yma jams yma 	\N	cym	biling	b	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(b13ba1b
Siarad	fusser30	297	1	MEL	ac oedd yna fark sort of ar yr frock wedyn	\N	cym	biling	b	2	1	3	3	f	1	1	a	1	4	4	1	1	4	k	(b21fa1k
Siarad	fusser30	301	1	MEL	ooh shit be wnei di ta	\N	cym	biling	b	2	1	3	3	f	1	1	a	1	4	4	1	1	4	k	(b21fa1k
Siarad	fusser30	305	1	MEL	ond dw i wastad yn meddwl fod os ti yn cael tan oddi_wrth un o rheina	\N	cym	biling	b	2	1	3	3	f	1	1	a	1	4	4	1	1	4	k	(b21fa1k
Siarad	fusser30	605	1	MEL	oedden nhw yn cael un bridesmaid i gerdded yr holl ffordd lawr ar ei phen ei hun wedyn y llall i ddod a wedyn y llall	\N	cym	biling	b	2	1	3	3	f	1	1	a	1	4	4	1	1	4	k	(b21fa1k
Siarad	fusser30	606	1	MEL	so oedd o yn really hir yn lle bod pawb yn cerdded efo ei_gilydd mewn group	clause division	cym	biling	b	2	1	3	3	f	1	1	a	1	4	4	1	1	4	k	(b21fa1k
Siarad	fusser30	642	1	MEL	be ydy yr pethau weird yma	\N	cym	biling	b	2	1	3	3	f	1	1	a	1	4	4	1	1	4	k	(b21fa1k
Siarad	fusser30	913	3	MEL	ydy hynna really de	\N	cym	biling	b	2	1	3	3	f	1	1	a	1	4	4	1	1	4	k	(b21fa1k
Siarad	fusser30	918	1	MEL	oh mae nhw wedi er ysgaru erbyn rŵan anyway	\N	cym	biling	b	2	1	3	3	f	1	1	a	1	4	4	1	1	4	k	(b21fa1k
Siarad	stammers7	225	1	GWN	ond dydy o ddim yn um rhy in your face fel bod yr athrawon yn dychryn 	\N	cym	biling	b	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(b12ba1b
Siarad	stammers7	444	1	GWN	mae hynna yn typical Al actually 	\N	cym	biling	b	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(b12ba1b
Siarad	stammers7	451	1	GWN	right pwy ydy yr best_man o 	\N	cym	biling	b	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(b12ba1b
Siarad	stammers7	649	1	GWN	um mae yr thing yna 	\N	cym	biling	b	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(b12ba1b
Siarad	stammers7	651	1	GWN	so dw i isio mynd y tro nesa really 	\N	cym	biling	b	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(b12ba1b
Siarad	stammers7	657	1	GWN	so oedd gynnof fi um replacement tyre 	\N	cym	biling	b	1	2	1	1	b	1	1	a	1	1	1	1	1	1	b	(b12ba1b
Siarad	davies10	1098	1	HIL	because mae nhw yn pethau poblogaidd enwedig round y Dolig	\N	cym	biling	b	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(b13bb1b
Siarad	davies15	498	1	TEG	ie mae hynna yn annoying	\N	cym	biling	b	1	1	1	1	b	1	2	b	1	1	1	1	1	3	c	(b11bb1c
Siarad	davies15	729	1	TEG	ia dw isio mynd i Thailand blwyddyn blwyddyn nesa	\N	cym	biling	b	1	1	1	1	b	1	2	b	1	1	1	1	1	3	c	(b11bb1c
Siarad	davies15	761	1	TEG	a ti isio mynd am bythefnos dwyt really	\N	cym	biling	b	1	1	1	1	b	1	2	b	1	1	1	1	1	3	c	(b11bb1c
Siarad	davies15	786	1	TEG	dw i ddim yn fussed	\N	cym	biling	b	1	1	1	1	b	1	2	b	1	1	1	1	1	3	c	(b11bb1c
Siarad	davies5	304	1	COL	ond wyt ti definitely angen o i fynd i uni de	\N	cym	biling	b	1	1	1	1	b	1	2	b	1	1	1	4	1	1	d	(b11bb1d
Siarad	davies5	308	1	COL	mae o_hyd erupt_o yr universities	\N	cym	biling	b	1	1	1	1	b	1	2	b	1	1	1	4	1	1	d	(b11bb1d
Siarad	davies5	629	1	COL	really basen ni just gallu mynd ella i Ffrainc gynta just yr ha yma am ryw weekend	\N	cym	biling	b	1	1	1	1	b	1	2	b	1	1	1	4	1	1	d	(b11bb1d
Siarad	davies5	659	1	COL	neu de brain_wave wan de fedran ni fynd am tour o fath â llefydd	\N	cym	biling	b	1	1	1	1	b	1	2	b	1	1	1	4	1	1	d	(b11bb1d
Siarad	davies5	659	2	COL	dan ni mynd i university a cael nights out ym pob un felly	\N	cym	biling	b	1	1	1	1	b	1	2	b	1	1	1	4	1	1	d	(b11bb1d
Siarad	davies5	947	1	COL	yeah mae dy rhieni di yn cael dros forty_six thousand	\N	cym	biling	b	1	1	1	1	b	1	2	b	1	1	1	4	1	1	d	(b11bb1d
Siarad	davies5	950	2	COL	os mae dy rhieni di yn earn_io dros forty_six thousand de	\N	cym	biling	b	1	1	1	1	b	1	2	b	1	1	1	4	1	1	d	(b11bb1d
Siarad	davies5	954	1	COL	dwyt ti ddim yn gorod roi dim payslip na dim_byd efo just deud hynna	\N	cym	biling	b	1	1	1	1	b	1	2	b	1	1	1	4	1	1	d	(b11bb1d
Siarad	davies5	955	1	COL	serious nawr mae dad wedi gofyn wrth ddynes	\N	cym	biling	b	1	1	1	1	b	1	2	b	1	1	1	4	1	1	d	(b11bb1d
Siarad	davies5	970	1	COL	dw i am apply_o am y thing yna	clause division	cym	biling	b	1	1	1	1	b	1	2	b	1	1	1	4	1	1	d	(b11bb1d
Siarad	davies16	299	1	HYW	dw i ddim yn gwybod	\N	cym	monoW	a	1	1	1	2	c	1	1	a	1	1	1	1	1	1	b	(a11ca1b
Siarad	davies16	300	1	HYW	ddeud wrtha chdi pan dw i cyrraedd	non-finite	cym	monoW	a	1	1	1	2	c	1	1	a	1	1	1	1	1	1	b	(a11ca1b
Siarad	davies16	311	1	HYW	dw i ddim yn gwybod	\N	cym	monoW	a	1	1	1	2	c	1	1	a	1	1	1	1	1	1	b	(a11ca1b
Siarad	davies16	311	2	HYW	lle mae nhw	\N	cym	monoW	a	1	1	1	2	c	1	1	a	1	1	1	1	1	1	b	(a11ca1b
Siarad	davies16	570	1	HYW	dw i yn gweld un just ddim isio symud	\N	cym	monoW	a	1	1	1	2	c	1	1	a	1	1	1	1	1	1	b	(a11ca1b
Siarad	davies16	569	1	HYW	o_k mae hi yn headcount	\N	cym	biling	b	1	1	1	2	c	1	1	a	1	1	1	1	1	1	b	(b11ca1b
Siarad	davies16	571	1	HYW	because fydd William yna hefo headshot	\N	cym	biling	b	1	1	1	2	c	1	1	a	1	1	1	1	1	1	b	(b11ca1b
Siarad	davies5	970	1	COL	deudon nhw am apply_o October	h	cym	biling	b	1	1	1	1	b	1	2	b	1	1	1	4	1	1	d	(b11bb1d
Siarad	fusser15	357	2	GFR	ges i e_mail blooming snotty gan Ceinwen ynglŷn â hwnna	\N	cym	biling	b	1	2	1	1	b	1	2	b	1	1	1	1	1	4	d	(b12bb1d
Siarad	stammers3	200	1	GUT	ond um be mae yr bobl yma isio ni wneud really 	\N	cym	biling	b	1	1	1	1	b	1	2	b	1	1	4	1	1	3	f	(b11bb1f
Siarad	stammers3	724	2	GUT	be ydy gair Cymraeg am humidity de 	\N	cym	biling	b	1	1	1	1	b	1	2	b	1	1	4	1	1	3	f	(b11bb1f
Siarad	stammers3	759	1	GUT	i yr humidity ei hun felly 	\N	cym	biling	b	1	1	1	1	b	1	2	b	1	1	4	1	1	3	f	(b11bb1f
Siarad	stammers3	809	2	GUT	mae lovely o le 	\N	cym	biling	b	1	1	1	1	b	1	2	b	1	1	4	1	1	3	f	(b11bb1f
Siarad	fusser26	481	1	IOL	mae yn gymaint â yr dresser	\N	cym	biling	b	1	3	1	1	b	1	2	b	1	1	3	3	4	1	i	(b13bb1i
Siarad	fusser26	692	1	IOL	because oedd yna ddim ceir allan yna	\N	cym	biling	b	1	3	1	1	b	1	2	b	1	1	3	3	4	1	i	(b13bb1i
Siarad	fusser26	722	1	IOL	because mae gân bach right er dda hwylus feddwl	\N	cym	biling	b	1	3	1	1	b	1	2	b	1	1	3	3	4	1	i	(b13bb1i
Siarad	roberts4	979	6	MEC	dw i wedi pasio yr un physiology 	\N	cym	biling	b	1	2	1	1	b	1	2	b	1	1	4	4	4	1	k	(b12bb1k
Siarad	fusser29	276	1	LOI	because mae yna patio doors	\N	cym	biling	b	1	2	1	1	b	1	2	b	1	1	1	1	1	1	b	(b12bb1b
Siarad	fusser29	526	1	LOI	weles i um reference	\N	cym	biling	b	1	2	1	1	b	1	2	b	1	1	1	1	1	1	b	(b12bb1b
Siarad	fusser29	528	1	LOI	oedd glowing chwarae teg	\N	cym	biling	b	1	2	1	1	b	1	2	b	1	1	1	1	1	1	b	(b12bb1b
Siarad	fusser29	531	1	LOI	ar_ôl exit interview fi dw ddim yn meddwl	clause division	cym	biling	b	1	2	1	1	b	1	2	b	1	1	1	1	1	1	b	(b12bb1b
Siarad	fusser29	531	1	LOI	cha i byth reference gen er neb arall o_fewn Nacro	h	cym	biling	b	1	2	1	1	b	1	2	b	1	1	1	1	1	1	b	(b12bb1b
Siarad	fusser29	539	4	LOI	mae o out of the frying pan into the fire hefyd	\N	cym	biling	b	1	2	1	1	b	1	2	b	1	1	1	1	1	1	b	(b12bb1b
Siarad	fusser29	770	1	LOI	mae hi right dda am er spilling the beans	\N	cym	biling	b	1	2	1	1	b	1	2	b	1	1	1	1	1	1	b	(b12bb1b
Siarad	fusser29	846	1	LOI	speaking of which ti wedi clywed gynni	non-finite	cym	biling	b	1	2	1	1	b	1	2	b	1	1	1	1	1	1	b	(b12bb1b
Siarad	stammers6	391	1	HEU	mae wedi cael irritable 	\N	cym	biling	b	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(b13bb1b
Siarad	stammers6	397	1	HEU	na mae hwnnw yn effeithio ar dy fowels di sti 	\N	cym	biling	b	1	3	1	1	b	1	2	b	1	1	1	1	1	1	b	(b13bb1b
Siarad	davies5	310	1	SIO	um ond um dw just isio mynd i yr G_P a a gofyn iddo fo	\N	cym	biling	b	3	1	3	3	f	1	2	b	4	4	4	4	3	3	o	(b31fb4o
Siarad	davies5	1001	1	SIO	trydydd ydy yr un un final	\N	cym	biling	b	3	1	3	3	f	1	2	b	4	4	4	4	3	3	o	(b31fb4o
Siarad	davies3	695	1	TOS	dw o'n i really licio hi_fi fi	\N	cym	biling	b	1	3	1	1	b	2	2	c	1	1	1	1	1	1	b	(b13bc1b
Siarad	davies10	403	1	CLE	oh diwrnod pres de oedd hi non_stop	\N	cym	biling	b	1	2	1	1	b	2	2	c	1	1	1	1	1	1	b	(b12bc1b
Siarad	davies3	458	1	TOS	oedd o bell o fod yn brilliant	\N	cym	biling	b	1	3	1	1	b	2	2	c	1	1	1	1	1	1	b	(b13bc1b
Siarad	davies3	673	1	TOS	a mae fath â yn ysgol	clause division	cym	biling	b	1	3	1	1	b	2	2	c	1	1	1	1	1	1	b	(b13bc1b
Siarad	davies3	673	2	TOS	trwy yr ysgol ti cael dy defnyddiau am really rhad	h	cym	biling	b	1	3	1	1	b	2	2	c	1	1	1	1	1	1	b	(b13bc1b
Siarad	davies3	682	1	TOS	bysai hynna yn hell of cool	\N	cym	biling	b	1	3	1	1	b	2	2	c	1	1	1	1	1	1	b	(b13bc1b
Siarad	davies3	696	1	TOS	ond o'n i yn gutted pan wnes i ffeindio allan	\N	cym	biling	b	1	3	1	1	b	2	2	c	1	1	1	1	1	1	b	(b13bc1b
Siarad	davies3	687	1	HAR	baswn i licio cael y hi_fi really pwerus de	\N	cym	biling	b	2	3	1	1	b	2	2	c	1	1	1	4	1	1	d	(b23bc1d
Siarad	davies3	694	1	HAR	mae really annoying	\N	cym	biling	b	2	3	1	1	b	2	2	c	1	1	1	4	1	1	d	(b23bc1d
Siarad	davies3	445	2	HAR	os dach chi angen really chwarae	\N	cym	biling	b	2	3	1	1	b	2	2	c	1	1	1	4	1	1	d	(b23bc1d
Siarad	davies3	476	1	HAR	ond mae yn edrych yn athro eitha nice really	\N	cym	biling	b	2	3	1	1	b	2	2	c	1	1	1	4	1	1	d	(b23bc1d
Siarad	davies3	665	1	HAR	a just dw ddim yn gweld isio wneud hynna really de	\N	cym	biling	b	2	3	1	1	b	2	2	c	1	1	1	4	1	1	d	(b23bc1d
Siarad	davies3	684	1	HAR	unig peth baswn i cael recording studio massive de	\N	cym	biling	b	2	3	1	1	b	2	2	c	1	1	1	4	1	1	d	(b23bc1d
Siarad	fusser13	400	2	BEI	oedd yr eneth yn deud o'n nhw yn gorod rhedeg i yr tŷ mynd â rai pethau i microwave	\N	cym	biling	b	1	3	1	0	a	1	3	c	1	1	1	1	1	1	b	(b13ac1b
Siarad	fusser31	194	1	ARF	so be ydy dy bands dy hoff bands di then	\N	cym	biling	b	1	2	1	1	b	1	3	c	1	4	1	1	1	1	d	(b12bc1d
Siarad	fusser31	221	1	ARF	well pa ganeuon ti yn really clicio efo	clause division	cym	biling	b	1	2	1	1	b	1	3	c	1	4	1	1	1	1	d	(b12bc1d
Siarad	fusser31	374	1	ARF	so mae o yn bassist heb bas	\N	cym	biling	b	1	2	1	1	b	1	3	c	1	4	1	1	1	1	d	(b12bc1d
Siarad	davies16	572	2	HYW	os ti am cymryd William ar	do we count 'ti amy cymryd' as finite?	cym	monoW	a	1	1	1	2	c	1	1	a	1	1	1	1	1	1	b	(a11ca1b
Siarad	davies16	573	2	HYW	wneith	\N	cym	monoW	a	1	1	1	2	c	1	1	a	1	1	1	1	1	1	b	(a11ca1b
Siarad	davies16	580	1	HYW	o_k dw i mynd	\N	cym	monoW	a	1	1	1	2	c	1	1	a	1	1	1	1	1	1	b	(a11ca1b
Siarad	davies16	582	2	HYW	fedra i clywed coesau	\N	cym	monoW	a	1	1	1	2	c	1	1	a	1	1	1	1	1	1	b	(a11ca1b
Siarad	davies16	586	1	HYW	yndw	\N	cym	monoW	a	1	1	1	2	c	1	1	a	1	1	1	1	1	1	b	(a11ca1b
Siarad	davies16	572	1	HYW	dos tu_ôl pillar	clause division	cym	biling	b	1	1	1	2	c	1	1	a	1	1	1	1	1	1	b	(b11ca1b
Siarad	davies16	573	1	HYW	because wneith o cael headshot o cover	\N	cym	biling	b	1	1	1	2	c	1	1	a	1	1	1	1	1	1	b	(b11ca1b
Siarad	fusser31	377	1	ARF	ydy o actually gallu chwarae bas	\N	cym	biling	b	1	2	1	1	b	1	3	c	1	4	1	1	1	1	d	(b12bc1d
Siarad	stammers5	245	1	RHO	so be maen nhw all fod i wneud pan um 	\N	cym	biling	b	1	1	1	1	b	1	3	c	1	1	1	4	1	1	d	(b11bc1d
Siarad	stammers5	263	1	RHO	oh so mae rei o yr performers felly ddim ddim mynd i droi fyny 	\N	cym	biling	b	1	1	1	1	b	1	3	c	1	1	1	4	1	1	d	(b11bc1d
Siarad	stammers5	536	1	RHO	dw i wedi gael y Nordmann firs yna yn B_and_Q am fifteen quid 	\N	cym	biling	b	1	1	1	1	b	1	3	c	1	1	1	4	1	1	d	(b11bc1d
Siarad	stammers5	559	1	RHO	dan ni ddim yn cael un six foot 	\N	cym	biling	b	1	1	1	1	b	1	3	c	1	1	1	4	1	1	d	(b11bc1d
Siarad	stammers5	560	1	RHO	un five foot gaethon ni de 	\N	cym	biling	b	1	1	1	1	b	1	3	c	1	1	1	4	1	1	d	(b11bc1d
Siarad	stammers5	814	1	RHO	pwy ydy yr ddynes yn y film anyway 	\N	cym	biling	b	1	1	1	1	b	1	3	c	1	1	1	4	1	1	d	(b11bc1d
Siarad	fusser11	387	3	AED	be ydy gwerth y car yna ar y forecourts wsnos wedyn	\N	cym	biling	b	1	3	1	1	b	2	2	c	1	1	1	1	4	3	f	(b13bc1f
Siarad	fusser11	393	1	AED	because dyna be ydy fook value o	non-finite	cym	biling	b	1	3	1	1	b	2	2	c	1	1	1	1	4	3	f	(b13bc1f
Siarad	fusser14	274	1	AWE	ar_gyfer hyn wnaeth y computer falu ar_ôl y tro cynta diwrnod cynta yeah	\N	cym	biling	b	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(b13bc1b
Siarad	fusser18	261	1	ARD	well dw i rŵan yn defnyddio yr limiter ar y nghar i i wneud yn sure cyrraedd rhan tri_deg wan	\N	cym	biling	b	0	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(b03bc1b
Siarad	fusser18	263	1	ARD	oes limiter	\N	cym	biling	b	0	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(b03bc1b
Siarad	fusser18	535	2	ARD	oedd um Pills_Thrills_and_Automobiles	\N	cym	biling	b	0	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(b03bc1b
Siarad	fusser18	794	1	ARD	oh ia because mae nhw ddu	\N	cym	biling	b	0	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(b03bc1b
Siarad	fusser18	799	1	ARD	y break fluid off yndy	\N	cym	biling	b	0	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(b03bc1b
Siarad	fusser18	800	1	ARD	a dan ni isio service i ceir hefyd yn_does	\N	cym	biling	b	0	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(b03bc1b
Siarad	fusser18	802	1	ARD	service oes	\N	cym	biling	b	0	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(b03bc1b
Siarad	fusser18	833	1	ARD	ac oedd just cael ryw luxuries bach felly ar_gyfer nos Sadwrn a penwythnos a wedyn gwneud y basics	\N	cym	biling	b	0	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(b03bc1b
Siarad	fusser23	429	1	HEL	oh raid mi sôn wrth y nephew	\N	cym	biling	b	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(b13bc1b
Siarad	fusser23	435	1	HEL	achos sixty ydy o yeah	\N	cym	biling	b	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(b13bc1b
Siarad	fusser23	867	1	HEL	efo ryw glider mae o heno yn fflio	\N	cym	biling	b	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(b13bc1b
Siarad	fusser23	869	1	HEL	mae o isio fflio efo yr kites	\N	cym	biling	b	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(b13bc1b
Siarad	fusser23	871	1	HEL	isio fflio efo yr kites neu rywbeth mae o de yeah	\N	cym	biling	b	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(b13bc1b
Siarad	fusser23	1356	1	HEL	dibynnu lle ydach chi yn cael lle tydy really	clause division	cym	biling	b	1	3	1	1	b	1	3	c	1	1	1	1	1	1	b	(b13bc1b
Siarad	davies14	243	1	GWA	fasan nhw yn bored	\N	cym	biling	b	1	3	2	1	c	1	3	c	1	4	3	1	3	4	l	(b13cc1l
Siarad	fusser26	752	1	TEC	well na magic sy hynna de	\N	cym	biling	b	1	1	1	3	d	1	3	c	1	1	1	3	4	2	g	(b11dc1g
Siarad	roberts3	368	1	LER	ac oedd y genod wsti yn halio yr blinking speakers mawr yma 	\N	cym	biling	b	1	1	1	3	d	1	3	c	1	1	1	1	1	1	b	(b11dc1b
Siarad	roberts3	685	1	LER	because mae Anwen wedi mynd adre yn sâl hefyd yli greadures 	\N	cym	biling	b	1	1	1	3	d	1	3	c	1	1	1	1	1	1	b	(b11dc1b
Siarad	roberts3	1027	1	LER	beautiful meddai fo 	\N	cym	biling	b	1	1	1	3	d	1	3	c	1	1	1	1	1	1	b	(b11dc1b
Siarad	roberts4	331	4	LIL	pan oeddwn i yn A_and_E 	\N	cym	biling	b	1	2	2	2	d	3	1	c	1	4	4	4	1	1	k	(b12dc1k
Siarad	roberts4	339	1	LIL	ond wnes i fwynhau A_and_E 	\N	cym	biling	b	1	2	2	2	d	3	1	c	1	4	4	4	1	1	k	(b12dc1k
Siarad	roberts4	342	1	LIL	dw wedi bod yn right lwcus efo placements fi gyd 	\N	cym	biling	b	1	2	2	2	d	3	1	c	1	4	4	4	1	1	k	(b12dc1k
Siarad	roberts4	970	1	LIL	oh fydda i yn really really flin 	\N	cym	biling	b	1	2	2	2	d	3	1	c	1	4	4	4	1	1	k	(b12dc1k
Siarad	smith1	157	1	DEW	diolch yn fawr do lovely 	\N	cym	biling	b	3	1	2	2	d	2	2	c	1	4	3	0	0	0	n	(b31dc1n
Siarad	smith1	211	2	DEW	pwy sy chwarae i Lerpwl nag wyt	\N	cym	biling	b	3	1	2	2	d	2	2	c	1	4	3	0	0	0	n	(b31dc1n
Siarad	davies9	104	2	LLE	dw i wedi actually	\N	cym	biling	b	1	1	2	3	e	2	2	c	1	4	1	1	3	4	j	(b11ec1j
Siarad	davies9	112	1	LLE	mae yn afiach really	\N	cym	biling	b	1	1	2	3	e	2	2	c	1	4	1	1	3	4	j	(b11ec1j
Siarad	davies9	116	1	LLE	achos um oedd y pianist pianist heb droi fyny neu rywbeth fel yna keyboards ddim wedi troi fyny y boy	\N	cym	biling	b	1	1	2	3	e	2	2	c	1	4	1	1	3	4	j	(b11ec1j
Siarad	davies9	121	3	LLE	ydy o Gwilym_Morus whatever	\N	cym	biling	b	1	1	2	3	e	2	2	c	1	4	1	1	3	4	j	(b11ec1j
Siarad	davies16	591	1	HYW	dw ddim gwybod	\N	cym	monoW	a	1	1	1	2	c	1	1	a	1	1	1	1	1	1	b	(a11ca1b
Siarad	davies16	592	1	HYW	dw i o_dan bont yma	\N	cym	monoW	a	1	1	1	2	c	1	1	a	1	1	1	1	1	1	b	(a11ca1b
Siarad	davies16	844	1	HYW	rhed o yna	\N	cym	monoW	a	1	1	1	2	c	1	1	a	1	1	1	1	1	1	b	(a11ca1b
Siarad	davies16	845	1	HYW	rhed o yna	same as above - separate utterance?	cym	monoW	a	1	1	1	2	c	1	1	a	1	1	1	1	1	1	b	(a11ca1b
Siarad	davies16	854	1	HYW	oh na mae yna ddau o nhw yna	\N	cym	monoW	a	1	1	1	2	c	1	1	a	1	1	1	1	1	1	b	(a11ca1b
Siarad	fusser30	898	2	LON	oedd yn priodi	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	davies9	138	3	LLE	dw i cael tenner am wneud	\N	cym	biling	b	1	1	2	3	e	2	2	c	1	4	1	1	3	4	j	(b11ec1j
Siarad	davies9	347	1	LLE	mae hwnna good good	\N	cym	biling	b	1	1	2	3	e	2	2	c	1	4	1	1	3	4	j	(b11ec1j
Siarad	davies9	356	1	LLE	be as in be oedd y flash flash_o chdi	\N	cym	biling	b	1	1	2	3	e	2	2	c	1	4	1	1	3	4	j	(b11ec1j
Siarad	davies9	379	1	LLE	mae boy yna edrych mor bored ar y piano	\N	cym	biling	b	1	1	2	3	e	2	2	c	1	4	1	1	3	4	j	(b11ec1j
Siarad	fusser29	272	2	MAG	wnaethon ni symud er y bedrooms round	\N	cym	biling	b	1	1	2	3	e	2	2	c	1	1	1	4	4	4	k	(b11ec1k
Siarad	fusser29	532	1	MAG	duw dw i ddim isio reference gynno neb arall ond Hayley	\N	cym	biling	b	1	1	2	3	e	2	2	c	1	1	1	4	4	4	k	(b11ec1k
Siarad	fusser29	537	1	MAG	dw isio ffonio wedyn am y probation trainee officer yna	\N	cym	biling	b	1	1	2	3	e	2	2	c	1	1	1	4	4	4	k	(b11ec1k
Siarad	fusser29	798	1	MAG	achos wnes i ddod face to face efo hi do	\N	cym	biling	b	1	1	2	3	e	2	2	c	1	1	1	4	4	4	k	(b11ec1k
Siarad	fusser29	808	2	MAG	os os o'n isio um mynd am ddrink pythefnos yn_ôl	h	cym	biling	b	1	1	2	3	e	2	2	c	1	1	1	4	4	4	k	(b11ec1k
Siarad	stammers5	258	2	SND	pan wnaethon ni wneud y c_d yna 	\N	cym	biling	b	1	1	3	2	e	1	3	c	2	4	1	1	4	4	k	(b11ec2k
Siarad	stammers5	260	3	SND	bod ni yn amazing achos bod ni yn actually cynnwys pob un plentyn 	split off clause before achos	cym	biling	b	1	1	3	2	e	1	3	c	2	4	1	1	4	4	k	(b11ec2k
Siarad	stammers5	288	1	SND	gweithio shift ydy yr excuse 	clause division: link with next clause	cym	biling	b	1	1	3	2	e	1	3	c	2	4	1	1	4	4	k	(b11ec2k
Siarad	stammers5	794	1	SND	mae yn sure bod nhw gallu wneud rywbeth rŵan efo yr digital a bethau 	clause division--split before wneud	cym	biling	b	1	1	3	2	e	1	3	c	2	4	1	1	4	4	k	(b11ec2k
Siarad	stammers2	700	1	CHR	well maybe mae nhw yn mynd i_lawr 	\N	cym	biling	b	3	1	3	3	f	1	3	c	2	0	0	0	0	0	a	(b31fc2a
Siarad	stammers2	262	1	CHR	ac um oedd Michelle yn mad 	\N	cym	biling	b	3	1	3	3	f	1	3	c	2	0	0	0	0	0	a	(b31fc2a
Siarad	fusser12	1664	1	CEW	because mae rhan fwya o bobl teimlo yr un fath	\N	cym	biling	b	2	1	3	3	f	1	3	c	1	1	1	1	4	1	d	(b21fc1d
Siarad	stammers6	1142	1	IFA	be on earth ydy scandal yma 	\N	cym	biling	b	1	3	1	1	b	2	2	c	1	1	1	1	1	1	b	(b13bc1b
Siarad	fusser17	413	1	AET	um a dw i yn gweld hwn fath â shape doughnut yn fan yna yeah	\N	cym	biling	b	3	1	3	3	f	2	2	c	1	1	1	4	1	4	g	(b31fc1g
Siarad	fusser17	811	1	AET	achos gynnoch chi fath â diagonal lines	non-finite	cym	biling	b	3	1	3	3	f	2	2	c	1	1	1	4	1	4	g	(b31fc1g
Siarad	fusser17	818	1	AET	a mae hwn fath â triangle ar ben ei hun	clause division	cym	biling	b	3	1	3	3	f	2	2	c	1	1	1	4	1	4	g	(b31fc1g
Siarad	stammers2	484	1	JAQ	ond wedyn mae nhw yn criwsio y Mediterranean 	\N	cym	biling	b	3	1	3	3	f	1	3	c	2	4	4	4	3	3	o	(b31fc2o
Siarad	stammers2	498	1	JAQ	mmm mae o yn boring 	\N	cym	biling	b	3	1	3	3	f	1	3	c	2	4	4	4	3	3	o	(b31fc2o
Siarad	stammers2	509	1	JAQ	ella gawn ni weekend rhywle 	\N	cym	biling	b	3	1	3	3	f	1	3	c	2	4	4	4	3	3	o	(b31fc2o
Siarad	fusser18	262	1	BEU	yeah mae gyn ti limiter ar un chdi	\N	cym	biling	b	1	1	1	1	b	3	2	d	1	1	1	1	4	4	g	(b11bd1g
Siarad	fusser18	275	3	BEU	oedd y camera rywbeth fath â hanner can llath i_fewn i yr thing tri_deg er tri_deg yna	\N	cym	biling	b	1	1	1	1	b	3	2	d	1	1	1	1	4	4	g	(b11bd1g
Siarad	fusser18	792	1	BEU	ia mae haws wneud hynny yn car wash	\N	cym	biling	b	1	1	1	1	b	3	2	d	1	1	1	1	4	4	g	(b11bd1g
Siarad	fusser18	793	2	BEU	wna i roid y stuff ar dy ar ar alloy wheels	clause division	cym	biling	b	1	1	1	1	b	3	2	d	1	1	1	1	4	4	g	(b11bd1g
Siarad	fusser18	798	1	BEU	mae gael y break fluid off	\N	cym	biling	b	1	1	1	1	b	3	2	d	1	1	1	1	4	4	g	(b11bd1g
Siarad	fusser18	801	1	BEU	mae yr ddau car isio service	\N	cym	biling	b	1	1	1	1	b	3	2	d	1	1	1	1	4	4	g	(b11bd1g
Siarad	deuchar1	327	1	SER	well oedd yna fod er rock bands a pethau lawr yn Golwyn_Bay heddiw	\N	cym	biling	b	1	3	1	1	b	3	2	d	1	3	4	4	1	3	l	(b13bd1l
Siarad	deuchar1	642	1	SER	because mae nhw fawr i i	\N	cym	biling	b	1	3	1	1	b	3	2	d	1	3	4	4	1	3	l	(b13bd1l
Siarad	deuchar1	926	1	SER	oes because	\N	cym	biling	b	1	3	1	1	b	3	2	d	1	3	4	4	1	3	l	(b13bd1l
Siarad	fusser19	228	2	TRE	mae yna bethau fel er helplines ar y phone a peth felly toes	\N	cym	biling	b	1	2	3	1	d	3	2	d	1	1	1	1	1	1	b	(b12dd1b
Siarad	fusser19	713	1	TRE	disturbance of the mind ydy o	\N	cym	biling	b	1	2	3	1	d	3	2	d	1	1	1	1	1	1	b	(b12dd1b
Siarad	fusser19	714	1	TRE	os wyt ti yn cael gwybod bod yna er rywbeth ryw earthquake wedi digwydd yn y Phillipines	\N	cym	biling	b	1	2	3	1	d	3	2	d	1	1	1	1	1	1	b	(b12dd1b
Siarad	fusser19	720	2	TRE	doedd neb yn prepared am New_Orleans	clause division	cym	biling	b	1	2	3	1	d	3	2	d	1	1	1	1	1	1	b	(b12dd1b
Siarad	smith1	387	2	CEI	mae nôl i_mewn though 	\N	cym	biling	b	3	1	2	2	d	3	2	d	4	3	3	0	0	0	l	(b31dd4l
Siarad	davies17	187	4	ROB	sy yn syndod really	\N	cym	biling	b	3	1	3	3	f	3	2	d	4	4	4	4	4	4	p	(b31fd4p
Siarad	davies17	189	1	ROB	ond dyn nhw ddim actually yn mynd ati i siarad o	clause division	cym	biling	b	3	1	3	3	f	3	2	d	4	4	4	4	4	4	p	(b31fd4p
Siarad	davies16	855	1	HYW	mae ddau o nhw rei da	\N	cym	monoW	a	1	1	1	2	c	1	1	a	1	1	1	1	1	1	b	(a11ca1b
Siarad	davies16	858	1	HYW	mor falch wnaethon nhw ddim	\N	cym	monoW	a	1	1	1	2	c	1	1	a	1	1	1	1	1	1	b	(a11ca1b
Siarad	davies16	869	2	HYW	be ydy o de	\N	cym	monoW	a	1	1	1	2	c	1	1	a	1	1	1	1	1	1	b	(a11ca1b
Siarad	davies16	872	1	HYW	a deud wrtha fi straight away faint o bobl sy yna	\N	cym	monoW	a	1	1	1	2	c	1	1	a	1	1	1	1	1	1	b	(a11ca1b
Siarad	davies16	873	1	HYW	wyt	\N	cym	monoW	a	1	1	1	2	c	1	1	a	1	1	1	1	1	1	b	(a11ca1b
Siarad	davies16	876	1	HYW	oh mae	\N	cym	monoW	a	1	1	1	2	c	1	1	a	1	1	1	1	1	1	b	(a11ca1b
Siarad	davies16	878	1	HYW	wnaeth o um deud wrtho fo stopio iwsio moonwalk	clause division	cym	monoW	a	1	1	1	2	c	1	1	a	1	1	1	1	1	1	b	(a11ca1b
Siarad	davies11	815	1	RAC	mae nhw wneud ryw gymaint yn Royal_Welsh ŷn nhw	\N	cym	biling	b	1	2	1	1	b	3	3	e	1	4	1	1	1	1	d	(b12be1d
Siarad	davies11	830	1	RAC	dyn nhw ddim yn adar gwyllt though ŷn nhw	\N	cym	biling	b	1	2	1	1	b	3	3	e	1	4	1	1	1	1	d	(b12be1d
Siarad	davies11	962	1	RAC	yw e mor competitive cystadleuol â	\N	cym	biling	b	1	2	1	1	b	3	3	e	1	4	1	1	1	1	d	(b12be1d
Siarad	davies11	963	1	RAC	yw yr bobl mor keen	\N	cym	biling	b	1	2	1	1	b	3	3	e	1	4	1	1	1	1	d	(b12be1d
Siarad	fusser25	322	1	HUN	be oedd o sixty watt light bulb	\N	cym	biling	b	1	3	1	1	b	3	3	e	1	1	1	4	1	3	f	(b13be1f
Siarad	fusser25	346	1	HUN	ddaru nhw roid vouchers neu rywbeth iddo fo neu just	non-finite	cym	biling	b	1	3	1	1	b	3	3	e	1	1	1	4	1	3	f	(b13be1f
Siarad	fusser25	362	1	HUN	dw ddim wedi cael yr um motivation i mynd eto anyway	\N	cym	biling	b	1	3	1	1	b	3	3	e	1	1	1	4	1	3	f	(b13be1f
Siarad	fusser25	556	1	HUN	because lle mae yna cysgod	\N	cym	biling	b	1	3	1	1	b	3	3	e	1	1	1	4	1	3	f	(b13be1f
Siarad	fusser25	847	1	HUN	apart from that mae bach yn shit really just	\N	cym	biling	b	1	3	1	1	b	3	3	e	1	1	1	4	1	3	f	(b13be1f
Siarad	fusser25	915	1	HUN	oh actually baset ti gallu helpu fi heno actually	\N	cym	biling	b	1	3	1	1	b	3	3	e	1	1	1	4	1	3	f	(b13be1f
Siarad	deuchar1	310	1	MYF	na mae yna Brecon_Jazz wedi bod yn_dydy achos	\N	cym	biling	b	1	3	1	1	b	3	3	e	1	4	4	4	3	3	o	(b13be1o
Siarad	deuchar1	312	1	MYF	mae hwnna weekend	\N	cym	biling	b	1	3	1	1	b	3	3	e	1	4	4	4	3	3	o	(b13be1o
Siarad	deuchar1	319	4	MYF	oedd o mynd i yr um Brecon er Jazz	\N	cym	biling	b	1	3	1	1	b	3	3	e	1	4	4	4	3	3	o	(b13be1o
Siarad	deuchar1	323	1	MYF	achos oedd y Steddfod tan y weekend yna yn_doedd	\N	cym	biling	b	1	3	1	1	b	3	3	e	1	4	4	4	3	3	o	(b13be1o
Siarad	deuchar1	948	1	MYF	achos mae yn lecturer yn um Caerfyrddin	\N	cym	biling	b	1	3	1	1	b	3	3	e	1	4	4	4	3	3	o	(b13be1o
Siarad	deuchar1	955	1	MYF	na mae yn engaged yn_dydy	\N	cym	biling	b	1	3	1	1	b	3	3	e	1	4	4	4	3	3	o	(b13be1o
Siarad	davies4	347	2	OSW	oedd gynno fo fath â ryw four_by_four fawr sti	\N	cym	biling	b	1	1	3	1	d	3	3	e	1	1	1	3	3	4	i	(b11de1i
Siarad	davies4	697	1	OSW	oedd hi yn cael tri_deg punt am am watsiad ar_ôl y ci a yr free housing de	\N	cym	biling	b	1	1	3	1	d	3	3	e	1	1	1	3	3	4	i	(b11de1i
Siarad	davies4	1037	1	OSW	be sy gyn ti ar y go pnawn yma	\N	cym	biling	b	1	1	3	1	d	3	3	e	1	1	1	3	3	4	i	(b11de1i
Siarad	davies4	1062	2	OSW	be sy gyn i ar y go	\N	cym	biling	b	1	1	3	1	d	3	3	e	1	1	1	3	3	4	i	(b11de1i
Siarad	fusser14	213	1	BEL	so gawson ni pasta efo saws tomato a fennel efo salad avocado a cnau	\N	cym	biling	b	5	1	3	3	f	3	3	e	1	1	1	1	1	4	d	(b51fe1d
Siarad	davies14	247	1	FRE	basai fo yn boring	\N	cym	biling	b	5	1	3	3	f	3	3	e	1	4	3	4	1	1	j	(b51fe1j
Siarad	stammers7	261	1	ROY	be ydy H_M_I 	\N	cym	biling	b	5	1	3	3	f	3	3	e	3	4	4	1	1	4	k	(b51fe3k
Siarad	fusser17	328	2	BEN	os dach chi yn gweld y pethau glacial yno neu y cerrig eu hunain	\N	cym	biling	b	5	1	3	3	f	3	3	e	3	4	4	4	4	4	p	(b51fe3p
Siarad	fusser17	376	1	BEN	mae yn just dipyn o reflect_io	clause division	cym	biling	b	5	1	3	3	f	3	3	e	3	4	4	4	4	4	p	(b51fe3p
Siarad	davies17	195	1	GLA	a hyd_yn_oed ar_ôl blwyddyn yn um yn y Big_Brother house um mae Gymraeg yn yn dal yn well	\N	cym	biling	b	5	4	4	4	g	4	4	f	3	2	4	4	1	1	i	(b54gf3i
Siarad	davies17	576	2	GLA	mae yn cael ei defnyddio rŵan fel care in the community	\N	cym	biling	b	5	4	4	4	g	4	4	f	3	2	4	4	1	1	i	(b54gf3i
Siarad	fusser22	184	1	EVA	and and overall er dach chi yn hapus efo um efo partneriaeth ar hyn o bryd	\N	cym	biling	b	5	4	4	4	g	4	4	f	3	4	4	2	2	1	j	(b54gf3j
Siarad	fusser22	438	1	EVA	yeah be ydy networking yn	\N	cym	biling	b	5	4	4	4	g	4	4	f	3	4	4	2	2	1	j	(b54gf3j
Siarad	fusser22	510	1	EVA	achos ar hyn o bryd dw i yn er volunteering efo Blaenau_Beni Blaenau_Bendigedig	\N	cym	biling	b	5	4	4	4	g	4	4	f	3	4	4	2	2	1	j	(b54gf3j
Siarad	fusser22	514	3	EVA	dan ni um paratoi um Blaenau western carnival	\N	cym	biling	b	5	4	4	4	g	4	4	f	3	4	4	2	2	1	j	(b54gf3j
Siarad	fusser22	524	1	EVA	er mae yna yeah penwythnos um i yr i yr community	\N	cym	biling	b	5	4	4	4	g	4	4	f	3	4	4	2	2	1	j	(b54gf3j
Siarad	davies1	729	1	SAR	na byth couple o drinks ar_ôl practice	\N	eng	biling	c	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(c13ba1b
Siarad	fusser22	758	2	WYN	they're like um gwesty	clause division	eng	biling	c	1	3	1	1	b	1	1	a	1	1	1	4	1	1	d	(c13ba1d
Siarad	davies9	363	1	MOS	no it's a court appearance 	\N	eng	biling	c	1	1	2	2	d	1	1	a	1	1	1	3	1	1	c	(c11da1c
Siarad	fusser27	590	2	LIS	reading week nhw	\N	eng	biling	c	1	1	1	3	d	1	1	a	1	1	4	4	4	4	m	(c11da1m
Siarad	davies9	247	1	LLE	y thing is ti dal gorod siarad efo fi achos Peredur	\N	eng	biling	c	1	1	2	3	e	2	2	c	1	4	1	1	3	4	j	(c11ec1j
Siarad	davies13	809	1	MEI	are you eating a lot of chocolates	\N	eng	monoE	d	1	1	1	1	b	1	1	a	1	1	1	1	1	1	b	(d11ba1b
Siarad	fusser31	218	1	BRW	ydw	\N	cym	monoW	a	1	1	2	1	c	1	1	a	1	3	3	4	1	1	i	(a11ca1i
Siarad	fusser31	164	1	BRW	um mae style y canu yn lot well	\N	cym	monoW	a	1	1	2	1	c	1	1	a	1	3	3	4	1	1	i	(a11ca1i
Siarad	fusser31	175	1	BRW	um dw ddim yn meddwl am caneuon nhw	\N	cym	monoW	a	1	1	2	1	c	1	1	a	1	3	3	4	1	1	i	(a11ca1i
Siarad	fusser31	191	1	BRW	um meddwl	\N	cym	monoW	a	1	1	2	1	c	1	1	a	1	3	3	4	1	1	i	(a11ca1i
Siarad	fusser31	191	2	BRW	na dw bod yn mynd tua blwyddyn wan	\N	cym	monoW	a	1	1	2	1	c	1	1	a	1	3	3	4	1	1	i	(a11ca1i
Siarad	fusser31	208	2	BRW	dw ddim gallu ateb	\N	cym	monoW	a	1	1	2	1	c	1	1	a	1	3	3	4	1	1	i	(a11ca1i
Siarad	fusser31	210	1	BRW	pan mae rywun yn gofyn	\N	cym	monoW	a	1	1	2	1	c	1	1	a	1	3	3	4	1	1	i	(a11ca1i
Siarad	fusser31	210	2	BRW	pwy ydy band gorau fi	\N	cym	monoW	a	1	1	2	1	c	1	1	a	1	3	3	4	1	1	i	(a11ca1i
Siarad	fusser31	210	3	BRW	dw gorfod deud tua tri	\N	cym	monoW	a	1	1	2	1	c	1	1	a	1	3	3	4	1	1	i	(a11ca1i
Siarad	davies17	575	3	ROB	yndy neu	\N	cym	monoW	a	3	1	3	3	f	3	2	d	4	4	4	4	4	4	p	(a31fd4p
Siarad	fusser31	152	1	BRW	ond dw meddwl bod nhw really cool	\N	cym	biling	b	1	1	2	1	c	1	1	a	1	3	3	4	1	1	i	(b11ca1i
Siarad	fusser31	176	1	BRW	achos dw gael nhw yn fath â compilations a magazines	\N	cym	biling	b	1	1	2	1	c	1	1	a	1	3	3	4	1	1	i	(b11ca1i
Siarad	davies13	813	1	MEI	how can you guess	clause division	eng	monoE	d	1	1	1	1	b	1	1	a	1	1	1	1	1	1	b	(d11ba1b
Siarad	davies13	814	1	MEI	well you know your teeth eh	\N	eng	monoE	d	1	1	1	1	b	1	1	a	1	1	1	1	1	1	b	(d11ba1b
Siarad	fusser22	491	1	WYN	ask people	clause division	eng	monoE	d	1	3	1	1	b	1	1	a	1	1	1	4	1	1	d	(d13ba1d
Siarad	fusser22	491	2	WYN	how they feel about it	\N	eng	monoE	d	1	3	1	1	b	1	1	a	1	1	1	4	1	1	d	(d13ba1d
Siarad	fusser22	493	1	WYN	I've done that presentation	clause division	eng	monoE	d	1	3	1	1	b	1	1	a	1	1	1	4	1	1	d	(d13ba1d
Siarad	fusser22	506	1	WYN	yeah he's got contacts in Blaenau	clause division	eng	monoE	d	1	3	1	1	b	1	1	a	1	1	1	4	1	1	d	(d13ba1d
Siarad	stammers6	760	1	BLW	a number of mistakes have been made	should this really be three clauses? or is 'been made' one?	eng	monoE	d	1	2	1	1	b	1	1	a	1	1	1	1	1	4	d	(d12ba1d
Siarad	stammers6	761	1	BLW	and the responsibility is with me 	\N	eng	monoE	d	1	2	1	1	b	1	1	a	1	1	1	1	1	4	d	(d12ba1d
Siarad	fusser28	120	1	IFO	I don't think so	\N	eng	monoE	d	1	2	1	1	b	1	1	a	4	1	1	1	1	1	b	(d12ba4b
Siarad	davies9	359	1	MOS	it was a motorway job	\N	eng	monoE	d	1	1	2	2	d	1	1	a	1	1	1	3	1	1	c	(d11da1c
Siarad	fusser15	363	1	MRL	oh I think	\N	eng	monoE	d	1	1	1	3	d	1	1	a	1	1	1	1	4	1	d	(d11da1d
Siarad	fusser15	363	2	MRL	I've upset er Gwynfor	clause division	eng	monoE	d	1	1	1	3	d	1	1	a	1	1	1	1	4	1	d	(d11da1d
Siarad	fusser15	368	1	MRL	oh I think	\N	eng	monoE	d	1	1	1	3	d	1	1	a	1	1	1	1	4	1	d	(d11da1d
Siarad	fusser15	368	2	MRL	I've upset Gwynfor	clause division	eng	monoE	d	1	1	1	3	d	1	1	a	1	1	1	1	4	1	d	(d11da1d
Siarad	fusser27	577	1	LIS	there we go	\N	eng	monoE	d	1	1	1	3	d	1	1	a	1	1	4	4	4	4	m	(d11da1m
Siarad	stammers3	203	3	GUT	I suppose 	Subject needs to move from previous clause to here	eng	monoE	d	1	1	1	1	b	1	2	b	1	1	4	1	1	3	f	(d11bb1f
Siarad	fusser29	235	1	LOI	oh laugh	\N	eng	monoE	d	1	2	1	1	b	1	2	b	1	1	1	1	1	1	b	(d12bb1b
Siarad	davies9	146	1	LLE	er shall we go and mingle	\N	eng	monoE	d	1	1	2	3	e	2	2	c	1	4	1	1	3	4	j	(d11ec1j
Siarad	davies9	252	1	LLE	I know	\N	eng	monoE	d	1	1	2	3	e	2	2	c	1	4	1	1	3	4	j	(d11ec1j
Siarad	davies9	253	1	LLE	thing is	\N	eng	monoE	d	1	1	2	3	e	2	2	c	1	4	1	1	3	4	j	(d11ec1j
Siarad	fusser29	257	1	MAG	yeah I like this	\N	eng	monoE	d	1	1	2	3	e	2	2	c	1	1	1	4	4	4	k	(d11ec1k
Siarad	stammers6	378	1	IFA	just done it 	\N	eng	monoE	d	1	3	1	1	b	2	2	c	1	1	1	1	1	1	b	(d13bc1b
Siarad	stammers8	231	1	ISL	the Llwyni Methodists have built a church 	\N	eng	monoE	d	1	3	1	1	b	2	3	d	1	0	0	0	0	0	a	(d13bd1a
Siarad	stammers8	233	2	ISL	could fool the Lord the back looks partly shabby 	\N	eng	monoE	d	1	3	1	1	b	2	3	d	1	0	0	0	0	0	a	(d13bd1a
Siarad	stammers8	233	1	ISL	but thinking they 	\N	eng	monoE	d	1	3	1	1	b	2	3	d	1	0	0	0	0	0	a	(d13bd1a
Siarad	fusser25	287	1	HUN	it's a bit far that	\N	eng	monoE	d	1	3	1	1	b	3	3	e	1	1	1	4	1	3	f	(d13be1f
Siarad	fusser25	292	1	HUN	oh that's normal	\N	eng	monoE	d	1	3	1	1	b	3	3	e	1	1	1	4	1	3	f	(d13be1f
Siarad	fusser25	591	3	HUN	you're in	\N	eng	monoE	d	1	3	1	1	b	3	3	e	1	1	1	4	1	3	f	(d13be1f
Siarad	fusser25	594	1	HUN	does it say Barclays on the fucking door	clause division	eng	monoE	d	1	3	1	1	b	3	3	e	1	1	1	4	1	3	f	(d13be1f
Siarad	fusser25	637	1	HUN	oh we are linked	\N	eng	monoE	d	1	3	1	1	b	3	3	e	1	1	1	4	1	3	f	(d13be1f
Siarad	fusser25	652	1	HUN	you might want to ring Standard_Life love	\N	eng	monoE	d	1	3	1	1	b	3	3	e	1	1	1	4	1	3	f	(d13be1f
Siarad	fusser25	880	1	HUN	that's why	\N	eng	monoE	d	1	3	1	1	b	3	3	e	1	1	1	4	1	3	f	(d13be1f
Siarad	fusser31	215	1	BRW	mmhm ydw	\N	cym	monoW	a	1	1	2	1	c	1	1	a	1	3	3	4	1	1	i	(a11ca1i
Siarad	fusser31	389	1	BRW	um well mae Stuart mynd i gael un i pen_blwydd fo	\N	cym	monoW	a	1	1	2	1	c	1	1	a	1	3	3	4	1	1	i	(a11ca1i
Siarad	fusser31	390	1	BRW	mae hwnna yn couple o wythnosau so	\N	cym	monoW	a	1	1	2	1	c	1	1	a	1	3	3	4	1	1	i	(a11ca1i
Siarad	fusser31	394	1	BRW	dw ddim yn gael gwersi	\N	cym	monoW	a	1	1	2	1	c	1	1	a	1	3	3	4	1	1	i	(a11ca1i
Siarad	fusser31	396	1	BRW	dim unig gwahaniaeth ydy o ar guitar ti efo pedwar um string yn lle chwech	\N	cym	monoW	a	1	1	2	1	c	1	1	a	1	3	3	4	1	1	i	(a11ca1i
Siarad	fusser31	217	1	BRW	um nhw gyd actually dw meddwl	\N	cym	biling	b	1	1	2	1	c	1	1	a	1	3	3	4	1	1	i	(b11ca1i
Siarad	fusser31	392	1	BRW	mae yn easy	\N	cym	biling	b	1	1	2	1	c	1	1	a	1	3	3	4	1	1	i	(b11ca1i
Siarad	fusser31	398	1	BRW	a mae yr fath â pitch yn lot llai is even	\N	cym	biling	b	1	1	2	1	c	1	1	a	1	3	3	4	1	1	i	(b11ca1i
Siarad	davies4	351	1	OSW	oh I like you to meet a friend of mine from Wales	\N	eng	monoE	d	1	1	3	1	d	3	3	e	1	1	1	3	3	4	i	(d11de1i
Siarad	davies4	353	1	OSW	he's got sheep	clause division	eng	monoE	d	1	1	3	1	d	3	3	e	1	1	1	3	3	4	i	(d11de1i
Siarad	davies4	363	1	OSW	what sheep have you got Oswy	\N	eng	monoE	d	1	1	3	1	d	3	3	e	1	1	1	3	3	4	i	(d11de1i
Siarad	davies4	364	1	OSW	oh I've got texans	clause division	eng	monoE	d	1	1	3	1	d	3	3	e	1	1	1	3	3	4	i	(d11de1i
Siarad	stammers7	631	1	ROY	not what I had in mind 	\N	eng	monoE	d	5	1	3	3	f	3	3	e	3	4	4	1	1	4	k	(d51fe3k
Siarad	fusser22	723	1	EVA	you're not going to the game	\N	eng	monoE	d	5	4	4	4	g	4	4	f	3	4	4	2	2	1	j	(d54gf3j
Siarad	fusser22	403	1	EVA	he does yeah	\N	eng	monoE	d	5	4	4	4	g	4	4	f	3	4	4	2	2	1	j	(d54gf3j
Siarad	fusser22	270	1	EVA	is it	\N	eng	monoE	d	5	4	4	4	g	4	4	f	3	4	4	2	2	1	j	(d54gf3j
Siarad	fusser22	270	2	EVA	has it been confirmed	clause division	eng	monoE	d	5	4	4	4	g	4	4	f	3	4	4	2	2	1	j	(d54gf3j
Siarad	fusser22	400	1	EVA	because he's got his special specialist subjects	clause division	eng	monoE	d	5	4	4	4	g	4	4	f	3	4	4	2	2	1	j	(d54gf3j
Siarad	fusser22	526	1	EVA	um it's going to be on the old rugby pitches at Tanygrisiau	clause division	eng	monoE	d	5	4	4	4	g	4	4	f	3	4	4	2	2	1	j	(d54gf3j
Siarad	fusser22	528	1	EVA	and there's going to be a big American_Civil_War_Society event	clause division	eng	monoE	d	5	4	4	4	g	4	4	f	3	4	4	2	2	1	j	(d54gf3j
Siarad	fusser22	686	1	EVA	it's still going	clause division	eng	monoE	d	5	4	4	4	g	4	4	f	3	4	4	2	2	1	j	(d54gf3j
Siarad	fusser22	703	2	EVA	you're going down to Cardiff	clause division	eng	monoE	d	5	4	4	4	g	4	4	f	3	4	4	2	2	1	j	(d54gf3j
Siarad	fusser31	400	1	BRW	dyna be ydy yr gwahaniaeth really	non-finite	cym	monoW	a	1	1	2	1	c	1	1	a	1	3	3	4	1	1	i	(a11ca1i
Siarad	fusser31	405	1	BRW	well dw gael efo um dyn o yr enw Kevin_Williams yn Gaernarfon	clause division	cym	monoW	a	1	1	2	1	c	1	1	a	1	3	3	4	1	1	i	(a11ca1i
Siarad	fusser31	569	1	BRW	ond um dw meddwl	\N	cym	monoW	a	1	1	2	1	c	1	1	a	1	3	3	4	1	1	i	(a11ca1i
Siarad	fusser31	569	2	BRW	basai well i fi edrych ar stuff mwy realistic	\N	cym	monoW	a	1	1	2	1	c	1	1	a	1	3	3	4	1	1	i	(a11ca1i
Siarad	fusser31	582	2	BRW	be ydy swydd o dysgu guitar	\N	cym	monoW	a	1	1	2	1	c	1	1	a	1	3	3	4	1	1	i	(a11ca1i
Siarad	fusser3	250	1	ALY	a oedd hi yn oer de	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser3	252	1	ALY	achos oedd hi yn siwt ddiwrnod nice dydd Llun	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser3	257	1	ALY	oh mae yn dwym	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser3	259	1	ALY	a wedyn o'n i sythu wedyn	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser3	259	2	ALY	doedd erbyn un_ar_ddeg	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser3	273	1	ALY	yndw	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser3	274	1	ALY	mae	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser3	275	1	ALY	ond mae pen_blwydd Claire	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser3	276	2	ALY	mae un fod i fod pryd o fwyd ar nos Sadwrn so	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser3	456	1	ALY	oh cer o yma	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	fusser31	571	1	BRW	well chances to a million wneith o ddigwydd really	\N	cym	biling	b	1	1	2	1	c	1	1	a	1	3	3	4	1	1	i	(b11ca1i
Siarad	fusser3	273	2	ALY	yndw really	\N	cym	biling	b	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(b13ba1b
Siarad	fusser3	274	2	ALY	a mae lot i wneud ond anyway	\N	cym	biling	b	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(b13ba1b
Siarad	fusser31	401	1	BRW	that's it	\N	eng	monoE	d	1	1	2	1	c	1	1	a	1	3	3	4	1	1	i	(d11ca1i
Siarad	fusser31	574	1	BRW	I don't know	\N	eng	monoE	d	1	1	2	1	c	1	1	a	1	3	3	4	1	1	i	(d11ca1i
Siarad	fusser15	351	3	MRL	dyna be wna i ddweud wrth chdi yn rhyw ben	non-finite	\N	monoW	\N	1	1	1	3	d	1	1	a	1	1	1	1	4	1	d	\N
Siarad	fusser15	716	1	MRL	well elephant dyna beth oedd um Duncan	non-finite	\N	monoW	\N	1	1	1	3	d	1	1	a	1	1	1	1	4	1	d	\N
Siarad	fusser15	767	1	MRL	yeah prifysgol yeah dyna be wnaethon ni wneud yeah	non-finite	\N	monoW	\N	1	1	1	3	d	1	1	a	1	1	1	1	4	1	d	\N
Siarad	stammers4	432	3	ELE	yndy 	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	davies10	412	1	CLE	ew annwyl oedd	\N	cym	monoW	a	1	2	1	1	b	2	2	c	1	1	1	1	1	1	b	(a12bc1b
Siarad	davies9	136	2	LLE	dw i siarad efo chdi	\N	cym	monoW	a	1	1	2	3	e	2	2	c	1	4	1	1	3	4	j	(a11ec1j
Siarad	stammers5	547	1	SND	yeah dyna fydd wneud de 	clause division: link with next clause	\N	monoW	\N	1	1	3	2	e	1	3	c	2	4	1	1	4	4	k	\N
Siarad	fusser29	529	2	MAG	dw ddim meddwl	\N	cym	monoW	a	1	1	2	3	e	2	2	c	1	1	1	4	4	4	k	(a11ec1k
Siarad	stammers5	551	1	SND	wedyn mae yn ffitio wedyn 	\N	cym	monoW	a	1	1	3	2	e	1	3	c	2	4	1	1	4	4	k	(a11ec2k
Siarad	fusser18	814	1	BEU	dyna baswn i yn gobeithio	non-finite	\N	monoW	\N	1	1	1	1	b	3	2	d	1	1	1	1	4	4	g	\N
Siarad	roberts4	677	2	MEC	yndy 	\N	cym	monoW	a	1	2	1	1	b	1	2	b	1	1	4	4	4	1	k	(a12bb1k
Siarad	davies14	258	1	GWA	dw i meddwl	\N	cym	monoW	a	1	3	2	1	c	1	3	c	1	4	3	1	3	4	l	(a13cc1l
Siarad	fusser3	493	1	ALY	beth yw hwnnw	\N	cym	monoW	a	1	3	1	1	b	1	1	a	1	1	1	1	1	1	b	(a13ba1b
Siarad	davies17	388	1	GLA	mae yn yn odd	\N	cym	monoW	a	5	4	4	4	g	4	4	f	3	2	4	4	1	1	i	(a54gf3i
Siarad	fusser17	422	2	BEN	dach chi yn yeah manylion fach	\N	cym	monoW	a	5	1	3	3	f	3	3	e	3	4	4	4	4	4	p	(a51fe3p
Siarad	fusser17	425	1	BEN	yeah a wedyn dach chi yn sbïwch tu ôl y y yr yn y cefn a yr tirlun o y mynyddoedd mawr	clause division	cym	monoW	a	5	1	3	3	f	3	3	e	3	4	4	4	4	4	p	(a51fe3p
Siarad	fusser17	447	1	BEN	dw i yn licio ffordd	\N	cym	monoW	a	5	1	3	3	f	3	3	e	3	4	4	4	4	4	p	(a51fe3p
Siarad	fusser17	447	3	BEN	mae wal yn arwain eich llygaid lawr	\N	cym	monoW	a	5	1	3	3	f	3	3	e	3	4	4	4	4	4	p	(a51fe3p
Siarad	fusser17	450	1	BEN	yeah mae yn hyfryd	\N	cym	monoW	a	5	1	3	3	f	3	3	e	3	4	4	4	4	4	p	(a51fe3p
Siarad	fusser17	770	2	BEN	mae yn llai	\N	cym	monoW	a	5	1	3	3	f	3	3	e	3	4	4	4	4	4	p	(a51fe3p
Siarad	fusser17	771	1	BEN	mae gyda ni	\N	cym	monoW	a	5	1	3	3	f	3	3	e	3	4	4	4	4	4	p	(a51fe3p
Siarad	fusser17	786	1	BEN	yeah does yna ddim wahaniaeth yn y yn y blaendir	\N	cym	monoW	a	5	1	3	3	f	3	3	e	3	4	4	4	4	4	p	(a51fe3p
Siarad	fusser17	788	2	BEN	mae yn drwg gen i am	\N	cym	monoW	a	5	1	3	3	f	3	3	e	3	4	4	4	4	4	p	(a51fe3p
Siarad	fusser17	812	1	BEN	oh yeah eto mae yna just mwy fwy	\N	cym	monoW	a	5	1	3	3	f	3	3	e	3	4	4	4	4	4	p	(a51fe3p
Siarad	fusser17	824	1	BEN	oh mae yn hyfryd	\N	cym	monoW	a	5	1	3	3	f	3	3	e	3	4	4	4	4	4	p	(a51fe3p
Siarad	fusser17	826	3	BEN	mae yn mwy fwy	\N	cym	monoW	a	5	1	3	3	f	3	3	e	3	4	4	4	4	4	p	(a51fe3p
Siarad	fusser17	838	1	BEN	a wedyn yn y llall mae mwy o	\N	cym	monoW	a	5	1	3	3	f	3	3	e	3	4	4	4	4	4	p	(a51fe3p
Siarad	fusser17	841	1	BEN	a hefyd mae mwy o	\N	cym	monoW	a	5	1	3	3	f	3	3	e	3	4	4	4	4	4	p	(a51fe3p
Siarad	fusser17	1116	1	BEN	yeah a mae ffordd lawr ar y ar y dde just tu tu allan i yr llun	\N	cym	monoW	a	5	1	3	3	f	3	3	e	3	4	4	4	4	4	p	(a51fe3p
Siarad	fusser17	1156	1	BEN	dw i yn licio	\N	cym	monoW	a	5	1	3	3	f	3	3	e	3	4	4	4	4	4	p	(a51fe3p
Siarad	fusser17	1179	1	BEN	oh yeah mae yn amlwg wedyn yeah yeah	\N	cym	monoW	a	5	1	3	3	f	3	3	e	3	4	4	4	4	4	p	(a51fe3p
Siarad	fusser17	1212	1	BEN	yeah na mae yn hyfryd yeah yeah	\N	cym	monoW	a	5	1	3	3	f	3	3	e	3	4	4	4	4	4	p	(a51fe3p
Siarad	fusser17	1222	1	BEN	er er mae pethau yn digwydd	\N	cym	monoW	a	5	1	3	3	f	3	3	e	3	4	4	4	4	4	p	(a51fe3p
Siarad	fusser17	1223	1	BEN	mae action yno	\N	cym	monoW	a	5	1	3	3	f	3	3	e	3	4	4	4	4	4	p	(a51fe3p
Siarad	fusser17	1225	1	BEN	er mae haul disgleirio ar y ar y y algae neu stuff gwyrdd ar y ar y cerrig	\N	cym	monoW	a	5	1	3	3	f	3	3	e	3	4	4	4	4	4	p	(a51fe3p
Siarad	fusser17	1227	1	BEN	um mae dŵr yn redeg	\N	cym	monoW	a	5	1	3	3	f	3	3	e	3	4	4	4	4	4	p	(a51fe3p
Siarad	fusser17	1228	1	BEN	dach chi yn cael y wahaniaeth rhwng y y top	\N	cym	monoW	a	5	1	3	3	f	3	3	e	3	4	4	4	4	4	p	(a51fe3p
Siarad	fusser17	1228	2	BEN	lle mae bob_dim fel gwallt	\N	cym	monoW	a	5	1	3	3	f	3	3	e	3	4	4	4	4	4	p	(a51fe3p
Siarad	fusser17	788	1	BEN	yeah yeah oh ie yeah mae yn yes	\N	cym	biling	b	5	1	3	3	f	3	3	e	3	4	4	4	4	4	p	(b51fe3p
Siarad	fusser17	834	2	BEN	does dim cymaint o composition â	\N	cym	biling	b	5	1	3	3	f	3	3	e	3	4	4	4	4	4	p	(b51fe3p
Siarad	fusser17	1190	1	BEN	no dw i ddim yn na hynny eto	\N	cym	biling	b	5	1	3	3	f	3	3	e	3	4	4	4	4	4	p	(b51fe3p
Siarad	fusser22	791	2	EVA	dan ni um	non-finite	cym	monoW	a	5	4	4	4	g	4	4	f	3	4	4	2	2	1	j	(a54gf3j
Siarad	fusser22	795	1	EVA	dan ni ddeud um burgunder from Burgundy	\N	cym	biling	b	5	4	4	4	g	4	4	f	3	4	4	2	2	1	j	(b54gf3j
Siarad	fusser22	782	1	EVA	I was going to say	clause division	eng	monoE	d	5	4	4	4	g	4	4	f	3	4	4	2	2	1	j	(d54gf3j
Siarad	fusser22	782	3	EVA	you are	clause division	eng	monoE	d	5	4	4	4	g	4	4	f	3	4	4	2	2	1	j	(d54gf3j
Siarad	fusser22	783	1	EVA	I can't find the word now for a yeah	clause division	eng	monoE	d	5	4	4	4	g	4	4	f	3	4	4	2	2	1	j	(d54gf3j
Siarad	fusser22	783	2	EVA	someone who really enjoys eating and drinking er	clause division	eng	monoE	d	5	4	4	4	g	4	4	f	3	4	4	2	2	1	j	(d54gf3j
\.


--
-- PostgreSQL database dump complete
--

