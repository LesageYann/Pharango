instance creation
from: aCollection as: aClass driver: anAranResponse
	^ (self new: aCollection size)
		driver: anAranResponse;
		addAll: aCollection as: aClass;
		yourself