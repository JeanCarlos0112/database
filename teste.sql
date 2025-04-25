--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4 (Debian 17.4-1.pgdg120+2)
-- Dumped by pg_dump version 17.4 (Debian 17.4-1.pgdg120+2)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: public; Type: SCHEMA; Schema: -; Owner: lipe
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO lipe;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: abastecimento; Type: TABLE; Schema: public; Owner: lipe
--

CREATE TABLE public.abastecimento (
    id integer NOT NULL,
    motorista character varying(255) NOT NULL,
    caminhao character varying(255) NOT NULL,
    valor numeric(10,2) NOT NULL,
    dataabastecimento character varying(255) NOT NULL,
    endereco character varying(255) NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.abastecimento OWNER TO lipe;

--
-- Name: abastecimento_id_seq; Type: SEQUENCE; Schema: public; Owner: lipe
--

CREATE SEQUENCE public.abastecimento_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.abastecimento_id_seq OWNER TO lipe;

--
-- Name: abastecimento_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lipe
--

ALTER SEQUENCE public.abastecimento_id_seq OWNED BY public.abastecimento.id;


--
-- Name: caminhoes; Type: TABLE; Schema: public; Owner: lipe
--

CREATE TABLE public.caminhoes (
    id integer NOT NULL,
    placa character varying(10) NOT NULL,
    marca character varying(255) NOT NULL,
    modelo character varying(255) NOT NULL,
    chassi character varying(255) NOT NULL
);


ALTER TABLE public.caminhoes OWNER TO lipe;

--
-- Name: caminhoes_id_seq; Type: SEQUENCE; Schema: public; Owner: lipe
--

CREATE SEQUENCE public.caminhoes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.caminhoes_id_seq OWNER TO lipe;

--
-- Name: caminhoes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lipe
--

ALTER SEQUENCE public.caminhoes_id_seq OWNED BY public.caminhoes.id;


--
-- Name: clientes; Type: TABLE; Schema: public; Owner: lipe
--

CREATE TABLE public.clientes (
    id integer NOT NULL,
    cpf character varying(14) NOT NULL,
    nome character varying(100) NOT NULL,
    data_nascimento date,
    genero character varying(10),
    email character varying(100),
    telefone character varying(20),
    telefone_secundario character varying(20),
    logradouro character varying(255),
    numero integer,
    complemento character varying(255),
    bairro character varying(100),
    cidade character varying(100),
    cep character varying(10),
    status character varying(20),
    data_cadastro character varying(30),
    observacoes text,
    preferencias_contato character varying(50),
    endereco character varying(50),
    observacao character varying(600)
);


ALTER TABLE public.clientes OWNER TO lipe;

--
-- Name: clientes_id_seq; Type: SEQUENCE; Schema: public; Owner: lipe
--

CREATE SEQUENCE public.clientes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.clientes_id_seq OWNER TO lipe;

--
-- Name: clientes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lipe
--

ALTER SEQUENCE public.clientes_id_seq OWNED BY public.clientes.id;


--
-- Name: despesas; Type: TABLE; Schema: public; Owner: lipe
--

CREATE TABLE public.despesas (
    id integer NOT NULL,
    datad character varying(255) NOT NULL,
    descricaod character varying(255) NOT NULL,
    pagamentod character varying(50) NOT NULL,
    pagod character varying(255) NOT NULL,
    valord numeric(10,2) NOT NULL
);


ALTER TABLE public.despesas OWNER TO lipe;

--
-- Name: despesas_id_seq; Type: SEQUENCE; Schema: public; Owner: lipe
--

CREATE SEQUENCE public.despesas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.despesas_id_seq OWNER TO lipe;

--
-- Name: despesas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lipe
--

ALTER SEQUENCE public.despesas_id_seq OWNED BY public.despesas.id;


--
-- Name: funcionarios; Type: TABLE; Schema: public; Owner: lipe
--

CREATE TABLE public.funcionarios (
    id integer NOT NULL,
    nome character varying(255) NOT NULL,
    cpf character varying(14) NOT NULL,
    telefone character varying(20),
    endereco text,
    setor character varying(100) NOT NULL
);


ALTER TABLE public.funcionarios OWNER TO lipe;

--
-- Name: funcionarios_id_seq; Type: SEQUENCE; Schema: public; Owner: lipe
--

CREATE SEQUENCE public.funcionarios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.funcionarios_id_seq OWNER TO lipe;

--
-- Name: funcionarios_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lipe
--

ALTER SEQUENCE public.funcionarios_id_seq OWNED BY public.funcionarios.id;


--
-- Name: manutencao; Type: TABLE; Schema: public; Owner: lipe
--

CREATE TABLE public.manutencao (
    id integer NOT NULL,
    placa character varying(10) NOT NULL,
    veiculo character varying(255) NOT NULL,
    datamanutencao date NOT NULL,
    dataproxima date,
    descricao text
);


ALTER TABLE public.manutencao OWNER TO lipe;

--
-- Name: manutencao_id_seq; Type: SEQUENCE; Schema: public; Owner: lipe
--

CREATE SEQUENCE public.manutencao_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.manutencao_id_seq OWNER TO lipe;

--
-- Name: manutencao_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lipe
--

ALTER SEQUENCE public.manutencao_id_seq OWNED BY public.manutencao.id;


--
-- Name: motoristas; Type: TABLE; Schema: public; Owner: lipe
--

CREATE TABLE public.motoristas (
    id integer NOT NULL,
    nome character varying(255) NOT NULL,
    cpf character varying(14) NOT NULL,
    telefone character varying(20),
    cnh character varying(20) NOT NULL
);


ALTER TABLE public.motoristas OWNER TO lipe;

--
-- Name: motoristas_id_seq; Type: SEQUENCE; Schema: public; Owner: lipe
--

CREATE SEQUENCE public.motoristas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.motoristas_id_seq OWNER TO lipe;

--
-- Name: motoristas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lipe
--

ALTER SEQUENCE public.motoristas_id_seq OWNED BY public.motoristas.id;


--
-- Name: os; Type: TABLE; Schema: public; Owner: lipe
--

CREATE TABLE public.os (
    id integer NOT NULL,
    cliente character varying(255) NOT NULL,
    motorista character varying(255) NOT NULL,
    produto character varying(255) NOT NULL,
    quantidade integer NOT NULL,
    valorunitario numeric(10,2) NOT NULL,
    valortotal numeric(10,2) NOT NULL,
    status character varying(50) NOT NULL,
    enderecoentrega text NOT NULL,
    data_entrega character varying(30),
    data_devolucao character varying(30),
    estoque integer
);


ALTER TABLE public.os OWNER TO lipe;

--
-- Name: os_id_seq; Type: SEQUENCE; Schema: public; Owner: lipe
--

CREATE SEQUENCE public.os_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.os_id_seq OWNER TO lipe;

--
-- Name: os_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lipe
--

ALTER SEQUENCE public.os_id_seq OWNED BY public.os.id;


--
-- Name: produtos; Type: TABLE; Schema: public; Owner: lipe
--

CREATE TABLE public.produtos (
    id integer NOT NULL,
    nome character varying(255) NOT NULL,
    marca character varying(100) NOT NULL,
    descricao text,
    estoque integer NOT NULL
);


ALTER TABLE public.produtos OWNER TO lipe;

--
-- Name: produtos_id_seq; Type: SEQUENCE; Schema: public; Owner: lipe
--

CREATE SEQUENCE public.produtos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.produtos_id_seq OWNER TO lipe;

--
-- Name: produtos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lipe
--

ALTER SEQUENCE public.produtos_id_seq OWNED BY public.produtos.id;


--
-- Name: tokens; Type: TABLE; Schema: public; Owner: lipe
--

CREATE TABLE public.tokens (
    id integer NOT NULL,
    token text NOT NULL,
    expires_at timestamp without time zone NOT NULL
);


ALTER TABLE public.tokens OWNER TO lipe;

--
-- Name: tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: lipe
--

CREATE SEQUENCE public.tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tokens_id_seq OWNER TO lipe;

--
-- Name: tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lipe
--

ALTER SEQUENCE public.tokens_id_seq OWNED BY public.tokens.id;


--
-- Name: usuarios; Type: TABLE; Schema: public; Owner: lipe
--

CREATE TABLE public.usuarios (
    id integer NOT NULL,
    login character varying(255) NOT NULL,
    senha character varying(255) NOT NULL
);


ALTER TABLE public.usuarios OWNER TO lipe;

--
-- Name: usuarios_id_seq; Type: SEQUENCE; Schema: public; Owner: lipe
--

CREATE SEQUENCE public.usuarios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.usuarios_id_seq OWNER TO lipe;

--
-- Name: usuarios_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lipe
--

ALTER SEQUENCE public.usuarios_id_seq OWNED BY public.usuarios.id;


--
-- Name: abastecimento id; Type: DEFAULT; Schema: public; Owner: lipe
--

ALTER TABLE ONLY public.abastecimento ALTER COLUMN id SET DEFAULT nextval('public.abastecimento_id_seq'::regclass);


--
-- Name: caminhoes id; Type: DEFAULT; Schema: public; Owner: lipe
--

ALTER TABLE ONLY public.caminhoes ALTER COLUMN id SET DEFAULT nextval('public.caminhoes_id_seq'::regclass);


--
-- Name: clientes id; Type: DEFAULT; Schema: public; Owner: lipe
--

ALTER TABLE ONLY public.clientes ALTER COLUMN id SET DEFAULT nextval('public.clientes_id_seq'::regclass);


--
-- Name: despesas id; Type: DEFAULT; Schema: public; Owner: lipe
--

ALTER TABLE ONLY public.despesas ALTER COLUMN id SET DEFAULT nextval('public.despesas_id_seq'::regclass);


--
-- Name: funcionarios id; Type: DEFAULT; Schema: public; Owner: lipe
--

ALTER TABLE ONLY public.funcionarios ALTER COLUMN id SET DEFAULT nextval('public.funcionarios_id_seq'::regclass);


--
-- Name: manutencao id; Type: DEFAULT; Schema: public; Owner: lipe
--

ALTER TABLE ONLY public.manutencao ALTER COLUMN id SET DEFAULT nextval('public.manutencao_id_seq'::regclass);


--
-- Name: motoristas id; Type: DEFAULT; Schema: public; Owner: lipe
--

ALTER TABLE ONLY public.motoristas ALTER COLUMN id SET DEFAULT nextval('public.motoristas_id_seq'::regclass);


--
-- Name: os id; Type: DEFAULT; Schema: public; Owner: lipe
--

ALTER TABLE ONLY public.os ALTER COLUMN id SET DEFAULT nextval('public.os_id_seq'::regclass);


--
-- Name: produtos id; Type: DEFAULT; Schema: public; Owner: lipe
--

ALTER TABLE ONLY public.produtos ALTER COLUMN id SET DEFAULT nextval('public.produtos_id_seq'::regclass);


--
-- Name: tokens id; Type: DEFAULT; Schema: public; Owner: lipe
--

ALTER TABLE ONLY public.tokens ALTER COLUMN id SET DEFAULT nextval('public.tokens_id_seq'::regclass);


--
-- Name: usuarios id; Type: DEFAULT; Schema: public; Owner: lipe
--

ALTER TABLE ONLY public.usuarios ALTER COLUMN id SET DEFAULT nextval('public.usuarios_id_seq'::regclass);


--
-- Data for Name: abastecimento; Type: TABLE DATA; Schema: public; Owner: lipe
--

COPY public.abastecimento (id, motorista, caminhao, valor, dataabastecimento, endereco, created_at) FROM stdin;
\.


--
-- Data for Name: caminhoes; Type: TABLE DATA; Schema: public; Owner: lipe
--

COPY public.caminhoes (id, placa, marca, modelo, chassi) FROM stdin;
\.


--
-- Data for Name: clientes; Type: TABLE DATA; Schema: public; Owner: lipe
--

COPY public.clientes (id, cpf, nome, data_nascimento, genero, email, telefone, telefone_secundario, logradouro, numero, complemento, bairro, cidade, cep, status, data_cadastro, observacoes, preferencias_contato, endereco, observacao) FROM stdin;
\.


--
-- Data for Name: despesas; Type: TABLE DATA; Schema: public; Owner: lipe
--

COPY public.despesas (id, datad, descricaod, pagamentod, pagod, valord) FROM stdin;
\.


--
-- Data for Name: funcionarios; Type: TABLE DATA; Schema: public; Owner: lipe
--

COPY public.funcionarios (id, nome, cpf, telefone, endereco, setor) FROM stdin;
\.


--
-- Data for Name: manutencao; Type: TABLE DATA; Schema: public; Owner: lipe
--

COPY public.manutencao (id, placa, veiculo, datamanutencao, dataproxima, descricao) FROM stdin;
\.


--
-- Data for Name: motoristas; Type: TABLE DATA; Schema: public; Owner: lipe
--

COPY public.motoristas (id, nome, cpf, telefone, cnh) FROM stdin;
\.


--
-- Data for Name: os; Type: TABLE DATA; Schema: public; Owner: lipe
--

COPY public.os (id, cliente, motorista, produto, quantidade, valorunitario, valortotal, status, enderecoentrega, data_entrega, data_devolucao, estoque) FROM stdin;
1				250	120.00	30000.00	Pendente	Rua A, 123, Centro, São Paulo - 12345-678	2025-04-09	2025-04-17	\N
37	José Ian Murilo Pinto	Cauã Emanuel Caldeira	Banheiro Quimico	150	5.00	750.00	Pendente	Endereço	2025-04-17	2025-04-25	\N
1111	Leandro Teste	motoca	teste	1	123.00	123.00	Pendente	32132121321	2025-04-25	12321-12-10	\N
\.


--
-- Data for Name: produtos; Type: TABLE DATA; Schema: public; Owner: lipe
--

COPY public.produtos (id, nome, marca, descricao, estoque) FROM stdin;
\.


--
-- Data for Name: tokens; Type: TABLE DATA; Schema: public; Owner: lipe
--

COPY public.tokens (id, token, expires_at) FROM stdin;
2114	c4db69614392afd32b0008252e038e58b463f8dc706a70550e3b5594b096791e	2025-02-27 14:57:56.85
2119	e7ffca87a49b855bda6ac5fe801d70bb9688556e986b9a01a9f3e8d1169ff5b1	2025-02-27 15:02:55.626
2371	224b7650d8fb7b2ae30cd924aa0f2c211c70e26af04a051cfb5e2d5af318d96d	2025-02-27 23:50:13.038
2244	da06978b105ebf2a278b01052dc677a66c0a33bd0d48170832462e1e7d98d354	2025-02-27 21:30:27.02
2006	c47b5faceb05427ea985a0ca2e829247c43e802877669ea68476a90d6a40f8df	2025-02-27 01:28:34.795
2064	dac2fec6613a4bebc4449610e07ebd661e79049a107fb2f9df6d7cdae19e6751	2025-02-27 13:05:57.488
2065	f345fcc525a1611005f1297a02a49b7597d1084478b2d1ee9e116ba8fd598140	2025-02-27 13:05:58.101
2131	b019d556ec4f0a26f02a1e5b8821cdfc9687852fd0fb54c09c096369c31f1f63	2025-02-27 15:05:03.236
2069	0d7b9489bbbd6a5e4e23addcfaf375ee5d3421d59d72d4bac6c6f6078c42ade7	2025-02-27 14:07:18.915
2016	f30958dcf73713db189460564b87ce10eb5264f7c87fb6b41eeaaa5bbb8204b9	2025-02-27 03:07:52.846
2074	96ffd898c221bde8c9f534f9a3bd51eaf68b48c17468a821e575f5a79cebf3d1	2025-02-27 14:10:30.407
2075	af0e50b0bbed45ff3d694dd23687fd64adbf790692d39c05e88bfef5806baf29	2025-02-27 14:10:31.841
2381	92f78a5b42d707fbaab18d494f2edf2b68756d9f4d991922a05dfa37c1e9eb6a	2025-02-28 00:05:07.725
2382	da242777d876b6f11599bf93463afb5638f44a070be826049a3c91e89bda09aa	2025-02-28 00:05:08.529
1972	a112f09de7777bd67b317119b5ec6926c8df01e75496983c78031abcd080c9c7	2025-02-26 23:58:31.576
2081	a92fd9d677f8e12cafab83b3145fd5f411ca1f0ebdb5a462a4a3aac92bf85513	2025-02-27 14:10:45.172
2262	9cbb5d267d5be877863078c7aa12f0820740af212372c6aa6b769a1fa6e7f202	2025-02-27 21:37:36.441
2210	85d10899ee4d310e32d9ebc348a202b4e8c9d48b6fd389d17cce4d01de0e8e6b	2025-02-27 21:12:36.262
2211	0728087daa66fafb6a239a6665e94a51c50faaf6763f718577dbdebf4959af2b	2025-02-27 21:12:36.546
2094	b07f09635e9e6890bde883b1ef3466884d24b57c753a2c327ad16d1257c83d7b	2025-02-27 14:19:03.026
2273	a584af53903aace4537e93e00f3971dea29e3c78cfbffced954a2f40c9edee56	2025-02-27 21:41:07.85
2221	e9cd048ec54da534a673b364a80aeedc134a4b1d9a7447f48538e3bc2f528655	2025-02-27 21:18:16.276
2406	2249cd75b2c2fc735cd55b0b0b7a0b910e502a3441b9b811387266333cda57a1	2025-02-28 17:02:50.396
2407	0ea89fb520c1fe1ccb931e893bcef81afbe6add10f5bf25a6faffed037e83c8a	2025-02-28 17:02:52.149
2408	34b8a882aa3136b0bcdcd42636ca398d103b235815b6f09932cfe5587d330287	2025-02-28 17:02:52.161
2470	37567524b2d9152cda51b4a7fd056b58f063d18664d68a94b62c6b0150067696	2025-02-28 18:44:50.446
2291	9e74d6493420212cb10aaa95d49c5f077df05d101c0b5d36e4db88711baafced	2025-02-27 21:47:19.921
2292	6afb8fc9f46718a7efee1fb8f5de7e0c99a1daadc791b44758463b987ee49144	2025-02-27 21:47:20.11
2472	009a476ca9444cef15ab58a633e53dd42d3a125579f37a61fafce0b2e163cf1e	2025-02-28 18:44:52.707
2299	470e46f2931b8b4dafb4ecad10a73d1ccb406f84f24c33ae6f35993c2dce00c2	2025-02-27 21:47:28.427
2619	2074336d17beb1c5d9f9524dd1a29852989a804b82cf6079557f41df030f0c22	2025-04-09 01:05:46.863
2706	65a761070d19d1f166cd7138ec7bfb79b5e707fcdfb6799bd07ee90f5322b870	2025-04-09 01:28:58.17
2970	bc4c26d677f8789d816364478fa6c95150af59d1c07c613deef68f0f643aab28	2025-04-09 17:29:26.276
\.


--
-- Data for Name: usuarios; Type: TABLE DATA; Schema: public; Owner: lipe
--

COPY public.usuarios (id, login, senha) FROM stdin;
2	Admmicban@1974	Mic@1974
4	Andre	admin123
3	jean	je28052014
1	lipe	@Wallace44
\.


--
-- Name: abastecimento_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lipe
--

SELECT pg_catalog.setval('public.abastecimento_id_seq', 3, true);


--
-- Name: caminhoes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lipe
--

SELECT pg_catalog.setval('public.caminhoes_id_seq', 1, false);


--
-- Name: clientes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lipe
--

SELECT pg_catalog.setval('public.clientes_id_seq', 8, true);


--
-- Name: despesas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lipe
--

SELECT pg_catalog.setval('public.despesas_id_seq', 1, false);


--
-- Name: funcionarios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lipe
--

SELECT pg_catalog.setval('public.funcionarios_id_seq', 1, false);


--
-- Name: manutencao_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lipe
--

SELECT pg_catalog.setval('public.manutencao_id_seq', 1, false);


--
-- Name: motoristas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lipe
--

SELECT pg_catalog.setval('public.motoristas_id_seq', 1, false);


--
-- Name: os_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lipe
--

SELECT pg_catalog.setval('public.os_id_seq', 1, false);


--
-- Name: produtos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lipe
--

SELECT pg_catalog.setval('public.produtos_id_seq', 6, true);


--
-- Name: tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lipe
--

SELECT pg_catalog.setval('public.tokens_id_seq', 3515, true);


--
-- Name: usuarios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lipe
--

SELECT pg_catalog.setval('public.usuarios_id_seq', 1, true);


--
-- Name: abastecimento abastecimento_pkey; Type: CONSTRAINT; Schema: public; Owner: lipe
--

ALTER TABLE ONLY public.abastecimento
    ADD CONSTRAINT abastecimento_pkey PRIMARY KEY (id);


--
-- Name: caminhoes caminhoes_pkey; Type: CONSTRAINT; Schema: public; Owner: lipe
--

ALTER TABLE ONLY public.caminhoes
    ADD CONSTRAINT caminhoes_pkey PRIMARY KEY (id);


--
-- Name: clientes clientes_cpf_key; Type: CONSTRAINT; Schema: public; Owner: lipe
--

ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_cpf_key UNIQUE (cpf);


--
-- Name: clientes clientes_email_key; Type: CONSTRAINT; Schema: public; Owner: lipe
--

ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_email_key UNIQUE (email);


--
-- Name: clientes clientes_pkey; Type: CONSTRAINT; Schema: public; Owner: lipe
--

ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_pkey PRIMARY KEY (id);


--
-- Name: despesas despesas_pkey; Type: CONSTRAINT; Schema: public; Owner: lipe
--

ALTER TABLE ONLY public.despesas
    ADD CONSTRAINT despesas_pkey PRIMARY KEY (id);


--
-- Name: funcionarios funcionarios_pkey; Type: CONSTRAINT; Schema: public; Owner: lipe
--

ALTER TABLE ONLY public.funcionarios
    ADD CONSTRAINT funcionarios_pkey PRIMARY KEY (id);


--
-- Name: manutencao manutencao_pkey; Type: CONSTRAINT; Schema: public; Owner: lipe
--

ALTER TABLE ONLY public.manutencao
    ADD CONSTRAINT manutencao_pkey PRIMARY KEY (id);


--
-- Name: motoristas motoristas_pkey; Type: CONSTRAINT; Schema: public; Owner: lipe
--

ALTER TABLE ONLY public.motoristas
    ADD CONSTRAINT motoristas_pkey PRIMARY KEY (id);


--
-- Name: os os_pkey; Type: CONSTRAINT; Schema: public; Owner: lipe
--

ALTER TABLE ONLY public.os
    ADD CONSTRAINT os_pkey PRIMARY KEY (id);


--
-- Name: produtos produtos_pkey; Type: CONSTRAINT; Schema: public; Owner: lipe
--

ALTER TABLE ONLY public.produtos
    ADD CONSTRAINT produtos_pkey PRIMARY KEY (id);


--
-- Name: tokens tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: lipe
--

ALTER TABLE ONLY public.tokens
    ADD CONSTRAINT tokens_pkey PRIMARY KEY (id);


--
-- Name: tokens tokens_token_key; Type: CONSTRAINT; Schema: public; Owner: lipe
--

ALTER TABLE ONLY public.tokens
    ADD CONSTRAINT tokens_token_key UNIQUE (token);


--
-- Name: usuarios usuarios_pkey; Type: CONSTRAINT; Schema: public; Owner: lipe
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id);


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: lipe
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;


