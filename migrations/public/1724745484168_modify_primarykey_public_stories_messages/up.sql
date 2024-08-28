BEGIN TRANSACTION;
ALTER TABLE "public"."stories_messages" DROP CONSTRAINT "stories_messages_pkey";

ALTER TABLE "public"."stories_messages"
    ADD CONSTRAINT "stories_messages_pkey" PRIMARY KEY ("id", "story_id");
COMMIT TRANSACTION;
