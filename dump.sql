--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5 (Homebrew)
-- Dumped by pg_dump version 14.5 (Homebrew)

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
-- Name: member; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.member (
    id integer NOT NULL,
    nickname text NOT NULL,
    image text,
    token text NOT NULL
);


--
-- Name: member_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.member_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: member_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.member_id_seq OWNED BY public.member.id;


--
-- Name: tasks; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tasks (
    id integer NOT NULL,
    "memberId" integer NOT NULL,
    name text NOT NULL,
    description text,
    date timestamp without time zone NOT NULL,
    "isDone" boolean DEFAULT false NOT NULL
);


--
-- Name: tasks_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tasks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: tasks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tasks_id_seq OWNED BY public.tasks.id;


--
-- Name: tasks_memberId_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."tasks_memberId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: tasks_memberId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."tasks_memberId_seq" OWNED BY public.tasks."memberId";


--
-- Name: member id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.member ALTER COLUMN id SET DEFAULT nextval('public.member_id_seq'::regclass);


--
-- Name: tasks id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tasks ALTER COLUMN id SET DEFAULT nextval('public.tasks_id_seq'::regclass);


--
-- Name: tasks memberId; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tasks ALTER COLUMN "memberId" SET DEFAULT nextval('public."tasks_memberId_seq"'::regclass);


--
-- Data for Name: member; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.member VALUES (1, 'Jao', NULL, 'token1');
INSERT INTO public.member VALUES (2, 'Joana', NULL, 'token2');
INSERT INTO public.member VALUES (3, 'Arthur', NULL, 'token3');


--
-- Data for Name: tasks; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.tasks VALUES (11, 1, 'Estudar', 'Começar a estudar cedo para a prova de química da semana que vem', '2022-01-12 00:00:00', false);
INSERT INTO public.tasks VALUES (12, 2, 'Caminhar', 'Caminhar com a Marcella de manhã cedo para começarmos nosso projeto fitness!', '2022-11-16 00:00:00', false);
INSERT INTO public.tasks VALUES (13, 2, 'Unhas', 'Marcar com a profissional o horário das unhas, para a festa do final de semana', '2022-11-15 00:00:00', false);
INSERT INTO public.tasks VALUES (14, 3, 'Mercado', 'Fazer as compras do mês antes que a tia Silvia e sua família venham nos visitar', '2022-11-19 00:00:00', false);


--
-- Name: member_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.member_id_seq', 3, true);


--
-- Name: tasks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.tasks_id_seq', 14, true);


--
-- Name: tasks_memberId_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."tasks_memberId_seq"', 1, false);


--
-- Name: member member_nickname_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.member
    ADD CONSTRAINT member_nickname_key UNIQUE (nickname);


--
-- Name: member member_pk; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.member
    ADD CONSTRAINT member_pk PRIMARY KEY (id);


--
-- Name: member member_token_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.member
    ADD CONSTRAINT member_token_key UNIQUE (token);


--
-- Name: tasks tasks_pk; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tasks
    ADD CONSTRAINT tasks_pk PRIMARY KEY (id);


--
-- Name: tasks tasks_fk0; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tasks
    ADD CONSTRAINT tasks_fk0 FOREIGN KEY ("memberId") REFERENCES public.member(id);


--
-- PostgreSQL database dump complete
--

