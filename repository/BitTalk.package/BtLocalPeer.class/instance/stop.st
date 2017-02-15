operations
stop
	localPeerLock
		critical: [ 
			isRunning := false.
			self stopAllTorrents.
			torrents removeAll.
			self terminateProcesses.
			receiverSocket closeAndDestroy ]