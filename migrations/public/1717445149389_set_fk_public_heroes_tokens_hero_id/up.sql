alter table "public"."heroes_tokens" drop constraint "heroes_tokens_id_fkey",
  add constraint "heroes_tokens_hero_id_fkey"
  foreign key ("hero_id")
  references "public"."heroes"
  ("id") on update cascade on delete cascade;
