operations
properAmountRound: anInteger
	| properAmount |
	properAmount:= amount >= Yi
		ifTrue: [ amount / Yi asFloat ]
		ifFalse: [ 
			amount >= Zi
				ifTrue: [ amount / Zi asFloat ]
				ifFalse: [ 
					amount >= Ei
						ifTrue: [ amount / Ei asFloat ]
						ifFalse: [ 
							amount >= Pi
								ifTrue: [ amount / Pi asFloat ]
								ifFalse: [ 
									amount >= Ti
										ifTrue: [ amount / Ti asFloat ]
										ifFalse: [ 
											amount >= Gi
												ifTrue: [ amount / Gi asFloat ]
												ifFalse: [ 
													amount >= Mi
														ifTrue: [ amount / Mi asFloat ]
														ifFalse: [ 
															amount >= Ki
																ifTrue: [ amount / Ki asFloat ]
																ifFalse: [ amount ] ] ] ] ] ] ] ].
		^ properAmount round: anInteger							