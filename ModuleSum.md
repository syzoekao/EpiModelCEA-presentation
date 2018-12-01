# Summary of modules modified and added

* To add the CEA functionality, we added the following groups of factors/features to the `EpiModelHIV` package. 
    - Individual attributes
    - Income/insurance influences the original process
    - DAP enrollment
    - DAP recertification
    - DAP influences outcomes
    - Costs

Color code: 
1. <fspan style="color:#E55451";>Module added</font>
2. <font color="black">Module modified</font>
3. <font color="#4AA02C">Factors/features to be added</font>

<table>
<tr><th><strong>Factors/features</strong></th><th><strong>Modification/addition</strong></th><th><strong>Files changed/added</strong></th></tr>

<tr><td colspan=3><i><b>Individual attributes</b></i></td></tr>

<tr><td>Annual income</td><td>Continuous and categorical income</td><td>param.R<br>mod.initialize.R <br> mod.births.R <br> <font color="#E55451">mod.insure_income.R</font></td></tr>

<tr><td>Insurance</td><td>5 levels: Uninsured, Self-pay bronze, Self-pay silver+, employer, government</td><td>params.R <br> mod.initialize.R <br> mod.births.R <br> <font color="#E55451">mod.insure_income.R</font></td></tr>

<tr><td><font color="#4AA02C">Region</font></td><td></td><td></td></tr>

<tr><td><font color="#4AA02C">Interaction between age and the factors above</font></td><td></td><td></td></tr>

<tr><td colspan=3><i><b>Income/insurance influences process</i></b></td></tr>

<tr><td>Test/trest trajectory</td><td>Test/treat trajectory interacts <br> with insurance type</td><td>mod.initialize.R <br> mod.births.R </td></tr>

<tr><td><u><a href="PrEP.html" style="color: #000000">PrEP awareness</a></u></td><td>Depends on both race and income</td><td>mod.prep.R</td></tr>

<tr><td><u><a href="PrEP.html" style="color: #000000">PrEP access</a></u></td><td>Depends on race, income, and insurance</td><td>mod.prep.R</td></tr>

<tr><td colspan=3><i><b><u><a href="DAPenroll.html" style="color: #000000">DAP enrollment</a></u></i></b></td></tr>

<tr><td>ADAP enrollment at diagnosis</td><td>Enrollemnt triggered at diagnosis.<br>Depends on income and insurance type.</td><td><font color="#E55451">mod.adap.R</font></td></tr>

<tr><td>ADAP enrollment at other times</td><td>Background probability of filing application</td><td><font color="#E55451">mod.adap.R</font></td></tr>

<tr><td>PDAP enrollment</td><td>Depends on insurance type</td><td>mod.prep.R</td></tr>

<tr><td colspan=3><i><b><u><a href="DAPrecert.html" style="color: #000000">DAP recertification</a></u></i></b></td></tr>

<tr><td>ADAP recertification and discontinuation</td><td>Recertify at every 6 months.<br>Potential for change in eligibility due to income and insurance changes.</td><td><font color="#E55451">mod.adap.R</font></td></tr>

<tr><td>PDAP recertification and discontinuation</td><td>Recertify every year.<br>Depends on negative test in 90 days, race, risk factors.</td><td>mod.prep.R</td></tr>

<tr><td colspan=3><i><b><u><a href="DAPoutcome.html" style="color: #000000">DAP influences outcomes</a></u></i></b></td></tr>

<tr><td>Test/treat trajectory</td><td>ADAP causes individuals to change from trajectory 2 to 3 or 4</td><td><font color="#E55451">mod.adap.R</font></td></tr>

<tr><td>ART initiation</td><td>ADAP enrollees have higher probability to start ART</td><td>mod.tx.R</td></tr>

<tr><td>ART discontinuation/<br>reinitiation</td><td>ADAP enrollees have lower probability to stop ART. <br>ADAP enrollees have higher probability to reinitiate ART. <br>There might be other factors influencing ADAP discontinuation: on treatment, income, and insurance, etc.</td><td>mod.tx.R</td></tr>

<tr><td colspan=3><i><b><u><a href="DAPcost.html" style="color: #000000">Costs</a></u></i></b></td></tr>

<tr><td>ADAP client costs</td><td>Premium<br>ART treatment<br>STI testing/treatment costs<br>other healthcare costs</td><td><font color="#E55451">mod.cost.R</font></td></tr>

<tr><td>PDAP client costs</td><td>Gilead co-pay<br>HIV testing costs<br>STI testing/treatment cost<br>Other healthcare costs</td><td><font color="#E55451">mod.cost.R</font></td></tr>

<tr><td><font color="#4AA02C">ADAP assessment costs</font></td><td></td><td></font></td></tr>

<tr><td><font color="#4AA02C">PDAP assessment costs</font></td><td></td><td></td></tr>

</table>






