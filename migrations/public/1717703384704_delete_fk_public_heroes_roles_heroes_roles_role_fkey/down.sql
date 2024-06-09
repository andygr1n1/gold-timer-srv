alter table "public"."heroes_roles"
  add constraint "heroes_roles_role_fkey"
  foreign key ("role")
  references "public"."heroes_roles"
  ("role") on update restrict on delete restrict;
