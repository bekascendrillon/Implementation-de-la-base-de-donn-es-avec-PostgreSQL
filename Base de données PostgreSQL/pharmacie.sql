--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-0ubuntu0.20.04.1)

-- Started on 2022-01-28 13:20:38 WAT

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 209 (class 1259 OID 16490)
-- Name: client; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.client (
    id integer NOT NULL,
    nom character varying(255) NOT NULL,
    adresse character varying(255) NOT NULL
);


ALTER TABLE public.client OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 16488)
-- Name: client_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.client_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.client_id_seq OWNER TO postgres;

--
-- TOC entry 3052 (class 0 OID 0)
-- Dependencies: 208
-- Name: client_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.client_id_seq OWNED BY public.client.id;


--
-- TOC entry 203 (class 1259 OID 16460)
-- Name: commande; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.commande (
    id integer NOT NULL,
    nombre_commande integer NOT NULL,
    date_commande date
);


ALTER TABLE public.commande OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16458)
-- Name: commande_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.commande_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.commande_id_seq OWNER TO postgres;

--
-- TOC entry 3053 (class 0 OID 0)
-- Dependencies: 202
-- Name: commande_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.commande_id_seq OWNED BY public.commande.id;


--
-- TOC entry 207 (class 1259 OID 16479)
-- Name: employe; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employe (
    id integer NOT NULL,
    nom character varying(255) NOT NULL,
    adresse character varying(255) NOT NULL
);


ALTER TABLE public.employe OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 16477)
-- Name: employe_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.employe_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.employe_id_seq OWNER TO postgres;

--
-- TOC entry 3054 (class 0 OID 0)
-- Dependencies: 206
-- Name: employe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.employe_id_seq OWNED BY public.employe.id;


--
-- TOC entry 211 (class 1259 OID 16501)
-- Name: fournisseur; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fournisseur (
    id integer NOT NULL,
    nom character varying(255) NOT NULL,
    adresse character varying(255) NOT NULL,
    id_commande integer NOT NULL,
    id_medicament integer NOT NULL
);


ALTER TABLE public.fournisseur OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 16499)
-- Name: fournisseur_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.fournisseur_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fournisseur_id_seq OWNER TO postgres;

--
-- TOC entry 3055 (class 0 OID 0)
-- Dependencies: 210
-- Name: fournisseur_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.fournisseur_id_seq OWNED BY public.fournisseur.id;


--
-- TOC entry 213 (class 1259 OID 16522)
-- Name: magasin; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.magasin (
    id integer NOT NULL,
    nom character varying(255) NOT NULL,
    description text,
    id_medicament integer NOT NULL
);


ALTER TABLE public.magasin OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 16520)
-- Name: magasin_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.magasin_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.magasin_id_seq OWNER TO postgres;

--
-- TOC entry 3056 (class 0 OID 0)
-- Dependencies: 212
-- Name: magasin_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.magasin_id_seq OWNED BY public.magasin.id;


--
-- TOC entry 205 (class 1259 OID 16468)
-- Name: medicaments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.medicaments (
    id integer NOT NULL,
    nom character varying(255) NOT NULL,
    type character varying(255) NOT NULL,
    date_peremption date NOT NULL
);


ALTER TABLE public.medicaments OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 16466)
-- Name: medicaments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.medicaments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.medicaments_id_seq OWNER TO postgres;

--
-- TOC entry 3057 (class 0 OID 0)
-- Dependencies: 204
-- Name: medicaments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.medicaments_id_seq OWNED BY public.medicaments.id;


--
-- TOC entry 215 (class 1259 OID 16538)
-- Name: pharmacien; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pharmacien (
    id integer NOT NULL,
    nom character varying(255) NOT NULL,
    adresse character varying(255) NOT NULL,
    id_magasin integer NOT NULL
);


ALTER TABLE public.pharmacien OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 16536)
-- Name: pharmacien_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pharmacien_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pharmacien_id_seq OWNER TO postgres;

--
-- TOC entry 3058 (class 0 OID 0)
-- Dependencies: 214
-- Name: pharmacien_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pharmacien_id_seq OWNED BY public.pharmacien.id;


--
-- TOC entry 2885 (class 2604 OID 16493)
-- Name: client id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.client ALTER COLUMN id SET DEFAULT nextval('public.client_id_seq'::regclass);


--
-- TOC entry 2882 (class 2604 OID 16463)
-- Name: commande id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.commande ALTER COLUMN id SET DEFAULT nextval('public.commande_id_seq'::regclass);


