# HIV-positive

##<div id="adap">AIDS drug assistance program (ADAP)</div>
- Originally conceived to pay for HIV treatment (ART) for people living with HIV who couldn't afford it
- Federally funded, but state-administered
- State determines eligibility, enrollment process, and benefits
- Following the passage of the affordable care act in 2010, more people had access to insurance that covered ART (Medicaid expansion; elimination of pre-existing condition clauses)
- Program goal remains the same (support access to ART), but benefits have changed

##<div id="WAADAP">Washington State ADAP</div>
- Benefits:
    + Provides assistance in acquiring insurance
    + Pays insurance premiums
    + Pays client-cost of HIV-related medications and healthcare services (deductibles, cost-sharing, co-pays)
    + Pays full cost of ART and HIV-related prescription medications for uninsured
- Criteria of enrollment: [Eligibility](http://adap.directory/washington#field_eligibility) 
    + Income: 138%-400% of FPL
    + Insurance: 
        * Uninsured: find insurance for them
        * Insured: exclude medicaid
    + Prescription: doesn't seem required
- Criteria of recertification
    + Frequency of recertification: every 6 months
    + Testing behavior: NA
    + Behavior of engaging in care: NA


##<div id="ADAPandContinuum">ADAP and care continuum</div>

<div id="ARTcontinuum3"></div>

![ARTcontinuum3](figures/ARTContinuum3.png)


* Each individual was assigned to one of the test/treat trajectory. 
* Test/treat trajectories are associated with individual attributes. 
* Without ADAP, only individuals in traject 3 (treated & partial suppression) and trajectory 4 (treated & full suppression) might engage in care and enter into the ART treatment dynamics. 
* Individual attributes might influence the probability that the diagnosed HIV+ enroll in ADAP. 
* ADAP could allow individuals who are on trajectory 2 (tested never treated) to get ART treatment and engage in care. 
* For individuals on trajectory 3 and 4, ADAP modifies the probabilities in the ART dynamics. 

**Parameters**
<table>
<tr>
    <th bgcolor="#737CA1"><font COLOR="#FFFFFF"><strong>Label</strong></font></th>
    <th bgcolor="#737CA1"><font COLOR="#FFFFFF"><strong>Parameter</strong></font></th>
    <th bgcolor="#737CA1"><font COLOR="#FFFFFF"><strong>Data Source</strong></font></th>
    <th bgcolor="#737CA1"><font COLOR="#FFFFFF"><strong>Stratification</strong></font></th>
    <th bgcolor="#737CA1"><font COLOR="#FFFFFF"><strong>Question</strong></font></th>
</tr>

<tr>
    <td><i>&epsilon;1</i></td>
    <td> XX </td>
    <td> XX </td>
    <td> XX </td>
    <td> XX </td>
</tr>

<tr>
    <td><i>&epsilon;2</i></td>
    <td> XX </td>
    <td> XX </td>
    <td> XX </td>
    <td> XX </td>
</tr>

<tr>
    <td><i>&epsilon;3</i></td>
    <td> XX </td>
    <td> XX </td>
    <td> XX </td>
    <td> XX </td>
</tr>

<tr>
    <td><i>tt2to4</i></td>
    <td> XX </td>
    <td> XX </td>
    <td> XX </td>
    <td> XX </td>
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
    <td> XX </td>
    <td> XX </td>
    <td> XX </td>
    <td> XX </td>
</tr>

<tr>
    <td><i>&Omega;</i></td>
    <td> XX </td>
    <td> XX </td>
    <td> XX </td>
    <td> XX </td>
</tr>

<tr><td colspan=5 bgcolor="#E5E4E2"><i><b>ADAP inactive</i></b></td></tr>

<tr>
    <td><i>&mu;</i></td>
    <td> XX </td>
    <td> XX </td>
    <td> XX </td>
    <td> XX </td>
</tr>

<tr>
    <td><i>&tau;</i></td>
    <td> XX </td>
    <td> XX </td>
    <td> XX </td>
    <td> XX </td>
</tr>

<tr>
    <td><i>&sigma;</i></td>
    <td> XX </td>
    <td> XX </td>
    <td> XX </td>
    <td> XX </td>
</tr>

<tr>
    <td><i>&nu;</i></td>
    <td> XX </td>
    <td> XX </td>
    <td> XX </td>
    <td> XX </td>
</tr>

<tr><td colspan=5 bgcolor="#E5E4E2"><i><b>ADAP active</i></b></td></tr>

<tr>
    <td><i>&mu;'</i></td>
    <td> XX </td>
    <td> XX </td>
    <td> XX </td>
    <td> XX </td>
</tr>

<tr>
    <td><i>&tau;'</i></td>
    <td> XX </td>
    <td> XX </td>
    <td> XX </td>
    <td> XX </td>
</tr>

<tr>
    <td><i>&sigma;'</i></td>
    <td> XX </td>
    <td> XX </td>
    <td> XX </td>
    <td> XX </td>
</tr>

<tr>
    <td><i>&nu;'</i></td>
    <td> XX </td>
    <td> XX </td>
    <td> XX </td>
    <td> XX </td>
</tr>
</table>

**Questions**

* Does everyone immediately initiate ART after enrollment?
* Is engaging in care a requirement for recertification? 
* Are there records of diagnosed date prior to enrollment?

## <div id="ADAPcost">ADAP cost</div>
* Client costs
    - Insurance premium (+)
    - ART out of pocket costs coverage (+)
    - Healthcare out of pocket cost coverage (select services) (+)
* Assessment cost


**Questions**

* On average, what is the ratio of enrollments to applications for ADAP in a year?

