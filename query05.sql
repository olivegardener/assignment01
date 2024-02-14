/*
    What is the longest duration trip across the two quarters?

    Your result should have a single row with a single column named max_duration.

Answer: 118999
*/

-- Enter your SQL query here
SELECT MAX(duration) AS longest_duration_minutes
FROM (
    SELECT EXTRACT(EPOCH FROM (end_time - start_time)) / 60 AS duration
    FROM indego.trips_2021_q3
    UNION ALL
    SELECT EXTRACT(EPOCH FROM (end_time - start_time)) / 60 AS duration
    FROM indego.trips_2022_q3
) AS combined_durations;