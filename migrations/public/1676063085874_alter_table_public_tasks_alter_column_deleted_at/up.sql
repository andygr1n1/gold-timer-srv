ALTER TABLE "public"."tasks" ALTER COLUMN "deleted_at" TYPE timestamp with time zone;
alter table "public"."tasks" alter column "deleted_at" drop not null;
