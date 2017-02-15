*BitTalk
decodeMessage
	| message length |
	message:= BtMessage new.
	length:=self decodeLength.
	length > 0
		ifTrue:[
			message type: self decodeType.
			length > 1
				ifTrue:[message payload: (self decodePayload: message type length: length - 1)]
		].
	^message