comment on column "public"."heroes"."activated" is E'list of heroes';
alter table "public"."heroes" alter column "activated" set default false;
alter table "public"."heroes" alter column "activated" drop not null;
alter table "public"."heroes" add column "activated" bool;
