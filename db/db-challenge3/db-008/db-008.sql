-- 以下の要件を満たした参加ルーム一覧を出力
-- ・参加しているユーザー名、参加しているチャットルーム名、参加日時を表示すること
-- ・参加日時は年月日のみ表示すること
-- ・削除されているユーザー、削除されているチャットルームは表示しないこと
-- ・参加日時の昇順で表示

SELECT u.name AS ユーザー名,r.name AS チャットルーム名,DATE_FORMAT(joined_at,'%Y-%m-%d') AS 参加日時
FROM rooms_users AS j
JOIN users AS u
ON j.users_id=u.id
JOIN rooms AS r
ON j.rooms_id=r.id
WHERE u.is_deleted=0 AND r.is_deleted=0
ORDER BY joined_at;
