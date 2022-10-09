alter table "public"."sprints_goals"
  add constraint "sprints_goals_sprint_id_fkey"
  foreign key ("sprint_id")
  references "public"."sprints"
  ("id") on update cascade on delete cascade;
