# Summary of modules modified and added

* To add the CEA functionality, we added the following groups of factors/features to the `EpiModelHIV` package. 
    - Individual attributes
    - Income and insurance influences on the original process
    - DAP enrollment
    - DAP recertification
    - DAP influence on outcomes
    - Costs

Color code: 
1. <font color="#E55451">Module added</font>
2. <font color="black">Module modified</font>
3. <font color="#4AA02C">Factors/features to be added</font>

<table>
<tr><th bgcolor="#737CA1"><font COLOR="#FFFFFF"><strong>Factors/features</strong></font></th><th bgcolor="#737CA1"><font COLOR="#FFFFFF"><strong>Modification/addition</strong></font></th><th bgcolor="#737CA1"><font COLOR="#FFFFFF"><strong>Files changed/added</strong></font></th></tr>

<tr><td colspan=3 bgcolor="#E5E4E2"><i><b>Individual attributes</b></i></td></tr>

<tr><td>Annual income</td><td>Continuous and categorical income</td><td>param.R<br>mod.initialize.R <br> mod.births.R <br> <font color="#E55451">mod.insure_income.R</font></td></tr>

<tr><td bgcolor="#FFFFFF">Insurance</td><td bgcolor="#FFFFFF">5 levels: Uninsured, Self-pay bronze, Self-pay silver+, employer, government</td><td bgcolor="#FFFFFF">params.R <br> mod.initialize.R <br> mod.births.R <br> <font color="#E55451">mod.insure_income.R</font></td></tr>

<tr><td><font color="#4AA02C">Region</font></td><td></td><td></td></tr>

<tr><td bgcolor="#FFFFFF"><font color="#4AA02C">Interaction between age and the factors above</font></td><td bgcolor="#FFFFFF"></td><td bgcolor="#FFFFFF"></td></tr>

<tr><td colspan=3 bgcolor="#E5E4E2"><i><b>Income/insurance influences on process</i></b></td></tr>

<tr><td bgcolor="#FFFFFF">Test/treat trajectory</td><td bgcolor="#FFFFFF">Test/treat trajectory interacts <br> with insurance type</td><td bgcolor="#FFFFFF">mod.initialize.R <br> mod.births.R </td></tr>

<tr><td><div id="PrEP"><u><a href="PrEP.md" style="color: #000000">PrEP awareness</a></u></div></td><td>Depends on both race and income</td><td>mod.prep.R</td></tr>

<tr><td bgcolor="#FFFFFF"><u><a href="PrEP.md" style="color: #000000">PrEP access</a></u></td><td bgcolor="#FFFFFF">Depends on race, income, and insurance</td><td bgcolor="#FFFFFF">mod.prep.R</td></tr>

<tr><td colspan=3 bgcolor="#E5E4E2"><div id="DAPenroll"><i><b><u><a href="DAPenroll.md" style="color: #000000">DAP enrollment</a></u></i></div></b></td></tr>

<tr><td bgcolor="#FFFFFF">ADAP enrollment at diagnosis</td><td bgcolor="#FFFFFF">Enrollemnt triggered at diagnosis.<br>Depends on income and insurance type.</td><td bgcolor="#FFFFFF"><font color="#E55451">mod.adap.R</font></td></tr>

<tr><td>ADAP enrollment at other times</td><td>Background probability of filing application</td><td><font color="#E55451">mod.adap.R</font></td></tr>

<tr><td bgcolor="#FFFFFF">PDAP enrollment</td><td bgcolor="#FFFFFF">Depends on insurance type</td><td bgcolor="#FFFFFF">mod.prep.R</td></tr>

<tr><td colspan=3 bgcolor="#E5E4E2"><div id="DAPrecert"><i><b><u><a href="DAPrecert.md" style="color: #000000">DAP recertification</a></u></b></i></div></td></tr>

<tr><td bgcolor="#FFFFFF">ADAP recertification and discontinuation</td><td bgcolor="#FFFFFF">Recertify at every 6 months.<br>Potential for change in eligibility due to income and insurance changes.</td><td bgcolor="#FFFFFF"><font color="#E55451">mod.adap.R</font></td></tr>

<tr><td>PDAP recertification and discontinuation</td><td>Recertify every year.<br>Depends on negative test in 90 days, race, risk factors.</td><td>mod.prep.R</td></tr>

<tr><td colspan=3 bgcolor="#E5E4E2"><div id="DAPoutcome"><i><b><u><a href="DAPoutcome.md" style="color: #000000">DAP influence on outcomes</a></u></b></i></div></td></tr>

<tr><td>Test/treat trajectory</td><td>ADAP causes individuals to change from trajectory 2 to 3 or 4</td><td><font color="#E55451">mod.adap.R</font></td></tr>

<tr><td bgcolor="#FFFFFF">ART initiation</td><td bgcolor="#FFFFFF">ADAP enrollees have higher probability to start ART</td><td bgcolor="#FFFFFF">mod.tx.R</td></tr>

<tr><td>ART discontinuation/<br>reinitiation</td><td>ADAP enrollees have lower probability to stop ART. <br>ADAP enrollees have higher probability to reinitiate ART. <br>There might be other factors influencing ADAP discontinuation: on treatment, income, and insurance, etc.</td><td>mod.tx.R</td></tr>

<tr><td bgcolor="#FFFFFF">PrEP initiation</td><td bgcolor="#FFFFFF">Depends on risk factors and PDAP attribute</td><td bgcolor="#FFFFFF">mod.prep.R</td></tr>

<tr><td colspan=3 bgcolor="#E5E4E2"><div id="DAPcost"><i><b><u><a href="DAPcost.md" style="color: #000000">Costs</a></u></b></i></div></td></tr>

<tr><td bgcolor="#FFFFFF">ADAP client costs</td><td bgcolor="#FFFFFF">Premium<br>ART treatment<br>STI testing/treatment costs<br>other healthcare costs</td><td bgcolor="#FFFFFF"><font color="#E55451">mod.cost.R</font></td></tr>

<tr><td>PDAP client costs</td><td>Gilead benefit<br>HIV testing costs<br>STI testing/treatment cost<br>Other healthcare costs</td><td><font color="#E55451">mod.cost.R</font></td></tr>

<tr><td bgcolor="#FFFFFF"><font color="#4AA02C">ADAP assessment costs</font></td><td bgcolor="#FFFFFF"></td><td bgcolor="#FFFFFF"></font></td></tr>

<tr><td><font color="#4AA02C">PDAP assessment costs</font></td><td></td><td></td></tr>

</table>






