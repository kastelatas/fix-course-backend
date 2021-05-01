--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2
-- Dumped by pg_dump version 13.2

-- Started on 2021-05-01 16:12:15

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
-- TOC entry 223 (class 1259 OID 25019)
-- Name: archives; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.archives (
    id integer NOT NULL,
    path character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.archives OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 25017)
-- Name: archives_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.archives_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.archives_id_seq OWNER TO postgres;

--
-- TOC entry 3147 (class 0 OID 0)
-- Dependencies: 222
-- Name: archives_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.archives_id_seq OWNED BY public.archives.id;


--
-- TOC entry 207 (class 1259 OID 24915)
-- Name: course_categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.course_categories (
    id integer NOT NULL,
    name character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.course_categories OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 24913)
-- Name: course_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.course_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.course_categories_id_seq OWNER TO postgres;

--
-- TOC entry 3148 (class 0 OID 0)
-- Dependencies: 206
-- Name: course_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.course_categories_id_seq OWNED BY public.course_categories.id;


--
-- TOC entry 205 (class 1259 OID 24899)
-- Name: courses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.courses (
    id integer NOT NULL,
    title character varying(255),
    banner character varying(255),
    description character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "userId" integer
);


ALTER TABLE public.courses OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 24897)
-- Name: courses_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.courses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.courses_id_seq OWNER TO postgres;

--
-- TOC entry 3149 (class 0 OID 0)
-- Dependencies: 204
-- Name: courses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.courses_id_seq OWNED BY public.courses.id;


--
-- TOC entry 219 (class 1259 OID 24985)
-- Name: homework; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.homework (
    id integer NOT NULL,
    work character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.homework OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 24983)
-- Name: homework_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.homework_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.homework_id_seq OWNER TO postgres;

--
-- TOC entry 3150 (class 0 OID 0)
-- Dependencies: 218
-- Name: homework_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.homework_id_seq OWNED BY public.homework.id;


--
-- TOC entry 217 (class 1259 OID 24977)
-- Name: lesson_videos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.lesson_videos (
    id integer NOT NULL,
    path character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.lesson_videos OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 24975)
-- Name: lesson_videos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.lesson_videos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lesson_videos_id_seq OWNER TO postgres;

--
-- TOC entry 3151 (class 0 OID 0)
-- Dependencies: 216
-- Name: lesson_videos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.lesson_videos_id_seq OWNED BY public.lesson_videos.id;


--
-- TOC entry 221 (class 1259 OID 24993)
-- Name: lessons; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.lessons (
    id integer NOT NULL,
    title character varying(255),
    description character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "subjectId" integer,
    "lessonVideoId" integer,
    "homeworkId" integer
);


ALTER TABLE public.lessons OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 24991)
-- Name: lessons_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.lessons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lessons_id_seq OWNER TO postgres;

--
-- TOC entry 3152 (class 0 OID 0)
-- Dependencies: 220
-- Name: lessons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.lessons_id_seq OWNED BY public.lessons.id;


--
-- TOC entry 213 (class 1259 OID 24949)
-- Name: media; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.media (
    id integer NOT NULL,
    name character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.media OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 24947)
-- Name: media_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.media_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.media_id_seq OWNER TO postgres;

--
-- TOC entry 3153 (class 0 OID 0)
-- Dependencies: 212
-- Name: media_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.media_id_seq OWNED BY public.media.id;


--
-- TOC entry 203 (class 1259 OID 24883)
-- Name: posts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.posts (
    id integer NOT NULL,
    title character varying(255),
    content character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "userId" integer
);


ALTER TABLE public.posts OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 24881)
-- Name: posts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.posts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.posts_id_seq OWNER TO postgres;

--
-- TOC entry 3154 (class 0 OID 0)
-- Dependencies: 202
-- Name: posts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.posts_id_seq OWNED BY public.posts.id;


--
-- TOC entry 211 (class 1259 OID 24936)
-- Name: purchased_courses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.purchased_courses (
    id integer NOT NULL,
    course_id integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "userId" integer
);


