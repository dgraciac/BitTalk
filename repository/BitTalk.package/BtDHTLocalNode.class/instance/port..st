accessing
port: anIntegerPort
	super port: anIntegerPort .
	socket setPort: port.
	self updateProcessesNames .