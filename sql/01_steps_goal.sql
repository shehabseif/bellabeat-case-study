-- 1. Steps Goal Achievement
-- Purpose: Count how many users meet a daily step goal of 8,000 steps.

SELECT
  COUNT(DISTINCT Id) AS total_users,
  COUNT(DISTINCT CASE WHEN TotalSteps >= 8000 THEN Id END) AS users_meeting_goal,
  ROUND(COUNT(DISTINCT CASE WHEN TotalSteps >= 8000 THEN Id END) * 100.0 /
        COUNT(DISTINCT Id), 2) AS percent_meeting_goal
FROM
  `shehab-test-1.bellabeat_capstone.daily_activities`;
