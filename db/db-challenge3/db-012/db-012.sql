-- 以下の要件を満たした更新を行う
-- ・以下の条件に合うチャットルームのファイル送信許可を禁止(=0)にすること
-- 　- ユーザー名admin(user_id=1)が参加していないチャットルームであること
-- 　- 削除されていないチャットルームであること
-- ・更新したユーザーはadmin(user_id=1)であること
-- ・更新日時が更新されること
-- ・トランザクションを考慮したSQL文になっていること

BEGIN;
SET SESSION TRANSACTION ISOLATION LEVEL REPEATABLE READ;
UPDATE
  rooms
SET
  send_file=1,
  updated_user_id=1,
  updated_at=NOW()
WHERE
  id NOT IN
  (
    SELECT
      rooms_id
    FROM
      rooms_users
    WHERE
      users_id=1
  )
  AND is_deleted=0
;
COMMIT;
