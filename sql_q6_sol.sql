-- 6. Write a SQL query to find the number of matches that were won 
-- by a single point, but do not include matches 
-- decided by a penalty shootout.
	-- Think:
		-- Table: match_details
        
SELECT COUNT(*)
FROM euro_cup_2016.match_mast
WHERE decided_by != 'P';