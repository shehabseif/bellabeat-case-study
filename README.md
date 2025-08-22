# bellabeat-case-study
Google Data Analytics Capstone — Bellabeat Case Study using Fitbit data (SQL, Excel)
# Bellabeat Case Study: How Can a Wellness Technology Company Play It Smart?

**Author:** Shehab Seif  
**Certificate:** Google Data Analytics Capstone  
**Tools:** Excel, SQL (BigQuery), Kaggle  

---

## 1) Ask

**Business Task**  
Analyze Fitbit smart device data to identify usage trends and apply these insights to Bellabeat’s Leaf and Time products, with the goal of informing data-driven marketing strategies.

**Key Stakeholders**
- Urška Sršen – Cofounder & Chief Creative Officer  
- Sando Mur – Cofounder & mathematician  
- Bellabeat Marketing Analytics Team  

**Guiding Questions**
- What are some trends in smart device usage?  
- How could these trends apply to Bellabeat customers?  
- How could these trends influence Bellabeat’s marketing strategy?  

---

## 2) Prepare

**Dataset**  
Fitbit Fitness Tracker Data (Kaggle, CC0) by Mobius → [link](https://www.kaggle.com/datasets/arashnic/fitbit)  
30 users, March–May 2016. Includes daily logs of activity, steps, distance, calories, sleep, and weight.  

**Limitations**
- Small sample (~30 users)  
- Old (2016 data)  
- Not Bellabeat customers  
- Some missing logs  

**ROCCC Assessment**
- **Reliable:** Device-generated  
- **Original:** Published by Mobius on Kaggle  
- **Comprehensive:** Activity, sleep, weight  
- **Current:** Outdated (2016)  
- **Cited:** Widely referenced on Kaggle  

---

## 3) Process

**Tools used:**  
Excel → initial cleaning  
BigQuery SQL → queries  
Excel → pivot visuals  
Kaggle Notebook → documentation  

**Datasets overview:**  
- `dailyActivity_merged.csv` → 940 rows  
- `sleepDay_merged.csv` → 410 rows  
- `weightLogInfo_merged.csv` → 67 rows  

Cleaning summary:  
- Removed duplicates from sleep (3 rows)  
- Noted missing Fat% in weight (~65 blanks)  
- Activity dataset consistent but contains zeros (non-wear or inactivity days)  

---

## 4) Analyze

Performed in BigQuery SQL. Queries are stored in `/sql` folder.

### Key Insights:
1. **Steps Goal Achievement**  
   - 33 users total  
   - 25 users (76%) met the 8,000 step goal regularly  

2. **Weekday vs Weekend Activity**  
   - Weekdays: ~7,669 steps, 2302 kcal  
   - Weekends: ~7,551 steps, 2310 kcal  
   - Very similar activity, slightly higher on weekdays  

3. **Sleep vs Activity**  
   - Avg sleep = 419 minutes (≈ 7 hrs)  
   - Better sleep → 8,515 steps & 2,389 kcal  

4. **Weight vs Activity**  
   - Avg BMI = 25.2  
   - Users logging weight (only 8 people) showed high steps (~12,102)  

5. **Sedentary Time vs Calories**  
   - Avg sedentary = 991 minutes/day (16.5 hrs)  
   - Correlation with calories = -0.11 (very weak)  

---

## 5) Share

### 📊 Visualization 1: Steps vs. Calories Over Time
![Steps vs Calories](images/steps_vs_calories.png)  

**Insight:** More steps = more calories burned.  
**Business Relevance:** Emphasize step tracking as the simplest lever for calorie balance.  

### 📊 Visualization 2: Average Steps on Weekdays vs Weekends
![Weekday vs Weekend Steps](images/weekday_weekend_steps.png)  

**Insight:** Users walk slightly more on weekdays.  
**Business Relevance:** Encourage weekend activity through challenges and app reminders.  

---

## 6) Act

**Conclusions**
- Step counts strongly drive calorie burn.  
- Weekday activity slightly > weekend.  
- Sleep may support higher activity.  

**Recommendations for Bellabeat**
1. **Promote Step-Tracking**  
   - Push notifications on step goals  
   - Weekly reports linking steps → calories  

2. **Boost Weekend Engagement**  
   - Launch “Weekend Walk” challenges  
   - Gamified badges for Saturday/Sunday activity  

3. **Personalized Insights**  
   - Compare user’s weekday vs weekend patterns  
   - Suggest tailored advice (e.g., “Walk 15 more minutes on Saturday”)  

---

## 📂 Repository Structure

