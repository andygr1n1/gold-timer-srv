alter table "public"."notes_labels" add column "created_at" timestamptz
 null default now();
