CREATE TABLE "public"."stories" ("id" uuid NOT NULL DEFAULT gen_random_uuid(), "title" text NOT NULL, "img_path" text, "archived" boolean NOT NULL DEFAULT false, "created_at" timestamptz NOT NULL DEFAULT now(), "updated_at" Timestamp NOT NULL DEFAULT now(), "created_by" uuid NOT NULL, "updated_by" uuid NOT NULL, "deleted_at" timestamptz, PRIMARY KEY ("id") , UNIQUE ("id"));
CREATE OR REPLACE FUNCTION "public"."set_current_timestamp_updated_at"()
RETURNS TRIGGER AS $$
DECLARE
  _new record;
BEGIN
  _new := NEW;
  _new."updated_at" = NOW();
  RETURN _new;
END;
$$ LANGUAGE plpgsql;
CREATE TRIGGER "set_public_stories_updated_at"
BEFORE UPDATE ON "public"."stories"
FOR EACH ROW
EXECUTE PROCEDURE "public"."set_current_timestamp_updated_at"();
COMMENT ON TRIGGER "set_public_stories_updated_at" ON "public"."stories"
IS 'trigger to set value of column "updated_at" to current timestamp on row update';
CREATE EXTENSION IF NOT EXISTS pgcrypto;
