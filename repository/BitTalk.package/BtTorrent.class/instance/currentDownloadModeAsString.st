piece control
currentDownloadModeAsString
	^ self isUsingSmartMode
		ifTrue: [ 'Smart' ]
		ifFalse: [ 
			self isUsingStreamingMode
				ifTrue: [ 'Streaming' ]
				ifFalse: [ '' ] ]