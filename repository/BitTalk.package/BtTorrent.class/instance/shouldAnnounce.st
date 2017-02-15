peer discovery
shouldAnnounce
	^ stopPending
		ifTrue: [ true ]
		ifFalse: [ 
			started
				ifFalse: [ true ]
				ifTrue: [ 
					self isComplete
						ifTrue: [ 
							alreadyComplete
								ifTrue: [ 
									| secondsSinceLastAnnounce |
									secondsSinceLastAnnounce := self currentTracker secondsSinceLastAnnounce.
									secondsSinceLastAnnounce ifNil: [ true ] ifNotNil: [ secondsSinceLastAnnounce >= self currentTracker interval ] ]
								ifFalse: [ true ] ]
						ifFalse: [ 
							self numNewConnectionsDesired > 0
								ifTrue: [ 
									true	"| secondsSinceLastAnnounce |
									secondsSinceLastAnnounce := self currentTracker secondsSinceLastAnnounce.
									secondsSinceLastAnnounce ifNil: [ true ] ifNotNil: [ secondsSinceLastAnnounce >= self currentTracker interval ]" ]
								ifFalse: [ false ] ] ] ]