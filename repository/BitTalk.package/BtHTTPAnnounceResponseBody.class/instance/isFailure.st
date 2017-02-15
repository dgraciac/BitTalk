accessing
isFailure
	^self at:'failure reason' ifPresent:[:v | true] ifAbsent:[false]