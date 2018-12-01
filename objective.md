# Objective

* The objective of the WHAMP project is to evaluate the ADAP and the PrEP-DAP programs with respect to the cost and effectiveness (e.g., # of HIV infections averated) in the state of Washington. 
* Demographics such as individuals' income and insurance type are important to accurately calculate the costs because these factors 
    - Determine the eligibility of the applicants. 
    - Affect how much the drug assistant program might pay for each enrollee. 
* Modified the `EpiModelHIV` package (branch `prep-race`) to incoporate the need of cost evaluation for the two programs. 
* The primary features added to `EpiModelHIV` platform: 
    - Costs.
    - Insurance/income characteristics, enrollment in DAP. 
    - Dependency of other EpiModel processes on these characteristics. 