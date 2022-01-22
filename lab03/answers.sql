-- Exercise 1 (done for you):
SELECT * FROM users;



-- Exercise 2 (done for you):
SELECT id, first_name, last_name 
FROM users;



-- Exercise 3
SELECT id, first_name, last_name
FROM users ORDER BY last_name;



-- Exercise 4
SELECT id, image_url, user_id
FROM posts WHERE user_id= 26;



-- Exercise 5
SELECT id, image_url, user_id
FROM posts WHERE user_id= 26 or user_id= 12;



-- Exercise 6
SELECT count(*) 
FROM posts;


-- Exercise 7
SELECT user_id, count(user_id) 
FROM comments GROUP BY user_id ORDER BY count(user_id) desc;



-- Exercise 8
SELECT  posts.id, posts.image_url, posts.user_id, users.username, users.first_name, users.last_name
FROM posts INNER JOIN users ON users.id = posts.user_id
WHERE user_id= 26 or user_id= 12;



-- Exercise 9
SELECT posts.id, posts.pub_date, following.following_id 
FROM posts INNER JOIN following ON posts.user_id = following.following_id 
WHERE following.user_id= 26;



-- Exercise 10
SELECT posts.id, posts.pub_date, following.following_id, users.username
FROM posts INNER JOIN following ON posts.user_id = following.following_id
INNER JOIN users ON posts.user_id = users.id 
WHERE following.user_id= 26
ORDER BY posts.pub_date desc;



-- Exercise 11
INSERT INTO bookmarks (user_id, post_id)
VALUES (26,219), (26,220), (26,221);




-- Exercise 12
DELETE FROM bookmarks 
WHERE user_id = 26 AND post_id IN (219, 220, 221);



-- Exercise 13
UPDATE users SET email= 'cyoung2022@gmail.com'
WHERE id = 26;



-- Exercise 14
SELECT posts.id, posts.user_id, COUNT(comments.user_id), posts.caption
FROM posts INNER JOIN comments ON posts.id = comments.post_id
WHERE posts.user_id= 26
GROUP BY posts.id
ORDER BY COUNT(comments.user_id) desc;