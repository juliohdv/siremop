--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.3
-- Dumped by pg_dump version 9.6.3

-- Started on 2017-06-23 22:24:48

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 12387)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2341 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 210 (class 1259 OID 17323)
-- Name: appEncuesta_administrador; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "appEncuesta_administrador" (
    "idAdministrador" integer NOT NULL,
    usuario character varying(25) NOT NULL,
    contrasenia character varying(25) NOT NULL
);


ALTER TABLE "appEncuesta_administrador" OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 17321)
-- Name: appEncuesta_administrador_idAdministrador_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "appEncuesta_administrador_idAdministrador_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "appEncuesta_administrador_idAdministrador_seq" OWNER TO postgres;

--
-- TOC entry 2342 (class 0 OID 0)
-- Dependencies: 209
-- Name: appEncuesta_administrador_idAdministrador_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "appEncuesta_administrador_idAdministrador_seq" OWNED BY "appEncuesta_administrador"."idAdministrador";


--
-- TOC entry 212 (class 1259 OID 17331)
-- Name: appEncuesta_detalleencuesta; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "appEncuesta_detalleencuesta" (
    "idDetalleEncuesta" integer NOT NULL,
    "fechaDetalle" date NOT NULL,
    "idPregunta_id" integer NOT NULL,
    "idRespuesta_id" integer NOT NULL
);


ALTER TABLE "appEncuesta_detalleencuesta" OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 17329)
-- Name: appEncuesta_detalleencuesta_idDetalleEncuesta_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "appEncuesta_detalleencuesta_idDetalleEncuesta_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "appEncuesta_detalleencuesta_idDetalleEncuesta_seq" OWNER TO postgres;

--
-- TOC entry 2343 (class 0 OID 0)
-- Dependencies: 211
-- Name: appEncuesta_detalleencuesta_idDetalleEncuesta_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "appEncuesta_detalleencuesta_idDetalleEncuesta_seq" OWNED BY "appEncuesta_detalleencuesta"."idDetalleEncuesta";


--
-- TOC entry 204 (class 1259 OID 17282)
-- Name: appEncuesta_encuesta; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "appEncuesta_encuesta" (
    "idEncuesta" integer NOT NULL,
    "cantidadPreguntas" integer NOT NULL,
    "nombreEncuesta" character varying(100) NOT NULL
);


ALTER TABLE "appEncuesta_encuesta" OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 17280)
-- Name: appEncuesta_encuesta_idEncuesta_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "appEncuesta_encuesta_idEncuesta_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "appEncuesta_encuesta_idEncuesta_seq" OWNER TO postgres;

--
-- TOC entry 2344 (class 0 OID 0)
-- Dependencies: 203
-- Name: appEncuesta_encuesta_idEncuesta_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "appEncuesta_encuesta_idEncuesta_seq" OWNED BY "appEncuesta_encuesta"."idEncuesta";


--
-- TOC entry 206 (class 1259 OID 17290)
-- Name: appEncuesta_pregunta; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "appEncuesta_pregunta" (
    "idPregunta" integer NOT NULL,
    "nombrePregunta" character varying(200) NOT NULL,
    "idEncuesta_id" integer NOT NULL,
    "numeroPregunta" integer NOT NULL
);


ALTER TABLE "appEncuesta_pregunta" OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 17288)
-- Name: appEncuesta_pregunta_idPregunta_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "appEncuesta_pregunta_idPregunta_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "appEncuesta_pregunta_idPregunta_seq" OWNER TO postgres;

--
-- TOC entry 2345 (class 0 OID 0)
-- Dependencies: 205
-- Name: appEncuesta_pregunta_idPregunta_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "appEncuesta_pregunta_idPregunta_seq" OWNED BY "appEncuesta_pregunta"."idPregunta";


--
-- TOC entry 208 (class 1259 OID 17298)
-- Name: appEncuesta_respuesta; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "appEncuesta_respuesta" (
    "idRespuesta" integer NOT NULL,
    "nombreRespuesta" character varying(200) NOT NULL,
    "idPregunta_id" integer NOT NULL,
    "numeroRespuesta" integer NOT NULL
);


