SELECT users.id,
       users.email
FROM followers
JOIN users
  ON followers.follower_id = users.id
WHERE followers.following_id = 5;


SELECT users.id,
       users.email
FROM followers
JOIN users
  ON followers.following_id = users.id
WHERE followers.follower_id = 5;

SELECT users.id,
       users.email,
       COUNT(followers.following_id) AS following_count
FROM followers
JOIN users
  ON followers.follower_id = users.id
GROUP BY users.id, users.email
ORDER BY following_count DESC
LIMIT 1;