--
-- TOC entry 2884 (class 2604 OID 16482)
-- Name: employe id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employe ALTER COLUMN id SET DEFAULT nextval('public.employe_id_seq'::regclass);


--
-- TOC entry 2886 (class 2604 OID 16504)
-- Name: fournisseur id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fournisseur ALTER COLUMN id SET DEFAULT nextval('public.fournisseur_id_seq'::regclass);


--
-- TOC entry 2887 (class 2604 OID 16525)
-- Name: magasin id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.magasin ALTER COLUMN id SET DEFAULT nextval('public.magasin_id_seq'::regclass);


--
-- TOC entry 2883 (class 2604 OID 16471)
-- Name: medicaments id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medicaments ALTER COLUMN id SET DEFAULT nextval('public.medicaments_id_seq'::regclass);


--
-- TOC entry 2888 (class 2604 OID 16541)
-- Name: pharmacien id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pharmacien ALTER COLUMN id SET DEFAULT nextval('public.pharmacien_id_seq'::regclass);


--
-- TOC entry 3040 (class 0 OID 16490)
-- Dependencies: 209
-- Data for Name: client; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.client (id, nom, adresse) FROM stdin;
1	vanessa	quartier goudji
2	silvie	quartier dembe
3	marc	quartier moursal
4	yannick	quartier walia
5	maimouna	quartier diguel
6	Span	in consequat ut nulla sed accumsan felis ut at dolor quis odio
7	Otcom	vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec
8	Y-Solowarm	donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit
9	Viva	elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis
10	Lotstring	luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus
11	Greenlam	justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo
12	Bitchip	pede malesuada in imperdiet et commodo vulputate justo in blandit
13	Cardify	quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce
14	Sonsing	vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet
15	Overhold	nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris
16	Namfix	dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero
17	Redhold	dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et
18	Quo Lux	eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus
19	Konklux	urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat
20	Aerified	parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean
21	Treeflex	hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis
22	Zathin	aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu
23	Quo Lux	sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie
24	Kanlam	nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque
25	Opela	dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis
26	Andalax	semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac
27	Hatity	eros viverra eget congue eget semper rutrum nulla nunc purus phasellus
28	Cardguard	id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam
29	Flowdesk	amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque
30	Greenlam	augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer
31	Asoka	nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris
32	Holdlamis	ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras
33	Asoka	duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget
34	Flexidy	pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut
35	Redhold	suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien
36	Trippledex	amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis
37	Redhold	in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas
38	Mat Lam Tam	cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit
39	Fix San	est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin
40	Zathin	sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum
41	Stronghold	orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut
42	Zoolab	magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis
43	Zamit	sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique
44	Home Ing	nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras
45	Tempsoft	suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla
46	Tampflex	magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet
47	Y-find	vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper
48	Domainer	velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in
49	Kanlam	nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget
50	Viva	hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate
60	Shaun	Bestwerthick
64	Kamila	Lerven
87	Aileen	Janisson
81	Desmond	Edgler
86	Garrot	Priditt
72	Margarethe	Eckhard
97	Hugibert	Eliff
96	Erl	Kimmel
99	Dru	Tyre
89	Patty	Bordessa
\.


--
-- TOC entry 3034 (class 0 OID 16460)
-- Dependencies: 203
-- Data for Name: commande; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.commande (id, nombre_commande, date_commande) FROM stdin;
1	250	2022-01-15
2	250	2022-01-17
3	250	2022-01-19
4	250	2022-01-11
5	250	2022-01-09
7	6	2010-11-22
8	91	2010-11-22
9	71	2010-11-22
10	12	2010-11-22
11	76	2010-11-22
12	47	2010-11-22
13	98	2020-08-21
14	32	2020-08-21
15	44	2020-08-21
17	32	2020-08-21
42	46	2020-08-21
66	35	2020-08-21
67	39	2020-08-21
68	6	2020-08-21
69	67	2020-08-21
70	57	2010-11-22
71	76	2010-11-22
72	57	2010-11-22
73	51	2010-11-22
74	40	2020-08-21
75	51	2020-08-21
60	24	2022-10-12
96	27	2022-10-12
32	62	2022-10-12
62	72	2022-10-12
48	86	2022-10-12
25	18	2022-10-12
95	69	2022-10-12
50	23	2002-11-20
34	67	2022-10-12
6	61	2022-10-12
89	63	2022-10-12
77	84	2022-10-12
33	44	2022-10-12
97	20	2022-10-12
38	99	2022-10-12
21	69	2022-10-12
88	34	2022-10-12
43	16	2022-10-12
28	85	2022-10-12
61	16	2022-10-12
80	30	2022-10-12
\.


