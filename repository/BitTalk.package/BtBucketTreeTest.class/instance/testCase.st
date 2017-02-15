tests-operations
testCase
	| left rigth |
	self should: [ bucketTree add: nil ] raise: BtDHTBadClass.
	self should: [ bucketTree split ] raise: BtDHTNotFullBucket.
	self assert: (bucketTree pickNode: 0) isNil .
	self should: [ bucketTree add: node8 ] raise: BtDHTOutOfRange.
	bucketTree add: node7.
	self assert: (bucketTree pickNode: 7) = (BtDHTRemoteNode id: 7).
	self should: [ bucketTree add: node7 ] raise: BtDHTNodeAlreadyExists.
	self should: [ bucketTree split ] raise: BtDHTNotFullBucket.
	bucketTree add: node3.
	self should: [ bucketTree split ] raise: BtDHTNotFullBucket.
	bucketTree add: node4.
	self should: [ bucketTree split ] raise: BtDHTNotFullBucket.
	bucketTree add: node0.
	self should: [ bucketTree add: node1 ] raise: BtDHTFullBucket.
	bucketTree split.
	self should: [ bucketTree add: node1 ] raise: BtDHTBucketIsNotLeaf.
	self should: [ bucketTree add: node6 ] raise: BtDHTBucketIsNotLeaf.
	self
		assert:
			((left := bucketTree bucketForID: node1 id)
				includesAll:
					{node0.
					node3}).
	self should: [ left split ] raise: BtDHTNotFullBucket.
	left
		add: node1;
		add: node2.
	self
		assert:
			((left := bucketTree bucketForID: node1 id)
				includesAll:
					{node0.
					node3.
					node1.
					node2}).
	self should: [ left split ] raise: BtDHTIDSpaceTooSmall.
	self
		assert:
			((rigth := bucketTree bucketForID: node7 id)
				includesAll:
					{node4.
					node7}).
	self should: [ rigth split ] raise: BtDHTNotFullBucket.
	rigth
		add: node5;
		add: node6.
	self
		assert:
			((rigth := bucketTree bucketForID: node7 id)
				includesAll:
					{node4.
					node5.
					node6.
					node7}).
	self should: [ rigth split ] raise: BtDHTIDSpaceTooSmall