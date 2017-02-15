accessing
files
	^self isSingleFileMode 
		ifTrue:[
			OrderedCollection with:
			(Dictionary new 
				at:'length' put: self length; 
				at:'path' put: OrderedCollection new;
				yourself )  
		]ifFalse:[self infoDictionary at:'files' ifAbsent:[nil]]

	