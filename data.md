# Data sources

The data sources to inform parameters are as follows:

(note: we will clean this page up later when we figure out what data we are actually 'citing' in the presentation)

1. Washington State Department of Health data for ADAP and PrEP-DAP
     - Population: All ADAP and PrEP-DAP clients
     - Data Collection Methods: Claims and administrative database, linked to some surveillance data (for viral load)
     - Availability: Client-level anonymized data is being provided to us by WADOH.
     - Parameters:
          - duration of enrollment
          - program size
          - costs, subdivided by HIV-related and other medical (ADAP), and PrEP drug costs and nondrug costs (PrEP)
2. WHAMP survey
     - Population: All Washington State MSM
     - Data Collection Methods: Online survey
     - Availability: In progress. Soon to be deployed?
     - Parameters:
          - income distribution (by age, race)
          - type of insurance distribution by income and race
          - PrEP awareness (by race)
          - current PrEP use (by race)
          - PrEP use patterns (by race)
          - ART usage (by race)
3. Washington PrEP DAP Client Survey
     - Population: All PrEP-DAP clients
     - Data Collection Methods: Mailed survey
     - Availability: [Summary available](https://www.doh.wa.gov/Portals/1/Documents/Pubs/430-073-WAPrEPDAPClientSurveyKeyFindings2017-English.pdf). More available from WADOH, if needed?
     - Parameters:
          - Adherence on PrEP-DAP program
          - Behavior change for those on PrEP/in PDAP (?)
          - More?
4. Washington HIV Prevention Project (WHPP) Survey (2017)
     - Population: All Washington State HIV- MSM
     - Data Collection Methods: Online survey
     - Availability: [Summary available](https://www.doh.wa.gov/Portals/1/Documents/5620/WashingtonHIVPreventionProjectKeyFindings2017.pdf). More available from WADOH (contact: Darcy Rao, dpwhite@uw.edu)
     - Parameters (all can be stratified by age, race/ethnicity, and/or region)
          - Income
          - Insurance
          - Use of PrEP drug assistance programs
          - Copays and out-of-pocket expenses for PrEP
          - Healthcare access/utilization (have a regular provider, been to a medical facility in the past 12 months, HIV/STI testing)
          - Awareness of PrEP
          - Interest in PrEP
          - PrEP eligibility (WA state guidelines)
          - Knowledge of where to go to get PrEP / learn more about it
          - Use of PrEP (including dates of use and discontinuation)
          - Reasons for discontinuation
          - Adherence to PrEP
          - Sexual behavior (aggregate and detailed most recent partner)
5. Washington HIV/STI Prevention Project (WHSPP) Survey (2018-)
     - Population: All Washington State MSM
     - Data Collection Methods: Online survey
     - Availability: Collecting data now (contact: Darcy Rao, dpwhite@uw.edu)
     - Parameters (all can be stratified by age, race/ethnicity, and/or region)
          - Income
          - Insurance
          - Use of PrEP drug assistance programs
          - Copays and out-of-pocket expenses for PrEP
          - Healthcare access/utilization (have a regular provider, been to a medical facility in the past 12 months, HIV/STI testing)
          - Awareness of PrEP
          - Interest in PrEP
          - Interest in prevention navigation for PrEP
          - PrEP eligibility (WA state guidelines)
          - Knowledge of where to go to get PrEP / learn more about it
          - Use of PrEP (including dates of use and discontinuation)
          - Reasons for discontinuation
          - Adherence to PrEP
          - Sexual behavior (aggregate only)
6. American Community Survey (ACS)
     - Population: Representative sample of US population (down to census track)
     - Data Collection Method: Survey (run by Census bureau)
     - Availability: Publicly available - [https://usa.ipums.org/usa/](https://usa.ipums.org/usa/)
     - Parameters
          - direct purchase health insurance (`hinspur`)
          - publicly funded health insurance (`hcovpub`)
          - Restrict on `sex(1)` and `statefip(53)` for males in Washington
          - Possible stratifications: `county`, `race`, income (`ftotinc` or `inctot`), poverty status (`poverty`)
          - Other variables of potential interest: same-sex married couple (`ssmc`), marital-status (`marst`)
7. WA health benefit exchange reports (can maybe get more detailed data summaries?)
     - Population: All persons enrolling in health plans through the WA health benefit exchange
     - Data Collection: analysis of enrollment database
     - Availability: Report for [2017](https://www.wahbexchange.org/wp-content/uploads/2017/04/HBE_EN_170419_April_Enrollment_Report.pdf); older reports should be available but I can't find them
     - Parameters
          - Enrollment by metal level (bronze, silver, gold, etc.)
          - Also stratified by federal poverty level
          - Have information on age, sex, county but combined stratification not publicly available
