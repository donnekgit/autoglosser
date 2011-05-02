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
-- Name: questionnaire; Type: TABLE; Schema: public; Owner: kevin; Tablespace: 
--

CREATE TABLE questionnaire (
    id character varying(3) NOT NULL,
    pseudonym character varying(20),
    dor character varying(20),
    lang character varying(5),
    gender character varying(5),
    dob character varying(20),
    age integer,
    occupation character varying(100),
    work character varying(50),
    lived_in character varying(255),
    brought_up character varying(20),
    main_area character varying(50),
    education character varying(20),
    welsh_since character varying(20),
    english_since character varying(20),
    welsh_ability character varying(10),
    english_ability character varying(10),
    mother_spoke character varying(5),
    father_spoke character varying(5),
    guardian_spoke character varying(5),
    primary_lang character varying(5),
    secondary_lang character varying(5),
    contact1 character varying(5),
    contact2 character varying(5),
    contact3 character varying(5),
    contact4 character varying(5),
    contact5 character varying(5),
    welsh_modern integer,
    welsh_useful integer,
    welsh_friendly integer,
    welsh_inspiring integer,
    welsh_beautiful integer,
    english_modern integer,
    english_influential integer,
    english_useful integer,
    english_friendly integer,
    english_inspiring integer,
    english_beautiful integer,
    nat_id character varying(5),
    i_separate integer,
    shdbe_separate integer,
    total_words integer,
    percent_english double precision,
    welsh_influential integer,
    conversation character varying(20)
);


ALTER TABLE public.questionnaire OWNER TO kevin;

--
-- Data for Name: questionnaire; Type: TABLE DATA; Schema: public; Owner: kevin
--

