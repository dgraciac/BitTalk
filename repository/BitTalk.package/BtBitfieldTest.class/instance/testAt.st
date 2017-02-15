tests-accessing
testAt
| bitfield |
bitfield:= BtBitfield new: 16 with: #[129 128].

self assert: (bitfield at: 0) = 1.
self assert: (bitfield at: 7) = 1.
self assert: (bitfield at: 8) = 1.
self assert: (bitfield at: 15) = 0. 