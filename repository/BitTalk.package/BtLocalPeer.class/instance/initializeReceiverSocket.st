initialize-release
initializeReceiverSocket
	receiverSocket ifNotNil: [ receiverSocket closeAndDestroy ].
	receiverSocket := Socket newTCP.
	receiverSocket listenOn: port backlogSize: 10