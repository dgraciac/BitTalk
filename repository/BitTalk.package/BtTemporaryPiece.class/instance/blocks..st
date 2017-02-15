accessing
blocks: aByteArrayCollection
	blocks := aByteArrayCollection.
	requestedArray size ~= (blocks size) ifTrue: [
		requestedArray := Array new: (blocks size).
		self resetRequestedArray .
	].