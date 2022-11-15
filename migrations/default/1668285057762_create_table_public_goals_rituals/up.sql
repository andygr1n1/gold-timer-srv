CREATE TABLE "public"."goals_rituals" ("ritual_id" uuid NOT NULL DEFAULT gen_random_uuid(), "goal_id" uuid, "power" integer NOT NULL DEFAULT 0, "interval" integer NOT NULL DEFAULT 7, "type" text NOT NULL DEFAULT 'interval_in_days', "created_at" timestamptz NOT NULL DEFAULT now(), PRIMARY KEY ("ritual_id","goal_id") , FOREIGN KEY ("type") REFERENCES "public"."ritual_type_enum"("ritual_type") ON UPDATE restrict ON DELETE restrict, FOREIGN KEY ("goal_id") REFERENCES "public"."goals"("id") ON UPDATE cascade ON DELETE cascade);
CREATE EXTENSION IF NOT EXISTS pgcrypto;
