# Pewlett-Hackard-Analysis

## Overview
Using PostgreSQL, a Retirement Titles table was made to hold titles and employees of those who were born between January 1, 1952 and December 31, 1955. Some of these employees had multiple titles in the database, so a SELECT DISTINCT ON statement was used to make a table that contains the most recent title of each employee. Then, use the COUNT() function to create a final table that has the number of retirement-age employees by most recent job title.

Another analysis was conducted to create a table to display the mentorship-eligibility of the current employees who were born between January 1, 1965 and December 31, 1965. Below is a report summarizing that analysis.


## Results -- four major points 
* Looking at the mentorship-eligibility csv, it seems apparent that most of the employees from this "silver tsunami" are leaving specialized or leadership positions open. It seems logical to adopt a mentorship program that can then train the remaining employees in these very important fields, as the transition is taking place.
* It's crucial to find competent replacements (fast) for these retiring employees as the company will lose more than 1,000 employees in development (544 people), production (446 people) and sales (338). 
* There isn't information on how long the mentorship program may take, but it must be done before the end of the year so employees are ready for their new roles
* It must be decided if employees will move up within the company or if new employees will have to be brought in and trained, which may end up costing the company more money on top of the retirement packages.

![men_elig](https://github.com/pratishthasingh1/Pewlett-Hackard-Analysis/blob/master/mentorship_eligibility.csv)
![dept_count.mb](https://github.com/pratishthasingh1/Pewlett-Hackard-Analysis/blob/master/dept_count.csv)
