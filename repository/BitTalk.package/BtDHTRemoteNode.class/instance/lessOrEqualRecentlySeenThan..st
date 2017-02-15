comparing
lessOrEqualRecentlySeenThan: anotherBtDHTRemoteNode
	^ self isQuestionable
		ifTrue: [ 
			anotherBtDHTRemoteNode isGood
				ifTrue: [ true ]
				ifFalse: [ 
					self lastSeenTime
						ifNil: [ true ]
						ifNotNil: [ 
							anotherBtDHTRemoteNode lastSeenTime
								ifNil: [ false ]
								ifNotNil: [ self lastSeenTime <= anotherBtDHTRemoteNode lastSeenTime ] ] ] ]
		ifFalse: [ 
			anotherBtDHTRemoteNode isGood
				ifTrue: [ self lastSeenTime <= anotherBtDHTRemoteNode lastSeenTime ]
				ifFalse: [ false ] ]