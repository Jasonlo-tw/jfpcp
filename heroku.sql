PGDMP                          w         
   production     11.1 (Ubuntu 11.1-1.pgdg16.04+1)     11.1 (Ubuntu 11.1-1.pgdg16.04+1) C    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �           1262    16386 
   production    DATABASE     z   CREATE DATABASE production WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'zh_TW.utf8' LC_CTYPE = 'zh_TW.utf8';
    DROP DATABASE production;
             nomadbard916    false            �            1259    16480    ar_internal_metadata    TABLE     �   CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
 (   DROP TABLE public.ar_internal_metadata;
       public         nomadbard916    false            �            1259    16389    carts    TABLE     �   CREATE TABLE public.carts (
    id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.carts;
       public         nomadbard916    false            �            1259    16387    carts_id_seq    SEQUENCE     u   CREATE SEQUENCE public.carts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.carts_id_seq;
       public       nomadbard916    false    197            �           0    0    carts_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.carts_id_seq OWNED BY public.carts.id;
            public       nomadbard916    false    196            �            1259    16397    collections    TABLE       CREATE TABLE public.collections (
    id bigint NOT NULL,
    collection_name character varying,
    release_time date,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    picture character varying
);
    DROP TABLE public.collections;
       public         nomadbard916    false            �            1259    16395    collections_id_seq    SEQUENCE     {   CREATE SEQUENCE public.collections_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.collections_id_seq;
       public       nomadbard916    false    199            �           0    0    collections_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.collections_id_seq OWNED BY public.collections.id;
            public       nomadbard916    false    198            �            1259    16408    contact_infos    TABLE       CREATE TABLE public.contact_infos (
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
 !   DROP TABLE public.contact_infos;
       public         nomadbard916    false            �            1259    16406    contact_infos_id_seq    SEQUENCE     }   CREATE SEQUENCE public.contact_infos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.contact_infos_id_seq;
       public       nomadbard916    false    201            �           0    0    contact_infos_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.contact_infos_id_seq OWNED BY public.contact_infos.id;
            public       nomadbard916    false    200            �            1259    16421 
   line_items    TABLE     .  CREATE TABLE public.line_items (
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
    DROP TABLE public.line_items;
       public         nomadbard916    false            �            1259    16419    line_items_id_seq    SEQUENCE     z   CREATE SEQUENCE public.line_items_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.line_items_id_seq;
       public       nomadbard916    false    203            �           0    0    line_items_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.line_items_id_seq OWNED BY public.line_items.id;
            public       nomadbard916    false    202            �            1259    16436    orders    TABLE     S  CREATE TABLE public.orders (
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
    DROP TABLE public.orders;
       public         nomadbard916    false            �            1259    16434    orders_id_seq    SEQUENCE     v   CREATE SEQUENCE public.orders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.orders_id_seq;
       public       nomadbard916    false    205            �           0    0    orders_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;
            public       nomadbard916    false    204            �            1259    16447    products    TABLE     �  CREATE TABLE public.products (
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
    DROP TABLE public.products;
       public         nomadbard916    false            �            1259    16445    products_id_seq    SEQUENCE     x   CREATE SEQUENCE public.products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.products_id_seq;
       public       nomadbard916    false    207            �           0    0    products_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;
            public       nomadbard916    false    206            �            1259    16472    schema_migrations    TABLE     R   CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);
 %   DROP TABLE public.schema_migrations;
       public         nomadbard916    false            �            1259    16459    users    TABLE     �  CREATE TABLE public.users (
    id bigint NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.users;
       public         nomadbard916    false            �            1259    16457    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public       nomadbard916    false    209            �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
            public       nomadbard916    false    208            �
           2604    16392    carts id    DEFAULT     d   ALTER TABLE ONLY public.carts ALTER COLUMN id SET DEFAULT nextval('public.carts_id_seq'::regclass);
 7   ALTER TABLE public.carts ALTER COLUMN id DROP DEFAULT;
       public       nomadbard916    false    196    197    197            �
           2604    16400    collections id    DEFAULT     p   ALTER TABLE ONLY public.collections ALTER COLUMN id SET DEFAULT nextval('public.collections_id_seq'::regclass);
 =   ALTER TABLE public.collections ALTER COLUMN id DROP DEFAULT;
       public       nomadbard916    false    199    198    199            �
           2604    16411    contact_infos id    DEFAULT     t   ALTER TABLE ONLY public.contact_infos ALTER COLUMN id SET DEFAULT nextval('public.contact_infos_id_seq'::regclass);
 ?   ALTER TABLE public.contact_infos ALTER COLUMN id DROP DEFAULT;
       public       nomadbard916    false    201    200    201            �
           2604    16424    line_items id    DEFAULT     n   ALTER TABLE ONLY public.line_items ALTER COLUMN id SET DEFAULT nextval('public.line_items_id_seq'::regclass);
 <   ALTER TABLE public.line_items ALTER COLUMN id DROP DEFAULT;
       public       nomadbard916    false    202    203    203            �
           2604    16439 	   orders id    DEFAULT     f   ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);
 8   ALTER TABLE public.orders ALTER COLUMN id DROP DEFAULT;
       public       nomadbard916    false    204    205    205            �
           2604    16450    products id    DEFAULT     j   ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);
 :   ALTER TABLE public.products ALTER COLUMN id DROP DEFAULT;
       public       nomadbard916    false    206    207    207            �
           2604    16462    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public       nomadbard916    false    208    209    209            �          0    16480    ar_internal_metadata 
   TABLE DATA               R   COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
    public       nomadbard916    false    211   �O       |          0    16389    carts 
   TABLE DATA               ;   COPY public.carts (id, created_at, updated_at) FROM stdin;
    public       nomadbard916    false    197   P       ~          0    16397    collections 
   TABLE DATA               i   COPY public.collections (id, collection_name, release_time, created_at, updated_at, picture) FROM stdin;
    public       nomadbard916    false    199   �P       �          0    16408    contact_infos 
   TABLE DATA               �   COPY public.contact_infos (id, email, first_name, last_name, address, building_optional, city, country, province, post_code, phone, created_at, updated_at, order_id, cart_id) FROM stdin;
    public       nomadbard916    false    201   KT       �          0    16421 
   line_items 
   TABLE DATA               w   COPY public.line_items (id, product_id, cart_id, price, quantity, created_at, updated_at, total, order_id) FROM stdin;
    public       nomadbard916    false    203   hT       �          0    16436    orders 
   TABLE DATA               �   COPY public.orders (id, created_at, updated_at, description, total, shipping_fee, comments, process, return, account) FROM stdin;
    public       nomadbard916    false    205   �T       �          0    16447    products 
   TABLE DATA                 COPY public.products (id, product_name, price, description_short, description_long, created_at, updated_at, collection_id, size_contracted, size_extended, size_strap, detail_style, detail_material, string, detail_cleaning, detail_capacity, size_hand_drop, image) FROM stdin;
    public       nomadbard916    false    207   �T       �          0    16472    schema_migrations 
   TABLE DATA               4   COPY public.schema_migrations (version) FROM stdin;
    public       nomadbard916    false    210   i       �          0    16459    users 
   TABLE DATA               �   COPY public.users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, created_at, updated_at) FROM stdin;
    public       nomadbard916    false    209   �i       �           0    0    carts_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.carts_id_seq', 20, true);
            public       nomadbard916    false    196            �           0    0    collections_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.collections_id_seq', 44, true);
            public       nomadbard916    false    198            �           0    0    contact_infos_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.contact_infos_id_seq', 1, false);
            public       nomadbard916    false    200            �           0    0    line_items_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.line_items_id_seq', 1, false);
            public       nomadbard916    false    202            �           0    0    orders_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.orders_id_seq', 1, false);
            public       nomadbard916    false    204            �           0    0    products_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.products_id_seq', 116, true);
            public       nomadbard916    false    206            �           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 1, false);
            public       nomadbard916    false    208                       2606    16487 .   ar_internal_metadata ar_internal_metadata_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);
 X   ALTER TABLE ONLY public.ar_internal_metadata DROP CONSTRAINT ar_internal_metadata_pkey;
       public         nomadbard916    false    211            �
           2606    16394    carts carts_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.carts
    ADD CONSTRAINT carts_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.carts DROP CONSTRAINT carts_pkey;
       public         nomadbard916    false    197            �
           2606    16405    collections collections_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.collections
    ADD CONSTRAINT collections_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.collections DROP CONSTRAINT collections_pkey;
       public         nomadbard916    false    199            �
           2606    16416     contact_infos contact_infos_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.contact_infos
    ADD CONSTRAINT contact_infos_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.contact_infos DROP CONSTRAINT contact_infos_pkey;
       public         nomadbard916    false    201            �
           2606    16430    line_items line_items_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.line_items
    ADD CONSTRAINT line_items_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.line_items DROP CONSTRAINT line_items_pkey;
       public         nomadbard916    false    203            �
           2606    16444    orders orders_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey;
       public         nomadbard916    false    205            �
           2606    16455    products products_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public         nomadbard916    false    207            �
           2606    16479 (   schema_migrations schema_migrations_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);
 R   ALTER TABLE ONLY public.schema_migrations DROP CONSTRAINT schema_migrations_pkey;
       public         nomadbard916    false    210            �
           2606    16469    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public         nomadbard916    false    209            �
           1259    16417    index_contact_infos_on_cart_id    INDEX     [   CREATE INDEX index_contact_infos_on_cart_id ON public.contact_infos USING btree (cart_id);
 2   DROP INDEX public.index_contact_infos_on_cart_id;
       public         nomadbard916    false    201            �
           1259    16418    index_contact_infos_on_order_id    INDEX     ]   CREATE INDEX index_contact_infos_on_order_id ON public.contact_infos USING btree (order_id);
 3   DROP INDEX public.index_contact_infos_on_order_id;
       public         nomadbard916    false    201            �
           1259    16431    index_line_items_on_cart_id    INDEX     U   CREATE INDEX index_line_items_on_cart_id ON public.line_items USING btree (cart_id);
 /   DROP INDEX public.index_line_items_on_cart_id;
       public         nomadbard916    false    203            �
           1259    16432    index_line_items_on_order_id    INDEX     W   CREATE INDEX index_line_items_on_order_id ON public.line_items USING btree (order_id);
 0   DROP INDEX public.index_line_items_on_order_id;
       public         nomadbard916    false    203            �
           1259    16433    index_line_items_on_product_id    INDEX     [   CREATE INDEX index_line_items_on_product_id ON public.line_items USING btree (product_id);
 2   DROP INDEX public.index_line_items_on_product_id;
       public         nomadbard916    false    203            �
           1259    16456    index_products_on_collection_id    INDEX     ]   CREATE INDEX index_products_on_collection_id ON public.products USING btree (collection_id);
 3   DROP INDEX public.index_products_on_collection_id;
       public         nomadbard916    false    207            �
           1259    16470    index_users_on_email    INDEX     N   CREATE UNIQUE INDEX index_users_on_email ON public.users USING btree (email);
 (   DROP INDEX public.index_users_on_email;
       public         nomadbard916    false    209            �
           1259    16471 #   index_users_on_reset_password_token    INDEX     l   CREATE UNIQUE INDEX index_users_on_reset_password_token ON public.users USING btree (reset_password_token);
 7   DROP INDEX public.index_users_on_reset_password_token;
       public         nomadbard916    false    209            �   ?   x�K�+�,���M�+�,(�O)M.����420��50�54Q04�26�24�3�47�)����� ��,      |   �   x�}��q� ��li�z�B�p-鿎\<���Y�a�@�p�x_�O�����ͺ%������@�4�B����
