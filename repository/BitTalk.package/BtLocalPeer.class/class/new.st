instance creation
new
	| instances |
	instances := self allInstances.
	^ instances ifEmpty: [ super new ] ifNotEmpty: [ instances first ]