alter table "public"."sprints_days"
  add constraint "sprints_days_sprint_id_fkey"
  foreign key ("sprint_id")
  references "public"."sprints"
  ("id") on update cascade on delete cascade;
