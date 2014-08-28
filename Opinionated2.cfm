<cfscript>
Scenario = new com.Scenario().Where()
Answer = new com.Answer().Where()
</cfscript>

<cfoutput query="Scenario">
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<fieldset>
	<legend>Given:</legend>
	#Given#
</fieldset>
<h1>Q:</h1>
<h3>#ScenarioDesc#</h3>
<h1>A:</h1>
<table class="no-striped no-hover">
	<thead>
		<tr>
			<th>My</th>
			<th>Solution</th>
		</tr>
	</thead>
	<cfloop query="Answer">
		<tr>
			<td>
				<input type="radio" name="AnswerID" id="AnswerID#AnswerID#">
			</td>
			<td>#AnswerName#</td>
		</tr>
	</cfloop>
</table>
<h1>Next Question:</h1>
<div>How do you instantiate a component?
It needs to be a separate question unto itself in order to limit the number of answers
for this question.
<pre>Cust = new Cust().getAllCustomers()</pre>
</div>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>