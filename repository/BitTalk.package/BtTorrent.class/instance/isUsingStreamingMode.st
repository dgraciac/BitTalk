piece control
isUsingStreamingMode
	^torrentLock critical: [ downloadMode = StreamingMode ]