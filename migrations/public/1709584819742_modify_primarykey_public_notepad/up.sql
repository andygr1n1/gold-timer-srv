BEGIN TRANSACTION;
ALTER TABLE "public"."notepad" DROP CONSTRAINT "notepad_pkey";

ALTER TABLE "public"."notepad"
    ADD CONSTRAINT "notepad_pkey" PRIMARY KEY ("owner_id");
COMMIT TRANSACTION;
