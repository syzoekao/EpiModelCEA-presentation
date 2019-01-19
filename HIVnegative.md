# People Who Do Not Have HIV

##<div id="PDAPandContinuum">PrEP-DAP and care continuum</div>

####[Enrollment criteria](https://www.doh.wa.gov/Portals/1/Documents/Pubs/150-082-PayingForPrEPDecisionTree.pdf)
+ Income: no restriction
+ Insurance: cannot receive Medicaid or be eligible for Medicaid
+ Must obtain negative HIV test result within 14 days
+ Prescription: providers are required to certify the prescription
+ PrEP indication is based on risk factors:
    * Test positive for STIs (gonorrhea, chlamydia, and syphilis) in the last 12 months
    * Unprotected sex outside of mutually monogamous relationship
    * HIV+ partners

![PrEPcontinuum](figures/PrEPcontinuum.png)

* **Recommended**: PrEP is recommended for people who meet the following criteria:
    - Diagnosed with rectal gonorrhea or syphilis in the past 12 months.
    - Ongoing sexual relationships with HIV+ partners who are not virally suppressed or not on ART
* **Discussed**: Providers should discuss use of PrEP with a person who meets the following criteria:
    - Have unprotected sex outside of mutually monogamous partnerships with a man who is HIV-.
    - Diagnosed with gonorrhea or chlamydia in the past 12 months.
    - Ongoing sexual partnerships with HIV+ who are virally suppressed.
* **No PrEP indication**: does not meet criteria for "Recommend" or "Discuss"
* Only individuals who are aware of and interested in PrEP can be enrolled in PrEP-DAP
* PrEP-DAP could increase PrEP initiation and decrease PrEP stoppage. 

####Parameters

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

<tr><td colspan=5 bgcolor="#E5E4E2"><i><b>PrEP-DAP</i></b></td></tr>

<tr>
    <td><i>s1, s2, s3</i></td>
    <td> Percentage of interested people with each indication who are assessed for PrEP-DAP </td>
    <td> XX </td>
    <td> XX </td>
    <td> ? </td>
</tr>

<tr>
    <td><i>e1, e2, e3</i></td>
    <td> Percentage of people who are eligible for PrEP-DAP among individuals who are assessed for PrEP-DAP</td>
    <td> XX </td>
    <td> XX </td>
    <td> ? </td>
</tr>

<tr><td colspan=5 bgcolor="#E5E4E2"><i><b>PrEP uptake</i></b></td></tr>

<tr>
    <td><i>u1, u2, u3</i></td>
    <td> PrEP uptake for people who are eligible for PrEP-DAP </td>
    <td> XX </td>
    <td> XX </td>
    <td> ? </td>
</tr>

<tr>
    <td><i>v1, v2, v3</i></td>
    <td> PrEP uptake for people who are not eligible for PrEP-DAP </td>
    <td> XX </td>
    <td> XX </td>
    <td> ? </td>
</tr>

<tr>
    <td><i>w1, w2, w3</i></td>
    <td> PrEP uptake for people who are not assessed for PrEP-DAP </td>
    <td> XX </td>
    <td> XX </td>
    <td> ? </td>
</tr>

</table>

####Questions

* Does everyone immediately initiate PrEP after enrollment?

##<div id="PDAPrecertify">PrEP-DAP recertification</div>

####Recertification criteria 
+ Frequency of recertification: every year
+ Test: test HIV- in the past 90 days
+ Proof of taking PrEP: NA

####Recertification process
+ PrEP-DAP enrollees go through a similar recertification process to ADAP enrollees. 
+ However, the reasons of disenrollment (informing <font color='red'><i>p</i></font>) could be more complicated than disenrollment in ADAP: 
    * stopping PrEP
    * no risk factors 
    * do not meet the recertification criteria

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
    <td><i>p</i></td>
    <td> Probability of disenrollment </td>
    <td> XX </td>
    <td> XX </td>
    <td> ? </td>
</tr>
</table>


## <div id="PDAPcost">PrEP-DAP cost</div>
* Client costs
    - Copays, coinsurance, and/or deductible for:
      - PrEP medication, after Gilead benefits are exhausted
      - Medical and lab visits
      - STI treatment
      - Other relevant healthcare (selective services)
* Assessment cost
* Overhead

####Questions

* On average, what is the ratio of enrollments to applications for PrEP-DAP in a year?
