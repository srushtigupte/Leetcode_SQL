SELECT s.user_id AS user_id, round(ifnull(AVG(c.action = 'confirmed'), 0), 2) AS confirmation_rate
FROM Signups s LEFT JOIN Confirmations c
ON s.user_id = c.user_id
GROUP BY s.user_id;
