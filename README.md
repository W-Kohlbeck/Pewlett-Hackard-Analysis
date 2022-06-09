# Pewlett-Hackard-Analysis

## Overview:
Pewlett Hackard is concerned with how many employees it has approaching retirement eligibility and wants to get in front of what they are calling the "silver tsunami". Pewlett Hackard provided 6 different csv files containing all of the employee information available to assist in the analysis. Analyzing the data utilizing SQL joins and querries are going to be used to better lay out all of the data for proper analysis.

## Results:
### Total number of employees approaching retirement eligibility based on employee title. 

- Two employee titles facing the largest possible retirement are going to be Senior Engineers and Senior Staff each of which have a count of over 20,000.

<img width="230" alt="Retirement_Title_Counts" src="https://user-images.githubusercontent.com/102195085/172942866-4cbf30c1-6053-42c8-84ff-2714522f952c.png">

- Another observation based on the information above shows that the Manager title is eith now widely used or has little concerns on the number of eligible retirees as that count came in at only two employees. 

### Employees eligible for possible mentorship program identified.
- Utitlizing the current employees born in 1965 we were able to determine there are 1549 employees potentialy eligible for the mentorship program.

<img width="784" alt="Mentorship_eligibility" src="https://user-images.githubusercontent.com/102195085/172955548-3621a7cb-1fa8-49d0-8fb2-a0a6e2600793.png">


- After filtering out the Senior Engineers and Senior Staff there are 829 employees remaining. 


## Summary: 
Based on all of the current employees reaching retirement eligibility there are approx 41,380 employees that will be potentialy retiring with the largest concentration being in the Senior Engineer and Senior Staff categories. 

Electing to implement a mentorship program could be a good route to go to prepare the current employee pool for future advancement. Currently there are just enough employees in senior fields to cover one on one mentorship of the non senior level employees. Going one step further with the analysis of current employees eligible for mentorship all employees in current senior roles have been excluded utilizing the following query. 

<img width="540" alt="image" src="https://user-images.githubusercontent.com/102195085/172962768-6116ce0a-88fc-4b72-a2fe-da26e5797b74.png">

<img width="781" alt="Current_Mentorship_eligibility" src="https://user-images.githubusercontent.com/102195085/172962530-b6fa165b-2259-4196-9031-52710b0cc162.png">