COPY questionnaire (id, pseudonym, dor, lang, gender, dob, age, occupation, work, lived_in, brought_up, main_area, education, welsh_since, english_since, welsh_ability, english_ability, mother_spoke, father_spoke, guardian_spoke, primary_lang, secondary_lang, contact1, contact2, contact3, contact4, contact5, welsh_modern, welsh_useful, welsh_friendly, welsh_inspiring, welsh_beautiful, english_modern, english_influential, english_useful, english_friendly, english_inspiring, english_beautiful, nat_id, i_separate, shdbe_separate, total_words, percent_english, welsh_influential, conversation) FROM stdin;
HEF	Hefeydd	12/01/2006	W	M	18/01/1980	25	Swyddog Ymchwil yng Nghanolfan Bedwyr	Researcher	Bala (W980-83); Rhiwlas, Arfon (W983-2006)	NW (Mid)	NW	graduate	< 4	primary	fully	fairly	W	W	W	W	W	W	W	W	W	W	4	4	4	4	4	4	5	4	4	4	4	W	2	3	2704	0.59999999999999998	3	Roberts1
BEI	Beinon	03/02/2006	W	M	09/03/1940	65	Cyflowr Celfyddol (Artificial Inseminator)	Agricultural	Abergeirw (W940-62); Llanfachreth (W962-68); Taicynhaeaf, Bontddu (W968-70); Ganllwyd (W970-73); Pencaenewydd (W973-06)	NW (Mid)	NW	none	< 2	primary	fairly	basic	W		NA	W	E	W	W	W	W	W	3	4	4	3	4	3	4	3	3	3	3	W	5	4	1337	0.40000000000000002	4	Fusser13
CRI	Crisiant	03/02/2006	W	F	27/02/1945	60	Athrawes wedi ymddeol	Teacher	Llangybi, Pwllheli (W945-63; W974-84); Wrecsam (W963-67; 68-74); Cwm Rhymni, Morgannwg (Glamorgan) (W967-8); Chwilog, Pwllheli (W984-06)	NW	NE NW SE	graduate	< 2	primary	fully	fully	W	W	NA	W	E	W	W	W	W	W	5	5	5	4	5	5	5	5	2	3	4	W	5	3	2973	0.40000000000000002	3	Fusser13
WYN	Wyn	24/02/2006	W	M	13/10/1956	49	Ymgynghonydd Datblygu Cymuned	Community worker	Blaenau Ffestiniog (W956-79); Beddgelert (W979-06)	NW	NW	graduate	< 2	primary	fully	fully	W	W	W	W	W	W	W	E	W	W	4	5	5	5	5	5	5	5	4	3	4	W	3	1	2816	24.5	2	Fusser22
AET	Aethwy	10/02/2006	W	M	29/09/1940	65	Engineering (Foreman)	Technician	Caernarfon	NW	NW	GCSE	primary	< 2	fully	fully	E	E	NA	WE	WE	W	W	E	W	E	4	5	4	4	5	5	5	4	3	4	3	W	4	4	7436	2	4	Fusser17
ANE	Aneira	12/01/2006	E	F	15/05/1966	39	Community Youth Worker	Community worker	Caernarfon (W974-2006) ; Wembley, London (W966-74)	NW	Eng	Alevel	primary	< 2	fairly	fully	E	E	NA	E	E	E	W	W	W	W	3	4	3	3	4	3	4	5	3	3	3	E	3	2	2815	5.9000000000000004	2	Fusser7
BAG	Baglan	16/01/2006	W	M	11/02/1948	57	Uwch Reolwr Gwarchodfa, Cyngor Cefn Gwlad Cymru	Civil Servant (management)	Derbyshire (W948NA); Waunfawr, Caernarfon (W950-67; W984-2005); Cheltenham (W968-69); Norwich (W970-73); Caerdydd (W974-5); Aberhonddu (W976-78); ?Taf Ffyn Ardudwy (W978-84)	NW	Eng Mid NW SE	graduate	primary	< 2	fully	fully	E	E	NA	W	E	W	W	W	W	E	4	4	5	5	5	5	5	5	2	4	4	W	5	5	5359	0.40000000000000002	3	Fusser9
HOW	Howyn	12/01/2006	W	M	06/01/1973	33	Swyddog Ymchwil yn y Brifysgol	Researcher	Cilgwri (W976NAW); Aberystwyth (9WNA6; 99-200W); Galway, Iwerddon (W996NA8); Arfon (200W-06)	Eng	Eng Ire NW SW	graduate	adult	< 2	fully	fully	E	E	E	E	E	W	E	W	W	E	3	4	3	3	4	5	5	5	3	3	4	W	4	3	2824	1.7	4	Roberts1
CRL	Carol	25/06/2007	W	F	26/11/1983	23	Myfyrwraig PhD	Student	Bargoed, Caerffili (W983-2002); Bangor, Gwynedd (2002-presennol)	SE	SE NW	postgrad	< 4	< 2	fully	fully	E	E	E	W	W	WE	W	E	W	E	4	5	5	5	5	5	5	5	3	4	3	W	2	2	4760	1.2	5	Robert9
MEL	Meleri	17/03/2006	W	F	27/01/1978	28	Cynhyrchydd, BBC	TV producer	Caerdydd (W978-84); Llandudno (W984NA6); Bangor (W996-2000); Hamburg, Almaen (2000-W); Dubai, UAE (200W-02); Pentraeth, Ynys Mon (2002-06)	SE/NW	NW SE Abroad	postgrad	< 4	< 2	fully	fully	E	E		W	W	E	E	W	W	E	4	5	5	5	5	5	5	5	5	5	3	W	1	2	4675	1.8	5	Fusser30
BEU	Beuno	12/02/2006	W	M	28/05/1964	41	Rheolwr Risg	Risk Assessor	Caernarfon (W964-83); Caerdydd (W983NA0); Abertawe (W990NAW); Bangor (W99W-06)	NW	NW SE SW	graduate	< 2	< 2	fully	fully	W	W	NA	E	WE	W	W	W	E	E	4	4	3	3	4	4	4	4	3	3	4	W	4	3	2347	1.3999999999999999	4	Fusser18
LER	Leri	09/02/2006	W	F	12/03/1964	41	Swyddog Diogelwch y Ffyrdd	Civil Servant	Blaenau Ffestiniog (W964NA7); Llangefni (W997-06)	NW	NW	graduate	< 2	< 2	fairly	fully	W	E	W	W	E	W	W	W	W	W	3	4	5	4	5	3	3	4	3	3	4	W	3	3	5208	1.8999999999999999	4	Roberts3
LIS	Lisa	16/03/2006	W	F	09/06/1985	20	Student & Bar Work	Student	Maendochog, Sir Benfro (W985-04); Bangor (2004-6)	SW	NW SW	Alevel	< 2	< 2	fully	fully	W	E	WE	W	W	W	E	E	E	E	3	5	4	4	4	5	4	5	4	2	3	W	2	2	3099	12.1	4	Fusser27
MAB	Mabli	16/03/2006	W	F	04/04/1986	19	Myfyriwr	Student	Caernarfon (W986-04;05-06); Bangor (2004-05)	NW	NW	Alevel	< 2	< 2	fully	fully	WE	E	W	W	W	W	W	E	W	W	3	5	5	4	5	4	4	5	4	3	3	W	1	1	4053	4.7999999999999998	3	Fusser27
MAG	Magi	17/03/2006	W	F	22/09/1978	27	Tiwtor Sgiliau Sylfaenol	Tutor	Felinheli (W98WNA5); Southampton (W978-8W); Caernarfon (W995NA6); Seion (W996-02); Brynrefail (2002-06)	NE	Eng NW	Alevel	< 2	< 2	fully	fully	WE	E	E	WE	WE	W	W	E	E	E	5	4	4	4	5	5	5	4	5	2	2	W	1	4	3978	7.7999999999999998	3	Fusser29
MRL	Meryl	08/02/2006	W	F	06/09/1965	40	Swyddog Dehongli	PR/Marketing	Basaleg, Sir Fynwy (W969-84); Bangor (W984-87); Y Drenewydd, Powys (W989NAW); Penisarwaun, Gwynedd (W99WNA6); Pentir (W996-06)	SE	Mid NW SE	graduate	< 2	< 2	fully	fully	W	E		W	W	W	W	W	E	W	4	5	5	5	5	5	5	5	4	3	3	W	5	4	4352	2.6000000000000001	3	Fusser15
ALB	Alban	03/03/2006	E	M	15/07/1980	25	Admin & Finance Worker	Administrator	Penrhyndeudraeth (W980NA9; 2004-6); Llandudno (W999-03); Dolgellau (2003-4); Manchester (2004-6)	NW	Eng NW	graduate	< 2	< 2	fully	fully	W	E		W	W	W	E	W	E	WE	3	5	5	4	5	3	3	4	4	3	3	W	2	2	2888	6	4	Fusser25
MOS	Mostyn	10/08/2006	W	M	08/11/1986	19	Myfyriwr	Student	Caerdydd (W986NA3; 2000-05); Caerfyrddin (93NA9); Bangor (2005-6) 	SE/SW	NW SE SW	Alevel	< 2	< 2	fully	fairly	WE	WE	WE	W	W	W	W	WE	W	W	4	5	5	5	5	3	5	3	4	4	2	W	1	4	1003	9.1999999999999993	5	Davies9
DAN	Daniel	02/08/2006	W	M	22/05/1981	25	Myfyriwr	Student	Talwrn, Ynys Mon (W98W-2000, 2004-6; Bangor (2000-04)	NW	NW	graduate	< 2	primary	fully	fairly	W	W	W	W	W	W	W	W	W	W	4	5	5	5	5	4	3	5	2	2	1	W	5	5	2239	14.1	4	Davies6
HEU	Heulwen	11/01/2007	W	F	07/10/1957	49	Swyddog Cymunedol	Community worker	Y Parc, Y Bala (W957-76); Bangor (W976-79; 8W-84); Harlech (W979-80); Bethesda (W985-07)	NW	NW (Mid)	graduate	< 2	primary	fully	fairly	W	W	W	W	WE	W	W	W	W	W	4	5	5	5	5	5	5	5	3	3	3	W	2	3	2650	1.5	4	Stammers6
HIL	Hilda	19/10/2006	W	F	19/10/1943	62	Ysgrifenyddes	Administrator	Penygroes (W943-65); Llandudno (W965-70); Dinbych (W970-72); Porthmadog (W972-76); Caerwys (W980-83); Ynys Mon (W990-06)	NW	NE NW	GCSE	< 2	primary	fully	fairly	W	W		W	WE	W	W	W	W	W	3	4	3	4	5	3	3	3	3	3	3	W	4	4	1220	0.20000000000000001	3	Davies10
EVA	Eva	24/02/2006	E	F	06/02/1966	40	Personal Assistant	Administrator	The Netherlands (W966NA8); Gwynedd (W998-06)	Abroad	NW Abroad	Alevel	adult	secondary	basic	fully	O	O	O	O	O	E	E	O	O	W	2	5	3	4	1	5	5	5	5	3	1	O	2	2	1676	30.399999999999999	3	Fusser22
BEL	Beli	07/02/2006	W	M	02/08/1962	43	Swyddog Cymuned, Cymdeithas Tai Eryri	Civil Servant	Tredegar, Blaenau Gwent (W962-8W; W984-85); Abertawe (W98W-84); Caerdydd (W985NA8); Penygroes, Gwynedd (W998-06)	SE	NW SE SW	graduate	adult	< 2	fully	fully	E	E	E	E	E	W	W	W	W	E	5	5	5	5	5	5	5	5	4	5	4	W	4	2	2608	0.90000000000000002	4	Fusser14
BEN	Ben	10/02/2006	E	M	20/07/1958	47	University Research Worker	Researcher	Swansea (W960-76); Leicester (W976-84); Essex (W984NA0); Rhostryfan (W990-06)	SW	Eng NW SW 	graduate	adult	< 2	fully	fully	E	E	E	E	E	E	E	E	E	E	3	2	4	4	5	4	5	5	4	4	4	O	4	3	3428	1.7	2	Fusser17
CEW	Ceinwen	02/02/2006	W	F	09/08/1947	58	(byw ar ei hetifeddiaeth (heiress))	Unemployed (wealthy)	Llanfrothen (W947-64; W976-06); Ysgol Breswyl, Sir Dyfnaint (W956-64); Llundain (W964-67); Seland Newydd/India/Nepal (W967-76)	NW (Mid)	Eng NW SW Abroad	Alevel	< 4	< 2	fully	fully	E	E		W	E	W	W	W	E	W	5	5	5	5	5	5	5	5	3	3	1	W	5	5	5088	1.7	5	Fusser12
NER	Nerys	16/10/2006	E	F	26/10/1972	33	Teacher	Teacher	Aberffraw (Anglesey) (W972NAW); Staffordshire (W99W-7); Hampshire (W997-2000); South Wales (2000-5); Tregarth (2005-6)	NW	Eng NW	graduate	< 2	< 2	fully	fully	W	W		W	W	W	E	W	W	W	3	5	5	5	5	5	3	5	5	5	5	W	1	3	3340	5	3	Stammers3
BRW	Brwyno	19/03/2006	W	M	03/08/1993	12	Disgybl yn Ysgol Uwchradd Dyffryn Nantlle	School Student	Trallwng, Powys (W993NA6); Caernarfon (W997-06)	Mid/NW	Mid NW	none	< 2	< 2	fully	fully	WE	W	W	W	W	WE	WE	E	W	W	4	5	4	3	4	4	5	5	4	4	4	W	2	2	2233	4.5999999999999996	5	Fusser31
COL	Colin	10/04/2006	W	M	06/06/1988	17	Addysg Llawn Amser	School Student	Amlwch (W988NA2); Penrhoslligwy (W992-06)	NW	NW	Alevel	< 2	< 2	fully	fully	W	W	W	W	WE	W	W	E	W	W	3	4	5	3	4	4	4	4	5	3	4	W	3	2	2394	6.2000000000000002	4	Davies5
FLO	Florence	22/10/2006	W	F	12/05/1981	25	Darpar athrawes	Teacher	Pontarddulais, Abertawe (W98W-W999); Aberystwyth (W999-2002); Caerdydd (2003-2006)	SW	SE SW	postgrad	< 2	< 2	fully	fully	E	W	E	W	W	W	E	W	W	E	5	5	5	4	5	5	5	5	5	4	4	W	2	2	3179	3.7000000000000002	5	Robert1
GUT	Guto	16/10/2006	E	M	17/11/1968	37	Social Worker	Social Worker	Aberffraw (Anglesey) (W968-87; 90NA5; 97-06) Bangor (W987NA0); Caernarfon (W995-6)	NW	NW	graduate	< 2	< 2	fully	fully	W	W	WE	W	WE	W	E	W	W	WE	5	5	5	4	5	5	4	5	3	5	3	W	3	2	2998	8.5999999999999996	3	Stammers3
LLE	Llewelyn	10/08/2006	W	M	31/05/1984	22	Myfyriwr PhD	Student	Glyndyfrdwy, Sir Ddinbych (W984-02); Bangor (2002-06)	NE	NE NW	graduate	< 2	< 2	fully	fully	WE	E	NA	WE	WE	E	W	W	WE	E	2	5	5	5	5	4	5	5	4	3	3	W	2	1	996	8.5	5	Davies9
LUN	Luned	31/10/2006	W	F	18/09/1990	16	Disgybl ysgol	School Student	Deiniolen (W990-2005); Bethesda (2005-2006)	NW	NW	none	< 2	< 2	fully	fully	W	W	E	W	W	W	E	W	W	E	4	5	5	5	4	5	3	4	4	4	3	W	1	3	3860	8.9000000000000004	3	Robert3
MEI	Meirion	29/11/2006	W	M	27/07/1986	20	Myfyriwr	Student	Bae Penrhyn, Conwy (W986-04; 2005); Adelaide, Awstralia (05-6) ; Bangor (05-06)	NW	NW Abroad	Alevel	< 2	< 2	fully	fully	W	W		W	W	W	W	W	W	W	5	5	5	5	5	5	4	5	4	3	4	W	2	3	3076	8.5	5	Davies13
MER	Merfyn	10/04/2006	W	M	07/01/1988	18	Addysg Llawn Amser	School Student	Llanfechell, Ynys Mon (W988-06)	NW	NW	Alevel	< 2	< 2	fully	fully	W	W	W	W	W	W	W	W	W	WE	3	4	5	4	5	4	5	5	2	3	3	W	4	3	2337	6.2999999999999998	3	Davies5
OSW	Oswy	10/04/2006	E	M	11/12/1948	57	Retired but work P/T as Barman in an Indian Restaurant	Barman	Dinorwic W8yrs; Bontnewydd 39yrs	NW	NW	GCSE	< 2	< 2	fairly	fully	E	W		E	E	W	W	WE	WE	E	3	3	5	5	5	5	5	5	3	3	3	W	3	3	4691	9.6999999999999993	3	Davies4
CER	Ceri	25/10/2006	W	F	09/11/1985	20	Student	Student	Rhuthun (99-06); Cilcain (Wyddgryg) (W985NA9)	NE	NE	Alevel	< 2	< 2	fully	fully	W	W	NA	W	W	W	WE	W	E		2	4	5	3	5	5	5	5	2	3	2	W	3	5	4334	2.3999999999999999	3	Davies12
JAM	James	29/11/2006	W	M	07/06/1987	19	Myfyriwr	Student	Ystradgynlais, Abertawe (W987-05) ; Bangor (2005-6)	SW	NW SW	Alevel	< 2	< 2	fairly	fully	W	W	NA	W	W	W	W	W	W	W	5	5	5	5	5	4	2	5	4	3	3	W	3	1	2954	4.2999999999999998	5	Davies13
RHO	Rhodri	08/12/2006	W	M	21/01/1967	39	Swyddog Safonau Masnach (Llywodraeth Leol)	Civil Servant	Llanfairpwll (W967NA3); Bangor (W993-06)	NW	NW	graduate	< 2	< 2	fully	fully	W	W	E	W	E	W	W	E	W	W	4	4	5	3	5	5	4	5	4	3	3	W	3	4	3154	8.3000000000000007	3	Stammers5
SAL	Sali	25/10/2006	E	F	17/08/1987	19	Student	Student	Bala (W987NA4); Llanuwchllyn (W994-06); Bangor (05-06)	NW	NW (Mid)	Alevel	< 2	< 2	fully	fully	E	W		W	W	E	W	E	W	WE	3	5	4	5	5	4	4	5	4	4	4	W	3	3	3659	12.1	4	Davies12
SIO	Sionyn	10/04/2006	W	M	07/02/1988	18	Addysg Llawn Amser	School Student	Llundain (W988-89); Benllech (W990-06)	NW	Eng NW	Alevel	primary	< 2	fairly	fully	E	E	E	W	WE	E	E	E	WE	WE	3	5	3	4	4	4	5	5	4	4	4	B	1	2	1788	3.6000000000000001	3	Davies5
SND	Sioned	08/12/2006	E	F	29/03/1970	36	Teacher	Teacher	Aberystwyth (W973-89); Oswestry (W989NA2); London (W992NA8); Bangor (W998-06)	SW	Eng NW SW	graduate	< 2	< 2	fairly	fully	E	WE	NA	W	E	E	W	W	E	E	3	3	3	3	4	5	5	5	4	5	3	E	3	2	2343	5	3	Stammers5
TEG	Tegai	08/02/2007	E	F	10/10/1980	26	PhD Student	Postgraduate Student	Llanerchymedd, Mon (W980NA9;2005-7) ; Manchester (W999-05)	NW	Eng NW	graduate	< 2	< 2	fully	fully	W	W	W	W	WE	W	W	W	W	WE	2	4	5	5	5	4	4	5	4	3	3	W	2	2	3004	3.6000000000000001	3	Davies15
BTI	Beti	31/10/2006	W	F	05/04/1991	15	Disgybl ysgol	School Student	Ystrad Mynach (W99W-W992); Llanfyllin (W992-W996); Rhayedr (W996-W997); Abermiwl (W997-200W); Manafon (200W-2002); Llanddeiniolen (2002-2006)	Mid/SE	Mid NW SE	none	< 2	< 2	fully	fully	W	E	WE	W	W	W	E	W	W	E	4	5	5	5	5	5	5	5	3	2	1	W	2	5	3028	7	3	Robert3
CAR	Carys	09/03/2007	W	F	10/04/1939	67	Athrawes	Teacher	Rhydwen, Sir Fflint (?W943-70, 2005-7); Wolverhampton (W970-77; 90NA5), Kenya (W977NA0); Oman (W995-00); Saudi Arabia (2000-05); 	NE	NE Abroad	graduate	< 2	< 2	fully	fully	W	W	W	E	E	E	W	W	W	E	5	5	5	5	5	3	3	3	3	3	3	W	4	4	1948	1.3999999999999999	5	Stammers8
HYW	Hywel	26/02/2007	W	M	08/11/1990	16	Disgybl	School Student	Caerdydd (90NAW), Pentraeth, Ynys Mon (9W-06)	NW	NW	none	< 2	< 2	fully	fully	W	WE	WE	W	W	W	W	W	W	W	4	4	5	4	5	5	4	5	4	3	2	W	4	3	2658	9	5	Davies16
TEC	Tecwyn	14/03/2006	E	M	05/11/1934	71	Retired, Chief Warden - Nature Conservancy	Conservation Warden	Anglesey (W934-39); Llanfairfechan (W939-5W; W963-2006); Far East (W952-53); Kenya (W954-60); London (W960-62)	NW	Eng NW Abroad	Alevel	< 2	< 2	fully	fully	W	E	W	W	E	W	W	WE	E	O	5	5	5	5	5	5	5	5	5	5	5	W	1	1	1476	4.2999999999999998	5	Fusser26
HAR	Harold	07/04/2006	W	M	04/07/1992	13	Disgybl Ysgol - ond yn gwneud rownd bapur gyda'r Bangor/Anglesey Mail	School Student	Y Felinheli (W990NA4); Bangor (W994-2006)	NW	NW	none	< 4	primary	fully	fairly	W	W	NA	WE	WE	W	W	E	W	W	4	3	4	4	5	5	4	5	3	3	4	W	2	2	2877	3.6000000000000001	5	Davies3
GLE	Glenys	23/10/2006	W	F	01/12/1986	19	Myfyriwr	Student	Caernarfon; Llanrug; Bangor	NW	NW	Alevel	primary	< 2	fairly	fully	E	WE	E	W	W	E	E	E	4		3	5	5	4	5	5	5	5	5	4	4	W	2	2	4348	1	4	Robert2
CEI	Ceiriog	16/08/2006	W	M	09/08/1989	17	School student	School Student	Caernarfon	NW	NW	GCSE	primary	< 2	basic	fully	WE	WE		E	WE	WE	WE				2	3	3	3	3	4	4	4	4	4	4	B	3	3	1521	3.7999999999999998	3	Smith1
DEW	Dewi	16/08/2006	E	M	24/03/1961	45	Engineer	Engineer	Caernarfon	NW	NW	GCSE	primary	< 2	fairly	fully	WE	WE		WE	WE	E	WE				2	3	2	3	3	3	3	3	3	3	3	W	3	3	2155	3.3999999999999999	2	Smith1
EIR	Eirlys	27/12/2006	W	F	18/08/1950	56	Rheolydd grwp gwleidyddol yn y Cynulliad	Government Official	Caerfyrddin (W950-W959); Abertawe (W959-W968); Aberystwyth (W968-W972); Creigiau/Groesfaen, Morgannwg (W974-2006)	SW	SE SW	graduate	secondary	< 2	fully	fully	E	E	E	E	E	E	WE	W	W	W	5	5	5	5	5	5	5	5	5	5	4	W	1	1	2344	3.2000000000000002	5	Robert6
WEN	Wendi	02/02/2006	W	F	23/05/1959	46	Athrawes rhan amser	Teacher	Penrhyndeudraeth (W959-85); Llanfrothen (85-06)	NW	NW (Mid)	graduate	< 2	< 4	fully	fully	W	W	W	W	E	W	W	W	W	W	5	5	5	5	5	5	3	4	4	3	4	W	4	4	3673	0.69999999999999996	5	Fusser12
MEC	Mechain	15/02/2006	W	M	21/05/1986	19	Myfyriwyr Nyrsio	Student	Caernarfon (W986-06); Bangor (2004-06)	NW	NW	Alevel	< 2	< 4	fully	fully	W	W	W	W	WE	W	E	E	E	W	4	5	5	5	5	4	5	5	4	4	4	W	3	3	4104	2.2000000000000002	4	Roberts4
TRE	Trefor	18/02/2006	W	M	17/01/1968	38	Athro a golygydd Tair-Ieithog	editor/teacher	Sussex (W97W-76); Gwynedd/Mon (W976-86); Huddersfield (W986NA3); Paris, Ffrainc (W997-0W); Gwynedd (2003-06)	Eng/NW	Eng NW Abroad	graduate	< 2	< 4	fully	fully	E	W	NA	E	WE	W	W	W	W	W	4	5	4	5	5	5	5	5	3	3	3	W	2	2	2355	3.8999999999999999	2	Fusser19
ARD	Arddun	12/02/2006	E	F	16/02/1964	41	Lecturer	Lecturer	Llanrwst (W964-82); Europe/USA (W982-87); Bangor (W987-06)	NW	NW Abroad	postgrad	unavailable	primary	fully	fully	W	W	NA	W	E	W	W	W	W	W	5	5	5	3	3	5	3	5	5	3	3	W	3	3	3526	1.8999999999999999	\N	Fusser18
OWA	Owain	19/10/2006	W	M	06/05/1939	67	Wedi Ymddeol - Cyn Reolwr Banc	Bank Manager	Llandudno (W963-70); Y ?Berno / Tywyn (W984-89); Caergybi /Talwrn (W989NA9)	NW	NW (Mid)	Alevel	< 4	secondary	fairly	fairly	W	W		E	E	W	W	W	W	W	2	5	3	3	5	5	3	3	5	3	4	W	4	4	3690	0.5	2	Davies11
CHR	Charlotte	26/06/2006	E	F	18/11/1995	10	[at school]	School Student	Bangor	NW	NW	none	primary	< 2	basic	fully	E	E	E	W	E						2	4	5	5	3	5	5	5	5	5	5	E	1	1	1241	2.8999999999999999	3	Stammers2
FRE	Frederic	23/01/2007	E	M	11/04/1939	67	Senior (Nuclear) Health Physics Supervisor	Management	Bangor	NW	NW	graduate	adult	< 2	basic	fairly	E	E	E	E	E	E	WE	E	W	W	3	5	5	5	5	4	5	5	5	4	4	W	2	2	2416	1.3	5	Davies14
JAQ	Jacqueline	26/06/2006	E	F	11/06/1968	38	S.E.N. Assistant	Carer	Bangor	NW	NW	Alevel	primary	< 2	basic	fully	E	E	E	W	E	E	E	E	WE	WE	4	5	4	4	4	4	4	5	5	5	5	E	1	1	2697	1.3	4	Stammers2
ROB	Robin	22/06/2007	W	M	28/04/1976	31	Ysgrifennydd Cynhyrchiad, BBC Cymru	Administrator	Lerpwl (W976-85; W994-5); Talysarn (Dyffryn Nantlle) (W985NA4); Bangor (W995-06); Caerdydd (2006-7)	Eng/NW	Eng NW SE	graduate	primary	< 2	fully	fully	E	E	WE	E	WE	E	E	E	E	E	3	5	5	4	5	3	5	5	4	5	5	B	3	1	3579	0.59999999999999998	5	Davies17
ROY	Roy	05/03/2007	W	M	22/08/1975	31	gweithiwr myfyriwr/plant	Youth worker	America (W975-2000); Taiwan (2000); Cymru (200W-7)	Abroad	NW Abroad	postgrad	adult	< 2	fully	fully	E	E	E	E	E	E	E	W	W	E	5	5	5	5	5	5	5	5	5	5	4	O	3	2	1813	4.0999999999999996	5	Stammers7
GFR	Gwynfor	08/02/2006	W	M	16/06/1955	50	Swyddog Cyrwllt Cymunedol	Community worker	Wrecsam (W956-73); Bangor (73-77); Rhuthun (77-82; 87-89); Glynllifan, Llandwrog (W982-87); Pentrefoelas (W989-2006)	NE	NE NW	graduate	< 2	< 4	fully	fairly	W	W		W	WE	W	W	W	W	E	3	5	5	4	4	3	4	5	3	2	3	W	2	4	5031	3	3	Fusser15
ALY	Alys	31/08/2005	W	F	22/02/1973	32	Cydlynydd Cynhyrchu efo Cwmni Teledu	Manufacturing (management)	Penybont, Caerfyrddin (W973NAW); Bangor (W99WNA5); Caernarfon (W995-2006)	SW	NW SW	graduate	< 2	primary	fairly	fairly	W	W	W	W	W	W	W	W	W	W	5	5	5	5	5	5	5	5	3	1	2	W	2	2	4000	2.8999999999999999	3	Fusser3
ANN	Ann	03/02/2006	W	F	16/03/1944	61	Athrawes wedi ymddeol	Teacher	Penygroes, Arfon (W944-58); Llandudno (W958-62); Bangor (W962-65); Yr Wyddgrug (W965-68); Ganllwyd (W968-73); Pencaenewydd (W973-06)	NW	NW	graduate	< 2	primary	fully	fully	W	W		W	WE	W	W	W	W	W	4	5	5	3	5	5	4	4	4	3	3	W	2	2	4695	0.20000000000000001	3	Fusser13
GRG	George	24/03/2008	E	M	18/06/1954	53	Horticultural Contractor	Horticultural	Birmingham (W954-70; Talybont (Bermo) (W970-2008)	Eng/NW	Eng NW	GCSE	adult	< 2	fairly	fully	E	WE	NA	E	E	WE	WE	blank	blank	blank	4	5	4	5	4	4	3	4	3	3	3	W	3	4	1639	75.400000000000006	5	Lloyd1
ADW	Adwen	05/09/2005	W	F	16/12/1931	73	Athrawes wedi ymddeol	Teacher	Trimsaran, Sir Gar (W93W-50) ; Sussex (W950-52); Macclesfield (W952-56) ; Llanrwst (W957-2005)	SW	Eng NW SW	graduate	< 2	< 2	fairly	fully	W	W	NA	W	W	W	W	W	E	E	4	5	5	5	5	3	5	5	4	3	5	W	2	3	3613	6.9000000000000004	5	Fusser4
BAE	Baeddan	05/09/2005	W	M	24/05/1951	54	Cyfarwyddwr Polisi	Civil Servant (management)	Betws-y-Coed (W95W-54; 2003-05); Wrecsam (W955-69); Liverpool (W969-7W); Stockport (W97W-85); Sale (W985NA9); Northwich (W999-2003)	NE/NW	Eng NE NW	Alevel	< 2	primary	fairly	fully	W	W	W	W	E	W	E	E	E	E	3	4	4	4	4	5	4	5	4	3	3	W	5	5	2596	0.5	4	Fusser4
AMR	Amranwen	15/12/2005	W	F	23/08/1969	36	Ysgrifenyddes	Administrator	Aberdaron, Gwynedd (W969-W989); Oxford (W989NA3) ; Rhos Isaf, Gwynedd (W993NA7); Groeslon, Gwynedd (W997-05)	NW	Eng NW	Alevel	< 2	< 2	fully	fully	W	W	W	W	W	W	E	E	W	W	5	5	5	5	5	5	2	5	5	3	3	W	5	2	921	4.7999999999999998	5	Fusser6
ANT	Anton	15/12/2005	W	F	11/08/1953	52	Darlithydd	Lecturer	Pontrhydfendigaid, Ceredigion (W953-72); Caerdydd (W972-74); Capel Curig (W974-2005)	SW	NW SW	graduate	< 2	< 2	fully	fully	E	WE	WE	WE	WE	W	WE	W	WE	E	5	5	5	5	5	5	5	5	3	3	2	W	1	2	3337	6.0999999999999996	3	Fusser6
BAR	Barri	20/01/2006	W	M	07/10/1948	57	Gweithiwr Datblygu Cymunedol	Community worker	Llangefni (W948-70); Dwyran, Mon (W970-75); Harlech (W975-77); Abertawe (W977-8W); Caernarfon (W98W-2006)	NW	NW SW	graduate	< 2	< 2	fully	fully	W	E	NA	E	E	W	W	E		W	5	5	5	4	5	5	5	5	4	4	5	O	1	3	3415	0.59999999999999998	4	Fusser10
BLO	Blodwen	12/01/2006	E	F	08/04/1969	36	Arweinydd Cylch Feithrin	Community worker (management)	Caernarfon (W969-2006)	NW	NW	Alevel	< 2	primary	fully	fairly	W	W	W	W	W	W	W	W	W	W	3	3	3	3	3	3	3	3	3	3	3	W	3	3	2301	5.2999999999999998	3	Fusser7
GLA	Glain	22/06/2007	W	F	22/12/1971	35	Offeiriad Plwyf	Clergy	Tiel, Yr Iseldiroedd (W974NAW); Utrecht (W99W-4); Caerdydd (W994-5; W998NA9); Leiden (W995NA8); Dolgellau (W999-200W); Bangor (200W-2); Bodorgan, Sir Fon (2002-06); Blaenau Ffestiniog (2006-07)	Abroad	NW SE Abroad	postgrad	adult	secondary	fairly	fully	O	O		O	O	O	E	E	W	W	5	5	5	5	5	3	5	5	5	4	5	O	2	3	2046	0.90000000000000002	3	Davies17
BEC	Beca	31/08/2005	W	F	12/12/1973	31	Cynllunydd Setiau Teledu	Designer	Llandwrog (W973NA2); Brisbane, Australia (W999-0W); Birmingham (W994NA7); Dulyn (W992-3); Caernarfon (2002-)	NW	Eng Ire NW Abroad	graduate	< 2	< 2	fully	fully	W	W	NA	W	W	E	W	W	W	W	3	4	4	4	5	3	4	4	3	3	3	W	4	2	3572	1	3	Fusser3
ANG	Angharad	13/01/2006	W	F	15/05/1935	70	Dosbarthu papurau wythnosol	Newsagent	Tydweiliog (W935-89); Pwllheli (W989-2006)	NW	NW	Alevel	< 2	adult	fairly	fairly	W	W	W	W	E	W	W	W	W	W	5	5	5	5	5	5	5	5	5	5	3	W	5	5	3250	14.699999999999999	5	Fusser8
BRE	Brenda	13/01/2006	W	F	15/07/1945	60	Prifathrawes	Head teacher	Lancashire W967-75	NW	Eng NW	graduate	< 2	primary	fully	fully	W	W	NA	W	E	W	W	W	W	W	5	5	5	5	5	5	5	5	5	5	3	W	5	5	4327	0.29999999999999999	5	Fusser8
DYF	Dyfed	08/12/2005	W	M	01/07/1976	29	Canwr & Myfyrwyr	Musician	Wrexham (W976NA4; 95NA6); Caerfyrddin (W994NA5); Birmingham (W997NA8); Bangor (W998-05)	NE	Eng NE NW SW	postgrad	< 2	primary	fully	fully	W		WE	W	W	W	E	W	E	E	5	5	5	5	5	5	5	5	5	5	5	W	2	1	1527	1.8999999999999999	5	Fusser5
GWE	Gwenith	08/12/2005	W	F	05/06/1969	36	Cydlynydd Ieuenctid Cymorth Cristnogol Cymru	Charity worker	Crymych, Sir Benfro (W969-76); Bangor (W976-87; W990-2005); Aberystwyth (W987NA0)	SW	NW SW	postgrad	< 2	primary	fully	fully	W	W	NA	W	W	W	W	W	W	W	5	5	5	5	5	5	5	5	3	2	2	W	4	4	2209	2.7000000000000002	5	Fusser5
MEN	Menna	13/01/2006	W	F	25/02/1946	59	Trin Gwallt	Hairdresser	Gwynedd (erioed)	NW	NW	Alevel	< 2	primary	fully	fairly	W	W	W	W	WE	W	W	W	W		5	5	5	5	5	3	2	2	2	3	3	W	5	5	5472	2.3999999999999999	5	Fusser8
SAR	Sara	15/12/2005	W	F	09/10/1986	19	Myfyrwraig	Student	Talgarreg, Ceredigion (W986-)	SW	SW	Alevel	< 2	primary	fully	basic	W	W		W	W	W	W	W	W	W	4	5	5	5	5	5	3	4	3	3	1	W	4	4	4018	2.7999999999999998	5	Davies1
AED	Aeddan	25/01/2006	W	M	23/05/1953	52	Ffermwr	Farmer	Bethesda (53-06)	NW	NW	none	< 2	primary	fairly	fairly	W	W	W	WE	WE	W	W	W	E	WE	5	4	4	4	5	4	3	4	3	3	2	W	5	4	4923	1.5	4	Fusser11
AWE	Awel	07/02/2006	W	F	19/07/1958	47	Awdures	Writer	Llanwnda, Arfon (W959-76; 80NA5); Aberystwyth (W976-78); Bangor (W979-80); Penygroes, Arfon (W995-06)	NW	NW SW	postgrad	< 2	primary	fully	fairly	W	W	W	W	E	W	W	W	W	W	4	5	5	5	5	5	5	5	3	4	4	W	4	5	1410	0.69999999999999996	3	Fusser14
GAI	Gail	09/08/2006	W	F	19/11/1989	16	Ysgol	School Student	Abergwyngregyn	NW	NW	GCSE	< 2	< 4	fully	fully	W	W	WE	W	W	W	W	W	E	W	4	5	5	5	5	5	5	5	3	2	2	W	2	4	1431	2.7000000000000002	5	Davies7
NON	Non	15/12/2005	W	F	02/03/1987	18	Myfyrwraig	Student	Pumsaint, Sir Gar (W987-2005)	SW	SW	Alevel	< 2	< 4	fully	fairly	W	W	W	W	W	W	W	W	W	W	4	4	5	4	5	5	5	5	1	2	3	W	2	3	2326	2.7000000000000002	4	Davies1
ION	Iona	02/02/2006	W	F	09/07/1960	45	Swyddog Datblygu - Bwrdd yr Iaith	Civil servant	Llangernyw (W960-83); Talwrn (W986NA6); Llanfairpwll (04-06)	NW	NW	GCSE	< 2	< 4	fully	fairly	W	W	W	WE	WE	W	W	W	W	W	4	5	5	5	5	5	5	4	4	4	3	W	4	4	4143	1.3	5	Roberts2
IRW	Irwen	02/02/2006	W	F	31/05/1960	45	Swyddog Marchnata	Marketing officer	Llangoed, Ynys Mon (W960-89); Talwrn, Ynys Mon (W989-06)	NW	NW	GCSE	< 2	< 4	fully	fully	W	W		WE	WE	W	W	W	W	E	3	3	3	3	3	3	3	3	3	3	3	W	3	2	4379	1.5	3	Roberts2
LIL	Lili	15/02/2006	W	F	12/12/1984	21	Myfyrwraig Nyrsio	Student	Meifod, Powys (W984-06); Bangor (2004-06)	Mid	Mid NW	Alevel	< 2	< 4	fully	fully	WE	WE	E	E	W	E	E	E	W	W	4	5	5	5	5	4	4	5	3	3	4	W	3	4	4053	3.6000000000000001	5	Roberts4
LNW	Lunwen	02/02/2006	W	F	12/08/1987	18	Ar flwyddyn gap ac yn mynd i'r brifysgol flwyddyn nesaf	Student	Llanfrothen (W987-06)	NW (Mid)	NW	Alevel	< 2	< 4	fully	fully	W	W	W	W	W	W	W	W	W	W	3	4	5	5	5	4	4	4	4	4	4	W	4	4	3800	0.90000000000000002	4	Fusser12
OLW	Olwen	18/02/2006	E	F	06/01/1978	28	Shop Manager (Retail)	Shop manager	Caernarfon	NW	NW	GCSE	< 2	< 4	fully	fully	W	W	W	W	W	W	W	E	W	E	3	3	4	4	5	5	3	3	1	3	1	W	1	1	4450	5.7000000000000002	4	Fusser19
BED	Bedo	25/01/2006	W	M	01/07/2028	77	Peiriannydd Ceir	Mechanic	Bethesda; Tregarth	NW	NW	GCSE	< 2	primary	fully	fully	W	W	NA	WE	NA	W	W	W	W	W	3	5	5	5	5	5	1	5	5	1	3	W	5	4	5926	1	5	Fusser11
SIR	Siriol	09/02/2006	W	F	17/11/1937	68	Ymddeol Gofal Cartref am 5 mlynedd 60-65	Carer	Pencaenewydd (W937-62); Aberdaron (W962-06)	NW	NW	none	< 2	secondary	fully	basic	W	W	W	W	WE	W	W	W	W		3	4	5	5	5	4	3	3	4	4	3	W	4	4	4341	0.10000000000000001	5	Fusser16
GRE	Greta	09/03/2006	W	F	08/06/1982	23	Myfyrwraig	Student	Bangor (W982-2000; 2003-6); Lerpwl (2000-03)	NW	Eng NW	graduate	< 2	primary	fully	fairly	W	W	W	W	W	W	W	W	E	E	3	5	5	5	5	5	5	5	3	3	2	W	5	4	5313	4.2999999999999998	4	Davies2
HEL	Heledd	01/03/2006	E	F	03/06/2024	81	Retired S R Nurse	Nurse	Bethesda (W924-42; 52-?); Abergele (W942-46); Manchester (W946-52)	NW	Eng NE NW	Alevel	< 2	primary	fairly	fairly	W	W	W	W	E	W	W	W	W	W	1	5	4	4	5	4	4	5	4	4	5	W	2	2	4289	2.2999999999999998	4	Fusser23
HUN	Hunydd	03/03/2006	E	F	01/09/1980	25	Bank Clerk	Bank Clerk	Liverpool (W980-82); Llanfairpwll (W982-7); Oswestry, Shrops (W987-2002); Harlech, Gwynedd (2002-06)	Eng/NW	Eng NW	graduate	< 2	primary	fairly	fully	W	W	W	E	E	W	W	E	W	WE	2	4	4	4	4	2	3	4	3	3	3	W	1	1	2620	15.4	2	Fusser25
HUW	Huw	07/03/2007	W	M	28/04/1940	66	Farmwr	Farmer	Penysarn W940-07	NW	NW	none	< 2	primary	fully	fairly	W	W	NA	W	WE	W	W	W	E	W	3	5	5	4	5	5	3	3	2	3	3	W	4	4	366	1.8999999999999999	3	Robert7
IOL	Iola	14/03/2006	E	F	11/12/1936	69	Senior Nurse Manager	Nurse (management)	Bethesda, Gwynedd (W936-58); London (W958-62); Llanfairfechan (W962-2006)	NW	Eng NW	postgrad	< 2	primary	fully	fully	W	W		W	WE	W	WE	WE	E	W	5	5	5	5	4	3	4	5	3	3	4	W	2	2	4459	2.3999999999999999	3	Fusser26
LON	Lona	17/03/2006	W	F	28/10/1980	25	Swyddog Datblygu Cymunedol	Community worker	Nefyn, Gwynedd (W980-05); Chwilog, Gwynedd (2005-06)	NW	NW	graduate	< 2	primary	fully	fairly	W	W		W	W	W	W	W	W	W	4	5	5	5	5	4	3	5	3	2	2	W	4	4	3259	1	4	Fusser30
MAT	Mathew	20/03/2006	W	M	14/03/1942	64	Athro ysgol - wedi ymddeol	Teacher	Carmel (W942-6W); Bangor (W962-65); Lerpwl (W965-68; 69-73); Awstralia (W968-69); Rhostryfan (W973-2006)	NW	Eng NW Abroad	graduate	< 2	primary	fully	fully	W	W	NA	W	E	W	W	W	W	W	5	5	5	5	5	4	3	3	3	3	3	W	1	5	2049	0.80000000000000004	5	Fusser32
GWY	Gwylan	09/03/2006	W	F	03/04/1982	23	Actores	Actor	Conwy (W982-88); Abertawe (W988NAW); Bangor (W99W-0W; 04-06); Caeredin (200W-04)	NW/SW	NW SW Sco	graduate	< 2	< 4	fully	fairly	W	E	WE	W	W	W	W	W	E	W	4	5	5	4	5	4	3	4	4	3	3	W	5	4	3444	1.1000000000000001	3	Davies2
HAW	Hawen	24/02/2006	W	F	30/08/1989	16	Dal yn yr ysgol - Lefel A	School Student	Bethesda	NW	NW	GCSE	< 2	< 4	fully	fairly	W	W	W	W	W	W	W	W	W	W	3	5	5	3	5	4	5	4	3	4	2	W	3	4	2969	2.1000000000000001	3	Fusser21
HEC	Hector	02/08/2006	W	M	30/06/1983	23	Athro Ysgol Gynradd	Teacher	Talwrn, Ynys Mon	NW	NW	graduate	< 2	< 4	fully	fully	W	W	W	W	W	W	W	W	E	W	2	5	5	5	5	3	3	5	3	2	2	W	3	3	2699	6.5999999999999996	5	Davies6
IFO	Ifor	16/03/2006	W	M	29/11/1975	30	Rheolwr Siop - Gwerthwr	Shop manager	Tremadog (W975-06)	NW	NW	Alevel	< 2	< 4	basic	fully	W	W	W	W	W	W	W	W	W	W	3	4	2	2	4	2	2	2	3	3	2	B	2	4	1294	21.5	2	Fusser28
ILI	Ilid	24/02/2006	W	F	13/12/1988	17	Disgybl Ysgol Uwchradd	School Student	Bethesda	NW	NW	GCSE	< 2	< 4	fully	fairly	W	W	W	W	W	W	W	W	W	W	3	5	5	5	5	3	4	5	4	4	5	W	3	4	7080	2.6000000000000001	3	Fusser21
LOI	Lois	17/03/2006	W	F	25/07/1980	25	Gweithwraig Prosiect Pobl Ifanc	Community worker	Llanrug (W980NA9); Bangor (W999-2004); Felinheli, Gwynedd (2004-6)	NW	NW	graduate	< 2	< 4	fully	fully	W	W	W	W	WE	W	W	W	W	W	4	5	4	4	5	4	4	4	4	4	3	W	2	5	2029	13	4	Fusser29
SER	Seren	18/08/2006	E	F	13/09/1941	64	School Cook	Cook	Mochdre (W94W-63); Colwyn Bay (W963-68); Old Colwyn (W968-06)	NW	NE NW	none	< 2	primary	fully	fully	W	W		E	WE	WE	E	E	W	WE	3	5	5	4	5	3	4	5	4	3	3	W	1	1	3258	2.2000000000000002	4	Deuchar1
LLA	Llawdden	16/03/2006	W	M	04/08/1984	21	Salesman	Salesperson	Llangybi Pwllheli (W984-2006); Aberystwyth (200W-04)	NW	NW SW	graduate	< 2	secondary	fully	fairly	W	W	W	W	W	W	W	E	E	W	3	3	5	5	5	5	3	5	3	1	3	W	2	4	817	5.7999999999999998	5	Fusser28
CYN	Cynddylan	10/04/2006	E	M	28/04/1948	57	Carer to wife; Carpenter/Joiner by trade	Carpenter/Carer	Aberffraw (W948-68); Rhosneigr (W968-2003); Llanfaelog (2003-06)	NW	NW	Alevel	< 2	secondary	fully	fully	W	W	W	W	W	E	W	E	W	W	1	5	3	1	5	5	3	5	5	3	2	W	3	1	3615	3.2000000000000002	5	Davies4
ELE	Eleri	16/10/2006	W	F	13/10/1966	40	Athrawes	Teacher	Llandudno (W966-85); Bangor (W985-06)	NW	NW	postgrad	< 2	primary	fully	fully	W	W	W	W	W	W	W	W	W	W	5	5	5	5	5	5	5	5	5	5	5	W	5	4	1927	1.1000000000000001	5	Stammers4
MYF	Myfanwy	18/08/2006	E	F	30/12/1940	65	Cook-in-charge in School	Cook	Manchester (W940-45; 58-60); Old Colwyn (W945-58; 64-06); Liverpool (W960-63)	Eng/NW	Eng NW	Alevel	< 2	primary	fairly	fully	W	W	W	E	E	E	E	E	WE	WE	3	5	4	5	5	5	5	5	4	4	3	W	2	1	2641	4.0999999999999996	4	Deuchar1
RIS	Rhisiart	23/10/2006	W	M	15/05/1987	19	Myfyriwr	Student	Treffynnon, Sir y Fflint (W987-2006); Bangor (2005-2006 -yn ystod yr wythnos)	NE	NE	Alevel	< 2	primary	fully	fully	W	E		W	W	W	E	W	W	E	3	3	4	4	5	5	5	5	4	3	3	W	2	2	3513	4.9000000000000004	3	Robert2
TOS	Tostig	07/04/2006	W	M	14/06/1990	15	Myfyriwr yn yr ysgol uwchradd	School Student	Y Felinheli (W990NA4); Bangor (W994-2006)	NW	NW	none	< 2	primary	fully	fairly	W	W	W	WE	WE	W	W	W	W	W	3	4	4	4	5	5	4	5	5	4	3	W	2	2	4048	5.4000000000000004	4	Davies3
CLR	Claire	07/03/2007	E	F	26/08/1949	57	Court Usher	Court Usher	Bryn Teg Mon (W949-67); Glan Llyn Mon (W979-07)	NW	NW	none	< 2	primary	fully	fully	W	W		W	W	W	E	W	W	W	3	5	5	5	5	5	5	5	5	5	4	W	1	3	3627	9.3000000000000007	5	Robert7
DER	Derwena	19/10/2006	W	F	08/03/1934	72	Ymddeol - dirprwy bennaeth ysgol uwchradd	Teacher (management)	Conwy-Llechwedd (W934-62); Talwrn (W962-06)	NW	NW	graduate	< 2	primary	fully	fully	W	W		WE	E	W	W	WE	WE	W	4	5	5	5	5	4	4	3	3	3	3	W	4	3	1142	0	4	Davies11
ELI	Elsi	02/12/2006	W	F	27/06/2017	89	Nyrs wedi ymddeol	Nurse	Dyffryn Ceiriog (W9W7-W949); Caer (4bl rhywbryd cyn W949); Lerpwl (3-4bl rhywbryd cyn W949); Y Barri (2fl rhywbryd cyn W949); Ynys Môn (W949-2006)	NE	Eng NE NW SE	Alevel	< 2	primary	fully	fully	W	W	NA	W	E	W	W	E	W	W	4	5	5	5	5	5	5	4	5	3	4	W	3	5	5528	1.7	4	Robert5
GWA	Gwanwyn	23/01/2007	W	F	26/05/1953	53	Rhedeg Siop Masnach Deg	Shop manager	Deiniolen (W955-62); Bangor (62-69); Caernarfon (69-73); Bethesda (73-76); Gaerwen, Mon (76-83); Porthaethwy (83-07)	NW	NW	graduate	< 2	primary	fairly	fully	WE	W	NA	W	E	E	WE	W	WE	E	3	5	5	5	5	4	5	5	3	4	3	W	3	2	2963	1.7	4	Davies14
KIM	Kim	06/11/2006	W	F	19/10/1981	25	Myfyriwr gwaith cymdeithasol	Student	Tynygongl, Ynys Môn (W98W-2006); Caerdydd (200W-2004)	NW	NW SE	graduate	< 2	< 4	fully	fairly	W	W	WE	W	W	W	W	W	W	E	4	4	5	4	5	4	3	5	2	3	2	W	2	1	4207	3.7999999999999998	4	Robert4
LOR	Lora	20/03/2006	W	F	28/05/1980	25	Cyfieithydd Llawrydd	Translator	Rhostryfan, Gwynedd (W980NA9); Bangor (W999-0W); Caernarfon (200W-02); Groeslon, Gwynedd (2002-06)	NW	NW	graduate	< 2	< 4	fully	fully	W	W		W	W	W	W	W	W	W	4	5	5	5	5	5	3	4	3	2	4	W	3	3	2535	0.59999999999999998	4	Fusser32
STE	Steffan	20/03/2006	W	M	10/09/1971	34	Golygudd Video / Teledu	TV editor	Caernarfon (W97WNA0; 93-200W) Bangor (W980NA3); Groeslon, Gwynedd (200W-06)	NW	NW	Alevel	< 2	< 4	fully	fully	WE	WE	NA	W	W	W	W	W	W	W	3	5	5	5	5	4	4	5	3	4	4	W	2	3	1260	1.3999999999999999	5	Fusser32
TRA	Tracy	09/08/2006	W	F	12/02/1992	14	Ysgol	School Student	Pentir, Gwynedd	NW	NW	none	< 2	< 4	fully	fairly	W	W	WE	W	W	W	W	W	W	W	5	5	5	5	5	4	5	4	5	4	4	W	2	1	1224	2.8999999999999999	5	Davies7
CLE	Cledwyn	19/10/2006	W	M	05/10/1948	58	Ffermwr	Farmer	Talwrn	NW	NW	graduate	< 2	< 4	fully	fully	W	W	W	WE	WE	W	W	W	W	W	5	5	5	5	5	5	5	5	5	5	5	W	5	3	2955	0.40000000000000002	5	Davies10
GWN	Gwyn	05/03/2007	W	M	07/09/1981	25	Swyddog plant ac ieuenctid	Youth worker	Bangor	NW	NW	graduate	< 2	< 4	fully	fully	W	W		W	W	W	W	W	W	W	3	5	5	5	5	3	5	5	5	4	5	W	2	2	3828	3.2000000000000002	5	Stammers7
KAT	Kath	06/11/2006	W	F	08/04/1982	24	Myfyriwr	Student	Bangor (W982-W990); Talysarn (W990-W999); Waunfawr (W999-2006)	NW	NW	graduate	< 2	secondary	fully	fairly	W	W	NA	W	W	W	W	W	W	W	5	5	5	5	5	3	3	4	3	2	3	W	2	4	1742	6.2000000000000002	5	Robert4
IFA	Ifan	11/01/2007	W	M	23/01/1958	48	Gweithiwr Cymdeithasol	Social Worker	Bethesda (W960-77; 82-07); Manceinion (W977-82)	NW	Eng NW	postgrad	< 2	primary	fully	fully	W	W	W	WE	WE	W	W	W	W	W	5	5	5	5	5	5	5	5	3	3	3	W	3	3	4211	2.3999999999999999	3	Stammers6
ENF	Enfys	09/03/2007	W	F	19/10/1939	67	Athrawes (wedi ymddeol)	Teacher	Glan Conwy (W939-75); Bae Colwyn (W975-07)	NW	NW	graduate	< 2	primary	fully	fairly	W	W	W	W	E	W	W	W	W	W	4	4	5	4	5	4	5	4	3	4	4	W	5	5	2763	0.10000000000000001	3	Stammers9
GOR	Gordon	29/03/2007	W	M	28/10/2025	81	Process Supervisor	Management	Amlwch (W925-2007)	NW	NW	none	< 2	primary	basic	basic	W	W	W	WE	NA	W	W	W	W	W	5	3	5	5	3	3	3	5	5	3	3	W	4	3	1710	1.6000000000000001	3	Robert8
INT	Ianto	29/03/2007	W	M	03/07/2024	82	Farmer (retired)	Farmer	Amlwch	NW	NW	none	< 2	primary	fairly	fairly	W	W	NA	E	NA	WE	WE	W	W	W	3	3	4	3	3	3	3	4	3	3	3	O	3	3	1274	2.2000000000000002	3	Robert8
ISL	Islwyn	09/03/2007	W	M	09/11/1940	66	Amaethwr (Gwladwr)	Farmer	Pentre Helygain (W940-43); Treffynnon, Sir Fflint (W943-07)	NE	NE	none	< 2	primary	fully	fully	W	W	W	WE	E	NA9	NA9	NA9	NA9	NA9	5	5	5	5	5	3	3	1	1	2	1	W	5	3	2650	2.2000000000000002	5	Stammers8
RNW	Rhianwen	09/03/2007	W	F	09/08/1936	70	Gweithio adref ar y fferm a man swyddi	(worked at home on farm & workplaces)	Glan Conwy (W936-75); Bae Colwyn (W975-07)	NW	NW	Alevel	< 2	primary	fully	basic	W	W	W	W	E	W	W	W	W	W	5	5	5	3	5	5	5	3	4	4	4	W	4	4	1107	0.20000000000000001	5	Stammers9
STN	Stanley	29/03/2007	W	M	31/05/2020	86	Electrician (retired)	Electrician	Amlwch (W925-4W; 48-50; 5W-2007); "Sea" (W94W-8); Llangwyfan, Denbigh (W950-W)	NW	NW Abroad	none	< 2	primary	fairly	fairly	W	W	NA	E	NA	W	W	W	W	W	3	3	4	3	4	4	3	4	4	3	3	W	3	3	821	2.3999999999999999	3	Robert8
EML	Emlyn	29/03/2007	W	M	26/04/2027	79	Security Guard (retired)	Security Guard	Sir Fon; Army (inc. Egypt/Cyprus - W7 years); S. Wales Borders (4yrs)	NW	NW SE Abroad	none	< 2	secondary	fully	fairly	W	W	NA	W	NA	W	W	W	W	W	3	4	5	4	4	3	2	4	3	2	4	W	3	3	1860	1.5	2	Robert8
LIN	Lina	02/12/2006	W	F	28/11/1947	59	Cyfieithydd hunangyflogedig	Translator	Glynceiriog (W947-49); Llangefni, Ynys Môn (W95W-W96W); Aberystwyth, Ceredigion (W965-W970); Creigiau a Llantrisant, Morgannwg (W970-2006)	NE/NW	NE NW SE SW	postgrad	< 2	< 4	fully	fully	W	W	W	W	E	W	W	W	E	W	3	4	5	3	5	5	5	4	3	3	3	W	4	4	1868	0.59999999999999998	2	Robert5
MIC	Michael	19/10/2006	W	M	14/11/1953	52	Peirianydd	Engineer	Llangoed, Ynys Mon (W953-77); Talwrn, Ynys Mon (W977-06)	NW	NW	GCSE	< 2	< 4	fairly	basic	W	W	W	W	WE	W	W	E	W	E	5	5	5	5	5	5	5	5	5	3	3	B	3	3	2040	0.90000000000000002	4	Davies10
RAC	Rachel	19/10/2006	W	F	09/07/1954	52	Gweinyddol	Administrator	Aberystwyth (W954-78); Hereford (W979-84);?Llangale (82-88); Ynys Mon (88-06)	SW	Eng NW SW	postgrad	< 2	< 4	fully	fully	W	W	W	E	E	E	W	W	W	W	3	4	4	4	4	4	4	4	4	4	4	W	3	3	1480	0.69999999999999996	4	Davies11
CLV	Clive	29/03/2007	W	M	29/09/2029	77	Pharmacy Dispenser	Pharmacist	Amlwch (W930-2007)	NW	NW	Alevel	< 2	< 4	basic	basic	W	W	W	WE	WE	W	W	W	WE	O	3	5	3	3	3	3	3	5	3	3	3	W	4	4	257	2.7000000000000002	3	Robert8
JEA	Jean	24/03/2008	W	F	26/02/1955	53	Gweinyddes Swyddfa mewn Garej	Administrator	Dyffryn Ardudwy (W955-75); Talybont (Bermo) (W975-2008)	NW	NW	GCSE	< 2	< 4	fully	fairly	W	W		W	W	WE	W	W	W	blank	3	5	5	4	5	4	2	3	2	3	3	W	2	3	1939	7.0999999999999996	4	Lloyd1
MOR	Morfydd	27/12/2006	W	F	19/03/1979	27	Account executive mewn PR	Public Relations officer	Creigiau (W979-W997); Llambed (W997-2000); Sydney, Awstralia (2003-2004); Llundain (2005-2006)	SE	Eng SE SW Abroad	graduate	< 2	< 4	fully	fully	W	WE	WE	W	W	W	E	E	W	E	5	5	5	5	5	5	5	5	5	5	5	W	1	1	3029	8.4000000000000004	5	Robert6
NEL	Nel	08/02/2007	W	F	25/04/1983	23	Myfyriwr PhD	Postgraduate Student	Minffordd, Penrhyndeudraeth (W983-0W; 2004-07) ; Aberystwyth (200W-04)	NW	NW SW	postgrad	< 2	< 4	fairly	fairly	W	W	NA	W	W	W	W	W	W	W	5	5	5	5	5	4	5	5	4	4	3	W	4	4	3426	2	5	Davies15
TWM	Twm	07/03/2007	W	M	18/03/1972	34	Postman	Postman	Penysarn (W972NA8); Amlwch (W998-07)	NW	NW	GCSE	< 2	< 2	NA	NA	WE	WE	WE	W	WE	W	WE	W	W	W	4	4	4	4	4	4	4	5	4	4	3	W	4	4	2615	1.1000000000000001	4	Robert7
ADD	Adda	20/01/2006	W	M	01/01/1953	53	Gweinyddwr	Administrator	Caernarfon (53-06)	NW	NW	GCSE	< 2	< 4	fully	fully	W	W		WE	WE	W	W	WE	WE	W	4	5	5	5	5	5	5	3	4	3	1	W	5	4	3550	0.59999999999999998	5	Fusser10
AID	Aidan	01/03/2006	W	M	04/04/1934	71	Dysgu	Teacher	Llangynog (W934-52); Yr Almaen (W953-55); Llunden (W959-72); Drenewydd (W972NA0); Llanfihangel (90-2000); Harlech (2000-04)	SW	Eng Mid NW Abroad	graduate	< 2	< 4	fairly	fairly	WE	WE	NA	W	W	W	W	W	E		4	5	4	5	5	5	5	4	3	4	4	W	4	2	3926	2.2999999999999998	4	Fusser23
ALN	Alan	16/10/2006	W	M	02/10/1964	42	Darlithydd	Lecturer	Llundain (W965-68); Bangor (W968-06)	Eng/NW	Eng NW	graduate	< 2	< 4	fully	fully	WE	WE	O	W	W	W	W	WE	W	E	4	5	5	4	5	5	5	5	5	3	3	W	3	5	2690	1.3	4	Stammers4
ARF	Arfon	19/03/2006	W	M	05/06/1962	43	Rheolydd Mentrau Cymunedol	Community worker (management)	Llangollen (W962-66; W980-82); Wrecsam (W966-80); Lloegr (W98W-88); Trallwng, Powys (W988NA8); Fron Caernarfon (W996-2006)	NE/NW	Mid NE NW	Alevel	< 2	< 4	fully	fully	W	W	NA	W	E	E	W	W	W	W	4	5	4	5	5	5	5	5	3	3	2	W	2	1	2929	3.6000000000000001	5	Fusser31
BLW	Blodeuwedd (Blod)	11/01/2007	W	F	16/10/1988	18	Myfyriwr	Student	Bethesda	NW	NW	Alevel	< 2	< 4	fully	fully	W	W	W	W	W	W	W	W	W	E	5	5	5	5	5	5	5	5	5	3	1	W	3	3	2561	11.800000000000001	3	Stammers6
PEN	Penri	25/06/2007	W	M	17/05/1972	35	Myfyriwr prifysgol	Student	Penygroes - Caernarfon (W972-W992); Bangor - Caernarfon (W992-W996); Aberystwyth (W996-W997); Penygroes - Caernarfon (W997 - presennol)	NW	NW SW	postgrad	< 2	< 4	fully	fairly	W	W	W	W	W	W	W	E	WE	E	5	5	4	5	5	5	5	5	3	3	2	W	2	2	1973	2.6000000000000001	3	Robert9
ADA	Adam	26/02/2007	W	M	21/11/1990	16	Disgybl	School Student	Gaerwen, Ynys Mon (90NAW); Llanfairpwll (W99W-07)	NW	NW	none	< 2	< 4	fully	fully	W	W		W	W	W	W	E	E	W	4	4	5	4	3	3	2	4	2	3	2	W	3	2	2721	9.8000000000000007	3	Davies16
ABE	Abel	16/01/2006	W	M	16/05/1947	58	Darlithydd / Trefnydd Cyrsiau	Lecturer	Clynnog, Caernarfon (W947-68; Aberystwyth (W969-70; W976-79); Bangor (W970-76); Maentwrog, Meirionydd (W979-84); Nefyn (W984NA0); Betws-y-Coed (W990NA2); Nebo, Caernarfon (W992-2006)	NW	NW (Mid)	postgrad	< 2	primary	fully	fully	W	W	W	W	WE	W	W	W			5	5	5	5	5	5	4	5	4	4	4	W	4	5	5163	1.3999999999999999	5	Fusser9
ENA	Ena	08/12/2005	W	F	15/01/1963	42	Swyddog Datblygu Mewn Elusen	Charity worker	Penmaenmawr (W963-75); Wrecsam (W975NA); Treorci (W986NA0); Aberystwyth; Caernarfon	NW	NE NW SE SW	graduate	< 2	primary	fully	fully	W	WE	W	W	W	W	W	W	W	W	5	5	5	5	5	5	5	5	5	5	4	W	3	3	2576	2.3999999999999999	5	Fusser5
GTH	Gethin	10/03/2006	W	M	08/03/1934	72	Wedi Ymddeol - Prif Swyddog Cyngor Iechyd Cymunedol	Civil Servant (management)	Machynlleth (W934-55); Bangor (W955-7W; W976-2006); Flint (W97W-73); Conwy (W976)	Mid	Mid NE NW	GCSE	< 2	primary	fully	fully	W	W	NA	W	E	W	W	W	W	W	3	3	4	4	3	3	3	3	3	3	3	W	4	4	3647	2.1000000000000001	4	Stammers1
MED	Medeni	09/02/2006	W	F	02/05/1949	56	Swyddog Diogelwch y Ffyrdd	Civil Servant	Mynydd Llandegai (W949-72); Penbedw (W972-75); Yr Wyddgrug (W975-80); Prestatyn (W980-85); Rhoslan (W985NA0); Porthmadog (W990-04); Rhos Isaf, Caernarfon (2004-06)	NW	Eng NE NW	graduate	< 2	primary	fully	fairly	W	W		W	W	W	W	W	E	W	4	4	4	4	5	4	3	4	4	3	3	W	2	2	4864	1.3999999999999999	4	Roberts3
REG	Reginald	22/10/2006	W	M	30/11/1976	29	Swyddog ymchwil ar gyfer plaid gwleidyddol	Researcher	Trelech, Sir Gaerfyrddin (W976-W996); Aberystwyth (W996-W999); Trelech, Sir Gaerfyrddin (W999-200W); Caerdydd (200W-2006)	SW	SE SW	graduate	< 2	primary	fully	fully	W	W		W	W	W	W	E	W	WE	3	4	5	4	4	4	5	4	4	4	4	W	3	3	2086	3.7999999999999998	4	Robert1
ANW	Anwen	09/02/2006	W	F	23/03/1936	69	Athrawes	Teacher	West Kirby (W936-40); Rhiw, Gwynedd (W940-55; 62-06); Manchester (W955-58); Caer, Machynlleth (W962)	Eng/NW	Eng NW (Mid)	graduate	< 2	secondary	fully	fairly	W	W	NA	W	W	W	W	W	W	W	3	5	2	5	5	5	3	3	2	1	3	W	4	4	3853	0.40000000000000002	4	Fusser16
EIF	Eifion	10/03/2006	W	M	25/10/1944	61	Rhan Amser - Swyddog Gwybodaeth	Information Officer	Dyffryn Ardudwy (W944-63); Bangor (W963-66; W973-06); Birmingham (W966-68); Croesoswallt-Trallwng (W968-73)	NW	Eng Mid NW	Alevel	< 2	secondary	fully	fairly	W	W	W	W	E	W	W	E	W	E	4	4	4	4	4	4	4	4	3	4	3	W	3	4	2222	0	3	Stammers1
\.


--
-- Name: newtab_pkey; Type: CONSTRAINT; Schema: public; Owner: kevin; Tablespace: 
--

ALTER TABLE ONLY questionnaire
    ADD CONSTRAINT newtab_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

