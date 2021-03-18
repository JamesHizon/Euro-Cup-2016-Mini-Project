-- 7. Write a SQL query to find all the venues where matches with penalty
-- shootouts were played.
	-- Think:
		-- Table: soccer_venue s, match_mast m
		-- Join: On venue_id column
        -- Use DISTINCT for unique values only.
        
SELECT DISTINCT venue_name
FROM euro_cup_2016.soccer_venue s
INNER JOIN euro_cup_2016.match_mast m
ON s.venue_id = m.venue_id;