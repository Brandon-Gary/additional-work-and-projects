# Additional Work & Various Projects

## Overview
Contained in this repository are examples of work I have completed that only highlight one technical skill or did not feel deserving of their own repository. Here you'll primarily find screenshots of Power BI dashboards & and snippets of code.

### Lead Dashboard
The image `Lead Dashboard.png` shows a dashboard providing an overview of blood lead testing completed within our county. There are a number of different filters that are appliable on the dashboard including year, month, test type, zip code, and test result range. This dashboard is updated monthly as batches of data are provided to us from the state. A screenshot is provided in this repository, but the dashboard is live on our website here: www.in.gov/localhealth/stjosephcounty/environmental-health/lead/

### Binomial Distribution for Nursing Clinic No-Shows
Our nursing unit regularly schedules partients for immunizations and other services. A big problem the clinic consistenly faces is a high number of no shows and cancelled appointments. This often leads to underutilized resources included staff members themselves, as well delaying appointment times for patients who do actually show for their appointment. To address this, the clinic asked me to analyze their no-show data for any trends or areas of consistency. I was able to manually query and export appointment data from their EHR, and get an overall no-show rate of all scheduled appointments for the past 2 years. I considered this rate as a probablity that a scheduled appointment would no-show and used this value in a binomial distribution equation. The equation was run in python and is documented in the `No Show Binomial Distribution.py` file. When entering in the no-show probability along with the number of scheduled appointments in a day, the equation outputs the most likely number of no shows for those given parameters. This allowed our clinic to begin double booking appointment slots with more confidence that it's unlikely to overwhelm staff members. 

### Additional SQL
The Additional SQL folder contains standalone SQL queries that have been used to answer specific business questions. They are included here to showcase varying SQL techniques and analytical work that was not a part of a larger project.

`Returning_Participants.sql` - This query references data on class participation. The output contains the total number of unique participants, the total number of those who attended multiple classes, and the rate at which first time participants returned.

`age_grouping.sql` - This query references data on program attendees. The query assigns each record (unique person) to an age grouping and then provides a count of those groupings.

`Elevated_Cholesterol.sql`, `Elevated_A1C.sql`, & `Elevated_BP.sql` - These queries all reference result data on cholesterol, hemoglobin A1C, and blood pressure testing. They each individual produce a number indicating the number of test results that were elevated for each respective test.

### Narcan & Overdose Map
Our department received a dataset from the local dispatchers office that listed the address of all overdose, suicide, and Code M calls that were responded to in the past 2-3 years. Our leadership team wanted a way to easily visualize and filter this data as needed for future presentations. Mapping each individual datapoint using Power BI was decided to be the best method to accomplish both of these goals. Light data transformations were needed including merging address parts into one column. The map was shared with leadership using a unique URL after publishing. The `Narcan & Overdose Map` folder contains three screenshots of the final product. One is completely unfiltered, and the two other images show the map after varying filters are applied.

### Radon Testing Heat Map
The environmental unit of my organization offers radon testing kits to homeowners for free. If the kit is used and then shipped to a lab, both my organization and the homeowner receive a copy of the results. The staff running this program wanted to map the addresses of the completed tests along with the results. The goal was to identify any concentrated areas with elevated test results so an investigation into whether environmental factors are contributing to high radon levels could be considered. Additionally, the staff wanted to see if any areas of the county were lacking in tests completed comapred to other areas. A form in REDCap was created to input test results as their received, and then the project is connected to Power BI via REDCap API to create a heat map. Screenshots of the map can be viewed in the `Radon Testing Heat Map` folder.
