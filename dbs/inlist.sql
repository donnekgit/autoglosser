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
-- Name: inlist; Type: TABLE; Schema: public; Owner: kevin; Tablespace: 
--

CREATE TABLE inlist (
    id integer NOT NULL,
    surface character varying(100),
    lemma character varying(100),
    enlemma character varying(100),
    clar character varying(100),
    pos character varying(50),
    gender character varying(20),
    number character varying(20),
    tense character varying(50),
    notes character varying(50),
    extra character varying(100)
);


ALTER TABLE public.inlist OWNER TO kevin;

--
-- Name: zerolist_id_seq; Type: SEQUENCE; Schema: public; Owner: kevin
--

CREATE SEQUENCE zerolist_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.zerolist_id_seq OWNER TO kevin;

--
-- Name: zerolist_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kevin
--

ALTER SEQUENCE zerolist_id_seq OWNED BY inlist.id;


--
-- Name: zerolist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kevin
--

SELECT pg_catalog.setval('zerolist_id_seq', 59, true);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: kevin
--

ALTER TABLE inlist ALTER COLUMN id SET DEFAULT nextval('zerolist_id_seq'::regclass);


--
-- Data for Name: inlist; Type: TABLE DATA; Schema: public; Owner: kevin
--

COPY inlist (id, surface, lemma, enlemma, clar, pos, gender, number, tense, notes, extra) FROM stdin;
50	coraliau	coral	corral	\N	n	m	sg	\N	\N	\N
53	karaoke	karaoke	karaoke	\N	n	m	sg	\N	\N	\N
57	Urdd	Urdd	Urdd	\N	n	f	sg	\N	\N	\N
43	pastor	pastor	pastor	\N	n	m	sg	\N	\N	\N
\.


--
-- Name: zerolist_pk; Type: CONSTRAINT; Schema: public; Owner: kevin; Tablespace: 
--

ALTER TABLE ONLY inlist
    ADD CONSTRAINT zerolist_pk PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

