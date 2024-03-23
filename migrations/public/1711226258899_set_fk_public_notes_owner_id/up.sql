alter table "public"."notes"
  add constraint "notes_owner_id_fkey"
  foreign key ("owner_id")
  references "public"."heroes"
  ("id") on update cascade on delete cascade;