--
-- Name: TABLE caminhoes; Type: ACL; Schema: public; Owner: lipe
--

GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.caminhoes TO jeean;


--
-- Name: SEQUENCE caminhoes_id_seq; Type: ACL; Schema: public; Owner: lipe
--

GRANT ALL ON SEQUENCE public.caminhoes_id_seq TO jeean;


--
-- Name: TABLE despesas; Type: ACL; Schema: public; Owner: lipe
--

GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.despesas TO jeean;


--
-- Name: SEQUENCE despesas_id_seq; Type: ACL; Schema: public; Owner: lipe
--

GRANT ALL ON SEQUENCE public.despesas_id_seq TO jeean;


--
-- Name: TABLE funcionarios; Type: ACL; Schema: public; Owner: lipe
--

GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.funcionarios TO jeean;


--
-- Name: SEQUENCE funcionarios_id_seq; Type: ACL; Schema: public; Owner: lipe
--

GRANT ALL ON SEQUENCE public.funcionarios_id_seq TO jeean;


--
-- Name: TABLE manutencao; Type: ACL; Schema: public; Owner: lipe
--

GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.manutencao TO jeean;


--
-- Name: SEQUENCE manutencao_id_seq; Type: ACL; Schema: public; Owner: lipe
--

GRANT ALL ON SEQUENCE public.manutencao_id_seq TO jeean;


