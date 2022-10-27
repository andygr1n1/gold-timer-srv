alter table "public"."goals_logs" alter column "log_description" drop not null;
ALTER TABLE "public"."goals_logs" ALTER COLUMN "log_description" drop default;