ALTER TABLE public.purchased_courses OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 24934)
-- Name: purchased_courses_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.purchased_courses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.purchased_courses_id_seq OWNER TO postgres;

--
-- TOC entry 3155 (class 0 OID 0)
-- Dependencies: 210
-- Name: purchased_courses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.purchased_courses_id_seq OWNED BY public.purchased_courses.id;


--
-- TOC entry 209 (class 1259 OID 24923)
-- Name: subjects; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.subjects (
    id integer NOT NULL,
    title character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "courseId" integer
);


ALTER TABLE public.subjects OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 24921)
-- Name: subjects_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.subjects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.subjects_id_seq OWNER TO postgres;

--
-- TOC entry 3156 (class 0 OID 0)
-- Dependencies: 208
-- Name: subjects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.subjects_id_seq OWNED BY public.subjects.id;


--
-- TOC entry 225 (class 1259 OID 25027)
-- Name: user_to_homeworks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_to_homeworks (
    id integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "userId" integer,
    "homeworkId" integer,
    "archiveId" integer
);


ALTER TABLE public.user_to_homeworks OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 25025)
-- Name: user_to_homeworks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_to_homeworks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_to_homeworks_id_seq OWNER TO postgres;

--
-- TOC entry 3157 (class 0 OID 0)
-- Dependencies: 224
-- Name: user_to_homeworks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_to_homeworks_id_seq OWNED BY public.user_to_homeworks.id;


--
-- TOC entry 201 (class 1259 OID 24869)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    email character varying(255),
    password character varying(255),
    role character varying(255) DEFAULT 'USER'::character varying,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 24867)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- TOC entry 3158 (class 0 OID 0)
-- Dependencies: 200
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 215 (class 1259 OID 24957)
-- Name: сourse_to_сategories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."сourse_to_сategories" (
    id integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "courseId" integer,
    "courseCategoryId" integer
);


ALTER TABLE public."сourse_to_сategories" OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 24955)
-- Name: сourse_to_сategories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."сourse_to_сategories_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."сourse_to_сategories_id_seq" OWNER TO postgres;

--
-- TOC entry 3159 (class 0 OID 0)
-- Dependencies: 214
-- Name: сourse_to_сategories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."сourse_to_сategories_id_seq" OWNED BY public."сourse_to_сategories".id;


--
-- TOC entry 2938 (class 2604 OID 25053)
-- Name: archives id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.archives ALTER COLUMN id SET DEFAULT nextval('public.archives_id_seq'::regclass);


--
-- TOC entry 2930 (class 2604 OID 25054)
-- Name: course_categories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.course_categories ALTER COLUMN id SET DEFAULT nextval('public.course_categories_id_seq'::regclass);


--
-- TOC entry 2929 (class 2604 OID 25055)
-- Name: courses id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courses ALTER COLUMN id SET DEFAULT nextval('public.courses_id_seq'::regclass);


--
-- TOC entry 2936 (class 2604 OID 25056)
-- Name: homework id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.homework ALTER COLUMN id SET DEFAULT nextval('public.homework_id_seq'::regclass);


--
-- TOC entry 2935 (class 2604 OID 25057)
-- Name: lesson_videos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lesson_videos ALTER COLUMN id SET DEFAULT nextval('public.lesson_videos_id_seq'::regclass);


--
-- TOC entry 2937 (class 2604 OID 25058)
-- Name: lessons id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lessons ALTER COLUMN id SET DEFAULT nextval('public.lessons_id_seq'::regclass);


--
-- TOC entry 2933 (class 2604 OID 25059)
-- Name: media id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.media ALTER COLUMN id SET DEFAULT nextval('public.media_id_seq'::regclass);


--
-- TOC entry 2928 (class 2604 OID 25060)
-- Name: posts id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts ALTER COLUMN id SET DEFAULT nextval('public.posts_id_seq'::regclass);


--
-- TOC entry 2932 (class 2604 OID 25061)
-- Name: purchased_courses id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.purchased_courses ALTER COLUMN id SET DEFAULT nextval('public.purchased_courses_id_seq'::regclass);


