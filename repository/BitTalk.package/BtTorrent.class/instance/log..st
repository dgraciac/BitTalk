printing
log: aString
	debug
		ifFalse: [ ^ self ].
	self crLog.
	aString crLog