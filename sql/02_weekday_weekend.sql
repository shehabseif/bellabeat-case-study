-- 2. Weekday vs Weekend Activity
-- Purpose: Compare activity between weekdays and weekends.

SELECT
  CASE
    WHEN EXTRACT(DAYOFWEEK FROM ActivityDate) IN (1,7) THEN "Weekend"
    ELSE "Weekday"
  END AS day_type,
  ROUND(AVG(TotalSteps),1) AS avg_steps,
  ROUND(AVG(Calories),1) AS avg_calories
FROM
  `shehab-test-1.bellabeat_capstone.daily_activities`
GROUP BY
  day_type;
