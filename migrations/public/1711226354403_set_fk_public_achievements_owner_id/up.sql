alter table "public"."achievements"
  add constraint "achievements_owner_id_fkey"
  foreign key ("owner_id")
  references "public"."heroes"
  ("id") on update cascade on delete cascade;
