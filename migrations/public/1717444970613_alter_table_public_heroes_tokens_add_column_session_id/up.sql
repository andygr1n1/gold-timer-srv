CREATE EXTENSION IF NOT EXISTS pgcrypto;
alter table "public"."heroes_tokens" add column "session_id" uuid
 null unique default gen_random_uuid();
