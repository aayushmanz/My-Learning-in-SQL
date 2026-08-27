USE smart;


-- find the top 5 batsman in IPL
SELECT batter,
AVG(batsman_run) AS 'avg_run'
FROM ipl_ball_by_ball_2008_2022
GROUP BY batter
ORDER BY avg_run DESC LIMIT 5;

-- find the 2nd highest 6 hitter in IPL

-- Find Virat Kohli's performance against all IPL teams

-- Find top 10 batsman with centuries in IPL

-- find the top 5 batsman with highest strike rate who have played a min of 1000 balls