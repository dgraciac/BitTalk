accessing
bucketForID: aNodeID
	self checkRange: aNodeID.
	^ (left isNotNil and: [ aNodeID between: left firstID and: left lastID ])
		ifTrue: [ left bucketForID: aNodeID ]
		ifFalse: [ 
			(rigth isNotNil and: [ aNodeID between: rigth firstID and: rigth lastID ])
				ifTrue: [ rigth bucketForID: aNodeID ]
				ifFalse: [ self ] ]