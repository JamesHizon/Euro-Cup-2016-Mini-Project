-- 15. Find the referees who booked the most number of players.
	-- Think:
		-- Table: referee_mast, soccer_country, player_booked

-- Q15: Find the referees who booked the most number of players.

	-- Main Tables: referee_mast rm, player_booked pb
    -- Bridge Table: soccer_country
    -- JOIN ON: pb.team_id = sc.country_id
    -- Use COUNT(match_no) to count the number of rows in match_no, 
    -- will basically allow us to find the number of players booked.
    
SELECT referee_name, COUNT(match_no) AS num_players_booked FROM euro_cup_2016.referee_mast rm 
LEFT JOIN euro_cup_2016.soccer_country sc
ON rm.country_id = sc.country_id
LEFT JOIN euro_cup_2016.player_booked pb
ON sc.country_id = pb.team_id
GROUP BY referee_name
ORDER BY num_players_booked DESC
LIMIT 1;
    
-- A: Nicola Rizzoli - Booked 16 players.