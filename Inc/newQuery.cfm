<!---
http://cfmlblog.adamcameron.me/2014/07/survey-results-scoping-of-variables.html
--->
<cfscript>
var sql=''
var params=[]
var result=''
var Key=''
if (IsDefined('arguments.arg')) {
	if (IsSimpleValue(arg)) {
		if (Right(arg,2) == 'ID' OR Right(arg,4) == 'SORT') {
			if (!IsValid('integer',arg['#arg#'])) {
				echo('newQuery.cfm,1: ' + arg & ' is: ' & arg['#arg#'])
				abort;
			}
		}
	} else {
		for (Key in arguments.arg) {
			if (IsSimpleValue(key)) {
				Key = UCase(Key)
				if (Right(Key,2) == 'ID' OR Right(Key,4) == 'SORT') {
					if (!IsValid('integer',arg['#Key#'])) {
						echo('newQuery.cfm,2: ' + Key & ' is: ' & arg['#Key#'])
						abort;
					}
				}
			} else {
				local.stcKey = Key
				for (Key in local.stcKey) {
					Key = UCase(Key)
					if (Right(Key,2) == 'ID' OR Right(Key,4) == 'SORT') {
						if (!IsValid('integer',arg['#Key#'])) {
							echo('newQuery.cfm,3: ' + Key & ' is: ' & arg['#Key#'])
							abort;
						}
					}
				}
			}
		}
	}
}
</cfscript>
