tests
testByteIndex

self assert: (BtBitfield byteIndex: 0) = 1.
self assert: (BtBitfield byteIndex: 4) = 1.
self assert: (BtBitfield byteIndex: 7) = 1.
self assert: (BtBitfield byteIndex: 8) = 2.
self assert: (BtBitfield byteIndex: 10) = 2.