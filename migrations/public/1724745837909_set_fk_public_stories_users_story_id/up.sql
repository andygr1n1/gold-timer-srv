alter table "public"."stories_users"
  add constraint "stories_users_story_id_fkey"
  foreign key ("story_id")
  references "public"."stories"
  ("id") on update restrict on delete cascade;
