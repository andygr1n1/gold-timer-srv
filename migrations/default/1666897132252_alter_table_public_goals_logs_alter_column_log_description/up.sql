alter table "public"."goals_logs" alter column "log_description" set default 'created';
alter table "public"."goals_logs" alter column "log_description" set not null;
