P2P
lazyBitfieldTo: remotePeer
	| missingIndeces indeces lazyBitfield |
	indeces := OrderedCollection withAll: (0 to: metainfo numPieces - 1).
	missingIndeces := OrderedCollection new.
	1 to: (25 min: indeces size) do: [ :v | missingIndeces add: (indeces remove: indeces atRandom) ].
	lazyBitfield := bitfield copy.
	missingIndeces do: [ :index | lazyBitfield clear: index ].
	remotePeer sendBitfield: lazyBitfield.
	missingIndeces do: [ :index | remotePeer sendHave: index ]