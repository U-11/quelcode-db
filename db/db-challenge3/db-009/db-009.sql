-- 以下の要件を満たした内容を出力
-- ・各チャットルームの投稿数、チャットルーム名を表示すること
-- ・「投稿数」という名前で投稿数を表示すること
-- ・削除されているユーザ－の投稿、削除されている投稿は含まないこと
-- ・投稿数の降順で表示

SELECT COUNT(p.id) AS 投稿数,r.name AS チャットルーム名
FROM posts AS p
JOIN rooms AS r
ON p.rooms_id=r.id
WHERE r.is_deleted=0 AND p.is_deleted=0
GROUP BY p.rooms_id
ORDER BY 投稿数 DESC;
