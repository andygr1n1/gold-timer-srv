alter table "public"."heroes" add column "birthday" timestamptz
 null default now();
