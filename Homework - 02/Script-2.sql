--Homework - 02

--Homework requirement 1/6
--Show all details for artists born before 01-04-1992
select * from artist_details ad 
where ad.date_of_birth < '1992.04.01';

--Show all details for artists from Germany
select * from artist_details ad 
where ad.country = 'Germany';

--Show all songs longer than 4 minutes
select * from song s 
where duration = '4m';

--Show all explicit songs
select * from song s 
where s.explicit = true;

--Show all genres having ‘o’ in the name
select * from genre g 
where lower(g.name) like '%o%' ;

--Show all lyrics having the word ‘that'
select * from song_lyrics sl 
where lower(sl.lyrics) like '%that%';


--Homework requirement 2/6
--Show all details from artists that have ‘e’ in their full name, ordered by date of birth by the oldest one to the youngest one
select * from artist_details ad 
where ad.full_name like '%e%'
order by ad.date_of_birth;

--Show all non-explicit songs sorted by duration from shortest to longest
select * from song s 
where s.explicit = false 
order by s.duration asc;

--Show albums that have ‘u’ in their name sorted by rating, with worst rating on top
select * from album a 
where lower(a.name) like '%u%'
order by a.rating ;

--Homework requirement 3/6
--List all artist names and artist full names without duplicates
select name from artist a 
union
select full_name from artist_details ad 

--List all artist names and artist full names with duplicates
select name from artist a 
union all
select full_name from artist_details ad 

--List all common artist names and artist full names
select name from artist a2 
intersect
select full_name from artist_details ad 

--Homework requirement 4/6

--Show all album names and it’s rating
select name as album_name, rating from album a ;

--Show all artists with their name and full name side by side
select name as artst_name, ad.full_name from artist a 
join artist_details ad 
on a.id = ad.artist_id ;

--Show all songs with their lyrics side by side
select name as song_name, sl.lyrics  from song s
join song_lyrics sl 
on s.id = sl.song_id ;

--Homework requirement 5/6

--Show artist names with album names side by side
--Ova go komentirav oti ne raboti poradi toa sto nema vo albumot artist.id,go napisav kako so mislam deka treba da bide
--select a.name as artist_name, a.name as album_name from artist a 
--join album a2 
--on a.id = a2.artist_id;

--Show the artist names and their spouse name for all artists including ones that don’t have details
select name as artist_name, spouse_name from artist a 
left join artist_details ad 
on a.id = ad.artist_id ;
--Show artist names and list of countries for all, including missing artist and missing details info
select name as atrist_name,ad.country from artist a 
full join artist_details ad 
on a.id = ad.artist_id ;

--Homework requirement 6/6

--List all song names with genre names
select s.name as song_name,g.name as genre_name from song s 
join songs_genres sg 
on s.id = sg.song_id 
join genre g 
on g.id = g.id;

--List all song names with playlist names
select s.name as song_name, p.title as playlist_name from song s 
join playlists_songs ps 
on s.id = ps.playlist_id 
join playlist p 
on p.id = ps.playlist_id  ;

--List all album names and rating that have rating above 4 with the artist name
--Isto kako i tuka nema da moze da se izvrsi bidejki vo albumot nema artist name

--List all explicit song names and artist names without missing data
select s.name as song_name, a.name as artist_name from song s 
join artist a 
on s.artist_id = a.id 
where s.explicit = true ;


