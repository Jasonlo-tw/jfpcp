--
-- PostgreSQL database dump
--

-- Dumped from database version 11.1 (Ubuntu 11.1-1.pgdg16.04+1)
-- Dumped by pg_dump version 11.1 (Ubuntu 11.1-1.pgdg16.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: nomadbard916
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO nomadbard916;

--
-- Name: carts; Type: TABLE; Schema: public; Owner: nomadbard916
--

CREATE TABLE public.carts (
    id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.carts OWNER TO nomadbard916;

--
-- Name: carts_id_seq; Type: SEQUENCE; Schema: public; Owner: nomadbard916
--

CREATE SEQUENCE public.carts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.carts_id_seq OWNER TO nomadbard916;

--
-- Name: carts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nomadbard916
--

ALTER SEQUENCE public.carts_id_seq OWNED BY public.carts.id;


--
-- Name: collections; Type: TABLE; Schema: public; Owner: nomadbard916
--

CREATE TABLE public.collections (
    id bigint NOT NULL,
    collection_name character varying,
    release_time date,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    picture character varying
);


ALTER TABLE public.collections OWNER TO nomadbard916;

--
-- Name: collections_id_seq; Type: SEQUENCE; Schema: public; Owner: nomadbard916
--

CREATE SEQUENCE public.collections_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.collections_id_seq OWNER TO nomadbard916;

--
-- Name: collections_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nomadbard916
--

ALTER SEQUENCE public.collections_id_seq OWNED BY public.collections.id;


--
-- Name: contact_infos; Type: TABLE; Schema: public; Owner: nomadbard916
--

CREATE TABLE public.contact_infos (
    id bigint NOT NULL,
    email character varying,
    first_name character varying,
    last_name character varying,
    address character varying,
    building_optional character varying,
    city character varying,
    country character varying,
    province character varying,
    post_code character varying,
    phone character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    order_id integer,
    cart_id integer
);


ALTER TABLE public.contact_infos OWNER TO nomadbard916;

--
-- Name: contact_infos_id_seq; Type: SEQUENCE; Schema: public; Owner: nomadbard916
--

CREATE SEQUENCE public.contact_infos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.contact_infos_id_seq OWNER TO nomadbard916;

--
-- Name: contact_infos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nomadbard916
--

ALTER SEQUENCE public.contact_infos_id_seq OWNED BY public.contact_infos.id;


--
-- Name: line_items; Type: TABLE; Schema: public; Owner: nomadbard916
--

CREATE TABLE public.line_items (
    id bigint NOT NULL,
    product_id integer,
    cart_id integer,
    price numeric,
    quantity integer DEFAULT 1,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    total numeric,
    order_id integer
);


ALTER TABLE public.line_items OWNER TO nomadbard916;

--
-- Name: line_items_id_seq; Type: SEQUENCE; Schema: public; Owner: nomadbard916
--

CREATE SEQUENCE public.line_items_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.line_items_id_seq OWNER TO nomadbard916;

--
-- Name: line_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nomadbard916
--

ALTER SEQUENCE public.line_items_id_seq OWNED BY public.line_items.id;


--
-- Name: orders; Type: TABLE; Schema: public; Owner: nomadbard916
--

CREATE TABLE public.orders (
    id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    description text,
    total numeric,
    shipping_fee numeric,
    comments text,
    process character varying,
    return character varying,
    account character varying
);


ALTER TABLE public.orders OWNER TO nomadbard916;

--
-- Name: orders_id_seq; Type: SEQUENCE; Schema: public; Owner: nomadbard916
--

CREATE SEQUENCE public.orders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.orders_id_seq OWNER TO nomadbard916;

--
-- Name: orders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nomadbard916
--

ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;


--
-- Name: products; Type: TABLE; Schema: public; Owner: nomadbard916
--

CREATE TABLE public.products (
    id bigint NOT NULL,
    product_name character varying,
    price numeric,
    description_short text,
    description_long text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    collection_id integer,
    size_contracted character varying,
    size_extended character varying,
    size_strap character varying,
    detail_style character varying,
    detail_material character varying,
    string character varying,
    detail_cleaning character varying,
    detail_capacity character varying,
    size_hand_drop integer,
    image character varying
);


ALTER TABLE public.products OWNER TO nomadbard916;

--
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: nomadbard916
--

CREATE SEQUENCE public.products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_id_seq OWNER TO nomadbard916;

--
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nomadbard916
--

ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: nomadbard916
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO nomadbard916;

--
-- Name: users; Type: TABLE; Schema: public; Owner: nomadbard916
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.users OWNER TO nomadbard916;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: nomadbard916
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO nomadbard916;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nomadbard916
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: carts id; Type: DEFAULT; Schema: public; Owner: nomadbard916
--

ALTER TABLE ONLY public.carts ALTER COLUMN id SET DEFAULT nextval('public.carts_id_seq'::regclass);


--
-- Name: collections id; Type: DEFAULT; Schema: public; Owner: nomadbard916
--

ALTER TABLE ONLY public.collections ALTER COLUMN id SET DEFAULT nextval('public.collections_id_seq'::regclass);


--
-- Name: contact_infos id; Type: DEFAULT; Schema: public; Owner: nomadbard916
--

ALTER TABLE ONLY public.contact_infos ALTER COLUMN id SET DEFAULT nextval('public.contact_infos_id_seq'::regclass);


--
-- Name: line_items id; Type: DEFAULT; Schema: public; Owner: nomadbard916
--

ALTER TABLE ONLY public.line_items ALTER COLUMN id SET DEFAULT nextval('public.line_items_id_seq'::regclass);


--
-- Name: orders id; Type: DEFAULT; Schema: public; Owner: nomadbard916
--

ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);


--
-- Name: products id; Type: DEFAULT; Schema: public; Owner: nomadbard916
--

ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: nomadbard916
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: nomadbard916
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	production	2019-01-14 13:35:12.1973	2019-01-14 13:35:12.1973
\.


--
-- Data for Name: carts; Type: TABLE DATA; Schema: public; Owner: nomadbard916
--

COPY public.carts (id, created_at, updated_at) FROM stdin;
1	2019-01-14 13:36:35.07081	2019-01-14 13:36:35.07081
2	2019-01-14 13:36:35.076803	2019-01-14 13:36:35.076803
3	2019-01-14 13:36:35.081001	2019-01-14 13:36:35.081001
4	2019-01-14 13:36:35.084576	2019-01-14 13:36:35.084576
5	2019-01-14 13:36:35.088746	2019-01-14 13:36:35.088746
6	2019-01-14 14:08:26.388213	2019-01-14 14:08:26.388213
7	2019-01-14 14:08:26.400468	2019-01-14 14:08:26.400468
8	2019-01-14 14:08:26.40265	2019-01-14 14:08:26.40265
9	2019-01-14 14:08:26.404798	2019-01-14 14:08:26.404798
10	2019-01-14 14:08:26.408859	2019-01-14 14:08:26.408859
11	2019-01-14 14:10:26.214758	2019-01-14 14:10:26.214758
12	2019-01-14 14:10:26.218301	2019-01-14 14:10:26.218301
13	2019-01-14 14:10:26.220672	2019-01-14 14:10:26.220672
14	2019-01-14 14:10:26.222926	2019-01-14 14:10:26.222926
15	2019-01-14 14:10:26.225038	2019-01-14 14:10:26.225038
16	2019-01-14 14:11:46.37769	2019-01-14 14:11:46.37769
17	2019-01-14 14:11:46.381696	2019-01-14 14:11:46.381696
18	2019-01-14 14:11:46.38495	2019-01-14 14:11:46.38495
19	2019-01-14 14:11:46.388357	2019-01-14 14:11:46.388357
20	2019-01-14 14:11:46.390889	2019-01-14 14:11:46.390889
\.


--
-- Data for Name: collections; Type: TABLE DATA; Schema: public; Owner: nomadbard916
--

COPY public.collections (id, collection_name, release_time, created_at, updated_at, picture) FROM stdin;
1	All Products	2010-01-01	2019-01-14 13:36:35.113698	2019-01-14 13:36:35.113698	collections/all-products.png
2	Art Baby Collection	2015-09-01	2019-01-14 13:36:35.119281	2019-01-14 13:36:35.119281	collections/art-baby-collection.png
3	Classic Collection	2010-01-01	2019-01-14 13:36:35.122227	2019-01-14 13:36:35.122227	collections/classic-collection.png
4	Color Me In Collection	2016-01-01	2019-01-14 13:36:35.125011	2019-01-14 13:36:35.125011	collections/color-me-in-collection.png
5	Heatwave Collection	2017-03-01	2019-01-14 13:36:35.127895	2019-01-14 13:36:35.127895	collections/heatwave-collection.png
6	Influencer Collection	2018-01-01	2019-01-14 13:36:35.130826	2019-01-14 13:36:35.130826	collections/influencer-collection.png
7	Monochrome Graffiti Collection	2018-07-01	2019-01-14 13:36:35.133529	2019-01-14 13:36:35.133529	collections/monochrome-graffiti-collection.png
8	Pop Art Collection	2017-09-01	2019-01-14 13:36:35.136224	2019-01-14 13:36:35.136224	collections/pop-art-collection.png
9	Teen Spirit Collection	2015-03-01	2019-01-14 13:36:35.139057	2019-01-14 13:36:35.139057	collections/teen-spirit-collection.png
10	Weekend Getaway Collection	2016-03-01	2019-01-14 13:36:35.141702	2019-01-14 13:36:35.141702	collections/weekend-getaway-collection.png
11	Woman Girl Collection	2017-09-01	2019-01-14 13:36:35.144416	2019-01-14 13:36:35.144416	collections/woman-girl-collection.png
12	All Products	2010-01-01	2019-01-14 14:08:26.41871	2019-01-14 14:08:26.41871	collections/all-products.png
13	Art Baby Collection	2015-09-01	2019-01-14 14:08:26.42792	2019-01-14 14:08:26.42792	collections/art-baby-collection.png
14	Classic Collection	2010-01-01	2019-01-14 14:08:26.432177	2019-01-14 14:08:26.432177	collections/classic-collection.png
15	Color Me In Collection	2016-01-01	2019-01-14 14:08:26.434903	2019-01-14 14:08:26.434903	collections/color-me-in-collection.png
16	Heatwave Collection	2017-03-01	2019-01-14 14:08:26.437389	2019-01-14 14:08:26.437389	collections/heatwave-collection.png
17	Influencer Collection	2018-01-01	2019-01-14 14:08:26.440192	2019-01-14 14:08:26.440192	collections/influencer-collection.png
18	Monochrome Graffiti Collection	2018-07-01	2019-01-14 14:08:26.443014	2019-01-14 14:08:26.443014	collections/monochrome-graffiti-collection.png
19	Pop Art Collection	2017-09-01	2019-01-14 14:08:26.445745	2019-01-14 14:08:26.445745	collections/pop-art-collection.png
20	Teen Spirit Collection	2015-03-01	2019-01-14 14:08:26.44838	2019-01-14 14:08:26.44838	collections/teen-spirit-collection.png
21	Weekend Getaway Collection	2016-03-01	2019-01-14 14:08:26.45099	2019-01-14 14:08:26.45099	collections/weekend-getaway-collection.png
22	Woman Girl Collection	2017-09-01	2019-01-14 14:08:26.453494	2019-01-14 14:08:26.453494	collections/woman-girl-collection.png
23	All Products	2010-01-01	2019-01-14 14:10:26.237673	2019-01-14 14:10:26.237673	collections/all-products.png
24	Art Baby Collection	2015-09-01	2019-01-14 14:10:26.241985	2019-01-14 14:10:26.241985	collections/art-baby-collection.png
25	Classic Collection	2010-01-01	2019-01-14 14:10:26.246176	2019-01-14 14:10:26.246176	collections/classic-collection.png
26	Color Me In Collection	2016-01-01	2019-01-14 14:10:26.24928	2019-01-14 14:10:26.24928	collections/color-me-in-collection.png
27	Heatwave Collection	2017-03-01	2019-01-14 14:10:26.254895	2019-01-14 14:10:26.254895	collections/heatwave-collection.png
28	Influencer Collection	2018-01-01	2019-01-14 14:10:26.25812	2019-01-14 14:10:26.25812	collections/influencer-collection.png
29	Monochrome Graffiti Collection	2018-07-01	2019-01-14 14:10:26.265348	2019-01-14 14:10:26.265348	collections/monochrome-graffiti-collection.png
30	Pop Art Collection	2017-09-01	2019-01-14 14:10:26.271635	2019-01-14 14:10:26.271635	collections/pop-art-collection.png
31	Teen Spirit Collection	2015-03-01	2019-01-14 14:10:26.274632	2019-01-14 14:10:26.274632	collections/teen-spirit-collection.png
32	Weekend Getaway Collection	2016-03-01	2019-01-14 14:10:26.27785	2019-01-14 14:10:26.27785	collections/weekend-getaway-collection.png
33	Woman Girl Collection	2017-09-01	2019-01-14 14:10:26.280694	2019-01-14 14:10:26.280694	collections/woman-girl-collection.png
34	All Products	2010-01-01	2019-01-14 14:11:46.403526	2019-01-14 14:11:46.403526	collections/all-products.png
35	Art Baby Collection	2015-09-01	2019-01-14 14:11:46.407423	2019-01-14 14:11:46.407423	collections/art-baby-collection.png
36	Classic Collection	2010-01-01	2019-01-14 14:11:46.410752	2019-01-14 14:11:46.410752	collections/classic-collection.png
37	Color Me In Collection	2016-01-01	2019-01-14 14:11:46.414046	2019-01-14 14:11:46.414046	collections/color-me-in-collection.png
38	Heatwave Collection	2017-03-01	2019-01-14 14:11:46.417448	2019-01-14 14:11:46.417448	collections/heatwave-collection.png
39	Influencer Collection	2018-01-01	2019-01-14 14:11:46.420766	2019-01-14 14:11:46.420766	collections/influencer-collection.png
40	Monochrome Graffiti Collection	2018-07-01	2019-01-14 14:11:46.424078	2019-01-14 14:11:46.424078	collections/monochrome-graffiti-collection.png
41	Pop Art Collection	2017-09-01	2019-01-14 14:11:46.427345	2019-01-14 14:11:46.427345	collections/pop-art-collection.png
42	Teen Spirit Collection	2015-03-01	2019-01-14 14:11:46.430976	2019-01-14 14:11:46.430976	collections/teen-spirit-collection.png
43	Weekend Getaway Collection	2016-03-01	2019-01-14 14:11:46.435016	2019-01-14 14:11:46.435016	collections/weekend-getaway-collection.png
44	Woman Girl Collection	2017-09-01	2019-01-14 14:11:46.437533	2019-01-14 14:11:46.437533	collections/woman-girl-collection.png
\.


--
-- Data for Name: contact_infos; Type: TABLE DATA; Schema: public; Owner: nomadbard916
--

COPY public.contact_infos (id, email, first_name, last_name, address, building_optional, city, country, province, post_code, phone, created_at, updated_at, order_id, cart_id) FROM stdin;
\.


--
-- Data for Name: line_items; Type: TABLE DATA; Schema: public; Owner: nomadbard916
--

COPY public.line_items (id, product_id, cart_id, price, quantity, created_at, updated_at, total, order_id) FROM stdin;
\.


--
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: nomadbard916
--

COPY public.orders (id, created_at, updated_at, description, total, shipping_fee, comments, process, return, account) FROM stdin;
\.


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: nomadbard916
--

COPY public.products (id, product_name, price, description_short, description_long, created_at, updated_at, collection_id, size_contracted, size_extended, size_strap, detail_style, detail_material, string, detail_cleaning, detail_capacity, size_hand_drop, image) FROM stdin;
1	Art Baby Pink Purse	36.0	JumpFromPaper X Art Baby Collection	\n    Pink is not just a color! It's an attitude!<br>\n    Let's show people your chic cartoon style! 	2019-01-14 13:36:35.17362	2019-01-14 13:36:35.17362	2	11 x 22 x 2	11 x 22 x 3		Pop Art Bag, 2D Bag, Cartoon Bag	Polyester	\N	Scrub your bag gently with clean water, or diluted / mild detergent	Credit cards, Banknote, Coins	\N	products/art-baby/Art-Baby-Backpack.jpg
2	Art Baby Backpack	128.0	JumpFromPaper Cartoon Backpack 	Pink is not just a color! It's an attitude!<br>\n\nThe pink cartoon backpack has enough space for your MacBook Air 13", water bottle, and other essential items. <br>\n\nLet's show everyone your chic cartoon style! 	2019-01-14 13:36:35.180776	2019-01-14 13:36:35.180776	2	36 x 39.5 x 2	36 x 39.5 x 11	42.5 - 64.5	Pop Art Bag, 2D Bag, Cartoon Bag	Polyester	\N	Scrub your bag gently with clean water, or diluted / mild detergent	MacBook Air 13",  A4 Size Books, Water Bottle	\N	products/art-baby/Art-Baby-Pink-Purse.jpg
3	Cheese Orange Shoulder Bag	80.0	JumpFromPaper Cheese Camera Bag	The bag is big enough to hold your digital camera and phone. <br>\n\nRecord everything special in your daily life. <br>\n\nIt's also the unique cartoon gift for people who love to travel. 	2019-01-14 13:36:35.185104	2019-01-14 13:36:35.185104	3	33.5 x 27.5 x 2	33.5 x 27.5 x 2	71 - 140	Pop Art Bag, 2D Bag, Cartoon Bag	Polyester	\N	Scrub your bag gently with clean water, or diluted / mild detergent	Phone, Digital Camera	\N	products/classic/Cheese-Orange-Shoulder-Bag.jpg
4	Turquoise Spaceman Backpack	120.0	JumpFromPaper Classic Cartoon Backpack	The cartoon bag is specifically designed to keep your MacBook Air 13", A4 books and water bottle safe. <br>\n\nThe unique and stylish cartoon bag can easily go with any style.  <br>\n\nWear the turquoise backpack and go exploring.	2019-01-14 13:36:35.189212	2019-01-14 13:36:35.189212	3	36 x 39.5 x 2	36 x 39.5 x 11	42.5 - 64.5	Pop Art Bag, 2D Bag, Cartoon Bag	Polyester Bags	\N	Scrub your bag gently with clean water, or diluted / mild detergent	MacBook Air 13", A4 Size Book	\N	products/classic/Turquoise-Spaceman-Backpack.jpg
5	Red Checked Handbag	90.0	Summer Plaid X Cartoon Style	The red handbag can be carried by either of its adjustable strap or chic handle. <br>\n\nAnd, it has enough space to hold your make-up, phone, and wallet. <br>\n\nStart your weekend with a cute cartoon style.	2019-01-14 13:36:35.192957	2019-01-14 13:36:35.192957	3	24.5 x 29.5 x 2	24.5 x 29.5 x 8	40 - 78	Pop Art Bag, 2D Bag, Cartoon bag	PVC / Polyester	\N	Scrub your bag gently with clean water, or diluted / mild detergent	B6 Size Note, Phone, Credit Cards	5	products/classic/Red-Checked-Handbag.jpg
6	Adventure Pink Backpack	110.0	JumpFromPaper Adventure Cartoon Backpack<br>\nChic, Adorable, Unique 	The pink cartoon backpack is specifically designed to keep your MacBook Pro 13", other digital devices and water bottle safe. <br>\n\nTake the cartoon backpack anywhere and let your adventure begin. 	2019-01-14 13:36:35.196599	2019-01-14 13:36:35.196599	3	32.6 x 42.8 x 2	32.6 x 42.8 x 11.5	42.5 - 64.5	Pop Art Bag, 2D Bag, Cartoon Bag	Polyester Bags	\N	Scrub your bag gently with clean water, or diluted / mild detergent	A4 size, MacBook Pro 13", Phone, Wallet	\N	products/classic/Adventure-Pink-Backpack.jpg
7	Adventure Red Backpack	110.0	JumpFromPaper Adventure Cartoon Backpack <br>\nBold, Colorful, Cool	The red cartoon backpack is specifically designed to keep your MacBook Pro 13", other digital devices and water bottle safe. <br>\n    Take the cartoon backpack anywhere. <br>\n\nA great adventure is waiting for you.\n\n	2019-01-14 13:36:35.200943	2019-01-14 13:36:35.200943	3	32.6 x 42.8 x 2	32.6 x 42.8 x 11.5		Pop Art Bag, 2D Bag, Cartoon Bag	Polyester Bags	\N	Scrub your bag gently with clean water, or diluted / mild detergent	A4 size, MacBook Pro 13", iPhone	\N	products/classic/Cheese-Orange-Shoulder-Bag.jpg
8	Giggle Pink Shoulder Bag	70.0	Cute, Sweet, Charming	The pink cartoon bag has just enough space for wallet, phone, and other essential items. <br>\n\nWith adjustable straps and colorful outlook, the bag shows that style is your priority. <br>\n\nIt's perfect for an afternoon tea, dinner date, and shopping.	2019-01-14 13:36:35.204997	2019-01-14 13:36:35.204997	3	27.5 x 23 x 2	27.5 x 23 x 8	95 - 145	Pop Art Bag, 2D Bag, Cartoon Bag	Polyester	\N	Dry clean only. Ask a professional to clean	Wallet + Phone + Notes + Car Key + Lipsticks	\N	products/classic/Giggle-Pink-Shoulder-Bag.jpg
9	Blue Checked Backpack	110.0	Summer Plaid X Cartoon Style <br>\nKeep Things Simple	The blue plaid patterns are perfectly suited for a beach trip. <br>\n\nAnd, the cartoon backpack has just enough space to hold your sunscreen, hat, phone, and wallet.<br>\n\nStart your weekend with the cute cartoon style.	2019-01-14 13:36:35.209376	2019-01-14 13:36:35.209376	3	32.2 x 42.9 x 2	32.2 x 42.9 x 10	42.5 - 64.6	Pop Art Bag, 2D Bag, Cartoon bag	PVC / Polyester	\N	Scrub your bag gently with clean water, or diluted / mild detergent	Sunscreen, Hat, Sunglasses, Wallet, Phone	\N	products/classic/Giggle-Pink-Shoulder-Bag.jpg
10	Dark Blue Checked Handbag	90.0	Summer Plaid X Cartoon Style	The dark blue handbag can be carried by either of its adjustable strap or chic handle. <br>\n\nAnd, it has enough space to hold your make-up, phone, and wallet. <br>\n\nStart your weekend with a cute cartoon style.	2019-01-14 13:36:35.214139	2019-01-14 13:36:35.214139	3	24.5 x 29.5 x 2	24.5 x 29.5 x 8	40 - 78	Pop Art Bag, 2D Bag, Cartoon bag	PVC / Polyester	\N	Scrub your bag gently with clean water, or diluted / mild detergent	B6 Size Note, Phone, Credit Cards	5	products/classic/Dark-Blue-Checked-Handbag.jpg
11	Spotlight Yellow Purse	40.0	Classic Spotlight Cartoon Purse_Yellow	Simple design makes everything better. <br> \n\nThe cartoon trend is here for summer. <br>\n\nCatch everyone's attention with our unique spotlight purse.	2019-01-14 13:36:35.218502	2019-01-14 13:36:35.218502	3	22 x 11 x 2	22x 11 x 3		Pop Art Bag, 2D Bag, Cartoon Bag	Polyester	\N	Dry clean only. Ask a professional to clean	Credit Cards, Coins, Checks	\N	products/classic/Spotlight-Yellow-Purse.jpg
12	Blue Checked Handbag	90.0	Summer Plaid X Cartoon Style	The light blue handbag can be carried by either of its adjustable strap or chic handle. <br>\n\nAnd, it has enough space to hold your make-up, phone, and wallet.<br>\n\nStart your weekend with cartoon style.	2019-01-14 13:36:35.222737	2019-01-14 13:36:35.222737	3	24.5 x 29.5 x 2	24.5 x 29.5 x 8	40 - 78	Pop Art Bag, 2D Bag, Cartoon bag	PVC / Polyester	\N	Scrub your bag gently with clean water, or diluted / mild detergent	B6 Size Notes, Phone, Wallet	5	products/classic/Blue-Checked-Handbag.jpg
13	Junior Watermelon Red Spaceman Backpack	105.0	The cartoon backpack for petite women and kids.	Nothing says summer like the watermelon red cartoon backpack. <br>\n\nEquipped with the shoulder strap pads and breathable fabric, the red backpack is perfect for comfort. <br>\n\nIt has enough space for iPad, iPhone, car key and other personal items.  <br>\n\nLet's show people your summer style!	2019-01-14 13:36:35.227706	2019-01-14 13:36:35.227706	4	30.4 x 34.3 x 3	30.4 x 34.3 x 10	38 - 85	Pop Art Bag, 2D Bag, Cartoon Bag	Polyester	\N	Dry clean only.Ask a professional to clean	Phone + iPad + Car Key + Notes	\N	products/color-me-in/Junior-Watermelon-Red-Spaceman-Backpack.jpg
14	Cheese Sky Blue Messenger Bag	90.0	JumpFromPaper Cheese Camera Bag	A little vintage shape and sky & cloud patterns are perfectly suited for an afternoon stroll. <br>\n\nIt's big enough to hold your camera, phone, and other personal items. <br>\n\nWear the sky messenger bag and dream on.	2019-01-14 13:36:35.232439	2019-01-14 13:36:35.232439	4	33 x 27.5 x 2	33 x 27.5 x 7.5	70 - 140	Pop Art Bag, 2D Bag, Cartoon Bag	Polyester	\N	Dry clean only. Ask a professional to clean	Phone, Digital Camera	\N	products/color-me-in/Cheese-Sky-Blue-Messenger-Bag.jpg
15	Giggle Minion Yellow Shoulder Bag	75.0	Add more yellow to your life.	The cheerfullest color of this summer. <br>\n\nThe minion yellow cartoon bag has enough space for wallet, phone, and other essential items. <br>\n\n\n\nWith adjustable straps and colorful outlook, the bag shows that style is your priority.<br>\n\nIt's a perfect match for your ice creams, bathing suits, denim, and sunglass. 	2019-01-14 13:36:35.23708	2019-01-14 13:36:35.23708	4	28 x 23 x 2	28 x 23 x 8	95 - 145	Pop Art Bag, 2D Bag, Cartoon Bag	Polyester	\N	Dry clean only. Ask a professional to clean	Wallet + Phone +  Cart Key + Notes + Lipsticks	\N	products/color-me-in/Giggle-Minion-Yellow-Shoulder-Bag.jpg
16	Junior Airy Blue Spaceman Backpack	105.0	The cartoon backpack for petite women and kids.	Comfort, Fresh, Unique. <br>\n\nEquipped with the shoulder strap pads and breathable fabric, the blue backpack is perfect for comfort. <br>\n\nIt has enough space for iPad, iPhone, car key and other personal items.  <br>\n\nLet's show people your summer style!	2019-01-14 13:36:35.242388	2019-01-14 13:36:35.242388	4	30.4 x 34.3 x 3	30.4 x 34.3 x 10	38 - 85	Pop Art Bag, 2D Bag, Cartoon Bag	Polyester	\N	Dry clean only. Ask a professional to clean	Phone + iPad +  Car Key + Notes	\N	products/color-me-in/Junior-Airy-Blue-Spaceman-Backpack.jpg
17	Airy Blue Spaceman Backpack	125.0	Comfort, Fresh, Unique	The airy blue cartoon backpack is big enough for MacBook Pro 13", A4 size books, and other essential items. <br>\n\nEquipped with the shoulder strap pads and breathable fabric, it's perfect for a cozy summer.	2019-01-14 13:36:35.247663	2019-01-14 13:36:35.247663	4	36 x 39.5 x 3	36 x 39.5 x 11	42.5 - 85	Pop Art Bag, 2D Bag, Cartoon Bag	Polyester	\N	Dry clean only. Ask a professional to clean	MacBook Pro 13" + Headphones + Phone + Wallet + A4 Size Notes + Water Bottle	\N	products/color-me-in/Airy-Blue-Spaceman-Backpack.jpg
18	Giggle Watermelon Red Shoulder Bag	75.0	Summer's here! 	It's not red. It's not pink. It's watermelon red. <br>\n\nOne of the fabulous colors for this summer. <br>\n\nIt's perfect for a weekend trip, city exploration, and daily commute.	2019-01-14 13:36:35.252115	2019-01-14 13:36:35.252115	4	28 x 23 x 2	28 x 23 x 8	95 - 145	Pop Art Bag, 2D Bag, Cartoon Bag	Polyester	\N	Dry clean only. Ask a professional to clean	Wallet + Phone + Notes + Car Key + Lipsticks	\N	products/color-me-in/Giggle-Watermelon-Red-Shoulder-Bag.jpg
19	Cactus Green Backpack	210.0	JumpFromPaper X The Rodnik Band Collection<br>\n    Cartoon Bag Meets Pop Art Style Adventure	It comes in polyester with adjustable straps, depicting a green cactus with yellow spikes. <br>\n\nAnd, it has enough space for iPad, phone, and other personal items. <br>\n\nLet's catch people's eyes by the coolest cactus of the year. <br>\n\nCheck cactus street style inspiration: <a href="https://www.jumpfrompaper.com/blogs/news/2018-coolest-cactus-look" here. /a>  	2019-01-14 13:36:35.256722	2019-01-14 13:36:35.256722	4	42.5 x 40 x10	42.5 x 40 x 10	41 - 81.5	Pop Art Bag, 2D Bag, Cartoon Bag	Polyester	\N	Dry clean only. Ask a professional to clean	iPad Pro 10.5" + Phone + Wallet + Car Key 	\N	products/color-me-in/Cactus-Green-Backpack.jpg
20	Spotlight Airy Blue Purse	40.0	Classic Spotlight Cartoon Purse_Airy Blue	Simple design makes everything better.  <br>\n\nThe cartoon trend is here for summer. <br>\n\nCatch everyone's attention with our unique spotlight purse.	2019-01-14 13:36:35.261195	2019-01-14 13:36:35.261195	4	22x 11 x 2	22x 11 x 3		Pop Art Bag, 2D Bag, Cartoon Bag	Polyester	\N	Dry clean only. Ask a professional to clean	Credit Cards, Coins, Checks	\N	products/color-me-in/Spotlight-Airy-Blue-Purse.jpg
21	Junior Minion Yellow Spaceman Backpack	105.0	The cartoon backpack for petite women and kids.	Cool, Young, Energetic. <br>\n\nEquipped with the shoulder strap pads and breathable fabric, the yellow backpack is perfect for comfort. <br>\n\nIt has just enough space for iPad, iPhone, car key and other personal items.  <br>\n\nLet's show people your unique style!	2019-01-14 13:36:35.265539	2019-01-14 13:36:35.265539	4	30.4 x 34.3 x 3	30.4 x 34.3 x 10	38 - 85	Pop Art Bag, 2D Bag, Cartoon Bag	Polyester	\N	Dry clean only. Ask a professional to clean	Phone + iPad + Car Key + Notes	\N	products/color-me-in/Junior-Minion-Yellow-Spaceman-Backpack.jpg
22	Junior Giggle Airy Blue Shoulder Bag	65.0	Lighten up! <br>\nCarry just the essentials!	The color of the sky. The color of the sea. The color of summer air.<br>\n\nThe perfect bag to keep you cool in the heatwave. 	2019-01-14 13:36:35.26974	2019-01-14 13:36:35.26974	4	24 x 19.5 x 2	24 x 19.5 x 7	90 - 125	Pop Art Bag, 2D Bag, Cartoon Bag	Polyester	\N	Dry clean only. Ask a professional to clean	Car Key + Phone + Lipsticks + Credit Cards	\N	products/color-me-in/Junior-Giggle-Airy-Blue-Shoulder-Bag.jpg
23	Junior Giggle Minion Yellow Shoulder Bag	65.0	Lighten up! <br>\nCarry just the essentials!	Add more yellow to your life.<br>\n\nThe happiest and cutest color of this summer. <br>\n\nThe bag shows that style is your priority.	2019-01-14 13:36:35.273779	2019-01-14 13:36:35.273779	4	24 x 19.5 x 2	24 x 19.5 x 7	90 - 125	Pop Art Bag, 2D Bag, Cartoon Bag	Polyester	\N	Dry clean only. Ask a professional to clean	Lipsticks + Phone + Credit Cards + Car Key.	\N	products/color-me-in/Junior-Giggle-Minion-Yellow-Shoulder-Bag.jpg
24	Watermelon Red Spaceman Backpack	125.0	Nothing says summer like the watermelon red cartoon backpack. 	The backpack is big enough for MacBook Pro 13", A4 size books, and other digital devices. <br>\n\nEquipped with the shoulder strap pads and breathable fabric, it's perfect for comfort.<br>\n\nAlso, It can easily go with any white T-shirt, denim accessory, and swimsuits.  	2019-01-14 13:36:35.277783	2019-01-14 13:36:35.277783	4	36 x 39.5 x 3	36 x 39.5 x 11	42.5 - 85	Pop Art Bag, 2D Bag, Cartoon Bag	Polyester	\N	Dry clean only. Ask a professional to clean	MacBook Pro 13" + Headphones + Phone + Wallet + Water Bottle + A4 Size Notes	\N	products/color-me-in/Watermelon-Red-Spaceman-Backpack.jpg
25	Spotlight Watermelon Red Purse	40.0	Classic Spotlight Cartoon Purse_Watermelon	Simple design makes everything better.  \n\nThe cartoon trend is here for summer. \n\nCatch everyone's attention with our unique spotlight purse.	2019-01-14 13:36:35.281851	2019-01-14 13:36:35.281851	4	22 x 11 x 2	22 x 11 x 3		Pop Art Bag, 2D Bag, Cartoon Bag	Polyester	\N	Dry clean only. Ask a professional to clean	Credit Cards, Coins, Checks 	\N	products/color-me-in/Spotlight-Watermelon-Red-Purse.jpg
26	Minion Yellow Spaceman Backpack	125.0	Cool, Young, Energetic. 	The Minion Yellow backpack is big enough for MacBook Pro 13", A4 size books, and other digital devices. <br>\n\nEquipped with the shoulder strap pads and breathable fabric, it's perfect for comfort. <br>\n\nIt's also your good companion for commuting, traveling and hiking. 	2019-01-14 13:36:35.285724	2019-01-14 13:36:35.285724	4	36 x 39.5 x 3	36.x 39.5x 11	42.5 - 85	Pop Art Bag, 2D Bag, Cartoon Bag	Polyester	\N	Dry clean only. Ask a professional to clean	MacBook Pro 13" + Headphones + Wallet + Phone + A4 Size Notes + Water Bottle	\N	products/color-me-in/Minion-Yellow-Spaceman-Backpack.jpg
27	Spotlight Yellow Purse	40.0	Classic Spotlight Cartoon Purse_Yellow	Simple design makes everything better.  <br>\n\nThe cartoon trend is here for summer. <br>\n\nCatch everyone's attention with our unique spotlight purse.	2019-01-14 13:36:35.289794	2019-01-14 13:36:35.289794	4	22 x 11 x 2	22x 11 x 3		Pop Art Bag, 2D Bag, Cartoon Bag	Polyester	\N	Dry clean only. Ask a professional to clean	Credit Cards, Coins, Checks 	\N	products/color-me-in/Spotlight-Yellow-Purse.jpg
28	Poketto Airy Blue Wallet	35.0	Enjoy the simple 2D design in life. 	An airy blue cartoon wallet is your personal statement of style.	2019-01-14 13:36:35.294029	2019-01-14 13:36:35.294029	4	11 x 13 x 2	11 x 13 x 3		Pop Art Bag, 2D Bag, Cartoon Bag	Polyester	\N	Dry clean only. Ask a professional to clean	Credit cards, Banknote, Coins	\N	products/color-me-in/Poketto-Airy-Blue-Wallet.jpg
29	Poketto Watermelon Red Wallet	35.0	Enjoy the simple 2D design in life. 	A watermelon red cartoon wallet is your personal statement of style.	2019-01-14 13:36:35.298358	2019-01-14 13:36:35.298358	4	11 x 13 x 2	11 x 13 x 3		Pop Art Bag, 2D Bag, Cartoon Bag	Polyester	\N	Dry clean only. Ask a professional to clean	Credit cards, Banknote, Coins	\N	products/color-me-in/Poketto-Watermelon-Red-Wallet.jpg
30	Art Baby Pink Purse	36.0	JumpFromPaper X Art Baby Collection	\n    Pink is not just a color! It's an attitude!<br>\n    Let's show people your chic cartoon style! 	2019-01-14 14:08:26.484553	2019-01-14 14:08:26.484553	2	11 x 22 x 2	11 x 22 x 3		Pop Art Bag, 2D Bag, Cartoon Bag	Polyester	\N	Scrub your bag gently with clean water, or diluted / mild detergent	Credit cards, Banknote, Coins	\N	products/art-baby/Art-Baby-Backpack.jpg
31	Art Baby Backpack	128.0	JumpFromPaper Cartoon Backpack 	Pink is not just a color! It's an attitude!<br>\n\nThe pink cartoon backpack has enough space for your MacBook Air 13", water bottle, and other essential items. <br>\n\nLet's show everyone your chic cartoon style! 	2019-01-14 14:08:26.492251	2019-01-14 14:08:26.492251	2	36 x 39.5 x 2	36 x 39.5 x 11	42.5 - 64.5	Pop Art Bag, 2D Bag, Cartoon Bag	Polyester	\N	Scrub your bag gently with clean water, or diluted / mild detergent	MacBook Air 13",  A4 Size Books, Water Bottle	\N	products/art-baby/Art-Baby-Pink-Purse.jpg
32	Cheese Orange Shoulder Bag	80.0	JumpFromPaper Cheese Camera Bag	The bag is big enough to hold your digital camera and phone. <br>\n\nRecord everything special in your daily life. <br>\n\nIt's also the unique cartoon gift for people who love to travel. 	2019-01-14 14:08:26.496581	2019-01-14 14:08:26.496581	3	33.5 x 27.5 x 2	33.5 x 27.5 x 2	71 - 140	Pop Art Bag, 2D Bag, Cartoon Bag	Polyester	\N	Scrub your bag gently with clean water, or diluted / mild detergent	Phone, Digital Camera	\N	products/classic/Cheese-Orange-Shoulder-Bag.jpg
33	Turquoise Spaceman Backpack	120.0	JumpFromPaper Classic Cartoon Backpack	The cartoon bag is specifically designed to keep your MacBook Air 13", A4 books and water bottle safe. <br>\n\nThe unique and stylish cartoon bag can easily go with any style.  <br>\n\nWear the turquoise backpack and go exploring.	2019-01-14 14:08:26.500452	2019-01-14 14:08:26.500452	3	36 x 39.5 x 2	36 x 39.5 x 11	42.5 - 64.5	Pop Art Bag, 2D Bag, Cartoon Bag	Polyester Bags	\N	Scrub your bag gently with clean water, or diluted / mild detergent	MacBook Air 13", A4 Size Book	\N	products/classic/Turquoise-Spaceman-Backpack.jpg
34	Red Checked Handbag	90.0	Summer Plaid X Cartoon Style	The red handbag can be carried by either of its adjustable strap or chic handle. <br>\n\nAnd, it has enough space to hold your make-up, phone, and wallet. <br>\n\nStart your weekend with a cute cartoon style.	2019-01-14 14:08:26.504177	2019-01-14 14:08:26.504177	3	24.5 x 29.5 x 2	24.5 x 29.5 x 8	40 - 78	Pop Art Bag, 2D Bag, Cartoon bag	PVC / Polyester	\N	Scrub your bag gently with clean water, or diluted / mild detergent	B6 Size Note, Phone, Credit Cards	5	products/classic/Red-Checked-Handbag.jpg
35	Adventure Pink Backpack	110.0	JumpFromPaper Adventure Cartoon Backpack<br>\nChic, Adorable, Unique 	The pink cartoon backpack is specifically designed to keep your MacBook Pro 13", other digital devices and water bottle safe. <br>\n\nTake the cartoon backpack anywhere and let your adventure begin. 	2019-01-14 14:08:26.508789	2019-01-14 14:08:26.508789	3	32.6 x 42.8 x 2	32.6 x 42.8 x 11.5	42.5 - 64.5	Pop Art Bag, 2D Bag, Cartoon Bag	Polyester Bags	\N	Scrub your bag gently with clean water, or diluted / mild detergent	A4 size, MacBook Pro 13", Phone, Wallet	\N	products/classic/Adventure-Pink-Backpack.jpg
36	Adventure Red Backpack	110.0	JumpFromPaper Adventure Cartoon Backpack <br>\nBold, Colorful, Cool	The red cartoon backpack is specifically designed to keep your MacBook Pro 13", other digital devices and water bottle safe. <br>\n    Take the cartoon backpack anywhere. <br>\n\nA great adventure is waiting for you.\n\n	2019-01-14 14:08:26.513896	2019-01-14 14:08:26.513896	3	32.6 x 42.8 x 2	32.6 x 42.8 x 11.5		Pop Art Bag, 2D Bag, Cartoon Bag	Polyester Bags	\N	Scrub your bag gently with clean water, or diluted / mild detergent	A4 size, MacBook Pro 13", iPhone	\N	products/classic/Cheese-Orange-Shoulder-Bag.jpg
37	Giggle Pink Shoulder Bag	70.0	Cute, Sweet, Charming	The pink cartoon bag has just enough space for wallet, phone, and other essential items. <br>\n\nWith adjustable straps and colorful outlook, the bag shows that style is your priority. <br>\n\nIt's perfect for an afternoon tea, dinner date, and shopping.	2019-01-14 14:08:26.520316	2019-01-14 14:08:26.520316	3	27.5 x 23 x 2	27.5 x 23 x 8	95 - 145	Pop Art Bag, 2D Bag, Cartoon Bag	Polyester	\N	Dry clean only. Ask a professional to clean	Wallet + Phone + Notes + Car Key + Lipsticks	\N	products/classic/Giggle-Pink-Shoulder-Bag.jpg
38	Blue Checked Backpack	110.0	Summer Plaid X Cartoon Style <br>\nKeep Things Simple	The blue plaid patterns are perfectly suited for a beach trip. <br>\n\nAnd, the cartoon backpack has just enough space to hold your sunscreen, hat, phone, and wallet.<br>\n\nStart your weekend with the cute cartoon style.	2019-01-14 14:08:26.527355	2019-01-14 14:08:26.527355	3	32.2 x 42.9 x 2	32.2 x 42.9 x 10	42.5 - 64.6	Pop Art Bag, 2D Bag, Cartoon bag	PVC / Polyester	\N	Scrub your bag gently with clean water, or diluted / mild detergent	Sunscreen, Hat, Sunglasses, Wallet, Phone	\N	products/classic/Giggle-Pink-Shoulder-Bag.jpg
39	Dark Blue Checked Handbag	90.0	Summer Plaid X Cartoon Style	The dark blue handbag can be carried by either of its adjustable strap or chic handle. <br>\n\nAnd, it has enough space to hold your make-up, phone, and wallet. <br>\n\nStart your weekend with a cute cartoon style.	2019-01-14 14:08:26.532267	2019-01-14 14:08:26.532267	3	24.5 x 29.5 x 2	24.5 x 29.5 x 8	40 - 78	Pop Art Bag, 2D Bag, Cartoon bag	PVC / Polyester	\N	Scrub your bag gently with clean water, or diluted / mild detergent	B6 Size Note, Phone, Credit Cards	5	products/classic/Dark-Blue-Checked-Handbag.jpg
40	Spotlight Yellow Purse	40.0	Classic Spotlight Cartoon Purse_Yellow	Simple design makes everything better. <br> \n\nThe cartoon trend is here for summer. <br>\n\nCatch everyone's attention with our unique spotlight purse.	2019-01-14 14:08:26.536903	2019-01-14 14:08:26.536903	3	22 x 11 x 2	22x 11 x 3		Pop Art Bag, 2D Bag, Cartoon Bag	Polyester	\N	Dry clean only. Ask a professional to clean	Credit Cards, Coins, Checks	\N	products/classic/Spotlight-Yellow-Purse.jpg
41	Blue Checked Handbag	90.0	Summer Plaid X Cartoon Style	The light blue handbag can be carried by either of its adjustable strap or chic handle. <br>\n\nAnd, it has enough space to hold your make-up, phone, and wallet.<br>\n\nStart your weekend with cartoon style.	2019-01-14 14:08:26.540939	2019-01-14 14:08:26.540939	3	24.5 x 29.5 x 2	24.5 x 29.5 x 8	40 - 78	Pop Art Bag, 2D Bag, Cartoon bag	PVC / Polyester	\N	Scrub your bag gently with clean water, or diluted / mild detergent	B6 Size Notes, Phone, Wallet	5	products/classic/Blue-Checked-Handbag.jpg
42	Junior Watermelon Red Spaceman Backpack	105.0	The cartoon backpack for petite women and kids.	Nothing says summer like the watermelon red cartoon backpack. <br>\n\nEquipped with the shoulder strap pads and breathable fabric, the red backpack is perfect for comfort. <br>\n\nIt has enough space for iPad, iPhone, car key and other personal items.  <br>\n\nLet's show people your summer style!	2019-01-14 14:08:26.54491	2019-01-14 14:08:26.54491	4	30.4 x 34.3 x 3	30.4 x 34.3 x 10	38 - 85	Pop Art Bag, 2D Bag, Cartoon Bag	Polyester	\N	Dry clean only.Ask a professional to clean	Phone + iPad + Car Key + Notes	\N	products/color-me-in/Junior-Watermelon-Red-Spaceman-Backpack.jpg
43	Cheese Sky Blue Messenger Bag	90.0	JumpFromPaper Cheese Camera Bag	A little vintage shape and sky & cloud patterns are perfectly suited for an afternoon stroll. <br>\n\nIt's big enough to hold your camera, phone, and other personal items. <br>\n\nWear the sky messenger bag and dream on.	2019-01-14 14:08:26.550087	2019-01-14 14:08:26.550087	4	33 x 27.5 x 2	33 x 27.5 x 7.5	70 - 140	Pop Art Bag, 2D Bag, Cartoon Bag	Polyester	\N	Dry clean only. Ask a professional to clean	Phone, Digital Camera	\N	products/color-me-in/Cheese-Sky-Blue-Messenger-Bag.jpg
44	Giggle Minion Yellow Shoulder Bag	75.0	Add more yellow to your life.	The cheerfullest color of this summer. <br>\n\nThe minion yellow cartoon bag has enough space for wallet, phone, and other essential items. <br>\n\n\n\nWith adjustable straps and colorful outlook, the bag shows that style is your priority.<br>\n\nIt's a perfect match for your ice creams, bathing suits, denim, and sunglass. 	2019-01-14 14:08:26.55512	2019-01-14 14:08:26.55512	4	28 x 23 x 2	28 x 23 x 8	95 - 145	Pop Art Bag, 2D Bag, Cartoon Bag	Polyester	\N	Dry clean only. Ask a professional to clean	Wallet + Phone +  Cart Key + Notes + Lipsticks	\N	products/color-me-in/Giggle-Minion-Yellow-Shoulder-Bag.jpg
45	Junior Airy Blue Spaceman Backpack	105.0	The cartoon backpack for petite women and kids.	Comfort, Fresh, Unique. <br>\n\nEquipped with the shoulder strap pads and breathable fabric, the blue backpack is perfect for comfort. <br>\n\nIt has enough space for iPad, iPhone, car key and other personal items.  <br>\n\nLet's show people your summer style!	2019-01-14 14:08:26.559881	2019-01-14 14:08:26.559881	4	30.4 x 34.3 x 3	30.4 x 34.3 x 10	38 - 85	Pop Art Bag, 2D Bag, Cartoon Bag	Polyester	\N	Dry clean only. Ask a professional to clean	Phone + iPad +  Car Key + Notes	\N	products/color-me-in/Junior-Airy-Blue-Spaceman-Backpack.jpg
46	Airy Blue Spaceman Backpack	125.0	Comfort, Fresh, Unique	The airy blue cartoon backpack is big enough for MacBook Pro 13", A4 size books, and other essential items. <br>\n\nEquipped with the shoulder strap pads and breathable fabric, it's perfect for a cozy summer.	2019-01-14 14:08:26.563524	2019-01-14 14:08:26.563524	4	36 x 39.5 x 3	36 x 39.5 x 11	42.5 - 85	Pop Art Bag, 2D Bag, Cartoon Bag	Polyester	\N	Dry clean only. Ask a professional to clean	MacBook Pro 13" + Headphones + Phone + Wallet + A4 Size Notes + Water Bottle	\N	products/color-me-in/Airy-Blue-Spaceman-Backpack.jpg
47	Giggle Watermelon Red Shoulder Bag	75.0	Summer's here! 	It's not red. It's not pink. It's watermelon red. <br>\n\nOne of the fabulous colors for this summer. <br>\n\nIt's perfect for a weekend trip, city exploration, and daily commute.	2019-01-14 14:08:26.56719	2019-01-14 14:08:26.56719	4	28 x 23 x 2	28 x 23 x 8	95 - 145	Pop Art Bag, 2D Bag, Cartoon Bag	Polyester	\N	Dry clean only. Ask a professional to clean	Wallet + Phone + Notes + Car Key + Lipsticks	\N	products/color-me-in/Giggle-Watermelon-Red-Shoulder-Bag.jpg
48	Cactus Green Backpack	210.0	JumpFromPaper X The Rodnik Band Collection<br>\n    Cartoon Bag Meets Pop Art Style Adventure	It comes in polyester with adjustable straps, depicting a green cactus with yellow spikes. <br>\n\nAnd, it has enough space for iPad, phone, and other personal items. <br>\n\nLet's catch people's eyes by the coolest cactus of the year. <br>\n\nCheck cactus street style inspiration: <a href="https://www.jumpfrompaper.com/blogs/news/2018-coolest-cactus-look" here. /a>  	2019-01-14 14:08:26.571444	2019-01-14 14:08:26.571444	4	42.5 x 40 x10	42.5 x 40 x 10	41 - 81.5	Pop Art Bag, 2D Bag, Cartoon Bag	Polyester	\N	Dry clean only. Ask a professional to clean	iPad Pro 10.5" + Phone + Wallet + Car Key 	\N	products/color-me-in/Cactus-Green-Backpack.jpg
49	Spotlight Airy Blue Purse	40.0	Classic Spotlight Cartoon Purse_Airy Blue	Simple design makes everything better.  <br>\n\nThe cartoon trend is here for summer. <br>\n\nCatch everyone's attention with our unique spotlight purse.	2019-01-14 14:08:26.576999	2019-01-14 14:08:26.576999	4	22x 11 x 2	22x 11 x 3		Pop Art Bag, 2D Bag, Cartoon Bag	Polyester	\N	Dry clean only. Ask a professional to clean	Credit Cards, Coins, Checks	\N	products/color-me-in/Spotlight-Airy-Blue-Purse.jpg
50	Junior Minion Yellow Spaceman Backpack	105.0	The cartoon backpack for petite women and kids.	Cool, Young, Energetic. <br>\n\nEquipped with the shoulder strap pads and breathable fabric, the yellow backpack is perfect for comfort. <br>\n\nIt has just enough space for iPad, iPhone, car key and other personal items.  <br>\n\nLet's show people your unique style!	2019-01-14 14:08:26.583003	2019-01-14 14:08:26.583003	4	30.4 x 34.3 x 3	30.4 x 34.3 x 10	38 - 85	Pop Art Bag, 2D Bag, Cartoon Bag	Polyester	\N	Dry clean only. Ask a professional to clean	Phone + iPad + Car Key + Notes	\N	products/color-me-in/Junior-Minion-Yellow-Spaceman-Backpack.jpg
51	Junior Giggle Airy Blue Shoulder Bag	65.0	Lighten up! <br>\nCarry just the essentials!	The color of the sky. The color of the sea. The color of summer air.<br>\n\nThe perfect bag to keep you cool in the heatwave. 	2019-01-14 14:08:26.58736	2019-01-14 14:08:26.58736	4	24 x 19.5 x 2	24 x 19.5 x 7	90 - 125	Pop Art Bag, 2D Bag, Cartoon Bag	Polyester	\N	Dry clean only. Ask a professional to clean	Car Key + Phone + Lipsticks + Credit Cards	\N	products/color-me-in/Junior-Giggle-Airy-Blue-Shoulder-Bag.jpg
52	Junior Giggle Minion Yellow Shoulder Bag	65.0	Lighten up! <br>\nCarry just the essentials!	Add more yellow to your life.<br>\n\nThe happiest and cutest color of this summer. <br>\n\nThe bag shows that style is your priority.	2019-01-14 14:08:26.593171	2019-01-14 14:08:26.593171	4	24 x 19.5 x 2	24 x 19.5 x 7	90 - 125	Pop Art Bag, 2D Bag, Cartoon Bag	Polyester	\N	Dry clean only. Ask a professional to clean	Lipsticks + Phone + Credit Cards + Car Key.	\N	products/color-me-in/Junior-Giggle-Minion-Yellow-Shoulder-Bag.jpg
53	Watermelon Red Spaceman Backpack	125.0	Nothing says summer like the watermelon red cartoon backpack. 	The backpack is big enough for MacBook Pro 13", A4 size books, and other digital devices. <br>\n\nEquipped with the shoulder strap pads and breathable fabric, it's perfect for comfort.<br>\n\nAlso, It can easily go with any white T-shirt, denim accessory, and swimsuits.  	2019-01-14 14:08:26.597222	2019-01-14 14:08:26.597222	4	36 x 39.5 x 3	36 x 39.5 x 11	42.5 - 85	Pop Art Bag, 2D Bag, Cartoon Bag	Polyester	\N	Dry clean only. Ask a professional to clean	MacBook Pro 13" + Headphones + Phone + Wallet + Water Bottle + A4 Size Notes	\N	products/color-me-in/Watermelon-Red-Spaceman-Backpack.jpg
54	Spotlight Watermelon Red Purse	40.0	Classic Spotlight Cartoon Purse_Watermelon	Simple design makes everything better.  \n\nThe cartoon trend is here for summer. \n\nCatch everyone's attention with our unique spotlight purse.	2019-01-14 14:08:26.602316	2019-01-14 14:08:26.602316	4	22 x 11 x 2	22 x 11 x 3		Pop Art Bag, 2D Bag, Cartoon Bag	Polyester	\N	Dry clean only. Ask a professional to clean	Credit Cards, Coins, Checks 	\N	products/color-me-in/Spotlight-Watermelon-Red-Purse.jpg
55	Minion Yellow Spaceman Backpack	125.0	Cool, Young, Energetic. 	The Minion Yellow backpack is big enough for MacBook Pro 13", A4 size books, and other digital devices. <br>\n\nEquipped with the shoulder strap pads and breathable fabric, it's perfect for comfort. <br>\n\nIt's also your good companion for commuting, traveling and hiking. 	2019-01-14 14:08:26.60679	2019-01-14 14:08:26.60679	4	36 x 39.5 x 3	36.x 39.5x 11	42.5 - 85	Pop Art Bag, 2D Bag, Cartoon Bag	Polyester	\N	Dry clean only. Ask a professional to clean	MacBook Pro 13" + Headphones + Wallet + Phone + A4 Size Notes + Water Bottle	\N	products/color-me-in/Minion-Yellow-Spaceman-Backpack.jpg
56	Spotlight Yellow Purse	40.0	Classic Spotlight Cartoon Purse_Yellow	Simple design makes everything better.  <br>\n\nThe cartoon trend is here for summer. <br>\n\nCatch everyone's attention with our unique spotlight purse.	2019-01-14 14:08:26.61178	2019-01-14 14:08:26.61178	4	22 x 11 x 2	22x 11 x 3		Pop Art Bag, 2D Bag, Cartoon Bag	Polyester	\N	Dry clean only. Ask a professional to clean	Credit Cards, Coins, Checks 	\N	products/color-me-in/Spotlight-Yellow-Purse.jpg
57	Poketto Airy Blue Wallet	35.0	Enjoy the simple 2D design in life. 	An airy blue cartoon wallet is your personal statement of style.	2019-01-14 14:08:26.615987	2019-01-14 14:08:26.615987	4	11 x 13 x 2	11 x 13 x 3		Pop Art Bag, 2D Bag, Cartoon Bag	Polyester	\N	Dry clean only. Ask a professional to clean	Credit cards, Banknote, Coins	\N	products/color-me-in/Poketto-Airy-Blue-Wallet.jpg
58	Poketto Watermelon Red Wallet	35.0	Enjoy the simple 2D design in life. 	A watermelon red cartoon wallet is your personal statement of style.	2019-01-14 14:08:26.620197	2019-01-14 14:08:26.620197	4	11 x 13 x 2	11 x 13 x 3		Pop Art Bag, 2D Bag, Cartoon Bag	Polyester	\N	Dry clean only. Ask a professional to clean	Credit cards, Banknote, Coins	\N	products/color-me-in/Poketto-Watermelon-Red-Wallet.jpg
59	Art Baby Pink Purse	36.0	JumpFromPaper X Art Baby Collection	\n    Pink is not just a color! It's an attitude!<br>\n    Let's show people your chic cartoon style! 	2019-01-14 14:10:26.372706	2019-01-14 14:10:26.372706	2	11 x 22 x 2	11 x 22 x 3		Pop Art Bag, 2D Bag, Cartoon Bag	Polyester	\N	Scrub your bag gently with clean water, or diluted / mild detergent	Credit cards, Banknote, Coins	\N	products/art-baby/Art-Baby-Backpack.jpg
60	Art Baby Backpack	128.0	JumpFromPaper Cartoon Backpack 	Pink is not just a color! It's an attitude!<br>\n\nThe pink cartoon backpack has enough space for your MacBook Air 13", water bottle, and other essential items. <br>\n\nLet's show everyone your chic cartoon style! 	2019-01-14 14:10:26.377384	2019-01-14 14:10:26.377384	2	36 x 39.5 x 2	36 x 39.5 x 11	42.5 - 64.5	Pop Art Bag, 2D Bag, Cartoon Bag	Polyester	\N	Scrub your bag gently with clean water, or diluted / mild detergent	MacBook Air 13",  A4 Size Books, Water Bottle	\N	products/art-baby/Art-Baby-Pink-Purse.jpg
61	Cheese Orange Shoulder Bag	80.0	JumpFromPaper Cheese Camera Bag	The bag is big enough to hold your digital camera and phone. <br>\n\nRecord everything special in your daily life. <br>\n\nIt's also the unique cartoon gift for people who love to travel. 	2019-01-14 14:10:26.381062	2019-01-14 14:10:26.381062	3	33.5 x 27.5 x 2	33.5 x 27.5 x 2	71 - 140	Pop Art Bag, 2D Bag, Cartoon Bag	Polyester	\N	Scrub your bag gently with clean water, or diluted / mild detergent	Phone, Digital Camera	\N	products/classic/Cheese-Orange-Shoulder-Bag.jpg
62	Turquoise Spaceman Backpack	120.0	JumpFromPaper Classic Cartoon Backpack	The cartoon bag is specifically designed to keep your MacBook Air 13", A4 books and water bottle safe. <br>\n\nThe unique and stylish cartoon bag can easily go with any style.  <br>\n\nWear the turquoise backpack and go exploring.	2019-01-14 14:10:26.38495	2019-01-14 14:10:26.38495	3	36 x 39.5 x 2	36 x 39.5 x 11	42.5 - 64.5	Pop Art Bag, 2D Bag, Cartoon Bag	Polyester Bags	\N	Scrub your bag gently with clean water, or diluted / mild detergent	MacBook Air 13", A4 Size Book	\N	products/classic/Turquoise-Spaceman-Backpack.jpg
63	Red Checked Handbag	90.0	Summer Plaid X Cartoon Style	The red handbag can be carried by either of its adjustable strap or chic handle. <br>\n\nAnd, it has enough space to hold your make-up, phone, and wallet. <br>\n\nStart your weekend with a cute cartoon style.	2019-01-14 14:10:26.389744	2019-01-14 14:10:26.389744	3	24.5 x 29.5 x 2	24.5 x 29.5 x 8	40 - 78	Pop Art Bag, 2D Bag, Cartoon bag	PVC / Polyester	\N	Scrub your bag gently with clean water, or diluted / mild detergent	B6 Size Note, Phone, Credit Cards	5	products/classic/Red-Checked-Handbag.jpg
64	Adventure Pink Backpack	110.0	JumpFromPaper Adventure Cartoon Backpack<br>\nChic, Adorable, Unique 	The pink cartoon backpack is specifically designed to keep your MacBook Pro 13", other digital devices and water bottle safe. <br>\n\nTake the cartoon backpack anywhere and let your adventure begin. 	2019-01-14 14:10:26.393533	2019-01-14 14:10:26.393533	3	32.6 x 42.8 x 2	32.6 x 42.8 x 11.5	42.5 - 64.5	Pop Art Bag, 2D Bag, Cartoon Bag	Polyester Bags	\N	Scrub your bag gently with clean water, or diluted / mild detergent	A4 size, MacBook Pro 13", Phone, Wallet	\N	products/classic/Adventure-Pink-Backpack.jpg
65	Adventure Red Backpack	110.0	JumpFromPaper Adventure Cartoon Backpack <br>\nBold, Colorful, Cool	The red cartoon backpack is specifically designed to keep your MacBook Pro 13", other digital devices and water bottle safe. <br>\n    Take the cartoon backpack anywhere. <br>\n\nA great adventure is waiting for you.\n\n	2019-01-14 14:10:26.39695	2019-01-14 14:10:26.39695	3	32.6 x 42.8 x 2	32.6 x 42.8 x 11.5		Pop Art Bag, 2D Bag, Cartoon Bag	Polyester Bags	\N	Scrub your bag gently with clean water, or diluted / mild detergent	A4 size, MacBook Pro 13", iPhone	\N	products/classic/Cheese-Orange-Shoulder-Bag.jpg
66	Giggle Pink Shoulder Bag	70.0	Cute, Sweet, Charming	The pink cartoon bag has just enough space for wallet, phone, and other essential items. <br>\n\nWith adjustable straps and colorful outlook, the bag shows that style is your priority. <br>\n\nIt's perfect for an afternoon tea, dinner date, and shopping.	2019-01-14 14:10:26.401558	2019-01-14 14:10:26.401558	3	27.5 x 23 x 2	27.5 x 23 x 8	95 - 145	Pop Art Bag, 2D Bag, Cartoon Bag	Polyester	\N	Dry clean only. Ask a professional to clean	Wallet + Phone + Notes + Car Key + Lipsticks	\N	products/classic/Giggle-Pink-Shoulder-Bag.jpg
67	Blue Checked Backpack	110.0	Summer Plaid X Cartoon Style <br>\nKeep Things Simple	The blue plaid patterns are perfectly suited for a beach trip. <br>\n\nAnd, the cartoon backpack has just enough space to hold your sunscreen, hat, phone, and wallet.<br>\n\nStart your weekend with the cute cartoon style.	2019-01-14 14:10:26.406407	2019-01-14 14:10:26.406407	3	32.2 x 42.9 x 2	32.2 x 42.9 x 10	42.5 - 64.6	Pop Art Bag, 2D Bag, Cartoon bag	PVC / Polyester	\N	Scrub your bag gently with clean water, or diluted / mild detergent	Sunscreen, Hat, Sunglasses, Wallet, Phone	\N	products/classic/Giggle-Pink-Shoulder-Bag.jpg
68	Dark Blue Checked Handbag	90.0	Summer Plaid X Cartoon Style	The dark blue handbag can be carried by either of its adjustable strap or chic handle. <br>\n\nAnd, it has enough space to hold your make-up, phone, and wallet. <br>\n\nStart your weekend with a cute cartoon style.	2019-01-14 14:10:26.410554	2019-01-14 14:10:26.410554	3	24.5 x 29.5 x 2	24.5 x 29.5 x 8	40 - 78	Pop Art Bag, 2D Bag, Cartoon bag	PVC / Polyester	\N	Scrub your bag gently with clean water, or diluted / mild detergent	B6 Size Note, Phone, Credit Cards	5	products/classic/Dark-Blue-Checked-Handbag.jpg
69	Spotlight Yellow Purse	40.0	Classic Spotlight Cartoon Purse_Yellow	Simple design makes everything better. <br> \n\nThe cartoon trend is here for summer. <br>\n\nCatch everyone's attention with our unique spotlight purse.	2019-01-14 14:10:26.414457	2019-01-14 14:10:26.414457	3	22 x 11 x 2	22x 11 x 3		Pop Art Bag, 2D Bag, Cartoon Bag	Polyester	\N	Dry clean only. Ask a professional to clean	Credit Cards, Coins, Checks	\N	products/classic/Spotlight-Yellow-Purse.jpg
70	Blue Checked Handbag	90.0	Summer Plaid X Cartoon Style	The light blue handbag can be carried by either of its adjustable strap or chic handle. <br>\n\nAnd, it has enough space to hold your make-up, phone, and wallet.<br>\n\nStart your weekend with cartoon style.	2019-01-14 14:10:26.419906	2019-01-14 14:10:26.419906	3	24.5 x 29.5 x 2	24.5 x 29.5 x 8	40 - 78	Pop Art Bag, 2D Bag, Cartoon bag	PVC / Polyester	\N	Scrub your bag gently with clean water, or diluted / mild detergent	B6 Size Notes, Phone, Wallet	5	products/classic/Blue-Checked-Handbag.jpg
71	Junior Watermelon Red Spaceman Backpack	105.0	The cartoon backpack for petite women and kids.	Nothing says summer like the watermelon red cartoon backpack. <br>\n\nEquipped with the shoulder strap pads and breathable fabric, the red backpack is perfect for comfort. <br>\n\nIt has enough space for iPad, iPhone, car key and other personal items.  <br>\n\nLet's show people your summer style!	2019-01-14 14:10:26.423752	2019-01-14 14:10:26.423752	4	30.4 x 34.3 x 3	30.4 x 34.3 x 10	38 - 85	Pop Art Bag, 2D Bag, Cartoon Bag	Polyester	\N	Dry clean only.Ask a professional to clean	Phone + iPad + Car Key + Notes	\N	products/color-me-in/Junior-Watermelon-Red-Spaceman-Backpack.jpg
72	Cheese Sky Blue Messenger Bag	90.0	JumpFromPaper Cheese Camera Bag	A little vintage shape and sky & cloud patterns are perfectly suited for an afternoon stroll. <br>\n\nIt's big enough to hold your camera, phone, and other personal items. <br>\n\nWear the sky messenger bag and dream on.	2019-01-14 14:10:26.428971	2019-01-14 14:10:26.428971	4	33 x 27.5 x 2	33 x 27.5 x 7.5	70 - 140	Pop Art Bag, 2D Bag, Cartoon Bag	Polyester	\N	Dry clean only. Ask a professional to clean	Phone, Digital Camera	\N	products/color-me-in/Cheese-Sky-Blue-Messenger-Bag.jpg
73	Giggle Minion Yellow Shoulder Bag	75.0	Add more yellow to your life.	The cheerfullest color of this summer. <br>\n\nThe minion yellow cartoon bag has enough space for wallet, phone, and other essential items. <br>\n\n\n\nWith adjustable straps and colorful outlook, the bag shows that style is your priority.<br>\n\nIt's a perfect match for your ice creams, bathing suits, denim, and sunglass. 	2019-01-14 14:10:26.433012	2019-01-14 14:10:26.433012	4	28 x 23 x 2	28 x 23 x 8	95 - 145	Pop Art Bag, 2D Bag, Cartoon Bag	Polyester	\N	Dry clean only. Ask a professional to clean	Wallet + Phone +  Cart Key + Notes + Lipsticks	\N	products/color-me-in/Giggle-Minion-Yellow-Shoulder-Bag.jpg
74	Junior Airy Blue Spaceman Backpack	105.0	The cartoon backpack for petite women and kids.	Comfort, Fresh, Unique. <br>\n\nEquipped with the shoulder strap pads and breathable fabric, the blue backpack is perfect for comfort. <br>\n\nIt has enough space for iPad, iPhone, car key and other personal items.  <br>\n\nLet's show people your summer style!	2019-01-14 14:10:26.441885	2019-01-14 14:10:26.441885	4	30.4 x 34.3 x 3	30.4 x 34.3 x 10	38 - 85	Pop Art Bag, 2D Bag, Cartoon Bag	Polyester	\N	Dry clean only. Ask a professional to clean	Phone + iPad +  Car Key + Notes	\N	products/color-me-in/Junior-Airy-Blue-Spaceman-Backpack.jpg
75	Airy Blue Spaceman Backpack	125.0	Comfort, Fresh, Unique	The airy blue cartoon backpack is big enough for MacBook Pro 13", A4 size books, and other essential items. <br>\n\nEquipped with the shoulder strap pads and breathable fabric, it's perfect for a cozy summer.	2019-01-14 14:10:26.447029	2019-01-14 14:10:26.447029	4	36 x 39.5 x 3	36 x 39.5 x 11	42.5 - 85	Pop Art Bag, 2D Bag, Cartoon Bag	Polyester	\N	Dry clean only. Ask a professional to clean	MacBook Pro 13" + Headphones + Phone + Wallet + A4 Size Notes + Water Bottle	\N	products/color-me-in/Airy-Blue-Spaceman-Backpack.jpg
76	Giggle Watermelon Red Shoulder Bag	75.0	Summer's here! 	It's not red. It's not pink. It's watermelon red. <br>\n\nOne of the fabulous colors for this summer. <br>\n\nIt's perfect for a weekend trip, city exploration, and daily commute.	2019-01-14 14:10:26.452346	2019-01-14 14:10:26.452346	4	28 x 23 x 2	28 x 23 x 8	95 - 145	Pop Art Bag, 2D Bag, Cartoon Bag	Polyester	\N	Dry clean only. Ask a professional to clean	Wallet + Phone + Notes + Car Key + Lipsticks	\N	products/color-me-in/Giggle-Watermelon-Red-Shoulder-Bag.jpg
77	Cactus Green Backpack	210.0	JumpFromPaper X The Rodnik Band Collection<br>\n    Cartoon Bag Meets Pop Art Style Adventure	It comes in polyester with adjustable straps, depicting a green cactus with yellow spikes. <br>\n\nAnd, it has enough space for iPad, phone, and other personal items. <br>\n\nLet's catch people's eyes by the coolest cactus of the year. <br>\n\nCheck cactus street style inspiration: <a href="https://www.jumpfrompaper.com/blogs/news/2018-coolest-cactus-look" here. /a>  	2019-01-14 14:10:26.457033	2019-01-14 14:10:26.457033	4	42.5 x 40 x10	42.5 x 40 x 10	41 - 81.5	Pop Art Bag, 2D Bag, Cartoon Bag	Polyester	\N	Dry clean only. Ask a professional to clean	iPad Pro 10.5" + Phone + Wallet + Car Key 	\N	products/color-me-in/Cactus-Green-Backpack.jpg
78	Spotlight Airy Blue Purse	40.0	Classic Spotlight Cartoon Purse_Airy Blue	Simple design makes everything better.  <br>\n\nThe cartoon trend is here for summer. <br>\n\nCatch everyone's attention with our unique spotlight purse.	2019-01-14 14:10:26.461522	2019-01-14 14:10:26.461522	4	22x 11 x 2	22x 11 x 3		Pop Art Bag, 2D Bag, Cartoon Bag	Polyester	\N	Dry clean only. Ask a professional to clean	Credit Cards, Coins, Checks	\N	products/color-me-in/Spotlight-Airy-Blue-Purse.jpg
79	Junior Minion Yellow Spaceman Backpack	105.0	The cartoon backpack for petite women and kids.	Cool, Young, Energetic. <br>\n\nEquipped with the shoulder strap pads and breathable fabric, the yellow backpack is perfect for comfort. <br>\n\nIt has just enough space for iPad, iPhone, car key and other personal items.  <br>\n\nLet's show people your unique style!	2019-01-14 14:10:26.467629	2019-01-14 14:10:26.467629	4	30.4 x 34.3 x 3	30.4 x 34.3 x 10	38 - 85	Pop Art Bag, 2D Bag, Cartoon Bag	Polyester	\N	Dry clean only. Ask a professional to clean	Phone + iPad + Car Key + Notes	\N	products/color-me-in/Junior-Minion-Yellow-Spaceman-Backpack.jpg
80	Junior Giggle Airy Blue Shoulder Bag	65.0	Lighten up! <br>\nCarry just the essentials!	The color of the sky. The color of the sea. The color of summer air.<br>\n\nThe perfect bag to keep you cool in the heatwave. 	2019-01-14 14:10:26.472405	2019-01-14 14:10:26.472405	4	24 x 19.5 x 2	24 x 19.5 x 7	90 - 125	Pop Art Bag, 2D Bag, Cartoon Bag	Polyester	\N	Dry clean only. Ask a professional to clean	Car Key + Phone + Lipsticks + Credit Cards	\N	products/color-me-in/Junior-Giggle-Airy-Blue-Shoulder-Bag.jpg
81	Junior Giggle Minion Yellow Shoulder Bag	65.0	Lighten up! <br>\nCarry just the essentials!	Add more yellow to your life.<br>\n\nThe happiest and cutest color of this summer. <br>\n\nThe bag shows that style is your priority.	2019-01-14 14:10:26.47755	2019-01-14 14:10:26.47755	4	24 x 19.5 x 2	24 x 19.5 x 7	90 - 125	Pop Art Bag, 2D Bag, Cartoon Bag	Polyester	\N	Dry clean only. Ask a professional to clean	Lipsticks + Phone + Credit Cards + Car Key.	\N	products/color-me-in/Junior-Giggle-Minion-Yellow-Shoulder-Bag.jpg
82	Watermelon Red Spaceman Backpack	125.0	Nothing says summer like the watermelon red cartoon backpack. 	The backpack is big enough for MacBook Pro 13", A4 size books, and other digital devices. <br>\n\nEquipped with the shoulder strap pads and breathable fabric, it's perfect for comfort.<br>\n\nAlso, It can easily go with any white T-shirt, denim accessory, and swimsuits.  	2019-01-14 14:10:26.48183	2019-01-14 14:10:26.48183	4	36 x 39.5 x 3	36 x 39.5 x 11	42.5 - 85	Pop Art Bag, 2D Bag, Cartoon Bag	Polyester	\N	Dry clean only. Ask a professional to clean	MacBook Pro 13" + Headphones + Phone + Wallet + Water Bottle + A4 Size Notes	\N	products/color-me-in/Watermelon-Red-Spaceman-Backpack.jpg
83	Spotlight Watermelon Red Purse	40.0	Classic Spotlight Cartoon Purse_Watermelon	Simple design makes everything better.  \n\nThe cartoon trend is here for summer. \n\nCatch everyone's attention with our unique spotlight purse.	2019-01-14 14:10:26.486027	2019-01-14 14:10:26.486027	4	22 x 11 x 2	22 x 11 x 3		Pop Art Bag, 2D Bag, Cartoon Bag	Polyester	\N	Dry clean only. Ask a professional to clean	Credit Cards, Coins, Checks 	\N	products/color-me-in/Spotlight-Watermelon-Red-Purse.jpg
84	Minion Yellow Spaceman Backpack	125.0	Cool, Young, Energetic. 	The Minion Yellow backpack is big enough for MacBook Pro 13", A4 size books, and other digital devices. <br>\n\nEquipped with the shoulder strap pads and breathable fabric, it's perfect for comfort. <br>\n\nIt's also your good companion for commuting, traveling and hiking. 	2019-01-14 14:10:26.490968	2019-01-14 14:10:26.490968	4	36 x 39.5 x 3	36.x 39.5x 11	42.5 - 85	Pop Art Bag, 2D Bag, Cartoon Bag	Polyester	\N	Dry clean only. Ask a professional to clean	MacBook Pro 13" + Headphones + Wallet + Phone + A4 Size Notes + Water Bottle	\N	products/color-me-in/Minion-Yellow-Spaceman-Backpack.jpg
85	Spotlight Yellow Purse	40.0	Classic Spotlight Cartoon Purse_Yellow	Simple design makes everything better.  <br>\n\nThe cartoon trend is here for summer. <br>\n\nCatch everyone's attention with our unique spotlight purse.	2019-01-14 14:10:26.497441	2019-01-14 14:10:26.497441	4	22 x 11 x 2	22x 11 x 3		Pop Art Bag, 2D Bag, Cartoon Bag	Polyester	\N	Dry clean only. Ask a professional to clean	Credit Cards, Coins, Checks 	\N	products/color-me-in/Spotlight-Yellow-Purse.jpg
86	Poketto Airy Blue Wallet	35.0	Enjoy the simple 2D design in life. 	An airy blue cartoon wallet is your personal statement of style.	2019-01-14 14:10:26.504456	2019-01-14 14:10:26.504456	4	11 x 13 x 2	11 x 13 x 3		Pop Art Bag, 2D Bag, Cartoon Bag	Polyester	\N	Dry clean only. Ask a professional to clean	Credit cards, Banknote, Coins	\N	products/color-me-in/Poketto-Airy-Blue-Wallet.jpg
87	Poketto Watermelon Red Wallet	35.0	Enjoy the simple 2D design in life. 	A watermelon red cartoon wallet is your personal statement of style.	2019-01-14 14:10:26.514834	2019-01-14 14:10:26.514834	4	11 x 13 x 2	11 x 13 x 3		Pop Art Bag, 2D Bag, Cartoon Bag	Polyester	\N	Dry clean only. Ask a professional to clean	Credit cards, Banknote, Coins	\N	products/color-me-in/Poketto-Watermelon-Red-Wallet.jpg
88	Art Baby Pink Purse	36.0	JumpFromPaper X Art Baby Collection	\n    Pink is not just a color! It's an attitude!<br>\n    Let's show people your chic cartoon style! 	2019-01-14 14:11:46.514018	2019-01-14 14:11:46.514018	2	11 x 22 x 2	11 x 22 x 3		Pop Art Bag, 2D Bag, Cartoon Bag	Polyester	\N	Scrub your bag gently with clean water, or diluted / mild detergent	Credit cards, Banknote, Coins	\N	products/art-baby/Art-Baby-Backpack.jpg
89	Art Baby Backpack	128.0	JumpFromPaper Cartoon Backpack 	Pink is not just a color! It's an attitude!<br>\n\nThe pink cartoon backpack has enough space for your MacBook Air 13", water bottle, and other essential items. <br>\n\nLet's show everyone your chic cartoon style! 	2019-01-14 14:11:46.519257	2019-01-14 14:11:46.519257	2	36 x 39.5 x 2	36 x 39.5 x 11	42.5 - 64.5	Pop Art Bag, 2D Bag, Cartoon Bag	Polyester	\N	Scrub your bag gently with clean water, or diluted / mild detergent	MacBook Air 13",  A4 Size Books, Water Bottle	\N	products/art-baby/Art-Baby-Pink-Purse.jpg
90	Cheese Orange Shoulder Bag	80.0	JumpFromPaper Cheese Camera Bag	The bag is big enough to hold your digital camera and phone. <br>\n\nRecord everything special in your daily life. <br>\n\nIt's also the unique cartoon gift for people who love to travel. 	2019-01-14 14:11:46.523616	2019-01-14 14:11:46.523616	3	33.5 x 27.5 x 2	33.5 x 27.5 x 2	71 - 140	Pop Art Bag, 2D Bag, Cartoon Bag	Polyester	\N	Scrub your bag gently with clean water, or diluted / mild detergent	Phone, Digital Camera	\N	products/classic/Cheese-Orange-Shoulder-Bag.jpg
91	Turquoise Spaceman Backpack	120.0	JumpFromPaper Classic Cartoon Backpack	The cartoon bag is specifically designed to keep your MacBook Air 13", A4 books and water bottle safe. <br>\n\nThe unique and stylish cartoon bag can easily go with any style.  <br>\n\nWear the turquoise backpack and go exploring.	2019-01-14 14:11:46.528068	2019-01-14 14:11:46.528068	3	36 x 39.5 x 2	36 x 39.5 x 11	42.5 - 64.5	Pop Art Bag, 2D Bag, Cartoon Bag	Polyester Bags	\N	Scrub your bag gently with clean water, or diluted / mild detergent	MacBook Air 13", A4 Size Book	\N	products/classic/Turquoise-Spaceman-Backpack.jpg
92	Red Checked Handbag	90.0	Summer Plaid X Cartoon Style	The red handbag can be carried by either of its adjustable strap or chic handle. <br>\n\nAnd, it has enough space to hold your make-up, phone, and wallet. <br>\n\nStart your weekend with a cute cartoon style.	2019-01-14 14:11:46.532712	2019-01-14 14:11:46.532712	3	24.5 x 29.5 x 2	24.5 x 29.5 x 8	40 - 78	Pop Art Bag, 2D Bag, Cartoon bag	PVC / Polyester	\N	Scrub your bag gently with clean water, or diluted / mild detergent	B6 Size Note, Phone, Credit Cards	5	products/classic/Red-Checked-Handbag.jpg
93	Adventure Pink Backpack	110.0	JumpFromPaper Adventure Cartoon Backpack<br>\nChic, Adorable, Unique 	The pink cartoon backpack is specifically designed to keep your MacBook Pro 13", other digital devices and water bottle safe. <br>\n\nTake the cartoon backpack anywhere and let your adventure begin. 	2019-01-14 14:11:46.5373	2019-01-14 14:11:46.5373	3	32.6 x 42.8 x 2	32.6 x 42.8 x 11.5	42.5 - 64.5	Pop Art Bag, 2D Bag, Cartoon Bag	Polyester Bags	\N	Scrub your bag gently with clean water, or diluted / mild detergent	A4 size, MacBook Pro 13", Phone, Wallet	\N	products/classic/Adventure-Pink-Backpack.jpg
94	Adventure Red Backpack	110.0	JumpFromPaper Adventure Cartoon Backpack <br>\nBold, Colorful, Cool	The red cartoon backpack is specifically designed to keep your MacBook Pro 13", other digital devices and water bottle safe. <br>\n    Take the cartoon backpack anywhere. <br>\n\nA great adventure is waiting for you.\n\n	2019-01-14 14:11:46.541682	2019-01-14 14:11:46.541682	3	32.6 x 42.8 x 2	32.6 x 42.8 x 11.5		Pop Art Bag, 2D Bag, Cartoon Bag	Polyester Bags	\N	Scrub your bag gently with clean water, or diluted / mild detergent	A4 size, MacBook Pro 13", iPhone	\N	products/classic/Cheese-Orange-Shoulder-Bag.jpg
95	Giggle Pink Shoulder Bag	70.0	Cute, Sweet, Charming	The pink cartoon bag has just enough space for wallet, phone, and other essential items. <br>\n\nWith adjustable straps and colorful outlook, the bag shows that style is your priority. <br>\n\nIt's perfect for an afternoon tea, dinner date, and shopping.	2019-01-14 14:11:46.546146	2019-01-14 14:11:46.546146	3	27.5 x 23 x 2	27.5 x 23 x 8	95 - 145	Pop Art Bag, 2D Bag, Cartoon Bag	Polyester	\N	Dry clean only. Ask a professional to clean	Wallet + Phone + Notes + Car Key + Lipsticks	\N	products/classic/Giggle-Pink-Shoulder-Bag.jpg
96	Blue Checked Backpack	110.0	Summer Plaid X Cartoon Style <br>\nKeep Things Simple	The blue plaid patterns are perfectly suited for a beach trip. <br>\n\nAnd, the cartoon backpack has just enough space to hold your sunscreen, hat, phone, and wallet.<br>\n\nStart your weekend with the cute cartoon style.	2019-01-14 14:11:46.549971	2019-01-14 14:11:46.549971	3	32.2 x 42.9 x 2	32.2 x 42.9 x 10	42.5 - 64.6	Pop Art Bag, 2D Bag, Cartoon bag	PVC / Polyester	\N	Scrub your bag gently with clean water, or diluted / mild detergent	Sunscreen, Hat, Sunglasses, Wallet, Phone	\N	products/classic/Giggle-Pink-Shoulder-Bag.jpg
97	Dark Blue Checked Handbag	90.0	Summer Plaid X Cartoon Style	The dark blue handbag can be carried by either of its adjustable strap or chic handle. <br>\n\nAnd, it has enough space to hold your make-up, phone, and wallet. <br>\n\nStart your weekend with a cute cartoon style.	2019-01-14 14:11:46.554239	2019-01-14 14:11:46.554239	3	24.5 x 29.5 x 2	24.5 x 29.5 x 8	40 - 78	Pop Art Bag, 2D Bag, Cartoon bag	PVC / Polyester	\N	Scrub your bag gently with clean water, or diluted / mild detergent	B6 Size Note, Phone, Credit Cards	5	products/classic/Dark-Blue-Checked-Handbag.jpg
98	Spotlight Yellow Purse	40.0	Classic Spotlight Cartoon Purse_Yellow	Simple design makes everything better. <br> \n\nThe cartoon trend is here for summer. <br>\n\nCatch everyone's attention with our unique spotlight purse.	2019-01-14 14:11:46.558655	2019-01-14 14:11:46.558655	3	22 x 11 x 2	22x 11 x 3		Pop Art Bag, 2D Bag, Cartoon Bag	Polyester	\N	Dry clean only. Ask a professional to clean	Credit Cards, Coins, Checks	\N	products/classic/Spotlight-Yellow-Purse.jpg
99	Blue Checked Handbag	90.0	Summer Plaid X Cartoon Style	The light blue handbag can be carried by either of its adjustable strap or chic handle. <br>\n\nAnd, it has enough space to hold your make-up, phone, and wallet.<br>\n\nStart your weekend with cartoon style.	2019-01-14 14:11:46.563372	2019-01-14 14:11:46.563372	3	24.5 x 29.5 x 2	24.5 x 29.5 x 8	40 - 78	Pop Art Bag, 2D Bag, Cartoon bag	PVC / Polyester	\N	Scrub your bag gently with clean water, or diluted / mild detergent	B6 Size Notes, Phone, Wallet	5	products/classic/Blue-Checked-Handbag.jpg
100	Junior Watermelon Red Spaceman Backpack	105.0	The cartoon backpack for petite women and kids.	Nothing says summer like the watermelon red cartoon backpack. <br>\n\nEquipped with the shoulder strap pads and breathable fabric, the red backpack is perfect for comfort. <br>\n\nIt has enough space for iPad, iPhone, car key and other personal items.  <br>\n\nLet's show people your summer style!	2019-01-14 14:11:46.568324	2019-01-14 14:11:46.568324	4	30.4 x 34.3 x 3	30.4 x 34.3 x 10	38 - 85	Pop Art Bag, 2D Bag, Cartoon Bag	Polyester	\N	Dry clean only.Ask a professional to clean	Phone + iPad + Car Key + Notes	\N	products/color-me-in/Junior-Watermelon-Red-Spaceman-Backpack.jpg
101	Cheese Sky Blue Messenger Bag	90.0	JumpFromPaper Cheese Camera Bag	A little vintage shape and sky & cloud patterns are perfectly suited for an afternoon stroll. <br>\n\nIt's big enough to hold your camera, phone, and other personal items. <br>\n\nWear the sky messenger bag and dream on.	2019-01-14 14:11:46.571898	2019-01-14 14:11:46.571898	4	33 x 27.5 x 2	33 x 27.5 x 7.5	70 - 140	Pop Art Bag, 2D Bag, Cartoon Bag	Polyester	\N	Dry clean only. Ask a professional to clean	Phone, Digital Camera	\N	products/color-me-in/Cheese-Sky-Blue-Messenger-Bag.jpg
102	Giggle Minion Yellow Shoulder Bag	75.0	Add more yellow to your life.	The cheerfullest color of this summer. <br>\n\nThe minion yellow cartoon bag has enough space for wallet, phone, and other essential items. <br>\n\n\n\nWith adjustable straps and colorful outlook, the bag shows that style is your priority.<br>\n\nIt's a perfect match for your ice creams, bathing suits, denim, and sunglass. 	2019-01-14 14:11:46.575472	2019-01-14 14:11:46.575472	4	28 x 23 x 2	28 x 23 x 8	95 - 145	Pop Art Bag, 2D Bag, Cartoon Bag	Polyester	\N	Dry clean only. Ask a professional to clean	Wallet + Phone +  Cart Key + Notes + Lipsticks	\N	products/color-me-in/Giggle-Minion-Yellow-Shoulder-Bag.jpg
103	Junior Airy Blue Spaceman Backpack	105.0	The cartoon backpack for petite women and kids.	Comfort, Fresh, Unique. <br>\n\nEquipped with the shoulder strap pads and breathable fabric, the blue backpack is perfect for comfort. <br>\n\nIt has enough space for iPad, iPhone, car key and other personal items.  <br>\n\nLet's show people your summer style!	2019-01-14 14:11:46.579561	2019-01-14 14:11:46.579561	4	30.4 x 34.3 x 3	30.4 x 34.3 x 10	38 - 85	Pop Art Bag, 2D Bag, Cartoon Bag	Polyester	\N	Dry clean only. Ask a professional to clean	Phone + iPad +  Car Key + Notes	\N	products/color-me-in/Junior-Airy-Blue-Spaceman-Backpack.jpg
104	Airy Blue Spaceman Backpack	125.0	Comfort, Fresh, Unique	The airy blue cartoon backpack is big enough for MacBook Pro 13", A4 size books, and other essential items. <br>\n\nEquipped with the shoulder strap pads and breathable fabric, it's perfect for a cozy summer.	2019-01-14 14:11:46.583278	2019-01-14 14:11:46.583278	4	36 x 39.5 x 3	36 x 39.5 x 11	42.5 - 85	Pop Art Bag, 2D Bag, Cartoon Bag	Polyester	\N	Dry clean only. Ask a professional to clean	MacBook Pro 13" + Headphones + Phone + Wallet + A4 Size Notes + Water Bottle	\N	products/color-me-in/Airy-Blue-Spaceman-Backpack.jpg
105	Giggle Watermelon Red Shoulder Bag	75.0	Summer's here! 	It's not red. It's not pink. It's watermelon red. <br>\n\nOne of the fabulous colors for this summer. <br>\n\nIt's perfect for a weekend trip, city exploration, and daily commute.	2019-01-14 14:11:46.587855	2019-01-14 14:11:46.587855	4	28 x 23 x 2	28 x 23 x 8	95 - 145	Pop Art Bag, 2D Bag, Cartoon Bag	Polyester	\N	Dry clean only. Ask a professional to clean	Wallet + Phone + Notes + Car Key + Lipsticks	\N	products/color-me-in/Giggle-Watermelon-Red-Shoulder-Bag.jpg
106	Cactus Green Backpack	210.0	JumpFromPaper X The Rodnik Band Collection<br>\n    Cartoon Bag Meets Pop Art Style Adventure	It comes in polyester with adjustable straps, depicting a green cactus with yellow spikes. <br>\n\nAnd, it has enough space for iPad, phone, and other personal items. <br>\n\nLet's catch people's eyes by the coolest cactus of the year. <br>\n\nCheck cactus street style inspiration: <a href="https://www.jumpfrompaper.com/blogs/news/2018-coolest-cactus-look" here. /a>  	2019-01-14 14:11:46.592632	2019-01-14 14:11:46.592632	4	42.5 x 40 x10	42.5 x 40 x 10	41 - 81.5	Pop Art Bag, 2D Bag, Cartoon Bag	Polyester	\N	Dry clean only. Ask a professional to clean	iPad Pro 10.5" + Phone + Wallet + Car Key 	\N	products/color-me-in/Cactus-Green-Backpack.jpg
107	Spotlight Airy Blue Purse	40.0	Classic Spotlight Cartoon Purse_Airy Blue	Simple design makes everything better.  <br>\n\nThe cartoon trend is here for summer. <br>\n\nCatch everyone's attention with our unique spotlight purse.	2019-01-14 14:11:46.597235	2019-01-14 14:11:46.597235	4	22x 11 x 2	22x 11 x 3		Pop Art Bag, 2D Bag, Cartoon Bag	Polyester	\N	Dry clean only. Ask a professional to clean	Credit Cards, Coins, Checks	\N	products/color-me-in/Spotlight-Airy-Blue-Purse.jpg
108	Junior Minion Yellow Spaceman Backpack	105.0	The cartoon backpack for petite women and kids.	Cool, Young, Energetic. <br>\n\nEquipped with the shoulder strap pads and breathable fabric, the yellow backpack is perfect for comfort. <br>\n\nIt has just enough space for iPad, iPhone, car key and other personal items.  <br>\n\nLet's show people your unique style!	2019-01-14 14:11:46.60177	2019-01-14 14:11:46.60177	4	30.4 x 34.3 x 3	30.4 x 34.3 x 10	38 - 85	Pop Art Bag, 2D Bag, Cartoon Bag	Polyester	\N	Dry clean only. Ask a professional to clean	Phone + iPad + Car Key + Notes	\N	products/color-me-in/Junior-Minion-Yellow-Spaceman-Backpack.jpg
109	Junior Giggle Airy Blue Shoulder Bag	65.0	Lighten up! <br>\nCarry just the essentials!	The color of the sky. The color of the sea. The color of summer air.<br>\n\nThe perfect bag to keep you cool in the heatwave. 	2019-01-14 14:11:46.606348	2019-01-14 14:11:46.606348	4	24 x 19.5 x 2	24 x 19.5 x 7	90 - 125	Pop Art Bag, 2D Bag, Cartoon Bag	Polyester	\N	Dry clean only. Ask a professional to clean	Car Key + Phone + Lipsticks + Credit Cards	\N	products/color-me-in/Junior-Giggle-Airy-Blue-Shoulder-Bag.jpg
110	Junior Giggle Minion Yellow Shoulder Bag	65.0	Lighten up! <br>\nCarry just the essentials!	Add more yellow to your life.<br>\n\nThe happiest and cutest color of this summer. <br>\n\nThe bag shows that style is your priority.	2019-01-14 14:11:46.610194	2019-01-14 14:11:46.610194	4	24 x 19.5 x 2	24 x 19.5 x 7	90 - 125	Pop Art Bag, 2D Bag, Cartoon Bag	Polyester	\N	Dry clean only. Ask a professional to clean	Lipsticks + Phone + Credit Cards + Car Key.	\N	products/color-me-in/Junior-Giggle-Minion-Yellow-Shoulder-Bag.jpg
111	Watermelon Red Spaceman Backpack	125.0	Nothing says summer like the watermelon red cartoon backpack. 	The backpack is big enough for MacBook Pro 13", A4 size books, and other digital devices. <br>\n\nEquipped with the shoulder strap pads and breathable fabric, it's perfect for comfort.<br>\n\nAlso, It can easily go with any white T-shirt, denim accessory, and swimsuits.  	2019-01-14 14:11:46.615161	2019-01-14 14:11:46.615161	4	36 x 39.5 x 3	36 x 39.5 x 11	42.5 - 85	Pop Art Bag, 2D Bag, Cartoon Bag	Polyester	\N	Dry clean only. Ask a professional to clean	MacBook Pro 13" + Headphones + Phone + Wallet + Water Bottle + A4 Size Notes	\N	products/color-me-in/Watermelon-Red-Spaceman-Backpack.jpg
112	Spotlight Watermelon Red Purse	40.0	Classic Spotlight Cartoon Purse_Watermelon	Simple design makes everything better.  \n\nThe cartoon trend is here for summer. \n\nCatch everyone's attention with our unique spotlight purse.	2019-01-14 14:11:46.620141	2019-01-14 14:11:46.620141	4	22 x 11 x 2	22 x 11 x 3		Pop Art Bag, 2D Bag, Cartoon Bag	Polyester	\N	Dry clean only. Ask a professional to clean	Credit Cards, Coins, Checks 	\N	products/color-me-in/Spotlight-Watermelon-Red-Purse.jpg
113	Minion Yellow Spaceman Backpack	125.0	Cool, Young, Energetic. 	The Minion Yellow backpack is big enough for MacBook Pro 13", A4 size books, and other digital devices. <br>\n\nEquipped with the shoulder strap pads and breathable fabric, it's perfect for comfort. <br>\n\nIt's also your good companion for commuting, traveling and hiking. 	2019-01-14 14:11:46.624784	2019-01-14 14:11:46.624784	4	36 x 39.5 x 3	36.x 39.5x 11	42.5 - 85	Pop Art Bag, 2D Bag, Cartoon Bag	Polyester	\N	Dry clean only. Ask a professional to clean	MacBook Pro 13" + Headphones + Wallet + Phone + A4 Size Notes + Water Bottle	\N	products/color-me-in/Minion-Yellow-Spaceman-Backpack.jpg
114	Spotlight Yellow Purse	40.0	Classic Spotlight Cartoon Purse_Yellow	Simple design makes everything better.  <br>\n\nThe cartoon trend is here for summer. <br>\n\nCatch everyone's attention with our unique spotlight purse.	2019-01-14 14:11:46.629318	2019-01-14 14:11:46.629318	4	22 x 11 x 2	22x 11 x 3		Pop Art Bag, 2D Bag, Cartoon Bag	Polyester	\N	Dry clean only. Ask a professional to clean	Credit Cards, Coins, Checks 	\N	products/color-me-in/Spotlight-Yellow-Purse.jpg
115	Poketto Airy Blue Wallet	35.0	Enjoy the simple 2D design in life. 	An airy blue cartoon wallet is your personal statement of style.	2019-01-14 14:11:46.634428	2019-01-14 14:11:46.634428	4	11 x 13 x 2	11 x 13 x 3		Pop Art Bag, 2D Bag, Cartoon Bag	Polyester	\N	Dry clean only. Ask a professional to clean	Credit cards, Banknote, Coins	\N	products/color-me-in/Poketto-Airy-Blue-Wallet.jpg
116	Poketto Watermelon Red Wallet	35.0	Enjoy the simple 2D design in life. 	A watermelon red cartoon wallet is your personal statement of style.	2019-01-14 14:11:46.641587	2019-01-14 14:11:46.641587	4	11 x 13 x 2	11 x 13 x 3		Pop Art Bag, 2D Bag, Cartoon Bag	Polyester	\N	Dry clean only. Ask a professional to clean	Credit cards, Banknote, Coins	\N	products/color-me-in/Poketto-Watermelon-Red-Wallet.jpg
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: nomadbard916
--

COPY public.schema_migrations (version) FROM stdin;
20190110151945
20181217065335
20181219143720
20181220061345
20181220131443
20181221070212
20181221095015
20181221095805
20181221125914
20181221131844
20181221132154
20181221132547
20181221132700
20181221134032
20181222072555
20181222074637
20181222075656
20181222081002
20181222083813
20181224064147
20181224072620
20181225053807
20181225055854
20181226134043
20181227072338
20181230171009
20190103073328
20190103090135
20190103122952
20190104132604
20190104142147
20190106150700
20190108123201
20190108124320
20190108132848
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: nomadbard916
--

COPY public.users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, created_at, updated_at) FROM stdin;
\.


