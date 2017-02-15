operations
properPrefix
	^ amount >= Yi
		ifTrue: [ 'Yi' ]
		ifFalse: [ 
			amount >= Zi
				ifTrue: [ 'Zi' ]
				ifFalse: [ 
					amount >= Ei
						ifTrue: [ 'Ei' ]
						ifFalse: [ 
							amount >= Pi
								ifTrue: [ 'Pi' ]
								ifFalse: [ 
									amount >= Ti
										ifTrue: [ 'Ti' ]
										ifFalse: [ 
											amount >= Gi
												ifTrue: [ 'Gi' ]
												ifFalse: [ 
													amount >= Mi
														ifTrue: [ 'Mi' ]
														ifFalse: [ 
															amount >= Ki
																ifTrue: [ 'Ki' ]
																ifFalse: [ '' ] ] ] ] ] ] ] ]