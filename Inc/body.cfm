</head>
<body>
<cfoutput>
<cfif request.fw.navbar NEQ "none">
	<nav class="nav navbar-default #request.fw.navbar#">
		<div class="navbar-inverse">
			<div class="container">
				<div class="navbar-header">
					<cfif IsDefined("session.Usr")>
						<a class="navbar-brand glyphicon glyphicon-home" href="#request.fw.home#"
						data-toggle="tooltip" data-placement="bottom" title="Home"></a>
					<cfelse>
						<a class="navbar-brand glyphicon glyphicon-home" href="http://cfml-craftsmanship.com/"
						data-toggle="tooltip" data-placement="bottom" title="Home"></a>
					</cfif>
				</div>
				<div class="navbar-collapse collapse">
					<div class="navbar-right">
						<ul class="nav navbar-nav">
							<li><a href="/?logout">Logout</a></li>
						</ul>
					</div>
				
				</div>
			</div>
		</div>
		<cfif request.fw.mod NEQ "none">
			<div class="msg container<cfif request.fw.msg NEQ ''> #request.fw.mod#</cfif>">
				#request.fw.msg#
			</div>
		</cfif>
	</nav>
	<cfif IsDefined("request.fw.ShowProgress") AND request.fw.ShowProgress>
		<div class="container progress<cfif Paper.PctComplete GE 100> active progress-striped</cfif>">
			<div class="progress-bar" style="width: #Int(Paper.PctComplete)#%"></div>
		</div>
	</cfif>
</cfif>
<main role="main" class="<cfif request.fw.container>container<cfelse>container-fluid</cfif>">
</cfoutput>
