SET check_function_bodies = false;
CREATE FUNCTION public.set_current_timestamp_updated_at() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
DECLARE
  _new record;
BEGIN
  _new := NEW;
  _new."updated_at" = NOW();
  RETURN _new;
END;
$$;
CREATE TABLE public.goal_difficulty_enum (
    difficulty text NOT NULL,
    description text NOT NULL
);
COMMENT ON TABLE public.goal_difficulty_enum IS 'goal difficulty';
CREATE TABLE public.goal_status_enum (
    status text NOT NULL,
    description text NOT NULL
);
COMMENT ON TABLE public.goal_status_enum IS 'goal status';
CREATE TABLE public.goals (
    id uuid DEFAULT public.gen_random_uuid() NOT NULL,
    owner_id uuid NOT NULL,
    round integer DEFAULT 0 NOT NULL,
    difficulty text DEFAULT 'light'::text NOT NULL,
    status text DEFAULT 'active'::text NOT NULL,
    privacy text NOT NULL,
    title text NOT NULL,
    description text NOT NULL,
    slogan text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    finished_at timestamp with time zone,
    deleted_at timestamp with time zone
);
COMMENT ON TABLE public.goals IS 'list of goals';
CREATE TABLE public.heroes (
    id uuid DEFAULT public.gen_random_uuid() NOT NULL,
    name text NOT NULL,
    phone text NOT NULL,
    email text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    birthday timestamp with time zone DEFAULT now(),
    coins integer DEFAULT 0 NOT NULL
);
COMMENT ON TABLE public.heroes IS 'list of heroes';
CREATE TABLE public.privacy_enum (
    privacy text NOT NULL,
    description text NOT NULL
);
COMMENT ON TABLE public.privacy_enum IS 'privacy status';
COPY public.goal_difficulty_enum (difficulty, description) FROM stdin;
light	0 - 90 days
medium	6 months - 1 year
legend	2 - 3 years
epic	5 years
star	10 years
friend_of_death	20 years
immortal	30 years
\.
COPY public.goal_status_enum (status, description) FROM stdin;
active	active goal
finished	finished goal
completed	completed goal
frozen	frozen goal
deprecated	deprecated goal
failed	failed goal
\.
COPY public.goals (id, owner_id, round, difficulty, status, privacy, title, description, slogan, created_at, updated_at, finished_at, deleted_at) FROM stdin;
6dd65e51-379c-4979-8cdb-d1263f49d81c	f192b78e-399e-4fc5-9676-ce0bf65b220b	0	legend	active	public	3000 euro per month	I want to generate from 3000 Euro per month and more	3000 Euro upgrade	2022-09-22 16:56:45.449522+00	2022-09-22 17:57:30.71152+00	2023-12-16 00:00:00+00	\N
033fc20e-e5b7-44f9-a596-fc48ecbd6690	f192b78e-399e-4fc5-9676-ce0bf65b220b	0	light	active	public	Driver Licence	to finish driver school	I'm a driver!	2022-09-22 18:48:52.188819+00	2022-09-22 18:48:52.188819+00	2022-12-01 00:00:00+00	\N
bada57e0-041f-4681-ac28-a11df24bd81d	f192b78e-399e-4fc5-9676-ce0bf65b220b	0	light	active	public	Timeless Caves	to publish Timeless Caves	Writter Reborn!	2022-09-22 19:34:41.533318+00	2022-09-22 19:34:41.533318+00	2022-12-31 00:00:00+00	\N
208c2bc0-16c2-4dce-8b3b-3917fba02ee0	f192b78e-399e-4fc5-9676-ce0bf65b220b	0	light	active	public	To make new photos		Photo session!	2022-09-23 18:56:49.325306+00	2022-09-23 18:59:20.203906+00	2022-10-31 00:00:00+00	\N
bfc77582-ff84-4b90-8f9f-59b0b1183cfc	f192b78e-399e-4fc5-9676-ce0bf65b220b	0	light	active	public	Romanian passport next step	To pass next step of obtaining romanian passport	Go Romania!	2022-09-23 20:15:54.415775+00	2022-09-23 20:15:54.415775+00	2022-11-20 00:00:00+00	\N
bc241d3d-efac-4a60-8acc-5196aacb7b10	f192b78e-399e-4fc5-9676-ce0bf65b220b	0	medium	active	public	Amsterdam or Mauritius Way	I have to choose where I want to redirect my life for some time. \n\nAt that time I like the option of Mauritius and Amsterdam	What first? Amsterdam or Mauritius???	2022-09-29 16:57:00.279157+00	2022-09-29 16:57:00.279157+00	2023-01-31 17:56:37.064+00	\N
a4af20d3-0460-4436-bbdf-c9f6383566c8	f192b78e-399e-4fc5-9676-ce0bf65b220b	0	light	frozen	public	to buy something from nemesis is now		to buy something mystic from	2022-09-29 17:05:25.075529+00	2022-09-29 17:05:25.075529+00	\N	\N
7647eb83-ed70-4fbb-83ab-fed0c3bc5c4e	f192b78e-399e-4fc5-9676-ce0bf65b220b	0	medium	active	public	To achieve 200 000 lei	I can hold 200 000 !!!	I can hold 200 000 !!!	2022-09-23 18:58:21.922603+00	2022-09-30 04:30:52.476387+00	2023-05-31 00:00:00+00	\N
23a2634c-ffec-41e4-954b-92f39b4c2d24	f192b78e-399e-4fc5-9676-ce0bf65b220b	0	light	active	public	advoca chat and carasent chat together	To make one chat app from two	Finish what I've started!	2022-09-30 19:02:39.464904+00	2022-09-30 19:02:39.464904+00	2022-10-30 20:02:39.455+00	\N
8a2729ac-6cb0-4f75-9c3a-d679972102f1	f192b78e-399e-4fc5-9676-ce0bf65b220b	0	light	frozen	public	To drink wine at Mimi castle		Hello Mimi!	2022-10-01 17:14:44.562383+00	2022-10-01 17:14:44.562383+00	\N	\N
5d859954-dbb2-4e22-9a09-4c9fcd56725a	f192b78e-399e-4fc5-9676-ce0bf65b220b	0	light	completed	public	Driver theory exam	To pass the theory exam	I'm a driver!	2022-09-23 20:12:07.827161+00	2022-10-06 17:37:48.292624+00	2022-10-09 00:00:00+00	\N
b29b9db1-9926-42fc-800a-fb788c6bbff0	f192b78e-399e-4fc5-9676-ce0bf65b220b	0	light	completed	public	Driver Practice Examination		Drive like a GOD!	2022-10-01 18:38:12.133399+00	2022-10-06 17:46:04.398277+00	2022-10-08 18:38:10.121+00	\N
f3b0dbfb-94b2-4d0f-b91e-86546ef739bc	f192b78e-399e-4fc5-9676-ce0bf65b220b	0	light	completed	public	3 food recipes fro astroo food		creative food!	2022-09-30 19:17:36.800868+00	2022-10-08 12:35:04.589244+00	2022-10-10 19:17:36.783+00	\N
6c30a164-d3a2-4421-96c2-2dfc73b49d68	f192b78e-399e-4fc5-9676-ce0bf65b220b	0	friend_of_death	active	public	lamborghini URUS	https://www.lamborghini.com/ru-en/модели/urus	For the Driver Dream!	2022-10-08 12:40:42.35791+00	2022-10-08 12:40:42.35791+00	2035-02-02 13:40:42.348+00	\N
0200aa7d-b0fe-4acc-a6f4-f6929a496da3	f192b78e-399e-4fc5-9676-ce0bf65b220b	0	light	active	public	Halloween happy rituals	Halloween at home, rituals and meditation and mystic music	Truck or Treat!!!	2022-10-09 06:04:00.9618+00	2022-10-09 06:04:00.9618+00	2022-10-31 07:02:58.009+00	\N
\.
COPY public.heroes (id, name, phone, email, created_at, updated_at, deleted_at, birthday, coins) FROM stdin;
f192b78e-399e-4fc5-9676-ce0bf65b220b	Andrew Grini	+37368953913	andy.grini@gmail.com	2022-09-22 16:33:54.016771+00	2022-10-08 12:34:49.855589+00	\N	1991-03-29 10:10:54.016771+00	520
\.
COPY public.privacy_enum (privacy, description) FROM stdin;
public	public
private	private
friendzone	friendzone
\.
ALTER TABLE ONLY public.goal_difficulty_enum
    ADD CONSTRAINT goal_difficulty_enum_pkey PRIMARY KEY (difficulty);
