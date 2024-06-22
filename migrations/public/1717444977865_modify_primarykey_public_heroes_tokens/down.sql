alter table "public"."heroes_tokens" drop constraint "heroes_tokens_pkey";
alter table "public"."heroes_tokens"
    add constraint "heroes_tokens_pkey"
    primary key ("id");
