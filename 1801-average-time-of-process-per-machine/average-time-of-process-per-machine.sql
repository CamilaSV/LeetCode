# Write your MySQL query statement below
SELECT e.machine_id, ROUND(AVG(e.timestamp - s.timestamp), 3) AS processing_time
FROM Activity AS e
JOIN Activity AS s
  ON e.machine_id = s.machine_id 
    AND e.process_id = s.process_id
WHERE s.activity_type = 'start' AND e.activity_type = 'end'
GROUP BY machine_id;