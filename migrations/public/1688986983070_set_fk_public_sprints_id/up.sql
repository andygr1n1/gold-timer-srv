alter table "public"."sprints"
  add constraint "sprints_id_fkey"
  foreign key ("id")
  references "public"."sprints_goals"
  ("sprint_id") on update cascade on delete cascade;
