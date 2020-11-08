-- 以下の要件を満たしたユーザー一覧を出力
-- ・削除したユーザーも表示
-- ・全てのカラムを表示すること。ただし、*は使用しないこと
-- ・ユーザーidの昇順で表示

SELECT id,email,password,name,bio,office_telephone,cell_phone,is_deleted,created_at,updated_at
FROM users
ORDER BY id;
