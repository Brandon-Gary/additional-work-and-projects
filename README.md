# Additional Work & Various Projects

## Overview
Contained in this repository are examples of work I have completed that only highlight one technical skill or did not feel deserving of their own repository. Here you'll primarily find screenshots of Power BI dashboards & and snippets of code.

### Lead Dashboard
The image `Lead Dashboard.png` shows a dashboard providing an overview of blood lead testing completed within our county. There are a number of different filters that are appliable on the dashboard including year, month, test type, zip code, and test result range. This dashboard is updated monthly as batches of data are provided to us from the state. A screenshot is provided in this repository, but the dashboard is live on our website here: www.in.gov/localhealth/stjosephcounty/environmental-health/lead/

### Binomial Distribution for Nursing Clinic No-Shows
Our nursing unit regularly schedules partients for immunizations and other services. A big problem the clinic consistenly faces is a high number of no shows and cancelled appointments. This often leads to underutilized resources included staff members themselves, as well delaying appointment times for patients who do actually show for their appointment. To address this, the clinic asked me to analyze their no-show data for any trends or areas of consistency. I was able to manually query and export appointment data from their EHR, and get an overall no-show rate of all scheduled appointments for the past 2 years. I considered this rate as a probablity that a scheduled appointment would no-show and used this value in a binomial distribution equation. The equation was run in python and is documented in the `No Show Binomial Distribution.py` file.
