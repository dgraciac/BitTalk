piece control
checkPieces
	torrentLock
		critical: [ 
			bitfield clearAll.
			0 to: metainfo numPieces - 1 do: [ :index | 
				| piece |
				piece := fileCollection readOffset: index * metainfo pieceLength amount: (metainfo pieceLengthOf: index).
				piece
					ifNotNil: [ 
						(SHA1 hashStream: piece readStream) = (metainfo sha1Of: index) asByteArray
							ifTrue: [ bitfield set: index ] ] ] ]