instance creation
length: length blockSize: blockSize 
	| temporaryPiece numBlocks remainder |
	temporaryPiece:= self new.
	numBlocks:=(length / blockSize) ceiling.
	remainder:=length rem: blockSize.
	remainder>0
		ifTrue:[temporaryPiece lastBlockSize: remainder]
		ifFalse:[temporaryPiece lastBlockSize: blockSize ].
	temporaryPiece
		blocks: (Array new: numBlocks) ;
		blockSize: blockSize .	
	^temporaryPiece   