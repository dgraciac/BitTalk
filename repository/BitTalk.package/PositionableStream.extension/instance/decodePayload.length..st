*BitTalk
decodePayload: type length: length
	^ type = BtMessage haveMessageType
		ifTrue: [ self decodeHavePayload ]
		ifFalse: [ 
			type = BtMessage bitfieldMessageType
				ifTrue: [ self decodeBitfieldPayload: length ]
				ifFalse: [ 
					| blockDescriptionPayloadCodes |
					blockDescriptionPayloadCodes := OrderedCollection
						with: BtMessage requestMessageType
						with: BtMessage cancelMessageType.
					(blockDescriptionPayloadCodes includes: type)
						ifTrue: [ self decodeBlockDescriptionPayload ]
						ifFalse: [ 
							type = BtMessage pieceMessageType
								ifTrue: [ self decodeBlockPayload: length ]
								ifFalse: [ 
									type = BtMessage portMessageType
										ifTrue: [ self decodePortPayload ] ] ] ] ]