--
-- Name: TABLE motoristas; Type: ACL; Schema: public; Owner: lipe
--

GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.motoristas TO jeean;


--
-- Name: SEQUENCE motoristas_id_seq; Type: ACL; Schema: public; Owner: lipe
--

GRANT ALL ON SEQUENCE public.motoristas_id_seq TO jeean;


--
-- Name: TABLE os; Type: ACL; Schema: public; Owner: lipe
--

GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.os TO jeean;


--
-- Name: SEQUENCE os_id_seq; Type: ACL; Schema: public; Owner: lipe
--

GRANT ALL ON SEQUENCE public.os_id_seq TO jeean;


--
-- Name: TABLE produtos; Type: ACL; Schema: public; Owner: lipe
--

GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.produtos TO jeean;


--
-- Name: SEQUENCE produtos_id_seq; Type: ACL; Schema: public; Owner: lipe
--

GRANT ALL ON SEQUENCE public.produtos_id_seq TO jeean;


--
-- Name: TABLE usuarios; Type: ACL; Schema: public; Owner: lipe
--

GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.usuarios TO jeean;


--
-- Name: SEQUENCE usuarios_id_seq; Type: ACL; Schema: public; Owner: lipe
--

GRANT ALL ON SEQUENCE public.usuarios_id_seq TO jeean;


--
-- PostgreSQL database dump complete
--

