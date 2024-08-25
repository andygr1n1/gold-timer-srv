alter table "public"."notes"
  add constraint "notes_label_id_fkey"
  foreign key ("label_id")
  references "public"."notes_labels"
  ("id") on update no action on delete no action;
