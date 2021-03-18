-- 1. Write a SQL query to find the date EURO Cup 2016 started on.
-- Think:
	-- Ask question like, when was the first match?
		-- Then, go to match_mast table, and observe the play_date column.
        -- ORDER BY: play_date in ASC order.
        
SELECT play_date
FROM euro_cup_2016.match_mast
LIMIT 1;