--
-- TOC entry 2931 (class 2604 OID 25062)
-- Name: subjects id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subjects ALTER COLUMN id SET DEFAULT nextval('public.subjects_id_seq'::regclass);


--
-- TOC entry 2939 (class 2604 OID 25063)
-- Name: user_to_homeworks id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_to_homeworks ALTER COLUMN id SET DEFAULT nextval('public.user_to_homeworks_id_seq'::regclass);


--
-- TOC entry 2927 (class 2604 OID 25064)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 2934 (class 2604 OID 25065)
-- Name: сourse_to_сategories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."сourse_to_сategories" ALTER COLUMN id SET DEFAULT nextval('public."сourse_to_сategories_id_seq"'::regclass);


--
-- TOC entry 3139 (class 0 OID 25019)
-- Dependencies: 223
-- Data for Name: archives; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.archives (id, path, "createdAt", "updatedAt") FROM stdin;
\.


--
-- TOC entry 3123 (class 0 OID 24915)
-- Dependencies: 207
-- Data for Name: course_categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.course_categories (id, name, "createdAt", "updatedAt") FROM stdin;
\.


--
-- TOC entry 3121 (class 0 OID 24899)
-- Dependencies: 205
-- Data for Name: courses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.courses (id, title, banner, description, "createdAt", "updatedAt", "userId") FROM stdin;
1	title1	905cc8ff-31d8-456a-baea-35a8ca7ae073.jpg	description1	2021-05-01 11:18:41.706+03	2021-05-01 11:18:41.706+03	\N
2	title1	d9b9e93e-943b-43a9-a75e-22c6e083a0a8.jpg	description1	2021-05-01 11:20:11.777+03	2021-05-01 11:20:11.777+03	\N
3	title1	8d77e3e8-d401-4606-86a7-a19c697eb240.jpg	description1	2021-05-01 11:21:07.394+03	2021-05-01 11:21:07.394+03	\N
4	title1	119bd25a-2dae-4774-be6d-874d7ed3a86a.jpg	description1	2021-05-01 11:22:26.134+03	2021-05-01 11:22:26.134+03	\N
5	title1	51937c48-5304-48d5-9d3a-608745d945e7.jpg	description1	2021-05-01 11:23:33.1+03	2021-05-01 11:23:33.1+03	1
6	title1	79a4bc3c-2c56-4c87-bf84-7a476e7a0c2a.jpg	description1	2021-05-01 11:25:59.426+03	2021-05-01 11:25:59.426+03	1
7	title1	393cc23f-e086-45b5-bf27-639a733c548b.jpg	description1	2021-05-01 11:27:07.763+03	2021-05-01 11:27:07.763+03	1
8	title1	7c403b88-6c5e-49c2-8aaa-8d6fda6b7443.jpg	description1	2021-05-01 11:27:31.391+03	2021-05-01 11:27:31.391+03	1
9	title1	7672eb0d-0a2c-4b38-b0e4-516b893be9f7.jpg	description1	2021-05-01 11:28:06.74+03	2021-05-01 11:28:06.74+03	1
10	title1	c4fbc327-cfad-4dff-b491-39dc97297b63.jpg	description1	2021-05-01 11:31:49.972+03	2021-05-01 11:31:49.972+03	1
11	title1	3427b7dd-fa67-49bb-81c2-32aa571f7617.jpg	description1	2021-05-01 11:52:20.927+03	2021-05-01 11:52:20.927+03	1
\.


--
-- TOC entry 3135 (class 0 OID 24985)
-- Dependencies: 219
-- Data for Name: homework; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.homework (id, work, "createdAt", "updatedAt") FROM stdin;
\.


--
-- TOC entry 3133 (class 0 OID 24977)
-- Dependencies: 217
-- Data for Name: lesson_videos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.lesson_videos (id, path, "createdAt", "updatedAt") FROM stdin;
\.


