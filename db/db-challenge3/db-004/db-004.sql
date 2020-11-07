--投稿データを登録--
INSERT INTO
posts(
  created_user_id,
  rooms_id,
  post,
  file_name,
  is_deleted,
  created_at,
  updated_at,
  updated_user_id
)
VALUES(
  1,
  1,
  'このチャットの注意事項を添付しました。確認してください。',
  '注意事項.pdf',
  0,
  '2020/04/21 13:11:55',
  '2020/04/21 13:11:55',
  1
),
(
  1,
  2,
  '確認しました',
  NULL,
  0,
  '2020/04/22 16:10:11',
  '2020/04/22 16:10:11',
  2
),
(
  1,
  3,
  '確認しました！',
  NULL,
  0,
  '2020/04/22 17:45:29',
  '2020/04/22 17:45:29',
  3
),
(
  1,
  4,
  '確認しました。',
  NULL,
  0,
  '2020/04/22 18:50:11',
  '2020/04/22 18:50:11',
  4
),
(
  2,
  2,
  'sqlに関する情報を集めるチャットです！よろしくお願いします！',
  'sql.png',
  0,
  '2020/04/24 13:41:40',
  '2020/04/24 13:41:40',
  2
),
(
  2,
  3,
  'よおｒしくおねがいします！',
  NULL,
  1,
  '2020/04/24 13:42:03',
  '2020/04/24 13:42:42',
  3
),
(
  2,
  3,
  'よろしくお願いします！',
  NULL,
  0,
  '2020/04/24 13:44:03',
  '2020/04/24 13:44:03',
  3
),
(
  3,
  10,
  'プログラミング言語に関するチャットです！',
  'プログラミング.gif',
  0,
  '2020/04/25 08:06:49',
  '2020/04/25 08:06:49',
  10
),
(
  3,
  8,
  'よろしくお願いします！',
  NULL,
  0,
  '2020/04/25 15:42:22',
  '2020/04/25 15:42:22',
  8
),
(
  3,
  9,
  'よろしく！',
  NULL,
  0,
  '2020/04/25 19:51:10',
  '2020/04/25 19:51:10',
  9
),
(
  4,
  5,
  'test',
  NULL,
  0,
  '2020/04/25 21:15:26',
  '2020/04/25 21:15:26',
  5
),
(
  4,
  7,
  '見れました！',
  NULL,
  0,
  '2020/04/26 00:12:43',
  '2020/04/26 00:12:43',
  7
),
(
  5,
  1,
  'test',
  NULL,
  0,
  '2020/04/26 10:12:58',
  '2020/04/26 10:12:58',
  1
),
(
  6,
  1,
  'test',
  NULL,
  0,
  '2020/04/26 11:21:44',
  '2020/04/26 11:21:44',
  1
),
(
  6,
  3,
  'miremasita',
  NULL,
  1,
  '2020/04/26 14:21:32',
  '2020/04/26 14:22:45',
  3
),
(
  7,
  1,
  'test',
  NULL,
  0,
  '2020/04/26 16:22:50',
  '2020/04/26 16:22:50',
  1
),
(
  7,
  10,
  'sss',
  NULL,
  1,
  '2020/04/26 17:11:23',
  '2020/04/26 18:09:37',
  10
);
