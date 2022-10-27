alter table "public"."goals_logs"
  add constraint "goals_logs_log_description_fkey"
  foreign key ("log_description")
  references "public"."goal_logs_enum"
  ("log_type") on update restrict on delete restrict;
