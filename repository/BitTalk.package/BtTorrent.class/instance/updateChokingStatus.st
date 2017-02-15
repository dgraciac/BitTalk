P2P
updateChokingStatus
	torrentLock
		critical: [ 
			| max candidates candidatesThatDontCompete competitors |
			candidates := remotePeers reject: [ :peer | peer isLucky ].
			candidatesThatDontCompete := candidates select: [ :peer | peer isInterested not or: [ peer isSnubber ] ].
			candidatesThatDontCompete ensureNotAccept.
			competitors := candidates difference: candidatesThatDontCompete.
			self isComplete
				ifTrue: [ competitors setCompleteMode ]
				ifFalse: [ competitors setNotCompleteMode ].
			max := competitors size min: maxPeersAccepted.
			competitors ensureAcceptFirst: max ]