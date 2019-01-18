# People Living With HIV/AIDS

##<div id="adap">AIDS drug assistance program (ADAP)</div>
- Originally conceived to pay for HIV treatment (ART) for people living with HIV who couldn't afford it
- Federally funded, but state-administered
- State determines eligibility, enrollment process, and benefits
- Following the passage of the Affordable Care Act in 2010, more people had access to insurance that covered ART (Medicaid expansion; elimination of pre-existing condition clauses)
- Program goal remains the same (support access to ART), but benefits have changed

##<div id="WAADAP">Washington State ADAP</div>
- Benefits:
    + Provides assistance in acquiring insurance
    + Pays insurance premiums
    + Pays costs to the client for HIV-related medications and healthcare services (deductibles, cost-sharing, co-pays)
    + Pays full cost of ART and HIV-related prescription medications for uninsured, but insurance is often cheaper.
- Enrollment criteria: [Eligibility](http://adap.directory/washington#field_eligibility)
    + Income: must be below 400% of the federal poverty level (FPL), and must not be eligible for Medicaid (i.e., above 138% FPL)
    + Insurance status prior to entering ADAP:
        * Cannot have Medicaid or be eligible for Medicaid
        * Can be uninsured: ADAP will purchase insurance
        * If insured through other programs than Medicaid, ADAP pays out-of-pocket costs related to ART and other care
- Recertification
    + Clients must recertify every 6 months
    + The reapplication does not depend on treatment adherence or behavior

##<div id="ADAPandContinuum">ADAP and care continuum</div>


Upon entering the model, each individual is assigned to one of the care trajectories, based on their individual attributes (e.g. income, insurance, etc.)

The four trajectories are:

- **T1**: Never test
- **T2**: Test and never treat
- **T3**: Treat with partial suppression
- **T4**: Treat with full suppression

Within each of these trajectories, there can be variation in care over time. For example, someone in T4 may stop taking ART.

ADAP affects the trajectories in the following ways:

* Without ADAP, only individuals in T3 and T4 can engage in care and enter into the ART treatment dynamics.
* For individuals on T3/T4, ADAP modifies the ART dynamics. This can lead to a longer duration of ART treatment and fewer gaps in ART treatment.
* With ADAP, individuals who are on T2 may be able to obtain ART treatment and engage in care.
* In addition, individual attributes influence the probability that a person diagnosed with HIV enrolls in ADAP.

In addition to being assigned a trajectory upon model entry, individuals are also assigned "ADAP" or "no ADAP", Only these people may enter the ADAP program.

The trajectory and ADAP/no ADAP assignment is illustrated below:

<div id="ARTcontinuum3"></div>
![ARTcontinuum3](figures/ARTContinuum3.png)

**Parameters**

note: VS = viral suppression

<table>
<tr>
    <th bgcolor="#737CA1"><font COLOR="#FFFFFF"><strong>Label</strong></font></th>
    <th bgcolor="#737CA1"><font COLOR="#FFFFFF"><strong>Parameter</strong></font></th>
    <th bgcolor="#737CA1"><font COLOR="#FFFFFF"><strong>Data Source</strong></font></th>
    <th bgcolor="#737CA1"><font COLOR="#FFFFFF"><strong>Stratification</strong></font></th>
    <th bgcolor="#737CA1"><font COLOR="#FFFFFF"><strong>Question</strong></font></th>
</tr>

<tr><td colspan=5 bgcolor="#E5E4E2"><i><b>Treatment trajectories</i></b></td></tr>

<tr>
    <td><i>tt4</i></td>
    <td> Percentage of PLWH who consistently achieve full VS </td>
    <td> MMP, eHARS </td>
    <td> Race, income, insurance, region</td>
    <td> ? </td>
</tr>

<tr>
    <td><i>tt3</i></td>
    <td> Percentage of PLWH who engage in care but do not consistently achieve full VS</td>
    <td> MMP, eHARS </td>
    <td> Race, income, insurance, region </td>
    <td> ? </td>
</tr>

<tr>
    <td><i>tt1</i></td>
    <td> Percentage of PLWH who never test </td>
    <td> Washington HIV Epi Reports </td>
    <td> Race, income, insurance, region </td>
    <td> How can we get the stratified data? </td>
</tr>

<tr>
    <td><i>tt2</i></td>
    <td> Percentage of PLWH that get a dx but never engage in care </td>
    <td> Washington HIV Epi Reports </td>
    <td> Race, income, insurance, region </td>
    <td> ? </td>
</tr>

<tr><td colspan=5 bgcolor="#E5E4E2"><i><b>ADAP parameters</i></b></td></tr>

<tr>
    <td><i>&epsilon;1</i></td>
    <td> Percentage of people on T4 who are in ADAP</td>
    <td> Claims data linked with eHARS </td>
    <td> Race, income, insurance, region </td>
    <td> ? </td>
</tr>

<tr>
    <td><i>&epsilon;2</i></td>
    <td> Percentage of people on T3 who are in ADAP </td>
    <td> Claims data linked with eHARS </td>
    <td> Race, income, insurance, region </td>
    <td> ? </td>
</tr>

<tr>
    <td><i>&epsilon;3</i></td>
    <td> Percentage of people on T2 who would enter care if on ADAP (?) </td>
    <td> ? </td>
    <td> Race, income, insurance, region </td>
    <td> ? </td>
</tr>

<tr>
    <td><i>tt2to4</i></td>
    <td> Percentage of people on ADAP+T2 who achieve full VS </td>
    <td> ? </td>
    <td> Race, income, insurance, region </td>
    <td> ? </td>
</tr>
</table>


##<div id="ARTdynamics">ART and ADAP dynamics</div>
![ARTdynamics](figures/ARTdynamics.png)

, where $$tt_x$$ refers to the test/treat trajectory to which an indiviudal was assigned.


* Individuals could change ADAP status because of changes in income and insurance, or because of failing recertification.
* ADAP status migth increase ART initiation and reinitiation and decrease ART stoppage.

**Parameters**
<table>
<tr>
    <th bgcolor="#737CA1"><font COLOR="#FFFFFF"><strong>Label</strong></font></th>
    <th bgcolor="#737CA1"><font COLOR="#FFFFFF"><strong>Parameter</strong></font></th>
    <th bgcolor="#737CA1"><font COLOR="#FFFFFF"><strong>Data Source</strong></font></th>
    <th bgcolor="#737CA1"><font COLOR="#FFFFFF"><strong>Stratification</strong></font></th>
    <th bgcolor="#737CA1"><font COLOR="#FFFFFF"><strong>Question</strong></font></th>
</tr>

<tr><td colspan=5 bgcolor="#E5E4E2"><i><b>ADAP dynamics</i></b></td></tr>
<tr>
    <td><i>&Omicron;</i></td>
    <td> Weekly probability of enrolling in ADAP </td>
    <td> Calculated from average time to ADAP enrollment from diagnosis </td>
    <td> Race, income, region, age</td>
    <td> None </td>
</tr>

<tr>
    <td><i>&Omega;</i></td>
    <td> Weekly probability of disenrolling from ADAP</td>
    <td> Calculated from average duration of ADAP enrollment</td>
    <td> Race, region, age</td>
    <td> None </td>
</tr>

<tr><td colspan=5 bgcolor="#E5E4E2"><i><b>ADAP inactive</i></b></td></tr>

<tr>
    <td><i>&mu;, &mu;'</i></td>
    <td> Weekly probability of ART initiation after diagnosis (tx naive)</td>
    <td> Previous publications, eHARS, WADOH claims data (?) </td>
    <td> Treatment trajectory, ADAP status, race, region </td>
    <td> None </td>
</tr>

<tr>
    <td><i>&tau;, &tau;</i></td>
    <td> Weekly probability of ART discontinuation </td>
    <td> Previous publications, eHARS, WADOH claims data (?) </td>
    <td> Treatment trajectory, ADAP status, race, region </td>
    <td> None </td>
</tr>

<tr>
    <td><i>&nu;, &nu;'</i></td>
    <td> Weekly probability of reinitiating ART after discontinuation </td>
    <td> Previous publications, eHARS, WADOH claims data (?) </td>
    <td> Treatment trajectory, ADAP status, race, region </td>
    <td> None </td>
</tr>

<tr>
    <td><i>&sigma;, &sigma;'</i></td>
    <td> Weekly probability of discontinuing ART after reinitiation </td>
    <td> Previous publications, eHARS, WADOH claims data (?) </td>
    <td> Treatment trajectory, ADAP status, race, region </td>
    <td> None </td>
</tr>

</table>

**Questions**

* Does everyone immediately initiate ART after enrollment?
* Is engaging in care a requirement for recertification?
* Are there records of diagnosed date prior to enrollment?

## <div id="ADAPcost">ADAP cost</div>
* Client costs
    - Insurance premium (if insurance is ADAP-sponsored)
    - Copay, coinsurance, deductible for:
      - ART
      - HIV-related medical services
      - Other medical services
* Assessment cost
* Overhead


**Questions**

* On average, what is the ratio of enrollments to applications for ADAP in a year?