ALTER TABLE ONLY public.goal_status_enum
    ADD CONSTRAINT goal_status_enum_pkey PRIMARY KEY (status);
ALTER TABLE ONLY public.goals
    ADD CONSTRAINT goals_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.heroes
    ADD CONSTRAINT heroes_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.privacy_enum
    ADD CONSTRAINT privacy_enum_pkey PRIMARY KEY (privacy);
CREATE TRIGGER set_public_goals_updated_at BEFORE UPDATE ON public.goals FOR EACH ROW EXECUTE FUNCTION public.set_current_timestamp_updated_at();
COMMENT ON TRIGGER set_public_goals_updated_at ON public.goals IS 'trigger to set value of column "updated_at" to current timestamp on row update';
CREATE TRIGGER set_public_heroes_updated_at BEFORE UPDATE ON public.heroes FOR EACH ROW EXECUTE FUNCTION public.set_current_timestamp_updated_at();
COMMENT ON TRIGGER set_public_heroes_updated_at ON public.heroes IS 'trigger to set value of column "updated_at" to current timestamp on row update';
ALTER TABLE ONLY public.goals
    ADD CONSTRAINT goals_difficulty_fkey FOREIGN KEY (difficulty) REFERENCES public.goal_difficulty_enum(difficulty) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY public.goals
    ADD CONSTRAINT goals_owner_id_fkey FOREIGN KEY (owner_id) REFERENCES public.heroes(id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY public.goals
    ADD CONSTRAINT goals_privacy_fkey FOREIGN KEY (privacy) REFERENCES public.privacy_enum(privacy) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY public.goals
    ADD CONSTRAINT goals_status_fkey FOREIGN KEY (status) REFERENCES public.goal_status_enum(status) ON UPDATE CASCADE ON DELETE CASCADE;
