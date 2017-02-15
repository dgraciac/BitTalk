private
checkClass: aNode
	aNode species ~= BtDHTRemoteNode
		ifTrue: [ BtDHTBadClass signal ].