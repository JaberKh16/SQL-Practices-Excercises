-- Data Manupulation with Tv-App_Tables

select * from reviewers;
select * from reviews;
select * from series;

select series.s_id, series.title, reviews.rating 
from series
JOIN reviews
ON reviews.series_id = series.s_id
GROUP BY series.s_id
HAVING series.s_id < 13;

--Exc -0 show titles , series_id, and average ratings
select series.s_id, series.title, reviews.rating , AVG(rating) as "Avg_Rating"
from series
JOIN reviews
ON reviews.series_id = series.s_id
GROUP BY series.s_id
ORDER BY Avg_Rating;
HAVING series.s_id < 13;

-- Exc-1 Unreviewed Series
select series.s_id, series.title as unreviewed_series, reviews.rating 
from series
LEFT JOIN reviews
ON reviews.series_id = series.s_id
WHERE reviews.rating IS NULL;
GROUP BY series.s_id

-- Exc-2 Show genre with average ratings
select series.s_id, series.genre as Genre, reviews.rating as Rating,
ROUND (AVG(reviews.rating) ,2) as Avg_Rating
from series
JOIN reviews
ON reviews.series_id = series.s_id
GROUP BY series.s_id
ORDER BY Genre;

-- Exc-3 Show first_name, last_name,count total_reviews, max(rating), minimum(rating), average(rating)
--       and status column to show active or inactinve

select reviewers.first_name as First_Name, reviewers.last_name as Last_Name, 
COUNT(rating) as COUNT, 
IFNULL(MAX(rating), 0) as "MAX",
IFNULL(MIN(rating), 0) as "MIN",
IFNULL(AVG(rating),0) as "Avg_Rating",
CASE 
	WHEN COUNT(rating) >=10 THEN "Active"
	WHEN COUNT(rating) > 0 THEN "PowerUser"
	ELSE "INACTIVE"
END as "STATUS"
from reviewers
LEFT JOIN reviews
ON reviewers.r_id = reviews.reviewer_id
GROUP BY reviewers.r_id;


select reviewers.first_name as First_Name, reviewers.last_name as Last_Name, 
COUNT(rating) as COUNT, 
IFNULL(MAX(rating), 0) as "MAX",
IFNULL(MIN(rating), 0) as "MIN",
IFNULL(AVG(rating),0) as "Avg_Rating",
IF(COUNT(rating) >=1, "Active", "Inactive") as STATUS 
from reviewers
LEFT JOIN reviews
ON reviewers.r_id = reviews.reviewer_id
GROUP BY reviewers.r_id;