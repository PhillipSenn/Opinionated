<cfscript>

</cfscript>

<cfoutput>
<cfinclude template="/Inc/html.cfm">
<link rel="stylesheet" href="//ajax.googleapis.com/ajax/libs/jqueryui/1.11.0/themes/smoothness/jquery-ui.css" />
<link rel="stylesheet" href="Opinionated.css">
<cfinclude template="/Inc/body.cfm">
<p><span class="label-success">8/27/2014</span>: <a href="Opinionated2.cfm">click here to see a new example</a> based on 
data coming from a database instead of a pure mockup.</p>
<p>This started out as a simple example, and I soon thought I had chosen a bad use case.
But then again, maybe not.  This does show after all, the number of decisions that have to be made
by someone trying to learn the language.  If something as fundamental as assigning a value to a variable
has all these syntactically valid variations, then the learner will want to know which one(s) the 
community has decided upon using.
</p>
<p>
How many variations will there be with selecting from a database? Even choosing what database as a 
datasource is decision!</p>
<h1>Given:</h1>
<p id="given">
Pretend you are working on a new side project, one where
you don't have to compromise to anyone, and you are working inside a .cfm page (not inside a function) and this processing is done
prior to the &lt;html> tag.
</p>
<p id="question">
Q: How would you assign the value 1 to the variable x?
</p>
<div class="row">
	<div class="col-sm-3 pull-right">
		<select name="QuestionValid">
			<option value="0">Valid question?</option>
			<option value="1">This is an invalid question</option>
		</select>
	</div>
