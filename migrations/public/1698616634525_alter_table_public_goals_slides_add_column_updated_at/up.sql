alter table "public"."goals_slides" add column "updated_at" timestamptz
 null default now();
