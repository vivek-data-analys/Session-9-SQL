create database  playlists ;
use playlists;

create table playlist (
playlist_id int ,
playlist_name varchar (100) not null ,
parent_playlist_id int);


insert into playlist (playlist_id , playlist_name , parent_playlist_id)
values 
(1, 'Top Hits', NULL),
(2, 'Bollywood Hits', NULL),
(3, 'Workout Music', NULL),
(4, 'Party Songs', NULL),
(5, 'Romantic Songs', NULL),
(6, 'Top Hits 2026', 1),
(7, 'Top Hits 2025', 1),
(8, 'New Bollywood', 2),
(9, 'Old Bollywood', 2),
(10, 'Gym Workout', 3),
(11, 'Running Music', 3),
(12, 'Birthday Party', 4),
(13, 'Love Songs', 5),
(14, 'Hindi Love Songs', 13),
(15, 'English Love Songs', 13);

select 
p.playlist_name as parents_playlist_name ,
n.playlist_name as nest_playlist 
from playlist as p
left join playlist as n 
on n.parent_playlist_id = p.playlist_id ;


