CREATE TABLE "public"."heroes" ("id" uuid NOT NULL DEFAULT gen_random_uuid(), "name" text NOT NULL, "age" integer NOT NULL, "phone" text NOT NULL, "email" Text NOT NULL, "created_at" timestamptz NOT NULL DEFAULT now(), "updated_at" timestamptz NOT NULL DEFAULT now(), "deleted_at" timestamptz DEFAULT null, PRIMARY KEY ("id") , UNIQUE ("id"));COMMENT ON TABLE "public"."heroes" IS E'list of heroes';
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
CREATE TRIGGER "set_public_heroes_updated_at"
BEFORE UPDATE ON "public"."heroes"
FOR EACH ROW
EXECUTE PROCEDURE "public"."set_current_timestamp_updated_at"();
COMMENT ON TRIGGER "set_public_heroes_updated_at" ON "public"."heroes" 
IS 'trigger to set value of column "updated_at" to current timestamp on row update';
CREATE EXTENSION IF NOT EXISTS pgcrypto;
