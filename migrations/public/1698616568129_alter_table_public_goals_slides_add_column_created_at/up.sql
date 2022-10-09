alter table "public"."goals_slides" add column "created_at" timestamptz
 not null default now();
