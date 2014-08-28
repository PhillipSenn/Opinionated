<cfoutput>
<!doctype html>
<html lang="en" class="no-js">
<head>
<title>#request.fw.name#</title>
<cfif request.fw.css>
	<meta charset="utf-8">
	<meta content="Phillip Senn" name="author">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<!---
	<meta name="viewport" content="width=device-width, initial-scale=1, minimal-ui">
	--->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!--- black-tie,blitzer,cupertino,dark-hive,dot-luv,eggplant,excite-bike,flick,hot-sneaks,humanity,le-frog,mint-choc,overcast,pepper-grinder,redmond,smoothness,south-street,start,sunny,swanky-purse,trontastic,ui-darkness,ui-lightness,vader --->
	<link rel="stylesheet" href="//ajax.googleapis.com/ajax/libs/jqueryui/1/themes/#request.fw.jQueryUI#/jquery-ui.css">
	<cfif request.fw.bootstrap>
		<link rel="stylesheet" type="text/css" href="#request.fw.home#/Inc/css/bootstrap.css">
	</cfif>
	<link rel="stylesheet" href="#request.fw.home#/Inc/css/fw.css">
	<link rel="stylesheet" href="#request.fw.home#/Inc/css/Lenoir-Rhyne.css">
	<cfif request.fw.bootstrap>
		<link rel="stylesheet" type="text/css" href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.css">
	</cfif>
</cfif>
<cfif request.fw.js>
	<script src="//cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.2/modernizr.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jqueryui-touch-punch/0.2.2/jquery.ui.touch-punch.min.js"></script>
</cfif>
</cfoutput>