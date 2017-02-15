comparing
= anotherHandshake
	^ self == anotherHandshake
		ifTrue: [ true ]
		ifFalse: [ 
			self species = anotherHandshake species
				ifTrue: [ 
					protocolIdentifier = anotherHandshake protocolIdentifier
						and: [ 
							infoHash = anotherHandshake infoHash
								and: [ peerID = anotherHandshake peerID and: [ protocolBehaviour = anotherHandshake protocolBehaviour ] ] ] ]
				ifFalse: [ false ] ]