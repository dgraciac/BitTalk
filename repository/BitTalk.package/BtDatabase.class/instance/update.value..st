accessing
update: attribute value: aString
"Actualizo attribute en mi base de datos."
	|  file |
	file:=location children detect:[:x| attribute = x basename ] ifNone:[nil].
	file isNil
		ifTrue:[file:=(location / attribute) ensureCreateFile ].
	file writeStreamDo: [ :x | 
		x nextPutAll: aString.
		x truncate: x position.
	]