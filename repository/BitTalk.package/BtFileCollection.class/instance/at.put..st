accessing
at: anInteger put: aBtFile
	aBtFile species ~= BtFile
		ifTrue: [ self error: 'Bad class' ].
	super at: anInteger put: aBtFile