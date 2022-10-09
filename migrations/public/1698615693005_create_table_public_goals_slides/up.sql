CREATE TABLE "public"."goals_slides" ("id" uuid NOT NULL DEFAULT gen_random_uuid(), "owner_id" uuid NOT NULL, "title" text, "img_path" text, "active" boolean NOT NULL DEFAULT true, PRIMARY KEY ("id") , UNIQUE ("id"));
CREATE EXTENSION IF NOT EXISTS pgcrypto;
