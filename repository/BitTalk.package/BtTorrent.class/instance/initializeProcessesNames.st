initialize-release
initializeProcessesNames
	|name|
	name:= self asString.
	initialChecking name: name, ' Checking content'.
	choking name: name, ' Choking'.
	optimisticChoking name: name , ' Optimistic choking'.
	receiving name: name , ' Receiving'.
	starting name: name , ' Starting'.
	stopping name: name , ' Stopping' .
	trackerRequesting name: name , ' Tracker requesting'.
	measuringRates name: name, ' Measuring rates'.
	requesting name: name, ' Requesting'.