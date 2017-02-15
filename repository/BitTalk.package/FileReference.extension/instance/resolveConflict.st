*BitTalk
resolveConflict
	|   int    parent basename    extension basenameWithoutExt  | 
	self isRoot 
		ifTrue:[^ self].
	parent:= self parent.
	basename:= self basename.
	int:=1.
	[(parent / basename) exists]
		whileTrue: [
			basenameWithoutExt:=self basenameWithoutExtension.
			extension:=self extension.
			basename:= basenameWithoutExt , '(',int asString,')','.',extension.
			int:=int+1.
		].
	 ^parent / basename. 