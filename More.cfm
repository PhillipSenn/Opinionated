<cfscript>

</cfscript>

<cfoutput>
<cfinclude template="/Inc/html.cfm">
<link rel="stylesheet" href="More.css">
<cfinclude template="/Inc/body.cfm">
<h1>Given:</h1>
<p id="given">
Pretend you are working on a new side project, one where
you don't have to compromise to anyone, and you are working inside a .cfm page (not inside a function) and this processing is done
prior to the &lt;html> tag.
</p>
<p id="question">
Q: How would you assign the value 1 to the variable x?
</p>
<fieldset>
	<legend>x = 1;</legend>
	<table>
		<thead>
			<tr>
				<th>Description</th>
				<th>People</th>
				<th class="num">Votes</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>Best</td>
				<td>Ray, Ben, Sean</td>
				<td class="num">3</td>
			</tr>
			<tr>
				<td>Good</td>
				<td></td>
				<td class="num">0</td>
			</tr>
			<tr>
				<td>Bad</td>
				<td><a href="Detail.cfm">Phil</a></td>
				<td class="num">1</td>
			</tr>
			<tr>
				<td>Outdated</td>
				<td></td>
				<td class="num">0</td>
			</tr>
			<tr>
				<td>Very Bad</td>
				<td></td>
				<td class="num">0</td>
			</tr>
		</tbody>
		<tfoot>
			<tr>
				<th>Total Votes</th>
				<th></th>
				<th class="num">4</th>
			</tr>
		</tfoot>
	</table>
</fieldset>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>