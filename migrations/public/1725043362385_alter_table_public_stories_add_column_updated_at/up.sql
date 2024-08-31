alter table "public"."stories" add column "updated_at" timestamptz
 null default now();
