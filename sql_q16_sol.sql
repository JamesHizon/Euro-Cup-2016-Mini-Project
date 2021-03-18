-- 16. Write a SQL query to find referees and the number of matches
-- they worked in each venue.
	-- Table: referee_mast, match_mast, soccer_venue
    -- Note: match_mast is bridge table between soccer_venue 
    -- and referee_mast table.

SELECT
    referee_name,
    venue_name,
    COUNT(match_no) AS num_matches
FROM
    euro_cup_2016.match_mast mm
        INNER JOIN
    euro_cup_2016.referee_mast rm ON mm.referee_id = rm.referee_id
        INNER JOIN
    euro_cup_2016.soccer_venue sv ON mm.venue_id = sv.venue_id
GROUP BY referee_name, venue_name;

#1 of SELECT list is not in GROUP BY clause and contains nonaggregated column 'euro_cup_2016.rm.referee_name' which is not functionally dependent on columns in GROUP BY clause; this is incompatible with sql_mode=only_full_group_by



