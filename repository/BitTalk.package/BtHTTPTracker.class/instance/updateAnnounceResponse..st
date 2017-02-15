operations
updateAnnounceResponse: responseBytes
	responseBytes
		ifNil: [ 
			self log: 'announce: response = nil'.
			announceResponse := BtHTTPAnnounceResponseBody new
				failureReason: 'no response';
				yourself ]
		ifNotNil: [ 
			| index headers |
			index := responseBytes asString findString: String crlfcrlf.
			headers := responseBytes copyFrom: 1 to: index - 1.
			(#('HTTP/1.0 404 Not Found' 'HTTP/1.1 404 Not Found') anySatisfy: [ :v | (headers asString findString: v) > 0 ])
				ifTrue: [ 
					self log: 'announce: ' , headers asString.
					announceResponse := BtHTTPAnnounceResponseBody new
						failureReason: 'status error';
						yourself ]
				ifFalse: [ 
					lastAnnounceResponseTime := Time millisecondClockValue.
					announceResponse := BtHTTPAnnounceResponseBody
						from: (responseBytes copyFrom: index + 4 to: responseBytes size) bedecoded.
					announceResponse atTrackerIDIfPresent: [ :v | announceRequest trackerID: v asByteArray asInteger ] ] ]