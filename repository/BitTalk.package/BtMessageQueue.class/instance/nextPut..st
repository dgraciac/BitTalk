accessing
nextPut: aMessage
	aMessage species ~= BtMessage
		ifTrue: [ self error: 'Bad class' ].
	monitor
		critical: [ 
			aMessage type
				ifNil: [  ]
				ifNotNil: [ 
					| chokingCodes |
					chokingCodes := BtMessage chokingMessagesTypes.
					(chokingCodes includes: aMessage type)
						ifTrue: [ self flushAllSuchThat: [ :message | chokingCodes includes: message type ] ]
						ifFalse: [ 
							| interestCodes |
							interestCodes := BtMessage interestMessagesTypes.
							(interestCodes includes: aMessage type)
								ifTrue: [ 
									self flushAllSuchThat: [ :message | interestCodes includes: message type ].
									aMessage type = BtMessage notInterestedMessageType
										ifTrue: [ self flushAllSuchThat: [ :message | message type = BtMessage requestMessageType ] ] ]
								ifFalse: [ 
									aMessage type = BtMessage haveMessageType
										ifTrue: [  ]
										ifFalse: [ 
											BtMessage bitfieldMessageType = aMessage type
												ifTrue: [ 
													self
														flushAllSuchThat: [ :message | message type = BtMessage haveMessageType or: [ message type = BtMessage bitfieldMessageType ] ] ]
												ifFalse: [ 
													BtMessage requestMessageType = aMessage type
														ifTrue: [  ]
														ifFalse: [ 
															BtMessage pieceMessageType = aMessage type
																ifTrue: [  ]
																ifFalse: [ 
																	BtMessage cancelMessageType = aMessage type
																		ifTrue: [ 
																			| requestMessage |
																			requestMessage := BtMessage
																				requestMessage: aMessage payload index
																				begin: aMessage payload begin
																				length: aMessage payload length.
																			self flushAllSuchThat: [ :message | message = requestMessage ] ]
																		ifFalse: [ 
																			BtMessage portMessageType = aMessage type
																				ifTrue: [ self flushAllSuchThat: [ :message | message type = BtMessage portMessageType ] ] ] ] ] ] ] ] ] ].
			items addLast: aMessage.
			monitor signal ].
	^ aMessage