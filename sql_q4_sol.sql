-- 4. Write a SQL query to compute a list showing the number of
-- substitutions that happened in various stages of play 
-- for the entire tournament.
	-- Think:
		-- Table: player_in_out
        -- Stage of play can be broken down into play_schedule and play_half.

SELECT play_schedule, play_half, COUNT(*) AS num_substitions
FROM euro_cup_2016.player_in_out
GROUP BY play_schedule, play_half;