-- 8. Write a SQL query to find the match number for the game
-- with the highest number of penalty shots, and which countries
-- played that match.

SELECT 
    match_no, country_name
FROM
    euro_cup_2016.match_details md
        LEFT JOIN
    euro_cup_2016.asst_referee_mast arm ON md.ass_ref = arm.ass_ref_id
        LEFT JOIN
    euro_cup_2016.soccer_country sc ON arm.country_id = sc.country_id
ORDER BY penalty_score DESC
LIMIT 1;
