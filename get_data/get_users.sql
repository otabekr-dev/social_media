--INSERT INTO users (email, password_hash)
--VALUES ('user31@gmail.com', 'hashed_pass33')


SELECT *
FROM users
ORDER BY created_at DESC;

SELECT users.email, COUNT(*) AS follower_count
FROM users
JOIN followers f ON users.id = f.following_id
GROUP BY users.id, users.email
ORDER BY follower_count DESC
LIMIT 1;

SELECT users.email, COUNT(*) AS follower_count
FROM users
JOIN followers f ON users.id = f.following_id
GROUP BY users.id, users.email
ORDER BY follower_count;

SELECT *
FROM users
JOIN profiles on profiles.user_id = users.id  and profiles.bio IS NOT NULL;