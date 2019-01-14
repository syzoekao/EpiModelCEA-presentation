# DAP enrollment

![enroll](figures/DAPenroll.png)

### Eligibility criteria:
<table>
<tr><th bgcolor="#737CA1"><font COLOR="#FFFFFF"><strong>Program</strong></font></th><th bgcolor="#737CA1"><font COLOR="#FFFFFF"><strong>Triggering event</strong></font></th><th bgcolor="#737CA1"><font COLOR="#FFFFFF"><strong>Income</strong></font></font></th><th bgcolor="#737CA1"><font COLOR="#FFFFFF"><strong>Insurance</strong></font></th><th bgcolor="#737CA1"><font COLOR="#FFFFFF"><strong>Prescription</strong></font></th><th bgcolor="#737CA1"><font COLOR="#FFFFFF"><strong>Risk factors</strong></font></font></th></tr>

<tr><td><b>ADAP</b></td><td>HIV diagnosis</td><td>138%-400% of FPL</td><td>1. Uninsured: find insurance for them<br>2. Insured: exclude medicaid</td><td>Doesn't seem required</td><td>NA</td></tr>

<tr><td><b>PrEP-DAP</b></td><td>HIV- test results (within 14 days)</td><td>>138% FPL for family of 1</td><td>Can be uninsured or insured but <i><b>cannot</i></b> receive medicaid</td><td>The providers are required to certify the prescription</td><td>1. STI+ in the last 12 months.<br>2. Unprotected sex outside of mutually monogamous relationship.<br>3. HIV+ partner.</td></tr>
</table>

### Parameters for HIV+/ADAP
<table>
<tr>
  <th bgcolor="#737CA1"><font COLOR="#FFFFFF"><strong>Parameter</strong></font></th>
  <th bgcolor="#737CA1"><font COLOR="#FFFFFF"><strong>Data Source</strong></font></th>
  <th bgcolor="#737CA1"><font COLOR="#FFFFFF"><strong>Stratification</strong></font></font></th>
  <th bgcolor="#737CA1"><font COLOR="#FFFFFF"><strong>Questions</strong></font></font></th>
</tr>

<tr>
<td><b>General HIV+</b></td>
<td></td>
<td></td>
<td></td>
</tr>

<tr>
<td>Distribution of Treatment Trajectories</td>
<td>Non-ADAP: estimated from MMP, WA HIV Epi report, or assumption.
<br>
ADAP: Calculated from eHARs-linked DAP claims data.
<td>ADAP status, race, income, insurance</td>
<td>Can we calculate all from WA-specific data?</td>
</tr>

<tr>
<td>Time to ART initiation from Dx</td>
<td>WHAMP survey, previous publications</td>
<td>ADAP status, previous treatment, race, income, insurance, treatment trajectory</td>
<td></td>
</tr>

<tr>
<td>Rate of ART discontinuation</td>
<td>WHAMP survey, previous publications</td>
<td>ADAP status, race, income, insurance, treatment trajectory</td>
<td></td>
</tr>

<tr>
<td><b>ADAP Parameters</b></td>
<td></td>
<td></td>
<td></td>
</tr>


<tr>
<td>Rate of ADAP enrollment</td>
<td>WADOH claims data. Calculated from average time from Dx to ADAP enrollment for those enrolled in ADAP.</td>
<td>Race, region</td>
<td></td>
</tr>

<tr>
<td>Rate of ADAP disenrollment</td>
<td>WADOH claims data. Calculated from average time from ADAP enrollment to failure to re-enroll.</td>
<td>Race, region</td>
<td></td>
</tr>

<tr>
<td>ART initiation at program enrollment</td>
<td>Assumption: all new ADAP enrollees start ART immediately.</td>
<td>None</td>
<td>Is this a reasonable assumption?</td>
</tr>

<tr>
<td>Re-evaluation interval</td>
<td>6 months, as in WA policy.</td>
<td>None</td>
<td></td>
</tr>
</table>

### Parameters for HIV-/PrEP DAP
<table>
<tr>
  <th bgcolor="#737CA1"><font COLOR="#FFFFFF"><strong>Parameter</strong></font></th>
  <th bgcolor="#737CA1"><font COLOR="#FFFFFF"><strong>Data Source</strong></font></th>
  <th bgcolor="#737CA1"><font COLOR="#FFFFFF"><strong>Stratification</strong></font></font></th>
  <th bgcolor="#737CA1"><font COLOR="#FFFFFF"><strong>Questions</strong></font></font></th>
</tr>

<tr>
<td><b>General HIV-</b></td>
<td></td>
<td></td>
<td></td>
</tr>

<tr>
<td>Awareness of PrEP</td>
<td>WHPP</td>
<td>Race, income, age, region</td>
<td></td>
</tr>

<tr>
<td>Interest in taking PrEP (given awareness)</td>
<td>WHPP</td>
<td>Race, income, age, region</td>
<td></td>
</tr>

<tr>
<td>Enrolled in PrEP DAP, given awareness and interest</td>
<td>WHPP</td>
<td>Race, income, age, region</td>
<td></td>
</tr>

<tr>
<td>PrEP Usage</td>
<td>WHPP, PrEP DAP Client Survey</td>
<td>PrEP DAP status, race, income, age, region</td>
<td></td>
</tr>

<tr>
<td>PrEP Adherence</td>
<td>WHPP, PrEP DAP Client Survey</td>
<td>PrEP DAP status, race, income, age, region</td>
<td></td>
</tr>

<tr>
<td>Duration of PrEP Use</td>
<td>WHPP, PrEP DAP Client Survey</td>
<td>PrEP DAP status, race, income, age, region</td>
<td></td>
</tr>

<tr>
<td><b>PrEP DAP Parameters</b></td>
<td></td>
<td></td>
<td></td>
</tr>

<tr>
<td>Duration of PrEP DAP enrollment</td>
<td>WADOH claims data, PrEP DAP Client Survey</td>
<td>PrEP DAP status, race, income, age, region</td>
<td></td>
</tr>

<tr>
<td>Re-evaluation interval</td>
<td>WADOH policies (fixed at 1 year)</td>
<td>None</td>
<td></td>
</tr>

</table>


### Questions
* Do ADAP enrollees have to initiate ART to be eligible to ADAP?
* Do PrEP-DAP enrollees have to initiate PrEP to be eligible to PrEP-DAP?
* Are the risk factors considered as elibility criteria in PrEP-DAP application?
* On average, what is the ratio of enrollments to applications for each program?
* Are there records of diagnosed date?


<a href="CostingModelSum.md">Back</a>
