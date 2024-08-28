alter table "public"."stories_messages" drop constraint "stories_messages_pkey";
alter table "public"."stories_messages"
    add constraint "stories_messages_pkey"
    primary key ("story_id", "id");
