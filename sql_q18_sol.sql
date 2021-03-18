-- 18. Write a SQL query to find the highest number of foul cards given
-- in one match.
	-- Tables: match_details, penalty_shootout?
    -- Which tables should we look in for foul cards?
    -- I assume, we observe kick_id count.
    
SELECT md.match_no, COUNT(kick_id) AS num_penalties
FROM euro_cup_2016.match_details md
INNER JOIN euro_cup_2016.penalty_shootout ps
ON md.match_no = ps.match_no
GROUP BY md.match_no
ORDER BY num_penalties DESC
LIMIT 1;

-- A: match_no 47 has highest number of foul cards at 180.

-- Check the manual that corresponds to your MySQL server version for the right syntax to use near 'GROUP BY md.match_no' at line 6
