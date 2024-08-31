alter table "public"."stories" alter column "updated_at" set default now();
alter table "public"."stories" alter column "updated_at" drop not null;
alter table "public"."stories" add column "updated_at" timestamptz;