ALTER TABLE "appEncuesta_respuesta" OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 17296)
-- Name: appEncuesta_respuesta_idRespuesta_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "appEncuesta_respuesta_idRespuesta_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "appEncuesta_respuesta_idRespuesta_seq" OWNER TO postgres;

--
-- TOC entry 2346 (class 0 OID 0)
-- Dependencies: 207
-- Name: appEncuesta_respuesta_idRespuesta_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "appEncuesta_respuesta_idRespuesta_seq" OWNED BY "appEncuesta_respuesta"."idRespuesta";


--
-- TOC entry 192 (class 1259 OID 17162)
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE auth_group OWNER TO postgres;

--
-- TOC entry 191 (class 1259 OID 17160)
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_id_seq OWNER TO postgres;

--
-- TOC entry 2347 (class 0 OID 0)
-- Dependencies: 191
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- TOC entry 194 (class 1259 OID 17172)
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_group_permissions OWNER TO postgres;

--
-- TOC entry 193 (class 1259 OID 17170)
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_permissions_id_seq OWNER TO postgres;

--
-- TOC entry 2348 (class 0 OID 0)
-- Dependencies: 193
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- TOC entry 190 (class 1259 OID 17154)
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE auth_permission OWNER TO postgres;

--
-- TOC entry 189 (class 1259 OID 17152)
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_permission_id_seq OWNER TO postgres;

--
-- TOC entry 2349 (class 0 OID 0)
-- Dependencies: 189
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- TOC entry 196 (class 1259 OID 17180)
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE auth_user OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 17190)
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE auth_user_groups OWNER TO postgres;

--
-- TOC entry 197 (class 1259 OID 17188)
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_groups_id_seq OWNER TO postgres;

--
-- TOC entry 2350 (class 0 OID 0)
-- Dependencies: 197
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- TOC entry 195 (class 1259 OID 17178)
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_id_seq OWNER TO postgres;

--
-- TOC entry 2351 (class 0 OID 0)
-- Dependencies: 195
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- TOC entry 200 (class 1259 OID 17198)
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_user_user_permissions OWNER TO postgres;

--
-- TOC entry 199 (class 1259 OID 17196)
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- TOC entry 2352 (class 0 OID 0)
-- Dependencies: 199
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- TOC entry 202 (class 1259 OID 17258)
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE django_admin_log OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 17256)
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_admin_log_id_seq OWNER TO postgres;

--
-- TOC entry 2353 (class 0 OID 0)
-- Dependencies: 201
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- TOC entry 188 (class 1259 OID 17144)
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE django_content_type OWNER TO postgres;

--
-- TOC entry 187 (class 1259 OID 17142)
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_content_type_id_seq OWNER TO postgres;

--
-- TOC entry 2354 (class 0 OID 0)
-- Dependencies: 187
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- TOC entry 186 (class 1259 OID 17133)
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE django_migrations OWNER TO postgres;

--
-- TOC entry 185 (class 1259 OID 17131)
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_migrations_id_seq OWNER TO postgres;

--
-- TOC entry 2355 (class 0 OID 0)
-- Dependencies: 185
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;


--
-- TOC entry 213 (class 1259 OID 17355)
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE django_session OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 17385)
-- Name: frontend_module; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE frontend_module (
    id integer NOT NULL,
    label character varying(50) NOT NULL,
    installed boolean NOT NULL
);


ALTER TABLE frontend_module OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 17383)
-- Name: frontend_module_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE frontend_module_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE frontend_module_id_seq OWNER TO postgres;

--
-- TOC entry 2356 (class 0 OID 0)
-- Dependencies: 214
-- Name: frontend_module_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE frontend_module_id_seq OWNED BY frontend_module.id;


--
-- TOC entry 2106 (class 2604 OID 17326)
-- Name: appEncuesta_administrador idAdministrador; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "appEncuesta_administrador" ALTER COLUMN "idAdministrador" SET DEFAULT nextval('"appEncuesta_administrador_idAdministrador_seq"'::regclass);