���$���-wo[�t�B��,Z>z�Z0�E*phB3�ʜrQ�Tg��V��B��ʜ�ۺOuk]d�P����u�?Z��o���}��u�כ91نH<�usj����f2KU�L��Ws�x߆�<_�oͼә      ~   S  x����n�0@��+�2��~��:]t��TiF�f6����Щ����$!F��T]D9��%�#���5M��wo��pH(�п�K5��nPl��P�܇ʮi�r����h�l?��޷�M��!�^��K�ϟW�Qn���]9�!{Ղ���Q��}Sui��WK������4��b�haקOU��Zr�s^t%ٮ����'?�b�*�V�]f�v�+�Cs��$��"ylߛϪ-�ޒ�KG�S�Csy}V�z�<umW~�ݮJ�������=r�|h>���ʶ��(O��}:>�;���((e>4b������*�UUm�s_��-�m��p�`�\>hGv8:��$/U��j�҇j(�
� �7I�ͧ�2�lk<�I y�vE�>�}sc�ؔ]1*��V,�4��lC�k��ooc�{^�JE=$$��"z{^)H�C�܋�)�>\�"�{qH̕�d\r�
��t�t���ͽؐ ��悊��E�%�>]J"�{Q�{H`s)��ܳ��؍GQ\J�{��α
+.���צ(��;p��g\��ie*�7�
�.�Q�=�/@

��>��V���Gx	l�>�G5wRpf�r-�\=edsO����IXq�)���N2�&�-0(��H��;�$t�
���]ܓ�	t����?yKsO*�j��D41���('b��+�\d�ͅ�='�ϩE����\�;�;�,]�~���� �k�"�b��Q@sQ�7wR0�߶A���g���Nɖ����ꢊ��QP"���
�.#�ww��]����.���N*����
�.���5
$jy�����2�����pMqD�e,���Irt�Ƞ���^�V����      �      x������ � �      �      x������ � �      �      x������ � �      �      x��]]s�Ʊ}�Ŭ���3� [����N��N����I��R	��@����_{>@|E.E�$�*�6 �ݧ{0GظNs���{B��}\�Y`gb[/WN��G��_h��ME�4���9F�82�P���u�#M�(Iߡ��ϐ#?��|=���.��<���۲E�VA�����S4]�S4��<Ib��OQ������ǘ"L��=�'���f10F�!���T~'��1Y��������y��6`��)�� 5~��q;M�w����9�q=��0_�i��=���%)���:f�
-�h�f���M���,�W�0V|i���U����<�����(_���p�?Ӈ�?�e5��*�U|n`�m����2�v���E�V���w��~��8Y�(�tw/���!I�u��G���AwI�Gp�~<CI��O�,��	��y��&���
0��A���{C�5s�� ����nalP~#�N�7 Kk�5E���?��$���g�ý>��1nA�蟩�t�H�ь�n�5�0�{��� ��N�� Iw� A��E7!n|���:�Gq������?�$�I��0�����B���0nQx_9J�4� B�8�ul�0�s�BL	�����<�?�D�t���H��.�m�-��o ��|dG�5��S5PL#?�����Xz~\x`2РƧu��:	�߷��^�q5�t�C��kFʐ!�"�{N��pd�<���<�J9 �w�A�0�2���O%��<2�٢vS����8��a?~�Ad�6g�)�S�|3���O��� hd'�x֤%i"�=|+;Z����Nhm�3.�S�Z��#| p� ?�����3<����>F~8�Q��-�� dNH7���;��4��!	�H&�=d ʌg6��C��M�5�	�
d����h�Z [��x���5R8�g�����A��]��F���4��,�f�Lİ�DK���kP0����c���n��/�>8!��F�$Ezn8�1�6j c���@�c\�>�Y�i �e�p;
��6�t�� <KR���_)=��/\}L��HZS$�Y�9���.���8�����'�1 '�����]0c]N��� 
Yy ޸2ն1��s�BO���[��'�<vF�2$�E$V��M_1��28���p���oI�	^o�/^g=��JXD�4��
��Z�0�MQ�	߱Z�iz�l3턺ӃZ(��%��5��瑊c5��8�n�<^�B���~����
Ms��D�֪�dJ�e�gJ��D�j$K���1J�y�0���+�� "�ql�_�!0������ɹ������:�w�����~�.N�Ziy�eR��N���St��Y�r�}�r��I(�#�������6LbZxh���D�22�O�3�	gG����U��Ӈ�K*2X���"H[�jīm,Jy��<�|��V�z�R�ꎟu%�[�9w� |�=x��uȟ�F�:�ʽ4\5�Tg���l�ce�8��A�`＋j=Ǵ�7�ȵ,�#�΀2�eɐ�!����JZtތpݖ��6؞sY�U��ip���)��*����3~�@�E3wSL�i�2](s��s|t�w�boWI��E��DQ���T�<�6(�)nS��y�!c�"G¡Y�at�`%���.@�<�ބ�$4�\��l��?�8V�y_	N�?>����m�s%�h���]�+@�G��R��ݎ�'%U����#�Hwg��K��	��!�������]"�e1��'�t^� k�WA@����b���Q�"�p^du�M��;�^n�=&� {g�Ā+�Mc�)SO6 L�9��wvU_%n��u�VA�Ed?��[�3ɉ�xQ�P���R�O�UqW-ꪄw�,�G^��ݓ&�GVT#~�P>U8<�4���]�$��35rzDH�L�&jsByp�"bT}q��tz[�*H4���G/^����8��$��%�Ƽ��ݕĴ��}x�t�Q2�U���2!r����0��9G�)K8���~��N�Z#�(jTT�	9��Q 6���s�+\n~��ib����H��ԧK�-�J�/�.�'��0-RA�����l`P�b���c�����<�]�fh�����pI�Ib.K�:�6^bGpg���9BZ֢)|���Bu�fK��G�ԧ�6r)��f�8�K�r�Aڹ�Ul�6gA.U�@�8���E��n�P�r+��m{�Ո��Tp��6	����8�ȿ�a��K����F��i�-�n�&U��1�R���I�ke���b�V�ͫP2DjR*3�b���Ɛ�����W�wr�O�:�r�x��w\�V� �ߧ"�k��G�#�&Z�&��ᣂ�1� ��&JV�a��V��L�~JQ�Bi�;oV��+����r�2D���9C���o���z�P��pc"/���e2�e���9���ޔ��O
�2�zo���L��D�%�c����tZIm�w;�5	{+�yƍ?���]�2�X�u�B<�����O�`��,�c�1 ��*�J��7�~�'�'��0F����c'e�eNŌ�ϧ��b������e+�W��e6ۙ��6K&1��y�Et˓DrOy]
�OPTd��/��[�*H^/����G�4����y���_]=>>N~o܃7V����(�gWq�]�ݱ���<���ʯ�������4�v���I���7DM�[ѩ�[�q�_�r��/���P��*�9���ӡ�F��7��4+��2���\��k�V��a���ӄBi�eO��ګ�-�2�]VԽQf�}O��w��}������*��K�'�_���������6��Y��$�Q>v�/�
���Uh}�9��s<�֫w�pE���*Gņg�$d˦��AMP���o|�j0(&՘T��7$*/Ј$�6?����t��c�o Kظ�qٹ/���n�uL�.<�!V���ٺg|��V�|7��E�������[�cU�.��*�$E���"��+ۭ+��jF�<����0�:� B��e(�숃g:I5���5�aS2jU�T����U�ylCߣ,!^'t�h������8[���!��ȟ�fI������Rt=':��s5�i:��A�W�l%hA���<�%n�x�\�3eޝ.�*�|��6m���ޘ,�K��-7\^�̎�,WVm�n�+�O���:�I��7O>�Ÿ�Cu�r�;#�4J4+���S~\�Y�$M��3�[�}Z�/�\�ğ�+�u*5��1Oaj�3�;��,����|R���[2�Ǚo�_�gˤ��v���K��c�CNݖ|�(o�`	�|.ʠ-o!yԴ4V��\�I�(�W�����.P�\)U� K'x'42������ý�[3#(Mg�F����g'%@ߛ�{˙P��6�j�H1�5���YV�O7M}U�9�6$�աE��!'@Ƞ'p��@��4�mm3�QO��AP�M<K`P��6�y-F8XP�؃��*
��q��m3�]Q�8����I
l����9�L�� l�8LS`� �$X.i�pM���
�`aĶ��Q��;��X��a��t��}�� 5�#*P����2��� Ń���H@M�hj.i:�Hp�� �Q�\�X�z�]oi鉤 %�����ئ�j8�4]�� ����iJ
�س�f�EXNk��1%�NI�Wϩ��j����#��� uI�NI�b7��m��pY�Q$(뭤@��5%���VJ;�� uA��

