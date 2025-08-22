-- 5. Sedentary Time vs Calories
-- Purpose: Check if being sedentary correlates with calories burned.

SELECT
  ROUND(AVG(SedentaryMinutes),1) AS avg_sedentary_minutes,
  ROUND(AVG(Calories),1) AS avg_calories,
  ROUND(CORR(SedentaryMinutes, Calories),2) AS correlation
FROM
  `shehab-test-1.bellabeat_capstone.daily_activities`;
