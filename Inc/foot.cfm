</main>
<cfoutput>
<cfif request.fw.js>
	<input type="hidden" name="fw-home" value="#request.fw.home#">
<!---
	<script src="#request.fw.home#/Inc/js/boiler.js"></script>
	--->
	<script src="#request.fw.home#/Inc/js/fw.js"></script>
	<cfif request.fw.bootstrap>
		<script src="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.2.0/js/bootstrap.js"></script>
	</cfif>
	<script src="#request.fw.home#/Inc/js/Lenoir-Rhyne.js"></script>
</cfif>
</cfoutput>
