alter table "public"."stories"
  add constraint "stories_created_by_fkey"
  foreign key ("created_by")
  references "public"."heroes"
  ("id") on update restrict on delete cascade;
