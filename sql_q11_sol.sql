-- 11. Write SQL query to find the players, their jersey number and playing
-- club who were the goalkeepers for England in Euro Cup 2016.

	-- Think:
		-- Table: player_mast, soccer_country
        
SELECT player_name, jersey_no, playing_club
FROM euro_cup_2016.player_mast pm
INNER JOIN euro_cup_2016.soccer_country sc
ON pm.team_id = sc.country_id
WHERE posi_to_play = 'GK'
AND country_name = 'England';