--
-- TOC entry 2107 (class 2604 OID 17334)
-- Name: appEncuesta_detalleencuesta idDetalleEncuesta; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "appEncuesta_detalleencuesta" ALTER COLUMN "idDetalleEncuesta" SET DEFAULT nextval('"appEncuesta_detalleencuesta_idDetalleEncuesta_seq"'::regclass);


--
-- TOC entry 2103 (class 2604 OID 17285)
-- Name: appEncuesta_encuesta idEncuesta; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "appEncuesta_encuesta" ALTER COLUMN "idEncuesta" SET DEFAULT nextval('"appEncuesta_encuesta_idEncuesta_seq"'::regclass);


--
-- TOC entry 2104 (class 2604 OID 17293)
-- Name: appEncuesta_pregunta idPregunta; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "appEncuesta_pregunta" ALTER COLUMN "idPregunta" SET DEFAULT nextval('"appEncuesta_pregunta_idPregunta_seq"'::regclass);


--
-- TOC entry 2105 (class 2604 OID 17301)
-- Name: appEncuesta_respuesta idRespuesta; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "appEncuesta_respuesta" ALTER COLUMN "idRespuesta" SET DEFAULT nextval('"appEncuesta_respuesta_idRespuesta_seq"'::regclass);


--
-- TOC entry 2096 (class 2604 OID 17165)
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- TOC entry 2097 (class 2604 OID 17175)
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- TOC entry 2095 (class 2604 OID 17157)
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- TOC entry 2098 (class 2604 OID 17183)
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- TOC entry 2099 (class 2604 OID 17193)
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- TOC entry 2100 (class 2604 OID 17201)
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- TOC entry 2101 (class 2604 OID 17261)
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- TOC entry 2094 (class 2604 OID 17147)
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- TOC entry 2093 (class 2604 OID 17136)
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);


--
-- TOC entry 2108 (class 2604 OID 17388)
-- Name: frontend_module id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY frontend_module ALTER COLUMN id SET DEFAULT nextval('frontend_module_id_seq'::regclass);


--
-- TOC entry 2329 (class 0 OID 17323)
-- Dependencies: 210
-- Data for Name: appEncuesta_administrador; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "appEncuesta_administrador" ("idAdministrador", usuario, contrasenia) FROM stdin;
\.


--
-- TOC entry 2357 (class 0 OID 0)
-- Dependencies: 209
-- Name: appEncuesta_administrador_idAdministrador_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"appEncuesta_administrador_idAdministrador_seq"', 1, false);


--
-- TOC entry 2331 (class 0 OID 17331)
-- Dependencies: 212
-- Data for Name: appEncuesta_detalleencuesta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "appEncuesta_detalleencuesta" ("idDetalleEncuesta", "fechaDetalle", "idPregunta_id", "idRespuesta_id") FROM stdin;
31	2017-06-22	15	25
32	2017-06-22	16	27
33	2017-06-22	17	29
34	2017-06-22	15	25
35	2017-06-22	16	28
36	2017-06-22	17	29
37	2017-06-23	15	26
38	2017-06-23	16	27
39	2017-06-23	15	25
40	2017-06-23	16	27
41	2017-06-23	17	29
42	2017-06-23	18	31
\.


--
-- TOC entry 2358 (class 0 OID 0)
-- Dependencies: 211
-- Name: appEncuesta_detalleencuesta_idDetalleEncuesta_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"appEncuesta_detalleencuesta_idDetalleEncuesta_seq"', 42, true);


--
-- TOC entry 2323 (class 0 OID 17282)
-- Dependencies: 204
-- Data for Name: appEncuesta_encuesta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "appEncuesta_encuesta" ("idEncuesta", "cantidadPreguntas", "nombreEncuesta") FROM stdin;
1	15	Preferencias de Partidos Politicos
\.


--
-- TOC entry 2359 (class 0 OID 0)
-- Dependencies: 203
-- Name: appEncuesta_encuesta_idEncuesta_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"appEncuesta_encuesta_idEncuesta_seq"', 1, true);


