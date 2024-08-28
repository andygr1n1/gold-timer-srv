alter table "public"."stories_users"
  add constraint "stories_users_user_id_fkey"
  foreign key ("user_id")
  references "public"."heroes"
  ("id") on update restrict on delete cascade;
