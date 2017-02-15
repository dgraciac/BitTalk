printing
log: aString
	debug
		ifFalse: [ ^ self ].
	self crLog.
	(DateAndTime now asString , String space , aString) crLog