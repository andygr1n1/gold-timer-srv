comment on column "public"."heroes"."age" is E'list of heroes';
alter table "public"."heroes" alter column "age" drop not null;
alter table "public"."heroes" add column "age" int4;