--
-- TOC entry 3038 (class 0 OID 16479)
-- Dependencies: 207
-- Data for Name: employe; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.employe (id, nom, adresse) FROM stdin;
1	moussa	quartier goudji
2	adam	quartier dembe
3	jacques	quartier moursal
4	yannick	quartier walia
5	maimouna	quartier diguel
6	Maris	ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien
7	Malorie	nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur
8	Robbert	quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non
9	Daren	in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis
10	Becky	vulputate luctus cum sociis natoque penatibus et magnis dis parturient
11	Constantia	orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi
12	Babb	velit id pretium iaculis diam erat fermentum justo nec condimentum neque
13	Igor	tellus nulla ut erat id mauris vulputate elementum nullam varius nulla
14	Tore	lorem id ligula suspendisse ornare consequat lectus in est risus
15	Innis	neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in
16	Arlie	lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio
17	Ruprecht	aenean fermentum donec ut mauris eget massa tempor convallis nulla
18	Caryl	in purus eu magna vulputate luctus cum sociis natoque penatibus
19	Kakalina	in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum
20	Darrelle	ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede
21	Chrisse	pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea
22	Karolina	quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris
23	Jackie	praesent id massa id nisl venenatis lacinia aenean sit amet justo
24	Arlee	eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat
25	Lesya	aliquam non mauris morbi non lectus aliquam sit amet diam in
26	Farleigh	nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque
27	Frazer	lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea
28	Dewie	duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis
29	Selle	nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non
30	Eolande	curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi
31	Fedora	vestibulum quam sapien varius ut blandit non interdum in ante
32	Lacey	ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque
33	Swen	odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla
34	Dorette	luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis
35	Merilyn	ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id
36	Thalia	venenatis turpis enim blandit mi in porttitor pede justo eu massa
37	Diane	consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer
38	Bellina	ipsum aliquam non mauris morbi non lectus aliquam sit amet
39	Cordi	neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac
40	Cinda	viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris
41	Bonny	donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan
42	Lucita	pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices
43	Nehemiah	cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque
44	Elladine	amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et
45	Bruce	molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate
46	Sibyl	luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti
47	Blaine	diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget
48	Shirley	in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer
49	Quincey	ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean
50	Levin	volutpat dui maecenas tristique est et tempus semper est quam pharetra magna
51	Anallese	nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula
52	Hulda	in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis
53	Orion	mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac
54	Marlowe	pede justo eu massa donec dapibus duis at velit eu est
55	Cherye	libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim
56	Marlon	odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus
57	Bettye	vel sem sed sagittis nam congue risus semper porta volutpat quam
58	Dulcine	ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in
59	Clary	curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget
60	Margarethe	orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat
61	Siffre	ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra
62	Leanora	in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse
63	Mela	rutrum rutrum neque aenean auctor gravida sem praesent id massa
64	Abran	pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa
65	Kaile	sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel
66	Moina	tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum
67	Rex	ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo
68	Alexis	egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu
69	Antony	odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit
70	Claybourne	rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat
71	Pernell	donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci
72	Suzy	ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia
73	Marika	luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet
74	Dorris	in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna
75	Rosalinde	dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede
76	Nelia	primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui
77	Valerye	pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo
78	Josiah	ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo
79	Dorian	rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet
80	Roxi	sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus
81	Raymund	ut massa volutpat convallis morbi odio odio elementum eu interdum
82	Benjamen	diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat
83	Katrine	fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis
84	Jacky	faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin
85	Nanon	suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa
86	Robby	pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia
87	Ruggiero	quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit
88	Feodora	suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce
89	Garvey	odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce
90	Kane	vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere
91	Rickey	justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices
92	Ingunna	posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut
93	Monroe	in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien
94	Linnet	leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a
95	Cody	vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean
96	Sonnnie	duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam
97	Roch	ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna
98	Gnni	nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta
99	Leese	in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus
100	Donni	vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis
\.


