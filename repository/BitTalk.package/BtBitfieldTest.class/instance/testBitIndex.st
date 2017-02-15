tests
testBitIndex

self assert: (BtBitfield bitIndex: 0) = 1.
self assert: (BtBitfield bitIndex: 4) = 5.
self assert: (BtBitfield bitIndex: 7) = 8.
self assert: (BtBitfield bitIndex: 8) = 1.
self assert: (BtBitfield bitIndex: 10) = 3.