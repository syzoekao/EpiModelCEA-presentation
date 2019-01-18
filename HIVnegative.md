# People Who Do Not Have HIV

##<div id="pdap">Washington State PrEP-DAP</div>
- Goal is to support access to PrEP for at-risk HIV-negative individuals
- Fully state funded; Washington state was the first to implement
- Gilead (pharmaceutical company) already provides patient drug co-pay assistance
    + Up to $7,200 per year (effective Sept. 1, 2018) for privately-insured
- PrEP-DAP Benefits:
    + Provides assistance in enrolling in Medicaid for those who are eligible
    + Provides assistance in enrolling in Gilead patient assistance programs
    + Pays client-cost of lab tests and medical visits needed for PrEP use (quarterly HIV/STI testing, kidney function, etc.)
    + Pays PrEP co-pays once Gilead benefit is exhausted
- Enrollment criteria: [Eligibility](https://www.doh.wa.gov/Portals/1/Documents/Pubs/150-082-PayingForPrEPDecisionTree.pdf)
    + Income: no restriction
    + Insurance: cannot receive Medicaid or be eligible for Medicaid
    + Must obtain negative HIV test result within 14 days
    + Prescription: providers are required to certify the prescription
    + PrEP indication is based on risk factors:
        * Test positive for STIs (gonorrhea, chlamydia, and syphilis) in the last 12 months
        * Unprotected sex outside of mutually monogamous relationship
        * HIV+ partners
- Recertification criteria:
    + Frequency of recertification: every year
    + Test: test HIV- in the past 90 days
    + Proof of taking PrEP: NA


##<div id="PDAPandContinuum">PrEP-DAP and care continuum</div>

* **Recommended**: PrEP is recommended for people who meet the following criteria:
    - Diagnosed with rectal gonorrhea or syphilis in the past 12 months.
    - Ongoing sexual relationships with HIV+ partners who are not virally suppressed or not on ART
* **Discussed**: Providers should discuss use of PrEP with a person who meets the following criteria:
    - Have unprotected sex outside of mutually monogamous partnerships with a man who is HIV-.
    - Diagnosed with gonorrhea or chlamydia in the past 12 months.
    - Ongoing sexual partnerships with HIV+ who are virally suppressed.
* **No PrEP indication**: does not meet criteria for "Recommend" or "Discuss"
* Only individuals who are aware of and interested in PrEP can be enrolled in PrEP-DAP
* PrEP-DAP modifies the PrEP dynamics.

![PrEPcontinuum3](figures/PrEPContinuum3.png)

**Parameters**

Note: in the WHPP summary, they split people up first by indication and then by awareness + interest.
That may make more conceptual sense. Also, since R/D/N is evaluated at each time step, we
might want to put that first.

<table>
<tr>
    <th bgcolor="#737CA1"><font COLOR="#FFFFFF"><strong>Label</strong></font></th>
    <th bgcolor="#737CA1"><font COLOR="#FFFFFF"><strong>Parameter</strong></font></th>
    <th bgcolor="#737CA1"><font COLOR="#FFFFFF"><strong>Data Source</strong></font></th>
    <th bgcolor="#737CA1"><font COLOR="#FFFFFF"><strong>Stratification</strong></font></th>
    <th bgcolor="#737CA1"><font COLOR="#FFFFFF"><strong>Question</strong></font></th>
</tr>

<tr><td colspan=5 bgcolor="#E5E4E2"><i><b>PrEP Awareness, Indication, Interest</i></b></td></tr>

<tr>
    <td><i>a</i></td>
    <td> Percentage of HIV- people who are aware of PrEP </td>
    <td> WHPP </td>
    <td> Race, income, insurance, region </td>
    <td> ? </td>
</tr>

<tr>
    <td><i>&phi;1</i></td>
    <td> Percentage of those aware for whom PrEP is recommended </td>
    <td> WHPP </td>
    <td> Race, income, insurance, region </td>
    <td> ? </td>
</tr>

<tr>
    <td><i>&phi;2</i></td>
    <td> Percentage of those aware for whom PrEP should be discussed </td>
    <td> WHPP </td>
    <td> Race, income, insurance, region </td>
    <td> ? </td>
</tr>

<tr>
    <td><i>t1, t2, t3</i></td>
    <td> Percentage of people with each indication who are interested in taking PrEP </td>
    <td> WHPP </td>
    <td> Race, income, insurance, region </td>
    <td> ? </td>
</tr>

<tr><td colspan=5 bgcolor="#E5E4E2"><i><b>PrEP DAP</i></b></td></tr>

<tr>
    <td><i>e1, e2, e3</i></td>
    <td> Percentage of interested people with each indication who are enrolled in PrEP DAP </td>
    <td> WHPP </td>
    <td> Race, income, insurance, region </td>
    <td> ? </td>
</tr>

</table>



##<div id="PrEPdynamics">PrEP and PrEP-DAP dynamics</div>

![PrEPdynamics](figures/PrEPdynamics.png)

* In the PrEP dynamics, we considered PrEP indication dynamics and PrEP-DAP dynamics.
* Changes in PrEP indication dynamics are resulted in changes in partnerships and STI dynamics.
* In addition to the changes in partnerships and STI dynamics, PrEP-DAP dynamics might also depend on and the behaviors of meeting the requirements of the program.

**Parameters**
<table>
<tr>
    <th bgcolor="#737CA1"><font COLOR="#FFFFFF"><strong>Label</strong></font></th>
    <th bgcolor="#737CA1"><font COLOR="#FFFFFF"><strong>Parameter</strong></font></th>
    <th bgcolor="#737CA1"><font COLOR="#FFFFFF"><strong>Data Source</strong></font></th>
    <th bgcolor="#737CA1"><font COLOR="#FFFFFF"><strong>Stratification</strong></font></th>
    <th bgcolor="#737CA1"><font COLOR="#FFFFFF"><strong>Question</strong></font></th>
</tr>

<tr><td colspan=5 bgcolor="#E5E4E2"><i><b>PrEP indication dynamics</i></b></td></tr>
<tr>
    <td><i>&kappa;</i></td>
    <td> based on risk behavior, whether PrEP is R/D/N </td>
    <td> NA; determined for each person in model </td>
    <td> depends on risk behavior for each group </td>
    <td> ? </td>
</tr>

<tr>
    <td><i>&pi;</i></td>
    <td> opposite of &kappa; </td>
    <td> "" </td>
    <td> "" </td>
    <td> "" </td>
</tr>

<tr><td colspan=5 bgcolor="#E5E4E2"><i><b>PrEP-DAP dynamics</i></b></td></tr>

<tr>
    <td><i>&rho;1, &rho;2</i></td>
    <td> Rate of entering PDAP based on indication and PDAP=TRUE</td>
    <td> ? </td>
    <td> ? </td>
    <td> BIG QUESTION HERE </td>
</tr>

<tr>
    <td><i>&omega;1, &omega;2</i></td>
    <td> Rate of leaving PDAP </td>
    <td> Claims data; calculated from duration of enrollment</td>
    <td> Race, income, insurance, PrEP indication</td>
    <td> ? </td>
</tr>

<tr><td colspan=5 bgcolor="#E5E4E2"><i><b>PrEP dynamics</i></b></td></tr>

<tr>
    <td><i>u1, u2, u3, u4</i></td>
    <td> Weekly probability of initiating PrEP</td>
    <td> WHPP, claims data (?) </td>
    <td> PDAP status, PrEP indication, race, income, insurance</td>
    <td> ? </td>
</tr>

<tr>
    <td><i>s1, s2, s3, s4</i></td>
    <td> Weekly probability of discontinuing PrEP </td>
    <td> WHPP, claims data (?) </td>
    <td> PDAP status, PrEP indication, race, income, insurance </td>
    <td> ? </td>
</tr>
</table>

**Questions**

* Does everyone immediately initiate PrEP after enrollment?
* Are there records of diagnosed date prior to enrollment?

## <div id="PDAPcost">PrEP-DAP cost</div>
* Client costs
    - Copays, coinsurance, and/or deductible for:
      - PrEP medication, after Gilead benefits are exhausted
      - Medical and lab visits
      - STI treatment
      - Other relevant healthcare (selective services)
* Assessment cost
* Overhead

**Questions**

* On average, what is the ratio of enrollments to applications for PrEP-DAP in a year?
