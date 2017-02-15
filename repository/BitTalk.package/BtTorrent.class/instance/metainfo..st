accessing
metainfo: newMetainfo
	torrentLock
		critical: [ 
			(metainfo isNil or: [ metainfo hash ~= newMetainfo hash ])
				ifTrue: [ 
					bitfield := BtBitfield new: newMetainfo numPieces.
					self updateTrackers: newMetainfo.
					metainfo := newMetainfo.
					self debug: debug.
					self initializeProcessesNames.
					location ifNotNil: [ self updateFileCollection ].
					self updateTemporaryPieces.
					self updatePiecesOnNetwork.
					(isInMultitrackerMode and: [ metainfo supportMultitracker not ])
						ifTrue: [ isInMultitrackerMode := false ] ] ]