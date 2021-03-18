-- 14. Find referees and the number of bookings they made for the entire
-- tournament. Sort your answer by number of bookings in descending order.

	-- Think:
		-- Table: referee_mast,  soccer_country, player_booked
        
	-- Try:
		-- Create another column, perhaps, to obtain number of bookings.
        
SELECT referee_name, COUNT(*) AS num_bookings
FROM euro_cup_2016.referee_mast rm
LEFT JOIN euro_cup_2016.soccer_country sc
ON rm.country_id = sc.country_id
LEFT JOIN euro_cup_2016.player_booked pb
ON sc.country_id = pb.team_id
GROUP BY referee_name
ORDER BY num_bookings DESC;

