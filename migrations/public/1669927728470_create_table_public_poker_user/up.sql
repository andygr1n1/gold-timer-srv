CREATE TABLE "public"."poker_user" ("user_id" uuid NOT NULL, "user_name" text NOT NULL, "estimation" integer, PRIMARY KEY ("user_id") , UNIQUE ("user_id"));
