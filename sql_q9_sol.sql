-- 9. Write a SQL query to find the goalkeeper's name and
-- jersey number, playing for Germany, who played in
-- Germany's group stage matches.

-- Think:
	-- Table: player_mast
    
SELECT player_name, jersey_no, country_name
FROM euro_cup_2016.player_mast pm
INNER JOIN euro_cup_2016.soccer_country sc
ON pm.team_id = sc.country_id
WHERE posi_to_play = 'GK'
AND sc.country_name = 'Germany';

