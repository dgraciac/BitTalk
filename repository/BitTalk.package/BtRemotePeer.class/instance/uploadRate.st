measuring rates
uploadRate
	^ peerLock
		critical: [ 
			| display |
			display := BtByteRateDisplay new.
			display byteDisplay
				amount:
					([ (uploaded amount - lastUploaded amount) / (Time millisecondsSince: startMeasuringTime) ]
						on: ZeroDivide
						do: [ :ex | ex return: 0 ]).
			display ]