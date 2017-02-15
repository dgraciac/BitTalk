tests-private
testModifyValue
| bitfield |
bitfield:= BtBitfield new: 16.
bitfield modify: 0 value: 1.
self assert: bitfield field = #[128  0].
bitfield modify: 7 value: 1.
self assert: bitfield field = #[129 0].
bitfield modify: 8 value: 1.
self assert: bitfield field = #[129 128].
bitfield modify: 15 value: 1.
self assert: bitfield field = #[129 129].

bitfield modify: 0 value: 0.
self assert: bitfield field = #[1  129].
bitfield modify: 7 value: 0.
self assert: bitfield field = #[0 129].
bitfield modify: 8 value: 0.
self assert: bitfield field = #[0 1].
bitfield modify: 15 value: 0.
self assert: bitfield field = #[0 0].