--
-- TOC entry 2325 (class 0 OID 17290)
-- Dependencies: 206
-- Data for Name: appEncuesta_pregunta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "appEncuesta_pregunta" ("idPregunta", "nombrePregunta", "idEncuesta_id", "numeroPregunta") FROM stdin;
15	Pregunta 1	1	1
16	Pregunta 2	1	2
17	Pregunta 3	1	3
18	Pregunta 4	1	4
\.


--
-- TOC entry 2360 (class 0 OID 0)
-- Dependencies: 205
-- Name: appEncuesta_pregunta_idPregunta_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"appEncuesta_pregunta_idPregunta_seq"', 18, true);


--
-- TOC entry 2327 (class 0 OID 17298)
-- Dependencies: 208
-- Data for Name: appEncuesta_respuesta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "appEncuesta_respuesta" ("idRespuesta", "nombreRespuesta", "idPregunta_id", "numeroRespuesta") FROM stdin;
25	Respuesta 1 P1	15	1
26	Respuesta 2 P1	15	2
28	Respuesta 2 P2	16	2
29	Respuesta 1 P3	17	1
27	Respuesta 1 P2	16	1
30	Respuesta 1 P4	18	1
31	Respuesta 2 P4	18	2
32	Respuesta 3 P4	18	3
\.


--
-- TOC entry 2361 (class 0 OID 0)
-- Dependencies: 207
-- Name: appEncuesta_respuesta_idRespuesta_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"appEncuesta_respuesta_idRespuesta_seq"', 32, true);


--
-- TOC entry 2311 (class 0 OID 17162)
-- Dependencies: 192
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_group (id, name) FROM stdin;
\.


--
-- TOC entry 2362 (class 0 OID 0)
-- Dependencies: 191
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- TOC entry 2313 (class 0 OID 17172)
-- Dependencies: 194
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- TOC entry 2363 (class 0 OID 0)
-- Dependencies: 193
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- TOC entry 2309 (class 0 OID 17154)
-- Dependencies: 190
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can add permission	2	add_permission
5	Can change permission	2	change_permission
6	Can delete permission	2	delete_permission
7	Can add group	3	add_group
8	Can change group	3	change_group
9	Can delete group	3	delete_group
10	Can add user	4	add_user
11	Can change user	4	change_user
12	Can delete user	4	delete_user
13	Can add content type	5	add_contenttype
14	Can change content type	5	change_contenttype
15	Can delete content type	5	delete_contenttype
16	Can add session	6	add_session
17	Can change session	6	change_session
18	Can delete session	6	delete_session
19	Can add encuesta	7	add_encuesta
20	Can change encuesta	7	change_encuesta
21	Can delete encuesta	7	delete_encuesta
22	Can add pregunta	8	add_pregunta
23	Can change pregunta	8	change_pregunta
24	Can delete pregunta	8	delete_pregunta
25	Can add respuesta	9	add_respuesta
26	Can change respuesta	9	change_respuesta
27	Can delete respuesta	9	delete_respuesta
28	Can add administrador	10	add_administrador
29	Can change administrador	10	change_administrador
30	Can delete administrador	10	delete_administrador
31	Can add detalle encuesta	11	add_detalleencuesta
32	Can change detalle encuesta	11	change_detalleencuesta
33	Can delete detalle encuesta	11	delete_detalleencuesta
34	Can add module	12	add_module
35	Can change module	12	change_module
36	Can delete module	12	delete_module
\.


--
-- TOC entry 2364 (class 0 OID 0)
-- Dependencies: 189
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_permission_id_seq', 36, true);


--
-- TOC entry 2315 (class 0 OID 17180)
-- Dependencies: 196
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$36000$HrdzvPPEN1so$gDv7+wzaF1ah0YxFQRRaDikApDTPqpigqmxew+pWg2c=	2017-06-23 14:24:45.682247-06	t	admin			admin@domain.com	t	t	2017-06-21 22:02:12.901415-06
\.


--
-- TOC entry 2317 (class 0 OID 17190)
-- Dependencies: 198
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- TOC entry 2365 (class 0 OID 0)
-- Dependencies: 197
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- TOC entry 2366 (class 0 OID 0)
-- Dependencies: 195
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_user_id_seq', 1, true);


