-- 以下の要件を満たした内容を出力
-- ・ユーザー名、投稿日時、チャットルーム名を表示すること
-- ・各チャットルームの最新の投稿をしたユーザー名と投稿日時を表示すること
-- ・削除されているユーザーの投稿、削除されている投稿は含まないこと
-- ・チャットルームidの昇順で表示

SELECT users.name AS 最新投稿者名,n.new AS 最新投稿日時,rooms.name AS チャットルーム名
FROM 
(SELECT MAX(posts.created_at) AS new,posts.rooms_id
FROM posts
JOIN rooms AS r
ON posts.rooms_id=r.id
JOIN users AS u
ON posts.created_user_id=u.id
WHERE u.is_deleted=0 AND posts.is_deleted=0
GROUP BY posts.rooms_id) AS n
JOIN posts AS p
ON n.new=p.created_at
JOIN users
ON p.created_user_id=users.id
JOIN rooms
ON p.rooms_id=rooms.id
ORDER BY rooms.id;
