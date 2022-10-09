alter table "public"."goals" alter column "privacy" set default 'public';
alter table "public"."goals" alter column "privacy" drop not null;