--
-- TOC entry 2319 (class 0 OID 17198)
-- Dependencies: 200
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- TOC entry 2367 (class 0 OID 0)
-- Dependencies: 199
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- TOC entry 2321 (class 0 OID 17258)
-- Dependencies: 202
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2017-06-21 22:03:02.832079-06	1	Preferencias de Partidos Politicos	1	[{"added": {}}]	7	1
2	2017-06-21 22:03:16.973308-06	1	Pregunta 1	1	[{"added": {}}]	8	1
3	2017-06-21 22:03:24.44247-06	2	Pregunta 2	1	[{"added": {}}]	8	1
4	2017-06-21 22:03:34.67733-06	3	Pregunta 3	1	[{"added": {}}]	8	1
5	2017-06-21 22:04:17.632409-06	1	Respuesta 1 P1	1	[{"added": {}}]	9	1
6	2017-06-21 22:04:32.617485-06	2	Respuesta 2 P1	1	[{"added": {}}]	9	1
7	2017-06-21 22:04:42.977347-06	3	Respuesta1 P2	1	[{"added": {}}]	9	1
8	2017-06-21 22:04:54.149747-06	4	Respuesta2 P2	1	[{"added": {}}]	9	1
9	2017-06-21 22:05:09.916113-06	5	Respuesta1 P3	1	[{"added": {}}]	9	1
10	2017-06-21 22:05:21.026011-06	6	Respuesta 2 P3	1	[{"added": {}}]	9	1
11	2017-06-21 22:43:19.273787-06	4	Pregunta 4 OM	1	[{"added": {}}]	8	1
12	2017-06-21 22:43:55.994199-06	4	Pregunta 4 OM	2	[{"changed": {"fields": ["numeroPregunta"]}}]	8	1
13	2017-06-21 22:44:02.760147-06	4	Pregunta 4 OM	2	[]	8	1
14	2017-06-21 22:44:16.292026-06	5	Pregunta 5 OM	1	[{"added": {}}]	8	1
15	2017-06-21 22:44:49.949859-06	7	Respuesta1 P4 OM	1	[{"added": {}}]	9	1
16	2017-06-21 22:45:19.263737-06	8	Respuesta2 P4 OM	1	[{"added": {}}]	9	1
17	2017-06-21 22:45:39.045918-06	9	Respuesta3 P4 OM	1	[{"added": {}}]	9	1
18	2017-06-21 22:47:07.72196-06	10	Respuesta1 P5 OM	1	[{"added": {}}]	9	1
19	2017-06-21 22:47:21.410169-06	11	Respuesta2 P5 OM	1	[{"added": {}}]	9	1
20	2017-06-22 00:01:08.413946-06	6	Pregunta 6	1	[{"added": {}}]	8	1
21	2017-06-22 00:01:35.415221-06	12	Respuesta 1P6	1	[{"added": {}}]	9	1
22	2017-06-22 00:01:49.118985-06	13	Respuesta 2 P6	1	[{"added": {}}]	9	1
23	2017-06-22 01:07:42.73571-06	5	Pregunta 5	2	[{"changed": {"fields": ["nombrePregunta"]}}]	8	1
24	2017-06-22 01:07:51.126726-06	4	Pregunta 4	2	[{"changed": {"fields": ["nombrePregunta"]}}]	8	1
25	2017-06-22 18:42:04.131237-06	24	3	3		9	1
26	2017-06-22 18:42:39.767618-06	14	Pregunta 8	3		8	1
27	2017-06-22 18:46:23.000599-06	15	Pregunta 1	1	[{"added": {}}]	8	1
28	2017-06-22 18:46:41.481435-06	16	Pregunta 2	1	[{"added": {}}]	8	1
29	2017-06-22 18:46:53.719553-06	17	Pregunta 3	1	[{"added": {}}]	8	1
30	2017-06-22 18:47:17.36103-06	25	Respuesta 1 P1	1	[{"added": {}}]	9	1
31	2017-06-22 18:47:30.471995-06	26	Respuesta 2 P1	1	[{"added": {}}]	9	1
32	2017-06-22 18:47:42.337776-06	27	Respuesta1 P2	1	[{"added": {}}]	9	1
33	2017-06-22 18:47:56.425522-06	28	Respuesta 2 P2	1	[{"added": {}}]	9	1
34	2017-06-22 18:48:09.617504-06	29	Respuesta 1 P3	1	[{"added": {}}]	9	1
35	2017-06-22 18:49:02.565677-06	27	Respuesta 1 P2	2	[{"changed": {"fields": ["nombreRespuesta"]}}]	9	1
\.


