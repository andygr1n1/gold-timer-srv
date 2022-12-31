alter table "public"."achievements" add column "created_at" timestamptz
 null default now();
