CREATE TABLE "public"."privacy_enum" ("privacy" text NOT NULL, "description" text NOT NULL, PRIMARY KEY ("privacy") , UNIQUE ("privacy"));COMMENT ON TABLE "public"."privacy_enum" IS E'privacy status';