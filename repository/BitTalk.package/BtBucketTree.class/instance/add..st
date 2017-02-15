adding
add: aNode
	self checkClass: aNode.
	self checkBeforeAdding: aNode.
	self checkRange: aNode id.
	^ super add: aNode