</div>
<p>&nbsp;</p>
<fieldset>
	<legend>Do you use script or tag based syntax?</legend>
	<table>
		<thead>
			<tr>
				<th colspan="2">Valid in</th>
				<th>Option</th>
				<th>Opinion</th>
				<th>Explanation</th>
				<th>Chart</th>
				<th class="num">Votes</th>
			</tr>
		</thead>
		<tbody>
		<tr>
			<td>Railo</td>
			<td>CF11</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td class="num">&nbsp;</td>
		</tr>
		<tr>
			<td>&##9745;</td>
			<td>&##9745;</td>
			<td> &lt;cfset x = 1> </td>
			<td>
				<select name="Opinion">
					<option value="0">No opinion</option>
					<option value="2">Best</option>
					<option value="1">Good</option>
					<option value="-1">Outdated</option>
					<option value="-2">Bad</option>
					<option value="-3">Very bad</option>
				</select>
			</td>
			<td>No trailing slash</td>
			<td title="2 Best, 1 Bad"> <span class="bar">2,0,0,-1,0</span></td>
			<td class="num"><a href="More.cfm">3</a></td>
		</tr>

		<tr>
			<td>&##9745;</td>
			<td>&##9745;</td>
			<td>&lt;cfset Variables.x = 1&gt;</td>
			<td>
				<select name="Opinion17">
					<option value="0">No opinion</option>
					<option value="2">Best</option>
					<option value="1">Good</option>
					<option value="-1">Outdated</option>
					<option value="-2">Bad</option>
					<option value="-3">Very bad</option>
				</select>
			</td>
			<td>Explicity scope the Variables scope</td>
			<td>&nbsp;</td>
			<td class="num">&nbsp;</td>
		</tr>
		<tr>
			<td>&##9745;</td>
			<td>&##9745;</td>
			<td>&lt;cfset cgi.x = 1&gt;</td>
			<td>
				<select name="Opinion18">
					<option value="0">No opinion</option>
					<option value="2">Best</option>
					<option value="1">Good</option>
					<option value="-1">Outdated</option>
					<option value="-2">Bad</option>
					<option value="-3">Very bad</option>
				</select>
			</td>
			<td>Put it in the cgi scope. They'll never expect to find it there!</td>
			<td>&nbsp;</td>
			<td class="num">&nbsp;</td>
		</tr>
		<tr>
			<td>&##9745;</td>
			<td>&##9745;</td>
			<td>&lt;cfset url.x = 1&gt;</td>
			<td>
				<select name="Opinion19">
					<option value="0">No opinion</option>
					<option value="2">Best</option>
					<option value="1">Good</option>
					<option value="-1">Outdated</option>
					<option value="-2">Bad</option>
					<option value="-3">Very bad</option>
				</select>
			</td>
			<td>Hide in in plain sight - in the url scope!</td>
			<td>&nbsp;</td>
			<td class="num">&nbsp;</td>
		</tr>
		<tr>
			<td>&##9745;</td>
			<td>&##9745;</td>
			<td>&lt;cfset form.x = 1&gt;</td>
			<td>
				<select name="Opinion20">
					<option value="0">No opinion</option>
					<option value="2">Best</option>
					<option value="1">Good</option>
					<option value="-1">Outdated</option>
					<option value="-2">Bad</option>
					<option value="-3">Very bad</option>
				</select>
			</td>
			<td>Explicity scope the form scope </td>
			<td>&nbsp;</td>
			<td class="num">&nbsp;</td>
		</tr>
		<tr>
			<td>&##9745;</td>
			<td>&##9745;</td>
			<td>&lt;cfcookie name=&quot;x&quot; value=&quot;1&quot;&gt;</td>
			<td>
				<select name="Opinion21">
					<option value="0">No opinion</option>
					<option value="2">Best</option>
					<option value="1">Good</option>
					<option value="-1">Outdated</option>
					<option value="-2">Bad</option>
					<option value="-3">Very bad</option>
				</select>
			</td>
			<td>Why use your memory when you can use the clients?</td>
			<td>&nbsp;</td>
			<td class="num">&nbsp;</td>
		</tr>
		<tr>
			<td>&##9745;</td>
			<td>&##9745;</td>
			<td>&lt;cfset client.x = 1&gt;</td>
			<td>
				<select name="Opinion22">
					<option value="0">No opinion</option>
					<option value="2">Best</option>
					<option value="1">Good</option>
					<option value="-1">Outdated</option>
					<option value="-2">Bad</option>
					<option value="-3">Very bad</option>
				</select>
			</td>
			<td>Say yes to the registry!</td>
			<td>&nbsp;</td>
			<td class="num">&nbsp;</td>
		</tr>

		<tr>
			<td>&##9745;</td>
			<td>&##9745;</td>
			<td>
				&lt;cfset x = 1 />
			</td>
			<td>
				<select name="Opinion23">
					<option value="0">No opinion</option>
					<option value="2">Best</option>
					<option value="1">Good</option>
					<option value="-1">Outdated</option>
					<option value="-2">Bad</option>
					<option value="-3">Very bad</option>
				</select>
				<!--
				<div class="slider"></div>
				-->
			</td>
			<td>A trailing slash</td>
			<td title="1 Best, 3 Bad"><span class="bar">1,0,0,-3,0</span></td>
			<td class="num">4</td>
		</tr>
		
		<tr>
			<td>&##9745;</td>
			<td>&##9745;</td>
			<td>&lt;cfset Variables.x = 1 /&gt;</td>
			<td>
				<select name="Opinion9">
					<option value="0">No opinion</option>
					<option value="2">Best</option>
					<option value="1">Good</option>
					<option value="-1">Outdated</option>
					<option value="-2">Bad</option>
					<option value="-3">Very bad</option>
				</select>
			</td>
			<td>A trailing slash</td>
			<td>&nbsp;</td>
			<td class="num">&nbsp;</td>
		</tr>
		<tr>
			<td>&##9745;</td>
			<td>&##9745;</td>
			<td>&lt;cfset cgi.x = 1 /&gt;</td>
			<td>
				<select name="Opinion11">
					<option value="0">No opinion</option>
					<option value="2">Best</option>
					<option value="1">Good</option>
					<option value="-1">Outdated</option>
					<option value="-2">Bad</option>
					<option value="-3">Very bad</option>
				</select>
			</td>
			<td>A trailing slash</td>
			<td>&nbsp;</td>
			<td class="num">&nbsp;</td>
		</tr>
		<tr>
			<td>&##9745;</td>
			<td>&##9745;</td>
			<td>&lt;cfset url.x = 1 /&gt;</td>
			<td>
				<select name="Opinion12">
					<option value="0">No opinion</option>
					<option value="2">Best</option>
					<option value="1">Good</option>
					<option value="-1">Outdated</option>
					<option value="-2">Bad</option>
					<option value="-3">Very bad</option>
				</select>
			</td>
			<td>A trailing slash</td>
			<td>&nbsp;</td>
			<td class="num">&nbsp;</td>
		</tr>
		<tr>
			<td>&##9745;</td>
			<td>&##9745;</td>
			<td>&lt;cfset form.x = 1 /&gt;</td>
			<td>
				<select name="Opinion24">
					<option value="0">No opinion</option>
					<option value="2">Best</option>
					<option value="1">Good</option>
					<option value="-1">Outdated</option>
					<option value="-2">Bad</option>
					<option value="-3">Very bad</option>
				</select>
			</td>
			<td>A trailing slash</td>
			<td>&nbsp;</td>
			<td class="num">&nbsp;</td>
		</tr>
		<tr>
			<td>&##9745;</td>
			<td>&##9745;</td>
			<td>&lt;cfcookie name=&quot;x&quot; value=&quot;1&quot; /&gt;</td>
			<td>
				<select name="Opinion13">
					<option value="0">No opinion</option>
					<option value="2">Best</option>
					<option value="1">Good</option>
					<option value="-1">Outdated</option>
					<option value="-2">Bad</option>
					<option value="-3">Very bad</option>
				</select>
			</td>
			<td>A trailing slash</td>
			<td>&nbsp;</td>
			<td class="num">&nbsp;</td>
		</tr>
		<tr>
			<td>&##9745;</td>
			<td>&##9745;</td>
			<td>&lt;cfset client.x = 1 /&gt;</td>
			<td>
				<select name="Opinion14">
					<option value="0">No opinion</option>
					<option value="2">Best</option>
					<option value="1">Good</option>
					<option value="-1">Outdated</option>
					<option value="-2">Bad</option>
					<option value="-3">Very bad</option>
				</select>
			</td>
			<td>A trailing slash</td>
			<td>&nbsp;</td>
			<td class="num">&nbsp;</td>
		</tr>
		<tr>
			<td>&##9745;</td>
			<td>&##9745;</td>
			<td>&lt;cfcontent name=&quot;x&quot;&gt;1&lt;/cfcontent&gt;</td>
			<td>
				<select name="Opinion6">
					<option value="0">No opinion</option>
					<option value="2">Best</option>
					<option value="1">Good</option>
					<option value="-1">Outdated</option>
					<option value="-2">Bad</option>
					<option value="-3">Very bad</option>
				</select>
			</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td class="num">&nbsp;</td>
		</tr>
		<tr>
			<td>&##9745;</td>
			<td>&##9745;</td>
			<td><a href="Setter.cfm">setX(1)</a></td>
			<td>
				<select name="Opinion10">
					<option value="0">No opinion</option>
					<option value="2">Best</option>
					<option value="1">Good</option>
					<option value="-1">Outdated</option>
					<option value="-2">Bad</option>
					<option value="-3">Very bad</option>
				</select>
			</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td class="num">&nbsp;</td>
		</tr>
		<tr>
			<td colspan="7" class="assumption">Assuming a cfscript tag:</td>
			</tr>
		<tr>
			<td>&##9745;</td>
			<td>&##9745;</td>
			<td>
				x = 1;
			</td>
			<td>
				<select name="Opinion3">
					<option value="0">No opinion</option>
					<option value="2">Best</option>
					<option value="1">Good</option>
					<option value="-1">Outdated</option>
					<option value="-2">Bad</option>
					<option value="-3">Very bad</option>
				</select>
			</td>
			<td>A semicolon at the end of the statement</td>
			<td> <span class="bar">3,0,-1,0,0</span></td>
			<td class="num">4</td>

		</tr>

		<tr>
			<td>&##9745;</td>
			<td>&##9745;</td>
			<td>
				Variables.x = 1;</td>
			<td>
				<select name="Opinion25">
					<option value="0">No opinion</option>
					<option value="2">Best</option>
					<option value="1">Good</option>
					<option value="-1">Outdated</option>
					<option value="-2">Bad</option>
					<option value="-3">Very bad</option>
				</select>
			</td>
			<td>Explicitly using the Variables scope</td>
			<td> <span class="bar">1,2,-1,-2,0</span></td>
			<td class="num">5</td>
			
		</tr>

		<tr>
			<td>&##9745;</td>
			<td>&##9745;</td>
			<td>cgi.x = 1;</td>
			<td>
				<select name="Opinion26">
					<option value="0">No opinion</option>
					<option value="2">Best</option>
					<option value="1">Good</option>
					<option value="-1">Outdated</option>
					<option value="-2">Bad</option>
					<option value="-3">Very bad</option>
				</select>
			</td>
			<td>ridiculous</td>
			<td>&nbsp;</td>
			<td class="num">&nbsp;</td>
		</tr>
		<tr>
			<td>&##9745;</td>
			<td>&##9745;</td>
			<td>
				url.x = 1;
			</td>
			<td>
				<select name="Opinion27">
					<option value="0">No opinion</option>
					<option value="2">Best</option>
					<option value="1">Good</option>
					<option value="-1">Outdated</option>
					<option value="-2">Bad</option>
					<option value="-3">Very bad</option>
				</select>
			</td>
			<td>Assigning the url scope to be use implicityly.</td>
			<td> <span class="bar">0,0,0,-7,0</span></td>
			<td class="num">7</td>

		</tr>
		<tr>
			<td>&##9745;</td>
			<td>&##9745;</td>
			<td> form.x = 1; </td>
			<td>
				<select name="Opinion28">
					<option value="0">No opinion</option>
					<option value="2">Best</option>
					<option value="1">Good</option>
					<option value="-1">Outdated</option>
					<option value="-2">Bad</option>
					<option value="-3">Very bad</option>
				</select>
			</td>
			<td>Assigning the form scope to be used implicitly.</td>
			<td> <span class="bar">0,1,-1,0,0</span></td>
			<td class="num">2</td>
		</tr>

		<tr>
			<td>&##9745;</td>
			<td>&##9745;</td>
			<td>cookie name=&quot;x&quot; value=&quot;1&quot;;</td>
			<td>
				<select name="Opinion29">
					<option value="0">No opinion</option>
					<option value="2">Best</option>
					<option value="1">Good</option>
					<option value="-1">Outdated</option>
					<option value="-2">Bad</option>
					<option value="-3">Very bad</option>
				</select>
			</td>
			<td>No a requirement</td>
			<td>&nbsp;</td>
			<td class="num">&nbsp;</td>
		</tr>
		<tr>
			<td>&##9745;</td>
			<td>&##9745;</td>
			<td>
				client.x = 1;
			</td>
			<td>
				<select name="Opinion30">
					<option value="0">No opinion</option>
					<option value="2">Best</option>
					<option value="1">Good</option>
					<option value="-1">Outdated</option>
					<option value="-2">Bad</option>
					<option value="-3">Very bad</option>
				</select>
			</td>
			<td>Assigning the client scope to be use implicityly.<br>
			Feel free to have a negative opinion on this one.</td>
			<td> <span class="bar">0,0,0,0,-5</span></td>
			<td class="num">5</td>

		</tr>
		<tr>
			<td>&##9745;</td>
			<td>&nbsp;</td>
			<td> x = 1 </td>
			<td>
				<select name="Opinion4">
					<option value="0">No opinion</option>
					<option value="2">Best</option>
					<option value="1">Good</option>
					<option value="-1">Outdated</option>
					<option value="-2">Bad</option>
					<option value="-3">Very bad</option>
				</select>
			</td>
			<td>No semicolon</td>
			<td> <span class="bar">1,0,0,-3,0</span></td>
			<td class="num">4</td>
		</tr>
		<tr>
			<td>&##9745;</td>
			<td>&nbsp;</td>
			<td>
				Variables.x = 1</td>
			<td>
				<select name="Opinion5">
					<option value="0">No opinion</option>
					<option value="2">Best</option>
					<option value="1">Good</option>
					<option value="-1">Outdated</option>
					<option value="-2">Bad</option>
					<option value="-3">Very bad</option>
				</select>
			</td>
			<td>No semicolon</td>
			<td>&nbsp;</td>
			<td class="num">&nbsp;</td>
			
		</tr>

		<tr>
			<td>&##9745;</td>
			<td>&nbsp;</td>
			<td>cgi.x = 1</td>
			<td>
				<select name="Opinion15">
					<option value="0">No opinion</option>
					<option value="2">Best</option>
					<option value="1">Good</option>
					<option value="-1">Outdated</option>
					<option value="-2">Bad</option>
					<option value="-3">Very bad</option>
				</select>
			</td>
			<td>No semicolon</td>
			<td>&nbsp;</td>
			<td class="num">&nbsp;</td>
		</tr>
		<tr>
			<td>&##9745;</td>
			<td>&nbsp;</td>
			<td>
				url.x = 1</td>
			<td>
				<select name="Opinion7">
					<option value="0">No opinion</option>
					<option value="2">Best</option>
					<option value="1">Good</option>
					<option value="-1">Outdated</option>
					<option value="-2">Bad</option>
					<option value="-3">Very bad</option>
				</select>
			</td>
			<td>No semicolon</td>
			<td>&nbsp;</td>
			<td class="num">&nbsp;</td>

		</tr>
		<tr>
			<td>&##9745;</td>
			<td>&nbsp;</td>
			<td> form.x = 1</td>
			<td>
				<select name="Opinion2">
					<option value="0">No opinion</option>
					<option value="2">Best</option>
					<option value="1">Good</option>
					<option value="-1">Outdated</option>
					<option value="-2">Bad</option>
					<option value="-3">Very bad</option>
				</select>
			</td>
			<td>No semicolon</td>
			<td>&nbsp;</td>
			<td class="num">&nbsp;</td>
		</tr>

		<tr>
			<td>&##9745;</td>
			<td>&nbsp;</td>
			<td>cookie name=&quot;x&quot; value=&quot;1&quot;</td>
			<td>
				<select name="Opinion16">
					<option value="0">No opinion</option>
					<option value="2">Best</option>
					<option value="1">Good</option>
					<option value="-1">Outdated</option>
					<option value="-2">Bad</option>
					<option value="-3">Very bad</option>
				</select>
			</td>
			<td>No semicolon</td>
			<td>&nbsp;</td>
			<td class="num">&nbsp;</td>
		</tr>
		<tr>
			<td>&##9745;</td>
			<td>&nbsp;</td>
			<td>
				client.x = 1</td>
			<td>
				<select name="Opinion8">
					<option value="0">No opinion</option>
					<option value="2">Best</option>
					<option value="1">Good</option>
					<option value="-1">Outdated</option>
					<option value="-2">Bad</option>
					<option value="-3">Very bad</option>
				</select>
			</td>
			<td>No semicolon</td>
			<td>&nbsp;</td>
			<td class="num">&nbsp;</td>
			
		</tr>
		<tr>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td class="num">&nbsp;</td>
		</tr>
		<tr>
			<td colspan="7">This is how I do it:</td>
			</tr>
		<tr>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td colspan="2"><textarea name="myWay"></textarea></td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td class="num">&nbsp;</td>
		</tr>
		</tbody>
	</table>
