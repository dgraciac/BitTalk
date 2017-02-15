tests-operations
testFilesToReadFirstOffsetAmount
	self setCase1.
	self assert: (fileCollection filesToReadFirst: 1 offset: 0 amount: 1) = (OrderedCollection with: btFileA).
	self assert: (fileCollection filesToReadFirst: 1 offset: 0 amount: 4) = (OrderedCollection with: btFileA).
	self assert: (fileCollection filesToReadFirst: 1 offset: 0 amount: 5) = (OrderedCollection with: btFileA with: btFileB).
	self assert: (fileCollection filesToReadFirst: 1 offset: 0 amount: 8) = (OrderedCollection with: btFileA with: btFileB).
	self assert: (fileCollection filesToReadFirst: 1 offset: 3 amount: 1) = (OrderedCollection with: btFileA).
	self assert: (fileCollection filesToReadFirst: 1 offset: 3 amount: 2) = (OrderedCollection with: btFileA with: btFileB).
	self assert: (fileCollection filesToReadFirst: 1 offset: 3 amount: 5) = (OrderedCollection with: btFileA with: btFileB).
	self assert: (fileCollection filesToReadFirst: 2 offset: 0 amount: 1) = (OrderedCollection with: btFileB).
	self assert: (fileCollection filesToReadFirst: 2 offset: 3 amount: 1) = (OrderedCollection with: btFileB).
	self setCase2.
	self assert: (fileCollection filesToReadFirst: 1 offset: 0 amount: 6) = (OrderedCollection with: btFileA with: btFileB).
	self assert: (fileCollection filesToReadFirst: 1 offset: 0 amount: 7) isNil.
	self setCase3.
	self assert: (fileCollection filesToReadFirst: 1 offset: 0 amount: 2) = (OrderedCollection with: btFileA).
	self assert: (fileCollection filesToReadFirst: 2 offset: 0 amount: 2) = (OrderedCollection with: btFileB)