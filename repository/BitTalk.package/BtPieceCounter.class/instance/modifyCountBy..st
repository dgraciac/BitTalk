accessing
modifyCountBy: amount
	"Positive amount to increment. Negative amount to decrement. Return new count"

	| newCount |
	newCount := count + amount.
	^ count := newCount < 0
		ifTrue: [ 0 ]
		ifFalse: [ newCount ]