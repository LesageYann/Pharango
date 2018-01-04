query
handleResponse: aZnClient
	aZnClient entity: nil.
	^ (self responseClass response: aZnClient response) driver: self