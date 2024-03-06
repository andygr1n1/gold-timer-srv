alter table "public"."notepad" drop constraint "notepad_pkey";
alter table "public"."notepad"
    add constraint "notepad_pkey"
    primary key ("id");
