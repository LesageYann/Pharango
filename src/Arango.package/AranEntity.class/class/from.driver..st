instance creation
from: aCollection driver: anAranResponse
	^ self new
		dictionary: aCollection;
		driver: anAranResponse;
		yourself