--
-- TOC entry 3137 (class 0 OID 24993)
-- Dependencies: 221
-- Data for Name: lessons; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.lessons (id, title, description, "createdAt", "updatedAt", "subjectId", "lessonVideoId", "homeworkId") FROM stdin;
1	Lesson title1	LEsson descr 1	2021-05-01 11:27:07.874+03	2021-05-01 11:27:07.874+03	\N	\N	\N
2	Lesson title1	LEsson descr 1	2021-05-01 11:27:07.879+03	2021-05-01 11:27:07.879+03	\N	\N	\N
3	Lesson title1	LEsson descr 1	2021-05-01 11:27:31.403+03	2021-05-01 11:27:31.403+03	\N	\N	\N
4	Lesson title1	LEsson descr 1	2021-05-01 11:27:31.407+03	2021-05-01 11:27:31.407+03	\N	\N	\N
5	Lesson title1	LEsson descr 1	2021-05-01 11:28:06.753+03	2021-05-01 11:28:06.753+03	7	\N	\N
6	Lesson title1	LEsson descr 1	2021-05-01 11:28:06.757+03	2021-05-01 11:28:06.757+03	8	\N	\N
7	Lesson title1	LEsson descr 1	2021-05-01 11:31:49.99+03	2021-05-01 11:31:49.99+03	9	\N	\N
8	Lesson title1	LEsson descr 1	2021-05-01 11:31:49.993+03	2021-05-01 11:31:49.993+03	10	\N	\N
\.


--
-- TOC entry 3129 (class 0 OID 24949)
-- Dependencies: 213
-- Data for Name: media; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.media (id, name, "createdAt", "updatedAt") FROM stdin;
\.


--
-- TOC entry 3119 (class 0 OID 24883)
-- Dependencies: 203
-- Data for Name: posts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.posts (id, title, content, "createdAt", "updatedAt", "userId") FROM stdin;
\.


--
-- TOC entry 3127 (class 0 OID 24936)
-- Dependencies: 211
-- Data for Name: purchased_courses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.purchased_courses (id, course_id, "createdAt", "updatedAt", "userId") FROM stdin;
\.


--
-- TOC entry 3125 (class 0 OID 24923)
-- Dependencies: 209
-- Data for Name: subjects; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.subjects (id, title, "createdAt", "updatedAt", "courseId") FROM stdin;
1	\N	2021-05-01 11:25:59.442+03	2021-05-01 11:25:59.442+03	6
2	\N	2021-05-01 11:25:59.446+03	2021-05-01 11:25:59.446+03	6
3	\N	2021-05-01 11:27:07.87+03	2021-05-01 11:27:07.87+03	7
4	\N	2021-05-01 11:27:07.878+03	2021-05-01 11:27:07.878+03	7
5	\N	2021-05-01 11:27:31.4+03	2021-05-01 11:27:31.4+03	8
6	\N	2021-05-01 11:27:31.405+03	2021-05-01 11:27:31.405+03	8
7	\N	2021-05-01 11:28:06.75+03	2021-05-01 11:28:06.75+03	9
8	\N	2021-05-01 11:28:06.756+03	2021-05-01 11:28:06.756+03	9
9	subject1	2021-05-01 11:31:49.987+03	2021-05-01 11:31:49.987+03	10
10	subject12	2021-05-01 11:31:49.992+03	2021-05-01 11:31:49.992+03	10
\.


--
-- TOC entry 3141 (class 0 OID 25027)
-- Dependencies: 225
-- Data for Name: user_to_homeworks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_to_homeworks (id, "createdAt", "updatedAt", "userId", "homeworkId", "archiveId") FROM stdin;
\.


--
-- TOC entry 3117 (class 0 OID 24869)
-- Dependencies: 201
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, email, password, role, "createdAt", "updatedAt") FROM stdin;
1	user@mail.com	$2b$05$KwfxDz0PCw5paZXUWbRU/eCIwvA3YNrwFPfX04IKssqb4SBBHYhuC	USER	2021-05-01 11:19:39.04+03	2021-05-01 11:19:39.04+03
\.


--
-- TOC entry 3131 (class 0 OID 24957)
-- Dependencies: 215
-- Data for Name: сourse_to_сategories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."сourse_to_сategories" (id, "createdAt", "updatedAt", "courseId", "courseCategoryId") FROM stdin;
\.


