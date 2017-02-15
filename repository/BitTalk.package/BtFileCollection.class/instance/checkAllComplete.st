private - operations
checkAllComplete
	(self anySatisfy: [ :file | file currentSize ~= file finalSize ])
		ifTrue: [ self error: 'files must be complete' ]