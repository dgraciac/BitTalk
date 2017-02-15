private
checkUniqueness: aNode
	(self includes: aNode)
		ifTrue: [ BtDHTNodeAlreadyExists signal ]