CREATE DATABASE wonder_studio;
use wonder_studio;
# -- Create Users table
CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    username VARCHAR(50),
    age INT,
    gender VARCHAR(10)
);

 #-- Create Songs table
CREATE TABLE Songs (
    song_id INT PRIMARY KEY,
    title VARCHAR(100),
    artist VARCHAR(100),
    album VARCHAR(100),
    genre VARCHAR(50)
);

# -- Create Playlists table
CREATE TABLE Playlists (
    playlist_id INT PRIMARY KEY,
    user_id INT,
    playlist_name VARCHAR(100),
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

# -- Create Playlist_Songs table
CREATE TABLE Playlist_Songs (
    playlist_id INT,
    song_id INT,
    FOREIGN KEY (playlist_id) REFERENCES Playlists(playlist_id),
    FOREIGN KEY (song_id) REFERENCES Songs(song_id)
);

# -- Create Song_plays table
CREATE TABLE Song_plays (
    play_id INT PRIMARY KEY,
    user_id INT,
    song_id INT,
    play_date DATETIME,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (song_id) REFERENCES Songs(song_id)
);

# -- Insert data into Users
INSERT INTO Users (user_id, username, age, gender) VALUES
(1, 'Alice', 25, 'Female'),
(2, 'Bob', 30, 'Male'),
(3, 'Charlie', 22, 'Male'),
(4, 'Diana', 28, 'Female'),
(5, 'Eve', 35, 'Female');

# -- Insert data into Songs
INSERT INTO Songs (song_id, title, artist, album, genre) VALUES
(1, 'Song A', 'Artist X', 'Album 1', 'Pop'),
(2, 'Song B', 'Artist Y', 'Album 2', 'Rock'),
(3, 'Song C', 'Artist Z', 'Album 3', 'Jazz'),
(4, 'Song D', 'Artist X', 'Album 4', 'Pop'),
(5, 'Song E', 'Artist W', 'Album 5', 'Classical'),
(6, 'Song F', 'Artist Y', 'Album 6', 'Rock'),
(7, 'Song G', 'Artist Z', 'Album 7', 'Jazz'),
(8, 'Song H', 'Artist W', 'Album 8', 'Classical');

# -- Insert data into Playlists
INSERT INTO Playlists (playlist_id, user_id, playlist_name) VALUES
(1, 1, 'Workout Tunes'),
(2, 2, 'Chill Vibes'),
(3, 3, 'Road Trip'),
(4, 4, 'Dinner Party'),
(5, 5, 'Relaxing Evening');

# -- Insert data into Playlist_Songs
INSERT INTO Playlist_Songs (playlist_id, song_id) VALUES
(1, 1),
(1, 4),
(2, 2),
(2, 6),
(3, 3),
(3, 7),
(4, 5),
(4, 8),
(5, 1),
(5, 5);

-# - Insert data into Song_plays
INSERT INTO Song_plays (play_id, user_id, song_id, play_date) VALUES
(1, 1, 1, '2024-09-01 08:00:00'),
(2, 1, 4, '2024-09-01 09:00:00'),
(3, 2, 2, '2024-09-01 10:00:00'),
(4, 2, 6, '2024-09-01 11:00:00'),
(5, 3, 3, '2024-09-01 12:00:00'),
(6, 3, 7, '2024-09-01 13:00:00'),
(7, 4, 5, '2024-09-01 14:00:00'),
(8, 4, 8, '2024-09-01 15:00:00'),
(9, 5, 1, '2024-09-01 16:00:00'),
(10, 5, 5, '2024-09-01 17:00:00');

select * from users;
+---------+----------+------+--------+
| user_id | username | age  | gender |
+---------+----------+------+--------+
|       1 | Alice    |   25 | Female |
|       2 | Bob      |   30 | Male   |
|       3 | Charlie  |   22 | Male   |
|       4 | Diana    |   28 | Female |
|       5 | Eve      |   35 | Female |
+---------+----------+------+--------+

mysql> select * from songs;
+---------+--------+----------+---------+-----------+
| song_id | title  | artist   | album   | genre     |
+---------+--------+----------+---------+-----------+
|       1 | Song A | Artist X | Album 1 | Pop       |
|       2 | Song B | Artist Y | Album 2 | Rock      |
|       3 | Song C | Artist Z | Album 3 | Jazz      |
|       4 | Song D | Artist X | Album 4 | Pop       |
|       5 | Song E | Artist W | Album 5 | Classical |
|       6 | Song F | Artist Y | Album 6 | Rock      |
|       7 | Song G | Artist Z | Album 7 | Jazz      |
|       8 | Song H | Artist W | Album 8 | Classical |
+---------+--------+----------+---------+-----------+

mysql> select * from playlists;
+-------------+---------+------------------+
| playlist_id | user_id | playlist_name    |
+-------------+---------+------------------+
|           1 |       1 | Workout Tunes    |
|           2 |       2 | Chill Vibes      |
|           3 |       3 | Road Trip        |
|           4 |       4 | Dinner Party     |
|           5 |       5 | Relaxing Evening |
+-------------+---------+------------------+

mysql> select * from playlist_songs;
+-------------+---------+
| playlist_id | song_id |
+-------------+---------+
|           1 |       1 |
|           1 |       4 |
|           2 |       2 |
|           2 |       6 |
|           3 |       3 |
|           3 |       7 |
|           4 |       5 |
|           4 |       8 |
|           5 |       1 |
|           5 |       5 |
+-------------+---------+

mysql> select * from song_plays;
+---------+---------+---------+---------------------+
| play_id | user_id | song_id | play_date           |
+---------+---------+---------+---------------------+
|       1 |       1 |       1 | 2024-09-01 08:00:00 |
|       2 |       1 |       4 | 2024-09-01 09:00:00 |
|       3 |       2 |       2 | 2024-09-01 10:00:00 |
|       4 |       2 |       6 | 2024-09-01 11:00:00 |
|       5 |       3 |       3 | 2024-09-01 12:00:00 |
|       6 |       3 |       7 | 2024-09-01 13:00:00 |
|       7 |       4 |       5 | 2024-09-01 14:00:00 |
|       8 |       4 |       8 | 2024-09-01 15:00:00 |
|       9 |       5 |       1 | 2024-09-01 16:00:00 |
|      10 |       5 |       5 | 2024-09-01 17:00:00 |
+---------+---------+---------+---------------------+


 # 1.How many songs are there for each genre?
mysql> SELECT genre, COUNT(*) AS song_count FROM songs GROUP BY genre;
+-----------+------------+
| genre     | song_count |
+-----------+------------+
| Pop       |          2 |
| Rock      |          2 |
| Jazz      |          2 |
| Classical |          2 |
+-----------+------------+

#2.  What songs are in user 1's playlist?
SELECT s.title, s.artist 
FROM songs s
JOIN playlist_songs ps ON s.song_id = ps.song_id
JOIN playlists p ON ps.playlist_id = p.playlist_id
WHERE p.user_id = 1;

#3.What is the total number of plays for each song?
SELECT s.title, s.artist, COUNT(sp.play_id) AS play_count
     FROM Songs s
     LEFT JOIN Song_plays sp ON s.song_id = sp.song_id
     GROUP BY s.song_id, s.title, s.artist;

# 4. Which artist has the most played songs?
select s.artist,count(sp.play_id) as total_plays from songs s join Song_plays sp on s.song_id=sp.song_id group by s.artist order by total_plays desc limit 1;

# 5. Which songs have been played in the last week?
SELECT s.title, s.artist FROM songs s JOIN song_plays sp ON sp.song_id = s.song_id WHERE sp.play_date >= NOW() - INTERVAL 7 DAY  GROUP BY s.song_id, s.title, s.artist;

# 6. What is the average age of users who have played songs of each genre?
select s.genre,avg(u.age) as avg_age from songs s join song_plays sp on s.song_id=sp.song_id join users u on sp.user_id=u.user_id group by s.genre;
# 7. What are the top 3 most played songs in the 'Rock' genre?
select s.title,s.artist,count(sp.play_id) as play_count from songs s join song_plays sp on s.song_id=sp.song_id where s.genre="rock" group by s.song_id,s.title,s.artist order by play_count desc;

# 8. How many playlists does each user have?
SELECT u.username, COUNT(p.playlist_id) AS playlist_count FROM users u LEFT JOIN playlists p ON u.user_id = p.user_id GROUP BY u.user_id, u.username;

#9. What are the songs played most recently by user 3?
 SELECT s.title, s.artist, sp.play_date FROM Songs s JOIN Song_plays sp ON s.song_id = sp.song_id WHERE sp.user_id = 3 ORDER BY sp.play_date DESC;