comment on column "public"."achievements"."visible" is E'user_achievements';
alter table "public"."achievements" alter column "visible" set default true;
alter table "public"."achievements" alter column "visible" drop not null;
alter table "public"."achievements" add column "visible" bool;