--
-- TOC entry 3160 (class 0 OID 0)
-- Dependencies: 222
-- Name: archives_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.archives_id_seq', 1, false);


--
-- TOC entry 3161 (class 0 OID 0)
-- Dependencies: 206
-- Name: course_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.course_categories_id_seq', 1, false);


--
-- TOC entry 3162 (class 0 OID 0)
-- Dependencies: 204
-- Name: courses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.courses_id_seq', 11, true);


--
-- TOC entry 3163 (class 0 OID 0)
-- Dependencies: 218
-- Name: homework_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.homework_id_seq', 1, false);


--
-- TOC entry 3164 (class 0 OID 0)
-- Dependencies: 216
-- Name: lesson_videos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.lesson_videos_id_seq', 1, false);


--
-- TOC entry 3165 (class 0 OID 0)
-- Dependencies: 220
-- Name: lessons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.lessons_id_seq', 8, true);


--
-- TOC entry 3166 (class 0 OID 0)
-- Dependencies: 212
-- Name: media_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.media_id_seq', 1, false);


--
-- TOC entry 3167 (class 0 OID 0)
-- Dependencies: 202
-- Name: posts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.posts_id_seq', 1, false);


--
-- TOC entry 3168 (class 0 OID 0)
-- Dependencies: 210
-- Name: purchased_courses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.purchased_courses_id_seq', 1, false);


--
-- TOC entry 3169 (class 0 OID 0)
-- Dependencies: 208
-- Name: subjects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.subjects_id_seq', 10, true);


--
-- TOC entry 3170 (class 0 OID 0)
-- Dependencies: 224
-- Name: user_to_homeworks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_to_homeworks_id_seq', 1, false);


--
-- TOC entry 3171 (class 0 OID 0)
-- Dependencies: 200
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 1, true);


--
-- TOC entry 3172 (class 0 OID 0)
-- Dependencies: 214
-- Name: сourse_to_сategories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."сourse_to_сategories_id_seq"', 1, false);


--
-- TOC entry 2967 (class 2606 OID 25024)
-- Name: archives archives_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.archives
    ADD CONSTRAINT archives_pkey PRIMARY KEY (id);


--
-- TOC entry 2949 (class 2606 OID 24920)
-- Name: course_categories course_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.course_categories
    ADD CONSTRAINT course_categories_pkey PRIMARY KEY (id);


--
-- TOC entry 2947 (class 2606 OID 24907)
-- Name: courses courses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_pkey PRIMARY KEY (id);


--
-- TOC entry 2963 (class 2606 OID 24990)
-- Name: homework homework_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.homework
    ADD CONSTRAINT homework_pkey PRIMARY KEY (id);


--
-- TOC entry 2961 (class 2606 OID 24982)
-- Name: lesson_videos lesson_videos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lesson_videos
    ADD CONSTRAINT lesson_videos_pkey PRIMARY KEY (id);


--
-- TOC entry 2965 (class 2606 OID 25001)
-- Name: lessons lessons_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lessons
    ADD CONSTRAINT lessons_pkey PRIMARY KEY (id);


--
-- TOC entry 2955 (class 2606 OID 24954)
-- Name: media media_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.media
    ADD CONSTRAINT media_pkey PRIMARY KEY (id);


--
-- TOC entry 2945 (class 2606 OID 24891)
-- Name: posts posts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);


--
-- TOC entry 2953 (class 2606 OID 24941)
-- Name: purchased_courses purchased_courses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.purchased_courses
    ADD CONSTRAINT purchased_courses_pkey PRIMARY KEY (id);


--
-- TOC entry 2951 (class 2606 OID 24928)
-- Name: subjects subjects_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subjects
    ADD CONSTRAINT subjects_pkey PRIMARY KEY (id);


--
-- TOC entry 2969 (class 2606 OID 25036)
-- Name: user_to_homeworks user_to_homeworks_archiveId_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_to_homeworks
    ADD CONSTRAINT "user_to_homeworks_archiveId_key" UNIQUE ("archiveId");


