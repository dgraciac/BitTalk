P2P
newRemotePeerInterested: remotePeer
	remotePeer isLucky
		ifTrue: [ 
			| acceptedPeers |
			acceptedPeers := remotePeers selectAccepted .
			acceptedPeers size > maxPeersAccepted
				ifTrue: [ 
					acceptedPeers := acceptedPeers difference: (OrderedCollection with: remotePeer).
					self isComplete
						ifTrue: [ acceptedPeers setCompleteMode ]
						ifFalse: [ acceptedPeers setNotCompleteMode ].
					acceptedPeers
						ifNotEmpty: [ 
							| worstPeer |
							worstPeer := acceptedPeers last.
							worstPeer notAccept] ] ]