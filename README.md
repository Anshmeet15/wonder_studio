# wonder_studio
This database schema is designed for a music application that manages users, songs, playlists, and song playback data. It includes the following tables:

Tables
Users

user_id (INT, Primary Key): Unique identifier for each user.
username (VARCHAR(50)): The username of the user.
age (INT): Age of the user.
gender (VARCHAR(10)): Gender of the user.
Songs

song_id (INT, Primary Key): Unique identifier for each song.
title (VARCHAR(100)): Title of the song.
artist (VARCHAR(100)): Name of the artist.
album (VARCHAR(100)): Album in which the song appears.
genre (VARCHAR(50)): Genre of the song.
Playlists

playlist_id (INT, Primary Key): Unique identifier for each playlist.
user_id (INT, Foreign Key): References the user who created the playlist.
playlist_name (VARCHAR(100)): Name of the playlist.
Playlist_Songs

playlist_id (INT, Foreign Key): References the associated playlist.
song_id (INT, Foreign Key): References the song included in the playlist.
Song_plays

play_id (INT, Primary Key): Unique identifier for each playback entry.
user_id (INT, Foreign Key): References the user who played the song.
song_id (INT, Foreign Key): References the song that was played.
play_date (DATETIME): Timestamp of when the song was played.
Sample Data Insertion
Users:
Five users with various ages and genders.
Songs:
Eight songs across different genres including Pop, Rock, Jazz, and Classical.
Playlists:
Five playlists created by users, each with a unique theme.
Playlist_Songs:
Mapping of songs to their respective playlists.
Song_plays:
Records of song playback events by users, including timestamps.
