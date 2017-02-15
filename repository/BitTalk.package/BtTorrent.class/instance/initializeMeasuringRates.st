initialize-release
initializeMeasuringRates
	measuringRates ifNotNil: [ measuringRates terminate ].
	measuringRates := BtExecutableBlock new
		block: [ 
			| period measures |
			measures := 0.
			period := 4.
			[ 
			(Delay forSeconds: period) wait.
			downloadRate byteDisplay amount: (downloaded amount - (lastDownloaded amount)) / period asFloat.
			lastDownloaded amount: downloaded amount.
			uploadRate byteDisplay amount: (uploaded amount - (lastUploaded amount)) / period asFloat.
			lastUploaded amount: uploaded amount.
			self isComplete
				ifFalse: [ downloadRateAverage byteDisplay amount: downloadRateAverage byteDisplay amount + ((downloadRate byteDisplay amount - (downloadRateAverage byteDisplay amount)) / (measures + 1)) asFloat ].
			uploadRateAverage byteDisplay amount: uploadRateAverage byteDisplay amount + ((uploadRate byteDisplay amount - (uploadRateAverage byteDisplay amount)) / (measures + 1)) asFloat.
			measures := measures + 1.
			Processor yield.
			true ] whileTrue ]