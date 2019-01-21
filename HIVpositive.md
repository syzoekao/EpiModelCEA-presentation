# People Living With HIV/AIDS

##<div id="ADAPenroll">ADAP enrollment</div>

<div id="ADAPenroll"></div>
![ADAPenroll](figures/ADAPenroll.png)

####[Enrollment criteria](http://adap.directory/washington#field_eligibility)
+ Income: must be below 400% of the federal poverty level (FPL), and must not be eligible for Medicaid (i.e., above 138% FPL)
+ Insurance status prior to entering ADAP:
    * Cannot have Medicaid or be eligible for Medicaid
    * Can be uninsured: ADAP will purchase insurance

####Parameters

<table>
<tr>
    <th bgcolor="#737CA1"><font COLOR="#FFFFFF"><strong>Label</strong></font></th>
    <th bgcolor="#737CA1"><font COLOR="#FFFFFF"><strong>Parameter</strong></font></th>
    <th bgcolor="#737CA1"><font COLOR="#FFFFFF"><strong>Data Source</strong></font></th>
    <th bgcolor="#737CA1"><font COLOR="#FFFFFF"><strong>Stratification</strong></font></th>
    <th bgcolor="#737CA1"><font COLOR="#FFFFFF"><strong>Notes/Questions</strong></font></th>
</tr>

<tr>
    <td><i> p </i></td>
    <td> Probability of assessment for ADAP eligibility upon HIV dx </td>
    <td> WA HIV Surveillance Data </td>
    <td> Race, income, insurance, region </td>
    <td> We approximate this by estimating the proportion of eligible people that enroll in ADAP</td>
</tr>

<tr>
    <td><i> p' </i></td>
    <td> Probability of reassessment for ADAP eligibility every cycle </td>
    <td> Assumption/calibration </td>
    <td> Race, income, insurance, region </td>
    <td> We will adjust this as necessary to meet current ADAP enrollment</td>
</tr>
</table>

####Questions
* What is the proportion of the applicants who are eligible for ADAP every year?
* Do most of the ADAP enrollees immediately initiate ART after enrollment?
* Are there records of diagnosed date prior to ADAP enrollment?


##<div id="ADAPrecertify">ADAP recertification</div>
![ADAPrecert](figures/ADAPrecert.png)

####Recertification criteria
- Clients must recertify every 6 months.
- It seems that the reapplication does not depend on treatment adherence or behavior.


####Parameters
<table>
<tr>
    <th bgcolor="#737CA1"><font COLOR="#FFFFFF"><strong>Label</strong></font></th>
    <th bgcolor="#737CA1"><font COLOR="#FFFFFF"><strong>Parameter</strong></font></th>
    <th bgcolor="#737CA1"><font COLOR="#FFFFFF"><strong>Data Source</strong></font></th>
    <th bgcolor="#737CA1"><font COLOR="#FFFFFF"><strong>Stratification</strong></font></th>
    <th bgcolor="#737CA1"><font COLOR="#FFFFFF"><strong>Notes/Questions</strong></font></th>
</tr>

<tr>
    <td><i> p </i></td>
    <td> Weekly probability of disenrolling from ADAP </td>
    <td> WADOH Claims Data </td>
    <td> Race, income, region </td>
    <td> Calculated from average duration of ADAP enrollment</td>
</tr>
</table>

####Questions

* Is engaging in care a requirement for recertification?
* How often ADAP enrollees are disenrolled because of changes in income and insurance, or because of other reasons?


## <div id="ADAPoutcome">Influence of ADAP on Outcomes</div>
* ADAP status might increase ART initiation and reinitiation, and decrease ART stoppage.
* ADAP status might affect the individuals' test/treat trajectories.
    - Individuals who were originally assigned to trajectory 2 (tested but never treated) could be engaged in care because of enrolling in ADAP.
        + These individuals are reassigned to trajectory 3 (treated & partial suppression) or trajectory 4 (treated & full suppression)
        + This has been implemented in the development of the CEA component for WHAMP in EpiModelHIV.
        + Data: Assumption. The common assumption in prior models of drug assistance programs has been that people who are eligible but not enrolled cannot access treatment.
    - ADAP active individuals who were originally assigned to trajectory 3 (treated & partial suppression) could switch to trajectory 4 (treated & full suppression).
        + This might be because of higher adherence to the treatment.
        + This is not implemented yet but is in discussion in our group.
        + Data: Adherence to ART among ADAP enrollees could be estimated by the medication possession ratio, and compared to adherence among non-ADAP enrollees


## <div id="ADAPcost">ADAP cost</div>
* Client costs (data source: WADOH claims data)
    - Insurance premium (if insurance is ADAP-sponsored)
    - Copay, coinsurance, deductible for:
      - ART
      - HIV-related medical services
      - Other medical services
* Assessment cost (data source: expert opinion)
* Overhead
