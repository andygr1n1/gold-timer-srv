CREATE TABLE "public"."notepad" ("id" uuid NOT NULL DEFAULT gen_random_uuid(), "owner_id" uuid NOT NULL, "description" Text NOT NULL, "locked" boolean NOT NULL DEFAULT false, "active" boolean NOT NULL DEFAULT true, PRIMARY KEY ("id") );COMMENT ON TABLE "public"."notepad" IS E'real time info';
CREATE EXTENSION IF NOT EXISTS pgcrypto;