--
-- TOC entry 2368 (class 0 OID 0)
-- Dependencies: 201
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 35, true);


--
-- TOC entry 2307 (class 0 OID 17144)
-- Dependencies: 188
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	appEncuesta	encuesta
8	appEncuesta	pregunta
9	appEncuesta	respuesta
10	appEncuesta	administrador
11	appEncuesta	detalleencuesta
12	frontend	module
\.


--
-- TOC entry 2369 (class 0 OID 0)
-- Dependencies: 187
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_content_type_id_seq', 12, true);


--
-- TOC entry 2305 (class 0 OID 17133)
-- Dependencies: 186
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2017-06-21 21:59:42.011598-06
2	auth	0001_initial	2017-06-21 21:59:42.871018-06
3	admin	0001_initial	2017-06-21 21:59:43.308577-06
4	admin	0002_logentry_remove_auto_add	2017-06-21 21:59:43.371109-06
5	appEncuesta	0001_initial	2017-06-21 21:59:43.699232-06
6	appEncuesta	0002_encuesta_nombreencuesta	2017-06-21 21:59:43.871059-06
7	appEncuesta	0003_administrador	2017-06-21 21:59:43.933603-06
8	appEncuesta	0004_remove_pregunta_cantidadrespuestas	2017-06-21 21:59:43.949189-06
9	appEncuesta	0005_detalleencuesta	2017-06-21 21:59:44.08982-06
10	appEncuesta	0006_respuesta_numerorespuesta	2017-06-21 21:59:44.105512-06
11	contenttypes	0002_remove_content_type_name	2017-06-21 21:59:44.199264-06
12	auth	0002_alter_permission_name_max_length	2017-06-21 21:59:44.230457-06
13	auth	0003_alter_user_email_max_length	2017-06-21 21:59:44.261709-06
14	auth	0004_alter_user_username_opts	2017-06-21 21:59:44.308646-06
15	auth	0005_alter_user_last_login_null	2017-06-21 21:59:44.339898-06
16	auth	0006_require_contenttypes_0002	2017-06-21 21:59:44.355562-06
17	auth	0007_alter_validators_add_error_messages	2017-06-21 21:59:44.386775-06
18	auth	0008_alter_user_username_max_length	2017-06-21 21:59:44.480483-06
19	sessions	0001_initial	2017-06-21 21:59:44.652344-06
20	appEncuesta	0007_pregunta_numeropregunta	2017-06-21 22:00:18.607123-06
21	appEncuesta	0008_remove_respuesta_tiporespuesta	2017-06-22 01:05:49.35544-06
22	frontend	0001_initial	2017-06-22 16:26:28.348268-06
23	frontend	0002_i18n	2017-06-22 16:26:28.383286-06
\.


--
-- TOC entry 2370 (class 0 OID 0)
-- Dependencies: 185
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_migrations_id_seq', 23, true);


--
-- TOC entry 2332 (class 0 OID 17355)
-- Dependencies: 213
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
i1183bvgp3vr9lns5xwxwohaj8phnrr9	ODZkNjhiODAwN2ZjYzc4MTNjYTdhZjIzZDA5Mjk0ZTBmMzFmNzBmYTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiZmY2YWQ5MjMxODBhMjdlZjIyZDQ4OTNlMDRiNGM4MzQyMmM3MGY4In0=	2017-07-07 14:24:45.744793-06
\.


--
-- TOC entry 2334 (class 0 OID 17385)
-- Dependencies: 215
-- Data for Name: frontend_module; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY frontend_module (id, label, installed) FROM stdin;
1	material_admin	t
\.


