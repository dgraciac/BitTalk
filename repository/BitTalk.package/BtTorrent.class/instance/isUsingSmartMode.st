piece control
isUsingSmartMode
	^ torrentLock critical: [ downloadMode = SmartMode ]