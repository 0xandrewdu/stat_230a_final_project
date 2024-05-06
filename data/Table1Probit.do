*This replicates everything in the paper "Does working from home work: evidence from a Chinese Experiment?"
*To execute simply run this file in the same directory as all the data
*February 2014
*For questions please contact
	*Nick Bloom on nbloom@stanford 
	
set more off	
cap log close
log using WFH_august18,replace t	

************************************************************************************************************************************
//Table 0
use summary_volunteer.dta, clear
*col (1) 
probit volunteer children, robust
*col (2) 
probit volunteer married, robust
*col (3) 
probit volunteer children married commute bedroom, robust
*col (4) 
probit volunteer children married commute bedroom high_educ tenure, robust
*col (5) 
probit volunteer children married commute bedroom high_educ tenure grosswage
*col (6) 
probit volunteer grosswage
*col (7) 
probit volunteer children married commute bedroom high_educ tenure grosswage age men
*sample mean
sum children married commute bedroom high_educ tenure grosswage age men
************************************************************************************************************************************

************************************************************************************************************************************
//Table 1. Characteristics of employees who volunteer to join WFH
use summary_volunteer.dta, clear
*col (1) 
dprobit volunteer children, robust
*col (2) 
dprobit volunteer married, robust
*col (3) 
dprobit volunteer children married commute bedroom, robust
*col (4) 
dprobit volunteer children married commute bedroom high_educ tenure, robust
*col (5) 
dprobit volunteer children married commute bedroom high_educ tenure grosswage
*col (6) 
dprobit volunteer grosswage
*col (7) 
dprobit volunteer children married commute bedroom high_educ tenure grosswage age men
*sample mean
sum children married commute bedroom high_educ tenure grosswage age men
************************************************************************************************************************************

log close
