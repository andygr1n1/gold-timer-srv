alter table "public"."goals" alter column "privacy" set not null;
ALTER TABLE "public"."goals" ALTER COLUMN "privacy" drop default;