--
-- TOC entry 2971 (class 2606 OID 25032)
-- Name: user_to_homeworks user_to_homeworks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_to_homeworks
    ADD CONSTRAINT user_to_homeworks_pkey PRIMARY KEY (id);


--
-- TOC entry 2973 (class 2606 OID 25034)
-- Name: user_to_homeworks user_to_homeworks_userId_homeworkId_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_to_homeworks
    ADD CONSTRAINT "user_to_homeworks_userId_homeworkId_key" UNIQUE ("userId", "homeworkId");


--
-- TOC entry 2941 (class 2606 OID 24880)
-- Name: users users_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- TOC entry 2943 (class 2606 OID 24878)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 2957 (class 2606 OID 24964)
-- Name: сourse_to_сategories сourse_to_сategories_courseId_courseCategoryId_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."сourse_to_сategories"
    ADD CONSTRAINT "сourse_to_сategories_courseId_courseCategoryId_key" UNIQUE ("courseId", "courseCategoryId");


--
-- TOC entry 2959 (class 2606 OID 24962)
-- Name: сourse_to_сategories сourse_to_сategories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."сourse_to_сategories"
    ADD CONSTRAINT "сourse_to_сategories_pkey" PRIMARY KEY (id);


--
-- TOC entry 2975 (class 2606 OID 24908)
-- Name: courses courses_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courses
    ADD CONSTRAINT "courses_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 2982 (class 2606 OID 25012)
-- Name: lessons lessons_homeworkId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lessons
    ADD CONSTRAINT "lessons_homeworkId_fkey" FOREIGN KEY ("homeworkId") REFERENCES public.homework(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 2981 (class 2606 OID 25007)
-- Name: lessons lessons_lessonVideoId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lessons
    ADD CONSTRAINT "lessons_lessonVideoId_fkey" FOREIGN KEY ("lessonVideoId") REFERENCES public.lesson_videos(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 2980 (class 2606 OID 25002)
-- Name: lessons lessons_subjectId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lessons
    ADD CONSTRAINT "lessons_subjectId_fkey" FOREIGN KEY ("subjectId") REFERENCES public.subjects(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 2974 (class 2606 OID 24892)
-- Name: posts posts_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT "posts_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 2977 (class 2606 OID 24942)
-- Name: purchased_courses purchased_courses_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.purchased_courses
    ADD CONSTRAINT "purchased_courses_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 2976 (class 2606 OID 24929)
-- Name: subjects subjects_courseId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subjects
    ADD CONSTRAINT "subjects_courseId_fkey" FOREIGN KEY ("courseId") REFERENCES public.courses(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 2985 (class 2606 OID 25047)
-- Name: user_to_homeworks user_to_homeworks_archiveId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_to_homeworks
    ADD CONSTRAINT "user_to_homeworks_archiveId_fkey" FOREIGN KEY ("archiveId") REFERENCES public.archives(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2984 (class 2606 OID 25042)
-- Name: user_to_homeworks user_to_homeworks_homeworkId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_to_homeworks
    ADD CONSTRAINT "user_to_homeworks_homeworkId_fkey" FOREIGN KEY ("homeworkId") REFERENCES public.homework(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2983 (class 2606 OID 25037)
-- Name: user_to_homeworks user_to_homeworks_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_to_homeworks
    ADD CONSTRAINT "user_to_homeworks_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2979 (class 2606 OID 24970)
-- Name: сourse_to_сategories сourse_to_сategories_courseCategoryId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."сourse_to_сategories"
    ADD CONSTRAINT "сourse_to_сategories_courseCategoryId_fkey" FOREIGN KEY ("courseCategoryId") REFERENCES public.course_categories(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2978 (class 2606 OID 24965)
-- Name: сourse_to_сategories сourse_to_сategories_courseId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."сourse_to_сategories"
    ADD CONSTRAINT "сourse_to_сategories_courseId_fkey" FOREIGN KEY ("courseId") REFERENCES public.courses(id) ON UPDATE CASCADE ON DELETE CASCADE;


-- Completed on 2021-05-01 16:12:15

--
-- PostgreSQL database dump complete
--

