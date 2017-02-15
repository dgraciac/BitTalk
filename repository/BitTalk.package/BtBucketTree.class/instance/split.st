operations
split
	| middle |
	self size < k
		ifTrue: [ BtDHTNotFullBucket signal ].
	middle := (firstID + lastID) quo: 2.
	(middle - firstID + 1 < k or: [ lastID - middle < k ])
		ifTrue: [ BtDHTIDSpaceTooSmall signal ].
	left := BtBucketTree firstID: firstID lastID: middle k: k.
	rigth := BtBucketTree firstID: middle + 1 lastID: lastID k: k.
	[ self isEmpty ]
		whileFalse: [ 
			| node |
			((node := self removeLast) within: left)
				ifTrue: [ left add: node ]
				ifFalse: [ rigth add: node ] ]