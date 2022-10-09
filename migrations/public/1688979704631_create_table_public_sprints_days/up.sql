CREATE TABLE "public"."sprints_days" ("id" uuid NOT NULL DEFAULT gen_random_uuid(), "sprint_id" uuid NOT NULL, "date" timestamptz, "status" boolean, PRIMARY KEY ("id") , UNIQUE ("id"));
CREATE EXTENSION IF NOT EXISTS pgcrypto;