--
-- TOC entry 3042 (class 0 OID 16501)
-- Dependencies: 211
-- Data for Name: fournisseur; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.fournisseur (id, nom, adresse, id_commande, id_medicament) FROM stdin;
1	vanessa	quartier goudji	2	2
2	silvie	quartier dembe	2	3
3	malick	quartier farcha	3	2
4	jean	quartier moursal	4	2
5	abdel	quartier mardjandafak	3	3
38	Gasparo	morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo	5	5
28	Hana	nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam	1	5
12	Xylia	eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio	1	5
10	Delainey	facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros	3	4
37	Clementine	sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in	2	3
89	Arlyn	hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla	2	3
27	Toinette	ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at	3	4
14	Caitlin	integer ac neque duis bibendum morbi non quam nec dui luctus rutrum	5	5
13	Morgan	velit eu est congue elementum in hac habitasse platea dictumst morbi	2	2
29	Lelia	nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum	2	4
53	Lelia	nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum	2	4
17	Clim	risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis	2	1
33	Desi	ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est	3	5
83	Doralyn	in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec	2	3
93	Carolin	sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in	3	5
65	Ulrich	amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus	5	2
76	Jaymie	orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor	3	1
19	Filmer	non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus	5	2
64	Ottilie	platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit	2	4
52	Brandie	enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis	1	2
73	Ramsay	eget nunc donec quis orci eget orci vehicula condimentum curabitur	4	3
85	Tarrance	felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl	4	1
11	Patten	phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat	3	5
35	Elinor	rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan	1	4
18	Stephan	erat fermentum justo nec condimentum neque sapien placerat ante nulla justo	3	3
8	Delphine	rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id	4	3
20	Darrin	eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas	4	2
24	Banky	amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis	5	1
70	Sibbie	turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue	5	2
78	Jeremias	lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat	4	1
\.


--
-- TOC entry 3044 (class 0 OID 16522)
-- Dependencies: 213
-- Data for Name: magasin; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.magasin (id, nom, description, id_medicament) FROM stdin;
1	la belle lune	ouvert a tout public	2
2	univers	ouvert a tout public	3
3	la belle lune	ouvert a tout public	4
4	la belle lune	ouvert 24h/24	5
14	Gilemette	lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at	3
96	Trev	id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque	4
88	Cornelle	hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum	5
59	Ninnette	a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie	2
25	Lotti	ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam	5
18	Kendra	primis in faucibus orci luctus et ultrices posuere cubilia curae	3
29	Wheeler	augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat	2
32	Valenka	consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat	1
19	Ailis	pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate	1
43	Gaylord	nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices	2
45	Duky	justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam	3
100	Cristi	lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede	4
38	Thorin	augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum	5
74	Clair	lorem quisque ut erat curabitur gravida nisi at nibh in hac	5
46	Prentiss	at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam	2
60	Darcy	libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut	3
65	Fiona	ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim	4
9	Daryl	pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea	5
\.


--
-- TOC entry 3036 (class 0 OID 16468)
-- Dependencies: 205
-- Data for Name: medicaments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.medicaments (id, nom, type, date_peremption) FROM stdin;
1	fervex	medicament por le rhume	2022-01-09
2	doliprane	medicament pour les douleurs et la fievre	2022-09-09
3	cofantrine	medicament pour le palu	2022-12-09
4	otipax	medicament pour le traitement orl	2022-12-09
5	gaviscon	medicament pour le traitement gastrique	2022-12-09
33	Ham	convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum	2022-10-05
27	Yale	turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque	2022-10-05
22	Berri	rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam	2022-10-05
64	Pedro	sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus	2022-10-05
71	Tommy	ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non	2022-10-05
57	Angie	arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec	2022-10-05
88	Bonita	turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam	2022-10-05
56	Lanette	duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in	2022-10-05
11	Hillie	mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy	2022-10-05
82	Magdaia	sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis	2022-10-05
\.


