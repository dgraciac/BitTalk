operations
ensureKeepAlive
	self secondsSinceLastSentMessage > (BtMessage connectionTimeOut - 10) 
		ifTrue:[self sendKeepAlive ]