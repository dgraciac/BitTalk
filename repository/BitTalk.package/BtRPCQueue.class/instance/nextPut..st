accessing
nextPut: aBtRPC
	aBtRPC species ~= BtRPC
		ifTrue: [ self error: 'Bad class' ].
	^ super nextPut: aBtRPC.	