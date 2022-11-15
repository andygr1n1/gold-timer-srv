alter table "public"."days_rituals"
  add constraint "days_rituals_day_fkey"
  foreign key ("day")
  references "public"."day_enum"
  ("day") on update restrict on delete restrict;
