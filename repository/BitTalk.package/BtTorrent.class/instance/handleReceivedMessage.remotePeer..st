handling received messages
handleReceivedMessage: message remotePeer: remotePeer
	message type
		ifNotNil: [ 
			message type = BtMessage chokeMessageType
				ifTrue: [ 
					self handleReceivedChoke: message remotePeer: remotePeer.
					self log: 'CHOKE message handled from ' , remotePeer asString ]
				ifFalse: [ 
					message type = BtMessage unchokeMessageType
						ifTrue: [ 
							self handleReceivedUnchoke: message remotePeer: remotePeer.
							self log: 'UNCHOKE message handled from ' , remotePeer asString ]
						ifFalse: [ 
							message type = BtMessage interestedMessage
								ifTrue: [ 
									self handleReceivedInterested: message remotePeer: remotePeer.
									self log: 'INTERESTED message handled from ' , remotePeer asString ]
								ifFalse: [ 
									message type = BtMessage notInterestedMessageType
										ifTrue: [ 
											self handleReceivedNotInterested: message remotePeer: remotePeer.
											self log: 'NOT INTERESTED message handled from ' , remotePeer asString ]
										ifFalse: [ 
											message type = BtMessage haveMessageType
												ifTrue: [ 
													self handleReceivedHave: message remotePeer: remotePeer.
													self log: 'HAVE: ' , message payload asString , ' message handled from ' , remotePeer asString ]
												ifFalse: [ 
													message type = BtMessage bitfieldMessageType
														ifTrue: [ 
															self handleReceivedBitfield: message remotePeer: remotePeer.
															self log: message payload asString , ' message handled from ' , remotePeer asString ]
														ifFalse: [ 
															message type = BtMessage requestMessageType
																ifTrue: [ 
																	self handleReceivedRequest: message remotePeer: remotePeer.
																	self log: 'REQUEST: ' , message payload asString , ' message handled from ' , remotePeer asString ]
																ifFalse: [ 
																	message type = BtMessage pieceMessageType
																		ifTrue: [ 
																			self handleReceivedBlock: message remotePeer: remotePeer.
																			self log: 'PIECE: ' , message payload asString , ' message handled from ' , remotePeer asString ]
																		ifFalse: [ 
																			message type = BtMessage cancelMessageType
																				ifTrue: [ 
																					self handleReceivedCancel: message remotePeer: remotePeer.
																					self log: 'CANCEL: ' , message payload asString , ' message handled from ' , remotePeer asString ]
																				ifFalse: [ 
																					message type = BtMessage portMessageType
																						ifTrue: [ self log: 'PORT: ' , message payload asString , ' message handled from ' , remotePeer asString ] ] ] ] ] ] ] ] ] ] ]
		ifNil: [ self log: 'KEEP-ALIVE message handled from ' , remotePeer asString ].
	remotePeer updateLastMessageReceivedTime