--
-- TOC entry 3046 (class 0 OID 16538)
-- Dependencies: 215
-- Data for Name: pharmacien; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pharmacien (id, nom, adresse, id_magasin) FROM stdin;
1	vanessa	quartier goudji	2
2	silvie	quartier dembe	3
3	malick	quartier farcha	2
4	jean	quartier moursal	4
5	abdel	quartier mardjandafak	3
81	Neddie	nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt	2
6	Ninetta	nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam	3
91	Nevins	nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at	2
32	Ansell	vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium	4
17	Danella	fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus	4
75	Rose	quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id	3
8	Arlie	volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus	1
98	Livvie	aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue	3
77	Enrica	primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio	2
95	Hilde	nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi	4
92	Von	fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum	3
15	Lewes	rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non	2
49	Tannie	lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere	1
40	Babita	tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non	3
97	Lockwood	eleifend luctus ultricies eu nibh quisque id justo sit amet sapien	4
30	Evangelina	mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo	1
26	Izabel	odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel	2
59	Barde	mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum	4
35	Arleta	nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque	1
78	Moss	ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit	2
42	Shepard	cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna	3
33	Samantha	leo odio porttitor id consequat in consequat ut nulla sed accumsan felis	1
31	Ker	lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc	3
57	Cecil	ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien	1
28	Saidee	augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit	3
\.


--
-- TOC entry 3059 (class 0 OID 0)
-- Dependencies: 208
-- Name: client_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.client_id_seq', 1, false);


--
-- TOC entry 3060 (class 0 OID 0)
-- Dependencies: 202
-- Name: commande_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.commande_id_seq', 1, false);


--
-- TOC entry 3061 (class 0 OID 0)
-- Dependencies: 206
-- Name: employe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.employe_id_seq', 1, false);


--
-- TOC entry 3062 (class 0 OID 0)
-- Dependencies: 210
-- Name: fournisseur_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.fournisseur_id_seq', 1, false);


--
-- TOC entry 3063 (class 0 OID 0)
-- Dependencies: 212
-- Name: magasin_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.magasin_id_seq', 1, false);


--
-- TOC entry 3064 (class 0 OID 0)
-- Dependencies: 204
-- Name: medicaments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.medicaments_id_seq', 1, false);


--
-- TOC entry 3065 (class 0 OID 0)
-- Dependencies: 214
-- Name: pharmacien_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pharmacien_id_seq', 1, false);


--
-- TOC entry 2896 (class 2606 OID 16498)
-- Name: client client_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.client
    ADD CONSTRAINT client_pkey PRIMARY KEY (id);


--
-- TOC entry 2890 (class 2606 OID 16465)
-- Name: commande commande_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.commande
    ADD CONSTRAINT commande_pkey PRIMARY KEY (id);


--
-- TOC entry 2894 (class 2606 OID 16487)
-- Name: employe employe_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employe
    ADD CONSTRAINT employe_pkey PRIMARY KEY (id);


--
-- TOC entry 2898 (class 2606 OID 16509)
-- Name: fournisseur fournisseur_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fournisseur
    ADD CONSTRAINT fournisseur_pkey PRIMARY KEY (id);


--
-- TOC entry 2900 (class 2606 OID 16530)
-- Name: magasin magasin_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.magasin
    ADD CONSTRAINT magasin_pkey PRIMARY KEY (id);


--
-- TOC entry 2892 (class 2606 OID 16476)
-- Name: medicaments medicaments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medicaments
    ADD CONSTRAINT medicaments_pkey PRIMARY KEY (id);


--
-- TOC entry 2902 (class 2606 OID 16546)
-- Name: pharmacien pharmacien_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pharmacien
    ADD CONSTRAINT pharmacien_pkey PRIMARY KEY (id);


--
-- TOC entry 2903 (class 2606 OID 16510)
-- Name: fournisseur fournisseur_id_commande_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fournisseur
    ADD CONSTRAINT fournisseur_id_commande_fkey FOREIGN KEY (id_commande) REFERENCES public.commande(id);


--
-- TOC entry 2904 (class 2606 OID 16515)
-- Name: fournisseur fournisseur_id_medicament_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fournisseur
    ADD CONSTRAINT fournisseur_id_medicament_fkey FOREIGN KEY (id_medicament) REFERENCES public.medicaments(id);


--
-- TOC entry 2905 (class 2606 OID 16531)
-- Name: magasin magasin_id_medicament_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.magasin
    ADD CONSTRAINT magasin_id_medicament_fkey FOREIGN KEY (id_medicament) REFERENCES public.medicaments(id);


--
-- TOC entry 2906 (class 2606 OID 16547)
-- Name: pharmacien pharmacien_id_magasin_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pharmacien
    ADD CONSTRAINT pharmacien_id_magasin_fkey FOREIGN KEY (id_magasin) REFERENCES public.magasin(id);


-- Completed on 2022-01-28 13:20:38 WAT

--
-- PostgreSQL database dump complete
--

