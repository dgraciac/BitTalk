accessing
select: attribute
	"Consulto el valor de attribute en mi base de datos y lo devuelvo. Devuelvo nil si no est√° definido."

	| file |
	location ifNil: [ self error: 'database cannot be nil' ].
	file := location children detect: [ :x | attribute = x basename ] ifNone: [ nil ].
	^ file ifNil: [ nil ] ifNotNil: [ file readStreamDo: [ :x | x contents ] ]