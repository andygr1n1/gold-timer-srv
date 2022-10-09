comment on column "public"."goals"."ritual_power" is E'list of goals';
alter table "public"."goals" alter column "ritual_power" set default 0;
alter table "public"."goals" alter column "ritual_power" drop not null;
alter table "public"."goals" add column "ritual_power" int4;
