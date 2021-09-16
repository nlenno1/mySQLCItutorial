/*
Which Media Type is most popular? How could you answer this with a single query? 
You probably cannot based on what you know so far. We will get there.
*/
SELECT MediaType.Name as Media, count(Track.MediaTypeId) as Amount FROM Track 
JOIN MediaType on MediaType.MediaTypeId = Track.MediaTypeId 
GROUP BY MediaType.Name
ORDER BY count(MediaTypeId)desc
LIMIT 1;