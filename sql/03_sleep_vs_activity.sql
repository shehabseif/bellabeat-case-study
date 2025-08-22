-- 3. Sleep vs Activity
-- Purpose: Join daily activity and sleep to see if better sleep = better activity.

SELECT
  ROUND(AVG(s.TotalMinutesAsleep),1) AS avg_sleep_minutes,
  ROUND(AVG(d.TotalSteps),1) AS avg_steps,
  ROUND(AVG(d.Calories),1) AS avg_calories
FROM
  `shehab-test-1.bellabeat_capstone.daily_activities` d
JOIN
  `shehab-test-1.bellabeat_capstone.sleep` s
ON
  d.Id = s.Id AND DATE(d.ActivityDate) = DATE(s.SleepDay);
