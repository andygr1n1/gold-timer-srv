CREATE TABLE "public"."restore_codes" ("id" uuid NOT NULL DEFAULT gen_random_uuid(), "email" text NOT NULL, PRIMARY KEY ("id") , UNIQUE ("id"));COMMENT ON TABLE "public"."restore_codes" IS E'restore_password_codes';
CREATE EXTENSION IF NOT EXISTS pgcrypto;
