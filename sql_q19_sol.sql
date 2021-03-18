-- 19. Write a SQL query to find the number of captains
-- who were also goalkeepers.

	-- Note:
		-- When solving each problem, always write down the tables
        -- to extract data from, and observe the various connections
        -- between tables.

	-- Tables: playing_position, player_mast, match_captain
	-- Join ids: position_id, posi_to_play, team_id
    
SELECT 
COUNT(player_captain) AS num_captains
FROM euro_cup_2016.match_captain mc
INNER JOIN euro_cup_2016.player_mast pm
ON mc.team_id = pm.team_id
INNER JOIN euro_cup_2016.playing_position pp
ON pp.position_id = pm.posi_to_play
WHERE position_desc = 'Goalkeepers';

-- A: num_captains = 306

