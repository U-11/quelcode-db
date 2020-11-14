-- 以下の要件を満たしたチャットルーム一覧を出力
-- ・削除されたチャットルームは表示しない
-- ・全てのカラムを表示すること。ただし、*は使用しないこと
-- ・概要がダイレクトチャットで終わっている
-- ・ファイル送信が許可されているときは「許可」、許可されていないときは「禁止」と表示
-- ・チャットルームidの昇順で表示

SELECT id,name,description,
CASE
WHEN allow_send_file=0 THEN '禁止'
WHEN allow_send_file=1 THEN '許可' END AS allow_send_file,
direct_chat,is_deleted,created_at,created_user_id,updated_at,updated_user_id
FROM rooms
WHERE is_deleted=0 AND description LIKE '%ダイレクトチャット'
ORDER BY id;
