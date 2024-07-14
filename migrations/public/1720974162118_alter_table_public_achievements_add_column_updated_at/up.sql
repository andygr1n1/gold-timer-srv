alter table "public"."achievements" add column "updated_at" timestamptz
 null default now();
