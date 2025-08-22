-- 4. Weight vs Activity
-- Purpose: Compare BMI and activity for users who logged weight.

SELECT
  ROUND(AVG(w.BMI),1) AS avg_bmi,
  ROUND(AVG(d.TotalSteps),1) AS avg_steps,
  ROUND(AVG(d.Calories),1) AS avg_calories,
  COUNT(DISTINCT w.Id) AS users_with_weight
FROM
  `shehab-test-1.bellabeat_capstone.weight` w
JOIN
  `shehab-test-1.bellabeat_capstone.daily_activities` d
ON
  w.Id = d.Id;
