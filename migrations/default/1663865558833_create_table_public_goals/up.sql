CREATE TABLE "public"."goals" ("id" uuid NOT NULL DEFAULT gen_random_uuid(), "owner_id" uuid NOT NULL, "round" integer NOT NULL DEFAULT 0, "difficulty" text NOT NULL, "status" Text NOT NULL, "privacy" Text NOT NULL, "title" Text NOT NULL, "description" Text NOT NULL, "slogan" Text NOT NULL, "created_at" timestamptz NOT NULL DEFAULT now(), "updated_at" timestamptz NOT NULL DEFAULT now(), "finished_at" timestamptz DEFAULT null, "deleted_at" timestamptz DEFAULT null, PRIMARY KEY ("id") , FOREIGN KEY ("owner_id") REFERENCES "public"."heroes"("id") ON UPDATE cascade ON DELETE cascade, FOREIGN KEY ("difficulty") REFERENCES "public"."goal_difficulty_enum"("difficulty") ON UPDATE cascade ON DELETE cascade, FOREIGN KEY ("status") REFERENCES "public"."goal_status_enum"("status") ON UPDATE cascade ON DELETE cascade, FOREIGN KEY ("privacy") REFERENCES "public"."privacy_enum"("privacy") ON UPDATE cascade ON DELETE cascade, UNIQUE ("id"));COMMENT ON TABLE "public"."goals" IS E'list of goals';
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
CREATE TRIGGER "set_public_goals_updated_at"
BEFORE UPDATE ON "public"."goals"
FOR EACH ROW
EXECUTE PROCEDURE "public"."set_current_timestamp_updated_at"();
COMMENT ON TRIGGER "set_public_goals_updated_at" ON "public"."goals" 
IS 'trigger to set value of column "updated_at" to current timestamp on row update';
CREATE EXTENSION IF NOT EXISTS pgcrypto;
