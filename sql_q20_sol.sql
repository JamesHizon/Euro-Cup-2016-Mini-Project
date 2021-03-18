-- 20. Write a SQL query to find the substitute players who came into
-- the field in the first half of play, within a normal play schedule.

	-- Tables: player_in_out, player_mast
		-- Columns: player_id, play_half, play_schedule
        -- JOIN id: player_id
        
SELECT DISTINCT player_name
FROM euro_cup_2016.player_mast pm
INNER JOIN euro_cup_2016.player_in_out pio
ON pm.player_id = pio.player_id
WHERE in_out = 'I' AND play_schedule = 'NT' AND play_half = 2 ;