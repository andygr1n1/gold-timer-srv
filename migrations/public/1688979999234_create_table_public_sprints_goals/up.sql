CREATE TABLE "public"."sprints_goals" ("id" uuid NOT NULL DEFAULT gen_random_uuid(), "sprint_id" uuid NOT NULL, "title" text NOT NULL, "status" boolean, PRIMARY KEY ("id") , UNIQUE ("id"));
CREATE EXTENSION IF NOT EXISTS pgcrypto;
