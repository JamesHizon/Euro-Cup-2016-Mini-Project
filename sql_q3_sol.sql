-- 3. Write a SQL query to find the match number, date, and score for matches
-- in which no stoppage time was added in the 1st half.
	-- Think:
		-- Table: match_mast
        
SELECT match_no, play_date, goal_score 
FROM euro_cup_2016.match_mast
WHERE stop1_sec = 0;

-- This query does not give a goal_score, yet it should be correct.
-- Something must be wrong with the data provided.