--
-- Name: carts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nomadbard916
--

SELECT pg_catalog.setval('public.carts_id_seq', 20, true);


--
-- Name: collections_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nomadbard916
--

SELECT pg_catalog.setval('public.collections_id_seq', 44, true);


--
-- Name: contact_infos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nomadbard916
--

SELECT pg_catalog.setval('public.contact_infos_id_seq', 1, false);


--
-- Name: line_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nomadbard916
--

SELECT pg_catalog.setval('public.line_items_id_seq', 1, false);


--
-- Name: orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nomadbard916
--

SELECT pg_catalog.setval('public.orders_id_seq', 1, false);


--
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nomadbard916
--

SELECT pg_catalog.setval('public.products_id_seq', 116, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nomadbard916
--

SELECT pg_catalog.setval('public.users_id_seq', 1, false);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: nomadbard916
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: carts carts_pkey; Type: CONSTRAINT; Schema: public; Owner: nomadbard916
--

ALTER TABLE ONLY public.carts
    ADD CONSTRAINT carts_pkey PRIMARY KEY (id);


--
-- Name: collections collections_pkey; Type: CONSTRAINT; Schema: public; Owner: nomadbard916
--

ALTER TABLE ONLY public.collections
    ADD CONSTRAINT collections_pkey PRIMARY KEY (id);


--
-- Name: contact_infos contact_infos_pkey; Type: CONSTRAINT; Schema: public; Owner: nomadbard916
--

ALTER TABLE ONLY public.contact_infos
    ADD CONSTRAINT contact_infos_pkey PRIMARY KEY (id);


--
-- Name: line_items line_items_pkey; Type: CONSTRAINT; Schema: public; Owner: nomadbard916
--

ALTER TABLE ONLY public.line_items
    ADD CONSTRAINT line_items_pkey PRIMARY KEY (id);


--
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: nomadbard916
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: nomadbard916
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: nomadbard916
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: nomadbard916
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_contact_infos_on_cart_id; Type: INDEX; Schema: public; Owner: nomadbard916
--

CREATE INDEX index_contact_infos_on_cart_id ON public.contact_infos USING btree (cart_id);


--
-- Name: index_contact_infos_on_order_id; Type: INDEX; Schema: public; Owner: nomadbard916
--

CREATE INDEX index_contact_infos_on_order_id ON public.contact_infos USING btree (order_id);


--
-- Name: index_line_items_on_cart_id; Type: INDEX; Schema: public; Owner: nomadbard916
--

CREATE INDEX index_line_items_on_cart_id ON public.line_items USING btree (cart_id);


--
-- Name: index_line_items_on_order_id; Type: INDEX; Schema: public; Owner: nomadbard916
--

CREATE INDEX index_line_items_on_order_id ON public.line_items USING btree (order_id);


--
-- Name: index_line_items_on_product_id; Type: INDEX; Schema: public; Owner: nomadbard916
--

CREATE INDEX index_line_items_on_product_id ON public.line_items USING btree (product_id);


--
-- Name: index_products_on_collection_id; Type: INDEX; Schema: public; Owner: nomadbard916
--

CREATE INDEX index_products_on_collection_id ON public.products USING btree (collection_id);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: nomadbard916
--

CREATE UNIQUE INDEX index_users_on_email ON public.users USING btree (email);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: nomadbard916
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON public.users USING btree (reset_password_token);


--
-- PostgreSQL database dump complete
--

