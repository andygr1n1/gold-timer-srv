CREATE TABLE "public"."tasks" ("id" uuid NOT NULL DEFAULT gen_random_uuid(), "description" text NOT NULL, "tag" text NOT NULL, "created_at" timestamptz NOT NULL DEFAULT now(), "updated_at" timestamptz NOT NULL DEFAULT now(), "deleted_at" timestamptz NOT NULL DEFAULT null, PRIMARY KEY ("id") , UNIQUE ("id"));
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
CREATE TRIGGER "set_public_tasks_updated_at"
BEFORE UPDATE ON "public"."tasks"
FOR EACH ROW
EXECUTE PROCEDURE "public"."set_current_timestamp_updated_at"();
COMMENT ON TRIGGER "set_public_tasks_updated_at" ON "public"."tasks" 
IS 'trigger to set value of column "updated_at" to current timestamp on row update';
CREATE EXTENSION IF NOT EXISTS pgcrypto;