--
-- TOC entry 2371 (class 0 OID 0)
-- Dependencies: 214
-- Name: frontend_module_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('frontend_module_id_seq', 1, true);


--
-- TOC entry 2161 (class 2606 OID 17328)
-- Name: appEncuesta_administrador appEncuesta_administrador_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "appEncuesta_administrador"
    ADD CONSTRAINT "appEncuesta_administrador_pkey" PRIMARY KEY ("idAdministrador");


--
-- TOC entry 2165 (class 2606 OID 17336)
-- Name: appEncuesta_detalleencuesta appEncuesta_detalleencuesta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "appEncuesta_detalleencuesta"
    ADD CONSTRAINT "appEncuesta_detalleencuesta_pkey" PRIMARY KEY ("idDetalleEncuesta");


--
-- TOC entry 2153 (class 2606 OID 17287)
-- Name: appEncuesta_encuesta appEncuesta_encuesta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "appEncuesta_encuesta"
    ADD CONSTRAINT "appEncuesta_encuesta_pkey" PRIMARY KEY ("idEncuesta");


--
-- TOC entry 2156 (class 2606 OID 17295)
-- Name: appEncuesta_pregunta appEncuesta_pregunta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "appEncuesta_pregunta"
    ADD CONSTRAINT "appEncuesta_pregunta_pkey" PRIMARY KEY ("idPregunta");


--
-- TOC entry 2159 (class 2606 OID 17303)
-- Name: appEncuesta_respuesta appEncuesta_respuesta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "appEncuesta_respuesta"
    ADD CONSTRAINT "appEncuesta_respuesta_pkey" PRIMARY KEY ("idRespuesta");


--
-- TOC entry 2122 (class 2606 OID 17169)
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- TOC entry 2127 (class 2606 OID 17224)
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- TOC entry 2130 (class 2606 OID 17177)
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2124 (class 2606 OID 17167)
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- TOC entry 2117 (class 2606 OID 17210)
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- TOC entry 2119 (class 2606 OID 17159)
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- TOC entry 2138 (class 2606 OID 17195)
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- TOC entry 2141 (class 2606 OID 17239)
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- TOC entry 2132 (class 2606 OID 17185)
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- TOC entry 2144 (class 2606 OID 17203)
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2147 (class 2606 OID 17253)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- TOC entry 2135 (class 2606 OID 17350)
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- TOC entry 2150 (class 2606 OID 17267)
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- TOC entry 2112 (class 2606 OID 17151)
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- TOC entry 2114 (class 2606 OID 17149)
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- TOC entry 2110 (class 2606 OID 17141)
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 2168 (class 2606 OID 17362)
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- TOC entry 2173 (class 2606 OID 17390)
-- Name: frontend_module frontend_module_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY frontend_module
    ADD CONSTRAINT frontend_module_pkey PRIMARY KEY (id);


--
-- TOC entry 2162 (class 1259 OID 17347)
-- Name: appEncuesta_detalleencuesta_idPregunta_id_6678d789; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "appEncuesta_detalleencuesta_idPregunta_id_6678d789" ON "appEncuesta_detalleencuesta" USING btree ("idPregunta_id");


--
-- TOC entry 2163 (class 1259 OID 17348)
-- Name: appEncuesta_detalleencuesta_idRespuesta_id_4b5b9431; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "appEncuesta_detalleencuesta_idRespuesta_id_4b5b9431" ON "appEncuesta_detalleencuesta" USING btree ("idRespuesta_id");


--
-- TOC entry 2154 (class 1259 OID 17309)
-- Name: appEncuesta_pregunta_idEncuesta_id_2108ea7a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "appEncuesta_pregunta_idEncuesta_id_2108ea7a" ON "appEncuesta_pregunta" USING btree ("idEncuesta_id");


--
-- TOC entry 2157 (class 1259 OID 17315)
-- Name: appEncuesta_respuesta_idPregunta_id_0db6cae2; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "appEncuesta_respuesta_idPregunta_id_0db6cae2" ON "appEncuesta_respuesta" USING btree ("idPregunta_id");


--
-- TOC entry 2120 (class 1259 OID 17212)
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- TOC entry 2125 (class 1259 OID 17225)
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON auth_group_permissions USING btree (group_id);


