tests-comparing
testLessOrEqualRecentlySeenThan
	| nodeA nodeB time0 time1 |
	"
	A                   | B                   | Ta   | Tb   | A <= B
	Good             | Good             | t     | t+1 | True
	Good             | Good             | t+1 | t     | False
	Good             | Questionable | t     | ---   | False
	Questionable | Good             | ---   | t     | True
	Questionable | Questionable | t     | t+1 | True
	Questionable | Questionable | t+1 | t     | False
	"
	nodeA := BtDHTRemoteNode new.
	nodeB := BtDHTRemoteNode new.
	time0 := Time millisecondClockValue + 1.
	time1 := time0 + 1.
	nodeA
		lastRespondedQueryTime: time0;
		lastReceivedQueryTime: time0.
	nodeB
		lastRespondedQueryTime: time1;
		lastReceivedQueryTime: time1.
	self assert: (nodeA lessOrEqualRecentlySeenThan: nodeB).
	nodeA
		lastRespondedQueryTime: time1;
		lastReceivedQueryTime: time1.
	nodeB
		lastRespondedQueryTime: time0;
		lastReceivedQueryTime: time0.
	self deny: (nodeA lessOrEqualRecentlySeenThan: nodeB).
	nodeA
		lastRespondedQueryTime: time0;
		lastReceivedQueryTime: time0.
	nodeB
		lastRespondedQueryTime: nil;
		lastReceivedQueryTime: nil.
	self deny: (nodeA lessOrEqualRecentlySeenThan: nodeB).
	nodeA
		lastRespondedQueryTime: nil;
		lastReceivedQueryTime: nil.
	nodeB
		lastRespondedQueryTime: time0;
		lastReceivedQueryTime: time0.
	self assert: (nodeA lessOrEqualRecentlySeenThan: nodeB).
	nodeA
		lastRespondedQueryTime: 0;
		lastReceivedQueryTime: 0.
	nodeB
		lastRespondedQueryTime: 1;
		lastReceivedQueryTime: 1.
	self assert: (nodeA lessOrEqualRecentlySeenThan: nodeB).
	nodeA
		lastRespondedQueryTime: 1;
		lastReceivedQueryTime: 1.
	nodeB
		lastRespondedQueryTime: 0;
		lastReceivedQueryTime: 0.
	self deny: (nodeA lessOrEqualRecentlySeenThan: nodeB)