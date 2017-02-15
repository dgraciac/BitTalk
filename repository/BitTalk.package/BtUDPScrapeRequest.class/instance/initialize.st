initialize-release
initialize
	super initialize.
	infoHashCollection := OrderedCollection new.
	transaction actionCode: BtUDPTransaction scrapeActionCode .