l �0���)M�.(@��	
�v<O	��"lsxA��\b�Z��t���6@�ZF4/˛�$MA�)%q�W{3M�.Mo�W�� (���%�ei��t����	
ش_��ҽ'�L%(`ۃ��QJ�8����AN�=N�6 ���[,� &`��(��4s��t���;��R����6C�?�xC���z1�;C1lrwf5��J�t�b�9�	�F��C��S1b-H��t�z a  ��1��AL�1�3�k�S�Z�(%��AJ��v��Xk��f:�%K	8t��b)�ؤ9%Z3�]J��)��(��蒟��NH�q!�C�$���m�٪��.\H�a���ABXj6�|5� $ฃ���h¦mwswe�P�]H���$$P��R[X��̅�9	l�����P��		0<	��GH����i��)fR{I	 q��[�5�J	02H	�����!fKK�f:����`tx��J��v�?��"��� �1��@���B�.	8�� sz,&�a[�j�Ji:��vD9�9���	�g�fb[�.]N����Pv��ZJW3]�� �9���(��=��Sd�G�p�^�	(�2����M��|%�k

�M)��(|�Zf�jys����kr� '�P�bWC��;���虘@Ǵ4�"H�E�	�t8����gz��Li���c�IN�@�T31,M� (�:'(( G�6)�����t�K�;�R��Ԑc��C����p�s��p��[��f�HA�vA�g�_���z*(����@qZRn5S?<<
&(�0����j꣤�g���S�X��&d�t^���� )��
8��x.}��� '�rY;�&�IS�<{8XP@!���+���AP�0A�c1T�4
xl�M6�Z��f�P�]P�s{%(���:�w���3�AP`K$pa�+M�	��9(
���G�H���>n��El�AR`?I��]O�喦���5h
�����MuYX�Nk��15�IQ��O�̳MA�Nq9�K�
`��:U	�Y���T3��ڀ��
@�곬��su�i:��vDYl:��@�u$�=�!�'M��+�M�Ca�afM0�����;(���� �cb�����"�?�� 6�~(�:�v�rez�5�),�qSU����1|��"W�7���k`(;q�SP8���դLg�B8�� �V��$���2ߪ��0&����z(k��ުi���+��h�*�%(`l��ĀfB���4���N��K��S��cN��j�
�t���k�<�ꫯ�k\�O      �   �   x�U�[r!����!����d�@~�9�@+
x@��c�L
�U_��� ���\��L?$Bi�&ū{S�6)�t�� ��
B�}жƠo��$0jS���عV�wO�ᚈA�>�z8Q���P���sY� E�J6k�{�_V�q�����4yy��x�sy��s�T�n�Z�ﯵ�8ec      �      x������ � �     