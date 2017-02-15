measuring rates
downloadRate
	^ peerLock
		critical: [ 
			| display |
			display := BtByteRateDisplay new.
			display byteDisplay
				amount:
					([ (downloaded amount - lastDownloaded amount) / (Time millisecondsSince: startMeasuringTime) ]
						on: ZeroDivide
						do: [ :ex | ex return: 0 ]).
			display ]