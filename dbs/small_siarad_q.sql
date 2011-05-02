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
-- Name: small_siarad_q; Type: TABLE; Schema: public; Owner: kevin; Tablespace: 
--

CREATE TABLE small_siarad_q (
    id character varying(3),
    pseudonym character varying(20),
    filename character varying(20),
    sex character varying(1),
    dob character varying(20),
    age character varying(5),
    welsh_since character varying(5),
    english_since character varying(5),
    mother_spoke character varying(5),
    father_spoke character varying(5),
    primary_lang character varying(5),
    secondary_lang character varying(5),
    contact1 character varying(5),
    contact2 character varying(5),
    contact3 character varying(5),
    contact4 character varying(5),
    contact5 character varying(5),
    nat_id character varying(5)
);


ALTER TABLE public.small_siarad_q OWNER TO kevin;

--
-- Data for Name: small_siarad_q; Type: TABLE DATA; Schema: public; Owner: kevin
--

COPY small_siarad_q (id, pseudonym, filename, sex, dob, age, welsh_since, english_since, mother_spoke, father_spoke, primary_lang, secondary_lang, contact1, contact2, contact3, contact4, contact5, nat_id) FROM stdin;
ABE	Abel	Fusser9	M	16/05/47	58	1	3	1	1	1	0	1	1	1			1
ADA	Adam	Davies16	M	21/11/90	16	1	2	1	1	1	1	1	1	3	3	1	1
ADD	Adda	Fusser10	M	01/01/53	53	1	2	1	1	0	0	1	1	2	2	1	1
ADW	Adwen	Fusser4	F	16/12/31	73	1	1	1	1	1	1	1	1	1	3	3	1
AED	Aeddan	Fusser11	M	23/05/53	52	1	3	1	1	0	0	1	1	1	3	2	1
AET	Aethwy	Fusser17	M	29/09/40	65	3	1	2	2	0	0	1	1	3	1	3	1
AID	Aidan	Fusser23	M	04/04/34	71	1	2	0	0	1	1	1	1	1	3		1
ALB	Alban	Fusser25	M	15/07/80	25	1	1	1	2	1	1	1	3	1	3	2	1
ALN	Alan	Stammers4	M	02/10/64	42	1	2	0	0	1	1	1	1	2	1	3	1
ALY	Alys	Fusser3	F	22/02/73	32	1	3	1	1	1	1	1	1	1	1	1	1
AMR	Amranwen	Fusser6	F	23/08/69	36	1	1	1	1	1	1	1	3	3	1	1	1
ANE	Aneira	Fusser7	F	15/05/66	39	3	1	2	2	2	2	3	1	1	1	1	2
ANG	Angharad	Fusser8	F	15/05/35	70	1	5	1	1	1	2	1	1	1	1	1	1
ANN	Ann	Fusser13	F	16/03/44	61	1	3	1	1	1	0	1	1	1	1	1	1
ANT	Anton	Fusser6	F	11/08/53	52	1	1	2	0	0	0	1	2	1	2	3	1
ANW	Anwen	Fusser16	F	23/03/36	69	1	4	1	1	1	1	1	1	1	1	1	1
ARD	Arddun	Fusser18	F	16/02/64	41	-99	3	1	1	1	2	1	1	1	1	1	1
ARF	Arfon	Fusser31	M	05/06/62	43	1	2	1	1	1	2	3	1	1	1	1	1
AWE	Awel	Fusser14	F	19/07/58	47	1	3	1	1	1	2	1	1	1	1	1	1
BAE	Baeddan	Fusser4	M	24/05/51	54	1	3	1	1	1	2	1	3	3	3	3	1
BAG	Baglan	Fusser9	M	11/02/48	57	3	1	2	2	1	2	1	1	1	1	3	1
BAR	Barri	Fusser10	M	07/10/48	57	1	1	1	2	2	2	1	1	3		1	3
BEC	Beca	Fusser3	F	12/12/73	31	1	1	1	1	1	1	3	1	1	1	1	1
BED	Bedo	Fusser11	M	01/07/28	77	1	3	1	1	0	-9	1	1	1	1	1	1
BEI	Beinon	Fusser13	M	09/03/40	65	1	3	1	-99	1	2	1	1	1	1	1	1
BEL	Beli	Fusser14	M	02/08/62	43	5	1	2	2	2	2	1	1	1	1	3	1
BEN	Ben	Fusser17	M	20/07/58	47	5	1	2	2	2	2	3	3	3	3	3	3
BEU	Beuno	Fusser18	M	28/05/64	41	1	1	1	1	2	0	1	1	1	3	3	1
BLO	Blodwen	Fusser7	F	08/04/69	36	1	3	1	1	1	1	1	1	1	1	1	1
BLW	Blodeuwedd (Blod)	Stammers6	F	16/10/88	18	1	2	1	1	1	1	1	1	1	1	3	1
BRE	Brenda	Fusser8	F	15/07/45	60	1	3	1	1	1	2	1	1	1	1	1	1
BRW	Brwyno	Fusser31	M	03/08/93	12	1	1	0	1	1	1	2	2	3	1	1	1
BTI	Beti	Robert3	F	05/04/91	15	1	1	1	2	1	1	1	3	1	1	3	1
CAR	Carys	Stammers8	F	10/04/39	67	1	1	1	1	2	2	3	1	1	1	3	1
CEI	Ceiriog	Smith1	M	09/08/89	17	3	1	0	0	2	0	2	2				4
CER	Ceri	Davies12	F	09/11/85	20	1	1	1	1	1	1	1	2	1	3		1
CEW	Ceinwen	Fusser12	F	09/08/47	58	2	1	2	2	1	2	1	1	1	3	1	1
CHR	Charlotte	Stammers2	F	18/11/95	10	3	1	2	2	1	2						2
CLE	Cledwyn	Davies10	M	05/10/48	58	1	2	1	1	0	0	1	1	1	1	1	1
CLR	Claire	Robert7	F	26/08/49	57	1	3	1	1	1	1	1	3	1	1	1	1
CLV	Clive	Robert8	M	29/09/29	77	1	2	1	1	0	0	1	1	1	2		1
COL	Colin	Davies5	M	06/06/88	17	1	1	1	1	1	0	1	1	3	1	1	1
CRI	Crisiant	Fusser13	F	27/02/45	60	1	3	1	1	1	2	1	1	1	1	1	1
CRL	Carol	Robert9	F	26/11/83	23	2	1	2	2	1	1	2	1	3	1	3	1
CYN	Cynddylan	Davies4	M	28/04/48	57	1	4	1	1	1	1	3	1	3	1	1	1
DAN	Daniel	Davies6	M	22/05/81	25	1	3	1	1	1	1	1	1	1	1	1	1
DER	Derwena	Davies11	F	08/03/34	72	1	3	1	1	0	2	1	1	2	2	1	1
DEW	Dewi	Smith1	M	24/03/61	45	3	1	0	0	0	0	3	2				1
DYF	Dyfed	Fusser5	M	01/07/1976	29	1	3	1	-99	1	1	1	3	1	3	3	1
EIF	Eifion	Stammers1	M	25/10/44	61	1	4	1	1	1	2	1	1	3	1	3	1
EIR	Eirlys	Robert6	F	18/08/50	56	4	1	2	2	2	2	3	2	1	1	1	1
ELE	Eleri	Stammers4	F	13/10/66	40	1	3	1	1	1	1	1	1	1	1	1	1
ELI	Elsi	Robert5	F	27/06/17	89	1	3	1	1	1	2	1	1	3	1	1	1
EML	Emlyn	Robert8	M	26/04/27	79	1	4	1	1	1	-9	1	1	1	1	1	1
ENA	Ena	Fusser5	F	15/01/63	42	1	3	1	0	1	1	1	1	1	1	1	1
ENF	Enfys	Stammers9	F	19/10/39	67	1	3	1	1	1	2	1	1	1	1	1	1
EVA	Eva	Fusser22	F	06/02/66	40	5	4	3	3	3	3	3	3	0	0	1	3
FLO	Florence	Robert1	F	12/05/81	25	1	1	2	1	1	1	1	3	1	1	3	1
FRE	Frederic	Davies14	M	11/04/39	67	5	1	2	2	2	2	3	2	3	1	1	1
GAI	Gail	Davies7	F	19/11/89	16	1	2	1	1	1	1	1	1	1	3	1	1
GFR	Gwynfor	Fusser15	M	16/06/55	50	1	2	1	1	1	0	1	1	1	1	3	1
GLA	Glain	Davies17	F	22/12/71	35	5	4	3	3	3	3	0	3	3	1	1	3
GLE	Glenys	Robert2	F	01/12/86	19	3	1	2	0	1	1	3	3	3	4		1
GOR	Gordon	Robert8	M	28/10/25	81	1	3	1	1	0	-9	1	1	1	1	1	1
GRE	Greta	Davies2	F	08/06/82	23	1	3	1	1	1	1	1	1	1	3	3	1
GRG	George	Lloyd1	M	18/06/54	53	5	1	2	0	2	2	2	2				1
GTH	Gethin	Stammers1	M	08/03/34	72	1	3	1	1	1	2	1	1	1	1	1	1
GUT	Guto	Stammers3	M	17/11/68	37	1	1	1	1	1	0	1	3	1	1	2	1
GWA	Gwanwyn	Davies14	F	26/05/53	53	1	3	0	1	1	2	3	2	1	2	3	1
GWE	Gwenith	Fusser5	F	05/06/69	36	1	3	1	1	1	1	1	1	1	1	1	1
GWN	Gwyn	Stammers7	M	07/09/81	25	1	2	1	1	1	1	1	1	1	1	1	1
GWY	Gwylan	Davies2	F	03/04/82	23	1	2	1	2	1	1	1	1	1	3	1	1
HAR	Harold	Davies3	M	04/07/92	13	2	3	1	1	0	0	1	1	3	1	1	1
HAW	Hawen	Fusser21	F	30/08/89	16	1	2	1	1	1	1	1	1	1	1	1	1
HEC	Hector	Davies6	M	30/06/83	23	1	2	1	1	1	1	1	1	1	3	1	1
HEF	Hefeydd	Roberts1	M	18/01/80	25	2	3	1	1	1	1	1	1	1	1	1	1
HEL	Heledd	Fusser23	F	03/06/24	81	1	3	1	1	1	2	1	1	1	1	1	1
HEU	Heulwen	Stammers6	F	07/10/57	49	1	3	1	1	1	0	1	1	1	1	1	1
HIL	Hilda	Davies10	F	19/10/43	62	1	3	1	1	1	0	1	1	1	1	1	1
HOW	Howyn	Roberts1	M	06/01/73	33	5	1	2	2	2	2	1	3	1	1	3	1
HUN	Hunydd	Fusser25	F	01/09/80	25	1	3	1	1	2	2	1	1	3	1	2	1
HUW	Huw	Robert7	M	28/04/40	66	1	3	1	1	1	0	1	1	1	3	1	1
HYW	Hywel	Davies16	M	08/11/90	16	1	1	1	0	1	1	1	1	1	1	1	1
IFA	Ifan	Stammers6	M	23/01/58	48	1	3	1	1	0	0	1	1	1	1	1	1
IFO	Ifor	Fusser28	M	29/11/75	30	1	2	1	1	1	1	1	1	1	1	1	4
ILI	Ilid	Fusser21	F	13/12/88	17	1	2	1	1	1	1	1	1	1	1	1	1
INT	Ianto	Robert8	M	03/07/24	82	1	3	1	1	2	-9	2	2	1	1	1	3
IOL	Iola	Fusser26	F	11/12/36	69	1	3	1	1	1	0	1	2	2	3	1	1
ION	Iona	Roberts2	F	09/07/60	45	1	2	1	1	0	0	1	1	1	1	1	1
IRW	Irwen	Roberts2	F	31/05/60	45	1	2	1	1	0	0	1	1	1	1	3	1
ISL	Islwyn	Stammers8	M	09/11/40	66	1	3	1	1	0	2	-99	-99	-99	-99	-99	1
JAM	James	Davies13	M	07/06/87	19	1	1	1	1	1	1	1	1	1	1	1	1
JAQ	Jacqueline	Stammers2	F	11/06/68	38	3	1	2	2	1	2	3	3	3	2	2	2
JEA	Jean	Lloyd1	F	26/02/55	53	1	2	1	1	1	1	2	1	1	1		1
KAT	Kath	Robert4	F	08/04/82	24	1	4	1	1	1	1	1	1	1	1	1	1
KIM	Kim	Robert4	F	19/10/81	25	1	2	1	1	1	1	1	1	1	1	3	1
LER	Leri	Roberts3	F	12/03/64	41	1	1	1	2	1	2	1	1	1	1	1	1
LIL	Lili	Roberts4	F	12/12/84	21	1	2	0	0	2	1	3	3	3	1	1	1
LIN	Lina	Robert5	F	28/11/47	59	1	2	1	1	1	2	1	1	1	3	1	1
LIS	Lisa	Fusser27	F	09/06/85	20	1	1	1	2	1	1	1	3	3	3	3	1
LLA	Llawdden	Fusser28	M	04/08/84	21	1	4	1	1	1	1	1	1	3	3	1	1
LLE	Llewelyn	Davies9	M	31/05/84	22	1	1	0	2	0	0	3	1	1	2	3	1
LNW	Lunwen	Fusser12	F	12/08/87	18	1	2	1	1	1	1	1	1	1	1	1	1
LOI	Lois	Fusser29	F	25/07/80	25	1	2	1	1	1	0	1	1	1	1	1	1
LON	Lona	Fusser30	F	28/10/80	25	1	3	1	1	1	1	1	1	1	1	1	1
LOR	Lora	Fusser32	F	28/05/80	25	1	2	1	1	1	1	1	1	1	1	1	1
LUN	Luned	Robert3	F	18/09/90	16	1	1	1	1	1	1	1	3	1	1	3	1
MAB	Mabli	Fusser27	F	04/04/86	19	1	1	0	2	1	1	1	1	3	1	1	1
MAG	Magi	Fusser29	F	22/09/78	27	1	1	0	2	0	0	1	1	3	3	3	1
MAT	Mathew	Fusser32	M	14/03/42	64	1	3	1	1	1	2	1	1	1	1	1	1
MEC	Mechain	Roberts4	M	21/05/86	19	1	2	1	1	1	0	1	3	3	3	1	1
MED	Medeni	Roberts3	F	02/05/49	56	1	3	1	1	1	1	1	1	1	3	1	1
MEI	Meirion	Davies13	M	27/07/86	20	1	1	1	1	1	1	1	1	1	1	1	1
MEL	Meleri	Fusser30	F	27/01/78	28	2	1	2	2	1	1	3	3	1	1	3	1
MEN	Menna	Fusser8	F	25/02/46	59	1	3	1	1	1	0	1	1	1	1		1
MER	Merfyn	Davies5	M	07/01/88	18	1	1	1	1	1	1	1	1	1	1	2	1
MIC	Michael	Davies10	M	14/11/53	52	1	2	1	1	1	0	1	1	3	1	3	4
MOR	Morfydd	Robert6	F	19/03/79	27	1	2	1	0	1	1	1	3	3	1	3	1
MOS	Mostyn	Davies9	M	08/11/86	19	1	1	0	0	1	1	1	1	2	1	1	1
MRL	Meryl	Fusser15	F	06/09/65	40	1	1	1	2	1	1	1	1	1	3	1	1
MYF	Myfanwy	Deuchar1	F	30/12/40	65	1	3	1	1	2	2	3	3	3	2	2	1
NEL	Nel	Davies15	F	25/04/83	23	1	2	1	1	1	1	1	1	1	1	1	1
NER	Nerys	Stammers3	F	26/10/72	33	1	1	1	1	1	1	1	3	1	1	1	1
NON	Non	Davies1	F	02/03/87	18	1	2	1	1	1	1	1	1	1	1	1	1
OLW	Olwen	Fusser19	F	06/01/78	28	1	2	1	1	1	1	1	1	3	1	3	1
OSW	Oswy	Davies4	M	11/12/48	57	1	1	2	1	2	2	1	1	2	2	3	1
OWA	Owain	Davies11	M	06/05/39	67	2	4	1	1	2	2	1	1	1	1	1	1
PEN	Penri	Robert9	M	17/05/72	35	1	2	1	1	1	1	1	1	3	2	3	1
RAC	Rachel	Davies11	F	09/07/54	52	1	2	1	1	2	2	3	1	1	1	1	1
REG	Reginald	Robert1	M	30/11/76	29	1	3	1	1	1	1	1	1	3	1	2	1
RHO	Rhodri	Stammers5	M	21/01/67	39	1	1	1	1	1	2	1	1	3	1	1	1
RIS	Rhisiart	Robert2	M	15/05/87	19	1	3	1	2	1	1	1	3	1	1	3	1
RNW	Rhianwen	Stammers9	F	09/08/36	70	1	3	1	1	1	2	1	1	1	1	1	1
ROB	Robin	Davies17	M	28/04/76	31	3	1	2	2	2	0	3	3	3	3	3	4
ROY	Roy	Stammers7	M	22/08/75	31	5	1	2	2	2	2	3	3	1	1	3	3
SAL	Sali	Davies12	F	17/08/87	19	1	1	2	1	1	1	3	1	3	1	2	1
SAR	Sara	Davies1	F	09/10/86	19	1	3	1	1	1	1	1	1	1	1	1	1
SER	Seren	Deuchar1	F	13/09/41	64	1	3	1	1	2	0	2	3	3	1	2	1
SIO	Sionyn	Davies5	M	07/02/88	18	3	1	2	2	1	0	3	3	3	2	2	4
SIR	Siriol	Fusser16	F	17/11/37	68	1	4	1	1	1	0	1	1	1	1		1
SND	Sioned	Stammers5	F	29/03/70	36	1	1	2	0	1	2	3	1	1	3	3	2
STE	Steffan	Fusser32	M	10/09/71	34	1	2	0	0	1	1	1	1	1	1	1	1
STN	Stanley	Robert8	M	31/05/20	86	1	3	1	1	2	-9	1	1	1	1	1	1
TEC	Tecwyn	Fusser26	M	05/11/34	71	1	1	1	2	1	2	1	1	2	3	0	1
TEG	Tegai	Davies15	F	10/10/80	26	1	1	1	1	1	0	1	1	1	1	2	1
TOS	Tostig	Davies3	M	14/06/90	15	1	3	1	1	0	0	1	1	1	1	1	1
TRA	Tracy	Davies7	F	12/02/92	14	1	2	1	1	1	1	1	1	1	1	1	1
TRE	Trefor	Fusser19	M	17/01/68	38	1	2	2	1	2	0	1	1	1	1	1	1
TWM	Twm	Robert7	M	18/03/72	34	1	1	0	0	1	0	1	2	1	1	1	1
WEN	Wendi	Fusser12	F	23/05/59	46	1	2	1	1	1	2	1	1	1	1	1	1
WYN	Wyn	Fusser22	M	13/10/56	49	1	3	1	1	1	1	1	1	3	1	1	1
\.


--
-- PostgreSQL database dump complete
--

