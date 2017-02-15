accessing
pickNode: aNodeID
	^ (self bucketForID: aNodeID) detect: [ :node | node id = aNodeID ] ifNone: [ nil ]