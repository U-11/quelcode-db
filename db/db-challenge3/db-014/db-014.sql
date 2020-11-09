-- 以下の要件を満たした削除を行うこと
-- ・削除されているユーザーのチャットルームとのリレーション(中間テーブル)の削除を行うこと
-- ・トランザクションを考慮したSQL文になっていること

BEGIN;
SET SESSION TRANSACTION ISOLATION LEVEL REPEATABLE READ;
DELETE FROM
  rooms_users
WHERE
  users_id NOT IN
  (
    SELECT
      id
    FROM
      users
    WHERE
      is_deleted=0
  )
;
COMMIT;
