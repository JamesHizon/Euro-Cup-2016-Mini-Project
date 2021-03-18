-- 10. Write a SQL query to find all available information about the players
-- under contract to Liverpool F.C. playing for England in EURO Cup 2016.

	-- Think:
		-- Table: player_mast, soccer_country
        -- JOINs: player_id, country_id/team_id

SELECT *
FROM euro_cup_2016.player_mast pm
INNER JOIN euro_cup_2016.soccer_country sc
ON pm.team_id = sc.country_id
WHERE playing_club = 'Liverpool'
AND country_name = 'England';