</fieldset>
<p>
This shows that:
</p>
<p>First of all, the ones with no votes are so ridiculous that nobody even voted positive or
	negative on them.<br>
	&lt;cfset x = 1> Two people say they would put &lt;cfset x = 1> at the top of their page, whereas 1 said he wouldn't.<br>
	&lt;cfset x = 1 /> One person uses a trailing slash to end his assignment, and 3 do not.<br>
	x = 1; Three people use the semicolon cfscript syntax, whereas 1 person says he used to, but no longer uses it.<br>
	Variables.x = 1; 1 person always scopes everything, whereas 2 people say it's a &quot;good&quot; idea, but 2 people say they don't and 1 person says he used to but doesn't any longer.<br>
	form.x = 1;
	1 person says the would use the form scope, while another person says they used to do it that way but don't any longer.<br>
	url.x = 1;
	7 people feel that assigning url.x and using it implicitly later is a "bad" idea.<br>
	client.x = 1;
5 people think that assigned client.x to be used implicitly later on is a "very bad" idea.<br>
x = 1 3 people think leaving the semicolon off is a &quot;bad&quot; idea, but 1 person always does it this way.<br>
<br>
	<a href="More.cfm">More</a></span>
	<cfinclude template="/Inc/foot.cfm">
	<script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.11.0/jquery-ui.min.js"></script>
	<script src="Sparkline.js"></script>
	<script src="Opinionated.js"></script>
	<cfinclude template="/Inc/End.cfm">
</p>
</cfoutput>