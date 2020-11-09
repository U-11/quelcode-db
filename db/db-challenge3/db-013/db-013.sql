-- 以下の要件を満たした更新を行う
-- ・以下の条件に合うユーザーの削除フラグをTrue(=1)にすること
-- 　- 勤務先電話番号、携帯電話番号ともに登録していないユーザー
-- ・更新日時が更新されること
-- ・トランザクションを考慮したSQL文になっていること

BEGIN;
SET SESSION TRANSACTION ISOLATION LEVEL REPEATABLE READ;
UPDATE
  users
SET
  is_deleted=1,
  updated_at=NOW()
WHERE
  office_telephone IS NULL
  AND cell_phone IS NULL
;
COMMIT;
