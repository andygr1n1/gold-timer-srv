alter table "public"."heroes"
  add constraint "heroes_role_fkey"
  foreign key ("role")
  references "public"."heroes_roles"
  ("role") on update restrict on delete restrict;
