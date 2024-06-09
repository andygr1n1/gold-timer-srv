alter table "public"."restore_codes"
  add constraint "restore_codes_type_fkey"
  foreign key ("type")
  references "public"."restore_codes_enum"
  ("type") on update restrict on delete restrict;
