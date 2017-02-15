tests-testing
testIsGood
	|  node time |
	"lastRespondedQueryTime | lastReceivedQueryTime | isGood?
	nil    | nil   | False
	nil    | <=t | False
	nil    | >t   | False
	<=t | nil    | True
	<=t | <=t | True
	<=t | >t   | True
	>t   | nil    | False
	>t   | <=t | True
	>t   | >t   | False
	"
	node := BtDHTRemoteNode new.
	time := Time millisecondClockValue.
	node lastRespondedQueryTime: nil.
	node lastReceivedQueryTime: nil.
	self deny: node isGood.
	node lastRespondedQueryTime: nil.
	node lastReceivedQueryTime: time.
	self deny: node isGood.
	node lastRespondedQueryTime: nil.
	node lastReceivedQueryTime: 0.
	self deny: node isGood.
	node lastRespondedQueryTime: time.
	node lastReceivedQueryTime: nil.
	self assert: node isGood.
	node lastRespondedQueryTime: time.
	node lastReceivedQueryTime: time.
	self assert: node isGood.
	node lastRespondedQueryTime: time.
	node lastReceivedQueryTime: 0.
	self assert: node isGood.
	node lastRespondedQueryTime: 0.
	node lastReceivedQueryTime: nil.
	self deny: node isGood.
	node lastRespondedQueryTime: 0.
	node lastReceivedQueryTime: time.
	self assert: node isGood.
	node lastRespondedQueryTime: 0.
	node lastReceivedQueryTime: 0.
	self deny: node isGood