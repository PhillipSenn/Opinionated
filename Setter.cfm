<cfscript>

</cfscript>

<cfoutput>
<cfinclude template="/Inc/html.cfm">
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
<pre>
setX(1)
##getX()##

function setX(X) {
Variables.X = arguments.X;
}

function getX() {
return Variables.X
}
</pre>
This method is preferred by frameworks because you can put your business rules into the setter
to not allow any invalid data.
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>