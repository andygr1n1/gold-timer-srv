CREATE TABLE "public"."achievements" ("id" uuid NOT NULL DEFAULT gen_random_uuid(), "title" text NOT NULL, "user_id" uuid NOT NULL, "description" text NOT NULL, PRIMARY KEY ("id") , UNIQUE ("id"), UNIQUE ("user_id"));COMMENT ON TABLE "public"."achievements" IS E'user_achievements';
CREATE EXTENSION IF NOT EXISTS pgcrypto;
