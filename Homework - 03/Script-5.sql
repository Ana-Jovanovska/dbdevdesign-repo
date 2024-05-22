--Homework - 03 

--Homework requirements 1/2
--Calculate the count of all songs in the system
select count(*) from song s;

--Calculate the count of all songs per artist in the system
select a.name, count(s.id) as song_count from artist a 
join song s on s.artist_id = a.id 
group by a.name;

--Calculate the count of all songs per artist in the system for first 100 albums (ID < 100)
select  a.id , a.name, count(s.id) as song_count from artist a
join album al on a.id  = al.id 
join  song s on al.id  = s.album_id
where  al.id  < 100
group by  a.id , a.name 
order by song_count desc;

--Find the maximal duration and the average duration per song for each artist
select a.name, max(s.duration) as max_duration,avg(s.duration) as avg_duration from artist a 
join song s on s.artist_id = a.id 
group by a.name
order by a.name;

--Calculate the count of all songs per artist in the system and filter only song count greater than 10
select a.name, count(a.id) from artist a 
join song s on a.id = s.artist_id 
group by a.name
having count(a.id) > 10; 

--Calculate the count of all songs per artist in the system for first 100 albums 
--(ID < 100) and filter artists with more than 10 song count
select  a.id , a.name, count(s.id) as song_count from artist a
join album al on a.id  = al.id 
join  song s on al.id  = s.album_id
where  al.id  < 100
group by  a.id , a.name 
having count(s.id) > 10
order by song_count desc;

--Homework requirements 2/2
--Find the song count, maximal duration, and the average duration per artist on all songs in the system. Filter only records where maximal duration is more than the average duration
select a.name,max(s.duration) as max_duration,avg(s.duration) as avg_duration,count(s.name) as song_count from artist a 
join song s on s.artist_id = s.id 
group by a.name
order by max(s.duration) > avg(s.duration) ; 

--Create a new view (vw_ArtistSongCounts) that will list all artist IDs and count of songs per artist
--create view vw_ArtistSongCounts as
--select artist.id,count(s.id) as song_count from artist a 
--left join album a on artist.id = album.id 
--left join song s on album.id = s.album_id
--group by artist.id 

--Recreate the view to show artist names instead of artist ID
--List all rows from the view ordered by the biggest song count

--Create a new view (vw_ArtistAlbumDetails) that will list all artists (name) and count the albums they have
create view vw_ArtistAlbumDetails as
select artist.name,count(album.id) as album_count from artist  
left join album  on artist.id = album.id 
group by artist.name

select * from vw_artistalbumdetails va 



