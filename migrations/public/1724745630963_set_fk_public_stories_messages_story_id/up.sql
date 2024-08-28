alter table "public"."stories_messages"
  add constraint "stories_messages_story_id_fkey"
  foreign key ("story_id")
  references "public"."stories"
  ("id") on update cascade on delete cascade;
