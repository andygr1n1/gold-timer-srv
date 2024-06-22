BEGIN TRANSACTION;
ALTER TABLE "public"."heroes_tokens" DROP CONSTRAINT "heroes_tokens_pkey";

ALTER TABLE "public"."heroes_tokens"
    ADD CONSTRAINT "heroes_tokens_pkey" PRIMARY KEY ("session_id");
COMMIT TRANSACTION;
