alter table "public"."goals_slides"
  add constraint "goals_slides_owner_id_fkey"
  foreign key ("owner_id")
  references "public"."heroes"
  ("id") on update cascade on delete cascade;
