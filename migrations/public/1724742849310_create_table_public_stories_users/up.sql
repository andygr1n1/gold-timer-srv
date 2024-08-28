CREATE TABLE "public"."stories_users" ("story_id" uuid NOT NULL, "user_id" uuid NOT NULL, PRIMARY KEY ("story_id","user_id") , UNIQUE ("story_id"), UNIQUE ("user_id"));
