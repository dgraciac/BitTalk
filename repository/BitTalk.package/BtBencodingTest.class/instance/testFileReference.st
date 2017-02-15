tests
testFileReference
	| ref1 ref2 top |
	self assert: OrderedCollection new asFileReference = FileSystem root.
	self assert: (OrderedCollection withAll: #('a' 'b' 'c')) asFileReference = (FileSystem root / 'a' / 'b' / 'c').
	self assert: (OrderedCollection with: 'a') asFileReference = (FileSystem root / 'a').
	self assert: OrderedCollection new asFileReference = FileSystem root.
	top := '/dir1' asFileReference.
	ref1 := '/dir1/dir2/dir3' asFileReference.
	self assert: (ref1 asOrderedCollectionUpTo: top) = #('dir2' 'dir3') asOrderedCollection.
	ref2 := '/dir1' asFileReference.
	self assert: (ref2 asOrderedCollectionUpTo: top) = OrderedCollection new.
	self assert: (ref1 asOrderedCollectionUpTo: FileSystem root) = #('dir1' 'dir2' 'dir3') asOrderedCollection.
	self assert: (FileSystem root asOrderedCollectionUpTo: FileSystem root) = OrderedCollection new