--
-- TOC entry 2128 (class 1259 OID 17226)
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON auth_group_permissions USING btree (permission_id);


--
-- TOC entry 2115 (class 1259 OID 17211)
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON auth_permission USING btree (content_type_id);


--
-- TOC entry 2136 (class 1259 OID 17241)
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON auth_user_groups USING btree (group_id);


--
-- TOC entry 2139 (class 1259 OID 17240)
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON auth_user_groups USING btree (user_id);


--
-- TOC entry 2142 (class 1259 OID 17255)
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON auth_user_user_permissions USING btree (permission_id);


--
-- TOC entry 2145 (class 1259 OID 17254)
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON auth_user_user_permissions USING btree (user_id);


--
-- TOC entry 2133 (class 1259 OID 17351)
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON auth_user USING btree (username varchar_pattern_ops);


--
-- TOC entry 2148 (class 1259 OID 17278)
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON django_admin_log USING btree (content_type_id);


--
-- TOC entry 2151 (class 1259 OID 17279)
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON django_admin_log USING btree (user_id);


--
-- TOC entry 2166 (class 1259 OID 17364)
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON django_session USING btree (expire_date);


--
-- TOC entry 2169 (class 1259 OID 17363)
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON django_session USING btree (session_key varchar_pattern_ops);


--
-- TOC entry 2170 (class 1259 OID 17391)
-- Name: frontend_module_label_58c52d82; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX frontend_module_label_58c52d82 ON frontend_module USING btree (label);


--
-- TOC entry 2171 (class 1259 OID 17392)
-- Name: frontend_module_label_58c52d82_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX frontend_module_label_58c52d82_like ON frontend_module USING btree (label varchar_pattern_ops);


--
-- TOC entry 2185 (class 2606 OID 17337)
-- Name: appEncuesta_detalleencuesta appEncuesta_detallee_idPregunta_id_6678d789_fk_appEncues; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "appEncuesta_detalleencuesta"
    ADD CONSTRAINT "appEncuesta_detallee_idPregunta_id_6678d789_fk_appEncues" FOREIGN KEY ("idPregunta_id") REFERENCES "appEncuesta_pregunta"("idPregunta") DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2186 (class 2606 OID 17342)
-- Name: appEncuesta_detalleencuesta appEncuesta_detallee_idRespuesta_id_4b5b9431_fk_appEncues; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "appEncuesta_detalleencuesta"
    ADD CONSTRAINT "appEncuesta_detallee_idRespuesta_id_4b5b9431_fk_appEncues" FOREIGN KEY ("idRespuesta_id") REFERENCES "appEncuesta_respuesta"("idRespuesta") DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2183 (class 2606 OID 17304)
-- Name: appEncuesta_pregunta appEncuesta_pregunta_idEncuesta_id_2108ea7a_fk_appEncues; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "appEncuesta_pregunta"
    ADD CONSTRAINT "appEncuesta_pregunta_idEncuesta_id_2108ea7a_fk_appEncues" FOREIGN KEY ("idEncuesta_id") REFERENCES "appEncuesta_encuesta"("idEncuesta") DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2184 (class 2606 OID 17310)
-- Name: appEncuesta_respuesta appEncuesta_respuest_idPregunta_id_0db6cae2_fk_appEncues; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "appEncuesta_respuesta"
    ADD CONSTRAINT "appEncuesta_respuest_idPregunta_id_0db6cae2_fk_appEncues" FOREIGN KEY ("idPregunta_id") REFERENCES "appEncuesta_pregunta"("idPregunta") DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2176 (class 2606 OID 17218)
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2175 (class 2606 OID 17213)
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2174 (class 2606 OID 17204)
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2178 (class 2606 OID 17233)
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2177 (class 2606 OID 17228)
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2180 (class 2606 OID 17247)
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2179 (class 2606 OID 17242)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2181 (class 2606 OID 17268)
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2182 (class 2606 OID 17273)
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


-- Completed on 2017-06-23 22:24:49

--
-- PostgreSQL database dump complete
--

