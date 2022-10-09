alter table "public"."tasks" alter column "deleted_at" set not null;
ALTER TABLE "public"."tasks" ALTER COLUMN "deleted_at" TYPE timestamp with time zone;
