private
checkBeforeAdding: aNode
	self size = k
		ifTrue: [ BtDHTFullBucket signal ].
	(left isNotNil or: [ rigth isNotNil ])
		ifTrue: [ BtDHTBucketIsNotLeaf signal ].
	self checkUniqueness: aNode.