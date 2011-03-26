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
-- Name: miami_sp; Type: TABLE; Schema: public; Owner: kevin; Tablespace: 
--

CREATE TABLE miami_sp (
    id integer NOT NULL,
    file character varying(50),
    speaker character varying(50),
    sex character varying(1),
    age integer
);


ALTER TABLE public.miami_sp OWNER TO kevin;

--
-- Name: miami_sp_id_seq; Type: SEQUENCE; Schema: public; Owner: kevin
--

CREATE SEQUENCE miami_sp_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.miami_sp_id_seq OWNER TO kevin;

--
-- Name: miami_sp_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kevin
--

ALTER SEQUENCE miami_sp_id_seq OWNED BY miami_sp.id;


--
-- Name: miami_sp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kevin
--

SELECT pg_catalog.setval('miami_sp_id_seq', 12, true);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: kevin
--

ALTER TABLE miami_sp ALTER COLUMN id SET DEFAULT nextval('miami_sp_id_seq'::regclass);


--
-- Data for Name: miami_sp; Type: TABLE DATA; Schema: public; Owner: kevin
--

COPY miami_sp (id, file, speaker, sex, age) FROM stdin;
1	herring1	LAU	f	27
2	herring1	CHL	f	24
3	herring7	RIC	m	22
4	herring7	SEB	m	0
5	herring9	CLA	f	21
6	herring9	LUK	m	20
7	sastre1	SOF	f	0
8	sastre1	KEV	m	0
9	herring10	PAI	f	0
10	herring10	SAR	f	0
11	zeledon1	CAR	f	21
12	zeledon1	AME	f	26
\.


--
-- Name: miami_sp_pkey; Type: CONSTRAINT; Schema: public; Owner: kevin; Tablespace: 
--

ALTER TABLE ONLY miami_sp
    ADD CONSTRAINT miami_sp_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

